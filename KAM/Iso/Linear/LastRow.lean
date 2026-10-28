/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Iso.Linear.Extended
public import KAM.Apost.Identities

/-!
# Part 1: the energy row of the extended torsion

Blueprint node `bpI:p1:last-row` (`KAM.Iso.Linear.last_row`).

With `Y = DH(K) N` (`energyRow`), `E = X_H(K) - DK ω` and `ηᴸ = -Nᵀ Ω₀ E`:

* (a) `Y = ωᵀ - (ηᴸ)ᵀ`, hence `∑_b |Y_b - ω_b| ≤ n |ηᴸ|`;
* (b) if `E = 0` then `Y = ωᵀ`, and `𝖳_H`, `⟨𝖳_H⟩` have the invariant last row;
* (c) in general `⟨𝖳_H⟩ = 𝖳^inv - (0 0; ⟨ηᴸ⟩ᵀ 0)` and, if `|E| ≤ e`, `|DK| ≤ σ_K'`, `|B| ≤ σ_B'`,
  `|⟨𝖳_H⟩ - 𝖳^inv| ≤ 2 n² σ_K' σ_B' e`.

The identity (a) is the matrix computation `Y = Nᵀ Ω₀ (Lω + E) = ω + Nᵀ Ω₀ E` from
`ExtendedAux.energyRow_eq_mulVec` (module `KAM.Iso.Linear.Extended`) and the frame identity
`Nᵀ Ω₀ L = I` (`KAM.Apost.Identities.fi_NtOL`). Helper lemmas live in
`KAM.Iso.Linear.LastRowAux`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory

namespace KAM.Iso.Linear

open KAM KAM.Torus KAM.Apost

namespace LastRowAux

open ExtendedAux

