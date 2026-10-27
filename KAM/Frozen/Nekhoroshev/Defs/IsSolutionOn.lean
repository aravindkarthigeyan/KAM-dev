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

/-!
# Frozen definition `KAM.Nekhoroshev.IsSolutionOn`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM.Nekhoroshev

/-- Genuine Hamiltonian solutions in the real domain; BM Theorem 2.1 p. 5 and its
maximal-solution argument p. 13. `HasDerivAt` is two-sided even at endpoints.
Differentiability of `H` at every visited point guards the frozen `fderiv` vector field. -/
def IsSolutionOn {n : ℕ} (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ)
    (U : Set (Fin n → ℝ)) (J : Set ℝ)
    (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)) : Prop :=
  ∀ t ∈ J, (z t).2 ∈ U ∧ DifferentiableAt ℝ H (z t) ∧
    HasDerivAt z (KAM.hamiltonianVectorField H (z t)) t

end KAM.Nekhoroshev

end
