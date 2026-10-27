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
public import KAM.Frozen.Planetary.Defs.BodyVector

/-!
# Frozen definition `KAM.Planetary.barycentricPositions`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Barycentric positions from heliocentric coordinates, Fejoz Section 6.1.
The denominator is positive for positive masses and mu. -/
def barycentricPositions {n : ℕ} (m0 : ℝ) (m : Fin n → ℝ)
    (mu : ℝ) (q : Fin (n * 2) → ℝ) : Fin (n + 1) → (Fin 2 → ℝ) :=
  let x0 := (-mu / (m0 + mu * ∑ i, m i)) • ∑ i, m i • bodyVector q i
  Fin.cons x0 (fun i => x0 + bodyVector q i)

end KAM.Planetary

end
