/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Defs.RealHamiltonian
public import Mathlib.Analysis.Calculus.ContDiff.Defs
public import Mathlib.Analysis.Calculus.Deriv.Basic
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import KAM.Frozen.Nekhoroshev.Defs.ActionBall

/-!
# Frozen definition `KAM.Nekhoroshev.HasComplexHessianBound`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM.Nekhoroshev

/-- Pöschel 1993, p. 190, the complex Hessian operator-bound display.
The iterated operator norm uses the existing maximum-norm coordinate spaces; conversion
bounds the source's Euclidean Hessian norm uniformly by `n * Mcomplex`.
Complex `C²` is redundant under holomorphy on this open set and guards the second derivative. -/
def HasComplexHessianBound {n : ℕ} (R s : ℝ) (h : (Fin n → ℂ) → ℂ)
    (Mcomplex : ℝ) : Prop :=
  0 < Mcomplex ∧ ContDiffOn ℂ 2 h (KAM.actionNbhd (actionBall n R) s) ∧
    ∀ z ∈ KAM.actionNbhd (actionBall n R) s, ‖fderiv ℂ (fderiv ℂ h) z‖ ≤ Mcomplex

end KAM.Nekhoroshev

end
