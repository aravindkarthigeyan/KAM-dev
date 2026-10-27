/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Strip.AnalyticTaylor
import Mathlib.Analysis.Normed.Ring.InfiniteSum

/-!
# Multi-index power series of holomorphic maps on a polydisc

For a map `F : (Fin m → ℂ) → W` holomorphic on an open set `U` and a closed polydisc
`closedBall z₀ r ⊆ U` (max norm), `KAM.exists_powerSeries_coeff` produces coefficients
`c α ∈ W`, `α : Fin m → ℕ`, with `‖c α‖ ≤ A / r ^ |α|` for every bound `A` of `‖F‖` on the closed
polydisc, and `F z = ∑_α (z - z₀)^α • c α` on the open polydisc.

The proof is an induction on the number of variables. The Taylor series in the first variable
(`Complex.hasSum_taylorSeries_on_ball`) has coefficients `a_k(z') = (k!)⁻¹ ∂_1^k F (z₀ 0, z')`.
These are holomorphic in the remaining variables (`KAM.differentiableOn_coeff`, by the regularity
of `KAM/Strip/Regularity.lean`) and satisfy the Cauchy bound `A / r^k` on the closed polydisc
(`KAM.norm_coeff_le`), so the induction hypothesis expands each `a_k`. Summability of the double
series follows from a product of geometric series (`KAM.summable_prod_pow`), and the two
iterated sums are identified by `HasSum.prod_fiberwise`.
-/

@[expose] public noncomputable section

open Metric Set

namespace KAM

/-! ### Geometric series over multi-indices -/

theorem summable_prod_pow_zero (t : Fin 0 → ℝ) :
    Summable (fun α : Fin 0 → ℕ => ∏ i, t i ^ α i) := by
  have : Finite (Fin 0 → ℕ) := inferInstance
  exact Summable.of_finite

theorem summable_prod_pow_succ (m : ℕ) (t : Fin (m + 1) → ℝ) (h0 : ∀ i, 0 ≤ t i)
    (h1 : ∀ i, t i < 1)
    (ih : Summable (fun α : Fin m → ℕ => ∏ i, t i.succ ^ α i)) :
    Summable (fun α : Fin (m + 1) → ℕ => ∏ i, t i ^ α i) := by
  have hg : Summable (fun a : ℕ => t 0 ^ a) := summable_geometric_of_lt_one (h0 0) (h1 0)
  have hf' : (0 : ℕ → ℝ) ≤ fun a : ℕ => t 0 ^ a := fun a => pow_nonneg (h0 0) a
  have hg' : (0 : (Fin m → ℕ) → ℝ) ≤ fun α : Fin m → ℕ => ∏ i, t i.succ ^ α i :=
    fun α => Finset.prod_nonneg fun i _ => pow_nonneg (h0 _) _
  have hprod := Summable.mul_of_nonneg hg ih hf' hg'
  have key : Summable ((fun α : Fin (m + 1) → ℕ => ∏ i, t i ^ α i) ∘
      (Fin.consEquiv (fun _ : Fin (m + 1) => ℕ))) := by
    refine hprod.congr fun p => ?_
    simp only [Function.comp_apply, Fin.consEquiv_apply, Fin.prod_univ_succ, Fin.cons_zero,
      Fin.cons_succ]
  exact (Equiv.summable_iff _).mp key

/-- Geometric series over multi-indices: `∑_α ∏ᵢ tᵢ^{αᵢ} < ∞` when `0 ≤ tᵢ < 1`. -/
theorem summable_prod_pow : ∀ (m : ℕ) (t : Fin m → ℝ), (∀ i, 0 ≤ t i) → (∀ i, t i < 1) →
    Summable (fun α : Fin m → ℕ => ∏ i, t i ^ α i)
  | 0, t, _, _ => summable_prod_pow_zero t
  | m + 1, t, h0, h1 => summable_prod_pow_succ m t h0 h1
      (summable_prod_pow m (fun i => t i.succ) (fun _ => h0 _) (fun _ => h1 _))

/-! ### Splitting off the first variable -/

