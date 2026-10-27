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
public import KAM.Frozen.Planetary.Defs.SecularGamma

/-!
# Frozen definition `KAM.Planetary.secularEccVector`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Regular planar Poincaré eccentricity vector (ξ,η) times sqrt((1-Γ/(2Λ))/Λ).
Derived from LP17 (10)--(11); no perihelion angle is selected at a circular orbit. -/
def secularEccVector (w : Phase (2 + 2)) (i : Fin 2) : Fin 2 → ℝ :=
  Real.sqrt ((1 - secularGamma w i / (2 * fast w.2 i)) / fast w.2 i) •
    ![slow w.1 i, slow w.2 i]

end KAM.Planetary

end
