/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Frame
public import KAM.Matrix.Bridges
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Perturbation of the frame: items (a)-(d) of `bp:p2:perturbation`

Blueprint Part 2, Lemma `bp:p2:perturbation`, steps `step:p2:pt-domain`, `pt-dl`, `pt-gram`,
`pt-binv` and `pt-n`. Write `𝔪 = mSize M σK σB σT`, `L = DK`, `G = LᵀL`, `B = G⁻¹`,
`N = Ω₀ L B`, and `L̃, G̃, B̃, Ñ` for the same objects of the perturbed map `K'`.

This module proves the frame part of the lemma; `KAM/Apost/PerturbationTorsion.lean` proves the
torsion part (items (e), (f)) and assembles the node `KAM.Apost.perturbation`.

* (a) `ball_subset_of_close`: `𝔹_{β-d}(K'θ) ⊆ 𝔅` from `𝔹_β(Kθ) ⊆ 𝔅` and `|K'θ - Kθ| ≤ d`.
* (b) `norm_fderiv_sub_le`: `|DK' - DK| ≤ n d/δ` on `T_{r-δ}` (Cauchy estimate for `K' - K`), and
  `norm_transpose_tangentMat_sub_le`: `|(L̃ - L)ᵀ| ≤ 2n d/δ` (transposed Cauchy estimate with
  `p = 2n`, `KAM.Torus.cauchy_transpose_fintype`).
* (c) `norm_gram_sub_le`, `gram_inverse_perturb`: `|G̃ - G| ≤ C_G d/δ`, then the Neumann lemma
  (`KAM.neumann_pointwise`) gives `G̃` invertible, `|B̃| ≤ 2𝔪`, `|B̃ - B| ≤ C_B d/δ`.
* (d) `norm_normalMat_sub_le`, `norm_normalMat_le_two`: `|Ñ - N| ≤ C_ΔN d/δ`, `|Ñ| ≤ 2𝔪²`.

Each item is a helper lemma in the namespace `KAM.Apost.PerturbationAux`, pointwise where the
statement is pointwise, so that the matrix algebra is elaborated once per identity. The
smallness arithmetic is `KAM.Apost.perturbation_small` of `KAM/Apost/Constants.lean`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Apost

open KAM.Torus

namespace PerturbationAux

/-! ### Linearity of `colMat` and `sqMat`, and the algebra of the differences -/

section Algebra

variable {n : ℕ} {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

theorem colMat_sub {q : ℕ} (U V : (Fin q → ℂ) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ)) :
    colMat (U - V) = colMat U - colMat V := by
  unfold colMat
  rw [← map_sub]
  congr 1
  ext v
  simp

theorem sqMat_sub (U V : ((Fin n → ℂ) × (Fin n → ℂ)) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ)) :
    sqMat (U - V) = sqMat U - sqMat V := by
  unfold sqMat
  rw [← map_sub]
  congr 1
  ext v
  simp

/-- `L̃ - L = colMat (DK' - DK)`. -/
theorem tangentMat_sub (θ : Fin n → ℂ) :
    tangentMat K' θ - tangentMat K θ = colMat (fderiv ℂ K' θ - fderiv ℂ K θ) :=
  (colMat_sub _ _).symm

/-- `|L̃ - L| = |DK' - DK|`. -/
theorem norm_tangentMat_sub (θ : Fin n → ℂ) :
    ‖tangentMat K' θ - tangentMat K θ‖ = ‖fderiv ℂ K' θ - fderiv ℂ K θ‖ := by
  rw [tangentMat_sub, norm_colMat]

