/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Nekhoroshev.Interfaces.Constants
public import KAM.Nekhoroshev.Interfaces.Domains
public import KAM.Nekhoroshev.Interfaces.Hessian
public import KAM.Nekhoroshev.Interfaces.Period
public import KAM.Weighted.SupWeighted
public import KAM.Strip.Fourier

/-!
# The dictionary of constants, analytic half; conversion of norms
(`bpN:p1:constants`, `bpN:p1:norm-convert`)

* (c) `const_tubes`: `V_{r₀} P ⊆ B(0,R)_s` and `U_{r₀} P ⊆ B(0,5R/8)`;
* (d) `const_hyp`: Pöschel's hypotheses for `h̃` on the tubes;
* (e) `const_perturbation`: the weighted bound of `f` on `V_{r₀} P × T_{s/2}`;
* (f) `const_exceptional`: the exceptional branch is empty;
* (g) `const_time`: the frequency bound and the time prefactor;
* `norm_convert`, `norm_convert_converse`: K's sup-to-weighted conversion.

The pure arithmetic of these clauses is in `Interfaces/Constants.lean`.
-/

@[expose] public noncomputable section

open Set Metric

namespace KAM.Nekhoroshev

variable {n : ℕ}

/-- (c) tubes (max norm): `V_{r₀}P ⊆ B(0,R)_s` and `U_{r₀}P ⊆ B(0,5R/8) ⊆ B(0,R)`. -/
theorem const_tubes (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) :
    KAM.Weighted.polyNbhd (centralSet n p.R) p.r0 ⊆ KAM.actionNbhd (actionBall n p.R) p.s ∧
    ∀ I : Fin n → ℝ, KAM.realInclusion n I ∈ KAM.Weighted.polyNbhd (centralSet n p.R) p.r0 →
      ‖I‖ < 5 * p.R / 8 := by
  have hr0 := p.r0_pos hn hp
  constructor
  · rintro I ⟨I', ⟨J, hJ, rfl⟩, hI⟩
    exact (tube_subset hr0 p.r0_le_half_s p.r0_le_R_div_eight hJ hI).1
  · rintro I ⟨I', ⟨J, hJ, rfl⟩, hI⟩
    exact (tube_real p.r0_le_R_div_eight hJ (by simpa using hI)).1

/-- (d) hypotheses of Pöschel's Theorem 1 for `h̃`: `(ℓ_P, μ_P) = (2πℓ, 2πμ)`-quasi-convexity on
`U_{r₀}P` and the Euclidean Hessian bound `M_P = 2π B_c` on `V_{r₀}P`. (`r₀ ≤ ℓ_P/(2M_P)` is
`const_size`.) -/
theorem const_hyp (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) {h : (Fin n → ℂ) → ℂ}
    (hh : HeadHyp p h) :
    (∀ I : Fin n → ℝ, KAM.realInclusion n I ∈ KAM.Weighted.polyNbhd (centralSet n p.R) p.r0 → ∀ ξ,
      |∑ i, KAM.frequencyMap (tildeh h) I i * ξ i| ≤ 2 * Real.pi * p.ell * euclid ξ →
        2 * Real.pi * p.mu * euclid ξ ^ 2 ≤ fderiv ℝ (fderiv ℝ (realPart (tildeh h))) I ξ ξ) ∧
    ∀ I ∈ KAM.Weighted.polyNbhd (centralSet n p.R) p.r0, ∀ x y : Fin n → ℂ,
      ‖∑ i, ∑ j, x i * (2 * Real.pi * complexHessian h I i j) * y j‖ ≤
        2 * Real.pi * p.B * euclid x * euclid y := by
  obtain ⟨hAI, hHB, hmin, hQC, -⟩ := hh
  obtain ⟨htube, htube'⟩ := const_tubes hn p hp
  constructor
  · intro I hI ξ hξ
    have hIR : I ∈ actionBall n p.R := by
      have := htube' I hI
      simp only [actionBall, mem_ball, dist_zero_right]
      linarith [hp.hR]
    exact qc_convert_tilde hn hp.hR hp.hs hp.hm hp.hMc hp.hω hAI hHB hQC hmin I hIR ξ hξ
  · intro I hI x y
    obtain ⟨-, hbil, -⟩ := (hessian_convert hp.hR hp.hs hAI hHB).1 I (htube hI)
    have h2 := hbil x y
    have hB : (n : ℝ) * p.Mc ≤ p.B := by
      have := p.q_pos hn hp
      change (n : ℝ) * p.Mc ≤ qcB n p.m p.Mc
      unfold qcB
      unfold HeadParams.q at this
      linarith
    have hpi := Real.pi_pos
    have heq : ∑ i, ∑ j, x i * (2 * Real.pi * complexHessian h I i j) * y j =
        (2 * Real.pi : ℂ) * ∑ i, ∑ j, x i * complexHessian h I i j * y j := by
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      ring
    rw [heq, norm_mul]
    have hn2 : ‖(2 * Real.pi : ℂ)‖ = 2 * Real.pi := by
      rw [show (2 * Real.pi : ℂ) = ((2 * Real.pi : ℝ) : ℂ) by push_cast; rfl,
        Complex.norm_real, Real.norm_of_nonneg (by positivity)]
    rw [hn2]
    have hex : 0 ≤ euclid x * euclid y := mul_nonneg (Real.sqrt_nonneg _) (Real.sqrt_nonneg _)
    calc 2 * Real.pi * ‖∑ i, ∑ j, x i * complexHessian h I i j * y j‖
        ≤ 2 * Real.pi * (n * p.Mc * euclid x * euclid y) := by gcongr
      _ ≤ 2 * Real.pi * (p.B * euclid x * euclid y) := by
          have hx : 0 ≤ euclid x := Real.sqrt_nonneg _
          have hy : 0 ≤ euclid y := Real.sqrt_nonneg _
          gcongr
      _ = 2 * Real.pi * p.B * euclid x * euclid y := by ring