variable {n : ℕ} {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ}
  {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {θ : Fin n → ℂ}

/-- Step `lr-gradient`/`lr-insert`: `Y = ω - ηᴸ` at every `θ` with `det G` a unit. -/
theorem energyRow_eq_sub_etaL (hG : IsUnit (gramMatrix K θ).det) :
    energyRow H K θ = (fun b => (ω b : ℂ)) - etaL H K ω θ := by
  have hx : sumVec n (hamiltonianVectorFieldℂ H (K θ)) =
      tangentMat K θ *ᵥ (fun l => (ω l : ℂ)) + sumVec n (invarianceError H K ω θ) := by
    rw [sumVec_invarianceError, add_sub_cancel]
  rw [energyRow_eq_mulVec, hx, Matrix.mulVec_add, Matrix.mulVec_add, Matrix.mulVec_mulVec,
    Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, ← Matrix.mul_assoc, fi_NtOL K hG,
    Matrix.one_mulVec, etaL, sub_neg_eq_add]

/-- Step `lr-insert`: `∑_b |Y_b - ω_b| ≤ n |ηᴸ|`. -/
theorem sum_norm_energyRow_sub_le (hG : IsUnit (gramMatrix K θ).det) :
    ∑ b, ‖energyRow H K θ b - (ω b : ℂ)‖ ≤ n * ‖etaL H K ω θ‖ := by
  have h : ∀ b, energyRow H K θ b - (ω b : ℂ) = -etaL H K ω θ b := fun b => by
    rw [energyRow_eq_sub_etaL (H := H) (ω := ω) hG]
    simp
  calc ∑ b, ‖energyRow H K θ b - (ω b : ℂ)‖
      = ∑ b, ‖etaL H K ω θ b‖ := Finset.sum_congr rfl fun b _ => by rw [h b, norm_neg]
    _ ≤ ∑ _b : Fin n, ‖etaL H K ω θ‖ :=
        Finset.sum_le_sum fun b _ => norm_le_pi_norm _ b
    _ = n * ‖etaL H K ω θ‖ := by simp

/-- Step `lr-average` (norm): `|ηᴸ| ≤ 2n σ_K' σ_B' e` when `|E| ≤ e`. -/
theorem norm_etaL_le_of_le {σK' σB' e : ℝ} (hL : ‖fderiv ℂ K θ‖ ≤ σK')
    (hB : ‖(gramMatrix K θ)⁻¹‖ ≤ σB') (hE : ‖invarianceError H K ω θ‖ ≤ e) :
    ‖etaL H K ω θ‖ ≤ 2 * n * σK' * σB' * e := by
  have hN := norm_normalMat_le_of_le hL hB
  have hσ : 0 ≤ σK' * σB' := (norm_nonneg _).trans hN
  have hNt : ‖(normalMat K θ)ᵀ‖ ≤ 2 * n * (σK' * σB') :=
    (FrameAux.norm_transpose_le_two_mul _).trans
      (mul_le_mul_of_nonneg_left hN (by positivity))
  unfold etaL
  rw [norm_neg]
  refine (Matrix.linfty_opNorm_mulVec _ _).trans ?_
  rw [norm_mul_omegaZeroMatrix, norm_sumVec]
  calc ‖(normalMat K θ)ᵀ‖ * ‖invarianceError H K ω θ‖
      ≤ 2 * n * (σK' * σB') * e := mul_le_mul hNt hE (norm_nonneg _) (by positivity)
    _ = 2 * n * σK' * σB' * e := by ring

end LastRowAux

open ExtendedAux LastRowAux

section Torus

variable {n : ℕ} {τ M σK σB σT γ : ℝ} {D : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ}

/-- `bpI:p1:last-row`. (a) `Y = ωᵀ - (ηᴸ)ᵀ`, `|Y - ωᵀ| ≤ n|ηᴸ|`; (b) the invariant case;
(c) `⟨𝖳_H⟩ = 𝖳^inv - (0 0; ⟨ηᴸ⟩ᵀ 0)` and `|⟨𝖳_H⟩ - 𝖳^inv| ≤ 2n²σ'_Kσ'_B e`. -/
theorem last_row (hS : Setting n τ M σK σB σT D H ω γ) {r : ℝ} (hr : 0 < r)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hKD : ∀ θ ∈ complexStrip n r, K θ ∈ D)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) :
    (∀ θ ∈ complexStrip n r, energyRow H K θ = (fun b => (ω b : ℂ)) - etaL H K ω θ ∧
      ∑ b, ‖energyRow H K θ b - (ω b : ℂ)‖ ≤ n * ‖etaL H K ω θ‖) ∧
    ((∀ θ ∈ complexStrip n r, invarianceError H K ω θ = 0) →
      (∀ θ ∈ complexStrip n r, KAM.Iso.extendedTorsion H K ω θ =
        bordMat (torsion H K ω θ) (fun a => (ω a : ℂ)) (fun a => (ω a : ℂ))) ∧
      KAM.Iso.extendedTorsionAverage H K ω =
        bordMat (torsionAverage H K ω) (fun a => (ω a : ℂ)) (fun a => (ω a : ℂ))) ∧
    KAM.Iso.extendedTorsionAverage H K ω = bordMat (torsionAverage H K ω)
      (fun a => (ω a : ℂ)) ((fun a => (ω a : ℂ)) - avg (etaL H K ω)) ∧
    ∀ e σK' σB' : ℝ, (∀ θ ∈ complexStrip n r, ‖invarianceError H K ω θ‖ ≤ e ∧
        ‖fderiv ℂ K θ‖ ≤ σK' ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB') →
      ‖KAM.Iso.extendedTorsionAverage H K ω -
          bordMat (torsionAverage H K ω) (fun a => (ω a : ℂ)) (fun a => (ω a : ℂ))‖ ≤
        2 * n ^ 2 * σK' * σB' * e := by
  have hrow : ∀ θ ∈ complexStrip n r, energyRow H K θ = (fun b => (ω b : ℂ)) - etaL H K ω θ :=
    fun θ hθ => energyRow_eq_sub_etaL (hG θ hθ)
  have hYc : Continuous (fun x : Fin n → ℝ => energyRow H K (fun i => (x i : ℂ))) :=
    continuous_real_restrict hr (extended_regular hS.toStanding hr hK hKD hG ω).1
  have hηc : Continuous (fun x : Fin n → ℝ => etaL H K ω (fun i => (x i : ℂ))) := by
    have h : (fun x : Fin n → ℝ => etaL H K ω (fun i => (x i : ℂ))) =
        fun x => (fun b => (ω b : ℂ)) - energyRow H K (fun i => (x i : ℂ)) := by
      funext x
      rw [hrow _ (ofReal_mem_complexStrip hr x)]
      abel
    rw [h]
    exact continuous_const.sub hYc
  have havg := extendedTorsionAverage_eq_bordMat (ω := ω) hYc
  have hAvg : avg (energyRow H K) = (fun a => (ω a : ℂ)) - avg (etaL H K ω) := by
    have h1 : (fun x : Fin n → ℝ => energyRow H K (fun i => (x i : ℂ))) =
        fun x => (fun a => (ω a : ℂ)) - etaL H K ω (fun i => (x i : ℂ)) :=
      funext fun x => hrow _ (ofReal_mem_complexStrip hr x)
    show torusAverage (fun x : Fin n → ℝ => energyRow H K (fun i => (x i : ℂ))) =
      (fun a => (ω a : ℂ)) -
        torusAverage (fun x : Fin n → ℝ => etaL H K ω (fun i => (x i : ℂ)))
    rw [h1, torusAverage, torusAverage,
      integral_sub (integrableOn_unitCube_of_continuous continuous_const)
        (integrableOn_unitCube_of_continuous hηc),
      setIntegral_const, measureReal_def, volume_unitCube, ENNReal.toReal_one, one_smul]
  have hc : KAM.Iso.extendedTorsionAverage H K ω = bordMat (torsionAverage H K ω)
      (fun a => (ω a : ℂ)) ((fun a => (ω a : ℂ)) - avg (etaL H K ω)) := by
    rw [havg, hAvg]
  refine ⟨fun θ hθ => ⟨hrow θ hθ, sum_norm_energyRow_sub_le (hG θ hθ)⟩, ?_, hc, ?_⟩
  · intro hE
    have hη0 : ∀ θ ∈ complexStrip n r, etaL H K ω θ = 0 := fun θ hθ => by
      simp [etaL, hE θ hθ]
    refine ⟨fun θ hθ => ?_, ?_⟩
    · rw [extendedTorsion_eq_bordMat, hrow θ hθ, hη0 θ hθ, sub_zero]
    · have h0 : avg (etaL H K ω) = 0 := by
        have : (fun x : Fin n → ℝ => etaL H K ω (fun i => (x i : ℂ))) = fun _ => 0 :=
          funext fun x => hη0 _ (ofReal_mem_complexStrip hr x)
        show torusAverage (fun x : Fin n → ℝ => etaL H K ω (fun i => (x i : ℂ))) = 0
        rw [this]
        simp [torusAverage]
      rw [hc, h0, sub_zero]
  · intro e σK' σB' hbd
    have h0mem : (0 : Fin n → ℂ) ∈ complexStrip n r := fun i => by simpa using hr
    obtain ⟨hE0, hL0, hB0⟩ := hbd 0 h0mem
    have he : 0 ≤ e := (norm_nonneg _).trans hE0
    have hσK : 0 ≤ σK' := (norm_nonneg _).trans hL0
    have hσB : 0 ≤ σB' := (norm_nonneg _).trans hB0
    have hηb : ‖avg (etaL H K ω)‖ ≤ 2 * n * σK' * σB' * e :=
      norm_torusAverage_le fun x _ =>
        norm_etaL_le_of_le (hbd _ (ofReal_mem_complexStrip hr x)).2.1
          (hbd _ (ofReal_mem_complexStrip hr x)).2.2 (hbd _ (ofReal_mem_complexStrip hr x)).1
    rw [hc]
    refine (norm_le_iff_forall_rowSum (by positivity)).2 ?_
    rintro (a | u)
    · rw [Fintype.sum_sum_type]
      simp [Matrix.sub_apply, bordMat_inl_inl, bordMat_inl_inr]
      positivity
    · rw [Fintype.sum_sum_type]
      simp only [Matrix.sub_apply, bordMat_inr_inl, bordMat_inr_inr, sub_self, norm_zero,
        Finset.univ_unique, Finset.sum_singleton, add_zero, Pi.sub_apply]
      calc ∑ b, ‖(ω b : ℂ) - avg (etaL H K ω) b - (ω b : ℂ)‖
          = ∑ b, ‖avg (etaL H K ω) b‖ :=
            Finset.sum_congr rfl fun b _ => by rw [sub_sub_cancel_left, norm_neg]
        _ ≤ ∑ _b : Fin n, ‖avg (etaL H K ω)‖ :=
            Finset.sum_le_sum fun b _ => norm_le_pi_norm _ b
        _ = n * ‖avg (etaL H K ω)‖ := by simp
        _ ≤ n * (2 * n * σK' * σB' * e) := by gcongr
        _ = 2 * n ^ 2 * σK' * σB' * e := by ring

end Torus

end KAM.Iso.Linear

end
