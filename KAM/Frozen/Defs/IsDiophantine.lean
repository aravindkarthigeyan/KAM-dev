/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Frozen definition `KAM.IsDiophantine`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 (3.1); Pos01 (1). This file is
frozen: its bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an
owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- `ω ∈ ℝⁿ` is `(γ, τ)`-Diophantine: `γ / |k|₁ ^ τ ≤ |k · ω|` for every nonzero `k ∈ ℤⁿ`
(HL19 (3.1); Pos01 (1)). -/
def IsDiophantine {n : ℕ} (γ τ : ℝ) (ω : Fin n → ℝ) : Prop :=
  ∀ k : Fin n → ℤ, k ≠ 0 → γ / (∑ i, |(k i : ℝ)|) ^ τ ≤ |∑ i, (k i : ℝ) * ω i|

end KAM

end
