/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Strip.AnalyticSeries
public import Mathlib.MeasureTheory.Integral.TorusIntegral

/-!
# The iterated Cauchy formula on a polydisc (blueprint `step:p1:han-cauchy`)

For `F` holomorphic on an open `U ⊆ ℂᵐ` with `closedBall z₀ r ⊆ U`, and `w` in the open polydisc,
`KAM.han_cauchy` proves
`F w = (2πi)⁻ᵐ • ∯ ζ in T(z₀, r), (∏ⱼ (ζⱼ - wⱼ)⁻¹) • F ζ`,
with the torus integral of Mathlib (`torusIntegral`). The proof is an induction on `m` using
`torusIntegral_succ` and the one-variable Cauchy formula in the first variable.

The analyticity results of `KAM/Strip/Analytic.lean` do not depend on this formula: their proof
expands in the first variable with Taylor's theorem instead (see `KAM/Strip/AnalyticSeries.lean`).
This module records the contour-integral representation that the blueprint uses.
-/

@[expose] public noncomputable section

open Metric Set MeasureTheory
open scoped Real

namespace KAM

/-- The torus map is continuous. -/
theorem continuous_torusMap {m : ℕ} (c : Fin m → ℂ) (R : Fin m → ℝ) :
    Continuous (torusMap c R) := by
  unfold torusMap
  fun_prop

/-- The torus of radius `r` lies in the closed polydisc of radius `r`. -/
theorem torusMap_mem_closedBall {m : ℕ} (c : Fin m → ℂ) {r : ℝ} (hr : 0 ≤ r) (θ : Fin m → ℝ) :
    torusMap c (fun _ => r) θ ∈ closedBall c r := by
  rw [mem_closedBall, dist_pi_le_iff hr]
  intro j
  simp [torusMap, dist_eq_norm, abs_of_nonneg hr]

/-- Points of the open polydisc differ coordinatewise from points of the torus. -/
theorem torusMap_ne {m : ℕ} {c w : Fin m → ℂ} {r : ℝ} (hr : 0 < r) (hw : w ∈ ball c r)
    (θ : Fin m → ℝ) (j : Fin m) : torusMap c (fun _ => r) θ j - w j ≠ 0 := by
  intro h
  have h1 : torusMap c (fun _ => r) θ j = w j := sub_eq_zero.mp h
  have h2 : ‖w j - c j‖ < r := by
    have := (mem_ball.mp hw)
    rw [dist_pi_lt_iff hr] at this
    simpa [dist_eq_norm] using this j
  have h3 : ‖torusMap c (fun _ => r) θ j - c j‖ = r := by
    simp [torusMap, abs_of_pos hr]
  rw [h1] at h3
  linarith


