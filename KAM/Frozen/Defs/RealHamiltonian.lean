/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Complex.Basic

/-!
# Frozen definition `KAM.realHamiltonian`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: Pos01 p. 6. This file is frozen: its
bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an owner-approved versioned
successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The real Hamiltonian `H(θ, I) = h(I) + f(θ, I)` at real points, from complex `h` and `f`. -/
def realHamiltonian {n : ℕ} (h : (Fin n → ℂ) → ℂ) (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (z : (Fin n → ℝ) × (Fin n → ℝ)) : ℝ :=
  (h (fun i => (z.2 i : ℂ)) + f (fun i => (z.1 i : ℂ), fun i => (z.2 i : ℂ))).re

end KAM

end
