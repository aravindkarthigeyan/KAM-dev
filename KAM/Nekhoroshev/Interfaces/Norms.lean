/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Algebra.Order.Chebyshev
public import Mathlib.Analysis.RCLike.Basic
public import Mathlib.Analysis.Real.Sqrt
public import KAM.Fourier.Derivative

/-!
# Euclidean comparisons (`bpN:p1:norm-compare`)

The Euclidean norm `euclid x = √(∑ ‖xᵢ‖²)` of a coordinate vector `x : Fin n → 𝕜` (never
`EuclideanSpace`), its comparison with the max norm of the `Pi` type, the comparison of the
Fourier mode size `|k|₁ = KAM.Fourier.modeSize k` with the Euclidean size of `k`, the inclusions of
lattice balls, and the bilinear bound `|xᵀ Q y| ≤ n M₀ |x|₂ |y|₂`.
-/

@[expose] public noncomputable section

open Set Metric

namespace KAM.Nekhoroshev

variable {n : ℕ}

/-- `|x|₂ = √(∑ |xᵢ|²)` of a coordinate vector (never `EuclideanSpace`). -/
def euclid {𝕜 : Type*} [RCLike 𝕜] (x : Fin n → 𝕜) : ℝ := Real.sqrt (∑ i, ‖x i‖ ^ 2)

private theorem euclid_nonneg {𝕜 : Type*} [RCLike 𝕜] (x : Fin n → 𝕜) : 0 ≤ euclid x :=
  Real.sqrt_nonneg _

private theorem sq_euclid {𝕜 : Type*} [RCLike 𝕜] (x : Fin n → 𝕜) :
    euclid x ^ 2 = ∑ i, ‖x i‖ ^ 2 :=
  Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)

/-- Cauchy–Schwarz: `∑ bᵢ ≤ √n √(∑ bᵢ²)`. -/
private theorem sum_le_sqrt_mul_sqrt_sum_sq (b : Fin n → ℝ) :
    ∑ i, b i ≤ Real.sqrt n * Real.sqrt (∑ i, b i ^ 2) := by
  rw [← Real.sqrt_mul (Nat.cast_nonneg n)]
  refine Real.le_sqrt_of_sq_le ?_
  simpa using sq_sum_le_card_mul_sum_sq (s := (Finset.univ : Finset (Fin n))) (f := b)

/-- The `ℓ¹` size of a coordinate vector is at most `√n` times its Euclidean size. -/
private theorem sum_norm_le_sqrt_mul_euclid {𝕜 : Type*} [RCLike 𝕜] (x : Fin n → 𝕜) :
    ∑ i, ‖x i‖ ≤ Real.sqrt n * euclid x :=
  sum_le_sqrt_mul_sqrt_sum_sq fun i => ‖x i‖

/-- (a) `|x|_∞ ≤ |x|₂ ≤ √n |x|_∞` and `|x|₂² ≤ n |x|_∞²`, every `n ≥ 0`. -/
theorem norm_le_euclid {𝕜 : Type*} [RCLike 𝕜] (x : Fin n → 𝕜) :
    ‖x‖ ≤ euclid x ∧ euclid x ≤ Real.sqrt n * ‖x‖ ∧ euclid x ^ 2 ≤ n * ‖x‖ ^ 2 := by
  have hsum : ∑ i, ‖x i‖ ^ 2 ≤ n * ‖x‖ ^ 2 := by
    calc ∑ i, ‖x i‖ ^ 2 ≤ ∑ _i : Fin n, ‖x‖ ^ 2 :=
          Finset.sum_le_sum fun i _ => by gcongr; exact norm_le_pi_norm x i
      _ = n * ‖x‖ ^ 2 := by simp
  refine ⟨?_, ?_, ?_⟩
  · refine (pi_norm_le_iff_of_nonneg (euclid_nonneg x)).2 fun i => ?_
    refine Real.le_sqrt_of_sq_le ?_
    exact Finset.single_le_sum (f := fun j => ‖x j‖ ^ 2) (fun _ _ => sq_nonneg _)
      (Finset.mem_univ i)
  · calc euclid x ≤ Real.sqrt (n * ‖x‖ ^ 2) := Real.sqrt_le_sqrt hsum
      _ = Real.sqrt n * ‖x‖ := by
        rw [Real.sqrt_mul (Nat.cast_nonneg n), Real.sqrt_sq (norm_nonneg x)]
  · rw [sq_euclid]
    exact hsum

