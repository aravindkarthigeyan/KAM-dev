/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Perturbation
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Perturbation of the torsion: items (e), (f) of `bp:p2:perturbation`

Blueprint Part 2, Lemma `bp:p2:perturbation`, steps `step:p2:pt-xn`, `pt-torsion` and `pt-twist`,
and the assembled node `KAM.Apost.perturbation`. Notation as in `KAM/Apost/Perturbation.lean`:
`𝔪 = mSize M σK σB σT`, `Ñ`, `X̃`, `T̃` are the objects of the perturbed map `K'`.

* `normalFieldMat_sub`, `norm_normalField_sub_le`:
  `X̃_Ñ - X_N = (Ã - A) Ñ + A (Ñ - N) - ∂_ω (Ñ - N)`, bounded by `C_ΔX d/δ²` on `T_{r-2δ}`,
  with `|Ã - A| ≤ M d` from `KAM.Apost.ham_mvt` and the Cauchy estimate for `∂_ω (Ñ - N)` on
  `T_{r-δ}` (loss `δ`).
* `norm_torsion_sub_le`: `T̃ - T = Ñᵀ Ω₀ (X̃_Ñ - X_N) + (Ñ - N)ᵀ Ω₀ X_N`, bounded by `C_ΔT d/δ²`
  on `T_{r-2δ}`; `|X_N| ≤ C_X/δ` is `KAM.Apost.FrameAux.norm_normalFieldMat_le`.
* `norm_torsionAverage_sub_le`, `twist_neumann`: `T̃` is holomorphic on `T_{r-δ} ⊇ ℝⁿ`, hence
  continuous there; `|⟨T̃⟩ - ⟨T⟩| ≤ C_ΔT d/δ²` by the integral bound over `[0,1]ⁿ` (no
  periodicity is used), and the Neumann lemma gives (f).

The matrix norm is the operator norm of `open scoped Matrix.Norms.Operator`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Apost

open KAM.Torus

namespace PerturbationAux

/-! ### The displacement of the normal field (`step:p2:pt-xn`) -/

