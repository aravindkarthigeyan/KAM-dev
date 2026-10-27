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
public import KAM.Frozen.Nekhoroshev.Defs.RealActionDomain
public import KAM.Frozen.Nekhoroshev.Defs.ComplexDomain

/-!
# Frozen definition `KAM.Nekhoroshev.IsAnalyticPerturbation`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM.Nekhoroshev

/-- BM pp. 4--5, perturbation membership in `A_s(D)` and its size.
We use `≤ ε` instead of the source's strict supremum bound; apply the source with `2ε`
and adjust the constants. This also makes size zero meaningful. -/
def IsAnalyticPerturbation {n : ℕ} (R s ε : ℝ)
    (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) : Prop :=
  0 ≤ ε ∧ DifferentiableOn ℂ f (complexDomain n R s) ∧
  ContinuousOn f (closure (complexDomain n R s)) ∧
  (∀ z ∈ complexDomain n R s, ∀ k : Fin n → ℤ,
    f (z.1 + (fun i => (k i : ℂ)), z.2) = f z) ∧
  (∀ θ I : Fin n → ℝ, I ∈ realActionDomain n R s →
    (f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) ∧
  (∀ z ∈ complexDomain n R s, ‖f z‖ ≤ ε)

end KAM.Nekhoroshev

end
