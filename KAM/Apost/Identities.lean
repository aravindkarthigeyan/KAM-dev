/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Hamiltonian
public import KAM.Torus.FrozenAgreement
public import KAM.Matrix.Calculus
import KAM.Matrix.Inverse

/-!
# Frame identities

Blueprint Part 2, Lemma `bp:p2:frame-identities` (`KAM.Apost.frame_identities`).
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix

namespace KAM.Apost

open KAM.Torus

section Algebra

variable {n : ℕ}

/-- `Ω₀ (Ω₀ M) = -M`. -/
theorem omega_mul_omega_mul {ι : Type*} [Fintype ι] (M : Matrix (Fin n ⊕ Fin n) ι ℂ) :
    omegaZeroMatrix n * (omegaZeroMatrix n * M) = -M := by
  rw [← Matrix.mul_assoc, omegaZeroMatrix_mul_self, Matrix.neg_mul, Matrix.one_mul]

variable {L : Matrix (Fin n ⊕ Fin n) (Fin n) ℂ} {B : Matrix (Fin n) (Fin n) ℂ}

/-- Step `step:p2:fi-products`: `Lᵀ Ω₀ N = -I` for `N = Ω₀ L B` with `Lᵀ L B = I`. -/
theorem alg_LtON (hLB : Lᵀ * L * B = 1) :
    Lᵀ * omegaZeroMatrix n * (omegaZeroMatrix n * L * B) = -1 := by
  simp only [Matrix.mul_assoc, omega_mul_omega_mul, Matrix.mul_neg]
  rw [← Matrix.mul_assoc, hLB]

/-- Step `step:p2:fi-products`: `Nᵀ Ω₀ L = I` for `N = Ω₀ L B` with `B Lᵀ L = I`, `Bᵀ = B`. -/
theorem alg_NtOL (hBL : B * (Lᵀ * L) = 1) (hB : Bᵀ = B) :
    (omegaZeroMatrix n * L * B)ᵀ * omegaZeroMatrix n * L = 1 := by
  simp only [Matrix.transpose_mul, omegaZeroMatrix_transpose, hB, Matrix.mul_neg, Matrix.neg_mul,
    Matrix.mul_assoc, omega_mul_omega_mul, neg_neg]
  exact hBL

/-- Step `step:p2:fi-products`: `Nᵀ Ω₀ N = B (Lᵀ Ω₀ L) B` for `N = Ω₀ L B`, `Bᵀ = B`. -/
theorem alg_NtON (hB : Bᵀ = B) :
    (omegaZeroMatrix n * L * B)ᵀ * omegaZeroMatrix n * (omegaZeroMatrix n * L * B) =
      B * (Lᵀ * omegaZeroMatrix n * L) * B := by
  simp only [Matrix.transpose_mul, omegaZeroMatrix_transpose, hB, Matrix.mul_neg, Matrix.neg_mul,
    Matrix.mul_assoc, omega_mul_omega_mul, neg_neg]

/-- Step `step:p2:fi-sym`: the block form of `Pᵀ Ω₀ P` for `P = (L N)`, `N = Ω₀ L B`. -/
theorem alg_PtOP (hLB : Lᵀ * L * B = 1) (hBL : B * (Lᵀ * L) = 1) (hB : Bᵀ = B) :
    (Matrix.fromCols L (omegaZeroMatrix n * L * B))ᵀ * omegaZeroMatrix n *
        Matrix.fromCols L (omegaZeroMatrix n * L * B) =
      Matrix.fromBlocks (Lᵀ * omegaZeroMatrix n * L) (-1) 1
        (B * (Lᵀ * omegaZeroMatrix n * L) * B) := by
  rw [Matrix.transpose_fromCols, Matrix.fromRows_mul, Matrix.fromRows_mul_fromCols,
    alg_LtON hLB, alg_NtOL hBL hB, alg_NtON hB]

