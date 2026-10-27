/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Calculus.FDeriv.Bilinear
public import Mathlib.Analysis.Matrix.Normed
public import KAM.Matrix.Norms
import Mathlib.Analysis.Calculus.FDeriv.Add
import Mathlib.Tactic.Linarith

/-!
# Calculus of matrix-valued maps

Mathlib has a product rule for functions into a normed ring, hence for square matrices, but none
for rectangular matrices. This file derives it from
`ContinuousLinearMap.hasFDerivAt_of_bilinear`, applied to the continuous bilinear maps
`KAM.matMulCLM` (matrix product) and `KAM.matMulVecCLM` (matrix times vector). Matrices carry the
row-sum operator norm of `open scoped Matrix.Norms.Operator`, as in `KAM/Matrix/Norms.lean`.

For maps `A : E → Matrix l m ℂ` and `B : E → Matrix m n ℂ` on a complex normed space `E`:

* `HasFDerivAt.matrix_mul`, `DifferentiableAt.matrix_mul`, `DifferentiableOn.matrix_mul` and
  `fderiv_matrix_mul_apply`:
  `D (A B) v = (D A v) B + A (D B v)`;
* `HasFDerivAt.matrix_mulVec` and `fderiv_matrix_mulVec_apply`:
  `D (A u) v = (D A v) u + A (D u v)`;
* `HasFDerivAt.matrix_transpose` and `fderiv_matrix_transpose_apply`: `D (Aᵀ) v = (D A v)ᵀ`
  (without any differentiability hypothesis);
* `HasFDerivAt.matrix_apply` and `fderiv_matrix_apply`: the entries of `D A v` are the derivatives
  of the entries `y ↦ A y i j`;
* `fderiv_matrix_const_mul_apply` and `fderiv_matrix_mul_const_apply`: the same rules for a
  constant factor.

For instance, the product and transpose rules give
`D (Lᵀ Ω₀ L) v = (D L v)ᵀ Ω₀ L + Lᵀ Ω₀ (D L v)`, the derivative of the Lagrangian matrix of
Part 2.

No derivative norm of a matrix-valued map is stated here: under the operator-norm scope the
instance `Norm (E →L[ℂ] Matrix l m ℂ)` does not synthesize, so such bounds go through entries or
through the maps of `KAM/Torus/Basic.lean`.
-/

@[expose] public noncomputable section

open Matrix
open scoped Matrix.Norms.Operator

namespace KAM

/-! ### The bilinear and linear maps -/

section Maps

variable {l m n : Type*} [Fintype l] [Fintype m] [Fintype n]

/-- Matrix multiplication as a continuous bilinear map, for the row-sum operator norm. -/
def matMulCLM : Matrix l m ℂ →L[ℂ] Matrix m n ℂ →L[ℂ] Matrix l n ℂ :=
  LinearMap.mkContinuous₂
    (LinearMap.mk₂ ℂ (fun A B => A * B) Matrix.add_mul (fun c A B => Matrix.smul_mul c A B)
      Matrix.mul_add (fun c A B => Matrix.mul_smul A c B))
    1 fun A B => by simpa using Matrix.linfty_opNorm_mul A B

@[simp] theorem matMulCLM_apply (A : Matrix l m ℂ) (B : Matrix m n ℂ) :
    matMulCLM A B = A * B := rfl

/-- Matrix-vector multiplication as a continuous bilinear map, for the row-sum operator norm on
matrices and the max norm on vectors. -/
def matMulVecCLM : Matrix l m ℂ →L[ℂ] (m → ℂ) →L[ℂ] (l → ℂ) :=
  LinearMap.mkContinuous₂
    (LinearMap.mk₂ ℂ (fun A v => A *ᵥ v) Matrix.add_mulVec (fun c A v => Matrix.smul_mulVec c A v)
      Matrix.mulVec_add (fun c A v => Matrix.mulVec_smul A c v))
    1 fun A v => by simpa using Matrix.linfty_opNorm_mulVec A v

@[simp] theorem matMulVecCLM_apply (A : Matrix l m ℂ) (v : m → ℂ) :
    matMulVecCLM A v = A *ᵥ v := rfl

/-- The entry `(i, j)` as a continuous linear functional. -/
def matEntryCLM (i : l) (j : m) : Matrix l m ℂ →L[ℂ] ℂ :=
  LinearMap.mkContinuous (Matrix.entryLinearMap ℂ ℂ i j) 1 fun A => by
    simpa using norm_entry_le A i j

