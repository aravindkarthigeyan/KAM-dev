/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Uniq.G2

/-!
# Provider for the frozen theorem `KAM.local_uniqueness_flow`

The proof of `KAM.local_uniqueness_flow` is assembled here as `KAM.Provider.local_uniqueness_flow`,
from graph predecessors and approved external inputs only. While the frozen anchor is `DRAFT_SORRY`,
this module is quarantined: no module other than the anchor may import it.

The theorem has exactly the type of the frozen `KAM.local_uniqueness_flow`. Its proof is the
anonymous constructor `⟨_, KAM.Uniq.g2_explicit …⟩`: the explicit statement
`KAM.Uniq.g2_explicit` (`KAM/Uniq/G2.lean`, the proof of `bp:p0:g2` in Part 3 of the blueprint)
carries the same body with the threshold `c := KAM.Uniq.threshold …` (`eq:p3:c`).
-/

@[expose] public section

namespace KAM.Provider

/-- **G2.** Local uniqueness of invariant tori of flows, modulo phase (ours; template GJLV05
Thm 2). The statement is that of `KAM.local_uniqueness_flow`; the constant `c` is
`KAM.Uniq.threshold n τ ρ M σK σB σT μ`. -/
theorem local_uniqueness_flow {n : ℕ} (hn : 2 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 ≤ τ)
    {ρ : ℝ} (hρ : 0 < ρ)
    {M σK σB σT μ : ℝ} (hM : 0 < M) (hσK : 0 < σK) (hσB : 0 < σB) (hσT : 0 < σT) (hμ : 0 < μ) :
    ∃ c : ℝ, 0 < c ∧
      ∀ (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))) (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
        (K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (γ : ℝ),
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
        -- the reference torus `K₁`: H2–H4 and invariance
        DifferentiableOn ℂ K₁ (complexStrip n ρ) → IsPrimaryOnStrip K₁ ρ → IsRealOnReals K₁ →
        (∀ θ ∈ complexStrip n ρ, Metric.ball (K₁ θ) μ ⊆ 𝔅) →
        (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K₁ θ‖ ≤ σK - μ) →
        (∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K₁ θ).det ∧
          ∀ i, ∑ j, ‖(gramMatrix K₁ θ)⁻¹ i j‖ ≤ σB - μ) →
        IsUnit (torsionAverage h K₁ ω).det →
        (∀ i, ∑ j, ‖(torsionAverage h K₁ ω)⁻¹ i j‖ ≤ σT - μ) →
        0 < γ → IsDiophantine γ τ ω →
        (∀ θ ∈ complexStrip n ρ, invarianceError h K₁ ω θ = 0) →
        -- the second torus `K₂`
        DifferentiableOn ℂ K₂ (complexStrip n ρ) → IsPrimaryOnStrip K₂ ρ → IsRealOnReals K₂ →
        (∀ θ ∈ complexStrip n ρ, K₂ θ ∈ 𝔅) →
        (∀ θ ∈ complexStrip n ρ, invarianceError h K₂ ω θ = 0) →
        -- closeness
        (∀ θ ∈ complexStrip n ρ, ‖K₁ θ - K₂ θ‖ ≤ c * γ ^ 2 * ρ ^ (2 * τ)) →
        ∃ φ : Fin n → ℝ, ∀ θ ∈ complexStrip n (ρ / 2), K₂ θ = K₁ (θ + (fun i => (φ i : ℂ))) :=
  ⟨_, KAM.Uniq.g2_explicit hn hτ hρ hM hσK hσB hσT hμ⟩

end KAM.Provider

end
