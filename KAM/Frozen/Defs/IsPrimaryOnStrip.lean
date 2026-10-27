/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Complex.Basic
public import KAM.Frozen.Defs.ComplexStrip

/-!
# Frozen definition `KAM.IsPrimaryOnStrip`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 Rem. 2.3. This file is frozen: its
bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an owner-approved versioned
successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- `K` is a primary torus on the complex strip of width `ρ`: `K(θ + k) = K(θ) + (k, 0)` for
`θ ∈ T_ρ`, `k ∈ ℤⁿ` (HL19 Rem. 2.3). -/
def IsPrimaryOnStrip {n : ℕ} (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ρ : ℝ) : Prop :=
  ∀ θ ∈ complexStrip n ρ, ∀ k : Fin n → ℤ,
    K (θ + (fun i => (k i : ℂ))) = K θ + (fun i => (k i : ℂ), 0)

end KAM

end
