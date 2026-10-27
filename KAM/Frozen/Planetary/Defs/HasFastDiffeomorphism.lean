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
public import KAM.Frozen.Planetary.Defs.FastFrequency

/-!
# Frozen definition `KAM.Planetary.HasFastDiffeomorphism`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- CP10 (A1), with an explicit smooth inverse rather than a totalized inverse. -/
def HasFastDiffeomorphism {a : ℕ} (H0 : (Fin a → ℝ) → ℝ)
    (V : Set (Fin a → ℝ)) : Prop :=
  AnalyticOnNhd ℝ H0 V ∧ IsOpen (fastFrequency H0 '' V) ∧
  ∃ g : (Fin a → ℝ) → (Fin a → ℝ),
    ContDiffOn ℝ 1 g (fastFrequency H0 '' V) ∧
    (∀ I ∈ V, g (fastFrequency H0 I) = I) ∧
    (∀ w ∈ fastFrequency H0 '' V, g w ∈ V ∧ fastFrequency H0 (g w) = w)

end KAM.Planetary

end
