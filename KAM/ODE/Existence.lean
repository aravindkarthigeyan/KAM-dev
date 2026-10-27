/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.ODE.Lipschitz
public import Mathlib.Analysis.ODE.ExistUnique
public import Mathlib.Topology.Order.IntermediateValue

/-!
# Local existence of solutions of an autonomous ODE

Blueprint N Part 3 (`bpN:p3:ext-pl`, `gen-short`, `gen-uniform-exist`, `gen-local`).

* `KAM.ODE.picard_lindelof_ball`: Picard-Lindelöf on a ball, for an arbitrary initial time.
* `KAM.ODE.gen_short_forward`, `gen_short`: a priori short-time confinement.
* `KAM.ODE.gen_uniform_exist`: uniform existence time `δ / max M 1`.
* `KAM.ODE.gen_local`: local existence, uniform on compact sets.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

namespace KAM.ODE

section Existence

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- `bpN:p3:ext-pl` with the quantifiers repaired (blueprint issue B1): the bound `M` holds only on
the ball, and the initial time `t₀` is a universally quantified real. Helper, from Mathlib
`IsPicardLindelof` with `r = 0`; not a graph node. -/
theorem picard_lindelof_ball [CompleteSpace E] {F : E → E} {x : E} {a M T t₀ : ℝ} {L : ℝ≥0}
    (ha : 0 ≤ a) (hM : 0 ≤ M) (hT : 0 ≤ T) (hF : ∀ y ∈ closedBall x a, ‖F y‖ ≤ M)
    (hL : LipschitzOnWith L F (closedBall x a)) (hMT : M * T ≤ a) :
    ∃ α : ℝ → E, α t₀ = x ∧
      ∀ t ∈ Icc (t₀ - T) (t₀ + T), HasDerivWithinAt α (F (α t)) (Icc (t₀ - T) (t₀ + T)) t := by
  have ht₀ : t₀ ∈ Icc (t₀ - T) (t₀ + T) := ⟨by linarith, by linarith⟩
  have hpl : IsPicardLindelof (fun _ : ℝ => F) (⟨t₀, ht₀⟩ : Icc (t₀ - T) (t₀ + T)) x
      a.toNNReal 0 M.toNNReal L := by
    refine ⟨fun _ _ => ?_, fun y _ => continuousOn_const, fun _ _ y hy => ?_, ?_⟩
    · simpa [Real.coe_toNNReal _ ha] using hL
    · have hy' : y ∈ closedBall x a := by simpa [Real.coe_toNNReal _ ha] using hy
      simpa [Real.coe_toNNReal _ hM] using hF y hy'
    · have : max (t₀ + T - t₀) (t₀ - (t₀ - T)) = T := by
        simp [max_self]
      simp only [NNReal.coe_zero, sub_zero, Real.coe_toNNReal _ ha, Real.coe_toNNReal _ hM]
      simp only [this]
      exact hMT
  simpa using hpl.exists_eq_forall_mem_Icc_hasDerivWithinAt₀

