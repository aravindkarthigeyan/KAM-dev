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
public import KAM.Frozen.Planetary.Defs.Fast
public import KAM.Frozen.Planetary.Defs.Slow
public import KAM.Frozen.Planetary.Defs.Cylinder
public import KAM.Frozen.Planetary.Defs.IsCylinderTorus

/-!
# Frozen definition `KAM.Planetary.IsCylinderKolmogorovSet`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- A union of cylinder tori, with fast/slow frequency bounds and explicit measure cell.
The Diophantine constant may depend on the torus, as in CP11 Theorem 11.1. -/
def IsCylinderKolmogorovSet {a b : ℕ} (H : Phase (a + b) → ℝ)
    (V : Set (Fin a → ℝ)) (r mu C : ℝ) (S : Set (Phase (a + b))) : Prop :=
  MeasurableSet S ∧ S ⊆ cylinder V r ∧
  (∀ z ∈ S, ∃ (w : Fin (a + b) → ℝ)
      (K : (Fin (a + b) → ℝ) → Phase (a + b)) (theta : Fin (a + b) → ℝ),
    K theta = z ∧ Set.range K ⊆ S ∧ IsCylinderTorus H (cylinder V r) w K ∧
    (∃ gamma tau : ℝ, 0 < gamma ∧ (a + b : ℕ) < tau ∧
      KAM.IsDiophantine gamma tau w) ∧
    ‖(fast w : Fin a → ℝ)‖ ≤ C ∧ ‖(slow w : Fin b → ℝ)‖ ≤ C * mu)

end KAM.Planetary

end