/-- Step `step:p2:fi-sym`, subtracting `Ω₀`: `Pᵀ Ω₀ P - Ω₀ = diag(Lᵀ Ω₀ L, B (Lᵀ Ω₀ L) B)`. -/
theorem alg_symDefect (hLB : Lᵀ * L * B = 1) (hBL : B * (Lᵀ * L) = 1) (hB : Bᵀ = B) :
    (Matrix.fromCols L (omegaZeroMatrix n * L * B))ᵀ * omegaZeroMatrix n *
        Matrix.fromCols L (omegaZeroMatrix n * L * B) - omegaZeroMatrix n =
      Matrix.fromBlocks (Lᵀ * omegaZeroMatrix n * L) 0 0
        (B * (Lᵀ * omegaZeroMatrix n * L) * B) := by
  rw [alg_PtOP hLB hBL hB, sub_eq_iff_eq_add, omegaZeroMatrix, Matrix.fromBlocks_add]
  simp

variable {A : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ} {DE N Y : Matrix (Fin n ⊕ Fin n) (Fin n) ℂ}

/-- Step `step:p2:fi-domegak`: the derivative of `Lᵀ Ω₀ L` along `ω`, given
`∂_ω L = A L - DE` and `Aᵀ Ω₀ + Ω₀ A = 0`. -/
theorem alg_dLagrange (hA : Aᵀ * omegaZeroMatrix n + omegaZeroMatrix n * A = 0) :
    (A * L - DE)ᵀ * omegaZeroMatrix n * L + Lᵀ * omegaZeroMatrix n * (A * L - DE) =
      -(DEᵀ * omegaZeroMatrix n * L) - Lᵀ * omegaZeroMatrix n * DE := by
  have h1 : (A * L - DE)ᵀ * omegaZeroMatrix n * L + Lᵀ * omegaZeroMatrix n * (A * L - DE) =
      Lᵀ * (Aᵀ * omegaZeroMatrix n + omegaZeroMatrix n * A) * L -
        DEᵀ * omegaZeroMatrix n * L - Lᵀ * omegaZeroMatrix n * DE := by
    rw [Matrix.transpose_sub, Matrix.transpose_mul]
    simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_assoc]
    abel
  rw [h1, hA]
  simp

/-- Step `step:p2:fi-22`: `Lᵀ Ω₀ (A N - Y) = -(DE)ᵀ Ω₀ N`, given the differentiated identity
`(A L - DE)ᵀ Ω₀ N + Lᵀ Ω₀ Y = 0` and `Aᵀ Ω₀ + Ω₀ A = 0`. -/
theorem alg_LtOXN (hA : Aᵀ * omegaZeroMatrix n + omegaZeroMatrix n * A = 0)
    (h0 : (A * L - DE)ᵀ * omegaZeroMatrix n * N + Lᵀ * omegaZeroMatrix n * Y = 0) :
    Lᵀ * omegaZeroMatrix n * (A * N - Y) = -(DEᵀ * omegaZeroMatrix n * N) := by
  have hY : Lᵀ * omegaZeroMatrix n * Y = -((A * L - DE)ᵀ * omegaZeroMatrix n * N) :=
    eq_neg_of_add_eq_zero_right h0
  have h1 : Lᵀ * omegaZeroMatrix n * (A * N - Y) =
      Lᵀ * (Aᵀ * omegaZeroMatrix n + omegaZeroMatrix n * A) * N -
        DEᵀ * omegaZeroMatrix n * N := by
    rw [Matrix.mul_sub, hY, sub_neg_eq_add, Matrix.transpose_sub, Matrix.transpose_mul]
    simp only [Matrix.mul_add, Matrix.add_mul, Matrix.sub_mul, Matrix.mul_assoc]
    abel
  rw [h1, hA]
  simp

end Algebra

/-! ### Items (a), (b), (f): pointwise matrix algebra -/

section Pointwise

