/-
Copyright (c) 2026 Scott Armstrong. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong
-/
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Calculus.FDeriv.Basic
public import KAM.Frozen.Defs.HamiltonianVectorFieldC

/-!
# Frozen definition `KAM.invarianceError`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 (2.2), (3.9). This file is frozen:
its bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an owner-approved
versioned successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The invariance error `E(θ) = X_h(K(θ)) - DK(θ) ω` (HL19 (2.2), (3.9)). -/
def invarianceError {n : ℕ} (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (θ : Fin n → ℂ) :
    (Fin n → ℂ) × (Fin n → ℂ) :=
  hamiltonianVectorFieldℂ h (K θ) - fderiv ℂ K θ (fun i => (ω i : ℂ))

end KAM

end