/-- Right multiplication by a fixed matrix as a continuous linear map. -/
def matMulRightCLM (B : Matrix m n ℂ) : Matrix l m ℂ →L[ℂ] Matrix l n ℂ :=
  LinearMap.mkContinuous
    { toFun := fun A => A * B
      map_add' := fun A A' => Matrix.add_mul A A' B
      map_smul' := fun c A => Matrix.smul_mul c A B } ‖B‖ fun A => by
    simpa [mul_comm] using Matrix.linfty_opNorm_mul A B

@[simp] theorem matMulRightCLM_apply (B : Matrix m n ℂ) (A : Matrix l m ℂ) :
    matMulRightCLM B A = A * B := rfl

/-- Matrix-vector multiplication by a fixed vector as a continuous linear map in the matrix. -/
def matMulVecRightCLM (v : m → ℂ) : Matrix l m ℂ →L[ℂ] (l → ℂ) :=
  LinearMap.mkContinuous
    { toFun := fun A => A *ᵥ v
      map_add' := fun A A' => Matrix.add_mulVec A A' v
      map_smul' := fun c A => Matrix.smul_mulVec c A v } ‖v‖ fun A => by
    simpa [mul_comm] using Matrix.linfty_opNorm_mulVec A v

@[simp] theorem matMulVecRightCLM_apply (v : m → ℂ) (A : Matrix l m ℂ) :
    matMulVecRightCLM v A = A *ᵥ v := rfl

@[simp] theorem matEntryCLM_apply (i : l) (j : m) (A : Matrix l m ℂ) :
    matEntryCLM i j A = A i j := rfl

/-- Transposition as a continuous linear equivalence of matrix spaces. -/
def matTransposeCLE : Matrix l m ℂ ≃L[ℂ] Matrix m l ℂ :=
  (Matrix.transposeLinearEquiv l m ℂ ℂ).toContinuousLinearEquiv

@[simp] theorem matTransposeCLE_apply (A : Matrix l m ℂ) : matTransposeCLE A = Aᵀ := rfl

/-- Transposition as a continuous linear map of matrix spaces. -/
def matTransposeCLM : Matrix l m ℂ →L[ℂ] Matrix m l ℂ := matTransposeCLE.toContinuousLinearMap

@[simp] theorem matTransposeCLM_apply (A : Matrix l m ℂ) : matTransposeCLM A = Aᵀ := rfl

end Maps


/-! ### Product, matrix-vector product, transpose and entries -/

section Rules

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {l m n : Type*} [Fintype l]
  [Fintype m] [Fintype n] {x : E}

/-- Product rule for rectangular matrix-valued maps: the derivative of `y ↦ A y * B y` is
`v ↦ (D A v) B + A (D B v)`. -/
theorem _root_.HasFDerivAt.matrix_mul {A : E → Matrix l m ℂ} {B : E → Matrix m n ℂ}
    {A' : E →L[ℂ] Matrix l m ℂ} {B' : E →L[ℂ] Matrix m n ℂ} (hA : HasFDerivAt A A' x)
    (hB : HasFDerivAt B B' x) :
    HasFDerivAt (fun y => A y * B y)
      ((matMulCLM (A x)).comp B' + (matMulRightCLM (B x)).comp A') x := by
  refine (matMulCLM.hasFDerivAt_of_bilinear hA hB).congr_fderiv ?_
  ext v : 1
  rfl

theorem _root_.DifferentiableWithinAt.matrix_mul {A : E → Matrix l m ℂ} {B : E → Matrix m n ℂ}
    {s : Set E} (hA : DifferentiableWithinAt ℂ A s x) (hB : DifferentiableWithinAt ℂ B s x) :
    DifferentiableWithinAt ℂ (fun y => A y * B y) s x :=
  (matMulCLM.hasFDerivWithinAt_of_bilinear hA.hasFDerivWithinAt hB.hasFDerivWithinAt
    ).differentiableWithinAt

theorem _root_.DifferentiableAt.matrix_mul {A : E → Matrix l m ℂ} {B : E → Matrix m n ℂ}
    (hA : DifferentiableAt ℂ A x) (hB : DifferentiableAt ℂ B x) :
    DifferentiableAt ℂ (fun y => A y * B y) x :=
  (hA.hasFDerivAt.matrix_mul hB.hasFDerivAt).differentiableAt

theorem _root_.DifferentiableOn.matrix_mul {A : E → Matrix l m ℂ} {B : E → Matrix m n ℂ}
    {s : Set E} (hA : DifferentiableOn ℂ A s) (hB : DifferentiableOn ℂ B s) :
    DifferentiableOn ℂ (fun y => A y * B y) s :=
  fun y hy => (hA y hy).matrix_mul (hB y hy)

/-- The derivative of a product of matrices, applied to a direction `v`:
`D (A B) v = (D A v) B + A (D B v)`. -/
theorem fderiv_matrix_mul_apply {A : E → Matrix l m ℂ} {B : E → Matrix m n ℂ}
    (hA : DifferentiableAt ℂ A x) (hB : DifferentiableAt ℂ B x) (v : E) :
    fderiv ℂ (fun y => A y * B y) x v = fderiv ℂ A x v * B x + A x * fderiv ℂ B x v := by
  rw [(hA.hasFDerivAt.matrix_mul hB.hasFDerivAt).fderiv]
  simp [add_comm]

/-- Left multiplication by a constant matrix: `D (C B) v = C (D B v)`. -/
theorem fderiv_matrix_const_mul_apply (C : Matrix l m ℂ) {B : E → Matrix m n ℂ}
    (hB : DifferentiableAt ℂ B x) (v : E) :
    fderiv ℂ (fun y => C * B y) x v = C * fderiv ℂ B x v := by
  rw [fderiv_matrix_mul_apply (differentiableAt_const C) hB]
  simp

/-- Right multiplication by a constant matrix: `D (A C) v = (D A v) C`. -/
theorem fderiv_matrix_mul_const_apply {A : E → Matrix l m ℂ} (hA : DifferentiableAt ℂ A x)
    (C : Matrix m n ℂ) (v : E) :
    fderiv ℂ (fun y => A y * C) x v = fderiv ℂ A x v * C := by
  rw [fderiv_matrix_mul_apply hA (differentiableAt_const C)]
  simp

/-- Product rule for a matrix-valued map times a vector-valued map: the derivative of
`y ↦ A y *ᵥ u y` is `v ↦ (D A v) *ᵥ u + A *ᵥ (D u v)`. -/
theorem _root_.HasFDerivAt.matrix_mulVec {A : E → Matrix l m ℂ} {u : E → m → ℂ}
    {A' : E →L[ℂ] Matrix l m ℂ} {u' : E →L[ℂ] m → ℂ} (hA : HasFDerivAt A A' x)
    (hu : HasFDerivAt u u' x) :
    HasFDerivAt (fun y => A y *ᵥ u y)
      ((matMulVecCLM (A x)).comp u' + (matMulVecRightCLM (u x)).comp A') x := by
  refine (matMulVecCLM.hasFDerivAt_of_bilinear hA hu).congr_fderiv ?_
  ext v : 1
  rfl

theorem _root_.DifferentiableWithinAt.matrix_mulVec {A : E → Matrix l m ℂ} {u : E → m → ℂ}
    {s : Set E} (hA : DifferentiableWithinAt ℂ A s x) (hu : DifferentiableWithinAt ℂ u s x) :
    DifferentiableWithinAt ℂ (fun y => A y *ᵥ u y) s x :=
  (matMulVecCLM.hasFDerivWithinAt_of_bilinear hA.hasFDerivWithinAt hu.hasFDerivWithinAt
    ).differentiableWithinAt

theorem _root_.DifferentiableAt.matrix_mulVec {A : E → Matrix l m ℂ} {u : E → m → ℂ}
    (hA : DifferentiableAt ℂ A x) (hu : DifferentiableAt ℂ u x) :
    DifferentiableAt ℂ (fun y => A y *ᵥ u y) x :=
  (hA.hasFDerivAt.matrix_mulVec hu.hasFDerivAt).differentiableAt

theorem _root_.DifferentiableOn.matrix_mulVec {A : E → Matrix l m ℂ} {u : E → m → ℂ}
    {s : Set E} (hA : DifferentiableOn ℂ A s) (hu : DifferentiableOn ℂ u s) :
    DifferentiableOn ℂ (fun y => A y *ᵥ u y) s :=
  fun y hy => (hA y hy).matrix_mulVec (hu y hy)

/-- The derivative of a matrix times a vector, applied to a direction `v`:
`D (A u) v = (D A v) u + A (D u v)`. -/
theorem fderiv_matrix_mulVec_apply {A : E → Matrix l m ℂ} {u : E → m → ℂ}
    (hA : DifferentiableAt ℂ A x) (hu : DifferentiableAt ℂ u x) (v : E) :
    fderiv ℂ (fun y => A y *ᵥ u y) x v = fderiv ℂ A x v *ᵥ u x + A x *ᵥ fderiv ℂ u x v := by
  rw [(hA.hasFDerivAt.matrix_mulVec hu.hasFDerivAt).fderiv]
  simp [add_comm]

/-- The transpose of a differentiable matrix-valued map is differentiable, with derivative
`v ↦ (D A v)ᵀ`. -/
theorem _root_.HasFDerivAt.matrix_transpose {A : E → Matrix l m ℂ} {A' : E →L[ℂ] Matrix l m ℂ}
    (hA : HasFDerivAt A A' x) :
    HasFDerivAt (fun y => (A y)ᵀ) ((matTransposeCLM (l := l) (m := m)).comp A') x :=
  (matTransposeCLM (l := l) (m := m)).hasFDerivAt.comp x hA

theorem _root_.DifferentiableWithinAt.matrix_transpose {A : E → Matrix l m ℂ} {s : Set E}
    (hA : DifferentiableWithinAt ℂ A s x) : DifferentiableWithinAt ℂ (fun y => (A y)ᵀ) s x :=
  (matTransposeCLM (l := l) (m := m)).differentiableAt.comp_differentiableWithinAt x hA

theorem _root_.DifferentiableAt.matrix_transpose {A : E → Matrix l m ℂ}
    (hA : DifferentiableAt ℂ A x) : DifferentiableAt ℂ (fun y => (A y)ᵀ) x :=
  hA.hasFDerivAt.matrix_transpose.differentiableAt

theorem _root_.DifferentiableOn.matrix_transpose {A : E → Matrix l m ℂ} {s : Set E}
    (hA : DifferentiableOn ℂ A s) : DifferentiableOn ℂ (fun y => (A y)ᵀ) s :=
  fun y hy => (hA y hy).matrix_transpose

/-- `D (Aᵀ) v = (D A v)ᵀ`; no differentiability hypothesis is needed, because transposition is
a continuous linear equivalence. -/
theorem fderiv_matrix_transpose_apply (A : E → Matrix l m ℂ) (x v : E) :
    fderiv ℂ (fun y => (A y)ᵀ) x v = (fderiv ℂ A x v)ᵀ := by
  by_cases hA : DifferentiableAt ℂ A x
  · rw [hA.hasFDerivAt.matrix_transpose.fderiv]
    rfl
  · have hAt : ¬ DifferentiableAt ℂ (fun y => (A y)ᵀ) x := fun h => hA (by
      simpa using h.matrix_transpose)
    rw [fderiv_zero_of_not_differentiableAt hA, fderiv_zero_of_not_differentiableAt hAt]
    simp

/-- The `(i, j)` entry of a differentiable matrix-valued map is differentiable, with derivative
`v ↦ (D A v) i j`. -/
theorem _root_.HasFDerivAt.matrix_apply {A : E → Matrix l m ℂ} {A' : E →L[ℂ] Matrix l m ℂ}
    (hA : HasFDerivAt A A' x) (i : l) (j : m) :
    HasFDerivAt (fun y => A y i j) ((matEntryCLM i j).comp A') x :=
  (matEntryCLM i j).hasFDerivAt.comp x hA

theorem _root_.DifferentiableAt.matrix_apply {A : E → Matrix l m ℂ}
    (hA : DifferentiableAt ℂ A x) (i : l) (j : m) :
    DifferentiableAt ℂ (fun y => A y i j) x :=
  (hA.hasFDerivAt.matrix_apply i j).differentiableAt

/-- The entries of the derivative are the derivatives of the entries:
`(D A v) i j = D (y ↦ A y i j) v`. -/
theorem fderiv_matrix_apply {A : E → Matrix l m ℂ} (hA : DifferentiableAt ℂ A x) (i : l) (j : m)
    (v : E) : fderiv ℂ (fun y => A y i j) x v = fderiv ℂ A x v i j := by
  rw [(hA.hasFDerivAt.matrix_apply i j).fderiv]
  rfl

end Rules

end KAM

end
