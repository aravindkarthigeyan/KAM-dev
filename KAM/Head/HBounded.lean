/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.ActionNbhd
public import Mathlib.Topology.MetricSpace.HausdorffDistance
public import Mathlib.Analysis.Calculus.FDeriv.Basic
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.MetricSpace.Thickening
import Mathlib.Analysis.Normed.Module.FiniteDimension

/-!
# `h` is bounded on a shrunken neighbourhood

Blueprint Part 4, `bp:p4:h-bounded`: for a bounded set `B ⊆ ℝⁿ` and `h` holomorphic on the complex
neighbourhood `B_{r₀}` (`KAM.actionNbhd B r₀`), the quantity `M_h = sup {|h(I)| : I ∈ B_{3r₀/4}}`
is finite.

* `KAM.Head.hbddCompact` is the set `Q = {I ∈ ℂⁿ : infDist(I, ιB) ≤ 3r₀/4}` of
  `step:p4:hbdd-compact`; `KAM.Head.isCompact_hbddCompact` and
  `KAM.Head.actionNbhd_subset_hbddCompact`, `KAM.Head.hbddCompact_subset_actionNbhd` prove that it
  is compact and sits between `B_{3r₀/4}` and `B_{r₀}` (for `B` nonempty, the standing assumption
  of the blueprint's data; if `B` is empty both neighbourhoods are empty).
* `KAM.Head.bddAbove_norm_image_of_isCompact` is `step:p4:hbdd-continuity`: a function continuous
  on a compact set has a bounded norm on every subset.
* `KAM.Head.h_bounded` is `bp:p4:h-bounded`: the set of values `‖h I‖`, `I ∈ B_{3r₀/4}`, is bounded
  above. `KAM.Head.hBound` is `M_h`, the supremum, with `KAM.Head.norm_le_hBound`,
  `KAM.Head.hBound_nonneg` and `KAM.Head.isLUB_hBound`.
-/

@[expose] public noncomputable section

namespace KAM.Head

open Metric

variable {n : ℕ}

/-- The compact set `Q = {I ∈ ℂⁿ : infDist(I, ιB) ≤ 3r₀/4}` of `step:p4:hbdd-compact`, with
`ιB = {ι J : J ∈ B}` the real inclusion of `B`. -/
def hbddCompact (B : Set (Fin n → ℝ)) (r₀ : ℝ) : Set (Fin n → ℂ) :=
  {I | infDist I ((fun (J : Fin n → ℝ) i => (J i : ℂ)) '' B) ≤ 3 * r₀ / 4}

/-- The real inclusion `ℝⁿ → ℂⁿ` is an isometry for the max norms. -/
theorem isometry_ofReal_pi :
    Isometry (fun (J : Fin n → ℝ) (i : Fin n) => (J i : ℂ)) := by
  refine Isometry.of_dist_eq fun J J' => ?_
  rw [dist_pi_def, dist_pi_def]
  norm_cast
  exact congrArg _ (funext fun i => Complex.isometry_ofReal.nndist_eq _ _)

/-- Blueprint `step:p4:hbdd-compact`: `Q` is closed. -/
theorem isClosed_hbddCompact (B : Set (Fin n → ℝ)) (r₀ : ℝ) : IsClosed (hbddCompact B r₀) :=
  isClosed_le (continuous_infDist_pt _) continuous_const

/-- Blueprint `step:p4:hbdd-compact`: `Q` is bounded when `B` is bounded and nonempty and
`r₀ > 0`. -/
theorem isBounded_hbddCompact {B : Set (Fin n → ℝ)} (hB : Bornology.IsBounded B)
    (hne : B.Nonempty) {r₀ : ℝ} (hr₀ : 0 < r₀) : Bornology.IsBounded (hbddCompact B r₀) := by
  have hbdd : Bornology.IsBounded ((fun (J : Fin n → ℝ) i => (J i : ℂ)) '' B) :=
    isometry_ofReal_pi.lipschitzWith.isBounded_image hB
  refine (hbdd.thickening (δ := r₀)).subset fun I hI => ?_
  rw [mem_thickening_iff]
  have hne' : ((fun (J : Fin n → ℝ) i => (J i : ℂ)) '' B).Nonempty := hne.image _
  have h34 : 3 * r₀ / 4 < r₀ := by linarith
  obtain ⟨y, hy, hdist⟩ := (infDist_lt_iff hne').1 (lt_of_le_of_lt hI h34)
  exact ⟨y, hy, hdist⟩

/-- Blueprint `step:p4:hbdd-compact`, first claim: `Q` is compact. -/
theorem isCompact_hbddCompact {B : Set (Fin n → ℝ)} (hB : Bornology.IsBounded B)
    (hne : B.Nonempty) {r₀ : ℝ} (hr₀ : 0 < r₀) : IsCompact (hbddCompact B r₀) :=
  Metric.isCompact_of_isClosed_isBounded (isClosed_hbddCompact B r₀)
    (isBounded_hbddCompact hB hne hr₀)

/-- Blueprint `step:p4:hbdd-compact`, second claim, left inclusion: `B_{3r₀/4} ⊆ Q`. -/
theorem actionNbhd_subset_hbddCompact (B : Set (Fin n → ℝ)) (r₀ : ℝ) :
    actionNbhd B (3 * r₀ / 4) ⊆ hbddCompact B r₀ := by
  rintro I ⟨J, hJ, hlt⟩
  refine (infDist_le_dist_of_mem (Set.mem_image_of_mem _ hJ)).trans ?_
  rw [dist_eq_norm]
  exact hlt.le

/-- Blueprint `step:p4:hbdd-compact`, second claim, right inclusion: `Q ⊆ B_{r₀}` for `B` nonempty
and `r₀ > 0`. A point of `Q` has some `J ∈ B` with `|I - ιJ| < r₀`, since `3r₀/4 < r₀`. -/
theorem hbddCompact_subset_actionNbhd {B : Set (Fin n → ℝ)} (hne : B.Nonempty) {r₀ : ℝ}
    (hr₀ : 0 < r₀) : hbddCompact B r₀ ⊆ actionNbhd B r₀ := by
  intro I hI
  have hne' : ((fun (J : Fin n → ℝ) i => (J i : ℂ)) '' B).Nonempty := hne.image _
  have h34 : 3 * r₀ / 4 < r₀ := by linarith
  obtain ⟨y, ⟨J, hJ, rfl⟩, hdist⟩ := (infDist_lt_iff hne').1 (lt_of_le_of_lt hI h34)
  exact ⟨J, hJ, by rwa [dist_eq_norm] at hdist⟩

/-- Blueprint `step:p4:hbdd-continuity`. A function continuous on a compact set has bounded norm
on every subset of it. -/
theorem bddAbove_norm_image_of_isCompact {Q S : Set (Fin n → ℂ)} (hQ : IsCompact Q)
    {h : (Fin n → ℂ) → ℂ} (hh : ContinuousOn h Q) (hS : S ⊆ Q) :
    BddAbove ((fun I => ‖h I‖) '' S) :=
  ((hQ.bddAbove_image hh.norm)).mono (Set.image_mono hS)

/-- Blueprint `bp:p4:h-bounded`. For `B` bounded, `r₀ > 0` and `h` holomorphic on
`B_{r₀} = actionNbhd B r₀`, the values `|h(I)|`, `I ∈ B_{3r₀/4}`, are bounded above, that is,
`M_h = sup {|h(I)| : I ∈ B_{3r₀/4}}` (`KAM.Head.hBound`) is finite. -/
theorem h_bounded {B : Set (Fin n → ℝ)} (hB : Bornology.IsBounded B) {r₀ : ℝ} (hr₀ : 0 < r₀)
    {h : (Fin n → ℂ) → ℂ} (hh : DifferentiableOn ℂ h (actionNbhd B r₀)) :
    BddAbove ((fun I => ‖h I‖) '' actionNbhd B (3 * r₀ / 4)) := by
  rcases B.eq_empty_or_nonempty with rfl | hne
  · have : actionNbhd (∅ : Set (Fin n → ℝ)) (3 * r₀ / 4) = ∅ := by
      ext I; simp [actionNbhd]
    simp [this]
  · exact bddAbove_norm_image_of_isCompact (isCompact_hbddCompact hB hne hr₀)
      (hh.continuousOn.mono (hbddCompact_subset_actionNbhd hne hr₀))
      (actionNbhd_subset_hbddCompact B r₀)

/-- `M_h = sup {|h(I)| : I ∈ B_{3r₀/4}}` of `bp:p4:h-bounded` (`sSup` of the set of values; it is
`0` if that set is empty, which happens only for `B = ∅`). -/
def hBound (h : (Fin n → ℂ) → ℂ) (B : Set (Fin n → ℝ)) (r₀ : ℝ) : ℝ :=
  sSup ((fun I => ‖h I‖) '' actionNbhd B (3 * r₀ / 4))

/-- `M_h` is nonnegative. -/
theorem hBound_nonneg (h : (Fin n → ℂ) → ℂ) (B : Set (Fin n → ℝ)) (r₀ : ℝ) :
    0 ≤ hBound h B r₀ :=
  Real.sSup_nonneg (by rintro _ ⟨I, -, rfl⟩; exact norm_nonneg _)

/-- `|h(I)| ≤ M_h` on `B_{3r₀/4}`: the pointwise form of `bp:p4:h-bounded`. -/
theorem norm_le_hBound {B : Set (Fin n → ℝ)} (hB : Bornology.IsBounded B) {r₀ : ℝ}
    (hr₀ : 0 < r₀) {h : (Fin n → ℂ) → ℂ} (hh : DifferentiableOn ℂ h (actionNbhd B r₀))
    {I : Fin n → ℂ} (hI : I ∈ actionNbhd B (3 * r₀ / 4)) : ‖h I‖ ≤ hBound h B r₀ :=
  le_csSup (h_bounded hB hr₀ hh) (Set.mem_image_of_mem _ hI)

/-- For nonempty `B`, `M_h` is the least upper bound of the values `|h(I)|`, `I ∈ B_{3r₀/4}`. -/
theorem isLUB_hBound {B : Set (Fin n → ℝ)} (hB : Bornology.IsBounded B) {r₀ : ℝ} (hr₀ : 0 < r₀)
    {h : (Fin n → ℂ) → ℂ} (hh : DifferentiableOn ℂ h (actionNbhd B r₀)) (hne : B.Nonempty) :
    IsLUB ((fun I => ‖h I‖) '' actionNbhd B (3 * r₀ / 4)) (hBound h B r₀) := by
  refine isLUB_csSup ?_ (h_bounded hB hr₀ hh)
  obtain ⟨J, hJ⟩ := hne
  exact ⟨_, ⟨fun i => (J i : ℂ), ⟨J, hJ, by simp [hr₀]⟩, rfl⟩⟩

end KAM.Head

end
