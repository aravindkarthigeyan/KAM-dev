/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Strip.AnalyticSeries

/-!
# Holomorphic maps are analytic (blueprint `bp:p1:holomorphic-analytic`)

Let `U ⊆ ℂᵐ` be open and `F : U → W` holomorphic (`DifferentiableOn ℂ F U`).

* `KAM.holomorphic_analytic` collects the three conclusions of the lemma: the multi-index power
  series on every closed polydisc in `U` with the Cauchy bound `‖c α‖ ≤ A r^{-|α|}` and absolute
  convergence (part (a)); analyticity of `F` on `U` (`AnalyticOnNhd ℂ F U`); and real-analyticity
  of `x ↦ F x` on `U ∩ ℝᵐ` (`AnalyticOnNhd ℝ`, part (b)).
* `KAM.holomorphic_analytic_real` is the real-valued clause of (b) for `W = ℂᵖ`: if `F` is real on
  the real points of `U`, the real part map is real-analytic into `ℝᵖ` and recovers `F`.
* `KAM.holomorphic_series_real` is the power-series form of that clause (blueprint
  `step:p1:han-real`): near a real point the real coefficients are `Re c α`, with
  `‖Re c α‖ ≤ ‖c α‖`.

The several-variable analyticity itself is proved in `KAM/Strip/AnalyticTaylor.lean` (analyticity
via Taylor expansion along lines) and `KAM/Strip/AnalyticSeries.lean` (multi-index series). The
inclusion `ℝᵐ → ℂᵐ` and the componentwise real part, used throughout the real-point statements, are
defined here.
-/

@[expose] public noncomputable section

open Metric Set

namespace KAM

/-- The real-linear inclusion `ℝᵐ → ℂᵐ`, `x ↦ (xᵢ)ᵢ`. -/
def realInclusion (m : ℕ) : (Fin m → ℝ) →L[ℝ] (Fin m → ℂ) :=
  ContinuousLinearMap.pi fun i => Complex.ofRealCLM.comp (ContinuousLinearMap.proj i)

@[simp] theorem realInclusion_apply {m : ℕ} (x : Fin m → ℝ) (i : Fin m) :
    realInclusion m x i = (x i : ℂ) := rfl

/-- The inclusion `ℝᵐ → ℂᵐ` is isometric for the max norms. -/
theorem norm_realInclusion {m : ℕ} (x : Fin m → ℝ) : ‖realInclusion m x‖ = ‖x‖ := by
  simp [Pi.norm_def]

/-- Balls around real points meet `ℝᵐ` in balls. -/
theorem realInclusion_mem_ball_iff {m : ℕ} {x x₀ : Fin m → ℝ} {r : ℝ} :
    realInclusion m x ∈ ball (realInclusion m x₀) r ↔ x ∈ ball x₀ r := by
  simp only [mem_ball, dist_eq_norm, ← map_sub, norm_realInclusion]

/-- Componentwise real part `ℂᵖ → ℝᵖ`, as a continuous real-linear map. -/
def realPartCLM (p : ℕ) : (Fin p → ℂ) →L[ℝ] (Fin p → ℝ) :=
  ContinuousLinearMap.pi fun i => Complex.reCLM.comp (ContinuousLinearMap.proj i)

@[simp] theorem realPartCLM_apply {p : ℕ} (v : Fin p → ℂ) (i : Fin p) :
    realPartCLM p v i = (v i).re := rfl

@[simp] theorem realPartCLM_realInclusion {p : ℕ} (y : Fin p → ℝ) :
    realPartCLM p (realInclusion p y) = y := by
  ext i; simp

theorem norm_realPartCLM_le {p : ℕ} (v : Fin p → ℂ) : ‖realPartCLM p v‖ ≤ ‖v‖ := by
  refine (pi_norm_le_iff_of_nonneg (norm_nonneg v)).mpr fun i => ?_
  simpa using Complex.abs_re_le_norm (v i) |>.trans (norm_le_pi_norm v i)

