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
public import KAM.Frozen.Planetary.Defs.KeplerAction
public import KAM.Frozen.Planetary.Defs.PhysicalAMD
public import KAM.Frozen.Planetary.Defs.ProgradeElliptic

/-!
# Frozen definition `KAM.Planetary.LowAMDRegion`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Fixed action/AMD region used in round 2 §2; includes circular configurations. -/
def LowAMDRegion {n : ℕ} (m lo hi : Fin n → ℝ) (A : ℝ) : Set (Phase (n * 2)) :=
  {z | ProgradeElliptic m z ∧ (∀ i, lo i < keplerAction m z i ∧
    keplerAction m z i < hi i) ∧ physicalAMD m z < A}

end KAM.Planetary

end
