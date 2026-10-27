/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Head.DyadicBoxes

/-!
# Inner dyadic approximation

Blueprint Part 4, `bp:p4:dyadic-approx`: an open bounded `B ⊆ ℝⁿ` contains an open `B'` with
`meas (B \ B') ≤ η` whose boundary layers satisfy `meas {I ∈ B' : infDist(I, B'ᶜ) < t} ≤ C t` for
all `t > 0` (the boundary-layer hypothesis of HEAD).

The proof follows the blueprint steps.

* `step:p4:dy-exhaust`: `KAM.Head.dyadicFamily B j` is the finite set `𝒟_j` of generation-`j` closed
  dyadic cubes `2⁻ʲ (m + [0,1]ⁿ)` in `B` (`KAM.Head.dyadicFamily_finite`),
  `KAM.Head.dyadicUnion B j` is `E_j`, which is closed and increasing, with union `B`
  (`KAM.Head.isClosed_dyadicUnion`, `KAM.Head.dyadicUnion_mono`,
  `KAM.Head.iUnion_dyadicUnion`); `KAM.Head.exists_dyadicUnion_diff_le` gives `j` with
  `meas (B \ E_j) ≤ η`.
* `step:p4:dy-open`: `KAM.Head.dyadicInterior B j` is the union of the interiors of the cubes of
  `𝒟_j`; it is open, lies in `B` and `meas (B \ B') ≤ η` (`KAM.Head.volume_diff_dyadicInterior_le`).
* `step:p4:dy-layer`: the layer constant is `2 n N ℓⁿ⁻¹` with `N = #𝒟_j` and `ℓ = 2⁻ʲ`
  (`KAM.Head.volume_layer_dyadicInterior_le`, from `KAM.Head.volume_layer_le`).
* `KAM.Head.dyadic_approx` is `bp:p4:dyadic-approx`.

