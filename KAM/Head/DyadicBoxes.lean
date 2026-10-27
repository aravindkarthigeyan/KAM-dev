/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
public import Mathlib.MeasureTheory.Constructions.Pi
public import Mathlib.Topology.MetricSpace.HausdorffDistance

/-!
# Boxes and boundary layers

Support for `bp:p4:dyadic-approx`. For a corner `a ∈ ℝⁿ` and a side `ℓ > 0`:

* `KAM.Head.closedBox a ℓ = ∏ [aᵢ, aᵢ + ℓ]` and `KAM.Head.openBox a ℓ = ∏ (aᵢ, aᵢ + ℓ)`;
  the boundary `closedBox a ℓ \ openBox a ℓ` is null (`KAM.Head.volume_closedBox_diff_openBox`).
* `KAM.Head.volume_layer_le`: a finite union `B'` of open boxes of side `ℓ`, with `B'ᶜ` nonempty,
  satisfies `meas {I ∈ B' : infDist(I, B'ᶜ) < t} ≤ 2 n N ℓⁿ⁻¹ t`, where `N` is the number of boxes.
  The layer lies in `2 n N` slabs `{x ∈ box : xᵢ ≤ aᵢ + t}`, `{x ∈ box : xᵢ ≥ aᵢ + ℓ - t}`, each of
  measure at most `t ℓⁿ⁻¹`.
-/

@[expose] public section

open MeasureTheory Metric Set
open scoped ENNReal

namespace KAM.Head

variable {n : ℕ}

/-- The closed box `∏ᵢ [aᵢ, aᵢ + ℓ]`. -/
def closedBox (a : Fin n → ℝ) (ℓ : ℝ) : Set (Fin n → ℝ) :=
  Set.pi Set.univ fun i => Icc (a i) (a i + ℓ)

/-- The open box `∏ᵢ (aᵢ, aᵢ + ℓ)`. -/
def openBox (a : Fin n → ℝ) (ℓ : ℝ) : Set (Fin n → ℝ) :=
  Set.pi Set.univ fun i => Ioo (a i) (a i + ℓ)

theorem isOpen_openBox (a : Fin n → ℝ) (ℓ : ℝ) : IsOpen (openBox a ℓ) :=
  isOpen_set_pi Set.finite_univ fun _ _ => isOpen_Ioo

theorem isClosed_closedBox (a : Fin n → ℝ) (ℓ : ℝ) : IsClosed (closedBox a ℓ) :=
  isClosed_set_pi fun _ _ => isClosed_Icc

theorem openBox_subset_closedBox (a : Fin n → ℝ) (ℓ : ℝ) : openBox a ℓ ⊆ closedBox a ℓ :=
  Set.pi_mono fun _ _ => Ioo_subset_Icc_self

theorem volume_closedBox (a : Fin n → ℝ) (ℓ : ℝ) :
    volume (closedBox a ℓ) = ENNReal.ofReal ℓ ^ n := by
  rw [closedBox, volume_pi_pi]
  simp

theorem volume_openBox (a : Fin n → ℝ) (ℓ : ℝ) :
    volume (openBox a ℓ) = ENNReal.ofReal ℓ ^ n := by
  rw [openBox, volume_pi_pi]
  simp

/-- The boundary of a box is a null set. -/
theorem volume_closedBox_diff_openBox (a : Fin n → ℝ) (ℓ : ℝ) :
    volume (closedBox a ℓ \ openBox a ℓ) = 0 := by
  rw [measure_sdiff (openBox_subset_closedBox a ℓ) (isOpen_openBox a ℓ).measurableSet.nullMeasurableSet
    (by rw [volume_openBox]; exact ENNReal.pow_ne_top ENNReal.ofReal_ne_top),
    volume_closedBox, volume_openBox, tsub_self]

/-! ### Slabs near the faces of a box -/

section Slabs

/-- The slab `{x ∈ closedBox a ℓ : xᵢ ≤ aᵢ + t}` near the lower `i`-th face, written as a box. -/
def loSlab (a : Fin n → ℝ) (ℓ t : ℝ) (i : Fin n) : Set (Fin n → ℝ) :=
  Icc a (Function.update (fun k => a k + ℓ) i (a i + min t ℓ))

/-- The slab `{x ∈ closedBox a ℓ : xᵢ ≥ aᵢ + ℓ - t}` near the upper `i`-th face, written as a box. -/
def hiSlab (a : Fin n → ℝ) (ℓ t : ℝ) (i : Fin n) : Set (Fin n → ℝ) :=
  Icc (Function.update a i (a i + ℓ - min t ℓ)) fun k => a k + ℓ

