/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Kepler.Basic
public import KAM.Kepler.Plane
public import KAM.Kepler.Equation
public import KAM.Kepler.Orbit

/-!
# Means of the Kepler orbit over the mean anomaly

Time averages over the mean anomaly `ℓ ∈ [0, 2π]` of the inverse radius, the squared speed and
the radius of the orbit `orbitMapR ℓ g L e`, `0 ≤ e < 1` (`bpI:p7:means`, and the circular case
`bpI:p7:circular` as `e = 0`).  The key step is the change of variables
`ℓ = u - e sin u` (`dℓ = (1 - e cos u) du`), turning averages over `ℓ` of a function of the
eccentric anomaly into integrals over `u` (`integral_comp_eccAnom`).
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff

namespace KAM.Kepler

open KAM KAM.Planetary

section Means

private theorem abs_lt_one_of {e : ℝ} (he0 : 0 ≤ e) (he1 : e < 1) : |e| < 1 := by
  rw [abs_lt]; constructor <;> linarith

private theorem one_sub_mul_cos_pos' {e : ℝ} (he0 : 0 ≤ e) (he1 : e < 1) (u : ℝ) :
    0 < 1 - e * Real.cos u := by
  have := Real.cos_le_one u
  nlinarith

private theorem continuous_eccAnom {e : ℝ} (he : |e| < 1) : Continuous fun ℓ => eccAnom ℓ e :=
  continuous_iff_continuousAt.2 fun ℓ => (hasDerivAt_eccAnom he ℓ).continuousAt

/-- The eccentric anomaly of the mean anomaly `u - e sin u` is `u`. -/
private theorem eccAnom_kepler {e : ℝ} (he : |e| < 1) (u : ℝ) :
    eccAnom (u - e * Real.sin u) e = u :=
  keplerLong_unique (planeLength_eccVec he) (by simp [keplerPhi])

/-- Change of variables `ℓ = u - e sin u`: averages over the mean anomaly of a continuous function
of the eccentric anomaly become integrals over the eccentric anomaly against `1 - e cos u`. -/
theorem integral_comp_eccAnom {e : ℝ} (he0 : 0 ≤ e) (he1 : e < 1) {φ : ℝ → ℝ}
    (hφ : Continuous φ) :
    ∫ ℓ in (0 : ℝ)..2 * π, φ (eccAnom ℓ e) =
      ∫ u in (0 : ℝ)..2 * π, φ u * (1 - e * Real.cos u) := by
  have he : |e| < 1 := abs_lt_one_of he0 he1
  have hf : ∀ x ∈ uIcc (0 : ℝ) (2 * π),
      HasDerivAt (fun u : ℝ => u - e * Real.sin u) (1 - e * Real.cos x) x := fun x _ =>
    (hasDerivAt_id x).sub ((Real.hasDerivAt_sin x).const_mul e)
  have hf' : ContinuousOn (fun u : ℝ => 1 - e * Real.cos u) (uIcc (0 : ℝ) (2 * π)) :=
    (continuous_const.sub (continuous_const.mul Real.continuous_cos)).continuousOn
  have hg : Continuous fun ℓ : ℝ => φ (eccAnom ℓ e) := hφ.comp (continuous_eccAnom he)
  have h := intervalIntegral.integral_comp_mul_deriv' hf hf' hg.continuousOn
  have h0 : (0 : ℝ) - e * Real.sin 0 = 0 := by simp
  have h2 : 2 * π - e * Real.sin (2 * π) = 2 * π := by simp
  simp only [Function.comp_apply, eccAnom_kepler he, h0, h2] at h
  exact h.symm

