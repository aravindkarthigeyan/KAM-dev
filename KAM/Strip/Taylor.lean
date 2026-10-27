/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Calculus.MeanValue
public import Mathlib.Analysis.Complex.Basic
public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import Mathlib.Topology.Bases
import KAM.Strip.Limits
import KAM.Strip.Regularity
import Mathlib.Tactic.Linarith

/-!
# Second-order Taylor bound with the factor `1/2` (blueprint Part 1)

* `bp:p1:taylor`: if `F` is holomorphic on an open set `U`, `‖D²F‖ ≤ A` on `U` and the segment
  `[z, z + w]` lies in `U`, then `‖F (z + w) - F z - DF z w‖ ≤ (A / 2) ‖w‖²`.

The constant `A / 2` is sharp; the plain mean value inequality for `F - DF z` would only give `A`.
The proof has the two steps of the blueprint:

* `step:p1:tay-lipschitz` (`KAM.taylor_lipschitz`): along the segment, `DF` is `A t ‖w‖`-Lipschitz
  from `z` to `z + t w`; this is `bp:p1:increments-open` (`KAM.increments_open`) applied to the
  holomorphic map `DF` (`KAM.differentiableOn_fderiv_of_isOpen`, the form of
  `bp:p1:holomorphic-regularity` available here);
* `step:p1:tay-integrate` (`KAM.taylor_integrate`): the remainder
  `g t = F (z + t w) - F z - t DF z w` has derivative `(DF (z + t w) - DF z) w` of norm at most
  `A t ‖w‖²`, hence `‖g t‖ ≤ (A / 2) t² ‖w‖²`. The blueprint integrates `g'` over `[0, 1]`; here the
  integral inequality `‖∫ g'‖ ≤ ∫ ‖g'‖` is used in its differential form, Mathlib's comparison
  theorem `image_norm_le_of_norm_deriv_right_le_deriv_boundary` with the bound
  `B t = (A / 2) t² ‖w‖²`. This needs no continuity of `D²F` and gives every `t ∈ [0, 1]` at once.

Carriers. The domain `E` is any finite-dimensional complex normed space (so `Fin m → ℂ` and the
pair space `(Fin n → ℂ) × (Fin n → ℂ)` with the max norm), the target `W` any complete,
second countable complex normed space (every finite-dimensional one: scalars, vectors, pairs,
matrices). Completeness is needed only to know that `DF` is again holomorphic
(`bp:p1:holomorphic-regularity`). The `_of_differentiableOn_fderiv` variants take that fact as an
explicit hypothesis, and then `E` and `W` are arbitrary complex normed spaces.

`D²F` is `D (DF) = fderiv ℂ (fderiv ℂ F)`, whose norm equals that of `iteratedFDeriv ℂ 2 F`
(`KAM.taylor_iteratedFDeriv` restates the result in that form).
-/

@[expose] public section

open Set

namespace KAM

/-- The points `z + t w`, `t ∈ [0, 1]`, lie on the segment `[z, z + w]`. -/
private theorem add_smul_mem_segment {E : Type*} [AddCommGroup E] [Module ℝ E] {z w : E}
    {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) : z + t • w ∈ segment ℝ z (z + w) := by
  rw [segment_eq_image']
  exact ⟨t, ht, by simp⟩

section General

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W]

/-- Conditional form of `KAM.taylor_lipschitz`: the holomorphy of `DF` on `U` is a hypothesis
(`bp:p1:holomorphic-regularity` supplies it for finite-dimensional `E` and complete `W`), and then
`E` and `W` are arbitrary complex normed spaces. -/
theorem taylor_lipschitz_of_differentiableOn_fderiv {U : Set E} (hU : IsOpen U) {F : E → W}
    (hDF : DifferentiableOn ℂ (fderiv ℂ F) U) {A : ℝ}
    (hA : ∀ x ∈ U, ‖fderiv ℂ (fderiv ℂ F) x‖ ≤ A) {z w : E}
    (hseg : segment ℝ z (z + w) ⊆ U) {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) :
    ‖fderiv ℂ F (z + t • w) - fderiv ℂ F z‖ ≤ A * t * ‖w‖ := by
  have hsub : segment ℝ z (z + t • w) ⊆ segment ℝ z (z + w) :=
    (convex_segment z (z + w)).segment_subset (left_mem_segment ℝ z (z + w))
      (add_smul_mem_segment ht)
  have h := increments_open hU hDF hA (hsub.trans hseg)
  rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg ht.1, ← mul_assoc] at h
  exact h

