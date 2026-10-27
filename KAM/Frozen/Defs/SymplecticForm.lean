/-
Copyright (c) 2026 Scott Armstrong. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong
-/
module

public import Mathlib.Analysis.Complex.Basic

/-!
# Frozen definition `KAM.symplecticForm`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 Rem. 2.1. This file is frozen: its
bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an owner-approved versioned
successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The standard symplectic form `Σ dIᵢ ∧ dθᵢ` on `ℝⁿ × ℝⁿ`, coordinates `(θ, I)`. -/
def symplecticForm {n : ℕ} (v w : (Fin n → ℝ) × (Fin n → ℝ)) : ℝ :=
  ∑ i, (v.2 i * w.1 i - v.1 i * w.2 i)

end KAM

end
