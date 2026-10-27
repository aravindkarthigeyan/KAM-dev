/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.ODE.Lipschitz
public import Mathlib.Topology.MetricSpace.Thickening
public import Mathlib.Order.Interval.Set.Pi
public import Mathlib.Topology.Order.Compact
public import Mathlib.Algebra.Order.Floor.Ring

/-!
# Uniform data for angle-periodic fields

Blueprint N Part 3 (`bpN:p3:gen-uniform-periodic`).

* `KAM.ODE.gen_uniform_periodic`: a `C¹` field on `ℝⁿ × U` that is `ℤⁿ`-periodic in the angles has
  uniform data `(δ, M, L)` on `ℝⁿ × K` for every compact `K ⊆ U`, with `δ ≤ 1`.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

namespace KAM.ODE

section Periodic

variable {n : ℕ}

/-- `bpN:p3:gen-uniform-periodic`. -/
theorem gen_uniform_periodic {U : Set (Fin n → ℝ)}
    {F : (Fin n → ℝ) × (Fin n → ℝ) → (Fin n → ℝ) × (Fin n → ℝ)} (hU : IsOpen U)
    (hF : ContDiffOn ℝ 1 F (univ ×ˢ U))
    (hper : ∀ k : Fin n → ℤ, ∀ x ∈ (univ : Set (Fin n → ℝ)) ×ˢ U, F (x + angleShift k) = F x)
    {K : Set (Fin n → ℝ)} (hK : IsCompact K) (hKU : K ⊆ U) :
    ∃ (δ M : ℝ) (L : ℝ≥0), δ ≤ 1 ∧ UniformData F (univ ×ˢ U) (univ ×ˢ K) δ M L := by
  obtain ⟨δ₀, hδ₀, hsub⟩ := hK.exists_cthickening_subset_open hU hKU
  have hδpos : 0 < min δ₀ 1 := lt_min hδ₀ one_pos
  have hδ1 : min δ₀ 1 ≤ 1 := min_le_right _ _
  set δ := min δ₀ 1 with hδ
  have hT : cthickening δ K ⊆ U := (cthickening_mono (min_le_left _ _) K).trans hsub
  have hTc : IsCompact (cthickening δ K) := hK.cthickening
  have hCc : IsCompact (Icc (-1 : Fin n → ℝ) 2 ×ˢ cthickening δ K) := isCompact_Icc.prod hTc
  have hCW : Icc (-1 : Fin n → ℝ) 2 ×ˢ cthickening δ K ⊆ univ ×ˢ U :=
    fun p hp => ⟨mem_univ _, hT hp.2⟩
  obtain ⟨⟨M, hM0, hM⟩, L, hL⟩ := gen_lip (isOpen_univ.prod hU) hF hCc hCW
  -- the shift moving a ball around `x ∈ ℝⁿ × K` into the box `[-1, 2]ⁿ × K_δ`
  have key : ∀ x ∈ (univ : Set (Fin n → ℝ)) ×ˢ K, ∀ y ∈ closedBall x δ,
      y - angleShift (fun i => ⌊x.1 i⌋) ∈ Icc (-1 : Fin n → ℝ) 2 ×ˢ cthickening δ K ∧
        y.2 ∈ cthickening δ K := by
    intro x hx y hy
    rw [mem_closedBall_iff_norm, Prod.norm_def] at hy
    have h2 : y.2 ∈ cthickening δ K := by
      apply closedBall_subset_cthickening hx.2 δ
      rw [mem_closedBall_iff_norm]
      exact (le_max_right _ _).trans hy
    refine ⟨⟨⟨Pi.le_def.2 fun i => ?_, Pi.le_def.2 fun i => ?_⟩, ?_⟩, h2⟩
    · have h1 : |y.1 i - x.1 i| ≤ δ := by
        have := norm_le_pi_norm (y.1 - x.1) i
        simp only [Pi.sub_apply, Real.norm_eq_abs] at this
        exact this.trans ((le_max_left _ _).trans hy)
      have := abs_le.1 (h1.trans hδ1)
      have h3 := Int.floor_le (x.1 i)
      simp only [angleShift, Prod.fst_sub, Pi.sub_apply, Pi.neg_apply, Pi.one_apply]
      linarith [this.1]
    · have h1 : |y.1 i - x.1 i| ≤ δ := by
        have := norm_le_pi_norm (y.1 - x.1) i
        simp only [Pi.sub_apply, Real.norm_eq_abs] at this
        exact this.trans ((le_max_left _ _).trans hy)
      have := abs_le.1 (h1.trans hδ1)
      have h3 := Int.lt_floor_add_one (x.1 i)
      simp only [angleShift, Prod.fst_sub, Pi.sub_apply, Pi.ofNat_apply]
      linarith [this.2]
    · simpa [angleShift] using h2
  have hshift : ∀ x ∈ (univ : Set (Fin n → ℝ)) ×ˢ K, ∀ y ∈ closedBall x δ,
      F y = F (y - angleShift (fun i => ⌊x.1 i⌋)) := by
    intro x hx y hy
    have hy' := (key x hx y hy).1
    have := hper (fun i => ⌊x.1 i⌋) _ (hCW hy')
    rw [sub_add_cancel] at this
    exact this
  refine ⟨δ, M, L, hδ1, hδpos, hM0, fun x hx y hy => ⟨mem_univ _, hT ?_⟩, fun x hx y hy => ?_,
    fun x hx => ?_⟩
  · exact (key x hx y hy).2
  · rw [hshift x hx y hy]
    exact hM _ (key x hx y hy).1
  · intro a ha b hb
    rw [hshift x hx a ha, hshift x hx b hb]
    have := hL (key x hx a ha).1 (key x hx b hb).1
    simpa [edist_sub_right] using this

end Periodic

end KAM.ODE
