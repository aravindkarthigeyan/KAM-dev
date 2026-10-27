/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Iteration
public import KAM.Strip.Limits
import Mathlib.Analysis.Normed.Group.FunctionSeries
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.FieldSimp

/-!
# The limit torus

Blueprint Part 2, Proposition `bp:p2:limit` (`KAM.Apost.limit`). The limit is the explicit
`KAM.Apost.kamLimit`: the pointwise limit of the sequence `KAM.Apost.kamSeq` of
`bp:p2:iteration` on `T_{ρ∞}`, and `K` elsewhere. The hypotheses of `limit` are exactly those of
`KAM.Apost.iteration`.

The proof follows the blueprint, step by step.

* `step:p2:lim-k`: `KAM.Apost.lim_k`. A sequence whose successive differences on `S` are
  bounded by a summable sequence converges uniformly on `S`
  (`KAM.Apost.tendstoUniformlyOn_telescope`).
* `step:p2:lim-dk`: `KAM.Apost.lim_dk`, the same for the derivatives.
* `step:p2:lim-holo`: `KAM.Apost.lim_holo`, from `KAM.uniform_limits`
  (`bp:p1:uniform-limits`).
* `step:p2:lim-primary`: `KAM.Apost.lim_primary`, from `KAM.uniform_limits_isPrimaryOnStrip` and
  `KAM.uniform_limits_isRealOnReals`.
* `step:p2:lim-close`: `KAM.Apost.lim_close` (abstract) and `KAM.Apost.dSeq_summable_tsum_le`
  (the sum `∑ d_s ≤ 2 C_ΔK e/(γ² δ₀^a)`, Lemma `bp:p2:error-decay` with `j = a`).
* `step:p2:lim-margins`: `KAM.Apost.lim_margins`.
* `step:p2:lim-invariance`: `KAM.Apost.lim_invariance`.

`T_r` is `complexStrip n r`; matrix norms are the operator norms of
`open scoped Matrix.Norms.Operator`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix Filter Topology

namespace KAM.Apost

/-! ### Uniform convergence of a telescoping sequence -/

section Telescope

variable {α F : Type*} [NormedAddCommGroup F] [CompleteSpace F]

