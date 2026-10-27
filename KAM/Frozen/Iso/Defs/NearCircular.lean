/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries
public import Mathlib.Analysis.Calculus.Deriv.Basic
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Mathlib.Analysis.SpecialFunctions.Sqrt
public import KAM.Frozen.Defs.TorsionAverage
public import KAM.Frozen.Defs.InvarianceError
public import KAM.Frozen.Defs.IsDiophantine
public import KAM.Frozen.Defs.IsPrimaryOnStrip
public import KAM.Frozen.Defs.IsRealOnReals
public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Defs.RealHamiltonian
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Iso.Defs.RadiusSq

/-!
# Frozen definition `KAM.Iso.NearCircular`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory

namespace KAM.Iso

/-- Open near-circular prograde Kepler annulus in Cartesian phase space, referenced to μ=0.
Here a is semimajor axis and e eccentricity: E=-1/(2a), angular momentum squared=a(1-e²).
Chierchia (2005), (2.24)--(2.26). Existential variables are uniquely determined
positive physical elements; this predicate makes no witness choice and uses no defaults. -/
def NearCircular (aMinus aPlus eMinus ePlus : ℝ) :
    Set ((Fin 2 → ℝ) × (Fin 2 → ℝ)) :=
  {z | ∃ r a e : ℝ, 0 < r ∧ r ^ 2 = radiusSq z.1 ∧ 0 < a ∧ 0 < e ∧ e < 1 ∧
    aMinus < a ∧ a < aPlus ∧ eMinus < e ∧ e < ePlus ∧
    radiusSq z.2 / 2 - 1 / r = -1 / (2 * a) ∧
    0 < z.1 0 * z.2 1 - z.1 1 * z.2 0 ∧
    (z.1 0 * z.2 1 - z.1 1 * z.2 0) ^ 2 = a * (1 - e ^ 2)}

end KAM.Iso

end