For `n = 0` the layer statement fails with Lean's convention `infDist x ∅ = 0`, so the theorem is
stated for `0 < n` (Part 0's standing convention is `n ≥ 2`).
-/

@[expose] public noncomputable section

open MeasureTheory Metric Set Filter
open scoped ENNReal Topology

namespace KAM.Head

variable {n : ℕ}

/-- The side `2⁻ʲ` of the generation-`j` dyadic cubes. -/
def dyadicSide (j : ℕ) : ℝ := (1 / 2 : ℝ) ^ j

/-- The lower corner `2⁻ʲ m` of the dyadic cube with index `m ∈ ℤⁿ` of generation `j`. -/
def dyadicCorner (j : ℕ) (m : Fin n → ℤ) : Fin n → ℝ := fun i => (m i : ℝ) * dyadicSide j

/-- The closed dyadic cube `2⁻ʲ (m + [0,1]ⁿ)`. -/
def dyadicCube (j : ℕ) (m : Fin n → ℤ) : Set (Fin n → ℝ) :=
  closedBox (dyadicCorner j m) (dyadicSide j)

/-- The index set of `𝒟_j`: generation-`j` closed dyadic cubes contained in `B`. -/
def dyadicFamily (B : Set (Fin n → ℝ)) (j : ℕ) : Set (Fin n → ℤ) :=
  {m | dyadicCube j m ⊆ B}

/-- `E_j`, the union of the cubes of `𝒟_j`. -/
def dyadicUnion (B : Set (Fin n → ℝ)) (j : ℕ) : Set (Fin n → ℝ) :=
  ⋃ m ∈ dyadicFamily B j, dyadicCube j m

/-- The union of the interiors of the cubes of `𝒟_j`: the set `B'` of the blueprint. -/
def dyadicInterior (B : Set (Fin n → ℝ)) (j : ℕ) : Set (Fin n → ℝ) :=
  ⋃ m ∈ dyadicFamily B j, openBox (dyadicCorner j m) (dyadicSide j)

theorem dyadicSide_pos (j : ℕ) : 0 < dyadicSide j := by
  unfold dyadicSide; positivity

theorem dyadicSide_succ (j : ℕ) : dyadicSide (j + 1) = dyadicSide j / 2 := by
  unfold dyadicSide; rw [pow_succ]; ring

theorem dyadicCorner_mem_dyadicCube (j : ℕ) (m : Fin n → ℤ) :
    dyadicCorner j m ∈ dyadicCube j m :=
  fun _ _ => ⟨le_rfl, le_add_of_nonneg_right (dyadicSide_pos j).le⟩

/-! ### Step `step:p4:dy-exhaust` -/

/-- Blueprint `step:p4:dy-exhaust`: `𝒟_j` is finite because `B` is bounded. -/
theorem dyadicFamily_finite {B : Set (Fin n → ℝ)} (hB : Bornology.IsBounded B) (j : ℕ) :
    (dyadicFamily B j).Finite := by
  obtain ⟨R, hR⟩ := hB.exists_norm_le
  refine (Set.Finite.pi (t := fun _ : Fin n => Set.Icc (-⌈R / dyadicSide j⌉) ⌈R / dyadicSide j⌉)
    fun _ => Set.finite_Icc _ _).subset fun m hm => ?_
  intro i _
  have hcorner : ‖dyadicCorner j m‖ ≤ R := hR _ (hm (dyadicCorner_mem_dyadicCube j m))
  have hi : |(m i : ℝ) * dyadicSide j| ≤ R :=
    (norm_le_pi_norm (dyadicCorner j m) i).trans hcorner
  have hw := dyadicSide_pos j
  have habs : |(m i : ℝ)| ≤ R / dyadicSide j := by
    rw [le_div_iff₀ hw]
    calc |(m i : ℝ)| * dyadicSide j = |(m i : ℝ) * dyadicSide j| := by
          rw [abs_mul, abs_of_pos hw]
      _ ≤ R := hi
  have hceil : (R / dyadicSide j) ≤ ⌈R / dyadicSide j⌉ := Int.le_ceil _
  have h2 : |(m i : ℝ)| ≤ ⌈R / dyadicSide j⌉ := habs.trans hceil
  rw [abs_le] at h2
  constructor
  · have := h2.1
    exact_mod_cast this
  · have := h2.2
    exact_mod_cast this

theorem dyadicUnion_subset (B : Set (Fin n → ℝ)) (j : ℕ) : dyadicUnion B j ⊆ B :=
  iUnion₂_subset fun _ hm => hm

/-- Blueprint `step:p4:dy-exhaust`: `E_j` is closed. -/
theorem isClosed_dyadicUnion {B : Set (Fin n → ℝ)} (hB : Bornology.IsBounded B) (j : ℕ) :
    IsClosed (dyadicUnion B j) :=
  (dyadicFamily_finite hB j).isClosed_biUnion fun _ _ => isClosed_closedBox _ _

/-- Each cube of generation `j` is covered by cubes of generation `j + 1` lying inside it: a point
of `2⁻ʲ(m + [0,1]ⁿ)` lies in a cube of generation `j + 1` contained in that cube. -/
theorem exists_subcube (j : ℕ) (m : Fin n → ℤ) {x : Fin n → ℝ} (hx : x ∈ dyadicCube j m) :
    ∃ m' : Fin n → ℤ, x ∈ dyadicCube (j + 1) m' ∧ dyadicCube (j + 1) m' ⊆ dyadicCube j m := by
  classical
  have hw := dyadicSide_pos j
  have hw' : dyadicSide (j + 1) = dyadicSide j / 2 := dyadicSide_succ j
  let m' : Fin n → ℤ := fun i => if x i ≤ (2 * (m i : ℝ) + 1) * (dyadicSide j / 2) then 2 * m i
    else 2 * m i + 1
  refine ⟨m', fun i _ => ?_, fun y hy i _ => ?_⟩
  · obtain ⟨hx1, hx2⟩ := hx i (mem_univ i)
    simp only [dyadicCorner, hw'] at hx1 hx2 ⊢
    by_cases hc : x i ≤ (2 * (m i : ℝ) + 1) * (dyadicSide j / 2)
    · have : m' i = 2 * m i := by simp [m', hc]
      rw [this]
      push_cast
      constructor <;> nlinarith
    · have : m' i = 2 * m i + 1 := by simp [m', hc]
      rw [this]
      push_cast
      constructor <;> nlinarith [not_le.1 hc]
  · obtain ⟨hy1, hy2⟩ := hy i (mem_univ i)
    simp only [dyadicCorner, hw'] at hy1 hy2 ⊢
    by_cases hc : x i ≤ (2 * (m i : ℝ) + 1) * (dyadicSide j / 2)
    · have : m' i = 2 * m i := by simp [m', hc]
      rw [this] at hy1 hy2
      push_cast at hy1 hy2
      constructor <;> nlinarith
    · have : m' i = 2 * m i + 1 := by simp [m', hc]
      rw [this] at hy1 hy2
      push_cast at hy1 hy2
      constructor <;> nlinarith

/-- Blueprint `step:p4:dy-exhaust`: `E_j ⊆ E_{j+1}`. -/
theorem dyadicUnion_mono_succ (B : Set (Fin n → ℝ)) (j : ℕ) :
    dyadicUnion B j ⊆ dyadicUnion B (j + 1) := by
  intro x hx
  simp only [dyadicUnion, mem_iUnion] at hx ⊢
  obtain ⟨m, hm, hxm⟩ := hx
  obtain ⟨m', hxm', hsub⟩ := exists_subcube j m hxm
  exact ⟨m', hsub.trans hm, hxm'⟩

