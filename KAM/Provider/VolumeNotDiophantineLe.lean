/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.IsDiophantine
public import KAM.Measure.Lattice
public import KAM.Measure.Slab
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Provider for the frozen theorem `KAM.volume_not_diophantine_le`

The proof of `KAM.volume_not_diophantine_le` is assembled here as
`KAM.Provider.volume_not_diophantine_le`, from graph predecessors and approved external inputs only.
While the frozen anchor is `DRAFT_SORRY`, this module is quarantined: no module other than the
anchor may import it.

The proof follows `bp:p0:g3` (blueprint Part 4): the case `n = 0` (`step:p4:g3-n0`), a bounding
cube and the constant (`step:p4:g3-cube`), the union of slabs (`step:p4:g3-union`), and the
summation by countable subadditivity (`step:p4:g3-sum`), with `bp:p4:slab` from
`KAM.Measure.Slab` and `bp:p4:lattice-sum` from `KAM.Measure.Lattice`.
-/

@[expose] public section

open MeasureTheory

namespace KAM.Provider

/-- Blueprint `step:p4:g3-n0`. In dimension zero the only index is `k = 0`, so every frequency is
`(α, τ)`-Diophantine. -/
theorem isDiophantine_of_dim_zero (α τ : ℝ) (ω : Fin 0 → ℝ) : IsDiophantine α τ ω := by
  intro k hk
  exact absurd (Subsingleton.elim k 0) hk

/-- Blueprint `step:p4:g3-cube` (bounding cube). A bounded set lies in a cube `[-R, R]ⁿ`
with `R > 0`. -/
theorem exists_cube_superset {n : ℕ} {Ω : Set (Fin n → ℝ)} (hΩ : Bornology.IsBounded Ω) :
    ∃ R : ℝ, 0 < R ∧ Ω ⊆ Set.pi Set.univ fun _ : Fin n => Set.Icc (-R) R := by
  obtain ⟨r, hr⟩ := hΩ.subset_closedBall 0
  refine ⟨max r 1, lt_of_lt_of_le one_pos (le_max_right _ _), fun ω hω i _ => ?_⟩
  have h1 : ‖ω‖ ≤ r := by simpa using hr hω
  have h2 : |ω i| ≤ ‖ω‖ := by simpa using norm_le_pi_norm ω i
  rw [Set.mem_Icc, ← abs_le]
  exact h2.trans (h1.trans (le_max_left _ _))