/-- A tuple `(c, z')` lies in a closed polydisc iff each part does. -/
theorem cons_mem_closedBall_iff {m : ℕ} {z₀ : Fin (m + 1) → ℂ} {r : ℝ} (hr : 0 ≤ r) (c : ℂ)
    (z' : Fin m → ℂ) :
    (Fin.cons c z' : Fin (m + 1) → ℂ) ∈ closedBall z₀ r ↔
      c ∈ closedBall (z₀ 0) r ∧ z' ∈ closedBall (Fin.tail z₀) r := by
  simp only [mem_closedBall, dist_pi_le_iff hr, Fin.forall_fin_succ, Fin.cons_zero, Fin.cons_succ,
    Fin.tail]

/-- A tuple `(c, z')` lies in an open polydisc iff each part does. -/
theorem cons_mem_ball_iff {m : ℕ} {z₀ : Fin (m + 1) → ℂ} {r : ℝ} (hr : 0 < r) (c : ℂ)
    (z' : Fin m → ℂ) :
    (Fin.cons c z' : Fin (m + 1) → ℂ) ∈ ball z₀ r ↔
      c ∈ ball (z₀ 0) r ∧ z' ∈ ball (Fin.tail z₀) r := by
  simp only [mem_ball, dist_pi_lt_iff hr, Fin.forall_fin_succ, Fin.cons_zero, Fin.cons_succ,
    Fin.tail]

/-- Prepending a fixed first coordinate is a differentiable map. -/
theorem differentiable_cons {m : ℕ} (c : ℂ) :
    Differentiable ℂ (fun z' : Fin m → ℂ => (Fin.cons c z' : Fin (m + 1) → ℂ)) := by
  refine differentiable_pi.mpr fun i => ?_
  refine Fin.cases ?_ (fun j => ?_) i
  · simp
  · simpa using differentiable_apply j

/-- Moving the first coordinate along the first coordinate axis. -/
theorem cons_add_smul_single {m : ℕ} (c s : ℂ) (z' : Fin m → ℂ) :
    (Fin.cons c z' : Fin (m + 1) → ℂ) + s • Pi.single 0 1 = Fin.cons (c + s) z' := by
  ext i
  refine Fin.cases ?_ (fun j => ?_) i <;> simp


variable {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W] [CompleteSpace W]
  [SecondCountableTopology W]

/-- The Taylor coefficient `(k!)⁻¹ ∂_1^k F (c, z')` in the first variable is holomorphic in the
remaining variables. -/
theorem differentiableOn_coeff {m : ℕ} {U : Set (Fin (m + 1) → ℂ)} (hU : IsOpen U)
    {F : (Fin (m + 1) → ℂ) → W} (hF : DifferentiableOn ℂ F U) (c : ℂ) (k : ℕ) :
    DifferentiableOn ℂ (fun z' : Fin m → ℂ =>
      ((k.factorial : ℂ))⁻¹ • iteratedFDeriv ℂ k F (Fin.cons c z' : Fin (m + 1) → ℂ)
        (fun _ => Pi.single 0 1))
      ((fun z' : Fin m → ℂ => (Fin.cons c z' : Fin (m + 1) → ℂ)) ⁻¹' U) := by
  have h1 := (differentiableOn_iteratedFDeriv_of_isOpen hU hF k).comp
    (differentiable_cons c).differentiableOn (fun _ h => h)
  have h2 := (ContinuousMultilinearMap.apply ℂ (fun _ : Fin k => Fin (m + 1) → ℂ) W
    (fun _ => Pi.single 0 1)).differentiable.comp_differentiableOn h1
  exact h2.const_smul _


/-- Cauchy bound for the Taylor coefficient in the first variable on a closed polydisc. -/
theorem norm_coeff_le {m : ℕ} {U : Set (Fin (m + 1) → ℂ)}
    {F : (Fin (m + 1) → ℂ) → W} (hF : DifferentiableOn ℂ F U) {z₀ : Fin (m + 1) → ℂ} {r A : ℝ}
    (hr : 0 < r) (hcl : closedBall z₀ r ⊆ U) (hA : ∀ z ∈ closedBall z₀ r, ‖F z‖ ≤ A)
    {z' : Fin m → ℂ} (hz' : z' ∈ closedBall (Fin.tail z₀) r) (hU : IsOpen U) (k : ℕ) :
    ‖((k.factorial : ℂ))⁻¹ • iteratedFDeriv ℂ k F (Fin.cons (z₀ 0) z' : Fin (m + 1) → ℂ)
      (fun _ => Pi.single 0 1)‖ ≤ A / r ^ k := by
  have hmem : ∀ s ∈ closedBall (0 : ℂ) r, (Fin.cons (z₀ 0 + s) z' : Fin (m + 1) → ℂ) ∈
      closedBall z₀ r := by
    intro s hs
    rw [cons_mem_closedBall_iff hr.le]
    exact ⟨by simpa [mem_closedBall, dist_eq_norm] using hs, hz'⟩
  have hw : (Fin.cons (z₀ 0) z' : Fin (m + 1) → ℂ) ∈ U := by
    refine hcl ?_
    simpa using hmem 0 (mem_closedBall_self hr.le)
  set φ : ℂ → W := fun s => F ((Fin.cons (z₀ 0) z' : Fin (m + 1) → ℂ) + s • Pi.single 0 1)
    with hφ
  have hφ' : ∀ s, φ s = F (Fin.cons (z₀ 0 + s) z') := fun s => by
    simp only [hφ, cons_add_smul_single]
  have hdiff : DifferentiableOn ℂ φ (closedBall 0 r) :=
    hF.comp ((differentiable_id.smul_const (Pi.single 0 1 : Fin (m + 1) → ℂ)).const_add
      (Fin.cons (z₀ 0) z' : Fin (m + 1) → ℂ)).differentiableOn
      (fun s hs => hcl (by simpa [cons_add_smul_single] using hmem s hs))
  have hb := Complex.norm_iteratedDeriv_le_of_forall_mem_sphere_norm_le k hr
    (hdiff.diffContOnCl_ball (Subset.refl _))
    (C := A) (fun s hs => by
      rw [hφ']
      exact hA _ (hmem s (sphere_subset_closedBall hs)))
  rw [← iteratedDeriv_line_eq_iteratedFDeriv hU hF hw, norm_smul]
  have hfac : (0 : ℝ) < k.factorial := by exact_mod_cast k.factorial_pos
  calc ‖((k.factorial : ℂ))⁻¹‖ * ‖iteratedDeriv k φ 0‖
      ≤ (k.factorial : ℝ)⁻¹ * (k.factorial * A / r ^ k) := by
        rw [norm_inv, Complex.norm_natCast]
        gcongr
    _ = A / r ^ k := by field_simp


/-- Taylor expansion in the first variable on an open polydisc contained in the domain. -/
theorem hasSum_first_variable {m : ℕ} {U : Set (Fin (m + 1) → ℂ)} (hU : IsOpen U)
    {F : (Fin (m + 1) → ℂ) → W} (hF : DifferentiableOn ℂ F U) {z₀ : Fin (m + 1) → ℂ} {r : ℝ}
    (hr : 0 < r) (hcl : closedBall z₀ r ⊆ U) {z : Fin (m + 1) → ℂ} (hz : z ∈ ball z₀ r) :
    HasSum (fun k : ℕ => (z 0 - z₀ 0) ^ k • (((k.factorial : ℂ))⁻¹ •
      iteratedFDeriv ℂ k F (Fin.cons (z₀ 0) (Fin.tail z) : Fin (m + 1) → ℂ)
        (fun _ => Pi.single 0 1))) (F z) := by
  have hz' := (cons_mem_ball_iff hr (z 0) (Fin.tail z)).mp (by simpa using hz)
  have hmem : ∀ s ∈ ball (0 : ℂ) r, (Fin.cons (z₀ 0 + s) (Fin.tail z) : Fin (m + 1) → ℂ) ∈
      ball z₀ r := by
    intro s hs
    rw [cons_mem_ball_iff hr]
    exact ⟨by simpa [mem_ball, dist_eq_norm] using hs, hz'.2⟩
  have hw : (Fin.cons (z₀ 0) (Fin.tail z) : Fin (m + 1) → ℂ) ∈ U := by
    refine hcl (ball_subset_closedBall ?_)
    simpa using hmem 0 (mem_ball_self hr)
  set φ : ℂ → W := fun s =>
    F ((Fin.cons (z₀ 0) (Fin.tail z) : Fin (m + 1) → ℂ) + s • Pi.single 0 1) with hφ
  have hφ' : ∀ s, φ s = F (Fin.cons (z₀ 0 + s) (Fin.tail z)) := fun s => by
    simp only [hφ, cons_add_smul_single]
  have hdiff : DifferentiableOn ℂ φ (ball 0 r) :=
    hF.comp ((differentiable_id.smul_const (Pi.single 0 1 : Fin (m + 1) → ℂ)).const_add
      (Fin.cons (z₀ 0) (Fin.tail z) : Fin (m + 1) → ℂ)).differentiableOn
      (fun s hs => hcl (ball_subset_closedBall (by simpa [cons_add_smul_single] using hmem s hs)))
  have hs : z 0 - z₀ 0 ∈ ball (0 : ℂ) r := by
    simpa [mem_ball, dist_eq_norm] using hz'.1
  have h := Complex.hasSum_taylorSeries_on_ball hdiff hs
  have hFz : φ (z 0 - z₀ 0) = F z := by
    rw [hφ', add_sub_cancel]
    congr 1
    simp
  rw [hFz] at h
  convert h using 2 with k
  rw [sub_zero, smul_comm, iteratedDeriv_line_eq_iteratedFDeriv hU hF hw]


/-- Blueprint `step:p1:han-series` (coefficients and expansion; proved by induction on the number of
variables with Taylor's theorem in the first variable, instead of the blueprint's geometric
expansion of the Cauchy kernel, so the `c α` are not identified with contour integrals).
If `F` is holomorphic on an open `U` and the closed polydisc `closedBall z₀ r` lies in `U`, there
are coefficients `c α` independent of any bound, with `‖c α‖ ≤ A / r ^ |α|` for every upper bound
`A` of `‖F‖` on the closed polydisc, such that `F z = ∑_α (z - z₀)^α • c α` on the open
polydisc. -/
theorem exists_powerSeries_coeff : ∀ (m : ℕ) {U : Set (Fin m → ℂ)}, IsOpen U →
    ∀ {F : (Fin m → ℂ) → W}, DifferentiableOn ℂ F U → ∀ {z₀ : Fin m → ℂ} {r : ℝ}, 0 < r →
    closedBall z₀ r ⊆ U → ∃ c : (Fin m → ℕ) → W,
      (∀ A : ℝ, (∀ z ∈ closedBall z₀ r, ‖F z‖ ≤ A) → ∀ α, ‖c α‖ ≤ A / r ^ (∑ j, α j)) ∧
      ∀ z ∈ ball z₀ r, HasSum (fun α : Fin m → ℕ => (∏ j, (z j - z₀ j) ^ α j) • c α) (F z)
  | 0, U, hU, F, hF, z₀, r, hr, hcl => by
    refine ⟨fun _ => F z₀, ?_, ?_⟩
    · intro A hA α
      simpa using hA z₀ (mem_closedBall_self hr.le)
    · intro z _
      have hz : z = z₀ := Subsingleton.elim _ _
      subst hz
      convert hasSum_single (default : Fin 0 → ℕ) (fun b hb => absurd (Subsingleton.elim _ _) hb)
        using 1
      simp
  | m + 1, U, hU, F, hF, z₀, r, hr, hcl => by
    set a : ℕ → (Fin m → ℂ) → W := fun k z' => ((k.factorial : ℂ))⁻¹ •
      iteratedFDeriv ℂ k F (Fin.cons (z₀ 0) z' : Fin (m + 1) → ℂ) (fun _ => Pi.single 0 1)
      with ha
    set U' : Set (Fin m → ℂ) :=
      (fun z' : Fin m → ℂ => (Fin.cons (z₀ 0) z' : Fin (m + 1) → ℂ)) ⁻¹' U with hU'
    have hU'o : IsOpen U' := hU.preimage (differentiable_cons _).continuous
    have hcl' : closedBall (Fin.tail z₀) r ⊆ U' := by
      intro z' hz'
      exact hcl ((cons_mem_closedBall_iff hr.le _ _).mpr ⟨mem_closedBall_self hr.le, hz'⟩)
    have hIH : ∀ k, ∃ c : (Fin m → ℕ) → W,
        (∀ A : ℝ, (∀ z' ∈ closedBall (Fin.tail z₀) r, ‖a k z'‖ ≤ A) →
          ∀ α, ‖c α‖ ≤ A / r ^ (∑ j, α j)) ∧
        ∀ z' ∈ ball (Fin.tail z₀) r, HasSum (fun α : Fin m → ℕ =>
          (∏ j, (z' j - Fin.tail z₀ j) ^ α j) • c α) (a k z') :=
      fun k => exists_powerSeries_coeff m hU'o (differentiableOn_coeff hU hF (z₀ 0) k) hr hcl'
    choose c hc1 hc2 using hIH
    refine ⟨fun α => c (α 0) (Fin.tail α), ?_, ?_⟩
    · intro A hA α
      have h := hc1 (α 0) (A / r ^ (α 0))
        (fun z' hz' => norm_coeff_le hF hr hcl hA hz' hU (α 0)) (Fin.tail α)
      refine h.trans_eq ?_
      rw [Fin.sum_univ_succ, pow_add, div_div]
      rfl
    · intro z hz
      obtain ⟨A₀, hA₀⟩ := (han_margin hU hF hr hcl).2
      have hz' := (cons_mem_ball_iff hr (z 0) (Fin.tail z)).mp (by simpa using hz)
      set s : ℂ := z 0 - z₀ 0 with hs
      set f : ℕ × (Fin m → ℕ) → W := fun p => s ^ p.1 •
        ((∏ j, (Fin.tail z j - Fin.tail z₀ j) ^ p.2 j) • c p.1 p.2) with hf
      have h1 : ∀ k, HasSum (fun α' => f (k, α')) (s ^ k • a k (Fin.tail z)) := fun k =>
        (hc2 k _ hz'.2).const_smul (s ^ k)
      have h2 : HasSum (fun k => s ^ k • a k (Fin.tail z)) (F z) :=
        hasSum_first_variable hU hF hr hcl hz
      have hsum : Summable f := by
        set t0 : ℝ := ‖s‖ / r with ht0def
        set t : Fin m → ℝ := fun j => ‖Fin.tail z j - Fin.tail z₀ j‖ / r with htdef
        have ht0 : 0 ≤ t0 := by positivity
        have ht0' : t0 < 1 := by
          rw [ht0def, div_lt_one hr]
          simpa [hs, mem_ball, dist_eq_norm] using hz'.1
        have ht : ∀ j, 0 ≤ t j := fun j => by positivity
        have ht' : ∀ j, t j < 1 := fun j => by
          rw [htdef]
          dsimp only
          rw [div_lt_one hr]
          have := hz'.2
          rw [mem_ball, dist_pi_lt_iff hr] at this
          simpa [dist_eq_norm] using this j
        have hg1 : (0 : ℕ → ℝ) ≤ fun k : ℕ => t0 ^ k := fun k => pow_nonneg ht0 k
        have hg2 : (0 : (Fin m → ℕ) → ℝ) ≤ fun α : Fin m → ℕ => ∏ j, t j ^ α j :=
          fun α => Finset.prod_nonneg fun j _ => pow_nonneg (ht j) _
        have hg := Summable.mul_of_nonneg (summable_geometric_of_lt_one ht0 ht0')
          (summable_prod_pow m t ht ht') hg1 hg2
        refine Summable.of_norm_bounded (hg.mul_left A₀) (fun p => ?_)
        obtain ⟨k, α'⟩ := p
        have hA0 : 0 ≤ A₀ := (norm_nonneg _).trans (hA₀ z₀ (mem_closedBall_self hr.le))
        have hck := hc1 k (A₀ / r ^ k) (fun z' hz'' => norm_coeff_le hF hr hcl hA₀ hz'' hU k) α'
        have hkey : ∏ j, t j ^ α' j =
            (∏ j, ‖Fin.tail z j - Fin.tail z₀ j‖ ^ α' j) / r ^ (∑ j, α' j) := by
          simp only [htdef, div_pow, Finset.prod_div_distrib, Finset.prod_pow_eq_pow_sum]
        calc ‖f (k, α')‖
            = ‖s‖ ^ k * ((∏ j, ‖Fin.tail z j - Fin.tail z₀ j‖ ^ α' j) * ‖c k α'‖) := by
              simp only [hf, norm_smul, norm_pow, norm_prod]
          _ ≤ ‖s‖ ^ k * ((∏ j, ‖Fin.tail z j - Fin.tail z₀ j‖ ^ α' j) *
                (A₀ / r ^ k / r ^ (∑ j, α' j))) := by gcongr
          _ = A₀ * (t0 ^ k * ∏ j, t j ^ α' j) := by
              rw [hkey, ht0def, div_pow]
              field_simp
      have hfz : HasSum f (F z) := by
        have h3 := hsum.hasSum.prod_fiberwise h1
        rw [h2.unique h3]
        exact hsum.hasSum
      have key : HasSum ((fun α : Fin (m + 1) → ℕ =>
          (∏ j, (z j - z₀ j) ^ α j) • c (α 0) (Fin.tail α)) ∘
          (Fin.consEquiv (fun _ : Fin (m + 1) => ℕ))) (F z) := by
        convert hfz using 1
        ext p
        simp only [Function.comp_apply, Fin.consEquiv_apply, hf, Fin.prod_univ_succ,
          Fin.cons_zero, Fin.cons_succ, mul_smul, hs]
        rfl
      exact (Equiv.hasSum_iff _).mp key


/-- Blueprint `step:p1:han-bounds`, series part of `bp:p1:holomorphic-analytic` (a). The
expansion `F z = ∑_α (z - z₀)^α • c α` on the open polydisc converges absolutely, and the
coefficients obey `‖c α‖ ≤ A / r ^ |α|` for every bound `A` of `‖F‖` on the closed polydisc
(in particular for `A = max ‖F‖`), with `c α` independent of `A`. -/
theorem holomorphic_series {m : ℕ} {U : Set (Fin m → ℂ)} (hU : IsOpen U)
    {F : (Fin m → ℂ) → W} (hF : DifferentiableOn ℂ F U) {z₀ : Fin m → ℂ} {r : ℝ} (hr : 0 < r)
    (hcl : closedBall z₀ r ⊆ U) :
    ∃ c : (Fin m → ℕ) → W,
      (∀ A : ℝ, (∀ z ∈ closedBall z₀ r, ‖F z‖ ≤ A) → ∀ α, ‖c α‖ ≤ A / r ^ (∑ j, α j)) ∧
      ∀ z ∈ ball z₀ r,
        Summable (fun α : Fin m → ℕ => ‖(∏ j, (z j - z₀ j) ^ α j) • c α‖) ∧
        HasSum (fun α : Fin m → ℕ => (∏ j, (z j - z₀ j) ^ α j) • c α) (F z) := by
  obtain ⟨c, hc1, hc2⟩ := exists_powerSeries_coeff m hU hF hr hcl
  refine ⟨c, hc1, fun z hz => ⟨?_, hc2 z hz⟩⟩
  obtain ⟨A₀, hA₀⟩ := (han_margin hU hF hr hcl).2
  have hA0 : 0 ≤ A₀ := (norm_nonneg _).trans (hA₀ z₀ (mem_closedBall_self hr.le))
  set t : Fin m → ℝ := fun j => ‖z j - z₀ j‖ / r with htdef
  have ht : ∀ j, 0 ≤ t j := fun j => by positivity
  have ht' : ∀ j, t j < 1 := fun j => by
    rw [htdef]
    dsimp only
    rw [div_lt_one hr]
    rw [mem_ball, dist_pi_lt_iff hr] at hz
    simpa [dist_eq_norm] using hz j
  refine Summable.of_nonneg_of_le (fun α => norm_nonneg _) (fun α => ?_)
    ((summable_prod_pow m t ht ht').mul_left A₀)
  have hck := hc1 A₀ hA₀ α
  have hkey : ∏ j, t j ^ α j = (∏ j, ‖z j - z₀ j‖ ^ α j) / r ^ (∑ j, α j) := by
    simp only [htdef, div_pow, Finset.prod_div_distrib, Finset.prod_pow_eq_pow_sum]
  calc ‖(∏ j, (z j - z₀ j) ^ α j) • c α‖
      = (∏ j, ‖z j - z₀ j‖ ^ α j) * ‖c α‖ := by simp only [norm_smul, norm_pow, norm_prod]
    _ ≤ (∏ j, ‖z j - z₀ j‖ ^ α j) * (A₀ / r ^ (∑ j, α j)) := by gcongr
    _ = A₀ * ∏ j, t j ^ α j := by rw [hkey]; ring

end KAM