theorem dyadicUnion_mono (B : Set (Fin n → ℝ)) : Monotone (dyadicUnion B) :=
  monotone_nat_of_le_succ (dyadicUnion_mono_succ B)

/-- Blueprint `step:p4:dy-exhaust`: `⋃ⱼ E_j = B` for open `B`. -/
theorem iUnion_dyadicUnion {B : Set (Fin n → ℝ)} (hB : IsOpen B) :
    ⋃ j, dyadicUnion B j = B := by
  refine Subset.antisymm (iUnion_subset fun j => dyadicUnion_subset B j) fun x hx => ?_
  obtain ⟨r, hr, hball⟩ := Metric.isOpen_iff.1 hB x hx
  obtain ⟨j, hj⟩ := exists_pow_lt_of_lt_one hr (by norm_num : (1 / 2 : ℝ) < 1)
  have hw := dyadicSide_pos j
  have hjr : dyadicSide j < r := hj
  let m : Fin n → ℤ := fun i => ⌊x i / dyadicSide j⌋
  have hxm : ∀ i, (m i : ℝ) * dyadicSide j ≤ x i ∧
      x i < (m i : ℝ) * dyadicSide j + dyadicSide j := by
    intro i
    have h1 := Int.floor_le (x i / dyadicSide j)
    have h2 := Int.lt_floor_add_one (x i / dyadicSide j)
    rw [le_div_iff₀ hw] at h1
    rw [div_lt_iff₀ hw] at h2
    exact ⟨h1, by linarith⟩
  have hsub : dyadicCube j m ⊆ B := by
    intro y hy
    apply hball
    rw [mem_ball, dist_pi_lt_iff hr]
    intro i
    obtain ⟨hy1, hy2⟩ := hy i (mem_univ i)
    obtain ⟨hx1, hx2⟩ := hxm i
    simp only [dyadicCorner] at hy1 hy2
    rw [Real.dist_eq, abs_lt]
    constructor <;> linarith
  exact mem_iUnion.2 ⟨j, mem_iUnion₂.2 ⟨m, hsub, fun i _ => by
    obtain ⟨hx1, hx2⟩ := hxm i
    exact ⟨hx1, hx2.le⟩⟩⟩

/-- Blueprint `step:p4:dy-exhaust`, measure from below: since `E_j ↑ B` and `meas B < ∞`,
`meas (B \ E_j) ≤ η` for some `j`. -/
theorem exists_dyadicUnion_diff_le {B : Set (Fin n → ℝ)} (hB_open : IsOpen B)
    (hB : Bornology.IsBounded B) {η : ℝ} (hη : 0 < η) :
    ∃ j, volume (B \ dyadicUnion B j) ≤ ENNReal.ofReal η := by
  have hmono := dyadicUnion_mono B
  let s : ℕ → Set (Fin n → ℝ) := fun j => B \ dyadicUnion B j
  have hs : ∀ j, NullMeasurableSet (s j) volume := fun j =>
    (hB_open.measurableSet.diff (isClosed_dyadicUnion hB j).measurableSet).nullMeasurableSet
  have hanti : Antitone s := fun i j hij x hx => ⟨hx.1, fun h => hx.2 (hmono hij h)⟩
  have hfin : ∃ j, volume (s j) ≠ ∞ :=
    ⟨0, ((measure_mono sdiff_subset).trans_lt hB.measure_lt_top).ne⟩
  have htend := tendsto_measure_iInter_atTop hs hanti hfin
  have hinter : ⋂ j, s j = ∅ := by
    simp only [s]
    rw [← sdiff_iUnion, iUnion_dyadicUnion hB_open, sdiff_self]
  rw [hinter, measure_empty] at htend
  obtain ⟨j, hj⟩ := (htend.eventually (gt_mem_nhds (ENNReal.ofReal_pos.2 hη))).exists
  exact ⟨j, hj.le⟩

/-! ### Step `step:p4:dy-open` -/

/-- Blueprint `step:p4:dy-open`: `B'` is open. -/
theorem isOpen_dyadicInterior (B : Set (Fin n → ℝ)) (j : ℕ) : IsOpen (dyadicInterior B j) :=
  isOpen_biUnion fun _ _ => isOpen_openBox _ _

/-- Blueprint `step:p4:dy-open`: `B' ⊆ B`. -/
theorem dyadicInterior_subset (B : Set (Fin n → ℝ)) (j : ℕ) : dyadicInterior B j ⊆ B :=
  iUnion₂_subset fun _ hm => (openBox_subset_closedBox _ _).trans hm