variable {n : ℕ} (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
  (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) {θ : Fin n → ℂ}

/-- `G⁻¹` is symmetric (`G = Lᵀ L` is). -/
theorem gram_inv_transpose : ((gramMatrix K θ)⁻¹)ᵀ = (gramMatrix K θ)⁻¹ := by
  rw [Matrix.transpose_nonsing_inv, gramMatrix_eq_tangentMat_transpose_mul]
  simp

theorem tangent_gram_inv (hG : IsUnit (gramMatrix K θ).det) :
    (tangentMat K θ)ᵀ * tangentMat K θ * (gramMatrix K θ)⁻¹ = 1 := by
  rw [← gramMatrix_eq_tangentMat_transpose_mul]
  exact gramMatrix_mul_inv K hG

theorem gram_inv_tangent (hG : IsUnit (gramMatrix K θ).det) :
    (gramMatrix K θ)⁻¹ * ((tangentMat K θ)ᵀ * tangentMat K θ) = 1 := by
  rw [← gramMatrix_eq_tangentMat_transpose_mul]
  exact inv_gramMatrix_mul K hG

/-- Step `step:p2:fi-products`, first identity of (a): `Lᵀ Ω₀ N = -I`. -/
theorem fi_LtON (hG : IsUnit (gramMatrix K θ).det) :
    (tangentMat K θ)ᵀ * omegaZeroMatrix n * normalMat K θ = -1 :=
  alg_LtON (tangent_gram_inv K hG)

/-- Step `step:p2:fi-products`, second identity of (a): `Nᵀ Ω₀ L = I`. -/
theorem fi_NtOL (hG : IsUnit (gramMatrix K θ).det) :
    (normalMat K θ)ᵀ * omegaZeroMatrix n * tangentMat K θ = 1 :=
  alg_NtOL (gram_inv_tangent K hG) (gram_inv_transpose K)

/-- Step `step:p2:fi-products`, third identity of (a): `Nᵀ Ω₀ N = B Ω_K B`. -/
theorem fi_NtON :
    (normalMat K θ)ᵀ * omegaZeroMatrix n * normalMat K θ =
      (gramMatrix K θ)⁻¹ * lagrangeMat K θ * (gramMatrix K θ)⁻¹ :=
  alg_NtON (gram_inv_transpose K)

/-- Step `step:p2:fi-sym`, first half of (b): `Pᵀ Ω₀ P = Ω₀ + E_sym` (the definition of
`E_sym`). -/
theorem fi_PtOP : (frameMat K θ)ᵀ * omegaZeroMatrix n * frameMat K θ =
    omegaZeroMatrix n + symDefect K θ := by
  rw [symDefect]
  abel

/-- Step `step:p2:fi-sym`, second half of (b): `E_sym = diag(Ω_K, B Ω_K B)`. -/
theorem fi_symDefect (hG : IsUnit (gramMatrix K θ).det) :
    symDefect K θ = Matrix.fromBlocks (lagrangeMat K θ) 0 0
      ((gramMatrix K θ)⁻¹ * lagrangeMat K θ * (gramMatrix K θ)⁻¹) :=
  alg_symDefect (tangent_gram_inv K hG) (gram_inv_tangent K hG) (gram_inv_transpose K)

/-- Step `step:p2:fi-q`, first half of (f): `Q P = I - Ω₀ E_sym`. -/
theorem fi_QP : reducer K θ * frameMat K θ = 1 - omegaZeroMatrix n * symDefect K θ := by
  have h1 : reducer K θ * frameMat K θ =
      -(omegaZeroMatrix n * ((frameMat K θ)ᵀ * omegaZeroMatrix n * frameMat K θ)) := by
    simp only [reducer, Matrix.neg_mul, Matrix.mul_assoc]
  rw [h1, fi_PtOP, Matrix.mul_add, omegaZeroMatrix_mul_self]
  simp [sub_eq_add_neg, add_comm]

/-- Step `step:p2:fi-q`, second half of (f): `Q E = -η`. -/
theorem fi_QE : reducer K θ *ᵥ sumVec n (invarianceError h K ω θ) = -eta h K ω θ := by
  rw [reducer, eta, Matrix.neg_mulVec]

end Pointwise


/-! ### Items (c), (d): the derivatives of `L` and `Ω_K` along `ω` -/

section Derivatives

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {r : ℝ} {θ : Fin n → ℂ}

/-- The entries of `colMat U`: column `j` is `sumVec (U e_j)`. -/
theorem colMat_apply {q : ℕ} (U : (Fin q → ℂ) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ)) (s : Fin n ⊕ Fin n)
    (j : Fin q) : colMat U s j = sumVec n (U (Pi.single j 1)) s := by
  have h := congrFun (colMat_mulVec U (Pi.single j 1)) s
  simpa [Matrix.mulVec_single_one] using h

