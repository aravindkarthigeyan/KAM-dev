/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticIntegrable
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticPerturbation
public import KAM.Frozen.Nekhoroshev.Defs.IsSolutionOn
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
public import Mathlib.MeasureTheory.Measure.Prod
public import Mathlib.MeasureTheory.Integral.IntegrableOn
public import Mathlib.MeasureTheory.Integral.Lebesgue.Basic

/-!
# Frozen definition `KAM.Nekhoroshev.averagingError`

Owner-approved on 2026-10-27 (decision D28). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped ENNReal

namespace KAM.Nekhoroshev

/-- Supremum error from the constant averaged action, AKN (6.27).
Used with ε>0 and genuine solutions on [0,1/ε] in a bounded action domain;
these hypotheses make the image nonempty and bounded above. -/
def averagingError {n : ℕ} (ε : ℝ)
    (Φ : ((Fin n → ℝ) × (Fin n → ℝ)) → ℝ → ((Fin n → ℝ) × (Fin n → ℝ)))
    (x : ((Fin n → ℝ) × (Fin n → ℝ))) : ℝ :=
  sSup ((fun t => ‖(Φ x t).2 - x.2‖) '' Set.Icc 0 (1 / ε))

end KAM.Nekhoroshev

end
