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
# Frozen definition `KAM.Iso.IsHamiltonianSolutionOn`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory

namespace KAM.Iso

/-- A genuine lifted Hamiltonian solution on an open time interval, in an action domain.
The domain is part of the solution concept, not an assumed confinement estimate. -/
def IsHamiltonianSolutionOn {n : ℕ} (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ)
    (B : Set (Fin n → ℝ)) (J : Set ℝ)
    (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)) : Prop :=
  ∀ t ∈ J, (z t).2 ∈ B ∧ DifferentiableAt ℝ H (z t) ∧
    HasDerivAt z (hamiltonianVectorField H (z t)) t

end KAM.Iso

end
