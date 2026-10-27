/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
-- FROZEN_ANCHOR_PREFIX_BEGIN
module

public import Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries
public import Mathlib.Analysis.Calculus.Deriv.Basic
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Mathlib.Analysis.SpecialFunctions.Sqrt
public import KAM.Frozen.Defs.TorsionAverage
public import KAM.Frozen.Defs.InvarianceError
public import KAM.Frozen.Defs.IsDiophantine
public import KAM.Frozen.Defs.IsPrimaryOnStrip
public import KAM.Frozen.Defs.IsRealOnReals
public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Defs.RealHamiltonian
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Iso.Defs.ExtendedTorsionAverage
public import KAM.Frozen.Iso.Defs.EnergyAverage
import KAM.Provider.Iso.IsoenergeticKam

/-!
# Frozen theorem `KAM.Iso.isoenergetic_kam`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor. Only the
proof body between the markers may change, and only to `by exact KAM.Provider.Iso.isoenergetic_kam`
when the provider `KAM.Provider.Iso.IsoenergeticKam` is complete (sealing).
-/

@[expose] public section

open MeasureTheory

namespace KAM.Iso

/-- I-G1: canonical isoenergetic a-posteriori KAM, HL19 Theorem 3.6 and Remark 3.7.
Uniformization fixes the ray, its endpoint margin, and an upper bound for gamma first.
The energy conclusion is pointwise, by invariance and nonresonance, not merely averaged. -/
theorem isoenergetic_kam {n : ℕ} (hn : 2 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 ≤ τ)
    {ρ ρinf : ℝ} (hρinf : 0 < ρinf) (hρinfρ : ρinf < ρ)
    {M σK σB σT μ γbar σω ν : ℝ}
    (hM : 0 < M) (hσK : 0 < σK) (hσB : 0 < σB) (hσT : 0 < σT)
    (hμ : 0 < μ) (hγbar : 0 < γbar) (hσω : 1 < σω) (hν : 0 < ν)
    (ωstar : Fin n → ℝ) (hωstar : ωstar ≠ 0) :
    ∃ C₁ C₂ C₃ : ℝ, 0 < C₁ ∧ 0 < C₂ ∧ 0 < C₃ ∧
      ∀ (D : Set ((Fin n → ℂ) × (Fin n → ℂ)))
        (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
        (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (s γ e E₀ : ℝ),
        IsOpen D →
        (∀ z ∈ D, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ D) →
        DifferentiableOn ℂ H D →
        (∀ z ∈ D, ∀ k : Fin n → ℤ, H (z.1 + (fun i => (k i : ℂ)), z.2) = H z) →
        (∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ D →
          (H ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
        (∀ z ∈ D, ‖fderiv ℂ H z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ H z‖ ≤ M ∧
          ‖fderiv ℂ (hamiltonianVectorFieldℂ H) z‖ ≤ M ∧
          ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ H) z‖ ≤ M ∧
          ‖iteratedFDeriv ℂ 2 H z‖ ≤ M) →
        DifferentiableOn ℂ K (complexStrip n ρ) →
        IsPrimaryOnStrip K ρ → IsRealOnReals K →
        (∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ D) →
        (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ) →
        (∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧
          ∀ i, ∑ j, ‖(gramMatrix K θ)⁻¹ i j‖ ≤ σB - μ) →
        IsUnit (extendedTorsionAverage H K (s • ωstar)).det →
        (∀ i, ∑ j, ‖(extendedTorsionAverage H K (s • ωstar))⁻¹ i j‖ ≤ σT - μ) →
        1 < s → s < σω → ν ≤ (s - 1) * ‖ωstar‖ → ν ≤ (σω - s) * ‖ωstar‖ →
        0 < γ → γ ≤ γbar → IsDiophantine γ τ ωstar → 0 ≤ e →
        (∀ θ ∈ complexStrip n ρ, ‖invarianceError H K (s • ωstar) θ‖ ≤ e) →
        ‖energyAverage H K - (E₀ : ℂ)‖ ≤ e →
        C₁ * e / (γ ^ 4 * ρ ^ (4 * τ)) < 1 →
        ∃ (Kinf : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (sinf : ℝ),
          1 < sinf ∧ sinf < σω ∧
          DifferentiableOn ℂ Kinf (complexStrip n ρinf) ∧
          IsPrimaryOnStrip Kinf ρinf ∧ IsRealOnReals Kinf ∧
          (∀ θ ∈ complexStrip n ρinf, invarianceError H Kinf (sinf • ωstar) θ = 0) ∧
          (∀ θ ∈ complexStrip n ρinf, H (Kinf θ) = (E₀ : ℂ)) ∧
          (∀ θ ∈ complexStrip n ρinf, Metric.ball (Kinf θ) (μ / 2) ⊆ D) ∧
          (∀ θ ∈ complexStrip n ρinf, ‖fderiv ℂ Kinf θ‖ ≤ σK - μ / 2) ∧
          (∀ θ ∈ complexStrip n ρinf,
            ‖Kinf θ - K θ‖ ≤ C₂ * e / (γ ^ 2 * ρ ^ (2 * τ))) ∧
          ‖sinf • ωstar - s • ωstar‖ ≤ C₃ * e / (γ ^ 2 * ρ ^ (2 * τ)) :=
  -- FROZEN_ANCHOR_PROOF_BEGIN
  by sorry
  -- FROZEN_ANCHOR_PROOF_END
-- FROZEN_ANCHOR_SUFFIX_BEGIN

end KAM.Iso

end
-- FROZEN_ANCHOR_SUFFIX_END
