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

/-!
# Frozen definition `KAM.Iso.keplerBorder`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory

namespace KAM.Iso

/-- The literal classical bordered matrix for h(L,G)=-κ/(2L²)-ΩG, L>0.
Chierchia (2005), p. 17, is κ=Ω=1. All denominators have positive L by the carrier. -/
def keplerBorder (κ Ω : ℝ) (L : {L : ℝ // 0 < L}) : Matrix (Fin 3) (Fin 3) ℝ :=
  !![-3 * κ / L.val ^ 4, 0, κ / L.val ^ 3;
      0, 0, -Ω;
      κ / L.val ^ 3, -Ω, 0]

end KAM.Iso

end
