/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Nekhoroshev.Defs.ActionBall
public import KAM.Frozen.Nekhoroshev.Defs.ComplexDomain
public import KAM.Frozen.Nekhoroshev.Defs.RealActionDomain
public import KAM.Strip.Cauchy
public import KAM.Strip.RealRestriction
public import KAM.Nekhoroshev.Interfaces.Setting

/-!
# Real and complex domains (`bpN:p1:realdomain`)

(a) `ℬ_s(R) = B(0, R + s)` and `D_s(R) ∩ (ℝⁿ × ℝⁿ) = W_s`; (b) openness of `D_s(R)` and `B(0,R)_s`;
(c) the max-norm tubes about `P = {J | |J| ≤ R/2}`; (d) monotonicity of the complex strips.
-/

@[expose] public noncomputable section

open Set Metric

namespace KAM.Nekhoroshev

variable {n : ℕ}

private theorem norm_ofReal_sub (I J : Fin n → ℝ) :
    ‖(fun i => (I i : ℂ)) - fun i => (J i : ℂ)‖ = ‖I - J‖ := by
  rw [← KAM.norm_realInclusion (I - J), map_sub]
  rfl

/-- (a) `ℬ_s(R) = B(0, R + s)` (Remark `bpN:p0:rdomain-eq`). -/
theorem realActionDomain_eq {R s : ℝ} (hR : 0 < R) (hs : 0 < s) :
    realActionDomain n R s = ball (0 : Fin n → ℝ) (R + s) := by
  ext I
  simp only [realActionDomain, KAM.actionNbhd, actionBall, mem_ofPred_eq, mem_ball,
    dist_zero_right]
  constructor
  · rintro ⟨J, hJ, hIJ⟩
    rw [norm_ofReal_sub] at hIJ
    calc ‖I‖ = ‖(I - J) + J‖ := by rw [sub_add_cancel]
      _ ≤ ‖I - J‖ + ‖J‖ := norm_add_le _ _
      _ < s + R := add_lt_add hIJ hJ
      _ = R + s := add_comm _ _
  · intro hI
    have hRs : 0 < R + s := add_pos hR hs
    refine ⟨(R / (R + s)) • I, ?_, ?_⟩
    · rw [norm_smul, Real.norm_eq_abs, abs_of_pos (div_pos hR hRs), div_mul_eq_mul_div,
        div_lt_iff₀ hRs]
      exact mul_lt_mul_of_pos_left hI hR
    · rw [norm_ofReal_sub]
      have : I - (R / (R + s)) • I = (s / (R + s)) • I := by
        have h : s / (R + s) = 1 - R / (R + s) := by
          field_simp
          ring
        rw [h, sub_smul, one_smul]
      rw [this, norm_smul, Real.norm_eq_abs, abs_of_pos (div_pos hs hRs), div_mul_eq_mul_div,
        div_lt_iff₀ hRs]
      exact mul_lt_mul_of_pos_left hI hs

theorem isOpen_realActionDomain {R s : ℝ} (hR : 0 < R) (hs : 0 < s) :
    IsOpen (realActionDomain n R s) := by
  rw [realActionDomain_eq hR hs]
  exact isOpen_ball

theorem ball_subset_realActionDomain {R s : ℝ} (hR : 0 < R) (hs : 0 < s) :
    actionBall n R ⊆ realActionDomain n R s := by
  rw [realActionDomain_eq hR hs]
  exact ball_subset_ball (by linarith)

theorem isOpen_Wdom (R s : ℝ) : IsOpen (Wdom n R s) :=
  isOpen_univ.prod isOpen_ball

