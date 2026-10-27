/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.MeasureTheory.Constructions.Pi
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
public import Mathlib.MeasureTheory.Measure.Prod
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.GCongr

/-!
# Slabs in a cube

Blueprint `bp:p4:slab`: for `n ≥ 1`, `R, a > 0` and `k ∈ ℤⁿ ∖ {0}`,
`vol{ω ∈ [-R, R]ⁿ : |k · ω| < a} ≤ 2n (2R)^(n-1) a / |k|₁`. The proof picks a dominant
coordinate (`step:p4:slab-coordinate`) and applies Fubini in that coordinate
(`step:p4:slab-fubini`), through the measure-preserving splitting
`MeasureTheory.volume_preserving_piFinSuccAbove` of `Lebesgue measure on ℝⁿ⁺¹ = ℝ × ℝⁿ`.
-/

@[expose] public section

open MeasureTheory Set

namespace KAM.Measure

/-- The cube `[-R, R]ⁿ` in `Fin n → ℝ`. -/
def cube (n : ℕ) (R : ℝ) : Set (Fin n → ℝ) := Set.pi Set.univ fun _ => Set.Icc (-R) R

/-- The slab `{ω ∈ [-R, R]ⁿ : |k · ω| < a}`. -/
def slab {n : ℕ} (R a : ℝ) (k : Fin n → ℤ) : Set (Fin n → ℝ) :=
  {ω ∈ cube n R | |∑ i, (k i : ℝ) * ω i| < a}

theorem volume_cube (n : ℕ) (R : ℝ) :
    volume (cube n R) = ENNReal.ofReal (2 * R) ^ n := by
  rw [cube, volume_pi, Measure.pi_pi]
  simp only [Real.volume_Icc, Finset.prod_const, Finset.card_univ, Fintype.card_fin]
  congr 2
  ring

theorem measurableSet_cube (n : ℕ) (R : ℝ) : MeasurableSet (cube n R) :=
  MeasurableSet.univ_pi fun _ => measurableSet_Icc

theorem measurableSet_slab {n : ℕ} (R a : ℝ) (k : Fin n → ℤ) : MeasurableSet (slab R a k) := by
  have hopen : IsOpen {ω : Fin n → ℝ | |∑ i, (k i : ℝ) * ω i| < a} :=
    isOpen_lt (by fun_prop) continuous_const
  exact (measurableSet_cube n R).inter hopen.measurableSet

