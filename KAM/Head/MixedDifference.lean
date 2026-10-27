/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Strip.Bridges
import Mathlib.Analysis.Calculus.MeanValue

/-!
# Mixed second differences

Blueprint Part 4, `bp:p4:mixed-difference` with its proof step `step:p4:mixed-proof`. Let
`U ⊆ ℂⁿ` be open, `F : U → ℂⁿ` holomorphic and `a, v, w ∈ ℂⁿ` with `a + t v + t' w ∈ U` for all
`t, t' ∈ [0, 1]`. If `‖D²F‖ ≤ Q` at these points, then
`‖F(a+v+w) - F(a+v) - F(a+w) + F(a)‖ ≤ Q ‖v‖ ‖w‖`.

The bound on `D²F` holds only on the parallelogram `{a + t v + t' w}`, which is not open, so the
convex lemma of Part 1 does not apply. The proof applies the mean value inequality twice, on
segments of the parallelogram: first to `DF` along `x ↦ x + t' w`, giving
`‖DF(x + w) - DF(x)‖ ≤ Q ‖w‖` for `x = a + t v`; then to `Ψ(x) = F(x + w) - F(x)` along
`[a, a + v]`, whose derivative is `DF(x + w) - DF(x)`.

* `KAM.Head.mixed_difference_of_finiteDimensional` is the statement for finite-dimensional
  complex normed spaces `E`, `W`;
* `KAM.Head.mixed_difference` is `bp:p4:mixed-difference`, for `F : ℂⁿ → ℂⁿ`.
-/

@[expose] public noncomputable section

open Set

namespace KAM.Head

section General

variable {E W : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup W] [NormedSpace ℂ W]

