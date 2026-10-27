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
# Frozen definition `KAM.Nekhoroshev.partialComplexDomain`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators ENNReal

namespace KAM.Nekhoroshev

/-- Nekhoroshev §4.3.A, p. 29: complex tube over arbitrary fast/slow real domains.
Canonical order is (fast angles, slow positions; fast actions, slow momenta). -/
def partialComplexDomain {n k : ℕ} (G : Set (Fin n → ℝ))
    (D : Set (KAM.Planetary.Phase k)) (ρ : ℝ) :
    Set ((Fin (n + k) → ℂ) × (Fin (n + k) → ℂ)) :=
  {z | KAM.Planetary.fast (fun i => (z.2 i).re) ∈ G ∧
    (KAM.Planetary.slow (fun i => (z.1 i).re),
      KAM.Planetary.slow (fun i => (z.2 i).re)) ∈ D ∧
    z.1 ∈ KAM.complexStrip (n + k) ρ ∧ z.2 ∈ KAM.complexStrip (n + k) ρ}

end KAM.Nekhoroshev

end
