/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.ComplexStrip
public import Mathlib.Analysis.Calculus.FDeriv.Basic
public import Mathlib.Analysis.Complex.Basic
import KAM.Strip.Cauchy
import KAM.Strip.Limits
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Increments on complex strips (blueprint Part 1)

* `bp:p1:increments`: let `u` be holomorphic on the strip `T_ρ` and `0 < δ`. For `θ` and `θ + v` in
  `T_{ρ-δ}`, `‖u (θ + v) - u θ‖ ≤ ‖Du‖_{ρ-δ} ‖v‖`; if `u` is bounded on `T_ρ`, this is at most
  `n δ⁻¹ ‖u‖_ρ ‖v‖`.

Sup norms are stated pointwise, as in the rest of Part 1: `‖Du‖_{ρ-δ} ≤ B` is
`∀ x ∈ complexStrip n (ρ - δ), ‖fderiv ℂ u x‖ ≤ B`, and `‖u‖_ρ ≤ A` is
`∀ x ∈ complexStrip n ρ, ‖u x‖ ≤ A`. The first assertion then reads "for every such bound `B`",
which is the same as the statement with the supremum (and has nothing to prove when the supremum
is `∞`).

The two steps of the blueprint are:

* `step:p1:inc-mvt` (`KAM.increments_mvt`): the mean value inequality
  (`KAM.increments_open`) on the segment `[θ, θ + v]`, which lies in the convex open strip
  `T_{ρ-δ}`;
* `step:p1:inc-cauchy` (`KAM.increments_cauchy`): the Cauchy estimate `‖Du‖_{ρ-δ} ≤ n δ⁻¹ ‖u‖_ρ`
  (blueprint `bp:p1:cauchy-strip`, here derived from `KAM.norm_fderiv_le_of_mem_complexStrip`).

The target `W` is any complex normed space: scalars, vectors with the max norm, pairs, or matrices
with the row-sum operator norm. The blueprint hypothesis `δ < ρ` is not needed: the strips are
nested as soon as `0 ≤ δ`, and for `n ≥ 1`, `θ ∈ T_{ρ-δ}` already forces `ρ - δ > 0` (for `n = 0`
the strip condition is vacuous and the proof treats that case separately).
-/

@[expose] public section

open Set

namespace KAM

variable {n : ℕ} {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W]

/-- The segment between two points of a strip lies in the strip: strips are convex. -/
private theorem segment_subset_complexStrip {r : ℝ} {θ η : Fin n → ℂ}
    (hθ : θ ∈ complexStrip n r) (hη : η ∈ complexStrip n r) :
    segment ℝ θ η ⊆ complexStrip n r := by
  rintro _ ⟨a, b, ha, hb, hab, rfl⟩ i
  obtain ⟨hx1, hx2⟩ := abs_lt.mp (hθ i)
  obtain ⟨hy1, hy2⟩ := abs_lt.mp (hη i)
  have him : ((a • θ + b • η) i).im = a * (θ i).im + b * (η i).im := by simp
  obtain rfl : b = 1 - a := by linarith
  rw [him, abs_lt]
  rcases ha.eq_or_lt with ha0 | hapos
  · subst ha0
    constructor <;> linarith
  · constructor <;> nlinarith [mul_lt_mul_of_pos_left hx1 hapos, mul_lt_mul_of_pos_left hx2 hapos,
      mul_le_mul_of_nonneg_left hy1.le hb, mul_le_mul_of_nonneg_left hy2.le hb]

/-- The strips are nested: `T_{ρ-δ} ⊆ T_ρ` for `δ ≥ 0`. -/
private theorem complexStrip_sub_subset {ρ δ : ℝ} (hδ : 0 ≤ δ) :
    complexStrip n (ρ - δ) ⊆ complexStrip n ρ := fun _ hθ i => (hθ i).trans_le (by linarith)

/-- Blueprint `bp:p1:increments`, step `step:p1:inc-mvt` (mean value inequality). Let `u` be
holomorphic on `T_ρ`, `0 < δ`, `θ` and `θ + v` in `T_{ρ-δ}`, and `‖Du‖ ≤ B` on `T_{ρ-δ}`. Then
`‖u (θ + v) - u θ‖ ≤ B ‖v‖`.

