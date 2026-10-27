/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Complex.Basic

/-!
# Frozen definition `KAM.complexStrip`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 §2.1. This file is frozen: its
bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an owner-approved versioned
successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The complex strip `{θ ∈ ℂⁿ : |Im θᵢ| < ρ for all i}` (HL19 §2.1). -/
def complexStrip (n : ℕ) (ρ : ℝ) : Set (Fin n → ℂ) :=
  {θ | ∀ i, |(θ i).im| < ρ}

end KAM

end
