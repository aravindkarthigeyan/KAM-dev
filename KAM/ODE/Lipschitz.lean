/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.ODE.Basic
public import Mathlib.Analysis.Calculus.ContDiff.RCLike
public import Mathlib.Analysis.Calculus.MeanValue
public import Mathlib.Topology.MetricSpace.Thickening

/-!
# Boundedness and Lipschitz data of a `C¹` vector field

Blueprint N Part 3 (`bpN:p3:gen-lip`, `gen-uniform`, `gen-uniform-compact`).

* `KAM.ODE.gen_lip`: a `C¹` field is bounded and Lipschitz on a compact subset of its open domain.
* `KAM.ODE.UniformData`: uniform data `(δ, M, L)` of a set `Φ`.
* `KAM.ODE.closedThickening`, `KAM.ODE.gen_uniform_compact`: uniform data of a compact set.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

namespace KAM.ODE

section Lipschitz

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- `bpN:p3:gen-lip`: bounded and Lipschitz on a compact subset of the open `W`. -/
theorem gen_lip {F : E → E} {W K : Set E} (hW : IsOpen W) (hF : ContDiffOn ℝ 1 F W)
    (hK : IsCompact K) (hKW : K ⊆ W) :
    (∃ M : ℝ, 0 ≤ M ∧ ∀ x ∈ K, ‖F x‖ ≤ M) ∧ ∃ L : ℝ≥0, LipschitzOnWith L F K := by
  have hloc : LocallyLipschitzOn W F := by
    intro x hx
    obtain ⟨L, s, hs, hL⟩ := (hF.contDiffAt (hW.mem_nhds hx)).exists_lipschitzOnWith
    exact ⟨L, s, mem_nhdsWithin_of_mem_nhds hs, hL⟩
  refine ⟨?_, ?_⟩
  · obtain ⟨C, hC⟩ := hK.exists_bound_of_continuousOn (hF.continuousOn.mono hKW)
    exact ⟨max C 0, le_max_right _ _, fun x hx => (hC x hx).trans (le_max_left _ _)⟩
  · exact (hloc.mono hKW).exists_lipschitzOnWith_of_compact hK

/-- `bpN:p3:gen-uniform`: uniform data `(δ, M, L)` of `Φ` for `(F, W)`. The blueprint's standing
"`F` is `C¹` on open `W`" is not a field: it is not used by any clause. -/
structure UniformData (F : E → E) (W Φ : Set E) (δ M : ℝ) (L : ℝ≥0) : Prop where
  delta_pos : 0 < δ
  M_nonneg : 0 ≤ M
  closedBall_subset : ∀ x ∈ Φ, closedBall x δ ⊆ W
  norm_le : ∀ x ∈ Φ, ∀ y ∈ closedBall x δ, ‖F y‖ ≤ M
  lipschitz : ∀ x ∈ Φ, LipschitzOnWith L F (closedBall x δ)

/-- The closed `δ`-thickening `K_δ = {y | ∃ x ∈ K, ‖y - x‖ ≤ δ}` of `bpN:p3:gen-uniform-compact`. -/
def closedThickening (K : Set E) (δ : ℝ) : Set E := {y | ∃ x ∈ K, ‖y - x‖ ≤ δ}

/-- `bpN:p3:gen-uniform-compact`. -/
theorem gen_uniform_compact [ProperSpace E] {F : E → E} {W K : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) (hK : IsCompact K) (hKW : K ⊆ W) :
    ∃ (δ M : ℝ) (L : ℝ≥0), UniformData F W K δ M L ∧ closedThickening K δ ⊆ W ∧
      IsCompact (closedThickening K δ) := by
  obtain ⟨δ, hδ, hsub⟩ := hK.exists_cthickening_subset_open hW hKW
  have heq : closedThickening K δ = cthickening δ K := by
    rw [hK.cthickening_eq_biUnion_closedBall hδ.le]
    ext y
    simp only [closedThickening, Set.mem_ofPred_eq, mem_iUnion, mem_closedBall_iff_norm,
      exists_prop]
  have hTW : closedThickening K δ ⊆ W := heq ▸ hsub
  have hTc : IsCompact (closedThickening K δ) := heq ▸ hK.cthickening
  obtain ⟨⟨M, hM0, hM⟩, L, hL⟩ := gen_lip hW hF hTc hTW
  have hball : ∀ x ∈ K, closedBall x δ ⊆ closedThickening K δ := fun x hx y hy =>
    ⟨x, hx, by rwa [mem_closedBall_iff_norm] at hy⟩
  refine ⟨δ, M, L, ⟨hδ, hM0, fun x hx => (hball x hx).trans hTW,
    fun x hx y hy => hM y (hball x hx hy), fun x hx => hL.mono (hball x hx)⟩, hTW, hTc⟩

end Lipschitz

end KAM.ODE
