/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Analytic.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
public import Mathlib.MeasureTheory.Measure.Prod
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.MeasureTheory.Integral.IntegrableOn
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import KAM.Frozen.Defs.IsDiophantine
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Defs.SymplecticForm
public import KAM.Frozen.Planetary.Defs.Phase
public import KAM.Frozen.Planetary.Defs.BodyVector
public import KAM.Frozen.Planetary.Defs.PlaneSq
public import KAM.Frozen.Planetary.Defs.PlaneLength

/-!
# Frozen definition `KAM.Planetary.fixedHamiltonian`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Fixed-center Newtonian Hamiltonian: exact model, not arbitrary O(eps) coupling.
Our variant of Fejoz (28) retains only direct planet-planet interactions. -/
def fixedHamiltonian {n : ℕ} (G m0 : ℝ) (m : Fin n → ℝ)
    (eps : ℝ) (z : Phase (n * 2)) : ℝ :=
  (∑ i, (planeSq (bodyVector z.2 i) / (2 * m i) -
    G * m0 * m i / planeLength (bodyVector z.1 i))) -
  eps * ∑ i, ∑ j ∈ Finset.univ.filter (fun j => i < j),
    G * m i * m j / planeLength (bodyVector z.1 i - bodyVector z.1 j)

end KAM.Planetary

end
