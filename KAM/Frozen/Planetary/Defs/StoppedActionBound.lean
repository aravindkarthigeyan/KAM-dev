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
public import KAM.Frozen.Planetary.Defs.LowAMDRegion
public import KAM.Frozen.Planetary.Defs.AMDBox
public import KAM.Frozen.Planetary.Defs.IsMovingSolutionOn

/-!
# Frozen definition `KAM.Planetary.StoppedActionBound`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Stopped action estimate, not whole-horizon confinement. Both one-sided intervals
are allowed. Nek77 Thm 4.4 applies for arbitrary duration C; negative time uses -H. -/
def StoppedActionBound {n : ℕ} (B : AMDBox n) (mu T delta : ℝ)
    (z0 : Phase (n * 2)) : Prop :=
  ∀ (l r : ℝ) (z : ℝ → Phase (n * 2)), l ≤ 0 → 0 ≤ r → l < r → z 0 = z0 →
    IsMovingSolutionOn B.mass mu (Set.Icc l r) z →
    (∀ t ∈ Set.Icc l r,
      z t ∈ LowAMDRegion B.mass B.lower B.upper B.outerAMD) →
    ∀ t ∈ Set.Icc l r ∩ Set.Icc (-T) T, ∀ i,
      |keplerAction B.mass (z t) i - keplerAction B.mass z0 i| ≤ delta

end KAM.Planetary

end
