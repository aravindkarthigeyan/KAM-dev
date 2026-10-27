/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
-- FROZEN_ANCHOR_PREFIX_BEGIN
module

public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
public import KAM.Frozen.Defs.IsDiophantine
import KAM.Provider.VolumeNotDiophantineLe

/-!
# Frozen theorem `KAM.volume_not_diophantine_le`

Owner-approved on 2026-10-27 (statement draft v0.2). The statement is frozen and hashed in
`manifest/frozen-anchors.json`; only the proof body between the markers may change, and only
to `by exact KAM.Provider.volume_not_diophantine_le` when the provider
`KAM.Provider.VolumeNotDiophantineLe` is complete (sealing).
-/

@[expose] public section

open MeasureTheory

namespace KAM

/-- **G3.** Measure of the non-Diophantine frequencies in a bounded set (Pos01 §1d). -/
theorem volume_not_diophantine_le {n : ℕ} {τ : ℝ} (hτ : (n : ℝ) - 1 < τ)
    {Ω : Set (Fin n → ℝ)} (hΩ : Bornology.IsBounded Ω) :
    ∃ C : ℝ, ∀ α : ℝ, 0 < α →
      volume {ω ∈ Ω | ¬ IsDiophantine α τ ω} ≤ ENNReal.ofReal (C * α) :=
  -- FROZEN_ANCHOR_PROOF_BEGIN
  by exact KAM.Provider.volume_not_diophantine_le hτ hΩ
  -- FROZEN_ANCHOR_PROOF_END
-- FROZEN_ANCHOR_SUFFIX_BEGIN

end KAM

end
-- FROZEN_ANCHOR_SUFFIX_END
