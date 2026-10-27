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
public import KAM.Frozen.Iso.Defs.Radius
public import KAM.Frozen.Iso.Defs.Primary1
public import KAM.Frozen.Iso.Defs.Primary2
public import KAM.Frozen.Iso.Defs.CollisionFree

/-!
# Frozen definition `KAM.Iso.restrictedHamiltonian`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory

namespace KAM.Iso

/-- Exact circular restricted Hamiltonian, with canonical momentum p, not rotating velocity.
Chierchia (2005), (1.2), (3.34)--(3.39), in barycentric rotating coordinates. -/
def restrictedHamiltonian (μ : ℝ)
    (z : {z : (Fin 2 → ℝ) × (Fin 2 → ℝ) // CollisionFree μ z}) : ℝ :=
  radiusSq z.val.2 / 2 + z.val.1 1 * z.val.2 0 - z.val.1 0 * z.val.2 1 -
    (1 - μ) / radius (z.val.1 - primary₁ μ) - μ / radius (z.val.1 - primary₂ μ)

end KAM.Iso

end
