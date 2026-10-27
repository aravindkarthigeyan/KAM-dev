/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Complex.Basic

/-!
# Frozen definition `KAM.actionNbhd`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: ruling Q5. This file is frozen: its
bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an owner-approved versioned
successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The complex `r`-neighbourhood `{I ∈ ℂⁿ : dist(I, B) < r}` of a set `B ⊆ ℝⁿ` of actions
(sup norm). -/
def actionNbhd {n : ℕ} (B : Set (Fin n → ℝ)) (r : ℝ) : Set (Fin n → ℂ) :=
  {I | ∃ J ∈ B, ‖I - (fun i => (J i : ℂ))‖ < r}

end KAM

end