/-- (a) `D_s(R) ∩ (ℝⁿ × ℝⁿ) = W_s`, as `ι⁻¹(D_s(R)) = W_s`. -/
theorem realInclusion₂_preimage_complexDomain {R s : ℝ} (hR : 0 < R) (hs : 0 < s) :
    KAM.realInclusion₂ n ⁻¹' complexDomain n R s = Wdom n R s := by
  ext z
  have hstrip : KAM.realInclusion n z.1 ∈ KAM.complexStrip n s := by
    intro i
    simpa [KAM.realInclusion_apply] using hs
  have hact : KAM.realInclusion n z.2 ∈ KAM.actionNbhd (actionBall n R) s ↔
      z.2 ∈ ball (0 : Fin n → ℝ) (R + s) := by
    rw [← realActionDomain_eq hR hs]
    exact Iff.rfl
  simp only [mem_preimage, complexDomain, mem_prod, KAM.realInclusion₂_apply, Wdom,
    mem_univ, true_and]
  exact ⟨fun h => hact.1 h.2, fun h => ⟨hstrip, hact.2 h⟩⟩

/-- (b) `D_s(R)` and `B(0,R)_s` are open, and `B(0,R)_s ∩ ℝⁿ = ℬ_s(R)`. -/
theorem isOpen_actionNbhd_ball (R s : ℝ) : IsOpen (KAM.actionNbhd (actionBall n R) s) := by
  have : KAM.actionNbhd (actionBall n R) s =
      ⋃ J ∈ actionBall n R, ball (KAM.realInclusion n J) s := by
    ext I
    simp only [KAM.actionNbhd, mem_ofPred_eq, mem_iUnion, mem_ball, dist_eq_norm, exists_prop]
    exact Iff.rfl
  rw [this]
  exact isOpen_biUnion fun J _ => isOpen_ball

theorem isOpen_complexDomain (R s : ℝ) : IsOpen (complexDomain n R s) :=
  (KAM.isOpen_complexStrip n s).prod (isOpen_actionNbhd_ball R s)

theorem realInclusion_preimage_actionNbhd (R s : ℝ) :
    KAM.realInclusion n ⁻¹' KAM.actionNbhd (actionBall n R) s = realActionDomain n R s :=
  rfl

/-- (c) max-norm tubes: `P = {J | |J| ≤ R/2}`, `0 < r₀ ≤ min(s/2, R/8)`. -/
theorem tube_subset {R s r₀ : ℝ} (hr₀ : 0 < r₀) (hrs : r₀ ≤ s / 2) (hrR : r₀ ≤ R / 8)
    {J : Fin n → ℝ} (hJ : ‖J‖ ≤ R / 2) {I : Fin n → ℂ} (hI : ‖I - KAM.realInclusion n J‖ < r₀) :
    I ∈ KAM.actionNbhd (actionBall n R) s ∧ ‖I - KAM.realInclusion n J‖ < s := by
  have hIs : ‖I - KAM.realInclusion n J‖ < s := by linarith
  refine ⟨⟨J, ?_, hIs⟩, hIs⟩
  simp only [actionBall, mem_ball, dist_zero_right]
  linarith

theorem tube_real {R r₀ : ℝ} (hrR : r₀ ≤ R / 8) {J : Fin n → ℝ} (hJ : ‖J‖ ≤ R / 2)
    {I : Fin n → ℝ} (hI : ‖KAM.realInclusion n I - KAM.realInclusion n J‖ < r₀) :
    ‖I‖ < 5 * R / 8 ∧ ‖I‖ < 3 * R / 4 := by
  rw [← map_sub, KAM.norm_realInclusion] at hI
  have hIJ : ‖I‖ ≤ ‖I - J‖ + ‖J‖ := by
    calc ‖I‖ = ‖(I - J) + J‖ := by rw [sub_add_cancel]
      _ ≤ ‖I - J‖ + ‖J‖ := norm_add_le _ _
  have hR : 0 < R := by
    have := (norm_nonneg (I - J)).trans_lt hI
    linarith
  constructor <;> linarith

/-- (d) `T_ρ ⊆ T_s` for `ρ ≤ s`; `T_s = ℂ⁰` for `n = 0` (no `n > 0` hypothesis is needed). -/
theorem complexStrip_mono {ρ s : ℝ} (h : ρ ≤ s) :
    KAM.complexStrip n ρ ⊆ KAM.complexStrip n s :=
  fun _ hθ i => (hθ i).trans_le h

theorem complexStrip_zero (ρ : ℝ) : KAM.complexStrip 0 ρ = univ :=
  eq_univ_of_forall fun _ i => i.elim0

end KAM.Nekhoroshev

end