/-- If the successive differences of `f s` on `S` are bounded by a summable sequence `u`, then
`f s` converges uniformly on `S` to `f 0 + ∑' j, (f (j + 1) - f j)`. -/
theorem tendstoUniformlyOn_telescope {f : ℕ → α → F} {S : Set α} {u : ℕ → ℝ}
    (hu : Summable u) (hf : ∀ s, ∀ x ∈ S, ‖f (s + 1) x - f s x‖ ≤ u s) :
    TendstoUniformlyOn f (fun x => f 0 x + ∑' j, (f (j + 1) x - f j x)) atTop S := by
  have h := tendstoUniformlyOn_tsum_nat (f := fun j x => f (j + 1) x - f j x) hu
    (fun j x hx => hf j x hx)
  rw [Metric.tendstoUniformlyOn_iff] at h ⊢
  intro ε hε
  filter_upwards [h ε hε] with N hN x hx
  have hsum : f N x = f 0 x + ∑ j ∈ Finset.range N, (f (j + 1) x - f j x) := by
    rw [Finset.sum_range_sub (fun j => f j x) N]
    abel
  rw [hsum, dist_add_left]
  exact hN x hx

omit [CompleteSpace F] in
/-- The telescoping limit is bounded by the sum of the bounds. -/
theorem norm_telescope_le {f : ℕ → α → F} {S : Set α} {u : ℕ → ℝ}
    (hu : Summable u) (hf : ∀ s, ∀ x ∈ S, ‖f (s + 1) x - f s x‖ ≤ u s) {x : α} (hx : x ∈ S) :
    ‖∑' j, (f (j + 1) x - f j x)‖ ≤ ∑' j, u j :=
  tsum_of_norm_bounded hu.hasSum fun j => hf j x hx

end Telescope

/-! ### The abstract limit (steps `step:p2:lim-k` to `step:p2:lim-close`) -/

section Abstract

variable {n : ℕ} {ρinf : ℝ} {Ks : ℕ → (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
  {L : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {d d' : ℕ → ℝ}

/-- Step `step:p2:lim-k`: if `L θ = lim_s Ks s θ` on `T_{ρ∞}` and `‖Ks (s+1) - Ks s‖ ≤ d s` there
with `d` summable, then `Ks s → L` uniformly on `T_{ρ∞}`, and `∑' d` bounds `‖L - Ks 0‖`. -/
theorem lim_k (hd : Summable d)
    (hdiff : ∀ s, ∀ θ ∈ complexStrip n ρinf, ‖Ks (s + 1) θ - Ks s θ‖ ≤ d s)
    (hL : ∀ θ ∈ complexStrip n ρinf, L θ = limUnder atTop (fun s => Ks s θ)) :
    TendstoUniformlyOn Ks L atTop (complexStrip n ρinf) ∧
      (∀ θ ∈ complexStrip n ρinf, Tendsto (fun s => Ks s θ) atTop (𝓝 (L θ))) ∧
      ∀ θ ∈ complexStrip n ρinf, L θ = Ks 0 θ + ∑' j, (Ks (j + 1) θ - Ks j θ) := by
  have h1 := tendstoUniformlyOn_telescope hd hdiff
  have hLG : ∀ θ ∈ complexStrip n ρinf, L θ = Ks 0 θ + ∑' j, (Ks (j + 1) θ - Ks j θ) := by
    intro θ hθ
    rw [hL θ hθ]
    exact (h1.tendsto_at hθ).limUnder_eq
  refine ⟨h1.congr_right fun θ hθ => (hLG θ hθ).symm, fun θ hθ => ?_, hLG⟩
  rw [hLG θ hθ]
  exact h1.tendsto_at hθ

/-- Step `step:p2:lim-dk`: `DKs s` converges uniformly on `T_{ρ∞}` to some `Λ`, when
`‖DKs (s+1) - DKs s‖ ≤ d' s` with `d'` summable. -/
theorem lim_dk (hd' : Summable d')
    (hddiff : ∀ s, ∀ θ ∈ complexStrip n ρinf,
      ‖fderiv ℂ (Ks (s + 1)) θ - fderiv ℂ (Ks s) θ‖ ≤ d' s) :
    ∃ Λ : (Fin n → ℂ) → (Fin n → ℂ) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ),
      TendstoUniformlyOn (fun s θ => fderiv ℂ (Ks s) θ) Λ atTop (complexStrip n ρinf) :=
  ⟨_, tendstoUniformlyOn_telescope (f := fun s θ => fderiv ℂ (Ks s) θ) hd' hddiff⟩

/-- Step `step:p2:lim-holo`: the limit is holomorphic on `T_{ρ∞}` and `DKs s → DL` uniformly
there (`bp:p1:uniform-limits`). -/
theorem lim_holo (hhol : ∀ s, DifferentiableOn ℂ (Ks s) (complexStrip n ρinf))
    (hpt : ∀ θ ∈ complexStrip n ρinf, Tendsto (fun s => Ks s θ) atTop (𝓝 (L θ)))
    {Λ : (Fin n → ℂ) → (Fin n → ℂ) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ)}
    (hΛ : TendstoUniformlyOn (fun s θ => fderiv ℂ (Ks s) θ) Λ atTop (complexStrip n ρinf)) :
    DifferentiableOn ℂ L (complexStrip n ρinf) ∧
      TendstoUniformlyOn (fun s θ => fderiv ℂ (Ks s) θ) (fderiv ℂ L) atTop
        (complexStrip n ρinf) := by
  obtain ⟨hL, hfd⟩ := uniform_limits (isOpen_complexStrip n ρinf) hhol hpt hΛ
  exact ⟨hL, hΛ.congr_right fun θ hθ => (hfd θ hθ).symm⟩

/-- Step `step:p2:lim-primary`: the limit is primary on `T_{ρ∞}` and real on reals. -/
theorem lim_primary (hρinf : 0 < ρinf)
    (hpt : ∀ θ ∈ complexStrip n ρinf, Tendsto (fun s => Ks s θ) atTop (𝓝 (L θ)))
    (hprim : ∀ s, IsPrimaryOnStrip (Ks s) ρinf) (hreal : ∀ s, IsRealOnReals (Ks s)) :
    IsPrimaryOnStrip L ρinf ∧ IsRealOnReals L :=
  ⟨uniform_limits_isPrimaryOnStrip hpt hprim, uniform_limits_isRealOnReals hρinf hpt hreal⟩

/-- Step `step:p2:lim-close` (abstract part): `‖L θ - Ks 0 θ‖ ≤ ∑' d`. -/
theorem lim_close (hd : Summable d)
    (hdiff : ∀ s, ∀ θ ∈ complexStrip n ρinf, ‖Ks (s + 1) θ - Ks s θ‖ ≤ d s)
    (hLG : ∀ θ ∈ complexStrip n ρinf, L θ = Ks 0 θ + ∑' j, (Ks (j + 1) θ - Ks j θ)) :
    ∀ θ ∈ complexStrip n ρinf, ‖L θ - Ks 0 θ‖ ≤ ∑' j, d j := by
  intro θ hθ
  rw [hLG θ hθ, add_sub_cancel_left]
  exact norm_telescope_le hd hdiff hθ

end Abstract

/-! ### The sums `∑ d_s` and `∑ n d_s / δ_s` -/

section Sums

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {ρ ρinf γ e : ℝ}

/-- `∑ d_s` converges, with `∑ d_s ≤ 2 C_ΔK e/(γ² δ₀^a)` (Lemma `bp:p2:error-decay` with
`j = a`; step `step:p2:lim-close`). -/
theorem dSeq_summable_tsum_le (hP : Params n τ M σK σB σT) (hρ : ρinf < ρ) (hγ : 0 < γ)
    (he : 0 ≤ e)
    (hq : (2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
      (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) :
    Summable (dSeq n τ M σK σB σT ρ ρinf γ e) ∧
      ∑' s, dSeq n τ M σK σB σT ρ ρinf γ e s ≤
        2 * C_DK n τ M σK σB σT * e / (γ ^ 2 * delta0 ρ ρinf ^ aExp n τ) := by
  obtain ⟨hs, ht⟩ := error_decay_sum hP hρ hγ he hq (j := aExp n τ)
    (by linarith [eight_le_aExp hP])
  have hfun : dSeq n τ M σK σB σT ρ ρinf γ e = fun s => C_DK n τ M σK σB σT / γ ^ 2 *
      (epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ aExp n τ) :=
    funext dSeq_eq
  have hX : 0 ≤ C_DK n τ M σK σB σT / γ ^ 2 :=
    div_nonneg (zero_le_one.trans (one_le_C_DK hP)) (sq_nonneg γ)
  have hd : delta0 ρ ρinf ^ aExp n τ ≠ 0 := (Real.rpow_pos_of_pos (delta0_pos hρ) _).ne'
  rw [hfun]
  refine ⟨hs.mul_left _, ?_⟩
  rw [tsum_mul_left]
  calc C_DK n τ M σK σB σT / γ ^ 2 *
        ∑' s, epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ aExp n τ
      ≤ C_DK n τ M σK σB σT / γ ^ 2 * (2 * e / delta0 ρ ρinf ^ aExp n τ) :=
        mul_le_mul_of_nonneg_left ht hX
    _ = 2 * C_DK n τ M σK σB σT * e / (γ ^ 2 * delta0 ρ ρinf ^ aExp n τ) := by
        field_simp

/-- `∑ n d_s / δ_s` converges (Lemma `bp:p2:error-decay` with `j = a + 1`; step
`step:p2:lim-dk`). -/
theorem dSeq_div_summable (hP : Params n τ M σK σB σT) (hρ : ρinf < ρ) (hγ : 0 < γ)
    (he : 0 ≤ e)
    (hq : (2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
      (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) :
    Summable (fun s => n * dSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s) := by
  have hs := (error_decay_sum hP hρ hγ he hq (j := aExp n τ + 1)
    (by linarith [eight_le_aExp hP])).1
  have hfun : (fun s => n * dSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s) =
      fun s => n * C_DK n τ M σK σB σT / γ ^ 2 *
        (epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ (aExp n τ + 1)) :=
    funext fun s => dK_term_eq hρ hγ s
  rw [hfun]
  exact hs.mul_left _

/-- `γ ≤ Θ` for the initial torus, from Lemma `bp:p2:frequency` (as in `KAM.Apost.iteration`). -/
theorem gamma_le_Theta (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {ρ μ : ℝ} (hρ0 : 0 < ρ)
    (hμ : 0 < μ) (he1 : e ≤ 1) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hball : ∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ 𝔅)
    (hDK : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ)
    (hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB - μ)
    (hE : ∀ θ ∈ complexStrip n ρ, ‖invarianceError h K ω θ‖ ≤ e) :
    γ ≤ Theta n M σK σB σT := by
  obtain ⟨hγω, hω1, hω2⟩ := frequency hS hρ0 he1
    (fun θ hθ => hball θ hθ (Metric.mem_ball_self hμ))
    (fun θ hθ => (hDK θ hθ).trans (by linarith))
    (fun θ hθ => ⟨(hG θ hθ).1, (hG θ hθ).2.trans (by linarith)⟩) hE
  exact hγω.trans (hω1.trans hω2)

end Sums

/-! ### The limit torus -/

section Limit

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}

open Classical in
/-- `K_∞ = lim K_s` on `T_{ρ∞}`, `K` elsewhere (`bp:p2:limit`). -/
def kamLimit (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (ρ ρinf : ℝ) : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ) :=
  fun θ => if θ ∈ complexStrip n ρinf then limUnder atTop (fun s => kamSeq h K ω ρ ρinf s θ)
    else K θ

/-- On `T_{ρ∞}`, `K_∞` is the limit of the sequence. -/
theorem kamLimit_eq (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (ρ ρinf : ℝ)
    {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρinf) :
    kamLimit h K ω ρ ρinf θ = limUnder atTop (fun s => kamSeq h K ω ρ ρinf s θ) := by
  simp only [kamLimit, hθ, ite_true]

/-- Step `step:p2:lim-margins`: if `‖L θ - K θ‖ ≤ μ/4` and `B_μ(K θ) ⊆ 𝔅`, then
`B_{μ/2}(L θ) ⊆ 𝔅`. -/
theorem lim_margins {μ : ℝ} {z₀ Kθ : (Fin n → ℂ) × (Fin n → ℂ)} (hclose : ‖z₀ - Kθ‖ ≤ μ / 4)
    (hball : Metric.ball Kθ μ ⊆ 𝔅) : Metric.ball z₀ (μ / 2) ⊆ 𝔅 := by
  intro z hz
  apply hball
  rw [Metric.mem_ball, dist_eq_norm] at hz ⊢
  have hμ : 0 ≤ μ := by
    have := (norm_nonneg _).trans hclose
    linarith
  have := norm_sub_le_norm_sub_add_norm_sub z z₀ Kθ
  rcases hμ.eq_or_lt with h0 | h0
  · subst h0
    have h1 : ‖z - z₀‖ < 0 / 2 := hz
    exact absurd h1 (by simp)
  · linarith

/-- Step `step:p2:lim-invariance`: the invariance error of the limit vanishes. Here `Ks s` has
`‖E_s θ‖ ≤ ε_s → 0`, `Ks s θ → L θ ∈ 𝔅` and `DKs s θ → DL θ`. -/
theorem lim_invariance (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    {Ks : ℕ → (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    {L : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {ε : ℕ → ℝ} {θ : Fin n → ℂ}
    (hmem : L θ ∈ 𝔅) (hKs : Tendsto (fun s => Ks s θ) atTop (𝓝 (L θ)))
    (hDKs : Tendsto (fun s => fderiv ℂ (Ks s) θ) atTop (𝓝 (fderiv ℂ L θ)))
    (hE : ∀ s, ‖invarianceError h (Ks s) ω θ‖ ≤ ε s) (hε : Tendsto ε atTop (𝓝 0)) :
    invarianceError h L ω θ = 0 := by
  have hX : ContinuousAt (hamiltonianVectorFieldℂ h) (L θ) :=
    ((differentiableOn_ham hS).differentiableAt (hS.isOpen.mem_nhds hmem)).continuousAt
  have hlim : Tendsto (fun s => invarianceError h (Ks s) ω θ) atTop
      (𝓝 (invarianceError h L ω θ)) := by
    unfold invarianceError
    refine (hX.tendsto.comp hKs).sub ?_
    exact ((ContinuousLinearMap.apply ℂ ((Fin n → ℂ) × (Fin n → ℂ))
      (fun i => (ω i : ℂ))).continuous.tendsto _).comp hDKs
  exact tendsto_nhds_unique hlim (squeeze_zero_norm hE hε)

/-- Blueprint `bp:p2:limit`, items (a)–(e); hypotheses those of `bp:p2:iteration`. -/
theorem limit (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {ρ ρinf μ e : ℝ} (hρinf : 0 < ρinf)
    (hρ : ρinf < ρ) (hμ : 0 < μ) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (hKp : IsPrimaryOnStrip K ρ)
    (hKr : IsRealOnReals K) (hball : ∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ 𝔅)
    (hDK : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ)
    (hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB - μ)
    (hT : IsUnit (torsionAverage h K ω).det ∧ ‖(torsionAverage h K ω)⁻¹‖ ≤ σT - μ)
    (hE : ∀ θ ∈ complexStrip n ρ, ‖invarianceError h K ω θ‖ ≤ e) (he1 : e ≤ 1)
    (hsmall : c_star n τ M σK σB σT μ * e / (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) :
    (TendstoUniformlyOn (fun s => kamSeq h K ω ρ ρinf s) (kamLimit h K ω ρ ρinf) atTop
        (complexStrip n ρinf) ∧
      TendstoUniformlyOn (fun s θ => fderiv ℂ (kamSeq h K ω ρ ρinf s) θ)
        (fderiv ℂ (kamLimit h K ω ρ ρinf)) atTop (complexStrip n ρinf) ∧
      DifferentiableOn ℂ (kamLimit h K ω ρ ρinf) (complexStrip n ρinf)) ∧
    (IsPrimaryOnStrip (kamLimit h K ω ρ ρinf) ρinf ∧ IsRealOnReals (kamLimit h K ω ρ ρinf)) ∧
    ((∀ θ ∈ complexStrip n ρinf, ‖kamLimit h K ω ρ ρinf θ - K θ‖ ≤
        2 * C_DK n τ M σK σB σT * e / (γ ^ 2 * delta0 ρ ρinf ^ aExp n τ)) ∧
      2 * C_DK n τ M σK σB σT * e / (γ ^ 2 * delta0 ρ ρinf ^ aExp n τ) ≤ μ / 4) ∧
    (∀ θ ∈ complexStrip n ρinf, Metric.ball (kamLimit h K ω ρ ρinf θ) (μ / 2) ⊆ 𝔅 ∧
      ‖fderiv ℂ (kamLimit h K ω ρ ρinf) θ‖ ≤ σK - μ / 2) ∧
    (∀ θ ∈ complexStrip n ρinf, invarianceError h (kamLimit h K ω ρ ρinf) ω θ = 0) := by
  have hP := hS.toParams
  have hγ := hS.gamma_pos
  have hρ0 : 0 < ρ := hρinf.trans hρ
  have h00 : (0 : Fin n → ℂ) ∈ complexStrip n ρ := fun i => by simpa using hρ0
  have he0 : 0 ≤ e := (norm_nonneg _).trans (hE 0 h00)
  have hd0 := delta0_pos hρ
  have hq := error_decay_hyp hγ hd0 he0 hsmall
  have hγΘ := gamma_le_Theta hS hρ0 hμ he1 hball hDK hG hE
  obtain ⟨-, hit⟩ := iteration hS hρinf hρ hμ hK hKp hKr hball hDK hG hT hE he1 hsmall
  -- the strips
  have hsub : ∀ s, complexStrip n ρinf ⊆ complexStrip n (rSeq ρ ρinf s) := fun s =>
    Triangular.strip_mono
      (((schedule hρinf hρ).2.1).trans ((schedule hρinf hρ).2.2 s).2.1.le)
  have hsubρ : complexStrip n ρinf ⊆ complexStrip n ρ := Triangular.strip_mono hρ.le
  -- the summable bounds
  obtain ⟨hdsum, htsum⟩ := dSeq_summable_tsum_le hP hρ hγ he0 hq
  have hdksum := dSeq_div_summable hP hρ hγ he0 hq
  -- differences on the strip `T_{ρ∞}`
  have hdiff : ∀ s, ∀ θ ∈ complexStrip n ρinf,
      ‖kamSeq h K ω ρ ρinf (s + 1) θ - kamSeq h K ω ρ ρinf s θ‖ ≤
        dSeq n τ M σK σB σT ρ ρinf γ e s := fun s θ hθ =>
    ((hit s).2.2.2.2.2 θ (hsub (s + 1) hθ)).1
  have hddiff : ∀ s, ∀ θ ∈ complexStrip n ρinf,
      ‖fderiv ℂ (kamSeq h K ω ρ ρinf (s + 1)) θ - fderiv ℂ (kamSeq h K ω ρ ρinf s) θ‖ ≤
        n * dSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s := fun s θ hθ =>
    ((hit s).2.2.2.2.2 θ (hsub (s + 1) hθ)).2
  have hhol : ∀ s, DifferentiableOn ℂ (kamSeq h K ω ρ ρinf s) (complexStrip n ρinf) := fun s =>
    (hit s).1.1.holo.mono (hsub s)
  have hprim : ∀ s, IsPrimaryOnStrip (kamSeq h K ω ρ ρinf s) ρinf := fun s θ hθ k =>
    (hit s).1.1.primary θ (hsub s hθ) k
  have hreal : ∀ s, IsRealOnReals (kamSeq h K ω ρ ρinf s) := fun s => (hit s).1.1.real
  -- steps `lim-k`, `lim-dk`, `lim-holo`, `lim-primary`
  obtain ⟨hconv, hpt, hLG⟩ := lim_k hdsum hdiff (fun θ hθ => kamLimit_eq h K ω ρ ρinf hθ)
  obtain ⟨Λ, hΛ⟩ := lim_dk hdksum hddiff
  obtain ⟨hholo, hconvd⟩ := lim_holo hhol hpt hΛ
  have hdpt : ∀ θ ∈ complexStrip n ρinf, Tendsto (fun s => fderiv ℂ (kamSeq h K ω ρ ρinf s) θ)
      atTop (𝓝 (fderiv ℂ (kamLimit h K ω ρ ρinf) θ)) := fun θ hθ => hconvd.tendsto_at hθ
  have hpr := lim_primary hρinf hpt hprim hreal
  -- step `lim-close`
  have hclose : ∀ θ ∈ complexStrip n ρinf, ‖kamLimit h K ω ρ ρinf θ - K θ‖ ≤
      2 * C_DK n τ M σK σB σT * e / (γ ^ 2 * delta0 ρ ρinf ^ aExp n τ) := fun θ hθ =>
    ((lim_close hdsum hdiff hLG) θ hθ).trans htsum
  have hsmallμ := closeness_le hP hγ hγΘ hd0 (delta0_le_one ρ ρinf) he0 hμ hsmall
  -- step `lim-margins`
  have hmarg : ∀ θ ∈ complexStrip n ρinf,
      Metric.ball (kamLimit h K ω ρ ρinf θ) (μ / 2) ⊆ 𝔅 := fun θ hθ =>
    lim_margins ((hclose θ hθ).trans hsmallμ) (hball θ (hsubρ hθ))
  have hdk : ∀ θ ∈ complexStrip n ρinf, ‖fderiv ℂ (kamLimit h K ω ρ ρinf) θ‖ ≤ σK - μ / 2 := by
    intro θ hθ
    refine le_of_tendsto (hdpt θ hθ).norm (Eventually.of_forall fun s => ?_)
    obtain ⟨-, -, ⟨hdk1, hdk2⟩, -⟩ := hit s
    have := hdk1 θ (hsub s hθ)
    linarith
  -- step `lim-invariance`
  have hεz : Tendsto (epsSeq n τ M σK σB σT ρ ρinf γ e) atTop (𝓝 0) := by
    have := (error_decay_sum hP hρ hγ he0 hq (j := 0)
      (by linarith [eight_le_aExp hP])).1.tendsto_atTop_zero
    simpa using this
  refine ⟨⟨hconv, hconvd, hholo⟩, hpr, ⟨hclose, hsmallμ⟩, fun θ hθ => ⟨hmarg θ hθ, hdk θ hθ⟩,
    fun θ hθ => ?_⟩
  exact lim_invariance hS (ε := epsSeq n τ M σK σB σT ρ ρinf γ e)
    (hmarg θ hθ (Metric.mem_ball_self (half_pos hμ))) (hpt θ hθ) (hdpt θ hθ)
    (fun s => (hit s).1.1.error_le θ (hsub s hθ)) hεz

end Limit

end KAM.Apost

end
