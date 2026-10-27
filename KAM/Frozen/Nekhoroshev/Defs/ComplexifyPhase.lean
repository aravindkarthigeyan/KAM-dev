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
# Frozen definition `KAM.Nekhoroshev.complexifyPhase`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators ENNReal

namespace KAM.Nekhoroshev

/-- Coordinatewise real-to-complex inclusion of canonical phase space; no choices. -/
def complexifyPhase {n : ℕ} (z : KAM.Planetary.Phase n) :
    (Fin n → ℂ) × (Fin n → ℂ) :=
  (fun i => (z.1 i : ℂ), fun i => (z.2 i : ℂ))

end KAM.Nekhoroshev

end