/-- A directional derivative of a holomorphic `K` is differentiable on the strip. -/
theorem differentiableAt_fderiv_apply (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hθ : θ ∈ complexStrip n r) (v : Fin n → ℂ) :
    DifferentiableAt ℂ (fun y => fderiv ℂ K y v) θ :=
  ((holomorphic_regularity (isOpen_complexStrip n r) hK).1.differentiableAt
    ((isOpen_complexStrip n r).mem_nhds hθ)).clm_apply (differentiableAt_const v)

/-- `X_h ∘ K` is differentiable at the points of the strip. -/
theorem differentiableAt_ham_comp (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) (hθ : θ ∈ complexStrip n r) :
    DifferentiableAt ℂ (fun y => hamiltonianVectorFieldℂ h (K y)) θ :=
  ((differentiableOn_ham hS).differentiableAt (hS.isOpen.mem_nhds (hK𝔅 θ hθ))).comp θ
    (hK.differentiableAt ((isOpen_complexStrip n r).mem_nhds hθ))

/-- The invariance error is differentiable at the points of the strip. -/
theorem differentiableAt_invarianceError (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) (hθ : θ ∈ complexStrip n r) :
    DifferentiableAt ℂ (invarianceError h K ω) θ :=
  (differentiableAt_ham_comp hS hK hK𝔅 hθ).sub (differentiableAt_fderiv_apply hK hθ _)

/-- The entries of `D L v`: column `j` is the derivative of the `j`-th column of `DK`. -/
theorem fderiv_tangentMat_apply (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hθ : θ ∈ complexStrip n r) (v : Fin n → ℂ) (s : Fin n ⊕ Fin n) (j : Fin n) :
    fderiv ℂ (tangentMat K) θ v s j =
      sumVec n (fderiv ℂ (fun y => fderiv ℂ K y (Pi.single j 1)) θ v) s := by
  have hL : DifferentiableAt ℂ (tangentMat K) θ :=
    (differentiableOn_tangentMat hK).differentiableAt ((isOpen_complexStrip n r).mem_nhds hθ)
  rw [← fderiv_matrix_apply hL s j v]
  have hfun : (fun y => tangentMat K y s j) =
      fun y => sumVec n (fderiv ℂ K y (Pi.single j 1)) s :=
    funext fun y => tangentMat_apply K y s j
  rw [hfun, fderiv_sumVec_coord (differentiableAt_fderiv_apply hK hθ _) s v]

/-- Step `step:p2:fi-dl`: `∂_ω ∂_{θ_j} K = ∂_{θ_j}(X_h ∘ K - E)`, by the symmetry of mixed partial
derivatives and `L ω = X_h ∘ K - E`. -/
theorem fderiv_tangent_column_omega (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hθ : θ ∈ complexStrip n r) (j : Fin n) :
    fderiv ℂ (fun y => fderiv ℂ K y (Pi.single j 1)) θ (fun l => (ω l : ℂ)) =
      fderiv ℂ (fun y => hamiltonianVectorFieldℂ h (K y) - invarianceError h K ω y) θ
        (Pi.single j 1) := by
  rw [fderiv_apply_comm_of_differentiableOn (isOpen_complexStrip n r) hK hθ]
  have hfun : (fun y => fderiv ℂ K y (fun l => (ω l : ℂ))) =
      fun y => hamiltonianVectorFieldℂ h (K y) - invarianceError h K ω y :=
    funext fun y => by simp [invarianceError]
  rw [hfun]

