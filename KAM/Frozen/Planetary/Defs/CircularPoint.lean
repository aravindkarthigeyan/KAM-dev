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

/-!
# Frozen definition `KAM.Planetary.circularPoint`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Circular prograde Kepler configurations at mu = 0. Positive G,m0,a guard sqrt/division. -/
def circularPoint {n : ℕ} (G m0 : ℝ) (m a : Fin n → ℝ)
    (phi : Fin n → ℝ) : Phase (n * 2) :=
  (fun k => let ik := finProdFinEquiv.symm k
            a ik.1 * (![Real.cos (2 * Real.pi * phi ik.1),
              Real.sin (2 * Real.pi * phi ik.1)] : Fin 2 → ℝ) ik.2,
   fun k => let ik := finProdFinEquiv.symm k
            m ik.1 * Real.sqrt (G * m0 / a ik.1) *
              (![-Real.sin (2 * Real.pi * phi ik.1),
                Real.cos (2 * Real.pi * phi ik.1)] : Fin 2 → ℝ) ik.2)

end KAM.Planetary

end
