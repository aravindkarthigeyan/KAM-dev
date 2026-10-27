/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.G1

/-!
# Provider for the frozen theorem `KAM.aposteriori_kam`

The proof of `KAM.aposteriori_kam` is assembled here as `KAM.Provider.aposteriori_kam`, from graph
predecessors and approved external inputs only. While the frozen anchor is `DRAFT_SORRY`, this
module is quarantined: no module other than the anchor may import it.

The theorem has exactly the type of the frozen G1. Its proof is the anonymous constructor
`⟨_, _, KAM.Apost.g1_explicit …⟩`: `KAM.Apost.g1_explicit` (blueprint `bp:p2:g1`) is the frozen
statement with the explicit constants `C₁ = KAM.Apost.C_1 …` and `C₂ = KAM.Apost.C_2 …`.
-/

@[expose] public section

namespace KAM.Provider

/-- **G1.** A-posteriori KAM theorem at fixed frequency (HL19 Thm 3.1; `d = n`, canonical, primary
tori). The type is that of the frozen `KAM.aposteriori_kam`; the proof is `KAM.Apost.g1_explicit`
(blueprint `bp:p2:g1`). -/
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
  ⟨_, _, KAM.Apost.g1_explicit hn hτ hρinf hρinfρ hM hσK hσB hσT hμ hγbar⟩

end KAM.Provider
