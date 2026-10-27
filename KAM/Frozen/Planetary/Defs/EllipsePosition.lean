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
public import KAM.Frozen.Planetary.Defs.OrbitalUnit
public import KAM.Frozen.Planetary.Defs.SecularRoot
public import KAM.Frozen.Planetary.Defs.SecularEccVector
public import KAM.Frozen.Planetary.Defs.SecularAxis

/-!
# Frozen definition `KAM.Planetary.ellipsePosition`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Explicit osculating Kepler position at eccentric longitude, including e=0.
Rewriting q=a((cos E-e)u+sqrt(1-e²)sin E Ju) gives this regular formula. -/
def ellipsePosition (m : Fin 2 → ℝ) (w : Phase (2 + 2))
    (i : Fin 2) (F : ℝ) : Fin 2 → ℝ :=
  let v := secularEccVector w i
  let c := orbitalUnit F
  secularAxis m w i •
    (secularRoot w i • c - v + (planeDot v c / (1 + secularRoot w i)) • v)

end KAM.Planetary

end