/-- (b) `|k|₂ ≤ |k|₁ ≤ √n |k|₂` for `k ∈ ℤⁿ` (`|k|₁ = KAM.Fourier.modeSize k`), and the two
inclusions of lattice balls (the direction corrected in review N06). -/
theorem modeSize_euclid_compare (k : Fin n → ℤ) :
    euclid (fun i => (k i : ℝ)) ≤ KAM.Fourier.modeSize k ∧
      KAM.Fourier.modeSize k ≤ Real.sqrt n * euclid (fun i => (k i : ℝ)) := by
  have hsq : ∀ i, ‖(k i : ℝ)‖ ^ 2 = |(k i : ℝ)| ^ 2 := fun i => by
    rw [Real.norm_eq_abs]
  refine ⟨?_, ?_⟩
  · refine Real.sqrt_le_iff.2 ⟨KAM.Fourier.modeSize_nonneg k, ?_⟩
    simp only [hsq]
    exact Finset.sum_sq_le_sq_sum_of_nonneg fun i _ => abs_nonneg _
  · have := sum_le_sqrt_mul_sqrt_sum_sq fun i => |(k i : ℝ)|
    simpa only [KAM.Fourier.modeSize, euclid, hsq, sq_abs] using this

theorem lattice_ball_inclusions (K : ℝ) :
    {k : Fin n → ℤ | KAM.Fourier.modeSize k ≤ K} ⊆ {k | euclid (fun i => (k i : ℝ)) ≤ K} ∧
    {k : Fin n → ℤ | euclid (fun i => (k i : ℝ)) ≤ K} ⊆
      {k | KAM.Fourier.modeSize k ≤ Real.sqrt n * K} := by
  refine ⟨fun k hk => ?_, fun k hk => ?_⟩
  · exact (modeSize_euclid_compare k).1.trans hk
  · exact (modeSize_euclid_compare k).2.trans (by gcongr; exact hk)

/-- (c) the bilinear bound `|xᵀ Q y| ≤ n M₀ |x|₂ |y|₂` if all entries are `≤ M₀`. -/
theorem bilinear_euclid_bound (Q : Fin n → Fin n → ℂ) {M₀ : ℝ} (hQ : ∀ i j, ‖Q i j‖ ≤ M₀)
    (x y : Fin n → ℂ) : ‖∑ i, ∑ j, x i * Q i j * y j‖ ≤ n * M₀ * euclid x * euclid y := by
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp
  have hM : 0 ≤ M₀ := (norm_nonneg _).trans (hQ ⟨0, hn⟩ ⟨0, hn⟩)
  calc ‖∑ i, ∑ j, x i * Q i j * y j‖
      ≤ ∑ i, ∑ j, ‖x i‖ * M₀ * ‖y j‖ := by
        refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun i _ => ?_)
        refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => ?_)
        rw [norm_mul, norm_mul]
        gcongr
        exact hQ i j
    _ = M₀ * ((∑ i, ‖x i‖) * ∑ j, ‖y j‖) := by
        rw [Finset.sum_mul_sum, Finset.mul_sum]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [Finset.mul_sum]
        refine Finset.sum_congr rfl fun j _ => ?_
        ring
    _ ≤ M₀ * ((Real.sqrt n * euclid x) * (Real.sqrt n * euclid y)) := by
        exact mul_le_mul_of_nonneg_left (mul_le_mul (sum_norm_le_sqrt_mul_euclid x)
          (sum_norm_le_sqrt_mul_euclid y) (Finset.sum_nonneg fun _ _ => norm_nonneg _)
          (mul_nonneg (Real.sqrt_nonneg _) (euclid_nonneg x))) hM
    _ = n * M₀ * euclid x * euclid y := by
        have : Real.sqrt n * Real.sqrt n = n := Real.mul_self_sqrt (Nat.cast_nonneg n)
        calc M₀ * ((Real.sqrt n * euclid x) * (Real.sqrt n * euclid y))
            = (Real.sqrt n * Real.sqrt n) * M₀ * euclid x * euclid y := by ring
          _ = n * M₀ * euclid x * euclid y := by rw [this]

end KAM.Nekhoroshev

end
