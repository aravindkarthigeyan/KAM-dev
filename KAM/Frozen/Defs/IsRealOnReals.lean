/-
Copyright (c) 2026 Scott Armstrong. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong
-/
module

public import Mathlib.Analysis.Complex.Basic

/-!
# Frozen definition `KAM.IsRealOnReals`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 §3.1. This file is frozen: its
bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an owner-approved versioned
successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- `K` maps real angles to real phase points. -/
def IsRealOnReals {n : ℕ} (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Prop :=
  ∀ θ : Fin n → ℝ, ∃ z : (Fin n → ℝ) × (Fin n → ℝ),
    K (fun i => (θ i : ℂ)) = (fun i => (z.1 i : ℂ), fun i => (z.2 i : ℂ))

end KAM

end
