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

/-!
# Frozen definition `KAM.Nekhoroshev.HasDefiniteFastPart`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators ENNReal

namespace KAM.Nekhoroshev

/-- Definite fast Hessian, allowing a single global convex or concave sign, and
nonvanishing frequency, on a real enlargement. This specializes the index-one
steep class in Nekhoroshev §1.18 and §4.1. All real derivatives are guarded. -/
def HasDefiniteFastPart {n : ℕ} (G : Set (Fin n → ℝ)) (ρ g m : ℝ)
    (h : (Fin n → ℂ) → ℂ) : Prop :=
  let U := {I : Fin n → ℝ | (fun i => (I i : ℂ)) ∈ KAM.actionNbhd G ρ}
  0 < g ∧ 0 < m ∧ ContDiffOn ℝ 3 (realPart h) U ∧
    (∃ σ : ℝ, (σ = 1 ∨ σ = -1) ∧ ∀ I ∈ U,
      g ≤ ‖KAM.frequencyMap h I‖ ∧ ∀ v : Fin n → ℝ,
        m * (∑ i, (v i) ^ 2) ≤ σ * (fderiv ℝ (fderiv ℝ (realPart h)) I v v))

end KAM.Nekhoroshev

end
