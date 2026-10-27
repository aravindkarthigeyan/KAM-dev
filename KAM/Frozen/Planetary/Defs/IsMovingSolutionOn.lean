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

/-!
# Frozen definition `KAM.Planetary.IsMovingSolutionOn`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Genuine reduced full-system solution; reuse the frozen differentiability-guarded ODE. -/
def IsMovingSolutionOn {n : ℕ} (m : Fin n → ℝ) (mu : ℝ)
    (J : Set ℝ) (z : ℝ → Phase (n * 2)) : Prop :=
  KAM.Iso.IsHamiltonianSolutionOn (movingHamiltonian 1 1 m mu) Set.univ J z ∧
    ∀ t ∈ J, NoCollision (z t).1

end KAM.Planetary

end