theorem realPartCLM_ofReal_smul {p : ℕ} (a : ℝ) (v : Fin p → ℂ) :
    realPartCLM p ((a : ℂ) • v) = a • realPartCLM p v := by
  ext i; simp

/-- A real-valued `F` is recovered from its componentwise real part. -/
theorem realInclusion_realPartCLM {p : ℕ} {v : Fin p → ℂ} {y : Fin p → ℝ}
    (h : v = realInclusion p y) : realInclusion p (realPartCLM p v) = v := by
  rw [h, realPartCLM_realInclusion]

section Holomorphic

variable {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W]

theorem analyticOnNhd_comp_realInclusion {m : ℕ} {U : Set (Fin m → ℂ)} {F : (Fin m → ℂ) → W}
    (hF : AnalyticOnNhd ℂ F U) :
    AnalyticOnNhd ℝ (fun x : Fin m → ℝ => F (realInclusion m x)) (realInclusion m ⁻¹' U) :=
  fun x hx => (AnalyticAt.restrictScalars (𝕜 := ℝ) (hF _ hx)).comp
    ((realInclusion m).analyticAt x)

variable [CompleteSpace W] [SecondCountableTopology W]

/-- **Blueprint `bp:p1:holomorphic-analytic`.** Let `U ⊆ ℂᵐ` be open and `F : U → W`
holomorphic.

* (a) For every closed polydisc `closedBall z₀ r ⊆ U` (max norm) there are coefficients `c α`,
  independent of any bound, with `‖c α‖ ≤ A / r ^ |α|` for every upper bound `A` of `‖F‖` on the
  closed polydisc (in particular for `A = max ‖F‖`), such that `F z = ∑_α (z - z₀)^α • c α` on the
  open polydisc, the series converging absolutely.
* `F` is analytic on `U`.
* (b) The restriction of `F` to the real points `U ∩ ℝᵐ` is real-analytic.

The real-valued clause of (b) is `KAM.holomorphic_analytic_real`. -/
theorem holomorphic_analytic {m : ℕ} {U : Set (Fin m → ℂ)} (hU : IsOpen U)
    {F : (Fin m → ℂ) → W} (hF : DifferentiableOn ℂ F U) :
    (∀ {z₀ : Fin m → ℂ} {r : ℝ}, 0 < r → closedBall z₀ r ⊆ U →
      ∃ c : (Fin m → ℕ) → W,
        (∀ A : ℝ, (∀ z ∈ closedBall z₀ r, ‖F z‖ ≤ A) → ∀ α, ‖c α‖ ≤ A / r ^ (∑ j, α j)) ∧
        ∀ z ∈ ball z₀ r,
          Summable (fun α : Fin m → ℕ => ‖(∏ j, (z j - z₀ j) ^ α j) • c α‖) ∧
          HasSum (fun α : Fin m → ℕ => (∏ j, (z j - z₀ j) ^ α j) • c α) (F z)) ∧
    AnalyticOnNhd ℂ F U ∧
    AnalyticOnNhd ℝ (fun x : Fin m → ℝ => F (realInclusion m x)) (realInclusion m ⁻¹' U) :=
  ⟨fun hr hcl => holomorphic_series hU hF hr hcl, analyticOnNhd_of_differentiableOn hU hF,
    analyticOnNhd_comp_realInclusion (analyticOnNhd_of_differentiableOn hU hF)⟩

end Holomorphic

section Real

variable {m p : ℕ} {U : Set (Fin m → ℂ)} {F : (Fin m → ℂ) → (Fin p → ℂ)}

/-- **Blueprint `bp:p1:holomorphic-analytic` (b), real-valued clause.** If `F : U → ℂᵖ` is
holomorphic and real on the real points of `U`, then `x ↦ Re F x` is real-analytic on `U ∩ ℝᵐ`
as a map into `ℝᵖ`, and `F x = (Re F x)` there. -/
theorem holomorphic_analytic_real (hU : IsOpen U) (hF : DifferentiableOn ℂ F U)
    (hreal : ∀ x : Fin m → ℝ, realInclusion m x ∈ U →
      ∃ y : Fin p → ℝ, F (realInclusion m x) = realInclusion p y) :
    AnalyticOnNhd ℝ (fun x : Fin m → ℝ => realPartCLM p (F (realInclusion m x)))
        (realInclusion m ⁻¹' U) ∧
      ∀ x ∈ realInclusion m ⁻¹' U,
        F (realInclusion m x) = realInclusion p (realPartCLM p (F (realInclusion m x))) := by
  refine ⟨fun x hx => ((realPartCLM p).analyticAt _).comp
    (analyticOnNhd_comp_realInclusion (analyticOnNhd_of_differentiableOn hU hF) x hx),
    fun x hx => ?_⟩
  obtain ⟨y, hy⟩ := hreal x hx
  exact (realInclusion_realPartCLM hy).symm

/-- **Blueprint `step:p1:han-real`.** At a real point `x₀`, with a closed polydisc
`closedBall (ι x₀) r ⊆ U`, a holomorphic `F : U → ℂᵖ` that is real on the real points of `U` is
the sum of an absolutely convergent power series in `x - x₀` with *real* coefficients `Re c α`,
`‖Re c α‖ ≤ ‖c α‖ ≤ A / r ^ |α|`, for real `x` with `‖x - x₀‖ < r`. -/
theorem holomorphic_series_real (hU : IsOpen U) (hF : DifferentiableOn ℂ F U)
    (hreal : ∀ x : Fin m → ℝ, realInclusion m x ∈ U →
      ∃ y : Fin p → ℝ, F (realInclusion m x) = realInclusion p y)
    {x₀ : Fin m → ℝ} {r : ℝ} (hr : 0 < r) (hcl : closedBall (realInclusion m x₀) r ⊆ U) :
    ∃ c : (Fin m → ℕ) → (Fin p → ℝ),
      (∀ A : ℝ, (∀ z ∈ closedBall (realInclusion m x₀) r, ‖F z‖ ≤ A) →
        ∀ α, ‖c α‖ ≤ A / r ^ (∑ j, α j)) ∧
      ∀ x ∈ ball x₀ r,
        Summable (fun α : Fin m → ℕ => ‖(∏ j, (x j - x₀ j) ^ α j) • c α‖) ∧
        ∃ y : Fin p → ℝ, F (realInclusion m x) = realInclusion p y ∧
          HasSum (fun α : Fin m → ℕ => (∏ j, (x j - x₀ j) ^ α j) • c α) y := by
  obtain ⟨c, hc1, hc2⟩ := holomorphic_series hU hF hr hcl
  refine ⟨fun α => realPartCLM p (c α), fun A hA α => ?_, fun x hx => ?_⟩
  · exact (norm_realPartCLM_le _).trans (hc1 A hA α)
  have hxb : realInclusion m x ∈ ball (realInclusion m x₀) r := realInclusion_mem_ball_iff.mpr hx
  obtain ⟨hs, hsum⟩ := hc2 _ hxb
  have hscal : ∀ α : Fin m → ℕ,
      (∏ j, (realInclusion m x j - realInclusion m x₀ j) ^ α j) =
        (((∏ j, (x j - x₀ j) ^ α j : ℝ)) : ℂ) := fun α => by simp
  have hxU : realInclusion m x ∈ U := hcl (ball_subset_closedBall hxb)
  obtain ⟨y, hy⟩ := hreal x hxU
  refine ⟨?_, y, hy, ?_⟩
  · refine Summable.of_nonneg_of_le (fun α => norm_nonneg _) (fun α => ?_) hs
    rw [hscal, norm_smul, norm_smul, Complex.norm_real]
    exact mul_le_mul_of_nonneg_left (norm_realPartCLM_le _) (norm_nonneg _)
  · have h := (realPartCLM p).hasSum hsum
    simp only [hscal, realPartCLM_ofReal_smul, hy, realPartCLM_realInclusion] at h
    exact h

end Real

end KAM
