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
public import KAM.Frozen.Planetary.Defs.PlaneCross
public import KAM.Frozen.Planetary.Defs.KeplerEnergy

/-!
# Frozen definition `KAM.Planetary.ProgradeElliptic`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Physical elliptic prograde domain, guarding all osculating divisions and square roots. -/
def ProgradeElliptic {n : ℕ} (m : Fin n → ℝ) (z : Phase (n * 2)) : Prop :=
  ∀ i, 0 < m i ∧ 0 < planeLength (bodyVector z.1 i) ∧ keplerEnergy m z i < 0 ∧
    0 < planeCross (bodyVector z.1 i) (bodyVector z.2 i)

end KAM.Planetary

end
