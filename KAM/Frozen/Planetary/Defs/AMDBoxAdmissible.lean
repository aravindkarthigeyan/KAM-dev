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
public import KAM.Frozen.Planetary.Defs.AMDBox

/-!
# Frozen definition `KAM.Planetary.AMDBox.Admissible`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Source standing geometry, independent of μ: nested boxes, low AMD, separated annuli.
The all-pairs radial margin is an explicit convenient sufficient separation condition. -/
def AMDBox.Admissible {n : ℕ} (B : AMDBox n) : Prop :=
  (∀ i, 0 < B.mass i ∧ 0 < B.lower i ∧ B.lower i < B.innerLower i ∧
    B.innerLower i < B.innerUpper i ∧ B.innerUpper i < B.upper i) ∧
  0 < B.ecc ∧ B.ecc < 1 ∧ 0 < B.initialAMD ∧ B.initialAMD < B.outerAMD ∧
  (∀ i, B.outerAMD < B.lower i * (1 - Real.sqrt (1 - B.ecc ^ 2))) ∧
  0 < B.distance ∧ 0 < B.radius ∧
  (∀ i, B.distance ≤ (B.lower i / B.mass i) ^ 2 * (1 - B.ecc) ∧
    (B.upper i / B.mass i) ^ 2 * (1 + B.ecc) ≤ B.radius) ∧
  (∀ i j, i < j → (B.upper i / B.mass i) ^ 2 * (1 + B.ecc) + B.distance ≤
    (B.lower j / B.mass j) ^ 2 * (1 - B.ecc))

end KAM.Planetary

end
