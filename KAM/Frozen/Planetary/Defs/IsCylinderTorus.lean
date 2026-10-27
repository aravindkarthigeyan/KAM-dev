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
public import KAM.Frozen.Planetary.Defs.FastShift

/-!
# Frozen definition `KAM.Planetary.IsCylinderTorus`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Analytic Lagrangian torus on CP10's cylinder, parameterized with period one.
The canonical fast angles themselves retain period `2*pi`. CP11 Theorem 11.1. -/
def IsCylinderTorus {a b : ℕ} (H : Phase (a + b) → ℝ)
    (U : Set (Phase (a + b))) (w : Fin (a + b) → ℝ)
    (K : (Fin (a + b) → ℝ) → Phase (a + b)) : Prop :=
  AnalyticOnNhd ℝ K Set.univ ∧
  (∀ theta, K theta ∈ U ∧ DifferentiableAt ℝ H (K theta)) ∧
  (∀ theta (k : Fin (a + b) → ℤ),
    K (theta + fun i => (k i : ℝ)) =
      K theta + fastShift (fun i : Fin a => k (Fin.castAdd b i))) ∧
  (∀ theta theta' (k : Fin a → ℤ), K theta' = K theta + fastShift k →
    ∃ ell : Fin (a + b) → ℤ, theta' = theta + fun i => (ell i : ℝ)) ∧
  (∀ theta, Function.Injective (fderiv ℝ K theta)) ∧
  (∀ theta u v, KAM.symplecticForm (fderiv ℝ K theta u) (fderiv ℝ K theta v) = 0) ∧
  (∀ theta t, HasDerivAt (fun s : ℝ => K (theta + s • w))
    (KAM.hamiltonianVectorField H (K (theta + t • w))) t)

end KAM.Planetary

end
