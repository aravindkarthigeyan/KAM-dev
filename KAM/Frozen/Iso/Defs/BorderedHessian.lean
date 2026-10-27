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
# Frozen definition `KAM.Iso.borderedHessian`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory

namespace KAM.Iso

/-- The bordered Hessian of the real restriction of h. The holomorphic-neighborhood
hypothesis in I-HEAD guards both derivatives. Chierchia (2005), p. 17; HL19 (3.17). -/
def borderedHessian {n : ℕ} (h : (Fin n → ℂ) → ℂ) (I : Fin n → ℝ) :
    Matrix (Fin n ⊕ Unit) (Fin n ⊕ Unit) ℝ :=
  fun i j => match i, j with
    | Sum.inl a, Sum.inl b => fderiv ℝ (frequencyMap h) I (Pi.single b 1) a
    | Sum.inl a, Sum.inr _ => frequencyMap h I a
    | Sum.inr _, Sum.inl b => frequencyMap h I b
    | Sum.inr _, Sum.inr _ => 0

end KAM.Iso

end
