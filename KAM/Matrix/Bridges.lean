/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Matrix.Neumann
public import Mathlib.Analysis.Matrix.Normed
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# The Neumann series lemma for matrices over an arbitrary finite index type

`KAM/Matrix/Neumann.lean` proves the quantitative stability of inverses for a complete normed ring,
and for `Matrix (Fin n) (Fin n) ℂ`. The blueprint lemma `bp:p1:neumann` is stated for square
matrices of any size, and the later parts use it for `2n × 2n` matrices, whose rows are indexed by
`Fin n ⊕ Fin n` in `KAM/Matrix/Norms.lean`. This file restates it for matrices indexed by any
finite type and for matrix-valued functions on an arbitrary set, with the row-sum operator norm.
-/

public noncomputable section

open scoped Matrix.Norms.Operator

namespace KAM

/-- Blueprint `bp:p1:neumann`. For square complex matrices indexed by a finite type, with the
operator norm induced by the max norm (the maximum absolute row sum): if `A` is invertible and
`‖A⁻¹‖ ‖Δ‖ ≤ 1/2`, then `A + Δ` is invertible, `‖(A+Δ)⁻¹‖ ≤ 2 ‖A⁻¹‖` and
`‖(A+Δ)⁻¹ - A⁻¹‖ ≤ 2 ‖A⁻¹‖² ‖Δ‖`. The pointwise version for matrix-valued functions on a set `s`
is stated with the uniform bounds `‖(A x)⁻¹‖ ≤ B` and `‖Δ x‖ ≤ ε` for `B ε ≤ 1/2`; taking for `B`
and `ε` the suprema over `s` gives the sup-norm form, with the bounds `2 B` and `2 B² ε`. -/
theorem neumann {ι : Type*} [Fintype ι] [DecidableEq ι] :
    (∀ A Δ : Matrix ι ι ℂ, IsUnit A → ‖A⁻¹‖ * ‖Δ‖ ≤ 1 / 2 →
      IsUnit (A + Δ) ∧ ‖(A + Δ)⁻¹‖ ≤ 2 * ‖A⁻¹‖ ∧
        ‖(A + Δ)⁻¹ - A⁻¹‖ ≤ 2 * ‖A⁻¹‖ ^ 2 * ‖Δ‖) ∧
    (∀ {X : Type*} (s : Set X) (A Δ : X → Matrix ι ι ℂ) (B ε : ℝ), 0 ≤ B → B * ε ≤ 1 / 2 →
      (∀ x ∈ s, IsUnit (A x)) → (∀ x ∈ s, ‖(A x)⁻¹‖ ≤ B) → (∀ x ∈ s, ‖Δ x‖ ≤ ε) →
        ∀ x ∈ s, IsUnit (A x + Δ x) ∧ ‖(A x + Δ x)⁻¹‖ ≤ 2 * B ∧
          ‖(A x + Δ x)⁻¹ - (A x)⁻¹‖ ≤ 2 * B ^ 2 * ε) := by
  have single : ∀ A Δ : Matrix ι ι ℂ, IsUnit A → ‖A⁻¹‖ * ‖Δ‖ ≤ 1 / 2 →
      IsUnit (A + Δ) ∧ ‖(A + Δ)⁻¹‖ ≤ 2 * ‖A⁻¹‖ ∧
        ‖(A + Δ)⁻¹ - A⁻¹‖ ≤ 2 * ‖A⁻¹‖ ^ 2 * ‖Δ‖ := by
    intro A Δ hA hsmall
    simp only [Matrix.nonsing_inv_eq_ringInverse] at hsmall ⊢
    exact ⟨isUnit_add_of_inverse_norm_mul_le_half hA hsmall, norm_inverse_add_le hA hsmall,
      norm_inverse_add_sub_inverse_le hA hsmall⟩
  refine ⟨single, ?_⟩
  intro X s A Δ B ε hB hsmall hA hbound hΔ x hx
  have hlocal : ‖(A x)⁻¹‖ * ‖Δ x‖ ≤ 1 / 2 :=
    (mul_le_mul (hbound x hx) (hΔ x hx) (norm_nonneg _) hB).trans hsmall
  obtain ⟨h1, h2, h3⟩ := single (A x) (Δ x) (hA x hx) hlocal
  refine ⟨h1, h2.trans (by nlinarith [hbound x hx]), h3.trans ?_⟩
  have hsquare : ‖(A x)⁻¹‖ ^ 2 ≤ B ^ 2 := pow_le_pow_left₀ (norm_nonneg _) (hbound x hx) 2
  exact mul_le_mul (by linarith) (hΔ x hx) (norm_nonneg _) (by positivity)

end KAM

end
