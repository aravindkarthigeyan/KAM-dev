/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Kepler.Plane
public import KAM.Frozen.Planetary.Defs.ActualMasses
public import KAM.Frozen.Planetary.Defs.BarycentricPositions
public import KAM.Frozen.Planetary.Defs.BarycentricVelocities
public import KAM.Frozen.Planetary.Defs.BodyVector

/-!
# Barycentric algebra

Algebra of the frozen barycentric maps `barycentricPositions` and `barycentricVelocities`
(`bpP:p6:bary-algebra` (a)-(d)): the heliocentric differences, the Sun entries, the vanishing of the
mass-weighted sums, and the bound on the Sun's barycentric distance. Identities (a), (b) need no
sign conditions; they hold for all masses by totality of division.
-/

public section

open scoped BigOperators

namespace KAM.Planetary

open KAM KAM.Kepler

section Barycentric

variable {n : ℕ} {m0 μ : ℝ} {m : Fin n → ℝ}

/-- `bpP:p6:bary-algebra` (a)-(d), the frozen barycentric maps. -/
theorem barycentricPositions_succ_sub_zero (m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (q : Fin (n * 2) → ℝ)
    (i : Fin n) :
    barycentricPositions m0 m μ q i.succ - barycentricPositions m0 m μ q 0 = bodyVector q i := by
  simp [barycentricPositions]
theorem barycentricPositions_succ_sub_succ (m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (q : Fin (n * 2) → ℝ)
    (i j : Fin n) :
    barycentricPositions m0 m μ q j.succ - barycentricPositions m0 m μ q i.succ =
      bodyVector q j - bodyVector q i := by
  simp [barycentricPositions]
theorem barycentricPositions_zero (m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (q : Fin (n * 2) → ℝ) :
    barycentricPositions m0 m μ q 0 = (-μ / (m0 + μ * ∑ i, m i)) • ∑ i, m i • bodyVector q i := by
  simp [barycentricPositions]
theorem barycentricVelocities_zero (m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (p : Fin (n * 2) → ℝ) :
    barycentricVelocities m0 m μ p 0 = (-μ / m0) • ∑ i, bodyVector p i := by
  simp [barycentricVelocities]
theorem barycentricVelocities_succ (m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (p : Fin (n * 2) → ℝ)
    (i : Fin n) :
    barycentricVelocities m0 m μ p i.succ = (1 / m i) • bodyVector p i := by
  simp [barycentricVelocities]
theorem barycentricVelocities_succ_sub_zero (hm0 : m0 ≠ 0) (m : Fin n → ℝ) (μ : ℝ)
    (p : Fin (n * 2) → ℝ) (i : Fin n) :
    barycentricVelocities m0 m μ p i.succ - barycentricVelocities m0 m μ p 0 =
      (1 / m i) • bodyVector p i + (μ / m0) • ∑ j, bodyVector p j := by
  have _ := hm0
  simp [barycentricVelocities, neg_div, sub_eq_add_neg]
theorem sum_actualMasses_smul_barycentricPositions (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ)
    (q : Fin (n * 2) → ℝ) : ∑ k, actualMasses m0 m μ k • barycentricPositions m0 m μ q k = 0 := by
  have hM : 0 ≤ ∑ i, m i := Finset.sum_nonneg fun i _ => (hm i).le
  have hD : m0 + μ * ∑ i, m i ≠ 0 := (add_pos_of_pos_of_nonneg hm0 (mul_nonneg hμ hM)).ne'
  rw [Fin.sum_univ_succ]
  simp only [actualMasses, barycentricPositions, Fin.cons_zero, Fin.cons_succ, smul_add,
    Finset.sum_add_distrib, mul_smul, ← Finset.smul_sum, ← Finset.sum_smul]
  generalize (∑ i, m i • bodyVector q i) = S
  have hc : m0 * (-μ / (m0 + μ * ∑ i, m i)) + μ * (∑ i, m i) * (-μ / (m0 + μ * ∑ i, m i)) + μ =
      0 := by
    field_simp
    ring
  generalize (-μ / (m0 + μ * ∑ i, m i)) = c at hc ⊢
  generalize (∑ i, m i) = M at hc ⊢
  have h0 : (m0 * c + μ * M * c + μ) • S = 0 := by rw [hc, zero_smul]
  rw [← h0]
  module
theorem sum_actualMasses_smul_barycentricVelocities (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    (p : Fin (n * 2) → ℝ) : ∑ k, actualMasses m0 m μ k • barycentricVelocities m0 m μ p k = 0 := by
  have h0 : m0 ≠ 0 := hm0.ne'
  rw [Fin.sum_univ_succ]
  simp only [actualMasses, barycentricVelocities, Fin.cons_zero, Fin.cons_succ]
  have hi : ∀ i : Fin n, (μ * m i) • ((1 / m i) • bodyVector p i) = μ • bodyVector p i := by
    intro i
    rw [smul_smul]
    congr 1
    field_simp [(hm i).ne']
  simp only [hi, ← Finset.smul_sum, smul_smul]
  rw [mul_div_cancel₀ _ h0, neg_smul, neg_add_cancel]
theorem planeLength_barycentricPositions_zero_le (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ)
    (q : Fin (n * 2) → ℝ) :
    planeLength (barycentricPositions m0 m μ q 0) ≤
      μ / m0 * ∑ i, m i * planeLength (bodyVector q i) := by
  have hM : 0 ≤ ∑ i, m i := Finset.sum_nonneg fun i _ => (hm i).le
  have hμM : 0 ≤ μ * ∑ i, m i := mul_nonneg hμ hM
  have hD : 0 < m0 + μ * ∑ i, m i := add_pos_of_pos_of_nonneg hm0 hμM
  have hsum :
      planeLength (∑ i, m i • bodyVector q i) ≤ ∑ i, m i * planeLength (bodyVector q i) := by
    refine (Finset.le_sum_of_subadditive planeLength (planeLength_eq_zero_iff.mpr rfl).le
      planeLength_add_le Finset.univ _).trans ?_
    refine Finset.sum_le_sum fun i _ => le_of_eq ?_
    rw [planeLength_smul, abs_of_pos (hm i)]
  rw [barycentricPositions_zero, planeLength_smul, neg_div, abs_neg,
    abs_of_nonneg (div_nonneg hμ hD.le)]
  exact mul_le_mul (div_le_div_of_nonneg_left hμ hm0 (by linarith)) hsum (planeLength_nonneg _)
    (div_nonneg hμ hm0.le)

end Barycentric

end KAM.Planetary

end