/-- `G̃ - G = L̃ᵀ (L̃ - L) + (L̃ - L)ᵀ L` (`step:p2:pt-gram`). -/
theorem gramMatrix_sub (θ : Fin n → ℂ) :
    gramMatrix K' θ - gramMatrix K θ =
      (tangentMat K' θ)ᵀ * (tangentMat K' θ - tangentMat K θ) +
        (tangentMat K' θ - tangentMat K θ)ᵀ * tangentMat K θ := by
  rw [gramMatrix_eq_tangentMat_transpose_mul, gramMatrix_eq_tangentMat_transpose_mul]
  simp only [Matrix.transpose_sub, Matrix.mul_sub, Matrix.sub_mul]
  abel

/-- `Ñ - N = Ω₀ ((L̃ - L) B̃ + L (B̃ - B))` (`step:p2:pt-n`). -/
theorem normalMat_sub (θ : Fin n → ℂ) :
    normalMat K' θ - normalMat K θ =
      omegaZeroMatrix n * (tangentMat K' θ - tangentMat K θ) * (gramMatrix K' θ)⁻¹ +
        omegaZeroMatrix n * tangentMat K θ * ((gramMatrix K' θ)⁻¹ - (gramMatrix K θ)⁻¹) := by
  simp only [normalMat, Matrix.mul_sub, Matrix.sub_mul]
  abel

end Algebra

/-! ### Item (a): the domain (`step:p2:pt-domain`) -/

section Domain

variable {n : ℕ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {β d : ℝ}

/-- Item (a), pointwise: if `|z - K̃θ| < β - d` then `|z - Kθ| < β`, so `z ∈ 𝔅`. -/
theorem ball_subset_of_close {θ : Fin n → ℂ} (hball : Metric.ball (K θ) β ⊆ 𝔅)
    (hd : ‖K' θ - K θ‖ ≤ d) : Metric.ball (K' θ) (β - d) ⊆ 𝔅 := by
  intro z hz
  apply hball
  rw [Metric.mem_ball, dist_eq_norm] at hz ⊢
  calc ‖z - K θ‖ = ‖(z - K' θ) + (K' θ - K θ)‖ := by rw [sub_add_sub_cancel]
    _ ≤ ‖z - K' θ‖ + ‖K' θ - K θ‖ := norm_add_le _ _
    _ < β := by linarith

end Domain

/-! ### Item (b): the tangent frame (`step:p2:pt-dl`) -/

section Tangent

variable {n : ℕ} {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {r δ d : ℝ}

/-- The strips are nested. -/
theorem complexStrip_mono {a b : ℝ} (hab : a ≤ b) : complexStrip n a ⊆ complexStrip n b :=
  fun _ hθ i => (hθ i).trans_le hab

/-- Item (b): `|DK' - DK| ≤ n d/δ` on `T_{r-δ}` (`bp:p1:cauchy-strip` for `K' - K`). -/
theorem norm_fderiv_sub_le (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hK' : DifferentiableOn ℂ K' (complexStrip n r))
    (hd : ∀ θ ∈ complexStrip n r, ‖K' θ - K θ‖ ≤ d) (hδ : 0 < δ) :
    ∀ θ ∈ complexStrip n (r - δ), ‖fderiv ℂ K' θ - fderiv ℂ K θ‖ ≤ n * d / δ := by
  intro θ hθ
  have hdiff : DifferentiableOn ℂ (fun θ => K' θ - K θ) (complexStrip n r) := hK'.sub hK
  have h := (cauchy_strip hdiff hd hδ).2 θ hθ
  have hθr : θ ∈ complexStrip n r := complexStrip_mono (by linarith) hθ
  have hD : fderiv ℂ (fun θ => K' θ - K θ) θ = fderiv ℂ K' θ - fderiv ℂ K θ :=
    fderiv_fun_sub (hK'.differentiableAt ((isOpen_complexStrip n r).mem_nhds hθr))
      (hK.differentiableAt ((isOpen_complexStrip n r).mem_nhds hθr))
  rw [hD] at h
  calc ‖fderiv ℂ K' θ - fderiv ℂ K θ‖ ≤ n * δ⁻¹ * d := h
    _ = n * d / δ := by rw [div_eq_mul_inv]; ring

/-- Item (b), transposed: `|(L̃ - L)ᵀ| ≤ 2n d/δ` on `T_{r-δ}`, from the transposed Cauchy estimate
with `p = 2n` (`KAM.Torus.cauchy_transpose_fintype`). -/
theorem norm_transpose_tangentMat_sub_le (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hK' : DifferentiableOn ℂ K' (complexStrip n r))
    (hd : ∀ θ ∈ complexStrip n r, ‖K' θ - K θ‖ ≤ d) (hδ : 0 < δ) :
    ∀ θ ∈ complexStrip n (r - δ), ‖(tangentMat K' θ - tangentMat K θ)ᵀ‖ ≤ 2 * n * d / δ := by
  intro θ hθ
  have hf : DifferentiableOn ℂ (fun θ => sumVec n (K' θ - K θ)) (complexStrip n r) :=
    (sumVecIso n).differentiable.comp_differentiableOn (hK'.sub hK)
  have hA : ∀ θ ∈ complexStrip n r, ‖sumVec n (K' θ - K θ)‖ ≤ d := fun θ hθ => by
    rw [norm_sumVec]
    exact hd θ hθ
  have h := cauchy_transpose_fintype hf hA hδ θ hθ
  have hθr : θ ∈ complexStrip n r := complexStrip_mono (by linarith) hθ
  have hmat : (Matrix.of fun (s : Fin n ⊕ Fin n) (ℓ : Fin n) =>
      fderiv ℂ (fun θ => sumVec n (K' θ - K θ)) θ (Pi.single ℓ 1) s) =
        tangentMat K' θ - tangentMat K θ := by
    ext s ℓ
    rw [Matrix.of_apply, fderiv_sumVec_apply, fderiv_fun_sub
      (hK'.differentiableAt ((isOpen_complexStrip n r).mem_nhds hθr))
      (hK.differentiableAt ((isOpen_complexStrip n r).mem_nhds hθr)), Matrix.sub_apply,
      tangentMat_apply, tangentMat_apply, _root_.sub_apply, map_sub, Pi.sub_apply]
  rw [hmat, Fintype.card_sum, Fintype.card_fin] at h
  calc _ ≤ ((n + n : ℕ) : ℝ) * δ⁻¹ * d := h
    _ = 2 * n * d / δ := by push_cast; rw [div_eq_mul_inv]; ring

end Tangent

/-! ### Item (c): the Gram matrix and its inverse (`step:p2:pt-gram`, `step:p2:pt-binv`) -/

section Gram

variable {n : ℕ} {τ M σK σB σT : ℝ}
  {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {δ d : ℝ}

/-- `|L̃ᵀ| ≤ 4n𝔪` when `|Lᵀ| ≤ 2n𝔪`, `|(L̃ - L)ᵀ| ≤ 2n d/δ` and `n d/δ ≤ 𝔪`. -/
theorem norm_transpose_tangentMat_le_four (hP : Params n τ M σK σB σT) {θ : Fin n → ℂ}
    (hL : ‖fderiv ℂ K θ‖ ≤ σK)
    (hXt : ‖(tangentMat K' θ - tangentMat K θ)ᵀ‖ ≤ 2 * n * d / δ)
    (hs : (n : ℝ) * d / δ ≤ mSize M σK σB σT) :
    ‖(tangentMat K' θ)ᵀ‖ ≤ 4 * n * mSize M σK σB σT := by
  have hn := hP.one_le_cast
  have hm : 1 ≤ mSize M σK σB σT := one_le_mSize
  have hLt := FrameAux.norm_transpose_tangentMat_le (M := M) (σB := σB) (σT := σT) hL
  have heq : (tangentMat K' θ)ᵀ =
      (tangentMat K θ)ᵀ + (tangentMat K' θ - tangentMat K θ)ᵀ := by
    rw [← Matrix.transpose_add]
    congr 1
    abel
  have h2 : 2 * (n : ℝ) * d / δ ≤ 2 * n * mSize M σK σB σT := by
    have : 2 * (n : ℝ) * d / δ = 2 * ((n : ℝ) * d / δ) := by ring
    rw [this]
    nlinarith
  calc ‖(tangentMat K' θ)ᵀ‖
      = ‖(tangentMat K θ)ᵀ + (tangentMat K' θ - tangentMat K θ)ᵀ‖ := by rw [← heq]
    _ ≤ ‖(tangentMat K θ)ᵀ‖ + ‖(tangentMat K' θ - tangentMat K θ)ᵀ‖ := norm_add_le _ _
    _ ≤ 2 * n * mSize M σK σB σT + 2 * n * mSize M σK σB σT := add_le_add hLt (hXt.trans h2)
    _ = 4 * n * mSize M σK σB σT := by ring

/-- Step `step:p2:pt-gram`: `|G̃ - G| ≤ |L̃ᵀ| |L̃ - L| + |(L̃ - L)ᵀ| |L| ≤ C_G d/δ`. -/
theorem norm_gram_sub_le (hP : Params n τ M σK σB σT) (hδ : 0 < δ) (hd : 0 ≤ d)
    {θ : Fin n → ℂ} (hL : ‖fderiv ℂ K θ‖ ≤ σK)
    (hX : ‖fderiv ℂ K' θ - fderiv ℂ K θ‖ ≤ n * d / δ)
    (hXt : ‖(tangentMat K' θ - tangentMat K θ)ᵀ‖ ≤ 2 * n * d / δ)
    (hs : (n : ℝ) * d / δ ≤ mSize M σK σB σT) :
    ‖gramMatrix K' θ - gramMatrix K θ‖ ≤ C_G n M σK σB σT * d / δ := by
  have hL' := FrameAux.norm_tangentMat_le (M := M) (σB := σB) (σT := σT) hL
  have hL4 := norm_transpose_tangentMat_le_four hP hL hXt hs
  have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hm0 : 0 ≤ mSize M σK σB σT := zero_le_one.trans one_le_mSize
  have hd0 : 0 ≤ (n : ℝ) * d / δ := div_nonneg (mul_nonneg hn0 hd) hδ.le
  have hdt0 : 0 ≤ 2 * (n : ℝ) * d / δ :=
    div_nonneg (mul_nonneg (mul_nonneg zero_le_two hn0) hd) hδ.le
  have hX' : ‖tangentMat K' θ - tangentMat K θ‖ ≤ n * d / δ := by
    rw [norm_tangentMat_sub]
    exact hX
  rw [gramMatrix_sub]
  calc ‖(tangentMat K' θ)ᵀ * (tangentMat K' θ - tangentMat K θ) +
        (tangentMat K' θ - tangentMat K θ)ᵀ * tangentMat K θ‖
      ≤ ‖(tangentMat K' θ)ᵀ * (tangentMat K' θ - tangentMat K θ)‖ +
        ‖(tangentMat K' θ - tangentMat K θ)ᵀ * tangentMat K θ‖ := norm_add_le _ _
    _ ≤ ‖(tangentMat K' θ)ᵀ‖ * ‖tangentMat K' θ - tangentMat K θ‖ +
        ‖(tangentMat K' θ - tangentMat K θ)ᵀ‖ * ‖tangentMat K θ‖ :=
        add_le_add (Matrix.linfty_opNorm_mul _ _) (Matrix.linfty_opNorm_mul _ _)
    _ ≤ (4 * n * mSize M σK σB σT) * (n * d / δ) + (2 * n * d / δ) * mSize M σK σB σT :=
        add_le_add (mul_le_mul hL4 hX' (norm_nonneg _) (by positivity))
          (mul_le_mul hXt hL' (norm_nonneg _) hdt0)
    _ = (4 * n * mSize M σK σB σT * n + 2 * n * mSize M σK σB σT) * d / δ := by ring
    _ ≤ C_G n M σK σB σT * d / δ :=
        div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_right (gram_coeff_le hP) hd) hδ.le

/-- Step `step:p2:pt-binv` (Neumann lemma `KAM.neumann_pointwise` for `G` and `G̃ - G`): on a set
where `G` is invertible with `|B| ≤ σ_B`, `|G̃ - G| ≤ C_G d/δ` and `𝔪 C_G d/δ ≤ 1/2`, the matrix
`G̃` is invertible, `|B̃| ≤ 2𝔪` and `|B̃ - B| ≤ C_B d/δ`. -/
theorem gram_inverse_perturb {s : Set (Fin n → ℂ)}
    (hG : ∀ θ ∈ s, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB)
    (hGd : ∀ θ ∈ s, ‖gramMatrix K' θ - gramMatrix K θ‖ ≤ C_G n M σK σB σT * d / δ)
    (hsm : mSize M σK σB σT * C_G n M σK σB σT * d / δ ≤ 1 / 2) :
    ∀ θ ∈ s, IsUnit (gramMatrix K' θ).det ∧ ‖(gramMatrix K' θ)⁻¹‖ ≤ 2 * mSize M σK σB σT ∧
      ‖(gramMatrix K' θ)⁻¹ - (gramMatrix K θ)⁻¹‖ ≤ C_B n M σK σB σT * d / δ := by
  have hm0 : 0 ≤ mSize M σK σB σT := zero_le_one.trans one_le_mSize
  have hsm' : mSize M σK σB σT * (C_G n M σK σB σT * d / δ) ≤ 1 / 2 := by
    rw [← mul_div_assoc, ← mul_assoc]
    exact hsm
  have hN := KAM.neumann_pointwise (A := gramMatrix K)
    (Δ := fun θ => gramMatrix K' θ - gramMatrix K θ) (s := s) hm0 hsm'
    (fun θ hθ => (Matrix.isUnit_iff_isUnit_det _).2 (hG θ hθ).1)
    (fun θ hθ => (hG θ hθ).2.trans σB_le_mSize) hGd
  intro θ hθ
  obtain ⟨h1, h2, h3⟩ := hN θ hθ
  simp only [add_sub_cancel] at h1 h2 h3
  refine ⟨(Matrix.isUnit_iff_isUnit_det _).1 h1, h2, h3.trans (le_of_eq ?_)⟩
  unfold C_B
  ring

end Gram

/-! ### Item (d): the normal frame (`step:p2:pt-n`) -/

section Normal

variable {n : ℕ} {τ M σK σB σT : ℝ}
  {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {δ d : ℝ}

/-- Step `step:p2:pt-n`: `|Ñ - N| ≤ |L̃ - L| |B̃| + |L| |B̃ - B| ≤ C_ΔN d/δ`. -/
theorem norm_normalMat_sub_le (hδ : 0 < δ) (hd : 0 ≤ d) {θ : Fin n → ℂ}
    (hL : ‖fderiv ℂ K θ‖ ≤ σK)
    (hX : ‖fderiv ℂ K' θ - fderiv ℂ K θ‖ ≤ n * d / δ)
    (hB' : ‖(gramMatrix K' θ)⁻¹‖ ≤ 2 * mSize M σK σB σT)
    (hBd : ‖(gramMatrix K' θ)⁻¹ - (gramMatrix K θ)⁻¹‖ ≤ C_B n M σK σB σT * d / δ) :
    ‖normalMat K' θ - normalMat K θ‖ ≤ C_DN n M σK σB σT * d / δ := by
  have hL' := FrameAux.norm_tangentMat_le (M := M) (σB := σB) (σT := σT) hL
  have hX' : ‖tangentMat K' θ - tangentMat K θ‖ ≤ n * d / δ := by
    rw [norm_tangentMat_sub]
    exact hX
  have hm0 : 0 ≤ mSize M σK σB σT := zero_le_one.trans one_le_mSize
  have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hd0 : 0 ≤ (n : ℝ) * d / δ := div_nonneg (mul_nonneg hn0 hd) hδ.le
  rw [normalMat_sub]
  calc ‖omegaZeroMatrix n * (tangentMat K' θ - tangentMat K θ) * (gramMatrix K' θ)⁻¹ +
        omegaZeroMatrix n * tangentMat K θ * ((gramMatrix K' θ)⁻¹ - (gramMatrix K θ)⁻¹)‖
      ≤ ‖omegaZeroMatrix n * (tangentMat K' θ - tangentMat K θ) * (gramMatrix K' θ)⁻¹‖ +
        ‖omegaZeroMatrix n * tangentMat K θ * ((gramMatrix K' θ)⁻¹ - (gramMatrix K θ)⁻¹)‖ :=
        norm_add_le _ _
    _ ≤ ‖omegaZeroMatrix n * (tangentMat K' θ - tangentMat K θ)‖ * ‖(gramMatrix K' θ)⁻¹‖ +
        ‖omegaZeroMatrix n * tangentMat K θ‖ *
          ‖(gramMatrix K' θ)⁻¹ - (gramMatrix K θ)⁻¹‖ :=
        add_le_add (Matrix.linfty_opNorm_mul _ _) (Matrix.linfty_opNorm_mul _ _)
    _ = ‖tangentMat K' θ - tangentMat K θ‖ * ‖(gramMatrix K' θ)⁻¹‖ +
        ‖tangentMat K θ‖ * ‖(gramMatrix K' θ)⁻¹ - (gramMatrix K θ)⁻¹‖ := by
        rw [norm_omegaZeroMatrix_mul, norm_omegaZeroMatrix_mul]
    _ ≤ (n * d / δ) * (2 * mSize M σK σB σT) +
        mSize M σK σB σT * (C_B n M σK σB σT * d / δ) :=
        add_le_add (mul_le_mul hX' hB' (norm_nonneg _) hd0)
          (mul_le_mul hL' hBd (norm_nonneg _) hm0)
    _ = C_DN n M σK σB σT * d / δ := by
        unfold C_DN
        ring

/-- Step `step:p2:pt-n`: `|Ñ| ≤ 𝔪² + C_ΔN d/δ ≤ 2𝔪²`, given `C_ΔN d/δ ≤ 𝔪²`. -/
theorem norm_normalMat_le_two {θ : Fin n → ℂ} (hL : ‖fderiv ℂ K θ‖ ≤ σK)
    (hB : ‖(gramMatrix K θ)⁻¹‖ ≤ σB)
    (hN : ‖normalMat K' θ - normalMat K θ‖ ≤ C_DN n M σK σB σT * d / δ)
    (hs : C_DN n M σK σB σT * d / δ ≤ mSize M σK σB σT ^ 2) :
    ‖normalMat K' θ‖ ≤ 2 * mSize M σK σB σT ^ 2 := by
  have h0 := FrameAux.norm_normalMat_le (M := M) (σT := σT) hL hB
  calc ‖normalMat K' θ‖ = ‖normalMat K θ + (normalMat K' θ - normalMat K θ)‖ := by
        rw [add_sub_cancel]
    _ ≤ ‖normalMat K θ‖ + ‖normalMat K' θ - normalMat K θ‖ := norm_add_le _ _
    _ ≤ mSize M σK σB σT ^ 2 + mSize M σK σB σT ^ 2 := add_le_add h0 (hN.trans hs)
    _ = 2 * mSize M σK σB σT ^ 2 := by ring

end Normal

/-! ### Items (b), (c), (d) on the strip -/

section FrameItems

variable {n : ℕ} {τ M σK σB σT : ℝ}
  {K K' : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {r δ d : ℝ}

/-- Items (b), (c), (d) of `bp:p2:perturbation`, on `T_{r-δ}`. -/
theorem frame_items (hP : Params n τ M σK σB σT) (hδ : 0 < δ) (hδ1 : δ ≤ 1) (hd0 : 0 ≤ d)
    (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hDK : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK)
    (hG : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB)
    (hK' : DifferentiableOn ℂ K' (complexStrip n r))
    (hd : ∀ θ ∈ complexStrip n r, ‖K' θ - K θ‖ ≤ d)
    (hsmall : 2 * mSize M σK σB σT * C_DT n M σK σB σT * d / δ ^ 2 ≤ 1) :
    (∀ θ ∈ complexStrip n (r - δ), ‖fderiv ℂ K' θ - fderiv ℂ K θ‖ ≤ n * d / δ) ∧
    (∀ θ ∈ complexStrip n (r - δ), IsUnit (gramMatrix K' θ).det ∧
      ‖(gramMatrix K' θ)⁻¹‖ ≤ 2 * mSize M σK σB σT ∧
      ‖(gramMatrix K' θ)⁻¹ - (gramMatrix K θ)⁻¹‖ ≤ C_B n M σK σB σT * d / δ) ∧
    (∀ θ ∈ complexStrip n (r - δ), ‖normalMat K' θ - normalMat K θ‖ ≤ C_DN n M σK σB σT * d / δ ∧
      ‖normalMat K' θ‖ ≤ 2 * mSize M σK σB σT ^ 2) := by
  obtain ⟨hs1, hs2, hs3, -⟩ := perturbation_small hP hδ hδ1 hd0 hsmall
  have hb := norm_fderiv_sub_le hK hK' hd hδ
  have hbt := norm_transpose_tangentMat_sub_le hK hK' hd hδ
  have hsub : complexStrip n (r - δ) ⊆ complexStrip n r := complexStrip_mono (by linarith)
  have hGd : ∀ θ ∈ complexStrip n (r - δ),
      ‖gramMatrix K' θ - gramMatrix K θ‖ ≤ C_G n M σK σB σT * d / δ := fun θ hθ =>
    norm_gram_sub_le hP hδ hd0 (hDK θ (hsub hθ)) (hb θ hθ) (hbt θ hθ) hs1
  have hc := gram_inverse_perturb (fun θ hθ => hG θ (hsub hθ)) hGd hs2
  refine ⟨hb, hc, fun θ hθ => ?_⟩
  have hN := norm_normalMat_sub_le (M := M) (σB := σB) (σT := σT) hδ hd0 (hDK θ (hsub hθ))
    (hb θ hθ) (hc θ hθ).2.1 (hc θ hθ).2.2
  exact ⟨hN, norm_normalMat_le_two (hDK θ (hsub hθ)) (hG θ (hsub hθ)).2 hN hs3⟩

end FrameItems

end PerturbationAux

end KAM.Apost

end
