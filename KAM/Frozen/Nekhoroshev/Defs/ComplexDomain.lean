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
public import KAM.Frozen.Nekhoroshev.Defs.ActionBall

/-!
# Frozen definition `KAM.Nekhoroshev.complexDomain`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM.Nekhoroshev

/-- BM p. 4: the period-one lift of `D_s`, with a single geometric width `s`. -/
def complexDomain (n : ℕ) (R s : ℝ) : Set ((Fin n → ℂ) × (Fin n → ℂ)) :=
  KAM.complexStrip n s ×ˢ KAM.actionNbhd (actionBall n R) s

end KAM.Nekhoroshev

end
