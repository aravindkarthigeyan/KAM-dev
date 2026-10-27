/-
Copyright (c) 2026 Scott Armstrong. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong
-/
module

public import Mathlib.Analysis.Complex.Basic

/-!
# Frozen definition `KAM.fundamentalDomain`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: ruling Q2. This file is frozen: its
bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an owner-approved versioned
successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The fundamental domain `[0,1)ⁿ × B` of `Tⁿ × B` in the coordinates `(θ, I)`. -/
def fundamentalDomain {n : ℕ} (B : Set (Fin n → ℝ)) : Set ((Fin n → ℝ) × (Fin n → ℝ)) :=
  Set.pi Set.univ (fun _ : Fin n => Set.Ico (0 : ℝ) 1) ×ˢ B

end KAM

end
