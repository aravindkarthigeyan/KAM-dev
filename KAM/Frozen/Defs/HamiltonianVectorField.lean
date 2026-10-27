/-
Copyright (c) 2026 Scott Armstrong. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong
-/
module

public import Mathlib.Analysis.Calculus.FDeriv.Basic

/-!
# Frozen definition `KAM.hamiltonianVectorField`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 Rem. 2.1. This file is frozen: its
bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an owner-approved versioned
successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The Hamiltonian vector field `X_H = (∂_I H, -∂_θ H)` of a real function `H(θ, I)` on `ℝⁿ × ℝⁿ`,
for the standard symplectic form `Σ dIᵢ ∧ dθᵢ` (HL19 Rem. 2.1). -/
def hamiltonianVectorField {n : ℕ} (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ)
    (z : (Fin n → ℝ) × (Fin n → ℝ)) : (Fin n → ℝ) × (Fin n → ℝ) :=
  (fun i => fderiv ℝ H z (0, Pi.single i 1), fun i => -fderiv ℝ H z (Pi.single i 1, 0))

end KAM

end
