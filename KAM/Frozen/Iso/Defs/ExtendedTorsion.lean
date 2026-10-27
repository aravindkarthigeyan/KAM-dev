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
# Frozen definition `KAM.Iso.extendedTorsion`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory

namespace KAM.Iso

/-- HL19 (3.13), with `c = H`, `d = n`. The last row is `DH(K) N`, even off invariance.
Used under holomorphy of H, K and invertibility of the Gram matrix on an open strip. -/
def extendedTorsion {n : ℕ} (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (θ : Fin n → ℂ) : Matrix (Fin n ⊕ Unit) (Fin n ⊕ Unit) ℂ :=
  fun i j => match i, j with
    | Sum.inl a, Sum.inl b => torsion H K ω θ a b
    | Sum.inl a, Sum.inr _ => (ω a : ℂ)
    | Sum.inr _, Sum.inl b => fderiv ℂ H (K θ) (normalFrame K θ b)
    | Sum.inr _, Sum.inr _ => 0

end KAM.Iso

end
