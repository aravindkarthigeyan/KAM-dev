/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
-- FROZEN_ANCHOR_PREFIX_BEGIN
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Calculus.FDeriv.Basic
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Defs.HamiltonianVectorFieldC
public import KAM.Frozen.Defs.IsPrimaryOnStrip
public import KAM.Frozen.Defs.IsRealOnReals
public import KAM.Frozen.Defs.GramMatrix
public import KAM.Frozen.Defs.TorsionAverage
public import KAM.Frozen.Defs.InvarianceError
public import KAM.Frozen.Defs.IsDiophantine
import KAM.Provider.AposterioriKam

/-!
# Frozen theorem `KAM.aposteriori_kam`

Owner-approved on 2026-10-27 (statement draft v0.2). The statement is frozen and hashed in
`manifest/frozen-anchors.json`; only the proof body between the markers may change, and only
to `by exact KAM.Provider.aposteriori_kam` when the provider
`KAM.Provider.AposterioriKam` is complete (sealing).
-/

@[expose] public section

open MeasureTheory

namespace KAM

/-- **G1.** A-posteriori KAM theorem at fixed frequency (HL19 Thm 3.1; `d = n`, canonical, primary
tori). -/
theorem aposteriori_kam {n : ℕ} (hn : 2 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 ≤ τ)
    {ρ ρinf : ℝ} (hρinf : 0 < ρinf) (hρinfρ : ρinf < ρ)
    {M σK σB σT μ : ℝ} (hM : 0 < M) (hσK : 0 < σK) (hσB : 0 < σB) (hσT : 0 < σT) (hμ : 0 < μ)
    {γbar : ℝ} (hγbar : 0 < γbar) :
    ∃ C₁ C₂ : ℝ, 0 < C₁ ∧ 0 < C₂ ∧
      ∀ (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))) (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
        (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (γ e : ℝ),
        -- H1: the Hamiltonian
        IsOpen 𝔅 →
        (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ 𝔅) →
        DifferentiableOn ℂ h 𝔅 →
        (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, h (z.1 + (fun i => (k i : ℂ)), z.2) = h z) →
        (∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ 𝔅 →
          (h ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
        (∀ z ∈ 𝔅, ‖fderiv ℂ h z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ h z‖ ≤ M ∧
          ‖fderiv ℂ (hamiltonianVectorFieldℂ h) z‖ ≤ M ∧
          ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖ ≤ M) →
        -- H2: the parameterization
        DifferentiableOn ℂ K (complexStrip n ρ) → IsPrimaryOnStrip K ρ → IsRealOnReals K →
        (∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ 𝔅) →
        (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ) →
        -- H3: the tangent frame has maximal rank, with `|B(θ)| ≤ σB - μ`
        (∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧
          ∀ i, ∑ j, ‖(gramMatrix K θ)⁻¹ i j‖ ≤ σB - μ) →
        -- H4: twist condition
        IsUnit (torsionAverage h K ω).det →
        (∀ i, ∑ j, ‖(torsionAverage h K ω)⁻¹ i j‖ ≤ σT - μ) →
        -- H5: Diophantine frequency, with `γ ≤ γbar`
        0 < γ → γ ≤ γbar → IsDiophantine γ τ ω →
        -- smallness of the invariance error
        (∀ θ ∈ complexStrip n ρ, ‖invarianceError h K ω θ‖ ≤ e) →
        C₁ * e / (γ ^ 4 * ρ ^ (4 * τ)) < 1 →
        ∃ Kinf : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ),
          DifferentiableOn ℂ Kinf (complexStrip n ρinf) ∧ IsPrimaryOnStrip Kinf ρinf ∧
          IsRealOnReals Kinf ∧
          (∀ θ ∈ complexStrip n ρinf, invarianceError h Kinf ω θ = 0) ∧
          (∀ θ ∈ complexStrip n ρinf, Metric.ball (Kinf θ) (μ / 2) ⊆ 𝔅) ∧
          (∀ θ ∈ complexStrip n ρinf, ‖fderiv ℂ Kinf θ‖ ≤ σK - μ / 2) ∧
          ∀ θ ∈ complexStrip n ρinf, ‖Kinf θ - K θ‖ ≤ C₂ * e / (γ ^ 2 * ρ ^ (2 * τ)) :=
  -- FROZEN_ANCHOR_PROOF_BEGIN
  by exact KAM.Provider.aposteriori_kam hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar
  -- FROZEN_ANCHOR_PROOF_END
-- FROZEN_ANCHOR_SUFFIX_BEGIN

end KAM

end
-- FROZEN_ANCHOR_SUFFIX_END
