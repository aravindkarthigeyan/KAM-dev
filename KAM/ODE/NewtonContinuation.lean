/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.ODE.Continuation
public import KAM.ODE.NewtonUniform
public import KAM.ODE.NewtonReduction

/-!
# Continuation for the Newtonian fields

Blueprint N Part 3 (`bpN:p3:newton-continuation`): a maximal solution with a finite end must
leave every region `Φ_{ρ, V̄}` (collision distance `≥ ρ`, bounded velocities) arbitrarily near
that end. This combines `gen_continuation` with the uniform data of `NewtonUniform` and the
reductions of `NewtonReduction`.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

namespace KAM.ODE

section Generic

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [ProperSpace E]

/-- Contrapositive form of `gen_continuation`, for a region with some uniform data. -/
theorem continuation_exit {F : E → E} {W : Set E} (hW : IsOpen W) (hF : ContDiffOn ℝ 1 F W)
    {x₀ : E} {Tm Tp : EReal} {z : ℝ → E} (hz : IsMaximalSolution F W x₀ Tm Tp z)
    {Φ : Set E} (hΦ : ∃ (δ M : ℝ) (L : ℝ≥0), UniformData F W Φ δ M L) :
    (Tp ≠ ⊤ → ∀ t_star : ℝ, 0 ≤ t_star → (t_star : EReal) < Tp →
      ∃ t : ℝ, t_star ≤ t ∧ (t : EReal) < Tp ∧ z t ∉ Φ) ∧
    (Tm ≠ ⊥ → ∀ t_star : ℝ, t_star ≤ 0 → Tm < (t_star : EReal) →
      ∃ t : ℝ, Tm < (t : EReal) ∧ t ≤ t_star ∧ z t ∉ Φ) := by
  obtain ⟨δ, M, L, hU⟩ := hΦ
  have h := gen_continuation hW hF hz hU
  refine ⟨fun hT ts h0 h1 => ?_, fun hT ts h0 h1 => ?_⟩
  · by_contra hc
    exact hT (h.1 ⟨ts, h0, h1, fun t ht htT => by
      by_contra hn; exact hc ⟨t, ht, htT, hn⟩⟩)
  · by_contra hc
    exact hT (h.2 ⟨ts, h0, h1, fun t ht htT => by
      by_contra hn; exact hc ⟨t, ht, htT, hn⟩⟩)

end Generic

section Newton

/-- `bpN:p3:newton-continuation`, Newton case. -/
theorem newton_continuation (N : ℕ) (G : ℝ) (mass : Fin N → ℝ)
    {x₀ : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)} {Tm Tp : EReal}
    {x : ℝ → (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)}
    (hx : IsMaximalSolution (newtonField N G mass) (newtonDomain N) x₀ Tm Tp x)
    {ρ Vbar : ℝ} (hρ : 0 < ρ) :
    (Tp ≠ ⊤ → ∀ t_star : ℝ, 0 ≤ t_star → (t_star : EReal) < Tp →
      ∃ t : ℝ, t_star ≤ t ∧ (t : EReal) < Tp ∧ x t ∉ newtonRegion N ρ Vbar) ∧
    (Tm ≠ ⊥ → ∀ t_star : ℝ, t_star ≤ 0 → Tm < (t_star : EReal) →
      ∃ t : ℝ, Tm < (t : EReal) ∧ t ≤ t_star ∧ x t ∉ newtonRegion N ρ Vbar) := by
  obtain ⟨hW, hF, -⟩ := newton_reduction N G mass
  obtain ⟨M, L, hU⟩ := newton_uniform_data N G mass hρ Vbar
  exact continuation_exit hW (hF.of_le (by simp)) hx ⟨_, M, L, hU⟩

/-- `bpN:p3:newton-continuation`, fixed-center case. -/
theorem fixed_continuation (N : ℕ) (G m₀ : ℝ) (m : Fin N → ℝ) (eps : ℝ)
    {x₀ : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)} {Tm Tp : EReal}
    {x : ℝ → (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)}
    (hx : IsMaximalSolution (fixedField N G m₀ m eps) (fixedDomain N) x₀ Tm Tp x)
    {ρ Vbar : ℝ} (hρ : 0 < ρ) :
    (Tp ≠ ⊤ → ∀ t_star : ℝ, 0 ≤ t_star → (t_star : EReal) < Tp →
      ∃ t : ℝ, t_star ≤ t ∧ (t : EReal) < Tp ∧ x t ∉ fixedRegion N ρ Vbar) ∧
    (Tm ≠ ⊥ → ∀ t_star : ℝ, t_star ≤ 0 → Tm < (t_star : EReal) →
      ∃ t : ℝ, Tm < (t : EReal) ∧ t ≤ t_star ∧ x t ∉ fixedRegion N ρ Vbar) := by
  obtain ⟨hW, hF, -⟩ := fixed_reduction N G m₀ m eps
  obtain ⟨M, L, hU⟩ := fixed_uniform_data N G m₀ m eps hρ Vbar
  exact continuation_exit hW (hF.of_le (by simp)) hx ⟨_, M, L, hU⟩

/-- `bpN:p3:newton-continuation`, restricted case. -/
theorem restricted_continuation (μ : ℝ) {x₀ : (Fin 2 → ℝ) × (Fin 2 → ℝ)} {Tm Tp : EReal}
    {x : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)}
    (hx : IsMaximalSolution (restrictedField μ) (restrictedDomain μ) x₀ Tm Tp x)
    {ρ Vbar : ℝ} (hρ : 0 < ρ) :
    (Tp ≠ ⊤ → ∀ t_star : ℝ, 0 ≤ t_star → (t_star : EReal) < Tp →
      ∃ t : ℝ, t_star ≤ t ∧ (t : EReal) < Tp ∧ x t ∉ restrictedRegion μ ρ Vbar) ∧
    (Tm ≠ ⊥ → ∀ t_star : ℝ, t_star ≤ 0 → Tm < (t_star : EReal) →
      ∃ t : ℝ, Tm < (t : EReal) ∧ t ≤ t_star ∧ x t ∉ restrictedRegion μ ρ Vbar) := by
  obtain ⟨hW, hF, -⟩ := restricted_reduction μ
  obtain ⟨M, L, hU⟩ := restricted_uniform_data μ hρ Vbar
  exact continuation_exit hW (hF.of_le (by simp)) hx ⟨_, M, L, hU⟩

end Newton

end KAM.ODE
