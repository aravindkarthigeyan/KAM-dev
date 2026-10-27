/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Planetary.Defs.MovingHamiltonian
public import KAM.Frozen.Planetary.Defs.BarycentricPositions
public import KAM.Frozen.Planetary.Defs.BarycentricVelocities
public import KAM.Frozen.Planetary.Defs.ActualMasses
public import KAM.Frozen.Planetary.Defs.PairBounds
public import KAM.Frozen.Planetary.Defs.NoCollision
public import KAM.Frozen.Planetary.Defs.SecularAverage
public import KAM.Frozen.Planetary.Defs.Fast
public import KAM.Frozen.Planetary.Defs.Slow
public import KAM.Frozen.Planetary.Defs.OscillatorAction
public import KAM.Frozen.Iso.Defs.IsHamiltonianSolutionOn
public import KAM.Frozen.Planetary.Defs.SecularIntegrand

/-!
# Frozen definition `KAM.Planetary.exactSecularHamiltonian`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Exact full double mean-longitude average, evaluated by eccentric-longitude substitution.
Reuses frozen secularAverage including its (2π)^(-2) normalization. Integrability is
certified by SecularRegular in the conclusions, never assumed of the input box. -/
def exactSecularHamiltonian (m : Fin 2 → ℝ) (mu : ℝ) (w : Phase (2 + 2)) : ℝ :=
  secularAverage (secularIntegrand m) mu (fast w.2) (slow w.2) (slow w.1)

end KAM.Planetary

end