/-- Blueprint `step:p4:g3-union`. The non-Diophantine frequencies of a subset of the cube lie in
the union over `k ≠ 0` of the slabs `{ω ∈ [-R, R]ⁿ : |k · ω| < α |k|₁^(-τ)}`. -/
theorem not_diophantine_subset_iUnion {n : ℕ} {Ω : Set (Fin n → ℝ)} {R α τ : ℝ}
    (hΩ : Ω ⊆ Set.pi Set.univ fun _ : Fin n => Set.Icc (-R) R) :
    {ω ∈ Ω | ¬ IsDiophantine α τ ω} ⊆
      ⋃ k : {k : Fin n → ℤ // k ≠ 0},
        {ω ∈ (Set.pi Set.univ fun _ : Fin n => Set.Icc (-R) R) |
          |∑ i, (((k : Fin n → ℤ) i : ℤ) : ℝ) * ω i| <
            α / (∑ i, |(((k : Fin n → ℤ) i : ℤ) : ℝ)|) ^ τ} := by
  rintro ω ⟨hωΩ, hω⟩
  simp only [IsDiophantine, not_forall, not_le] at hω
  obtain ⟨k, hk, hlt⟩ := hω
  exact Set.mem_iUnion.mpr ⟨⟨k, hk⟩, hΩ hωΩ, hlt⟩

/-- The slab estimate for the sets of `not_diophantine_subset_iUnion`: the measure of the
`k`-th slab is at most `2 n (2R)^(n-1) α |k|₁^(-τ-1)`. -/
theorem volume_slab_term_le {n : ℕ} (hn : 1 ≤ n) {R α τ : ℝ} (hR : 0 < R) (hα : 0 < α)
    (k : {k : Fin n → ℤ // k ≠ 0}) :
    volume {ω ∈ (Set.pi Set.univ fun _ : Fin n => Set.Icc (-R) R) |
        |∑ i, (((k : Fin n → ℤ) i : ℤ) : ℝ) * ω i| <
          α / (∑ i, |(((k : Fin n → ℤ) i : ℤ) : ℝ)|) ^ τ} ≤
      ENNReal.ofReal (2 * n * (2 * R) ^ (n - 1) * α *
        (∑ i, |(((k : Fin n → ℤ) i : ℤ) : ℝ)|) ^ (-τ - 1)) := by
  set L : ℝ := ∑ i, |(((k : Fin n → ℤ) i : ℤ) : ℝ)| with hL
  have hLpos : 0 < L := by
    obtain ⟨j, hj⟩ : ∃ j, (k : Fin n → ℤ) j ≠ 0 := by
      by_contra h
      exact k.2 (funext fun j => not_not.mp (not_exists.mp h j))
    refine lt_of_lt_of_le ?_ (Finset.single_le_sum (f := fun j => |(((k : Fin n → ℤ) j : ℤ) : ℝ)|)
      (fun j _ => abs_nonneg _) (Finset.mem_univ j))
    exact abs_pos.mpr (by exact_mod_cast hj)
  have hapos : 0 < α / L ^ τ := div_pos hα (Real.rpow_pos_of_pos hLpos τ)
  refine (KAM.Measure.slab_measure_le hn hR hapos k.2).trans ?_
  apply ENNReal.ofReal_le_ofReal
  apply le_of_eq
  rw [← hL, Real.rpow_sub_one hLpos.ne', Real.rpow_neg hLpos.le]
  field_simp

/-- Blueprint `step:p4:g3-sum` (summation). For `n ≥ 1`, a subset `Ω` of the cube `[-R, R]ⁿ`
and `α > 0`, the non-Diophantine part of `Ω` has measure at most `C α` with
`C = 2 n (2R)^(n-1) S(n, τ)`. -/
theorem volume_not_diophantine_le_of_cube {n : ℕ} (hn : 1 ≤ n) {τ : ℝ}
    (hτ : (n : ℝ) - 1 < τ) {R : ℝ} (hR : 0 < R) {Ω : Set (Fin n → ℝ)}
    (hΩ : Ω ⊆ Set.pi Set.univ fun _ : Fin n => Set.Icc (-R) R) {α : ℝ} (hα : 0 < α) :
    volume {ω ∈ Ω | ¬ IsDiophantine α τ ω} ≤
      ENNReal.ofReal ((2 * n * (2 * R) ^ (n - 1) *
        (2 * 3 ^ (n - 1) * ((τ + 2 - n) / (τ + 1 - n)))) * α) := by
  obtain ⟨hsum, hle⟩ := KAM.Measure.lattice_sum hn hτ
  set c : ℝ := 2 * n * (2 * R) ^ (n - 1) with hc
  have hcpos : 0 ≤ c := by positivity
  set f : {k : Fin n → ℤ // k ≠ 0} → ℝ :=
    fun k => (∑ i, |(((k : Fin n → ℤ) i : ℤ) : ℝ)|) ^ (-τ - 1) with hf
  have hfnn : ∀ k, 0 ≤ f k := fun k =>
    Real.rpow_nonneg (Finset.sum_nonneg fun i _ => abs_nonneg _) _
  have hsum' : Summable fun k => c * α * f k := hsum.mul_left (c * α)
  calc volume {ω ∈ Ω | ¬ IsDiophantine α τ ω}
      ≤ volume (⋃ k : {k : Fin n → ℤ // k ≠ 0},
          {ω ∈ (Set.pi Set.univ fun _ : Fin n => Set.Icc (-R) R) |
            |∑ i, (((k : Fin n → ℤ) i : ℤ) : ℝ) * ω i| <
              α / (∑ i, |(((k : Fin n → ℤ) i : ℤ) : ℝ)|) ^ τ}) :=
        measure_mono (not_diophantine_subset_iUnion hΩ)
    _ ≤ ∑' k : {k : Fin n → ℤ // k ≠ 0}, volume
          {ω ∈ (Set.pi Set.univ fun _ : Fin n => Set.Icc (-R) R) |
            |∑ i, (((k : Fin n → ℤ) i : ℤ) : ℝ) * ω i| <
              α / (∑ i, |(((k : Fin n → ℤ) i : ℤ) : ℝ)|) ^ τ} := measure_iUnion_le _
    _ ≤ ∑' k : {k : Fin n → ℤ // k ≠ 0}, ENNReal.ofReal (c * α * f k) :=
        ENNReal.tsum_le_tsum fun k => by
          exact volume_slab_term_le hn (τ := τ) hR hα k
    _ = ENNReal.ofReal (∑' k : {k : Fin n → ℤ // k ≠ 0}, c * α * f k) :=
        (ENNReal.ofReal_tsum_of_nonneg (fun k => by have := hfnn k; positivity) hsum').symm
    _ ≤ ENNReal.ofReal ((c * (2 * 3 ^ (n - 1) * ((τ + 2 - n) / (τ + 1 - n)))) * α) := by
        apply ENNReal.ofReal_le_ofReal
        rw [tsum_mul_left]
        calc c * α * ∑' k, f k ≤ c * α * (2 * 3 ^ (n - 1) * ((τ + 2 - n) / (τ + 1 - n))) := by
              gcongr
          _ = (c * (2 * 3 ^ (n - 1) * ((τ + 2 - n) / (τ + 1 - n)))) * α := by ring

/-- Blueprint `bp:p0:g3`. Measure of the non-Diophantine frequencies in a bounded set
(Pos01 §1d): for `τ > n - 1` and bounded `Ω ⊆ ℝⁿ` there is `C` with
`vol{ω ∈ Ω : ω not (α, τ)-Diophantine} ≤ C α` for every `α > 0`. -/
theorem volume_not_diophantine_le {n : ℕ} {τ : ℝ} (hτ : (n : ℝ) - 1 < τ)
    {Ω : Set (Fin n → ℝ)} (hΩ : Bornology.IsBounded Ω) :
    ∃ C : ℝ, ∀ α : ℝ, 0 < α →
      volume {ω ∈ Ω | ¬ IsDiophantine α τ ω} ≤ ENNReal.ofReal (C * α) := by
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · refine ⟨0, fun α _ => ?_⟩
    have : {ω ∈ Ω | ¬ IsDiophantine α τ ω} = ∅ := by
      ext ω
      simp [isDiophantine_of_dim_zero]
    rw [this, measure_empty]
    exact bot_le
  · obtain ⟨R, hR, hΩR⟩ := exists_cube_superset hΩ
    exact ⟨2 * n * (2 * R) ^ (n - 1) * (2 * 3 ^ (n - 1) * ((τ + 2 - n) / (τ + 1 - n))),
      fun α hα => volume_not_diophantine_le_of_cube hn hτ hR hΩR hα⟩

end KAM.Provider

end
