/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.KamCover

/-!
# Monotonicity of the KAM cover

Blueprint Part 4, `bp:p4:cover-mono` (its single step `step:p4:cm-proof` is the proof of
`KAM.Head.kamCover_mono`): the frozen cover `KAM.kamCover h f B r₀ τ κ` grows with the action
domain `B` and with the distance `κ`. The witnesses `K, ω, γ, I₀` of the cover for `(B', κ')` are
also witnesses for `(B, κ)`.
-/

@[expose] public section

namespace KAM.Head

/-- Blueprint `bp:p4:cover-mono` (step `step:p4:cm-proof`, same witnesses). If `B' ⊆ B` and
`κ' ≤ κ`, then `kamCover h f B' r₀ τ κ' ⊆ kamCover h f B r₀ τ κ`. -/
theorem kamCover_mono {n : ℕ} (h : (Fin n → ℂ) → ℂ) (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    {B' B : Set (Fin n → ℝ)} (hB : B' ⊆ B) (r₀ τ : ℝ) {κ' κ : ℝ} (hκ : κ' ≤ κ) :
    kamCover h f B' r₀ τ κ' ⊆ kamCover h f B r₀ τ κ := by
  rintro z ⟨K, ω, γ, I₀, hγ, hdio, htorus, hnear, hI₀, hfreq, hdist, hz⟩
  refine ⟨K, ω, γ, I₀, hγ, hdio, htorus, ?_, hB hI₀, hfreq, fun θ => (hdist θ).trans hκ, hz⟩
  intro θ
  obtain ⟨J, hJ, hJr⟩ := hnear θ
  exact ⟨J, hB hJ, hJr⟩

end KAM.Head

end
