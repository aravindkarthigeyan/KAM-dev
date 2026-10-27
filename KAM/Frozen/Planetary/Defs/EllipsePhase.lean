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
public import KAM.Frozen.Planetary.Defs.EllipsePosition
public import KAM.Frozen.Planetary.Defs.EllipseMomentum

/-!
# Frozen definition `KAM.Planetary.ellipsePhase`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- The literal two-planet phase point on the osculating ellipses at F₁,F₂. -/
def ellipsePhase (m : Fin 2 → ℝ) (w : Phase (2 + 2))
    (F : Fin 2 → ℝ) : Phase (2 * 2) :=
  (fun k => ellipsePosition m w (finProdFinEquiv.symm k).1
      (F (finProdFinEquiv.symm k).1) (finProdFinEquiv.symm k).2,
   fun k => ellipseMomentum m w (finProdFinEquiv.symm k).1
      (F (finProdFinEquiv.symm k).1) (finProdFinEquiv.symm k).2)

end KAM.Planetary

end