section NormalField

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- `X̃_Ñ - X_N = (Ã - A) Ñ + A (Ñ - N) - ∂_ω (Ñ - N)`, where `Ñ` and `N` are differentiable
at `θ`. -/
theorem normalFieldMat_sub {θ : Fin n → ℂ} (hN' : DifferentiableAt ℂ (normalMat K') θ)
    (hN : DifferentiableAt ℂ (normalMat K) θ) :
    normalFieldMat h K' ω θ - normalFieldMat h K ω θ =
      (linMat h K' θ - linMat h K θ) * normalMat K' θ +
        linMat h K θ * (normalMat K' θ - normalMat K θ) -
          fderiv ℂ (fun θ => normalMat K' θ - normalMat K θ) θ (fun l => (ω l : ℂ)) := by
  have hD : fderiv ℂ (fun θ => normalMat K' θ - normalMat K θ) θ =
      fderiv ℂ (normalMat K') θ - fderiv ℂ (normalMat K) θ := fderiv_fun_sub hN' hN
  rw [hD, _root_.sub_apply]
  simp only [normalFieldMat, Matrix.sub_mul, Matrix.mul_sub]
  abel

/-- The norm of the combination of `step:p2:pt-xn`, for abstract matrices. -/
theorem norm_normalField_combo_le (A' A : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ)
    (N' N D : Matrix (Fin n ⊕ Fin n) (Fin n) ℂ) {a b c e f : ℝ}
    (hA : ‖A' - A‖ ≤ a) (hA0 : ‖A‖ ≤ b) (hN' : ‖N'‖ ≤ c) (hN : ‖N' - N‖ ≤ e) (hD : ‖D‖ ≤ f) :
    ‖(A' - A) * N' + A * (N' - N) - D‖ ≤ a * c + b * e + f := by
  have h1 : ‖(A' - A) * N'‖ ≤ a * c :=
    (Matrix.linfty_opNorm_mul _ _).trans
      (mul_le_mul hA hN' (norm_nonneg _) ((norm_nonneg _).trans hA))
  have h2 : ‖A * (N' - N)‖ ≤ b * e :=
    (Matrix.linfty_opNorm_mul _ _).trans
      (mul_le_mul hA0 hN (norm_nonneg _) ((norm_nonneg _).trans hA0))
  calc ‖(A' - A) * N' + A * (N' - N) - D‖ ≤ ‖(A' - A) * N' + A * (N' - N)‖ + ‖D‖ := norm_sub_le _ _
    _ ≤ ‖(A' - A) * N'‖ + ‖A * (N' - N)‖ + ‖D‖ := by gcongr; exact norm_add_le _ _
    _ ≤ a * c + b * e + f := by gcongr

/-- The mean value estimate `|Ã - A| ≤ M d ≤ 𝔪 d` of `step:p2:pt-domain`: the segment
`[Kθ, K'θ]` lies in `𝔹_β(Kθ) ⊆ 𝔅`, and `KAM.Apost.ham_mvt` applies. -/
theorem norm_linMat_sub_le (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {θ : Fin n → ℂ} {β d : ℝ}
    (hball : Metric.ball (K θ) β ⊆ 𝔅) (hd : ‖K' θ - K θ‖ ≤ d) (hdβ : d < β) :
    ‖linMat h K' θ - linMat h K θ‖ ≤ mSize M σK σB σT * d := by
  have hd0 : 0 ≤ d := (norm_nonneg _).trans hd
  have h1 := (ham_mvt hS (K θ) (K' θ - K θ) β hball (lt_of_le_of_lt hd hdβ)).1
  rw [add_sub_cancel] at h1
  have heq : linMat h K' θ - linMat h K θ = sqMat (fderiv ℂ (hamiltonianVectorFieldℂ h) (K' θ) -
      fderiv ℂ (hamiltonianVectorFieldℂ h) (K θ)) := (sqMat_sub _ _).symm
  rw [heq, norm_sqMat]
  calc _ ≤ M * ‖K' θ - K θ‖ := h1
    _ ≤ M * d := mul_le_mul_of_nonneg_left hd hS.M_pos.le
    _ ≤ mSize M σK σB σT * d := mul_le_mul_of_nonneg_right M_le_mSize hd0

/-- `∑ |ω_ℓ| ≤ n Θ` when `‖ω‖ ≤ Θ`. -/
theorem sum_abs_le_of_norm_le {Θ : ℝ} (hω : ‖ω‖ ≤ Θ) : ∑ ℓ, |ω ℓ| ≤ n * Θ :=
  calc ∑ ℓ, |ω ℓ| ≤ ∑ _ℓ : Fin n, ‖ω‖ :=
        Finset.sum_le_sum fun ℓ _ => by simpa using norm_le_pi_norm ω ℓ
    _ = n * ‖ω‖ := by simp
    _ ≤ n * Θ := by gcongr

/-- Cauchy estimate (loss `δ`, `|ω|₁ ≤ nΘ`) for `∂_ω (Ñ - N)` on `T_{r-2δ}`, from the bound
`|Ñ - N| ≤ B` on `T_{r-δ}`. -/
theorem norm_fderiv_normalDiff_le {r δ B Θ : ℝ}
    (hNd : DifferentiableOn ℂ (fun θ => normalMat K' θ - normalMat K θ) (complexStrip n (r - δ)))
    (hNb : ∀ θ ∈ complexStrip n (r - δ), ‖normalMat K' θ - normalMat K θ‖ ≤ B) (hδ : 0 < δ)
    (hω : ‖ω‖ ≤ Θ) :
    ∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖fderiv ℂ (fun θ => normalMat K' θ - normalMat K θ) θ (fun l => (ω l : ℂ))‖ ≤
        n * Θ * δ⁻¹ * B := by
  intro θ hθ
  have hr : r - 2 * δ = r - δ - δ := by ring
  rw [hr] at hθ
  have h := cauchy_corollaries_directional_real hNd hNb hδ ω θ hθ
  have hB : 0 ≤ B := by
    have h0 : θ ∈ complexStrip n (r - δ) := complexStrip_mono (by linarith) hθ
    exact (norm_nonneg _).trans (hNb θ h0)
  refine h.trans ?_
  gcongr
  exact sum_abs_le_of_norm_le hω

/-- The pointwise estimate of `step:p2:pt-xn`:
`|X̃_Ñ - X_N| ≤ 2𝔪³ d + 𝔪 C_ΔN d/δ + nΘ C_ΔN d/δ² ≤ C_ΔX d/δ²`, from the bounds at `θ`. -/
theorem norm_normalField_sub_le (hP : Params n τ M σK σB σT) {θ : Fin n → ℂ} {δ d Θ : ℝ}
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (hd0 : 0 ≤ d)
    (hN' : DifferentiableAt ℂ (normalMat K') θ) (hN : DifferentiableAt ℂ (normalMat K) θ)
    (hA : ‖linMat h K' θ - linMat h K θ‖ ≤ mSize M σK σB σT * d)
    (hA0 : ‖linMat h K θ‖ ≤ mSize M σK σB σT)
    (hN2 : ‖normalMat K' θ‖ ≤ 2 * mSize M σK σB σT ^ 2)
    (hNN : ‖normalMat K' θ - normalMat K θ‖ ≤ C_DN n M σK σB σT * d / δ)
    (hDω : ‖fderiv ℂ (fun θ => normalMat K' θ - normalMat K θ) θ (fun l => (ω l : ℂ))‖ ≤
      n * Θ * δ⁻¹ * (C_DN n M σK σB σT * d / δ)) (hΘ : Θ = Theta n M σK σB σT) :
    ‖normalFieldMat h K' ω θ - normalFieldMat h K ω θ‖ ≤ C_DX n M σK σB σT * d / δ ^ 2 := by
  rw [normalFieldMat_sub hN' hN]
  refine (norm_normalField_combo_le _ _ _ _ _ hA hA0 hN2 hNN hDω).trans ?_
  have hsum := pt_xn_sum_le hP hδ hδ1 hd0
  subst hΘ
  refine le_trans (le_of_eq ?_) hsum
  field_simp

end NormalField

/-! ### The torsion (`step:p2:pt-torsion`) -/

section Torsion

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- The norm of the combination of `step:p2:pt-torsion`, for abstract matrices:
`T̃ - T = Ñᵀ Ω₀ (X̃ - X) + (Ñ - N)ᵀ Ω₀ X`. -/
theorem norm_torsion_combo_le (N' N X' X : Matrix (Fin n ⊕ Fin n) (Fin n) ℂ) {a b c e : ℝ}
    (hN' : ‖N'ᵀ‖ ≤ a) (hX : ‖X' - X‖ ≤ b) (hNN : ‖(N' - N)ᵀ‖ ≤ c) (hX0 : ‖X‖ ≤ e) :
    ‖N'ᵀ * omegaZeroMatrix n * X' - Nᵀ * omegaZeroMatrix n * X‖ ≤ a * b + c * e := by
  have key : N'ᵀ * omegaZeroMatrix n * X' - Nᵀ * omegaZeroMatrix n * X =
      N'ᵀ * omegaZeroMatrix n * (X' - X) + (N' - N)ᵀ * omegaZeroMatrix n * X := by
    simp only [Matrix.transpose_sub, Matrix.sub_mul, Matrix.mul_sub]
    abel
  rw [key]
  have h1 : ‖N'ᵀ * omegaZeroMatrix n * (X' - X)‖ ≤ a * b := by
    refine (Matrix.linfty_opNorm_mul _ _).trans ?_
    rw [norm_mul_omegaZeroMatrix]
    exact mul_le_mul hN' hX (norm_nonneg _) ((norm_nonneg _).trans hN')
  have h2 : ‖(N' - N)ᵀ * omegaZeroMatrix n * X‖ ≤ c * e := by
    refine (Matrix.linfty_opNorm_mul _ _).trans ?_
    rw [norm_mul_omegaZeroMatrix]
    exact mul_le_mul hNN hX0 (norm_nonneg _) ((norm_nonneg _).trans hNN)
  exact (norm_add_le _ _).trans (add_le_add h1 h2)

end Torsion

/-! ### The strip estimates (e) -/

section Strips

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {r δ β d : ℝ}

/-- `X̃_Ñ - X_N` on `T_{r-2δ}` (`step:p2:pt-xn`). -/
theorem norm_normalField_sub_le_strip (hS : Standing n τ M σK σB σT 𝔅 h ω γ) (hδ : 0 < δ)
    (hδ1 : δ ≤ 1) (hd0 : 0 ≤ d) (hω : ‖ω‖ ≤ Theta n M σK σB σT)
    (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hball : ∀ θ ∈ complexStrip n r, Metric.ball (K θ) β ⊆ 𝔅)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det)
    (hK' : DifferentiableOn ℂ K' (complexStrip n r))
    (hd : ∀ θ ∈ complexStrip n r, ‖K' θ - K θ‖ ≤ d) (hdβ : d < β)
    (hG' : ∀ θ ∈ complexStrip n (r - δ), IsUnit (gramMatrix K' θ).det)
    (hNN : ∀ θ ∈ complexStrip n (r - δ),
      ‖normalMat K' θ - normalMat K θ‖ ≤ C_DN n M σK σB σT * d / δ ∧
        ‖normalMat K' θ‖ ≤ 2 * mSize M σK σB σT ^ 2)
    (hAb : ∀ θ ∈ complexStrip n r, ‖linMat h K θ‖ ≤ mSize M σK σB σT) :
    ∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖normalFieldMat h K' ω θ - normalFieldMat h K ω θ‖ ≤
        C_DX n M σK σB σT * d / δ ^ 2 := by
  have hsub : complexStrip n (r - δ) ⊆ complexStrip n r := complexStrip_mono (by linarith)
  have hN'd : DifferentiableOn ℂ (normalMat K') (complexStrip n (r - δ)) :=
    differentiableOn_normalMat (hK'.mono hsub) hG'
  have hNd : DifferentiableOn ℂ (normalMat K) (complexStrip n (r - δ)) :=
    differentiableOn_normalMat (hK.mono hsub) fun θ hθ => hG θ (hsub hθ)
  have hDω := norm_fderiv_normalDiff_le (K := K) (K' := K') (hN'd.sub hNd)
    (fun θ hθ => (hNN θ hθ).1) hδ hω
  intro θ hθ
  have hθ1 : θ ∈ complexStrip n (r - δ) := complexStrip_mono (by linarith) hθ
  have hopen := (isOpen_complexStrip n (r - δ)).mem_nhds hθ1
  exact norm_normalField_sub_le hS.toParams hδ hδ1 hd0 (hN'd.differentiableAt hopen)
    (hNd.differentiableAt hopen) (norm_linMat_sub_le hS (hball θ (hsub hθ1)) (hd θ (hsub hθ1)) hdβ)
    (hAb θ (hsub hθ1)) (hNN θ hθ1).2 (hNN θ hθ1).1 (hDω θ hθ) rfl

/-- Step `step:p2:pt-torsion`: `|T̃ - T| ≤ C_ΔT d/δ²` on `T_{r-2δ}`, from `|X̃_Ñ - X_N| ≤ C_ΔX d/δ²`
there, `|Ñ - N| ≤ C_ΔN d/δ` and `|Ñ| ≤ 2𝔪²` on `T_{r-δ}`, and `|X_N| ≤ C_X/δ` on `T_{r-δ}`
(`KAM.Apost.FrameAux.norm_normalFieldMat_le`). -/
theorem norm_torsion_sub_le (hS : Standing n τ M σK σB σT 𝔅 h ω γ) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (hω : ‖ω‖ ≤ Theta n M σK σB σT) (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hDK : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB)
    (hK' : DifferentiableOn ℂ K' (complexStrip n r))
    (hG' : ∀ θ ∈ complexStrip n (r - δ), IsUnit (gramMatrix K' θ).det)
    (hNN : ∀ θ ∈ complexStrip n (r - δ),
      ‖normalMat K' θ - normalMat K θ‖ ≤ C_DN n M σK σB σT * d / δ ∧
        ‖normalMat K' θ‖ ≤ 2 * mSize M σK σB σT ^ 2)
    (hXX : ∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖normalFieldMat h K' ω θ - normalFieldMat h K ω θ‖ ≤ C_DX n M σK σB σT * d / δ ^ 2) :
    ∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖torsion h K' ω θ - torsion h K ω θ‖ ≤ C_DT n M σK σB σT * d / δ ^ 2 := by
  have hsub : complexStrip n (r - δ) ⊆ complexStrip n r := complexStrip_mono (by linarith)
  have hNd : DifferentiableOn ℂ (normalMat K) (complexStrip n r) :=
    differentiableOn_normalMat hK fun θ hθ => (hG θ hθ).1
  have hN'd : DifferentiableOn ℂ (normalMat K') (complexStrip n (r - δ)) :=
    differentiableOn_normalMat (hK'.mono hsub) hG'
  have hNb : ∀ θ ∈ complexStrip n r, ‖normalMat K θ‖ ≤ mSize M σK σB σT ^ 2 := fun θ hθ =>
    FrameAux.norm_normalMat_le (hDK θ hθ) (hG θ hθ).2
  have hAb : ∀ θ ∈ complexStrip n r, ‖linMat h K θ‖ ≤ mSize M σK σB σT := fun θ hθ =>
    FrameAux.norm_linMat_le hS (hK𝔅 θ hθ)
  intro θ hθ
  have hθ1 : θ ∈ complexStrip n (r - δ) := complexStrip_mono (by linarith) hθ
  have hθr : θ ∈ complexStrip n r := hsub hθ1
  have hX := FrameAux.norm_normalFieldMat_le hS.toParams hNd hNb hAb hω hδ hδ1 hθ1
  rw [torsion_eq_mat h K' ω (hN'd.differentiableAt ((isOpen_complexStrip n (r - δ)).mem_nhds hθ1)),
    torsion_eq_mat h K ω (hNd.differentiableAt ((isOpen_complexStrip n r).mem_nhds hθr))]
  have hNT : ‖(normalMat K' θ)ᵀ‖ ≤ 2 * n * (2 * mSize M σK σB σT ^ 2) :=
    (FrameAux.norm_transpose_le_two_mul _).trans
      (mul_le_mul_of_nonneg_left (hNN θ hθ1).2 (by positivity))
  have hNNT : ‖(normalMat K' θ - normalMat K θ)ᵀ‖ ≤ 2 * n * (C_DN n M σK σB σT * d / δ) :=
    (FrameAux.norm_transpose_le_two_mul _).trans
      (mul_le_mul_of_nonneg_left (hNN θ hθ1).1 (by positivity))
  refine (norm_torsion_combo_le _ _ _ _ hNT (hXX θ hθ) hNNT hX).trans (le_of_eq ?_)
  have hδ0 : δ ≠ 0 := hδ.ne'
  unfold C_DT
  field_simp
  ring

/-- `T = Nᵀ Ω₀ X_N` is holomorphic on `T_r` for `K` holomorphic with `K(T_r) ⊆ 𝔅` and `det G` a
unit. -/
theorem differentiableOn_torsion_of (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK : DifferentiableOn ℂ K (complexStrip n r)) (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det) :
    DifferentiableOn ℂ (torsion h K ω) (complexStrip n r) :=
  have hNd := differentiableOn_normalMat hK hG
  FrameAux.differentiableOn_torsion hNd
    (FrameAux.differentiableOn_normalFieldMat (FrameAux.differentiableOn_linMat hS hK hK𝔅) hNd)

end Strips

/-! ### The twist (`step:p2:pt-twist`) -/

section Twist

variable {n : ℕ} {τ M σK σB σT : ℝ} {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ}
  {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {δ d : ℝ}

/-- The integral bound of `bp:p1:ext-integral`: if the continuous tori `T̃` and `T` differ by at
most `A` on `ℝⁿ`, then `|⟨T̃⟩ - ⟨T⟩| ≤ A`. No periodicity is used. -/
theorem norm_torsionAverage_sub_le {A : ℝ}
    (hc : Continuous (fun x : Fin n → ℝ => torsion h K ω (fun i => (x i : ℂ))))
    (hc' : Continuous (fun x : Fin n → ℝ => torsion h K' ω (fun i => (x i : ℂ))))
    (hb : ∀ x : Fin n → ℝ, ‖torsion h K' ω (fun i => (x i : ℂ)) -
      torsion h K ω (fun i => (x i : ℂ))‖ ≤ A) :
    ‖torsionAverage h K' ω - torsionAverage h K ω‖ ≤ A := by
  rw [torsionAverage_eq_avg h K ω hc, torsionAverage_eq_avg h K' ω hc']
  have heq : avg (torsion h K' ω) - avg (torsion h K ω) = torusAverage (fun x : Fin n → ℝ =>
      torsion h K' ω (fun i => (x i : ℂ)) - torsion h K ω (fun i => (x i : ℂ))) := by
    unfold avg torusAverage
    rw [integral_sub (integrableOn_unitCube_of_continuous hc')
      (integrableOn_unitCube_of_continuous hc)]
  rw [heq]
  exact norm_torusAverage_le fun x _ => hb x

/-- Step `step:p2:pt-twist`, Neumann step: from `|⟨T̃⟩ - ⟨T⟩| ≤ C_ΔT d/δ²` and `𝔪 C_ΔT d/δ² ≤ 1/2`,
the average `⟨T̃⟩` is invertible and `|⟨T̃⟩⁻¹ - ⟨T⟩⁻¹| ≤ 2𝔪² C_ΔT d/δ²`. -/
theorem twist_neumann (hT : IsUnit (torsionAverage h K ω).det ∧ ‖(torsionAverage h K ω)⁻¹‖ ≤ σT)
    (hAvg : ‖torsionAverage h K' ω - torsionAverage h K ω‖ ≤
      C_DT n M σK σB σT * d / δ ^ 2)
    (hs : mSize M σK σB σT * C_DT n M σK σB σT * d / δ ^ 2 ≤ 1 / 2) :
    IsUnit (torsionAverage h K' ω).det ∧
      ‖(torsionAverage h K' ω)⁻¹ - (torsionAverage h K ω)⁻¹‖ ≤
        2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT * d / δ ^ 2 := by
  have hm0 : 0 ≤ mSize M σK σB σT := zero_le_one.trans one_le_mSize
  have hσ : ‖(torsionAverage h K ω)⁻¹‖ ≤ mSize M σK σB σT := hT.2.trans σT_le_mSize
  have hε0 : 0 ≤ C_DT n M σK σB σT * d / δ ^ 2 := (norm_nonneg _).trans hAvg
  have hsm : ‖(torsionAverage h K ω)⁻¹‖ * ‖torsionAverage h K' ω - torsionAverage h K ω‖ ≤
      1 / 2 := by
    calc _ ≤ mSize M σK σB σT * (C_DT n M σK σB σT * d / δ ^ 2) :=
          mul_le_mul hσ hAvg (norm_nonneg _) hm0
      _ = mSize M σK σB σT * C_DT n M σK σB σT * d / δ ^ 2 := by ring
      _ ≤ 1 / 2 := hs
  obtain ⟨h1, -, h3⟩ := KAM.neumann ((Matrix.isUnit_iff_isUnit_det _).2 hT.1) hsm
  rw [add_sub_cancel] at h1 h3
  refine ⟨(Matrix.isUnit_iff_isUnit_det _).1 h1, h3.trans ?_⟩
  calc 2 * ‖(torsionAverage h K ω)⁻¹‖ ^ 2 * ‖torsionAverage h K' ω - torsionAverage h K ω‖
      ≤ 2 * mSize M σK σB σT ^ 2 * (C_DT n M σK σB σT * d / δ ^ 2) := by
        gcongr
    _ = 2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT * d / δ ^ 2 := by ring

end Twist

end PerturbationAux

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}

/-- Blueprint `bp:p2:perturbation`, items (a)–(f). -/
theorem perturbation (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r δ β d : ℝ} (hr : 0 < r)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h2δ : 2 * δ < r) (hω : ‖ω‖ ≤ Theta n M σK σB σT)
    {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hball : ∀ θ ∈ complexStrip n r, Metric.ball (K θ) β ⊆ 𝔅)
    (hDK : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB)
    (hT : IsUnit (torsionAverage h K ω).det ∧ ‖(torsionAverage h K ω)⁻¹‖ ≤ σT)
    (hK' : DifferentiableOn ℂ K' (complexStrip n r)) (hd : ∀ θ ∈ complexStrip n r, ‖K' θ - K θ‖ ≤ d)
    (hdβ : d < β) (hsmall : 2 * mSize M σK σB σT * C_DT n M σK σB σT * d / δ ^ 2 ≤ 1) :
    (∀ θ ∈ complexStrip n r, Metric.ball (K' θ) (β - d) ⊆ 𝔅) ∧
    (∀ θ ∈ complexStrip n (r - δ), ‖fderiv ℂ K' θ - fderiv ℂ K θ‖ ≤ n * d / δ) ∧
    (∀ θ ∈ complexStrip n (r - δ), IsUnit (gramMatrix K' θ).det ∧
      ‖(gramMatrix K' θ)⁻¹‖ ≤ 2 * mSize M σK σB σT ∧
      ‖(gramMatrix K' θ)⁻¹ - (gramMatrix K θ)⁻¹‖ ≤ C_B n M σK σB σT * d / δ) ∧
    (∀ θ ∈ complexStrip n (r - δ), ‖normalMat K' θ - normalMat K θ‖ ≤ C_DN n M σK σB σT * d / δ ∧
      ‖normalMat K' θ‖ ≤ 2 * mSize M σK σB σT ^ 2) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖torsion h K' ω θ - torsion h K ω θ‖ ≤ C_DT n M σK σB σT * d / δ ^ 2) ∧
    (Continuous (fun x : Fin n → ℝ => torsion h K' ω (fun i => (x i : ℂ))) ∧
      IsUnit (torsionAverage h K' ω).det ∧
      ‖(torsionAverage h K' ω)⁻¹ - (torsionAverage h K ω)⁻¹‖ ≤
        2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT * d / δ ^ 2) := by
  have hP := hS.toParams
  have h0 : (0 : Fin n → ℂ) ∈ complexStrip n r := fun i => by simpa using hr
  have hd0 : 0 ≤ d := (norm_nonneg _).trans (hd 0 h0)
  have hβ : 0 < β := lt_of_le_of_lt hd0 hdβ
  have hr1 : 0 < r - δ := by linarith
  have hr2 : 0 < r - 2 * δ := by linarith
  have hsub : complexStrip n (r - δ) ⊆ complexStrip n r :=
    PerturbationAux.complexStrip_mono (by linarith)
  have ha : ∀ θ ∈ complexStrip n r, Metric.ball (K' θ) (β - d) ⊆ 𝔅 := fun θ hθ =>
    PerturbationAux.ball_subset_of_close (hball θ hθ) (hd θ hθ)
  obtain ⟨hb, hc, hdN⟩ := PerturbationAux.frame_items hP hδ hδ1 hd0 hK hDK hG hK' hd hsmall
  have hG' : ∀ θ ∈ complexStrip n (r - δ), IsUnit (gramMatrix K' θ).det := fun θ hθ => (hc θ hθ).1
  have hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅 := fun θ hθ => hball θ hθ (Metric.mem_ball_self hβ)
  have hAb : ∀ θ ∈ complexStrip n r, ‖linMat h K θ‖ ≤ mSize M σK σB σT := fun θ hθ =>
    FrameAux.norm_linMat_le hS (hK𝔅 θ hθ)
  have hXX := PerturbationAux.norm_normalField_sub_le_strip hS hδ hδ1 hd0 hω hK hball
    (fun θ hθ => (hG θ hθ).1) hK' hd hdβ hG' hdN hAb
  have he := PerturbationAux.norm_torsion_sub_le hS hδ hδ1 hω hK hK𝔅 hDK hG hK' hG' hdN hXX
  refine ⟨ha, hb, hc, hdN, he, ?_⟩
  have hK'𝔅 : ∀ θ ∈ complexStrip n (r - δ), K' θ ∈ 𝔅 := fun θ hθ =>
    ha θ (hsub hθ) (Metric.mem_ball_self (by linarith))
  have hTd := PerturbationAux.differentiableOn_torsion_of hS hK (h := h) (ω := ω) hK𝔅
    (fun θ hθ => (hG θ hθ).1)
  have hT'd := PerturbationAux.differentiableOn_torsion_of hS (hK'.mono hsub) (h := h) (ω := ω)
    hK'𝔅 hG'
  have hcT := FrameAux.continuous_torsion_real hr hTd
  have hcT' := FrameAux.continuous_torsion_real hr1 hT'd
  have hAvg := PerturbationAux.norm_torsionAverage_sub_le hcT hcT' fun x =>
    he _ (ofReal_mem_complexStrip hr2 x)
  have hs4 := (perturbation_small hP hδ hδ1 hd0 hsmall).2.2.2
  exact ⟨hcT', PerturbationAux.twist_neumann hT hAvg hs4⟩

end KAM.Apost

end
