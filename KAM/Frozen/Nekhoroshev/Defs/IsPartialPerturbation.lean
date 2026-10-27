/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticIntegrable
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticPerturbation
public import KAM.Frozen.Nekhoroshev.Defs.IsSolutionOn
public import KAM.Frozen.Planetary.Defs.DegenerateHamiltonian
public import KAM.Frozen.Planetary.Defs.Slow
public import KAM.Frozen.Planetary.Defs.FastShift
public import Mathlib.MeasureTheory.Integral.Lebesgue.Basic
public import KAM.Frozen.Nekhoroshev.Defs.ComplexifyPhase
public import KAM.Frozen.Nekhoroshev.Defs.PartialComplexDomain

/-!
# Frozen definition `KAM.Nekhoroshev.IsPartialPerturbation`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators ENNReal

namespace KAM.Nekhoroshev

/-- Analytic, real, fast-angle-periodic perturbations of norm at most one.
The slow coordinates need not be periodic. Nekhoroshev §4.3 and Remark 4.5.A. -/
def IsPartialPerturbation {n k : ℕ} (G : Set (Fin n → ℝ))
    (D : Set (KAM.Planetary.Phase k)) (ρ : ℝ)
    (P : (Fin (n + k) → ℂ) × (Fin (n + k) → ℂ) → ℂ) : Prop :=
  DifferentiableOn ℂ P (partialComplexDomain G D ρ) ∧
    (∀ z ∈ partialComplexDomain G D ρ, ‖P z‖ ≤ 1) ∧
    (∀ z : KAM.Planetary.Phase (n + k),
      complexifyPhase z ∈ partialComplexDomain G D ρ → (P (complexifyPhase z)).im = 0) ∧
    (∀ z ∈ partialComplexDomain G D ρ, ∀ ℓ : Fin n → ℤ,
      P (z + complexifyPhase (KAM.Planetary.fastShift (b := k) ℓ)) = P z)

end KAM.Nekhoroshev

end
