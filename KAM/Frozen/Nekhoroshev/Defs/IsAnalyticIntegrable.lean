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
public import KAM.Frozen.Nekhoroshev.Defs.RealActionDomain
public import KAM.Frozen.Nekhoroshev.Defs.RealPart

/-!
# Frozen definition `KAM.Nekhoroshev.IsAnalyticIntegrable`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM.Nekhoroshev

/-- BM p. 4: integrable membership in `A_s(D)`, including continuity at the boundary.
The explicit real `C³` clause records regularity already implied by holomorphy on the open set;
it guards every real derivative used below. No numerical bound on `h` is fixed here. -/
def IsAnalyticIntegrable {n : ℕ} (R s : ℝ) (h : (Fin n → ℂ) → ℂ) : Prop :=
  DifferentiableOn ℂ h (KAM.actionNbhd (actionBall n R) s) ∧
  ContinuousOn h (closure (KAM.actionNbhd (actionBall n R) s)) ∧
  (∃ A : ℝ, 0 ≤ A ∧ ∀ I ∈ KAM.actionNbhd (actionBall n R) s, ‖h I‖ ≤ A) ∧
  (∀ I ∈ realActionDomain n R s, (h (fun i => (I i : ℂ))).im = 0) ∧
  ContDiffOn ℝ 3 (realPart h) (realActionDomain n R s)

end KAM.Nekhoroshev

end
