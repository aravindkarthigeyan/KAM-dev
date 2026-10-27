/-
Copyright (c) 2026 Scott Armstrong. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong
-/
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Calculus.FDeriv.Basic
public import Mathlib.Data.Matrix.Basic
public import KAM.Frozen.Defs.DotC

/-!
# Frozen definition `KAM.gramMatrix`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 (3.4), (3.8). This file is frozen:
its bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an owner-approved
versioned successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The Gram matrix `L(θ)ᵀ L(θ)` of the tangent frame `L(θ) = DK(θ)` (HL19 (3.4), (3.8) with
`d = n`, `G = I`). -/
def gramMatrix {n : ℕ} (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (θ : Fin n → ℂ) :
    Matrix (Fin n) (Fin n) ℂ :=
  fun i j => dotℂ (fderiv ℂ K θ (Pi.single i 1)) (fderiv ℂ K θ (Pi.single j 1))

end KAM

end
