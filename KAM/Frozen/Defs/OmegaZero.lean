/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Complex.Basic

/-!
# Frozen definition `KAM.omegaZero`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 Rem. 2.1, Rem. 3.3. This file is
frozen: its bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an
owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The canonical matrix `Ω₀ = [[0, -I], [I, 0]]` applied to `(a, b)`: `Ω₀ (a, b) = (-b, a)`. -/
def omegaZero {n : ℕ} (u : (Fin n → ℂ) × (Fin n → ℂ)) : (Fin n → ℂ) × (Fin n → ℂ) :=
  (-u.2, u.1)

end KAM

end
