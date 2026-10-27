/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Calculus.FDeriv.Basic

/-!
# Frozen definition `KAM.hamiltonianVectorFieldℂ`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 Rem. 2.1, complexified. This file
is frozen: its bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an
owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The Hamiltonian vector field `X_H = (∂_I H, -∂_θ H)` of a holomorphic function `H(θ, I)` on
`ℂⁿ × ℂⁿ` (HL19 Rem. 2.1, complexified). -/
def hamiltonianVectorFieldℂ {n : ℕ} (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (z : (Fin n → ℂ) × (Fin n → ℂ)) : (Fin n → ℂ) × (Fin n → ℂ) :=
  (fun i => fderiv ℂ H z (0, Pi.single i 1), fun i => -fderiv ℂ H z (Pi.single i 1, 0))

end KAM

end
