/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Calculus.FDeriv.Basic

/-!
# Frozen definition `KAM.frequencyMap`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: Pos01 p. 6; ruling Q5. This file is
frozen: its bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an
owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The frequency map `∇h(I)` of an integrable Hamiltonian `h`, given as a function on `ℂⁿ` that is
real on real points: the real gradient of `I ↦ Re h(I)` at a real point `I`. -/
def frequencyMap {n : ℕ} (h : (Fin n → ℂ) → ℂ) (I : Fin n → ℝ) : Fin n → ℝ :=
  fun i => fderiv ℝ (fun J : Fin n → ℝ => (h fun j => (J j : ℂ)).re) I (Pi.single i 1)

end KAM

end
