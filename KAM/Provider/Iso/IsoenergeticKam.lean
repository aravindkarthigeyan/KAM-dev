/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Iso.Apost.G1

/-!
# Provider for the frozen theorem `KAM.Iso.isoenergetic_kam`

The proof of `KAM.Iso.isoenergetic_kam` is assembled here as `KAM.Provider.Iso.isoenergetic_kam`,
from graph predecessors and approved external inputs only. While the frozen anchor is `DRAFT_SORRY`,
this module is quarantined: no module other than the anchor may import it.

The theorem has exactly the type of the frozen I-G1. Its proof is the anonymous constructor
`⟨_, _, _, KAM.Iso.Apost.g1_explicit …⟩`: `KAM.Iso.Apost.g1_explicit` (blueprint `bpI:p2:g1`) states
the frozen body (`KAM.Iso.Charts.IG1Body`, definitionally the body of the frozen theorem) at the
explicit constants `C₁ = KAM.Iso.Apost.isoC1 …`, `C₂ = C₃ = KAM.Iso.Apost.isoC2 …`.
-/

@[expose] public section

open MeasureTheory

namespace KAM.Provider.Iso

/-- I-G1: canonical isoenergetic a-posteriori KAM, HL19 Theorem 3.6 and Remark 3.7.
Uniformization fixes the ray, its endpoint margin, and an upper bound for gamma first.
The energy conclusion is pointwise, by invariance and nonresonance, not merely averaged.
The type is that of the frozen `KAM.Iso.isoenergetic_kam`; the proof is
`KAM.Iso.Apost.g1_explicit` (blueprint `bpI:p2:g1`). -/
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
        IsUnit (KAM.Iso.extendedTorsionAverage H K (s • ωstar)).det →
        (∀ i, ∑ j, ‖(KAM.Iso.extendedTorsionAverage H K (s • ωstar))⁻¹ i j‖ ≤ σT - μ) →
        1 < s → s < σω → ν ≤ (s - 1) * ‖ωstar‖ → ν ≤ (σω - s) * ‖ωstar‖ →
        0 < γ → γ ≤ γbar → IsDiophantine γ τ ωstar → 0 ≤ e →
        (∀ θ ∈ complexStrip n ρ, ‖invarianceError H K (s • ωstar) θ‖ ≤ e) →
        ‖KAM.Iso.energyAverage H K - (E₀ : ℂ)‖ ≤ e →
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
  ⟨_, _, _, KAM.Iso.Apost.g1_explicit hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar hσω hν ωstar
    hωstar⟩

end KAM.Provider.Iso