/-- Varying the first coordinate of a tuple is a differentiable map. -/
theorem differentiable_cons_first {m : ℕ} (z' : Fin m → ℂ) :
    Differentiable ℂ (fun c : ℂ => (Fin.cons c z' : Fin (m + 1) → ℂ)) := by
  refine differentiable_pi.mpr fun i => ?_
  refine Fin.cases ?_ (fun j => ?_) i
  · simp
  · simp

variable {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W]

/-- The integrand of the iterated Cauchy formula is integrable on the torus. -/
theorem torusIntegrable_cauchy {m : ℕ} {U : Set (Fin m → ℂ)} {F : (Fin m → ℂ) → W}
    (hF : DifferentiableOn ℂ F U) {z₀ w : Fin m → ℂ} {r : ℝ} (hr : 0 < r)
    (hcl : closedBall z₀ r ⊆ U) (hw : w ∈ ball z₀ r) :
    TorusIntegrable (fun ζ => (∏ j, (ζ j - w j)⁻¹) • F ζ) z₀ (fun _ => r) := by
  have hmap : ∀ θ, torusMap z₀ (fun _ => r) θ ∈ U := fun θ =>
    hcl (torusMap_mem_closedBall z₀ hr.le θ)
  have hcont : Continuous (torusMap z₀ (fun _ => r)) := continuous_torusMap z₀ _
  have h1 : Continuous fun θ => ∏ j, (torusMap z₀ (fun _ => r) θ j - w j)⁻¹ := by
    refine continuous_finsetProd _ fun j _ => ?_
    exact ((continuous_apply j).comp hcont |>.sub continuous_const).inv₀ (torusMap_ne hr hw · j)
  have h2 : Continuous fun θ => F (torusMap z₀ (fun _ => r) θ) := by
    exact hF.continuousOn.comp_continuous hcont hmap
  exact (h1.smul h2).continuousOn.integrableOn_Icc


variable [CompleteSpace W]

/-- Blueprint `step:p1:han-cauchy`. **Iterated Cauchy formula on a polydisc**: for `F` holomorphic
on an open `U ⊆ ℂᵐ` with `closedBall z₀ r ⊆ U`, and `w` in the open polydisc,
`F w = (2πi)⁻ᵐ • ∯ ζ in T(z₀, r), (∏ⱼ (ζⱼ - wⱼ)⁻¹) • F ζ`. -/
theorem han_cauchy : ∀ (m : ℕ) {U : Set (Fin m → ℂ)}, IsOpen U →
    ∀ {F : (Fin m → ℂ) → W}, DifferentiableOn ℂ F U → ∀ {z₀ : Fin m → ℂ} {r : ℝ}, 0 < r →
    closedBall z₀ r ⊆ U → ∀ {w : Fin m → ℂ}, w ∈ ball z₀ r →
    F w = ((2 * π * Complex.I) ^ m)⁻¹ •
      ∯ ζ in T(z₀, fun _ => r), (∏ j, (ζ j - w j)⁻¹) • F ζ
  | 0, U, hU, F, hF, z₀, r, hr, hcl, w, hw => by
    rw [torusIntegral_dim0]
    have : w = z₀ := Subsingleton.elim _ _
    subst this
    simp
  | m + 1, U, hU, F, hF, z₀, r, hr, hcl, w, hw => by
    have hint := torusIntegrable_cauchy hF hr hcl hw
    rw [torusIntegral_succ hint]
    have hw' := (cons_mem_ball_iff hr (w 0) (Fin.tail w)).mp (by simpa using hw)
    -- inner integral for x on the circle
    have hinner : ∀ x ∈ sphere (z₀ 0) r,
        (∯ y in T(z₀ ∘ Fin.succ, (fun _ => r) ∘ Fin.succ),
          (∏ j, ((Fin.cons x y : Fin (m + 1) → ℂ) j - w j)⁻¹) • F (Fin.cons x y)) =
        (x - w 0)⁻¹ • ((2 * π * Complex.I) ^ m • F (Fin.cons x (Fin.tail w))) := by
      intro x hx
      have hxc : x ∈ closedBall (z₀ 0) r := sphere_subset_closedBall hx
      set U' : Set (Fin m → ℂ) := (fun y : Fin m → ℂ => (Fin.cons x y : Fin (m + 1) → ℂ)) ⁻¹' U
      have hU' : IsOpen U' := hU.preimage (differentiable_cons x).continuous
      have hF' : DifferentiableOn ℂ (fun y : Fin m → ℂ => F (Fin.cons x y)) U' :=
        hF.comp (differentiable_cons x).differentiableOn (fun _ h => h)
      have hcl' : closedBall (Fin.tail z₀) r ⊆ U' := fun y hy =>
        hcl ((cons_mem_closedBall_iff hr.le _ _).mpr ⟨hxc, hy⟩)
      have ih := han_cauchy m hU' hF' hr hcl' hw'.2
      have e1 : ∀ y : Fin m → ℂ,
          (∏ j, ((Fin.cons x y : Fin (m + 1) → ℂ) j - w j)⁻¹) • F (Fin.cons x y) =
          (x - w 0)⁻¹ • ((∏ j, (y j - Fin.tail w j)⁻¹) • F (Fin.cons x y)) := by
        intro y
        rw [Fin.prod_univ_succ, mul_smul]
        simp [Fin.tail]
      have hne : (2 * π * Complex.I) ^ m ≠ 0 := by
        have : (2 * π * Complex.I : ℂ) ≠ 0 := by simp [Real.pi_ne_zero]
        exact pow_ne_zero _ this
      simp only [e1]
      rw [torusIntegral_smul]
      show (x - w 0)⁻¹ • (∯ y in T(Fin.tail z₀, fun _ => r), (∏ j, (y j - Fin.tail w j)⁻¹) •
        F (Fin.cons x y)) = _
      rw [ih, smul_inv_smul₀ hne]
    have hne : (2 * π * Complex.I) ^ m ≠ 0 := by
      have : (2 * π * Complex.I : ℂ) ≠ 0 := by simp [Real.pi_ne_zero]
      exact pow_ne_zero _ this
    have hne1 : (2 * π * Complex.I : ℂ) ≠ 0 := by simp [Real.pi_ne_zero]
    show F w = ((2 * π * Complex.I) ^ (m + 1))⁻¹ •
      ∮ x in C(z₀ 0, r), ∯ y in T(z₀ ∘ Fin.succ, (fun _ => r) ∘ Fin.succ),
        (∏ j, ((Fin.cons x y : Fin (m + 1) → ℂ) j - w j)⁻¹) • F (Fin.cons x y)
    rw [circleIntegral.integral_congr hr.le hinner]
    simp_rw [smul_comm _ ((2 * π * Complex.I) ^ m)]
    rw [circleIntegral.integral_smul]
    have hdiff : DiffContOnCl ℂ (fun x : ℂ => F (Fin.cons x (Fin.tail w) : Fin (m + 1) → ℂ))
        (ball (z₀ 0) r) := by
      refine DifferentiableOn.diffContOnCl_ball (U := closedBall (z₀ 0) r) ?_ (Subset.refl _)
      refine hF.comp ?_ (fun x hx => hcl ((cons_mem_closedBall_iff hr.le _ _).mpr ⟨hx, ?_⟩))
      · exact (differentiable_cons_first (Fin.tail w)).differentiableOn
      · exact ball_subset_closedBall hw'.2
    rw [hdiff.circleIntegral_sub_inv_smul hw'.1]
    simp only [Fin.cons_self_tail, smul_smul]
    rw [← pow_succ, inv_mul_cancel₀ (pow_ne_zero _ hne1), one_smul]

end KAM