/-- Forward half of `gen_short` (helper, not a graph node), for arbitrary `F`: the right-hand
bootstrap `stepN:p3:short-boot/short-ext`. `gen_short` follows on the left by applying this to
`s ↦ α (-s)` and the field `-F` (raw derivatives, no `gen_symmetry` needed; blueprint issue B2). -/
theorem gen_short_forward {F : E → E} {J : Set ℝ} (hJ : J.OrdConnected) {t₀ : ℝ} (ht₀ : t₀ ∈ J)
    {α : ℝ → E} {x : E} {δ M : ℝ} (hα₀ : α t₀ = x)
    (hα : ∀ t ∈ J, HasDerivAt α (F (α t)) t) (hM : 0 < M)
    (hF : ∀ y ∈ closedBall x δ, ‖F y‖ ≤ M) :
    ∀ t ∈ J, t₀ ≤ t → t - t₀ < δ / M → ‖α t - x‖ ≤ M * (t - t₀) := by
  intro t ht htt₀ hlt
  have hsub : Icc t₀ t ⊆ J := hJ.out ht₀ ht
  have hcont : ContinuousOn α (Icc t₀ t) := fun u hu =>
    (hα u (hsub hu)).continuousAt.continuousWithinAt
  set S : Set ℝ := {u | ‖α u - x‖ ≤ M * (u - t₀)} with hS
  have hclosed : IsClosed (S ∩ Icc t₀ t) := by
    have h1 : ContinuousOn (fun u => ‖α u - x‖ - M * (u - t₀)) (Icc t₀ t) := by
      apply ContinuousOn.sub
      · exact (hcont.sub continuousOn_const).norm
      · exact (continuousOn_const.mul (continuousOn_id.sub continuousOn_const))
    have h2 := h1.preimage_isClosed_of_isClosed isClosed_Icc (isClosed_Iic (a := (0 : ℝ)))
    have : S ∩ Icc t₀ t = Icc t₀ t ∩ (fun u => ‖α u - x‖ - M * (u - t₀)) ⁻¹' Iic 0 := by
      ext u
      simp only [hS, mem_inter_iff, Set.mem_ofPred_eq, mem_preimage, mem_Iic, sub_nonpos]
      tauto
    rw [this]; exact h2
  have ht0S : t₀ ∈ S := by simp [hS, hα₀]
  have key : Icc t₀ t ⊆ S := by
    refine hclosed.Icc_subset_of_forall_exists_gt ht0S ?_
    rintro u ⟨huS, hu0, hut⟩ y hy
    have hu : ‖α u - x‖ < δ := by
      have : u - t₀ < δ / M := lt_of_lt_of_le (by linarith) hlt.le
      have h3 : M * (u - t₀) < δ := by
        rwa [lt_div_iff₀' hM] at this
      exact lt_of_le_of_lt huS h3
    have hcu : ContinuousAt (fun v => ‖α v - x‖) u :=
      ((hα u (hsub ⟨hu0, hut.le⟩)).continuousAt.sub continuousAt_const).norm
    obtain ⟨ε, hε, hball⟩ := Metric.eventually_nhds_iff.mp
      (hcu.eventually (eventually_lt_nhds hu))
    set v := min y (min t (u + ε / 2)) with hv
    have hvy : v ≤ y := min_le_left _ _
    have hvt : v ≤ t := (min_le_right _ _).trans (min_le_left _ _)
    have hvε : v ≤ u + ε / 2 := (min_le_right _ _).trans (min_le_right _ _)
    have huv : u < v := lt_min hy (lt_min hut (by linarith))
    have hsubuv : Icc u v ⊆ J := fun w hw => hsub ⟨hu0.trans hw.1, hw.2.trans hvt⟩
    have hmv := Convex.norm_image_sub_le_of_norm_hasDerivWithin_le (s := Icc u v) (f := α)
      (f' := fun w => F (α w)) (C := M)
      (fun w hw => (hα w (hsubuv hw)).hasDerivWithinAt)
      (fun w hw => hF _ (by
        have : dist w u < ε := by
          rw [Real.dist_eq, abs_lt]; constructor <;> linarith [hw.1, hw.2]
        have := hball this
        simp only [mem_closedBall_iff_norm]
        exact le_of_lt this))
      (convex_Icc u v) ⟨le_rfl, huv.le⟩ ⟨huv.le, le_rfl⟩
    refine ⟨v, ?_, huv, hvy⟩
    have : ‖α v - x‖ ≤ ‖α v - α u‖ + ‖α u - x‖ := by
      simpa using norm_add_le (α v - α u) (α u - x)
    rw [Real.norm_of_nonneg (by linarith)] at hmv
    have huS' : ‖α u - x‖ ≤ M * (u - t₀) := huS
    show ‖α v - x‖ ≤ M * (v - t₀)
    nlinarith
  exact key ⟨htt₀, le_rfl⟩

/-- `bpN:p3:gen-short`: a priori short-time confinement. The hypothesis is the raw derivative
condition (no `W`, no regularity of `F`). -/
theorem gen_short {F : E → E} {J : Set ℝ} (hJ : J.OrdConnected) {t₀ : ℝ} (ht₀ : t₀ ∈ J)
    {α : ℝ → E} {x : E} {δ M : ℝ} (hα₀ : α t₀ = x)
    (hα : ∀ t ∈ J, HasDerivAt α (F (α t)) t) (hM : 0 < M)
    (hF : ∀ y ∈ closedBall x δ, ‖F y‖ ≤ M) :
    ∀ t ∈ J, |t - t₀| < δ / M → ‖α t - x‖ ≤ M * |t - t₀| ∧ α t ∈ closedBall x δ := by
  have hconf : ∀ t, |t - t₀| < δ / M → ‖α t - x‖ ≤ M * |t - t₀| →
      α t ∈ closedBall x δ := by
    intro t h1 h2
    have : M * |t - t₀| < δ := by rwa [lt_div_iff₀' hM] at h1
    rw [mem_closedBall_iff_norm]; linarith
  intro t ht hlt
  have hbound : ‖α t - x‖ ≤ M * |t - t₀| := by
    rcases le_total t₀ t with h | h
    · rw [abs_of_nonneg (by linarith)]
      exact gen_short_forward hJ ht₀ hα₀ hα hM hF t ht h
        (by rwa [abs_of_nonneg (by linarith)] at hlt)
    · have hJ' : (Neg.neg ⁻¹' J).OrdConnected := hJ.preimage_anti (fun a b h => neg_le_neg h)
      have hβ := isSolutionIn_univ_iff.1 (gen_symmetry_neg (isSolutionIn_univ_iff.2 hα))
      have hneg := gen_short_forward (F := fun x => -F x) hJ' (t₀ := -t₀)
        (by simpa using ht₀) (α := fun s => α (-s)) (x := x) (δ := δ) (M := M)
        (by simpa using hα₀) hβ hM (fun y hy => by simpa using hF y hy) (-t)
        (by simpa using ht) (by linarith)
        (by rw [abs_of_nonpos (by linarith)] at hlt; linarith)
      rw [abs_of_nonpos (by linarith)]
      simpa [neg_sub_neg, sub_neg_eq_add, neg_add_eq_sub] using hneg
  exact ⟨hbound, hconf t hlt hbound⟩

/-- `bpN:p3:gen-uniform-exist`: uniform existence time `δ / max M 1`. The blueprint's `C¹`/open
hypotheses are not used and are omitted. -/
theorem gen_uniform_exist [CompleteSpace E] {F : E → E} {W Φ : Set E} {δ M : ℝ} {L : ℝ≥0}
    (hΦ : UniformData F W Φ δ M L) :
    ∀ x ∈ Φ, ∀ t₀ : ℝ, ∃ α : ℝ → E, α t₀ = x ∧
      (∀ t ∈ Ioo (t₀ - δ / max M 1) (t₀ + δ / max M 1), ‖α t - x‖ < δ) ∧
      IsSolutionIn F W (Ioo (t₀ - δ / max M 1) (t₀ + δ / max M 1)) α := by
  intro x hx t₀
  have hM' : 0 < max M 1 := lt_of_lt_of_le one_pos (le_max_right _ _)
  have hT : 0 ≤ δ / max M 1 := (div_pos hΦ.delta_pos hM').le
  have hbd : ∀ y ∈ closedBall x δ, ‖F y‖ ≤ max M 1 := fun y hy =>
    (hΦ.norm_le x hx y hy).trans (le_max_left _ _)
  obtain ⟨α, hα₀, hα⟩ := picard_lindelof_ball (F := F) (x := x) (a := δ) (M := max M 1)
    (T := δ / max M 1) (t₀ := t₀) hΦ.delta_pos.le hM'.le hT hbd (hΦ.lipschitz x hx)
    (by rw [mul_div_cancel₀ _ hM'.ne'])
  set J := Ioo (t₀ - δ / max M 1) (t₀ + δ / max M 1) with hJ
  have hder : ∀ t ∈ J, HasDerivAt α (F (α t)) t := fun t ht =>
    (hα t (Ioo_subset_Icc_self ht)).hasDerivAt (Icc_mem_nhds ht.1 ht.2)
  have hTp : 0 < δ / max M 1 := div_pos hΦ.delta_pos hM'
  have ht₀J : t₀ ∈ J := ⟨by linarith, by linarith⟩
  have hshort := gen_short (Set.ordConnected_Ioo) ht₀J hα₀ hder hM' hbd
  have hstrict : ∀ t ∈ J, ‖α t - x‖ < δ := fun t ht => by
    have habs : |t - t₀| < δ / max M 1 := by rw [abs_lt]; constructor <;> linarith [ht.1, ht.2]
    have := (hshort t ht habs).1
    have h2 : max M 1 * |t - t₀| < δ := by rwa [lt_div_iff₀' hM'] at habs
    linarith
  refine ⟨α, hα₀, hstrict, fun t ht => ⟨?_, hder t ht⟩⟩
  have : α t ∈ closedBall x δ := by
    rw [mem_closedBall_iff_norm]; exact (hstrict t ht).le
  exact hΦ.closedBall_subset x hx this

/-- `bpN:p3:gen-local`: local existence in both time directions, uniform on compact sets. -/
theorem gen_local [ProperSpace E] {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) :
    (∀ x₀ ∈ W, ∀ t₀ : ℝ, ∃ ε > 0, ∃ α : ℝ → E, α t₀ = x₀ ∧
      IsSolutionIn F W (Ioo (t₀ - ε) (t₀ + ε)) α) ∧
    (∀ K : Set E, IsCompact K → K ⊆ W → ∃ ε > 0, ∀ x₀ ∈ K, ∀ t₀ : ℝ, ∃ α : ℝ → E, α t₀ = x₀ ∧
      IsSolutionIn F W (Ioo (t₀ - ε) (t₀ + ε)) α) := by
  have hK : ∀ K : Set E, IsCompact K → K ⊆ W → ∃ ε > 0, ∀ x₀ ∈ K, ∀ t₀ : ℝ,
      ∃ α : ℝ → E, α t₀ = x₀ ∧ IsSolutionIn F W (Ioo (t₀ - ε) (t₀ + ε)) α := by
    intro K hKc hKW
    obtain ⟨δ, M, L, hU, -, -⟩ := gen_uniform_compact hW hF hKc hKW
    have hM' : 0 < max M 1 := lt_of_lt_of_le one_pos (le_max_right _ _)
    refine ⟨δ / max M 1, div_pos hU.delta_pos hM', fun x₀ hx₀ t₀ => ?_⟩
    obtain ⟨α, h1, -, h3⟩ := gen_uniform_exist hU x₀ hx₀ t₀
    exact ⟨α, h1, h3⟩
  refine ⟨fun x₀ hx₀ t₀ => ?_, hK⟩
  obtain ⟨ε, hε, h⟩ := hK {x₀} isCompact_singleton (singleton_subset_iff.2 hx₀)
  obtain ⟨α, h1, h2⟩ := h x₀ rfl t₀
  exact ⟨ε, hε, α, h1, h2⟩

end Existence

end KAM.ODE
