/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
-- FROZEN_ANCHOR_PREFIX_BEGIN
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
public import KAM.Frozen.Iso.Defs.BorderedHessian
public import KAM.Frozen.Iso.Defs.IsHamiltonianSolutionOn
import KAM.Provider.Iso.AllTimeConfinement

/-!
# Frozen theorem `KAM.Iso.all_time_confinement`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor. Only the
proof body between the markers may change, and only to `by exact
KAM.Provider.Iso.all_time_confinement` when the provider `KAM.Provider.Iso.AllTimeConfinement` is
complete (sealing).
-/

@[expose] public section

open MeasureTheory

namespace KAM.Iso

/-- I-HEAD: all-time action confinement in two degrees of freedom, derived from I-G1,
energy-cylinder separation and ODE continuation; not a verbatim HL19 theorem.
Every local solution through the initial point agrees with the exhibited global one. -/
theorem all_time_confinement
    (B : Set (Fin 2 → ℝ)) (hB : IsOpen B) (hBb : Bornology.IsBounded B)
    (hBne : B.Nonempty) {s₀ r₀ : ℝ} (hs : 0 < s₀) (hr : 0 < r₀)
    (h : (Fin 2 → ℂ) → ℂ) (hh : DifferentiableOn ℂ h (actionNbhd B r₀))
    (hhreal : ∀ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
      (h (fun i => (I i : ℂ))).im = 0)
    (hiso : ∀ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
      (borderedHessian h I).det ≠ 0)
    (B' : Set (Fin 2 → ℝ)) (hB' : IsOpen B')
    (hcompact : IsCompact (closure B')) (hinside : closure B' ⊆ B)
    {η : ℝ} (hη : 0 < η) :
    ∃ ε₀ : ℝ, 0 < ε₀ ∧
      ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ),
        DifferentiableOn ℂ f ((complexStrip 2 s₀) ×ˢ (actionNbhd B r₀)) →
        (∀ z ∈ (complexStrip 2 s₀) ×ˢ (actionNbhd B r₀), ∀ k : Fin 2 → ℤ,
          f (z.1 + (fun i => (k i : ℂ)), z.2) = f z) →
        (∀ θ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
          (f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
        0 ≤ ε → ε < ε₀ →
        (∀ z ∈ (complexStrip 2 s₀) ×ˢ (actionNbhd B r₀), ‖f z‖ ≤ ε) →
        ∀ z₀ : (Fin 2 → ℝ) × (Fin 2 → ℝ), z₀.2 ∈ B' →
        ∃ z : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ),
          z 0 = z₀ ∧ IsHamiltonianSolutionOn (realHamiltonian h f) B Set.univ z ∧
          (∀ t : ℝ, ‖(z t).2 - z₀.2‖ < η) ∧
          ∀ (a b : ℝ) (y : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)),
            a < 0 → 0 < b → y 0 = z₀ →
            IsHamiltonianSolutionOn (realHamiltonian h f) B (Set.Ioo a b) y →
            ∀ t ∈ Set.Ioo a b, y t = z t :=
  -- FROZEN_ANCHOR_PROOF_BEGIN
  by exact KAM.Provider.Iso.all_time_confinement B hB hBb hBne hs hr h hh hhreal hiso B' hB'
        hcompact hinside hη
  -- FROZEN_ANCHOR_PROOF_END
-- FROZEN_ANCHOR_SUFFIX_BEGIN

end KAM.Iso

end
-- FROZEN_ANCHOR_SUFFIX_END