The strip `T_{ρ-δ}` is open and convex, so it contains the segment `[θ, θ + v]`, and this is
`bp:p1:increments-open` (`KAM.increments_open`). -/
theorem increments_mvt {ρ δ : ℝ} {u : (Fin n → ℂ) → W}
    (hu : DifferentiableOn ℂ u (complexStrip n ρ)) (hδ : 0 < δ) {B : ℝ}
    (hB : ∀ x ∈ complexStrip n (ρ - δ), ‖fderiv ℂ u x‖ ≤ B) {θ v : Fin n → ℂ}
    (hθ : θ ∈ complexStrip n (ρ - δ)) (hθv : θ + v ∈ complexStrip n (ρ - δ)) :
    ‖u (θ + v) - u θ‖ ≤ B * ‖v‖ :=
  increments_open (isOpen_complexStrip n (ρ - δ)) (hu.mono (complexStrip_sub_subset hδ.le)) hB
    (segment_subset_complexStrip hθ hθv)

/-- Blueprint `bp:p1:increments`, step `step:p1:inc-cauchy` (the Cauchy estimate). Let `u` be
holomorphic on `T_ρ` with `‖u‖ ≤ A` there, and `0 < δ`. Then `‖Du‖ ≤ n δ⁻¹ A` on `T_{ρ-δ}`.

This is the second assertion of `bp:p1:cauchy-strip`: the sharp polydisc estimate
`‖Du‖ ≤ δ⁻¹ A` (`KAM.norm_fderiv_le_of_mem_complexStrip`) holds for `n ≥ 1`, and `Du = 0` for
`n = 0`. -/
theorem increments_cauchy {ρ δ A : ℝ} {u : (Fin n → ℂ) → W}
    (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (hA : ∀ x ∈ complexStrip n ρ, ‖u x‖ ≤ A) (hδ : 0 < δ) :
    ∀ x ∈ complexStrip n (ρ - δ), ‖fderiv ℂ u x‖ ≤ n * δ⁻¹ * A := by
  intro x hx
  have hA0 : 0 ≤ A := (norm_nonneg _).trans (hA x (complexStrip_sub_subset hδ.le hx))
  have hnn : 0 ≤ (n : ℝ) * δ⁻¹ * A := by positivity
  rcases Nat.eq_zero_or_pos n with hn | hn
  · subst hn
    have h0 : fderiv ℂ u x = 0 :=
      ContinuousLinearMap.ext fun v => by
        rw [Subsingleton.elim v 0, map_zero, zero_apply]
    rw [h0, norm_zero]
    exact hnn
  · have h := norm_fderiv_le_of_mem_complexStrip hu hA hδ hx
    have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
    calc ‖fderiv ℂ u x‖ ≤ A / δ := h
      _ = 1 * δ⁻¹ * A := by rw [div_eq_inv_mul, one_mul, mul_comm]
      _ ≤ n * δ⁻¹ * A := by gcongr

/-- Blueprint `bp:p1:increments`. Let `u` be holomorphic on the strip `T_ρ` and `0 < δ`, and let
`θ` and `θ + v` lie in `T_{ρ-δ}`. Then

* for every `B` with `‖Du‖ ≤ B` on `T_{ρ-δ}` (i.e. `B ≥ ‖Du‖_{ρ-δ}`),
  `‖u (θ + v) - u θ‖ ≤ B ‖v‖`;
* for every `A` with `‖u‖ ≤ A` on `T_ρ` (i.e. `A ≥ ‖u‖_ρ`),
  `‖u (θ + v) - u θ‖ ≤ n δ⁻¹ A ‖v‖`.

The target `W` is any complex normed space (scalars, vectors, pairs with the max norm, matrices
with the row-sum operator norm). The blueprint hypothesis `δ < ρ` is not needed.

Proof: step `step:p1:inc-mvt` (`KAM.increments_mvt`) gives the first assertion, and for the second
step `step:p1:inc-cauchy` (`KAM.increments_cauchy`) gives `B = n δ⁻¹ A`. -/
theorem increments {ρ δ : ℝ} {u : (Fin n → ℂ) → W}
    (hu : DifferentiableOn ℂ u (complexStrip n ρ)) (hδ : 0 < δ) {θ v : Fin n → ℂ}
    (hθ : θ ∈ complexStrip n (ρ - δ)) (hθv : θ + v ∈ complexStrip n (ρ - δ)) :
    (∀ B : ℝ, (∀ x ∈ complexStrip n (ρ - δ), ‖fderiv ℂ u x‖ ≤ B) →
        ‖u (θ + v) - u θ‖ ≤ B * ‖v‖) ∧
      (∀ A : ℝ, (∀ x ∈ complexStrip n ρ, ‖u x‖ ≤ A) →
        ‖u (θ + v) - u θ‖ ≤ n * δ⁻¹ * A * ‖v‖) :=
  ⟨fun _ hB => increments_mvt hu hδ hB hθ hθv,
    fun _ hA => increments_mvt hu hδ (increments_cauchy hu hA hδ) hθ hθv⟩

end KAM