/-- Step `step:p2:fi-dl`, item (c): `∂_ω L = A L - DE`. -/
theorem fi_dL (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) (hθ : θ ∈ complexStrip n r) :
    fderiv ℂ (tangentMat K) θ (fun l => (ω l : ℂ)) =
      linMat h K θ * tangentMat K θ - errDerivMat h K ω θ := by
  have hX := (differentiableOn_ham hS).differentiableAt (hS.isOpen.mem_nhds (hK𝔅 θ hθ))
  have hKd := hK.differentiableAt ((isOpen_complexStrip n r).mem_nhds hθ)
  have hcomp : fderiv ℂ (fun y => hamiltonianVectorFieldℂ h (K y)) θ =
      (fderiv ℂ (hamiltonianVectorFieldℂ h) (K θ)).comp (fderiv ℂ K θ) :=
    (hX.hasFDerivAt.comp θ hKd.hasFDerivAt).fderiv
  ext s j
  have hA : sumVec n (fderiv ℂ (hamiltonianVectorFieldℂ h) (K θ) (fderiv ℂ K θ (Pi.single j 1)))
      = linMat h K θ *ᵥ fun t => tangentMat K θ t j := by
    rw [linMat, ← sqMat_mulVec]
    congr 1
  rw [Matrix.sub_apply, fderiv_tangentMat_apply hK hθ, fderiv_tangent_column_omega (h := h) hK hθ j,
    fderiv_fun_sub (differentiableAt_ham_comp hS hK hK𝔅 hθ)
      (differentiableAt_invarianceError hS hK hK𝔅 hθ), hcomp, errDerivMat, colMat_apply]
  simp only [_root_.sub_apply, ContinuousLinearMap.comp_apply, map_sub,
    Pi.sub_apply, hA]
  rfl

/-- Step `step:p2:fi-domegak`, item (d): `∂_ω Ω_K = -(DE)ᵀ Ω₀ L - Lᵀ Ω₀ DE`. -/
theorem fi_dLagrange (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK : DifferentiableOn ℂ K (complexStrip n r))
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅) (hθ : θ ∈ complexStrip n r) :
    fderiv ℂ (lagrangeMat K) θ (fun l => (ω l : ℂ)) =
      -((errDerivMat h K ω θ)ᵀ * omegaZeroMatrix n * tangentMat K θ) -
        (tangentMat K θ)ᵀ * omegaZeroMatrix n * errDerivMat h K ω θ := by
  have hL : DifferentiableAt ℂ (tangentMat K) θ :=
    (differentiableOn_tangentMat hK).differentiableAt ((isOpen_complexStrip n r).mem_nhds hθ)
  have hLt : DifferentiableAt ℂ (fun y => (tangentMat K y)ᵀ) θ := hL.matrix_transpose
  have hLtO : DifferentiableAt ℂ (fun y => (tangentMat K y)ᵀ * omegaZeroMatrix n) θ :=
    hLt.matrix_mul (differentiableAt_const _)
  have hfun : lagrangeMat K =
      fun y => ((tangentMat K y)ᵀ * omegaZeroMatrix n) * tangentMat K y := rfl
  have hA : (linMat h K θ)ᵀ * omegaZeroMatrix n + omegaZeroMatrix n * linMat h K θ = 0 :=
    (ham_symplectic hS (K θ) (hK𝔅 θ hθ)).2.2
  rw [hfun, fderiv_matrix_mul_apply hLtO hL, fderiv_matrix_mul_const_apply hLt,
    fderiv_matrix_transpose_apply, fi_dL hS hK hK𝔅 hθ]
  exact alg_dLagrange hA

end Derivatives

end KAM.Apost

end