/-- The parallelogram `{a + t v + t' w : t, t' ∈ [0, 1]}` contains the segment `[x, x + w]` for
`x = a + t v`, `t ∈ [0, 1]`. -/
private theorem segment_add_mem {U : Set E} {a v w : E}
    (hpar : ∀ t ∈ Icc (0 : ℝ) 1, ∀ t' ∈ Icc (0 : ℝ) 1, a + t • v + t' • w ∈ U)
    {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) :
    segment ℝ (a + t • v) (a + t • v + w) ⊆ U := by
  intro y hy
  rw [segment_eq_image'] at hy
  obtain ⟨t', ht', rfl⟩ := hy
  have := hpar t ht t' ht'
  simpa using this

/-- Blueprint `step:p4:mixed-proof` (first mean value inequality). On the segment `[x, x + w]` of
the parallelogram, `‖DF(x + w) - DF(x)‖ ≤ Q ‖w‖`. -/
private theorem norm_fderiv_add_sub_le [FiniteDimensional ℂ E] [FiniteDimensional ℂ W]
    {U : Set E} (hU : IsOpen U) {F : E → W}
    (hF : DifferentiableOn ℂ F U) {a v w : E} {Q : ℝ}
    (hpar : ∀ t ∈ Icc (0 : ℝ) 1, ∀ t' ∈ Icc (0 : ℝ) 1, a + t • v + t' • w ∈ U)
    (hQ : ∀ t ∈ Icc (0 : ℝ) 1, ∀ t' ∈ Icc (0 : ℝ) 1,
      ‖iteratedFDeriv ℂ 2 F (a + t • v + t' • w)‖ ≤ Q)
    {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) :
    ‖fderiv ℂ F (a + t • v + w) - fderiv ℂ F (a + t • v)‖ ≤ Q * ‖w‖ := by
  have : ProperSpace W := FiniteDimensional.proper ℂ W
  have hD := differentiableOn_fderiv_of_isOpen hU hF
  have hseg := segment_add_mem hpar ht
  have hmem : ∀ y ∈ segment ℝ (a + t • v) (a + t • v + w), y ∈ U := fun y hy => hseg hy
  have hbound : ∀ y ∈ segment ℝ (a + t • v) (a + t • v + w), ‖fderiv ℂ (fderiv ℂ F) y‖ ≤ Q := by
    intro y hy
    rw [segment_eq_image'] at hy
    obtain ⟨t', ht', rfl⟩ := hy
    have h1 := hQ t ht t' ht'
    rw [← norm_iteratedFDeriv_fderiv (n := 1), norm_iteratedFDeriv_one] at h1
    have e : a + t • v + t' • (a + t • v + w - (a + t • v)) = a + t • v + t' • w := by
      congr 2; abel
    dsimp only
    rw [e]
    exact h1
  have h := (convex_segment (a + t • v) (a + t • v + w)).norm_image_sub_le_of_norm_fderiv_le
    (𝕜 := ℂ) (f := fderiv ℂ F)
    (fun y hy => (hD.differentiableAt (hU.mem_nhds (hmem y hy)))) hbound
    (left_mem_segment ℝ _ _) (right_mem_segment ℝ _ _)
  simpa using h

/-- Blueprint `step:p4:mixed-proof`. Let `U ⊆ E` be open, `F` holomorphic on `U`, and
`a + t v + t' w ∈ U` for `t, t' ∈ [0, 1]`, with `‖D²F‖ ≤ Q` at these points. Then
`‖F(a+v+w) - F(a+v) - F(a+w) + F(a)‖ ≤ Q ‖v‖ ‖w‖`. -/
theorem mixed_difference_of_finiteDimensional [FiniteDimensional ℂ E] [FiniteDimensional ℂ W]
    {U : Set E} (hU : IsOpen U) {F : E → W}
    (hF : DifferentiableOn ℂ F U) {a v w : E} {Q : ℝ}
    (hpar : ∀ t ∈ Icc (0 : ℝ) 1, ∀ t' ∈ Icc (0 : ℝ) 1, a + t • v + t' • w ∈ U)
    (hQ : ∀ t ∈ Icc (0 : ℝ) 1, ∀ t' ∈ Icc (0 : ℝ) 1,
      ‖iteratedFDeriv ℂ 2 F (a + t • v + t' • w)‖ ≤ Q) :
    ‖F (a + v + w) - F (a + v) - F (a + w) + F a‖ ≤ Q * ‖v‖ * ‖w‖ := by
  -- `Ψ(x) = F(x + w) - F(x)` along the segment `[a, a + v]` of the parallelogram
  set Ψ : E → W := fun x => F (x + w) - F x with hΨ
  have hxU : ∀ x ∈ segment ℝ a (a + v), x ∈ U ∧ x + w ∈ U := by
    intro x hx
    rw [segment_eq_image'] at hx
    obtain ⟨t, ht, rfl⟩ := hx
    have e : a + t • (a + v - a) = a + t • v := by congr 2; abel
    dsimp only
    rw [e]
    refine ⟨?_, ?_⟩
    · simpa using hpar t ht 0 ⟨le_rfl, zero_le_one⟩
    · simpa using hpar t ht 1 ⟨zero_le_one, le_rfl⟩
  have hdiff : ∀ x ∈ segment ℝ a (a + v), DifferentiableAt ℂ Ψ x := by
    intro x hx
    obtain ⟨h1, h2⟩ := hxU x hx
    have hF1 : DifferentiableAt ℂ F x := hF.differentiableAt (hU.mem_nhds h1)
    have hF2 : DifferentiableAt ℂ F (x + w) := hF.differentiableAt (hU.mem_nhds h2)
    exact (hF2.comp x (differentiableAt_id.add_const w)).sub hF1
  have hfd : ∀ x ∈ segment ℝ a (a + v),
      fderiv ℂ Ψ x = fderiv ℂ F (x + w) - fderiv ℂ F x := by
    intro x hx
    obtain ⟨h1, h2⟩ := hxU x hx
    have hF1 : DifferentiableAt ℂ F x := hF.differentiableAt (hU.mem_nhds h1)
    have hF2 : DifferentiableAt ℂ F (x + w) := hF.differentiableAt (hU.mem_nhds h2)
    have hc : HasFDerivAt (fun x => F (x + w)) (fderiv ℂ F (x + w)) x :=
      (hasFDerivAt_comp_add_right (f := F) w (x := x)).2 hF2.hasFDerivAt
    exact (hc.sub hF1.hasFDerivAt).fderiv
  have hbound : ∀ x ∈ segment ℝ a (a + v), ‖fderiv ℂ Ψ x‖ ≤ Q * ‖w‖ := by
    intro x hx
    rw [hfd x hx]
    rw [segment_eq_image'] at hx
    obtain ⟨t, ht, rfl⟩ := hx
    have e : a + t • (a + v - a) = a + t • v := by congr 2; abel
    dsimp only
    rw [e]
    exact norm_fderiv_add_sub_le hU hF hpar hQ ht
  have h := (convex_segment a (a + v)).norm_image_sub_le_of_norm_fderiv_le (𝕜 := ℂ) (f := Ψ)
    hdiff hbound (left_mem_segment ℝ _ _) (right_mem_segment ℝ _ _)
  have e : F (a + v + w) - F (a + v) - F (a + w) + F a = Ψ (a + v) - Ψ a := by
    simp only [hΨ]; abel
  rw [e]
  calc ‖Ψ (a + v) - Ψ a‖ ≤ Q * ‖w‖ * ‖a + v - a‖ := h
    _ = Q * ‖v‖ * ‖w‖ := by rw [add_sub_cancel_left]; ring

end General

/-- Blueprint `bp:p4:mixed-difference`. Let `U ⊆ ℂⁿ` be open, `F : U → ℂⁿ` holomorphic and
`a, v, w ∈ ℂⁿ` with `a + t v + t' w ∈ U` for all `t, t' ∈ [0, 1]`. If `‖D²F‖ ≤ Q` at these
points, then `‖F(a+v+w) - F(a+v) - F(a+w) + F(a)‖ ≤ Q ‖v‖ ‖w‖`. -/
theorem mixed_difference {n : ℕ} {U : Set (Fin n → ℂ)} (hU : IsOpen U) {F : (Fin n → ℂ) → Fin n → ℂ}
    (hF : DifferentiableOn ℂ F U) {a v w : Fin n → ℂ} {Q : ℝ}
    (hpar : ∀ t ∈ Icc (0 : ℝ) 1, ∀ t' ∈ Icc (0 : ℝ) 1, a + t • v + t' • w ∈ U)
    (hQ : ∀ t ∈ Icc (0 : ℝ) 1, ∀ t' ∈ Icc (0 : ℝ) 1,
      ‖iteratedFDeriv ℂ 2 F (a + t • v + t' • w)‖ ≤ Q) :
    ‖F (a + v + w) - F (a + v) - F (a + w) + F a‖ ≤ Q * ‖v‖ * ‖w‖ :=
  mixed_difference_of_finiteDimensional hU hF hpar hQ

end KAM.Head

end
