/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.IsPrimaryOnStrip
public import KAM.Frozen.Defs.IsRealOnReals
public import Mathlib.Analysis.Calculus.UniformLimitsDeriv
public import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Tactic.Linarith

/-!
# Uniform limits of holomorphic maps and increments on open sets (blueprint Part 1)

* `bp:p1:uniform-limits`: if holomorphic maps `K_s` on an open set `V` converge pointwise and their
  derivatives converge uniformly on `V`, then the limit is holomorphic with the limiting
  derivative; periodicity (primarity on a strip) and realness pass to the limit.
* `bp:p1:increments-open`: a holomorphic map with derivative bounded by `A` on an open set
  changes by at most `A * ‖w‖` along a segment `[z, z + w]` contained in the set.

The blueprint's three steps `step:p1:ul-differences`, `step:p1:ul-limit` and
`step:p1:ul-derivative` (mean value inequality for the differences `K_s - K_t`, passage to the
limit, differentiability of the limit) are exactly the proof of Mathlib's
`hasFDerivAt_of_tendstoUniformlyOn`, which is used here for the first assertion. Norms are the
ones of the ambient normed spaces, the max norm on `Fin m → ℂ` and the induced operator norm on
`E →L[ℂ] F`.
-/

@[expose] public section

open Set Filter Topology

namespace KAM

section Holomorphic

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  {F : Type*} [NormedAddCommGroup F] [NormedSpace ℂ F]

/-- Blueprint `bp:p1:uniform-limits` (holomorphy and derivative of the limit). Let `K_s` be
holomorphic on an open set `V`, with `K_s → K` pointwise and `DK_s → Λ` uniformly on `V`. Then `K`
is holomorphic on `V` and `DK = Λ` there.

Steps `step:p1:ul-differences`, `step:p1:ul-limit` and `step:p1:ul-derivative` are covered by the
Mathlib theorem `hasFDerivAt_of_tendstoUniformlyOn` (mean value inequality for the differences
`K_s - K_t`, passage to the limit `t → ∞`, and the `ε/2 + ε/2` argument at the point `x`). -/
theorem uniform_limits [CompleteSpace F] {V : Set E} (hV : IsOpen V) {K : ℕ → E → F}
    {K₀ : E → F} {Λ : E → E →L[ℂ] F} (hK : ∀ s, DifferentiableOn ℂ (K s) V)
    (hpt : ∀ x ∈ V, Tendsto (fun s => K s x) atTop (𝓝 (K₀ x)))
    (hder : TendstoUniformlyOn (fun s x => fderiv ℂ (K s) x) Λ atTop V) :
    DifferentiableOn ℂ K₀ V ∧ ∀ x ∈ V, fderiv ℂ K₀ x = Λ x := by
  have hfd : ∀ x ∈ V, HasFDerivAt K₀ (Λ x) x := fun x hx =>
    hasFDerivAt_of_tendstoUniformlyOn hV hder
      (fun s y hy => ((hK s).differentiableAt (hV.mem_nhds hy)).hasFDerivAt) hpt hx
  exact ⟨fun x hx => (hfd x hx).differentiableAt.differentiableWithinAt,
    fun x hx => (hfd x hx).fderiv⟩

/-- Blueprint `bp:p1:increments-open`, step `step:p1:io-mvt`. If `F` is holomorphic on an open set
`U`, `‖DF‖ ≤ A` on `U`, and the segment `[z, z + w]` lies in `U`, then
`‖F (z + w) - F z‖ ≤ A * ‖w‖`. This is the mean value inequality on the convex segment. -/
theorem increments_open {U : Set E} (hU : IsOpen U) {f : E → F} (hf : DifferentiableOn ℂ f U)
    {A : ℝ} (hA : ∀ x ∈ U, ‖fderiv ℂ f x‖ ≤ A) {z w : E}
    (hseg : segment ℝ z (z + w) ⊆ U) : ‖f (z + w) - f z‖ ≤ A * ‖w‖ := by
  have hzs : z ∈ segment ℝ z (z + w) := left_mem_segment ℝ z (z + w)
  have hzws : z + w ∈ segment ℝ z (z + w) := right_mem_segment ℝ z (z + w)
  have h := (convex_segment z (z + w)).norm_image_sub_le_of_norm_fderiv_le (𝕜 := ℂ)
    (fun x hx => (hf.differentiableAt (hU.mem_nhds (hseg hx))))
    (fun x hx => hA x (hseg hx)) hzs hzws
  simpa only [add_sub_cancel_left] using h

end Holomorphic

section Strip

variable {n : ℕ}

