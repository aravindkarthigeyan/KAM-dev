/-
Copyright (c) 2026 Scott Armstrong. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong
-/
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Calculus.FDeriv.Basic
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import KAM.Frozen.Defs.GramMatrix
public import KAM.Frozen.Defs.OmegaZero

/-!
# Frozen definition `KAM.normalFrame`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 (3.2)–(3.5), Case III. This file
is frozen: its bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an
owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- Column `j` of the normal frame `N(θ) = Ω₀ L(θ) B(θ)`, `B = (LᵀL)⁻¹` (HL19 (3.2)–(3.5), canonical
case, `A = 0`). -/
def normalFrame {n : ℕ} (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (θ : Fin n → ℂ)
    (j : Fin n) : (Fin n → ℂ) × (Fin n → ℂ) :=
  ∑ k, (gramMatrix K θ)⁻¹ k j • omegaZero (fderiv ℂ K θ (Pi.single k 1))

end KAM

end
