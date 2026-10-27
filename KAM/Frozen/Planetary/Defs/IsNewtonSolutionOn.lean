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
# Frozen definition `KAM.Planetary.IsNewtonSolutionOn`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Finite-interval Newton equations, the interval restriction of frozen IsNewtonSolution.
The all-time frozen predicate cannot express this finite-time conclusion. -/
def IsNewtonSolutionOn {N : ℕ} (mass : Fin N → ℝ) (J : Set ℝ)
    (Q V : ℝ → Fin N → (Fin 2 → ℝ)) : Prop :=
  (∀ t ∈ J, ∀ i j, i ≠ j → 0 < planeLength (Q t j - Q t i)) ∧
  (∀ t ∈ J, ∀ i, HasDerivAt (fun s => Q s i) (V t i) t) ∧
  (∀ t ∈ J, ∀ i, HasDerivAt (fun s => V s i)
    (∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
      (mass j / planeLength (Q t j - Q t i) ^ 3) • (Q t j - Q t i)) t)

end KAM.Planetary

end