/-- Conditional form of `KAM.taylor_integrate`: the holomorphy of `DF` on `U` is a hypothesis. -/
theorem taylor_integrate_of_differentiableOn_fderiv {U : Set E} (hU : IsOpen U) {F : E → W}
    (hF : DifferentiableOn ℂ F U) (hDF : DifferentiableOn ℂ (fderiv ℂ F) U) {A : ℝ}
    (hA : ∀ x ∈ U, ‖fderiv ℂ (fderiv ℂ F) x‖ ≤ A) {z w : E}
    (hseg : segment ℝ z (z + w) ⊆ U) {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) :
    ‖F (z + t • w) - F z - t • fderiv ℂ F z w‖ ≤ A / 2 * t ^ 2 * ‖w‖ ^ 2 := by
  let g : ℝ → W := fun s => F (z + s • w) - F z - s • fderiv ℂ F z w
  have hline : ∀ s : ℝ, HasDerivAt (fun s : ℝ => z + s • w) w s := fun s => by
    simpa using ((hasDerivAt_id s).smul_const w).const_add z
  have hderiv : ∀ s ∈ Icc (0 : ℝ) 1,
      HasDerivAt g (fderiv ℂ F (z + s • w) w - fderiv ℂ F z w) s := by
    intro s hs
    have hmem : z + s • w ∈ U := hseg (add_smul_mem_segment hs)
    have hFd : HasFDerivAt F (fderiv ℂ F (z + s • w)) (z + s • w) :=
      (hF.differentiableAt (hU.mem_nhds hmem)).hasFDerivAt
    have h1 : HasDerivAt (fun s : ℝ => F (z + s • w)) (fderiv ℂ F (z + s • w) w) s := by
      have h := (hFd.restrictScalars ℝ).comp_hasDerivAt s (hline s)
      exact h
    have h2 : HasDerivAt (fun s : ℝ => s • fderiv ℂ F z w) (fderiv ℂ F z w) s := by
      simpa using (hasDerivAt_id s).smul_const (fderiv ℂ F z w)
    exact (h1.sub_const (F z)).sub h2
  have hB : ∀ s : ℝ, HasDerivAt (fun s : ℝ => A / 2 * s ^ 2 * ‖w‖ ^ 2)
      (A * s * ‖w‖ ^ 2) s := fun s => by
    have h := (((hasDerivAt_pow 2 s).const_mul (A / 2)).mul_const (‖w‖ ^ 2))
    convert h using 1
    ring
  have hbound : ∀ s ∈ Ico (0 : ℝ) 1,
      ‖fderiv ℂ F (z + s • w) w - fderiv ℂ F z w‖ ≤ A * s * ‖w‖ ^ 2 := by
    intro s hs
    have hl := taylor_lipschitz_of_differentiableOn_fderiv hU hDF hA hseg ⟨hs.1, hs.2.le⟩
    calc ‖fderiv ℂ F (z + s • w) w - fderiv ℂ F z w‖
        = ‖(fderiv ℂ F (z + s • w) - fderiv ℂ F z) w‖ := by
          rw [sub_apply]
      _ ≤ ‖fderiv ℂ F (z + s • w) - fderiv ℂ F z‖ * ‖w‖ := ContinuousLinearMap.le_opNorm _ _
      _ ≤ A * s * ‖w‖ * ‖w‖ := mul_le_mul_of_nonneg_right hl (norm_nonneg w)
      _ = A * s * ‖w‖ ^ 2 := by ring
  exact image_norm_le_of_norm_deriv_right_le_deriv_boundary
    (f := g) (a := 0) (b := 1)
    (f' := fun s => fderiv ℂ F (z + s • w) w - fderiv ℂ F z w)
    (fun s hs => (hderiv s hs).continuousAt.continuousWithinAt)
    (fun s hs => (hderiv s ⟨hs.1, hs.2.le⟩).hasDerivWithinAt)
    (B := fun s => A / 2 * s ^ 2 * ‖w‖ ^ 2) (B' := fun s => A * s * ‖w‖ ^ 2)
    (by simp [g]) hB hbound ht

/-- Conditional form of `KAM.taylor`: the holomorphy of `DF` on `U` is a hypothesis, and `E` and
`W` are arbitrary complex normed spaces. -/
theorem taylor_of_differentiableOn_fderiv {U : Set E} (hU : IsOpen U) {F : E → W}
    (hF : DifferentiableOn ℂ F U) (hDF : DifferentiableOn ℂ (fderiv ℂ F) U) {A : ℝ}
    (hA : ∀ x ∈ U, ‖fderiv ℂ (fderiv ℂ F) x‖ ≤ A) {z w : E}
    (hseg : segment ℝ z (z + w) ⊆ U) :
    ‖F (z + w) - F z - fderiv ℂ F z w‖ ≤ A / 2 * ‖w‖ ^ 2 := by
  have h := taylor_integrate_of_differentiableOn_fderiv hU hF hDF hA hseg
    (t := 1) ⟨zero_le_one, le_rfl⟩
  simpa using h

end General

section Holomorphic

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [FiniteDimensional ℂ E]
  {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W] [CompleteSpace W]
  [SecondCountableTopology W]

/-- Blueprint `bp:p1:taylor`, step `step:p1:tay-lipschitz`. Let `F` be holomorphic on an open set
`U` with `‖D (DF)‖ ≤ A` on `U`, and let the segment `[z, z + w]` lie in `U`. Then for
`t ∈ [0, 1]`, `‖DF (z + t w) - DF z‖ ≤ A t ‖w‖`.

`DF` is holomorphic on `U` (`bp:p1:holomorphic-regularity`), and the segment `[z, z + t w]` lies in
`[z, z + w] ⊆ U`, so this is `bp:p1:increments-open` for `DF` with the increment `t w`. -/
theorem taylor_lipschitz {U : Set E} (hU : IsOpen U) {F : E → W} (hF : DifferentiableOn ℂ F U)
    {A : ℝ} (hA : ∀ x ∈ U, ‖fderiv ℂ (fderiv ℂ F) x‖ ≤ A) {z w : E}
    (hseg : segment ℝ z (z + w) ⊆ U) {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) :
    ‖fderiv ℂ F (z + t • w) - fderiv ℂ F z‖ ≤ A * t * ‖w‖ :=
  taylor_lipschitz_of_differentiableOn_fderiv hU (differentiableOn_fderiv_of_isOpen hU hF) hA
    hseg ht

/-- Blueprint `bp:p1:taylor`, step `step:p1:tay-integrate`. Under the hypotheses of
`KAM.taylor_lipschitz`, the remainder `g t = F (z + t w) - F z - t DF z w` satisfies
`‖g t‖ ≤ (A / 2) t² ‖w‖²` for every `t ∈ [0, 1]`.

Since `g 0 = 0` and `g' t = (DF (z + t w) - DF z) w` has norm at most `A t ‖w‖²` by
`step:p1:tay-lipschitz`, the bound is the comparison with `B t = (A / 2) t² ‖w‖²`, whose derivative
is `A t ‖w‖²`; for `t = 1` it is the integral `∫₀¹ A t ‖w‖² dt = (A / 2) ‖w‖²` of the blueprint. -/
theorem taylor_integrate {U : Set E} (hU : IsOpen U) {F : E → W} (hF : DifferentiableOn ℂ F U)
    {A : ℝ} (hA : ∀ x ∈ U, ‖fderiv ℂ (fderiv ℂ F) x‖ ≤ A) {z w : E}
    (hseg : segment ℝ z (z + w) ⊆ U) {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) :
    ‖F (z + t • w) - F z - t • fderiv ℂ F z w‖ ≤ A / 2 * t ^ 2 * ‖w‖ ^ 2 :=
  taylor_integrate_of_differentiableOn_fderiv hU hF (differentiableOn_fderiv_of_isOpen hU hF) hA
    hseg ht

/-- Blueprint `bp:p1:taylor`. If `F` is holomorphic on an open set `U` of a finite-dimensional
complex normed space, with values in a complete second countable complex normed space (for example
a finite-dimensional one), `‖D (DF)‖ ≤ A` on `U`, and the segment `[z, z + w]` lies in `U`, then
`‖F (z + w) - F z - DF z w‖ ≤ (A / 2) ‖w‖²`.

Proof: step `step:p1:tay-lipschitz` (`KAM.taylor_lipschitz`) bounds `DF (z + t w) - DF z`, and step
`step:p1:tay-integrate` (`KAM.taylor_integrate`) integrates it, at `t = 1`. The factor `1/2` is kept
exactly. -/
theorem taylor {U : Set E} (hU : IsOpen U) {F : E → W} (hF : DifferentiableOn ℂ F U)
    {A : ℝ} (hA : ∀ x ∈ U, ‖fderiv ℂ (fderiv ℂ F) x‖ ≤ A) {z w : E}
    (hseg : segment ℝ z (z + w) ⊆ U) :
    ‖F (z + w) - F z - fderiv ℂ F z w‖ ≤ A / 2 * ‖w‖ ^ 2 :=
  taylor_of_differentiableOn_fderiv hU hF (differentiableOn_fderiv_of_isOpen hU hF) hA hseg

/-- `KAM.taylor` with the second derivative measured as the bilinear map `iteratedFDeriv ℂ 2 F`
(Lean's `D²F`), whose norm equals `‖D (DF)‖`. This is the form in which Cauchy estimates and the
standing bounds on `X_h` state the hypothesis `|D²F| ≤ A`. -/
theorem taylor_iteratedFDeriv {U : Set E} (hU : IsOpen U) {F : E → W}
    (hF : DifferentiableOn ℂ F U) {A : ℝ} (hA : ∀ x ∈ U, ‖iteratedFDeriv ℂ 2 F x‖ ≤ A)
    {z w : E} (hseg : segment ℝ z (z + w) ⊆ U) :
    ‖F (z + w) - F z - fderiv ℂ F z w‖ ≤ A / 2 * ‖w‖ ^ 2 :=
  taylor hU hF (fun x hx => by
    rw [← norm_iteratedFDeriv_one (𝕜 := ℂ), norm_iteratedFDeriv_fderiv]
    exact hA x hx) hseg

end Holomorphic

end KAM
