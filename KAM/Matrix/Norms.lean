/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Matrix.Normed
public import Mathlib.Data.Matrix.Block
public import Mathlib.Data.Matrix.ColumnRowPartitioned
public import KAM.Frozen.Defs.OmegaZero
import Mathlib.Tactic.Linarith
import Mathlib.Topology.Algebra.Module.FiniteDimension

/-!
# Operator norms, blocks and the matrix `Ω₀`

Blueprint Part 1, "Matrices". Vectors carry the max norm and matrices the operator norm it
induces, which is the maximum row sum (`Matrix.linfty_opNorm_def`). The norm on matrices is the
one of `open scoped Matrix.Norms.Operator`, the one used by `KAM/Matrix/Neumann.lean`.

* `KAM.matrix_operator_norm_rowSum` (`step:p1:opn-rowsum`; built from `KAM.isGreatest_norm_mulVec`
  and `KAM.norm_toContinuousLinearMap_mulVecLin`): the supremum of `‖M v‖` over `‖v‖ ≤ 1` is
  attained and equals `‖M‖`, the largest row sum; it is also the norm of the associated continuous
  linear map.
* `KAM.matrix_operator_norm_blocks` (`step:p1:opn-blocks`; from `KAM.norm_fromBlocks_le`): the
  norm of a block matrix.
* `KAM.matrix_operator_norm_omegaZero` (`step:p1:opn-omega`; about `KAM.omegaZeroMatrix`):
  `Ω₀ = (0 -I; I 0)`, indexed by `Fin n ⊕ Fin n`; the identification of `ℂⁿ × ℂⁿ` with
  `Fin n ⊕ Fin n → ℂ` is `Equiv.sumArrowEquivProdArrow`.
* `KAM.operator_norms` bundles the three steps (`bp:p1:operator-norms`).
* `KAM.matrix_norms` (`bp:p1:matrix-norms`): products (`KAM.matrix_norm_products`), transposes
  (`KAM.matrix_norm_transpose`), `Ω₀ M`, `M Ω₀` and stacked blocks (`KAM.matrix_norm_signed`).

All index types are finite types; `Fin p` and `Fin q` are the case of `p × q` matrices.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator NNReal

namespace KAM

/-! ### Row sums (`step:p1:opn-rowsum`) -/

section RowSums

variable {m n : Type*} [Fintype m] [Fintype n]

/-- A bound for the matrix norm is the same as a bound for every absolute row sum. The
nonnegativity of the bound covers a matrix with no rows. -/
theorem norm_le_iff_forall_rowSum {M : Matrix m n ℂ} {B : ℝ} (hB : 0 ≤ B) :
    ‖M‖ ≤ B ↔ ∀ i, ∑ j, ‖M i j‖ ≤ B := by
  lift B to ℝ≥0 using hB
  rw [Matrix.linfty_opNorm_def, NNReal.coe_le_coe, Finset.sup_le_iff]
  refine forall_congr' fun i => ?_
  simp only [Finset.mem_univ, true_implies, ← NNReal.coe_le_coe, NNReal.coe_sum, coe_nnnorm]

/-- Every absolute row sum is at most the matrix norm. -/
theorem rowSum_le_norm (M : Matrix m n ℂ) (i : m) : ∑ j, ‖M i j‖ ≤ ‖M‖ :=
  (norm_le_iff_forall_rowSum (norm_nonneg M)).1 le_rfl i

/-- Every entry is at most the matrix norm. -/
theorem norm_entry_le (M : Matrix m n ℂ) (i : m) (j : n) : ‖M i j‖ ≤ ‖M‖ :=
  (Finset.single_le_sum (f := fun j => ‖M i j‖) (fun _ _ => norm_nonneg _)
    (Finset.mem_univ j)).trans (rowSum_le_norm M i)

/-- The matrix norm is the largest row sum. -/
theorem norm_eq_iSup_rowSum (M : Matrix m n ℂ) : ‖M‖ = ⨆ i, ∑ j, ‖M i j‖ := by
  have hnonneg : 0 ≤ ⨆ i, ∑ j, ‖M i j‖ := Real.iSup_nonneg fun i => Finset.sum_nonneg
    fun _ _ => norm_nonneg _
  refine le_antisymm ((norm_le_iff_forall_rowSum hnonneg).2 fun i => ?_) ?_
  · exact le_ciSup (f := fun i => ∑ j, ‖M i j‖) (Set.finite_range _).bddAbove i
  · exact Real.iSup_le (fun i => rowSum_le_norm M i) (norm_nonneg M)