theorem prod_ite_eq_mul_pow (i : Fin n) (x y : ℝ≥0∞) :
    ∏ k : Fin n, (if k = i then x else y) = x * y ^ (n - 1) := by
  classical
  rw [← Finset.mul_prod_erase Finset.univ _ (Finset.mem_univ i)]
  simp only [ite_true]
  congr 1
  rw [Finset.prod_congr rfl (g := fun _ => y) (fun k hk => by simp [Finset.ne_of_mem_erase hk]),
    Finset.prod_const, Finset.card_erase_of_mem (Finset.mem_univ i)]
  simp

theorem volume_loSlab_le (a : Fin n → ℝ) (ℓ t : ℝ) (i : Fin n) :
    volume (loSlab a ℓ t i) ≤ ENNReal.ofReal t * ENNReal.ofReal ℓ ^ (n - 1) := by
  classical
  rw [loSlab, Real.volume_Icc_pi]
  have : ∀ k, ENNReal.ofReal (Function.update (fun k => a k + ℓ) i (a i + min t ℓ) k - a k) =
      if k = i then ENNReal.ofReal (min t ℓ) else ENNReal.ofReal ℓ := by
    intro k
    by_cases hk : k = i
    · subst hk; simp
    · simp [hk]
  rw [Finset.prod_congr rfl fun k _ => this k, prod_ite_eq_mul_pow]
  gcongr
  exact min_le_left _ _

theorem volume_hiSlab_le (a : Fin n → ℝ) (ℓ t : ℝ) (i : Fin n) :
    volume (hiSlab a ℓ t i) ≤ ENNReal.ofReal t * ENNReal.ofReal ℓ ^ (n - 1) := by
  classical
  rw [hiSlab, Real.volume_Icc_pi]
  have : ∀ k, ENNReal.ofReal ((a k + ℓ) - Function.update a i (a i + ℓ - min t ℓ) k) =
      if k = i then ENNReal.ofReal (min t ℓ) else ENNReal.ofReal ℓ := by
    intro k
    by_cases hk : k = i
    · subst hk; simp
    · simp [hk]
  rw [Finset.prod_congr rfl fun k _ => this k, prod_ite_eq_mul_pow]
  gcongr
  exact min_le_left _ _

end Slabs

/-! ### The boundary layer of a finite union of boxes -/

section Layer

