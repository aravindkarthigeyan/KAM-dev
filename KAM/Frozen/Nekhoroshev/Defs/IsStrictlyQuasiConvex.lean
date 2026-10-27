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
# Frozen definition `KAM.Nekhoroshev.IsStrictlyQuasiConvex`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM.Nekhoroshev

/-- BM p. 4, `QC(m)`, literally with nonzero gradient, Euclidean orthogonality,
and the source's maximum norm on the right. The real `C²` clause guards the Hessian. -/
def IsStrictlyQuasiConvex {n : ℕ} (U : Set (Fin n → ℝ))
    (h : (Fin n → ℂ) → ℂ) (m : ℝ) : Prop :=
  0 < m ∧ IsOpen U ∧ ContDiffOn ℝ 2 (realPart h) U ∧
  ∀ I ∈ U, KAM.frequencyMap h I ≠ 0 ∧
    ∀ v : Fin n → ℝ, (∑ i, KAM.frequencyMap h I i * v i) = 0 →
      m * ‖v‖ ^ 2 ≤ fderiv ℝ (fderiv ℝ (realPart h)) I v v

end KAM.Nekhoroshev

end
