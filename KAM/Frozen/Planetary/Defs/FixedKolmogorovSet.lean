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
public import KAM.Frozen.Planetary.Defs.NoCollision
public import KAM.Frozen.Planetary.Defs.FixedHamiltonian
public import KAM.Frozen.Planetary.Defs.CircularTube
public import KAM.Frozen.Planetary.Defs.IsPhysicalTorus
public import KAM.Frozen.Planetary.Defs.IsFixedSolution
public import KAM.Frozen.Planetary.Defs.PairBounds

/-!
# Frozen definition `KAM.Planetary.FixedKolmogorovSet`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Fixed-Sun Kolmogorov set; the Sun is the constant origin in the physical bounds. -/
def FixedKolmogorovSet {n : ℕ} (G m0 : ℝ) (m a : Fin n → ℝ)
    (eps eta d D : ℝ) (S : Set (Phase (n * 2))) : Prop :=
  MeasurableSet S ∧ S ⊆ circularTube G m0 m a eta ∧
  (∀ z ∈ S, ∃ (w : Fin (n * 2) → ℝ)
      (K : (Fin (n * 2) → ℝ) → Phase (n * 2)) (theta : Fin (n * 2) → ℝ),
    K theta = z ∧ Set.range K ⊆ S ∧ IsPhysicalTorus (fixedHamiltonian G m0 m eps) w K ∧
    (∀ phi, NoCollision (K phi).1) ∧
    (∀ phi, IsFixedSolution G m0 m eps
      (fun t i => bodyVector (K (phi + t • w)).1 i)
      (fun t i => (1 / m i) • bodyVector (K (phi + t • w)).2 i)) ∧
    (∀ phi, PairBounds d D (Fin.cons (0 : Fin 2 → ℝ)
      (fun i => bodyVector (K phi).1 i))))

end KAM.Planetary

end
