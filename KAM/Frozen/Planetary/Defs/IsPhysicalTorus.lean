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
# Frozen definition `KAM.Planetary.IsPhysicalTorus`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Compact analytic torus in Cartesian phase space, embedded modulo integer phases.
KAM's frozen primary-torus predicate has different winding and cannot be reused. -/
def IsPhysicalTorus {d : ℕ} (H : Phase d → ℝ) (w : Fin d → ℝ)
    (K : (Fin d → ℝ) → Phase d) : Prop :=
  AnalyticOnNhd ℝ K Set.univ ∧
  (∀ theta, DifferentiableAt ℝ H (K theta)) ∧
  (∀ theta (k : Fin d → ℤ), K (theta + fun i => (k i : ℝ)) = K theta) ∧
  (∀ theta theta', K theta = K theta' →
    ∃ k : Fin d → ℤ, theta' = theta + fun i => (k i : ℝ)) ∧
  (∀ theta, Function.Injective (fderiv ℝ K theta)) ∧
  (∀ theta u v, KAM.symplecticForm (fderiv ℝ K theta u) (fderiv ℝ K theta v) = 0) ∧
  (∃ gamma tau : ℝ, 0 < gamma ∧ (d : ℝ) - 1 < tau ∧
    KAM.IsDiophantine gamma tau w) ∧
  (∀ theta t, HasDerivAt (fun s : ℝ => K (theta + s • w))
    (KAM.hamiltonianVectorField H (K (theta + t • w))) t)

end KAM.Planetary

end
