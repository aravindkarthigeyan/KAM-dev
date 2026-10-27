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
public import KAM.Frozen.Planetary.Defs.SecularEccVector
public import KAM.Frozen.Planetary.Defs.SecularAxis
public import KAM.Frozen.Planetary.Defs.JupiterSaturnWeights

/-!
# Frozen definition `KAM.Planetary.SecularInputBox`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Rational illustrative input box, round 2 §3. All mean longitudes and perihelia allowed.
This is a canonical-element box, not an observational uncertainty enclosure. -/
def SecularInputBox (saturn : ℝ) (w : Phase (2 + 2)) : Prop :=
  (∀ i, 0 < fast w.2 i ∧ 0 ≤ secularGamma w i ∧ secularGamma w i < fast w.2 i) ∧
  (103 / 20 : ℝ) ≤ secularAxis (jupiterSaturnWeights saturn) w 0 ∧
  secularAxis (jupiterSaturnWeights saturn) w 0 ≤ (21 / 4 : ℝ) ∧
  (189 / 20 : ℝ) ≤ secularAxis (jupiterSaturnWeights saturn) w 1 ∧
  secularAxis (jupiterSaturnWeights saturn) w 1 ≤ (193 / 20 : ℝ) ∧
  planeLength (secularEccVector w 0) ≤ (3 / 50 : ℝ) ∧
  planeLength (secularEccVector w 1) ≤ (7 / 100 : ℝ)

end KAM.Planetary

end