/-- Blueprint `step:p4:dy-open`: `E_j \ B'` lies in the union of the boundaries of the cubes, a
null set, so `meas (B \ B') ≤ meas (B \ E_j)`. -/
theorem volume_diff_dyadicInterior_le {B : Set (Fin n → ℝ)} (hB : Bornology.IsBounded B) (j : ℕ) :
    volume (B \ dyadicInterior B j) ≤ volume (B \ dyadicUnion B j) := by
  have hnull : volume (⋃ m ∈ dyadicFamily B j,
      (dyadicCube j m \ openBox (dyadicCorner j m) (dyadicSide j))) = 0 :=
    (measure_biUnion_null_iff (dyadicFamily_finite hB j).countable).2 fun m _ =>
      volume_closedBox_diff_openBox _ _
  have hsub : B \ dyadicInterior B j ⊆ (B \ dyadicUnion B j) ∪
      ⋃ m ∈ dyadicFamily B j, (dyadicCube j m \ openBox (dyadicCorner j m) (dyadicSide j)) := by
    intro x ⟨hxB, hxI⟩
    by_cases hxE : x ∈ dyadicUnion B j
    · right
      obtain ⟨m, hm, hxm⟩ := mem_iUnion₂.1 hxE
      exact mem_iUnion₂.2 ⟨m, hm, hxm, fun hxo => hxI (mem_iUnion₂.2 ⟨m, hm, hxo⟩)⟩
    · exact Or.inl ⟨hxB, hxE⟩
  calc volume (B \ dyadicInterior B j) ≤ _ := measure_mono hsub
    _ ≤ volume (B \ dyadicUnion B j) + 0 := (measure_union_le _ _).trans (by rw [hnull])
    _ = volume (B \ dyadicUnion B j) := add_zero _

/-! ### Step `step:p4:dy-layer` -/

/-- Blueprint `step:p4:dy-layer`: the boundary layer of `B'` has measure at most `C t` with
`C = 2 n N ℓⁿ⁻¹`, where `N = #𝒟_j` and `ℓ = 2⁻ʲ`. -/
theorem volume_layer_dyadicInterior_le (hn : 0 < n) {B : Set (Fin n → ℝ)}
    (hB : Bornology.IsBounded B) (j : ℕ) {t : ℝ} (ht : 0 < t) :
    volume {I | I ∈ dyadicInterior B j ∧ infDist I (dyadicInterior B j)ᶜ < t} ≤
      ENNReal.ofReal (2 * n * (dyadicFamily_finite hB j).toFinset.card *
        dyadicSide j ^ (n - 1) * t) := by
  have hne : (dyadicInterior B j)ᶜ.Nonempty := by
    by_contra hcon
    rw [not_nonempty_iff_eq_empty, compl_empty_iff] at hcon
    have : Nonempty (Fin n) := ⟨⟨0, hn⟩⟩
    exact NormedSpace.unbounded_univ ℝ (Fin n → ℝ)
      (hcon ▸ hB.subset (dyadicInterior_subset B j))
  have heq : dyadicInterior B j = ⋃ m ∈ (dyadicFamily_finite hB j).toFinset,
      openBox (dyadicCorner j m) (dyadicSide j) := by
    ext x
    simp [dyadicInterior]
  rw [heq] at hne ⊢
  exact volume_layer_le _ (fun m => dyadicCorner j m) (dyadicSide_pos j) ht hne

/-- Blueprint `bp:p4:dyadic-approx`. Let `B ⊆ ℝⁿ` be open and bounded (`n ≥ 1`) and `η > 0`. Then
there is an open `B' ⊆ B` with `meas (B \ B') ≤ η` and a constant `C` with
`meas {I ∈ B' : infDist(I, B'ᶜ) < t} ≤ C t` for all `t > 0`.

The hypothesis `0 < n` is Part 0's standing convention (`n ≥ 2`); for `n = 0` the statement is false
with Lean's `infDist x ∅ = 0`. -/
theorem dyadic_approx (hn : 0 < n) {B : Set (Fin n → ℝ)} (hB_open : IsOpen B)
    (hB_bdd : Bornology.IsBounded B) {η : ℝ} (hη : 0 < η) :
    ∃ B' : Set (Fin n → ℝ), IsOpen B' ∧ B' ⊆ B ∧ volume (B \ B') ≤ ENNReal.ofReal η ∧
      ∃ C : ℝ, ∀ t : ℝ, 0 < t →
        volume {I ∈ B' | Metric.infDist I B'ᶜ < t} ≤ ENNReal.ofReal (C * t) := by
  obtain ⟨j, hj⟩ := exists_dyadicUnion_diff_le hB_open hB_bdd hη
  refine ⟨dyadicInterior B j, isOpen_dyadicInterior B j, dyadicInterior_subset B j,
    (volume_diff_dyadicInterior_le hB_bdd j).trans hj,
    2 * n * (dyadicFamily_finite hB_bdd j).toFinset.card * dyadicSide j ^ (n - 1), fun t ht => ?_⟩
  exact volume_layer_dyadicInterior_le hn hB_bdd j ht

end KAM.Head

end
