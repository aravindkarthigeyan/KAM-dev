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
# Frozen definition `KAM.Nekhoroshev.innerCore`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators ENNReal

namespace KAM.Nekhoroshev

/-- Closed maximum-norm erosion, a stronger margin than the Euclidean erosion
of Nekhoroshev §4.2, p. 29. Used only with a positive radius. -/
def innerCore {E : Type*} [NormedAddCommGroup E] (U : Set E) (d : ℝ) : Set E :=
  {x | x ∈ U ∧ Metric.closedBall x d ⊆ U}

end KAM.Nekhoroshev

end