/-- One-dimensional sections of a slab: the set of `x` with `|c x + b| < a` is an interval of
length `2a/|c|`. -/
theorem volume_abs_affine_lt_le {c : ℝ} (hc : c ≠ 0) (b a : ℝ) :
    volume {x : ℝ | |c * x + b| < a} ≤ ENNReal.ofReal (2 * a / |c|) := by
  have hc' : 0 < |c| := abs_pos.mpr hc
  have hsub : {x : ℝ | |c * x + b| < a} ⊆ Set.Ioo (-(b / c) - a / |c|) (-(b / c) + a / |c|) := by
    intro x hx
    have h1 : |c * x + b| = |c| * |x + b / c| := by
      rw [← abs_mul]; congr 1; field_simp
    have h2 : |x + b / c| < a / |c| := by
      rw [lt_div_iff₀ hc']
      have : |c * x + b| < a := hx
      rw [h1] at this
      linarith
    rw [abs_lt] at h2
    constructor <;> linarith [h2.1, h2.2]
  refine (measure_mono hsub).trans ?_
  rw [Real.volume_Ioo]
  apply le_of_eq
  congr 1
  ring

/-- Membership in the section of the slab through `Fin.insertNth`. -/
theorem mem_section_iff {n : ℕ} {R a : ℝ} (k : Fin (n + 1) → ℤ) (i : Fin (n + 1))
    (y : Fin n → ℝ) (x : ℝ) :
    x ∈ (fun x : ℝ => (x, y)) ⁻¹'
        ((MeasurableEquiv.piFinSuccAbove (fun _ : Fin (n + 1) => ℝ) i).symm ⁻¹' slab R a k) ↔
      Fin.insertNth i x y ∈ slab R a k := by
  exact Iff.rfl

theorem mem_cube_of_insertNth_mem {n : ℕ} {R : ℝ} (i : Fin (n + 1)) (x : ℝ) (y : Fin n → ℝ)
    (h : Fin.insertNth i x y ∈ cube (n + 1) R) : y ∈ cube n R := by
  intro j _
  have := h (i.succAbove j) (Set.mem_univ _)
  simpa using this

theorem abs_affine_lt_of_insertNth_mem {n : ℕ} {R a : ℝ} (k : Fin (n + 1) → ℤ) (i : Fin (n + 1))
    (x : ℝ) (y : Fin n → ℝ) (h : Fin.insertNth i x y ∈ slab R a k) :
    |(k i : ℝ) * x + ∑ j, (k (i.succAbove j) : ℝ) * y j| < a := by
  have h2 := h.2
  rw [Fin.sum_univ_succAbove _ i] at h2
  simpa using h2

/-- Blueprint `step:p4:slab-fubini`. If `k i ≠ 0`, the slab `{ω ∈ [-R, R]ⁿ⁺¹ : |k · ω| < a}` has
measure at most `(2R)^n · 2a/|k i|`: Fubini in the coordinate `ω_i`, whose sections are
intervals of length `2a/|k i|`. -/
theorem volume_slab_le_of_coord {n : ℕ} (R a : ℝ) (k : Fin (n + 1) → ℤ) (i : Fin (n + 1))
    (hi : k i ≠ 0) :
    volume (slab R a k) ≤
      ENNReal.ofReal (2 * R) ^ n * ENNReal.ofReal (2 * a / |(k i : ℝ)|) := by
  set e := MeasurableEquiv.piFinSuccAbove (fun _ : Fin (n + 1) => ℝ) i with he
  have hmp : MeasurePreserving e.symm :=
    (volume_preserving_piFinSuccAbove (fun _ : Fin (n + 1) => ℝ) i).symm
  have hT : MeasurableSet (e.symm ⁻¹' slab R a k) := e.symm.measurable (measurableSet_slab R a k)
  have h1 : volume (slab R a k) = volume (e.symm ⁻¹' slab R a k) :=
    (hmp.measure_preimage_equiv _).symm
  have hki : (k i : ℝ) ≠ 0 := by exact_mod_cast hi
  rw [h1, Measure.volume_eq_prod, Measure.prod_apply_symm hT]
  calc ∫⁻ y, volume ((fun x : ℝ => (x, y)) ⁻¹' (e.symm ⁻¹' slab R a k))
      ≤ ∫⁻ y, (cube n R).indicator (fun _ => ENNReal.ofReal (2 * a / |(k i : ℝ)|)) y := by
        refine lintegral_mono fun y => ?_
        by_cases hy : y ∈ cube n R
        · rw [Set.indicator_of_mem hy]
          refine le_trans (measure_mono ?_) (volume_abs_affine_lt_le hki
            (∑ j, (k (i.succAbove j) : ℝ) * y j) a)
          intro x hx
          rw [Set.mem_preimage, Set.mem_preimage] at hx
          exact abs_affine_lt_of_insertNth_mem k i x y ((mem_section_iff k i y x).mp hx)
        · rw [Set.indicator_of_notMem hy]
          refine le_of_eq_of_le (measure_mono_null ?_ measure_empty) le_rfl
          intro x hx
          exact hy (mem_cube_of_insertNth_mem i x y ((mem_section_iff k i y x).mp hx).1)
    _ = ENNReal.ofReal (2 * a / |(k i : ℝ)|) * volume (cube n R) :=
        lintegral_indicator_const (measurableSet_cube n R) _
    _ = ENNReal.ofReal (2 * R) ^ n * ENNReal.ofReal (2 * a / |(k i : ℝ)|) := by
        rw [volume_cube, mul_comm]

/-- Blueprint `step:p4:slab-coordinate`. A nonzero `k ∈ ℤⁿ` has a coordinate `i` with
`|k i| = max_j |k j| ≥ 1` and `|k|₁ ≤ n |k i|`. -/
theorem exists_dominant_coord {n : ℕ} {k : Fin n → ℤ} (hk : k ≠ 0) :
    ∃ i : Fin n, (1 : ℝ) ≤ |(k i : ℝ)| ∧ (∀ j, |(k j : ℝ)| ≤ |(k i : ℝ)|) ∧
      ∑ j, |(k j : ℝ)| ≤ n * |(k i : ℝ)| := by
  obtain ⟨j0, hj0⟩ : ∃ j0, k j0 ≠ 0 := by
    by_contra h
    exact hk (funext fun j => not_not.mp (not_exists.mp h j))
  obtain ⟨i, -, hi⟩ := Finset.exists_max_image Finset.univ (fun j => |(k j : ℝ)|)
    ⟨j0, Finset.mem_univ _⟩
  have hmax : ∀ j, |(k j : ℝ)| ≤ |(k i : ℝ)| := fun j => hi j (Finset.mem_univ _)
  have hj0' : (1 : ℝ) ≤ |(k j0 : ℝ)| := by
    have : (1 : ℤ) ≤ |k j0| := Int.one_le_abs hj0
    exact_mod_cast this
  refine ⟨i, hj0'.trans (hmax j0), hmax, ?_⟩
  calc ∑ j, |(k j : ℝ)| ≤ ∑ _j : Fin n, |(k i : ℝ)| := Finset.sum_le_sum fun j _ => hmax j
    _ = n * |(k i : ℝ)| := by simp

/-- Blueprint `bp:p4:slab`. For `n ≥ 1`, `R, a > 0` and `k ∈ ℤⁿ ∖ {0}`,
`vol{ω ∈ [-R, R]ⁿ : |k · ω| < a} ≤ 2n (2R)^(n-1) a / |k|₁`. -/
theorem slab_measure_le {n : ℕ} (hn : 1 ≤ n) {R a : ℝ} (hR : 0 < R) (ha : 0 < a)
    {k : Fin n → ℤ} (hk : k ≠ 0) :
    volume {ω ∈ (Set.pi Set.univ fun _ : Fin n => Set.Icc (-R) R) |
        |∑ i, (k i : ℝ) * ω i| < a} ≤
      ENNReal.ofReal (2 * n * (2 * R) ^ (n - 1) * a / ∑ i, |(k i : ℝ)|) := by
  obtain ⟨n, rfl⟩ : ∃ n', n = n' + 1 := ⟨n - 1, by omega⟩
  obtain ⟨i, hi1, hmax, hsum⟩ := exists_dominant_coord hk
  have hki : k i ≠ 0 := by
    intro h; rw [h] at hi1; norm_num at hi1
  have hki_pos : 0 < |(k i : ℝ)| := by linarith
  have hL : 0 < ∑ j, |(k j : ℝ)| := lt_of_lt_of_le hki_pos
    (Finset.single_le_sum (f := fun j => |(k j : ℝ)|) (fun j _ => abs_nonneg _)
      (Finset.mem_univ i))
  have h1 := volume_slab_le_of_coord R a k i hki
  refine le_trans h1 ?_
  rw [← ENNReal.ofReal_pow (by linarith), ← ENNReal.ofReal_mul (by positivity)]
  apply ENNReal.ofReal_le_ofReal
  simp only [Nat.add_sub_cancel]
  rw [mul_div_assoc', div_le_div_iff₀ hki_pos hL]
  have hA : 0 ≤ (2 * R) ^ n * (2 * a) := by positivity
  calc (2 * R) ^ n * (2 * a) * ∑ j, |(k j : ℝ)|
      ≤ (2 * R) ^ n * (2 * a) * ((n + 1 : ℕ) * |(k i : ℝ)|) := by gcongr
    _ = 2 * ((n + 1 : ℕ) : ℝ) * (2 * R) ^ n * a * |(k i : ℝ)| := by ring

end KAM.Measure

end
