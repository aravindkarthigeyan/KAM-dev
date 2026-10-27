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
# Frozen definition `KAM.Nekhoroshev.partialTimeExponent`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators ENNReal

namespace KAM.Nekhoroshev

/-- Source exponent a, Nekhoroshev (4.1), (4.5), with every steepness index one.
The theorem uses n ≥ 2; the denominator is positive there. -/
def partialTimeExponent (n : ℕ) : ℝ := 2 / (6 * (n : ℝ) ^ 2 - 3 * n + 14)

end KAM.Nekhoroshev

end
