/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Defs.RealHamiltonian
public import Mathlib.Analysis.Calculus.ContDiff.Defs
public import Mathlib.Analysis.Calculus.Deriv.Basic
public import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Frozen definition `KAM.Nekhoroshev.integrableOrbit`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM.Nekhoroshev

/-- The exact integrable orbit, from `H(θ,I)=h(I)` in BM p. 1.
Its derivative interpretation is asserted only under the regularity hypotheses below. -/
def integrableOrbit {n : ℕ} (h : (Fin n → ℂ) → ℂ)
    (θ₀ I₀ : Fin n → ℝ) (t : ℝ) : (Fin n → ℝ) × (Fin n → ℝ) :=
  (θ₀ + t • KAM.frequencyMap h I₀, I₀)

end KAM.Nekhoroshev

end