/-- If the ball of radius `t` around `I` lies in `B'` and `B'ᶜ ≠ ∅`, then `t ≤ infDist I B'ᶜ`. -/
theorem le_infDist_compl_of_ball_subset {B' : Set (Fin n → ℝ)} (hne : B'ᶜ.Nonempty)
    {I : Fin n → ℝ} {t : ℝ} (h : ball I t ⊆ B') : t ≤ infDist I B'ᶜ :=
  (le_infDist hne).2 fun y hy => by
    by_contra hlt
    exact hy (h (mem_ball'.2 (not_le.1 hlt)))

/-- A point at max-distance at least `t` from every face has the `t`-ball inside the open box. -/
theorem ball_subset_openBox {a I : Fin n → ℝ} {ℓ t : ℝ} (ht : 0 < t)
    (h : ∀ i, a i + t ≤ I i ∧ I i + t ≤ a i + ℓ) : ball I t ⊆ openBox a ℓ := by
  intro y hy
  rw [mem_ball, dist_pi_lt_iff ht] at hy
  intro i _
  have hyi := hy i
  rw [Real.dist_eq, abs_lt] at hyi
  obtain ⟨h1, h2⟩ := h i
  exact ⟨by linarith [hyi.1], by linarith [hyi.2]⟩

variable {ι : Type*}

/-- The boundary layer of a finite union of open boxes of side `ℓ` lies in the union of the
slabs near the faces of the boxes. -/
theorem layer_subset (S : Finset ι) (a : ι → Fin n → ℝ) {ℓ t : ℝ} (ht : 0 < t)
    (hne : (⋃ s ∈ S, openBox (a s) ℓ)ᶜ.Nonempty) :
    {I | I ∈ ⋃ s ∈ S, openBox (a s) ℓ ∧ infDist I (⋃ s ∈ S, openBox (a s) ℓ)ᶜ < t} ⊆
      ⋃ s ∈ S, ⋃ i, (loSlab (a s) ℓ t i ∪ hiSlab (a s) ℓ t i) := by
  classical
  rintro I ⟨hI, hlt⟩
  obtain ⟨s, hs, hIs⟩ : ∃ s ∈ S, I ∈ openBox (a s) ℓ := by simpa using hI
  have hcl : ∃ i, I i < a s i + t ∨ a s i + ℓ < I i + t := by
    by_contra hcon
    push Not at hcon
    have hball : ball I t ⊆ ⋃ s ∈ S, openBox (a s) ℓ :=
      (ball_subset_openBox ht hcon).trans (subset_biUnion_of_mem (u := fun s => openBox (a s) ℓ) hs)
    exact absurd (le_infDist_compl_of_ball_subset hne hball) (not_le.2 hlt)
  obtain ⟨i, hi⟩ := hcl
  simp only [mem_iUnion]
  refine ⟨s, hs, i, ?_⟩
  rcases hi with hi | hi
  · refine Or.inl ⟨fun k => (hIs k (mem_univ k)).1.le, fun k => ?_⟩
    by_cases hk : k = i
    · subst hk
      simp only [Function.update_self]
      have : I k - a s k < min t ℓ :=
        lt_min (by linarith) (by linarith [(hIs k (mem_univ k)).2])
      linarith
    · simp only [Function.update_of_ne hk]
      exact (hIs k (mem_univ k)).2.le
  · refine Or.inr ⟨fun k => ?_, fun k => (hIs k (mem_univ k)).2.le⟩
    by_cases hk : k = i
    · subst hk
      simp only [Function.update_self]
      have : a s k + ℓ - min t ℓ < I k := by
        rcases le_total t ℓ with h | h
        · rw [min_eq_left h]; linarith
        · rw [min_eq_right h]; linarith [(hIs k (mem_univ k)).1]
      linarith
    · simp only [Function.update_of_ne hk]
      exact (hIs k (mem_univ k)).1.le

/-- Blueprint `step:p4:dy-layer`, measure bound. A union `B'` of `N` open boxes of side `ℓ` with
`B'ᶜ ≠ ∅` has `meas {I ∈ B' : infDist(I, B'ᶜ) < t} ≤ 2 n N ℓⁿ⁻¹ t`. -/
theorem volume_layer_le (S : Finset ι) (a : ι → Fin n → ℝ) {ℓ t : ℝ} (hℓ : 0 < ℓ) (ht : 0 < t)
    (hne : (⋃ s ∈ S, openBox (a s) ℓ)ᶜ.Nonempty) :
    volume {I | I ∈ ⋃ s ∈ S, openBox (a s) ℓ ∧ infDist I (⋃ s ∈ S, openBox (a s) ℓ)ᶜ < t} ≤
      ENNReal.ofReal (2 * n * S.card * ℓ ^ (n - 1) * t) := by
  set x : ℝ≥0∞ := ENNReal.ofReal t * ENNReal.ofReal ℓ ^ (n - 1) with hx
  calc volume {I | I ∈ ⋃ s ∈ S, openBox (a s) ℓ ∧ infDist I (⋃ s ∈ S, openBox (a s) ℓ)ᶜ < t}
      ≤ volume (⋃ s ∈ S, ⋃ i, (loSlab (a s) ℓ t i ∪ hiSlab (a s) ℓ t i)) :=
        measure_mono (layer_subset S a ht hne)
    _ ≤ ∑ s ∈ S, volume (⋃ i, (loSlab (a s) ℓ t i ∪ hiSlab (a s) ℓ t i)) :=
        measure_biUnion_finset_le _ _
    _ ≤ ∑ s ∈ S, ∑ i : Fin n, volume (loSlab (a s) ℓ t i ∪ hiSlab (a s) ℓ t i) :=
        Finset.sum_le_sum fun _ _ => measure_iUnion_fintype_le _ _
    _ ≤ ∑ _s ∈ S, ∑ _i : Fin n, (x + x) :=
        Finset.sum_le_sum fun s _ => Finset.sum_le_sum fun i _ =>
          (measure_union_le _ _).trans (add_le_add (volume_loSlab_le _ _ _ _)
            (volume_hiSlab_le _ _ _ _))
    _ = ENNReal.ofReal (2 * n * S.card * ℓ ^ (n - 1) * t) := by
        simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul, hx]
        rw [ENNReal.ofReal_mul (by positivity), ENNReal.ofReal_mul (by positivity),
          ENNReal.ofReal_mul (by positivity), ENNReal.ofReal_mul (by positivity),
          ENNReal.ofReal_pow hℓ.le, ENNReal.ofReal_natCast, ENNReal.ofReal_natCast,
          ENNReal.ofReal_ofNat]
        ring

end Layer

end KAM.Head

end