/-- Translation of a complex strip by an integer vector stays in the strip. -/
theorem add_intCast_mem_complexStrip {ρ : ℝ} {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ)
    (k : Fin n → ℤ) : θ + (fun i => (k i : ℂ)) ∈ complexStrip n ρ := by
  intro i
  simpa using hθ i

/-- Blueprint `bp:p1:uniform-limits`, step `step:p1:ul-primary` (periodicity). If every `K_s` is
primary on the strip `T_r` and `K_s → K` pointwise on `T_r`, then `K` is primary on `T_r`: the
identity `K_s (θ + k) = K_s θ + (k, 0)` passes to the limit, since `θ + k ∈ T_r`. -/
theorem uniform_limits_isPrimaryOnStrip {r : ℝ}
    {K : ℕ → (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    {K₀ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hpt : ∀ θ ∈ complexStrip n r, Tendsto (fun s => K s θ) atTop (𝓝 (K₀ θ)))
    (hprim : ∀ s, IsPrimaryOnStrip (K s) r) : IsPrimaryOnStrip K₀ r := by
  intro θ hθ k
  have h1 := hpt (θ + fun i => (k i : ℂ)) (add_intCast_mem_complexStrip hθ k)
  have h2 : Tendsto (fun s => K s (θ + fun i => (k i : ℂ))) atTop
      (𝓝 (K₀ θ + (fun i => (k i : ℂ), 0))) := by
    have := (hpt θ hθ).add_const (fun i => (k i : ℂ), (0 : Fin n → ℂ))
    simpa only [hprim _ θ hθ k] using this
  exact tendsto_nhds_unique h1 h2

/-- The set of real phase points `ℝⁿ × ℝⁿ ⊂ ℂⁿ × ℂⁿ` is closed. -/
theorem isClosed_realPhasePoints (n : ℕ) :
    IsClosed {p : (Fin n → ℂ) × (Fin n → ℂ) | ∀ i, (p.1 i).im = 0 ∧ (p.2 i).im = 0} := by
  simp only [Set.ofPred_forall]
  refine isClosed_iInter fun i => ?_
  refine IsClosed.inter (isClosed_eq ?_ continuous_const) (isClosed_eq ?_ continuous_const)
  · exact Complex.continuous_im.comp ((continuous_apply i).comp continuous_fst)
  · exact Complex.continuous_im.comp ((continuous_apply i).comp continuous_snd)

/-- `IsRealOnReals` is the vanishing of the imaginary parts of the values at real angles. -/
theorem isRealOnReals_iff_im {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} :
    IsRealOnReals K ↔ ∀ θ : Fin n → ℝ, ∀ i,
      ((K (fun j => (θ j : ℂ))).1 i).im = 0 ∧ ((K (fun j => (θ j : ℂ))).2 i).im = 0 := by
  constructor
  · intro h θ i
    obtain ⟨z, hz⟩ := h θ
    rw [hz]
    simp
  · intro h θ
    refine ⟨(fun i => ((K (fun j => (θ j : ℂ))).1 i).re,
      fun i => ((K (fun j => (θ j : ℂ))).2 i).re), ?_⟩
    ext i
    · exact Complex.ext rfl (by simpa using (h θ i).1)
    · exact Complex.ext rfl (by simpa using (h θ i).2)

/-- Blueprint `bp:p1:uniform-limits`, step `step:p1:ul-primary` (realness). If `0 < r`, every
`K_s` is real on reals and `K_s → K` pointwise on `T_r` (which contains `ℝⁿ`), then `K` is real on
reals: the limit of points of the closed set `ℝⁿ × ℝⁿ` lies in it. The hypothesis `0 < r` is the
standing convention that strips have positive width; without it, and for `n ≥ 1`, `T_r` has no
real points. -/
theorem uniform_limits_isRealOnReals {r : ℝ} (hr : 0 < r)
    {K : ℕ → (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    {K₀ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hpt : ∀ θ ∈ complexStrip n r, Tendsto (fun s => K s θ) atTop (𝓝 (K₀ θ)))
    (hreal : ∀ s, IsRealOnReals (K s)) : IsRealOnReals K₀ := by
  rw [isRealOnReals_iff_im]
  intro θ i
  have hmem : (fun j => (θ j : ℂ)) ∈ complexStrip n r := fun j => by simpa using hr
  have hclosed := isClosed_realPhasePoints n
  have hlim := hclosed.mem_of_tendsto (hpt _ hmem)
    (Eventually.of_forall fun s => (isRealOnReals_iff_im.mp (hreal s)) θ)
  exact hlim i

end Strip

end KAM
