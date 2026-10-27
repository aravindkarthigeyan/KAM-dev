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
public import KAM.Frozen.Nekhoroshev.Defs.RealPart

/-!
# Frozen definition `KAM.Nekhoroshev.HasDerivativeBounds`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM.Nekhoroshev

/-- BM p. 4, `B(M)`: all coordinate partial derivatives of orders one through three.
An ordered list of coordinate directions enumerates the same partials as multi-indices,
since `h` is `C³` on the open set. This is not an operator-norm replacement. -/
def HasDerivativeBounds {n : ℕ} (U : Set (Fin n → ℝ))
    (h : (Fin n → ℂ) → ℂ) (M : ℝ) : Prop :=
  0 < M ∧ IsOpen U ∧ ContDiffOn ℝ 3 (realPart h) U ∧
  ∀ I ∈ U, ∀ k : ℕ, 1 ≤ k → k ≤ 3 → ∀ indices : Fin k → Fin n,
    |iteratedFDeriv ℝ k (realPart h) I (fun j => Pi.single (indices j) 1)| ≤ M

end KAM.Nekhoroshev

end
