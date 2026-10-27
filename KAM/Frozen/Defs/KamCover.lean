/-
Copyright (c) 2026 Scott Armstrong. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong
-/
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Calculus.FDeriv.Basic
public import KAM.Frozen.Defs.IsDiophantine
public import KAM.Frozen.Defs.IsInvariantLagrangianTorus
public import KAM.Frozen.Defs.RealHamiltonian
public import KAM.Frozen.Defs.FrequencyMap

/-!
# Frozen definition `KAM.kamCover`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: Pos01 p. 6; ruling Q3. This file is
frozen: its bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an
owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The points lying on the KAM tori of the headline theorem for `H = h + f`: invariant Lagrangian
tori (`IsInvariantLagrangianTorus`) with a `(γ, τ)`-Diophantine frequency `ω = ∇h(I₀)`, `I₀ ∈ B`,
whose actions stay within `r₀` of `B`, and which lie within `δ` of the unperturbed torus
`θ ↦ (θ, I₀)`. -/
def kamCover {n : ℕ} (h : (Fin n → ℂ) → ℂ) (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (B : Set (Fin n → ℝ)) (r₀ τ δ : ℝ) : Set ((Fin n → ℝ) × (Fin n → ℝ)) :=
  {z | ∃ (K : (Fin n → ℝ) → (Fin n → ℝ) × (Fin n → ℝ)) (ω : Fin n → ℝ) (γ : ℝ) (I₀ : Fin n → ℝ),
    0 < γ ∧ IsDiophantine γ τ ω ∧ IsInvariantLagrangianTorus (realHamiltonian h f) ω K ∧
    (∀ θ, ∃ J ∈ B, ‖(K θ).2 - J‖ < r₀) ∧
    I₀ ∈ B ∧ frequencyMap h I₀ = ω ∧ (∀ θ, ‖K θ - (θ, I₀)‖ ≤ δ) ∧ z ∈ Set.range K}

end KAM

end