/-- (e) perturbation: in Part 4's norm on `V_{r₀}P × T_{s/2}` (`m = n`), `|f| ≤ coth(πs/4)ⁿ ε`;
times `2π` this is `F ε`, and `F ε ≤ ε_*` for `ε ≤ ε₀`. -/
theorem const_perturbation (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) {ε : ℝ}
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hf : IsAnalyticPerturbation p.R p.s ε f) :
    KAM.Weighted.WBound (centralSet n p.R) p.r0 (p.s / 2) f
        (KAM.Weighted.coth (Real.pi * p.s / 4) ^ n * ε) ∧
    2 * Real.pi * (KAM.Weighted.coth (Real.pi * p.s / 4) ^ n * ε) = p.F * ε ∧
    (ε ≤ p.eps0 → p.F * ε ≤ p.epsStar) := by
  refine ⟨?_, const_perturbation_arith p hp ε⟩
  obtain ⟨-, hdiff, -, hper, -, hbd⟩ := hf
  obtain ⟨htube, -⟩ := const_tubes hn p hp
  have hsub : KAM.Weighted.Dom n (centralSet n p.R) p.r0 (p.s / 2 + p.s / 4) ⊆
      complexDomain n p.R p.s := by
    rintro ⟨θ, I⟩ ⟨hθ, hI⟩
    exact ⟨complexStrip_mono (by linarith [hp.hs]) hθ, htube hI⟩
  have hcl : (Real.pi * (p.s / 4)) = Real.pi * p.s / 4 := by ring
  have hcls : KAM.Weighted.InClass (centralSet n p.R) p.r0 (p.s / 2 + p.s / 4) f := by
    refine ⟨hdiff.mono hsub, fun j z hz => ?_⟩
    have := hper z (hsub hz) (Pi.single j 1)
    convert this using 3
    ext i
    by_cases h : i = j <;> simp [Pi.single_apply, h]
  have := KAM.Weighted.wbound_of_sup_bound (D := centralSet n p.R) (r := p.r0)
    (half_pos hp.hs) (by linarith [hp.hs] : (0 : ℝ) < p.s / 4) hcls
    (fun z hz => hbd z (hsub hz))
  rwa [hcl] at this

/-- (f) the exceptional branch is empty: `m_P r₀/8 ≤ π ω_min < 2π ω_min ≤ |ω̃(I₀)|₂`. -/
theorem const_exceptional (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) {h : (Fin n → ℂ) → ℂ}
    (hh : HeadHyp p h) :
    ∀ I₀ ∈ ball (0 : Fin n → ℝ) (p.R / 2), 2 * Real.pi * p.mu * p.r0 / 8 ≤ Real.pi * p.wmin ∧
      Real.pi * p.wmin < 2 * Real.pi * p.wmin ∧
      2 * Real.pi * p.wmin ≤ euclid (KAM.frequencyMap (tildeh h) I₀) := by
  intro I₀ hI₀
  obtain ⟨h1, h2⟩ := const_exceptional_arith hn p hp
  refine ⟨h1, h2, ?_⟩
  have hIR : I₀ ∈ actionBall n p.R := by
    simp only [actionBall, mem_ball, dist_zero_right] at hI₀ ⊢
    linarith [hp.hR]
  have h3 := hh.2.2.1 I₀ hIR
  have h4 := (norm_le_euclid (KAM.frequencyMap h I₀)).1
  rw [(tilde_hypotheses (R := p.R) (s := p.s) (m := p.m) (M := p.M) (Mc := p.Mc)
    (wmin := p.wmin) (U := realActionDomain n p.R p.s) (h := h)).2.2.2.2 I₀]
  have := Real.pi_pos
  nlinarith

