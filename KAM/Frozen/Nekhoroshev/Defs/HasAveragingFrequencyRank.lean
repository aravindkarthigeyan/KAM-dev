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
# Frozen definition `KAM.Nekhoroshev.HasAveragingFrequencyRank`

Owner-approved on 2026-10-27 (decision D28). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped ENNReal

namespace KAM.Nekhoroshev

/-- The two global rank alternatives in AKN Theorem 6.11, p. 243.
The augmented map is surjective exactly when the nonzero frequency has projective
rank n-1. There is no chart choice or division by a frequency component.
The source projective rank is intrinsic. Neishtadt 1976 p.1296 uses a chart
with a nonzero first component; the coordinate-free rank estimate in notes.md
explains that translation. Analytic hypotheses guard the derivatives here. -/
def HasAveragingFrequencyRank {n : ℕ} (U : Set (Fin n → ℝ))
    (h : (Fin n → ℂ) → ℂ) : Prop :=
  (∀ I ∈ U, Function.Surjective (fderiv ℝ (KAM.frequencyMap h) I)) ∨
    (∀ I ∈ U, KAM.frequencyMap h I ≠ 0 ∧
      Function.Surjective (fun v : (Fin n → ℝ) × ℝ =>
        fderiv ℝ (KAM.frequencyMap h) I v.1 + v.2 • KAM.frequencyMap h I))

end KAM.Nekhoroshev

end
