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
public import KAM.Frozen.Planetary.Defs.NoCollision
public import KAM.Frozen.Planetary.Defs.MovingHamiltonian
public import KAM.Frozen.Planetary.Defs.CircularTube
public import KAM.Frozen.Planetary.Defs.IsPhysicalTorus
public import KAM.Frozen.Planetary.Defs.ActualMasses
public import KAM.Frozen.Planetary.Defs.BarycentricPositions
public import KAM.Frozen.Planetary.Defs.BarycentricVelocities
public import KAM.Frozen.Planetary.Defs.IsNewtonSolution
public import KAM.Frozen.Planetary.Defs.PairBounds

/-!
# Frozen definition `KAM.Planetary.MovingKolmogorovSet`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Moving-Sun Kolmogorov set with physical reconstruction on every complete orbit.
This makes explicit the confinement consequence of the planar KAM theorem. -/
def MovingKolmogorovSet {n : ℕ} (G m0 : ℝ) (m a : Fin n → ℝ)
    (mu eta d D : ℝ) (S : Set (Phase (n * 2))) : Prop :=
  MeasurableSet S ∧ S ⊆ circularTube G m0 m a eta ∧
  (∀ z ∈ S, ∃ (w : Fin (n * 2) → ℝ)
      (K : (Fin (n * 2) → ℝ) → Phase (n * 2)) (theta : Fin (n * 2) → ℝ),
    K theta = z ∧ Set.range K ⊆ S ∧ IsPhysicalTorus (movingHamiltonian G m0 m mu) w K ∧
    (∀ phi, NoCollision (K phi).1) ∧
    (∀ phi, IsNewtonSolution G (actualMasses m0 m mu)
      (fun t => barycentricPositions m0 m mu (K (phi + t • w)).1)
      (fun t => barycentricVelocities m0 m mu (K (phi + t • w)).2)) ∧
    (∀ phi, PairBounds d D (barycentricPositions m0 m mu (K phi).1)))

end KAM.Planetary

end