/-- (g) time prefactor: `|ω̃| ≤ 2π √n M` on the Euclidean ball of radius `R₀ = r₀/A` about `I₀`, and
`2T ≤ A² s₀/Ω₀` for every `Ω₀ ∈ (0, 2π n M]`. -/
theorem const_time (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) {h : (Fin n → ℂ) → ℂ}
    (hh : HeadHyp p h) :
    (∀ I₀ ∈ ball (0 : Fin n → ℝ) (p.R / 2), ∀ I : Fin n → ℝ, euclid (I - I₀) ≤ p.r0 / p.A →
      euclid (KAM.frequencyMap (tildeh h) I) ≤ 2 * Real.pi * Real.sqrt n * p.M) ∧
    ∀ Ω₀ : ℝ, 0 < Ω₀ → Ω₀ ≤ 2 * Real.pi * n * p.M → 2 * p.T ≤ p.A ^ 2 * p.s0 / Ω₀ := by
  refine ⟨fun I₀ hI₀ I hI => ?_, const_time_arith hn p hp⟩
  have hsize := (const_size hn p hp).2.2.2
  have hnorm : ‖I - I₀‖ ≤ p.r0 / p.A := (norm_le_euclid (I - I₀)).1.trans hI
  have hI₀' : ‖I₀‖ < p.R / 2 := by simpa using hI₀
  have hIR : I ∈ realActionDomain n p.R p.s := by
    refine ball_subset_realActionDomain hp.hR hp.hs ?_
    simp only [actionBall, mem_ball, dist_zero_right]
    calc ‖I‖ = ‖(I - I₀) + I₀‖ := by rw [sub_add_cancel]
      _ ≤ ‖I - I₀‖ + ‖I₀‖ := norm_add_le _ _
      _ < p.R := by linarith [hp.hR, hsize.1, hsize.2]
  have hB := (partials hh.2.2.2.2 hIR).2.2.1
  rw [(tilde_hypotheses (R := p.R) (s := p.s) (m := p.m) (M := p.M) (Mc := p.Mc)
    (wmin := p.wmin) (U := realActionDomain n p.R p.s) (h := h)).2.2.2.2 I]
  have := Real.pi_pos
  calc 2 * Real.pi * euclid (KAM.frequencyMap h I) ≤ 2 * Real.pi * (Real.sqrt n * p.M) := by
        gcongr
    _ = 2 * Real.pi * Real.sqrt n * p.M := by ring

/-- `bpN:p1:norm-convert`: sup norm on a strip to the weighted norm; this is K's
`KAM.summableWeighted_torusCoeff` (`coth` as `cosh/sinh`). -/
theorem norm_convert {ρ δ A : ℝ} (hδ : 0 < δ) (hδρ : δ < ρ) {u : (Fin n → ℂ) → ℂ}
    (hu : DifferentiableOn ℂ u (KAM.complexStrip n ρ))
    (hp : ∀ (i : Fin n) z, z ∈ KAM.complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hA : ∀ z ∈ KAM.complexStrip n ρ, ‖u z‖ ≤ A) :
    KAM.Fourier.SummableWeighted (2 * Real.pi * (ρ - δ))
        (KAM.torusCoeff fun x => u fun j => (x j : ℂ)) ∧
      KAM.Fourier.weightedNorm (2 * Real.pi * (ρ - δ))
          (KAM.torusCoeff fun x => u fun j => (x j : ℂ)) ≤
        (Real.cosh (Real.pi * δ) / Real.sinh (Real.pi * δ)) ^ n * A :=
  KAM.summableWeighted_torusCoeff hδ hδρ hu hp hA

/-- `bpN:p1:norm-convert#converse`: `‖u‖_ρ ≤ ∑ₖ |û_k| e^{2πρ|k|₁}`. From K's
`KAM.norm_fourierSum_le`. -/
theorem norm_convert_converse {ρ A : ℝ} (hρ : 0 < ρ) {u : (Fin n → ℂ) → ℂ}
    (hu : DifferentiableOn ℂ u (KAM.complexStrip n ρ))
    (hp : ∀ (i : Fin n) z, z ∈ KAM.complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hA : ∀ z ∈ KAM.complexStrip n ρ, ‖u z‖ ≤ A)
    (hS : KAM.Fourier.SummableWeighted (2 * Real.pi * ρ)
      (KAM.torusCoeff fun x => u fun j => (x j : ℂ))) :
    ∀ θ ∈ KAM.complexStrip n ρ,
      ‖u θ‖ ≤ KAM.Fourier.weightedNorm (2 * Real.pi * ρ)
        (KAM.torusCoeff fun x => u fun j => (x j : ℂ)) := by
  intro θ hθ
  rw [KAM.eq_fourierSum_torusCoeff hρ hu hp hA hθ]
  exact KAM.norm_fourierSum_le hS hθ

end KAM.Nekhoroshev

end