/-- If the matrix has a row, the largest row sum is attained by a row. -/
theorem exists_rowSum_eq_norm [Nonempty m] (M : Matrix m n ℂ) :
    ∃ i, ∑ j, ‖M i j‖ = ‖M‖ := by
  obtain ⟨i, -, hi⟩ := Finset.exists_max_image Finset.univ (fun i => ∑ j, ‖M i j‖)
    Finset.univ_nonempty
  refine ⟨i, le_antisymm (rowSum_le_norm M i) ?_⟩
  exact (norm_le_iff_forall_rowSum (Finset.sum_nonneg fun _ _ => norm_nonneg _)).2
    fun k => hi k (Finset.mem_univ k)

/-- Two matrices with the same absolute row sums have the same norm. -/
theorem norm_eq_of_rowSum_eq {m' : Type*} [Fintype m'] {M : Matrix m n ℂ} {M' : Matrix m' n ℂ}
    (e : m ≃ m') (h : ∀ i, ∑ j, ‖M' (e i) j‖ = ∑ j, ‖M i j‖) : ‖M'‖ = ‖M‖ := by
  refine le_antisymm ((norm_le_iff_forall_rowSum (norm_nonneg M)).2 fun i' => ?_)
    ((norm_le_iff_forall_rowSum (norm_nonneg M')).2 fun i => ?_)
  · have := h (e.symm i')
    rw [e.apply_symm_apply] at this
    rw [this]
    exact rowSum_le_norm M _
  · rw [← h i]
    exact rowSum_le_norm M' (e i)

omit [Fintype m] in
/-- The `i`-th entry of `M v` is at most the `i`-th absolute row sum when `‖v‖ ≤ 1`. -/
theorem norm_mulVec_apply_le_rowSum (M : Matrix m n ℂ) {v : n → ℂ} (hv : ‖v‖ ≤ 1) (i : m) :
    ‖(M.mulVec v) i‖ ≤ ∑ j, ‖M i j‖ := by
  rw [Matrix.mulVec, dotProduct]
  refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => ?_)
  rw [norm_mul]
  exact mul_le_of_le_one_right (norm_nonneg _) ((norm_le_pi_norm v j).trans hv)

omit [Fintype m] in
/-- The test vector of the blueprint: `v_j = conj (M i₀ j) / |M i₀ j|`, and `0` where
`M i₀ j = 0` (Lean's `x / 0 = 0` gives exactly this). -/
theorem exists_mulVec_apply_eq_rowSum (M : Matrix m n ℂ) (i₀ : m) :
    ∃ v : n → ℂ, ‖v‖ ≤ 1 ∧ (M.mulVec v) i₀ = ((∑ j, ‖M i₀ j‖ : ℝ) : ℂ) := by
  refine ⟨fun j => star (M i₀ j) / (‖M i₀ j‖ : ℂ), ?_, ?_⟩
  · refine (pi_norm_le_iff_of_nonneg zero_le_one).2 fun j => ?_
    by_cases h : M i₀ j = 0
    · simp [h]
    · have hn : (‖M i₀ j‖ : ℝ) ≠ 0 := norm_ne_zero_iff.2 h
      rw [norm_div, norm_star, Complex.norm_real, norm_norm, div_self hn]
  · rw [Matrix.mulVec, dotProduct, Complex.ofReal_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    by_cases h : M i₀ j = 0
    · simp [h]
    · have hn : (‖M i₀ j‖ : ℂ) ≠ 0 := by exact_mod_cast norm_ne_zero_iff.2 h
      rw [mul_div_assoc', Complex.star_def, Complex.mul_conj']
      field_simp

/-- The supremum of `‖M v‖` over `‖v‖ ≤ 1` is a maximum, equal to the matrix norm, that is,
to the largest row sum. -/
theorem isGreatest_norm_mulVec (M : Matrix m n ℂ) :
    IsGreatest ((fun v : n → ℂ => ‖M.mulVec v‖) '' Metric.closedBall 0 1) ‖M‖ := by
  refine ⟨?_, ?_⟩
  · rcases isEmpty_or_nonempty m with hm | hm
    · refine ⟨0, by simp, ?_⟩
      simp only [Matrix.mulVec_zero, norm_zero]
      exact (norm_le_iff_forall_rowSum le_rfl).2 (fun i => isEmptyElim i) |>.antisymm
        (norm_nonneg _) |>.symm
    · obtain ⟨i₀, hi₀⟩ := exists_rowSum_eq_norm M
      obtain ⟨v, hv, hMv⟩ := exists_mulVec_apply_eq_rowSum M i₀
      refine ⟨v, by simpa using hv, le_antisymm ?_ ?_⟩
      · exact (Matrix.linfty_opNorm_mulVec M v).trans
          (mul_le_of_le_one_right (norm_nonneg _) hv)
      · have hnn : 0 ≤ ∑ j, ‖M i₀ j‖ := Finset.sum_nonneg fun _ _ => norm_nonneg _
        calc ‖M‖ = ‖((∑ j, ‖M i₀ j‖ : ℝ) : ℂ)‖ := by
              rw [Complex.norm_real, Real.norm_of_nonneg hnn, hi₀]
          _ = ‖(M.mulVec v) i₀‖ := by rw [hMv]
          _ ≤ _ := norm_le_pi_norm (M.mulVec v) i₀
  · rintro _ ⟨v, hv, rfl⟩
    exact (Matrix.linfty_opNorm_mulVec M v).trans
      (mul_le_of_le_one_right (norm_nonneg _) (by simpa using hv))

/-- The matrix norm is the supremum of `‖M v‖` over `‖v‖ ≤ 1`. -/
theorem sSup_norm_mulVec_eq (M : Matrix m n ℂ) :
    sSup ((fun v : n → ℂ => ‖M.mulVec v‖) '' Metric.closedBall 0 1) = ‖M‖ :=
  (isGreatest_norm_mulVec M).csSup_eq

/-- The matrix norm is the operator norm of the linear map `v ↦ M v` for the max norms. -/
theorem norm_toContinuousLinearMap_mulVecLin (M : Matrix m n ℂ) :
    ‖LinearMap.toContinuousLinearMap (Matrix.mulVecLin M)‖ = ‖M‖ := by
  refine le_antisymm (ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg M) fun v => ?_) ?_
  · exact Matrix.linfty_opNorm_mulVec M v
  · obtain ⟨v, hv, hMv⟩ := (isGreatest_norm_mulVec M).1
    have hv' : ‖v‖ ≤ 1 := by simpa using hv
    calc ‖M‖ = ‖M.mulVec v‖ := hMv.symm
      _ = ‖LinearMap.toContinuousLinearMap (Matrix.mulVecLin M) v‖ := rfl
      _ ≤ ‖LinearMap.toContinuousLinearMap (Matrix.mulVecLin M)‖ * ‖v‖ :=
        ContinuousLinearMap.le_opNorm _ _
      _ ≤ _ := mul_le_of_le_one_right (norm_nonneg _) hv'

/-- A linear map `ℂⁿ → ℂᵐ`, such as a derivative, has the same operator norm as its matrix. -/
theorem norm_continuousLinearMap_eq_norm_toMatrix' [DecidableEq n]
    (L : (n → ℂ) →L[ℂ] (m → ℂ)) : ‖L‖ = ‖LinearMap.toMatrix' (L : (n → ℂ) →ₗ[ℂ] (m → ℂ))‖ := by
  rw [← norm_toContinuousLinearMap_mulVecLin]
  congr 1
  ext v i
  simp

end RowSums

/-! ### Blocks (`step:p1:opn-blocks`) -/

section Blocks

variable {l m n o : Type*} [Fintype l] [Fintype m] [Fintype n] [Fintype o]

/-- The norm of a block matrix is at most `max {‖A‖ + ‖B‖, ‖C‖ + ‖D‖}`: a row of the upper block
row is a row of `A` followed by the corresponding row of `B`, and similarly below. -/
theorem norm_fromBlocks_le (A : Matrix n l ℂ) (B : Matrix n m ℂ) (C : Matrix o l ℂ)
    (D : Matrix o m ℂ) :
    ‖Matrix.fromBlocks A B C D‖ ≤ max (‖A‖ + ‖B‖) (‖C‖ + ‖D‖) := by
  refine (norm_le_iff_forall_rowSum ((add_nonneg (norm_nonneg A) (norm_nonneg B)).trans
    (le_max_left _ _))).2 ?_
  rintro (i | i)
  · rw [Fintype.sum_sum_type]
    simp only [Matrix.fromBlocks_apply₁₁, Matrix.fromBlocks_apply₁₂]
    exact (add_le_add (rowSum_le_norm A i) (rowSum_le_norm B i)).trans (le_max_left _ _)
  · rw [Fintype.sum_sum_type]
    simp only [Matrix.fromBlocks_apply₂₁, Matrix.fromBlocks_apply₂₂]
    exact (add_le_add (rowSum_le_norm C i) (rowSum_le_norm D i)).trans (le_max_right _ _)

end Blocks

/-! ### The matrix `Ω₀` (`step:p1:opn-omega`) -/

section OmegaZero

variable {n : ℕ}

/-- The matrix `Ω₀ = (0 -I; I 0)` on `ℂⁿ × ℂⁿ = ℂ^{n ⊕ n}`; it represents the frozen `omegaZero`,
`Ω₀ (a, b) = (-b, a)`, see `omegaZeroMatrix_mulVec`. -/
def omegaZeroMatrix (n : ℕ) : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ :=
  Matrix.fromBlocks 0 (-1) 1 0

/-- The matrix `Ω₀` acts as the frozen map `omegaZero` on `ℂⁿ × ℂⁿ`, where
`(Equiv.sumArrowEquivProdArrow _ _ _).symm (a, b)` is the vector `(a, b)` indexed by `n ⊕ n`. -/
theorem omegaZeroMatrix_mulVec (u : (Fin n → ℂ) × (Fin n → ℂ)) :
    (omegaZeroMatrix n).mulVec ((Equiv.sumArrowEquivProdArrow _ _ _).symm u) =
      (Equiv.sumArrowEquivProdArrow _ _ _).symm (omegaZero u) := by
  obtain ⟨a, b⟩ := u
  have h := Matrix.fromBlocks_mulVec (0 : Matrix (Fin n) (Fin n) ℂ) (-1 : Matrix (Fin n) (Fin n) ℂ)
    (1 : Matrix (Fin n) (Fin n) ℂ) (0 : Matrix (Fin n) (Fin n) ℂ)
    ((Equiv.sumArrowEquivProdArrow _ _ _).symm (a, b))
  unfold omegaZeroMatrix
  rw [h]
  have hl : (Equiv.sumArrowEquivProdArrow _ _ _).symm (a, b) ∘ Sum.inl = a := rfl
  have hr : (Equiv.sumArrowEquivProdArrow _ _ _).symm (a, b) ∘ Sum.inr = b := rfl
  rw [hl, hr]
  ext (i | i) <;> simp [omegaZero, Matrix.neg_mulVec]

/-- `Ω₀² = -I` as maps: `Ω₀ (Ω₀ (a, b)) = (-a, -b)`. -/
theorem omegaZero_omegaZero (u : (Fin n → ℂ) × (Fin n → ℂ)) : omegaZero (omegaZero u) = -u := by
  obtain ⟨a, b⟩ := u
  simp [omegaZero]

/-- `Ω₀² = -I` as matrices. -/
theorem omegaZeroMatrix_mul_self : omegaZeroMatrix n * omegaZeroMatrix n = -1 := by
  unfold omegaZeroMatrix
  rw [Matrix.fromBlocks_multiply, ← Matrix.fromBlocks_one, Matrix.fromBlocks_neg]
  simp

/-- `Ω₀ᵀ = -Ω₀`. -/
theorem omegaZeroMatrix_transpose : (omegaZeroMatrix n).transpose = -omegaZeroMatrix n := by
  unfold omegaZeroMatrix
  rw [Matrix.fromBlocks_transpose, Matrix.fromBlocks_neg]
  simp

/-- Every row of `Ω₀` has exactly one nonzero entry, equal to `±1`, so its absolute row sum is
`1`. -/
theorem sum_norm_omegaZeroMatrix_apply (i : Fin n ⊕ Fin n) :
    ∑ j, ‖omegaZeroMatrix n i j‖ = 1 := by
  rw [Fintype.sum_sum_type]
  rcases i with i | i <;>
    simp [omegaZeroMatrix, Matrix.one_apply, Matrix.neg_apply, apply_ite norm]

/-- `‖Ω₀‖ = 1` in the max-row-sum norm (for `n ≥ 1`; the empty matrix has norm `0`). -/
theorem norm_omegaZeroMatrix (hn : 0 < n) : ‖omegaZeroMatrix n‖ = 1 := by
  have : Nonempty (Fin n ⊕ Fin n) := ⟨Sum.inl ⟨0, hn⟩⟩
  rw [norm_eq_iSup_rowSum]
  simp only [sum_norm_omegaZeroMatrix_apply, ciSup_const]

/-- `‖Ω₀‖ ≤ 1` holds for every `n`. -/
theorem norm_omegaZeroMatrix_le (n : ℕ) : ‖omegaZeroMatrix n‖ ≤ 1 :=
  (norm_le_iff_forall_rowSum zero_le_one).2 fun i => (sum_norm_omegaZeroMatrix_apply i).le

/-- The frozen map `Ω₀` preserves the max norm of `ℂⁿ × ℂⁿ`. -/
theorem norm_omegaZero (u : (Fin n → ℂ) × (Fin n → ℂ)) : ‖omegaZero u‖ = ‖u‖ := by
  simp [omegaZero, Prod.norm_def, max_comm]

end OmegaZero

/-! ### Operator norms (`bp:p1:operator-norms`) -/

/-- Blueprint `step:p1:opn-rowsum`. The supremum of `‖M v‖` over `‖v‖ ≤ 1` is attained and equals
`‖M‖`, which is `max_i ∑_j |M_ij|` and also the operator norm of the continuous linear map
`v ↦ M v`. -/
theorem matrix_operator_norm_rowSum :
    ∀ (p q : ℕ) (M : Matrix (Fin p) (Fin q) ℂ),
      IsGreatest ((fun v : Fin q → ℂ => ‖M.mulVec v‖) '' Metric.closedBall 0 1) ‖M‖ ∧
      ‖M‖ = ⨆ i, ∑ j, ‖M i j‖ ∧
      ‖LinearMap.toContinuousLinearMap (Matrix.mulVecLin M)‖ = ‖M‖ :=
  fun _ _ M => ⟨isGreatest_norm_mulVec M, norm_eq_iSup_rowSum M,
    norm_toContinuousLinearMap_mulVecLin M⟩

/-- Blueprint `step:p1:opn-blocks`. -/
theorem matrix_operator_norm_blocks :
    ∀ (a b c d : ℕ) (A : Matrix (Fin a) (Fin b) ℂ) (B : Matrix (Fin a) (Fin c) ℂ)
      (C : Matrix (Fin d) (Fin b) ℂ) (D : Matrix (Fin d) (Fin c) ℂ),
      ‖Matrix.fromBlocks A B C D‖ ≤ max (‖A‖ + ‖B‖) (‖C‖ + ‖D‖) :=
  fun _ _ _ _ A B C D => norm_fromBlocks_le A B C D

/-- Blueprint `step:p1:opn-omega`. `Ω₀` is the matrix of the frozen `omegaZero`, with `Ω₀ᵀ = -Ω₀`,
`Ω₀² = -I` and `‖Ω₀‖ = 1` (for `n ≥ 1`; the empty matrix has norm `0`). -/
theorem matrix_operator_norm_omegaZero :
    ∀ n : ℕ,
      (∀ u : (Fin n → ℂ) × (Fin n → ℂ), (omegaZeroMatrix n).mulVec
        ((Equiv.sumArrowEquivProdArrow _ _ _).symm u) =
          (Equiv.sumArrowEquivProdArrow _ _ _).symm (omegaZero u)) ∧
      (omegaZeroMatrix n).transpose = -omegaZeroMatrix n ∧
      omegaZeroMatrix n * omegaZeroMatrix n = -1 ∧
      (0 < n → ‖omegaZeroMatrix n‖ = 1) :=
  fun _ => ⟨omegaZeroMatrix_mulVec, omegaZeroMatrix_transpose, omegaZeroMatrix_mul_self,
    norm_omegaZeroMatrix⟩

/-- Blueprint `bp:p1:operator-norms`. For the max norms: the operator norm of a matrix is the
largest row sum; the block matrix `(A B; C D)` has norm at most `max {‖A‖ + ‖B‖, ‖C‖ + ‖D‖}`;
and `Ω₀` is the matrix of the frozen `omegaZero`, with `Ω₀ᵀ = -Ω₀`, `Ω₀² = -I`, `‖Ω₀‖ = 1`. The
`2n` rows and columns of `Ω₀` are indexed by `Fin n ⊕ Fin n`. -/
theorem operator_norms :
    (∀ (p q : ℕ) (M : Matrix (Fin p) (Fin q) ℂ),
      IsGreatest ((fun v : Fin q → ℂ => ‖M.mulVec v‖) '' Metric.closedBall 0 1) ‖M‖ ∧
      ‖M‖ = ⨆ i, ∑ j, ‖M i j‖ ∧
      ‖LinearMap.toContinuousLinearMap (Matrix.mulVecLin M)‖ = ‖M‖) ∧
    (∀ (a b c d : ℕ) (A : Matrix (Fin a) (Fin b) ℂ) (B : Matrix (Fin a) (Fin c) ℂ)
      (C : Matrix (Fin d) (Fin b) ℂ) (D : Matrix (Fin d) (Fin c) ℂ),
      ‖Matrix.fromBlocks A B C D‖ ≤ max (‖A‖ + ‖B‖) (‖C‖ + ‖D‖)) ∧
    (∀ n : ℕ,
      (∀ u : (Fin n → ℂ) × (Fin n → ℂ), (omegaZeroMatrix n).mulVec
        ((Equiv.sumArrowEquivProdArrow _ _ _).symm u) =
          (Equiv.sumArrowEquivProdArrow _ _ _).symm (omegaZero u)) ∧
      (omegaZeroMatrix n).transpose = -omegaZeroMatrix n ∧
      omegaZeroMatrix n * omegaZeroMatrix n = -1 ∧
      (0 < n → ‖omegaZeroMatrix n‖ = 1)) :=
  ⟨matrix_operator_norm_rowSum, matrix_operator_norm_blocks, matrix_operator_norm_omegaZero⟩

/-! ### Max-norm matrix facts (`bp:p1:matrix-norms`) -/

section MatrixNorms

/-- Blueprint `step:p1:mn-products`. The norm is submultiplicative and bounds `‖M v‖`. -/
theorem matrix_norm_products :
    (∀ (p q r : ℕ) (M : Matrix (Fin p) (Fin q) ℂ) (N : Matrix (Fin q) (Fin r) ℂ),
      ‖M * N‖ ≤ ‖M‖ * ‖N‖) ∧
    (∀ (p q : ℕ) (M : Matrix (Fin p) (Fin q) ℂ) (v : Fin q → ℂ), ‖M.mulVec v‖ ≤ ‖M‖ * ‖v‖) :=
  ⟨fun _ _ _ M N => Matrix.linfty_opNorm_mul M N, fun _ _ M v => Matrix.linfty_opNorm_mulVec M v⟩

section Transpose

variable {m n : Type*} [Fintype m] [Fintype n]

/-- The norm of a transpose is at most the number of rows times the norm. -/
theorem norm_transpose_le_card_mul (M : Matrix m n ℂ) :
    ‖M.transpose‖ ≤ Fintype.card m * ‖M‖ := by
  refine (norm_le_iff_forall_rowSum (mul_nonneg (Nat.cast_nonneg _) (norm_nonneg M))).2 fun j => ?_
  calc ∑ i, ‖M.transpose j i‖ = ∑ i, ‖M i j‖ := rfl
    _ ≤ ∑ _i : m, ‖M‖ := Finset.sum_le_sum fun i _ => norm_entry_le M i j
    _ = Fintype.card m * ‖M‖ := by simp

end Transpose

/-- Blueprint `step:p1:mn-transpose`. Entries are bounded by the norm, and the transpose of an
`m × m'` matrix has norm at most `m ‖M‖`. -/
theorem matrix_norm_transpose :
    ∀ (m m' : ℕ) (M : Matrix (Fin m) (Fin m') ℂ),
      (∀ i j, ‖M i j‖ ≤ ‖M‖) ∧ ‖M.transpose‖ ≤ m * ‖M‖ := fun m _ M =>
  ⟨norm_entry_le M, by simpa using norm_transpose_le_card_mul M⟩

section Signed

variable {n : ℕ}

/-- Entries of the product with `Ω₀`. -/
theorem omegaZeroMatrix_mul_apply_inl {κ : Type*} [Fintype κ] (M : Matrix (Fin n ⊕ Fin n) κ ℂ)
    (i : Fin n) (j : κ) : (omegaZeroMatrix n * M) (Sum.inl i) j = -M (Sum.inr i) j := by
  simp [Matrix.mul_apply, Fintype.sum_sum_type, omegaZeroMatrix, Matrix.one_apply,
    Matrix.neg_apply]

/-- Entries of the product with `Ω₀`. -/
theorem omegaZeroMatrix_mul_apply_inr {κ : Type*} [Fintype κ] (M : Matrix (Fin n ⊕ Fin n) κ ℂ)
    (i : Fin n) (j : κ) : (omegaZeroMatrix n * M) (Sum.inr i) j = M (Sum.inl i) j := by
  simp [Matrix.mul_apply, Fintype.sum_sum_type, omegaZeroMatrix, Matrix.one_apply]

/-- Entries of the product with `Ω₀`. -/
theorem mul_omegaZeroMatrix_apply_inl {ι : Type*} [Fintype ι] (M : Matrix ι (Fin n ⊕ Fin n) ℂ)
    (i : ι) (j : Fin n) : (M * omegaZeroMatrix n) i (Sum.inl j) = M i (Sum.inr j) := by
  simp [Matrix.mul_apply, Fintype.sum_sum_type, omegaZeroMatrix, Matrix.one_apply]

/-- Entries of the product with `Ω₀`. -/
theorem mul_omegaZeroMatrix_apply_inr {ι : Type*} [Fintype ι] (M : Matrix ι (Fin n ⊕ Fin n) ℂ)
    (i : ι) (j : Fin n) : (M * omegaZeroMatrix n) i (Sum.inr j) = -M i (Sum.inl j) := by
  simp [Matrix.mul_apply, Fintype.sum_sum_type, omegaZeroMatrix, Matrix.one_apply,
    Matrix.neg_apply]

/-- Multiplying on the left by `Ω₀` permutes the rows of `M` and changes some signs, so the norm
is unchanged. -/
theorem norm_omegaZeroMatrix_mul {κ : Type*} [Fintype κ] (M : Matrix (Fin n ⊕ Fin n) κ ℂ) :
    ‖omegaZeroMatrix n * M‖ = ‖M‖ := by
  refine norm_eq_of_rowSum_eq (Equiv.sumComm (Fin n) (Fin n)) ?_
  rintro (i | i)
  · simp [omegaZeroMatrix_mul_apply_inr]
  · simp [omegaZeroMatrix_mul_apply_inl]

/-- Multiplying on the right by `Ω₀` permutes the entries of each row of `M` and changes some
signs, so the absolute row sums, hence the norm, are unchanged. -/
theorem norm_mul_omegaZeroMatrix {ι : Type*} [Fintype ι] (M : Matrix ι (Fin n ⊕ Fin n) ℂ) :
    ‖M * omegaZeroMatrix n‖ = ‖M‖ := by
  refine norm_eq_of_rowSum_eq (Equiv.refl ι) fun i => ?_
  simp only [Equiv.refl_apply, Fintype.sum_sum_type, mul_omegaZeroMatrix_apply_inl,
    mul_omegaZeroMatrix_apply_inr, norm_neg]
  exact add_comm _ _

end Signed

/-- The norm of a vertical stack is the maximum of the norms of its blocks: the rows of
`(M₁; M₂)` are those of `M₁` followed by those of `M₂`. -/
theorem norm_fromRows {ι₁ ι₂ κ : Type*} [Fintype ι₁] [Fintype ι₂] [Fintype κ]
    (M₁ : Matrix ι₁ κ ℂ) (M₂ : Matrix ι₂ κ ℂ) :
    ‖Matrix.fromRows M₁ M₂‖ = max ‖M₁‖ ‖M₂‖ := by
  refine le_antisymm ((norm_le_iff_forall_rowSum (le_max_of_le_left (norm_nonneg _))).2 ?_)
    (max_le ?_ ?_)
  · rintro (i | i)
    · exact (rowSum_le_norm M₁ i).trans (le_max_left _ _)
    · exact (rowSum_le_norm M₂ i).trans (le_max_right _ _)
  · exact (norm_le_iff_forall_rowSum (norm_nonneg _)).2 fun i =>
      rowSum_le_norm (Matrix.fromRows M₁ M₂) (Sum.inl i)
  · exact (norm_le_iff_forall_rowSum (norm_nonneg _)).2 fun i =>
      rowSum_le_norm (Matrix.fromRows M₁ M₂) (Sum.inr i)

/-- Blueprint `step:p1:mn-signed`. `Ω₀ M` and `M Ω₀` have the norm of `M`, and a stacked matrix
has the maximum of the norms of its blocks. -/
theorem matrix_norm_signed :
    (∀ (n q : ℕ) (M : Matrix (Fin n ⊕ Fin n) (Fin q) ℂ), ‖omegaZeroMatrix n * M‖ = ‖M‖) ∧
    (∀ (n p : ℕ) (M : Matrix (Fin p) (Fin n ⊕ Fin n) ℂ), ‖M * omegaZeroMatrix n‖ = ‖M‖) ∧
    (∀ (p₁ p₂ q : ℕ) (M₁ : Matrix (Fin p₁) (Fin q) ℂ) (M₂ : Matrix (Fin p₂) (Fin q) ℂ),
      ‖Matrix.fromRows M₁ M₂‖ = max ‖M₁‖ ‖M₂‖) :=
  ⟨fun _ _ M => norm_omegaZeroMatrix_mul M, fun _ _ M => norm_mul_omegaZeroMatrix M,
    fun _ _ _ M₁ M₂ => norm_fromRows M₁ M₂⟩

/-- Blueprint `bp:p1:matrix-norms`. For the norm `‖M‖ = max_i ∑_j |M_ij|`: `‖M N‖ ≤ ‖M‖ ‖N‖`,
`‖M v‖ ≤ ‖M‖ ‖v‖`, `‖Mᵀ‖ ≤ m ‖M‖` for `m × m'` matrices, `‖Ω₀ M‖ = ‖M‖` for `2n × q`,
`‖M Ω₀‖ = ‖M‖` for `p × 2n`, and `‖(M₁; M₂)‖ = max {‖M₁‖, ‖M₂‖}`. The `2n` rows or columns are
indexed by `Fin n ⊕ Fin n`. -/
theorem matrix_norms :
    ((∀ (p q r : ℕ) (M : Matrix (Fin p) (Fin q) ℂ) (N : Matrix (Fin q) (Fin r) ℂ),
      ‖M * N‖ ≤ ‖M‖ * ‖N‖) ∧
    (∀ (p q : ℕ) (M : Matrix (Fin p) (Fin q) ℂ) (v : Fin q → ℂ), ‖M.mulVec v‖ ≤ ‖M‖ * ‖v‖)) ∧
    (∀ (m m' : ℕ) (M : Matrix (Fin m) (Fin m') ℂ), ‖M.transpose‖ ≤ m * ‖M‖) ∧
    ((∀ (n q : ℕ) (M : Matrix (Fin n ⊕ Fin n) (Fin q) ℂ), ‖omegaZeroMatrix n * M‖ = ‖M‖) ∧
    (∀ (n p : ℕ) (M : Matrix (Fin p) (Fin n ⊕ Fin n) ℂ), ‖M * omegaZeroMatrix n‖ = ‖M‖) ∧
    (∀ (p₁ p₂ q : ℕ) (M₁ : Matrix (Fin p₁) (Fin q) ℂ) (M₂ : Matrix (Fin p₂) (Fin q) ℂ),
      ‖Matrix.fromRows M₁ M₂‖ = max ‖M₁‖ ‖M₂‖)) :=
  ⟨matrix_norm_products, fun m m' M => (matrix_norm_transpose m m' M).2, matrix_norm_signed⟩

end MatrixNorms

end KAM

end