/-- `bpI:p7:means` and `bpI:p7:circular`: time averages over the mean anomaly, `0 ≤ e < 1`. -/
theorem orbitMapR_mean_inv_radius {g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    (2 * π)⁻¹ * ∫ ℓ in (0 : ℝ)..2 * π, 1 / planeLength (orbitMapR ℓ g L e).1 = 1 / L ^ 2 := by
  have hD := one_sub_mul_cos_pos' he0 he1
  have hφ : Continuous fun u : ℝ => 1 / (L ^ 2 * (1 - e * Real.cos u)) :=
    continuous_const.div (continuous_const.mul
      (continuous_const.sub (continuous_const.mul Real.continuous_cos)))
      fun u => (mul_pos (by positivity) (hD u)).ne'
  have h := integral_comp_eccAnom he0 he1 hφ
  have h1 : ∀ ℓ : ℝ, 1 / planeLength (orbitMapR ℓ g L e).1 =
      1 / (L ^ 2 * (1 - e * Real.cos (eccAnom ℓ e))) := fun ℓ => by
    rw [orbitMapR_radius hL he0 he1]
  have h2 : ∀ u : ℝ, 1 / (L ^ 2 * (1 - e * Real.cos u)) * (1 - e * Real.cos u) = 1 / L ^ 2 :=
    fun u => by
      have := (hD u).ne'
      field_simp
  simp_rw [h1]
  rw [h]
  simp_rw [h2]
  simp
  field_simp

theorem orbitMapR_mean_speed_sq {g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    (2 * π)⁻¹ * ∫ ℓ in (0 : ℝ)..2 * π, planeSq (orbitMapR ℓ g L e).2 = 1 / L ^ 2 := by
  have hD := one_sub_mul_cos_pos' he0 he1
  have hφ : Continuous fun u : ℝ =>
      (1 + e * Real.cos u) / (L ^ 2 * (1 - e * Real.cos u)) :=
    (continuous_const.add (continuous_const.mul Real.continuous_cos)).div
      (continuous_const.mul (continuous_const.sub (continuous_const.mul Real.continuous_cos)))
      fun u => (mul_pos (by positivity) (hD u)).ne'
  have h := integral_comp_eccAnom he0 he1 hφ
  have h1 : ∀ ℓ : ℝ, planeSq (orbitMapR ℓ g L e).2 =
      (1 + e * Real.cos (eccAnom ℓ e)) / (L ^ 2 * (1 - e * Real.cos (eccAnom ℓ e))) :=
    fun ℓ => orbitMapR_speed_sq hL he0 he1
  have h2 : ∀ u : ℝ, (1 + e * Real.cos u) / (L ^ 2 * (1 - e * Real.cos u)) * (1 - e * Real.cos u) =
      1 / L ^ 2 + (e / L ^ 2) * Real.cos u := fun u => by
    have := (hD u).ne'
    field_simp
  simp_rw [h1]
  rw [h]
  simp_rw [h2]
  have hc : IntervalIntegrable (fun u : ℝ => Real.cos u) MeasureTheory.volume 0 (2 * π) :=
    Real.continuous_cos.intervalIntegrable _ _
  rw [intervalIntegral.integral_add (by simp) (hc.const_mul _), intervalIntegral.integral_const_mul]
  simp
  field_simp

theorem orbitMapR_mean_radius {g L e : ℝ} (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    (2 * π)⁻¹ * ∫ ℓ in (0 : ℝ)..2 * π, planeLength (orbitMapR ℓ g L e).1 =
      L ^ 2 * (1 + e ^ 2 / 2) := by
  have hφ : Continuous fun u : ℝ => L ^ 2 * (1 - e * Real.cos u) :=
    continuous_const.mul (continuous_const.sub (continuous_const.mul Real.continuous_cos))
  have h := integral_comp_eccAnom he0 he1 hφ
  have h1 : ∀ ℓ : ℝ, planeLength (orbitMapR ℓ g L e).1 =
      L ^ 2 * (1 - e * Real.cos (eccAnom ℓ e)) := fun ℓ => orbitMapR_radius hL he0 he1
  have h2 : ∀ u : ℝ, L ^ 2 * (1 - e * Real.cos u) * (1 - e * Real.cos u) =
      L ^ 2 + (-(2 * L ^ 2 * e)) * Real.cos u + (L ^ 2 * e ^ 2) * Real.cos u ^ 2 :=
    fun u => by ring
  simp_rw [h1]
  rw [h]
  simp_rw [h2]
  have hc : IntervalIntegrable (fun u : ℝ => Real.cos u) MeasureTheory.volume 0 (2 * π) :=
    Real.continuous_cos.intervalIntegrable _ _
  have hc2 : IntervalIntegrable (fun u : ℝ => Real.cos u ^ 2) MeasureTheory.volume 0 (2 * π) :=
    (Real.continuous_cos.pow 2).intervalIntegrable _ _
  rw [intervalIntegral.integral_add ((by simp : IntervalIntegrable (fun _ : ℝ => L ^ 2)
      MeasureTheory.volume 0 (2 * π)).add (hc.const_mul _)) (hc2.const_mul _),
    intervalIntegral.integral_add (by simp) (hc.const_mul _),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]
  simp [integral_cos_sq]
  field_simp

end Means

end KAM.Kepler

end
