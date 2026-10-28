/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib

/-!
# The complex Kepler equation by contraction

The operator `keplerOp a b G = G - a sin G + b cos G` and the unique solution `keplerSol` of
`keplerOp a b G = c` in the strip `|Im G| ≤ y₀`, under the quantitative hypotheses packaged in
`KeplerData` (strip invariance and a contraction bound).  One lemma serves both Kepler
equations of the formalization: the case `a = e, b = 0, c = ℓ` (the thin tube around the
real eccentricities) and the case `a = v₀, b = v₁, c = λ` (the regular Kepler equation).

The existence and uniqueness of the solution in the strip is the Banach fixed point theorem on
the closed (hence complete) strip.  Joint analyticity in the parameter `x` is the analytic
implicit function theorem (`ContDiffAt.implicitFunction` over `ℂ`), glued with the unique
solution in the open strip by continuity.
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff Topology

namespace KAM.Kepler

/-! ### The complex Kepler operator -/

/-- `G - a sin G + b cos G` (the complex Kepler operator). -/
def keplerOp (a b G : ℂ) : ℂ := G - a * Complex.sin G + b * Complex.cos G

namespace EqC

/-! ### Trigonometric bounds on a horizontal strip -/

section StripBounds

theorem re_sin (G : ℂ) : (Complex.sin G).re = Real.sin G.re * Real.cosh G.im := by
  have := congrArg Complex.re (Complex.sin_eq G)
  simpa [Complex.sin_ofReal_re, Complex.cosh_ofReal_re, Complex.cos_ofReal_re,
    Complex.sinh_ofReal_re, Complex.sin_ofReal_im, Complex.cosh_ofReal_im,
    Complex.cos_ofReal_im, Complex.sinh_ofReal_im] using this

theorem im_sin (G : ℂ) : (Complex.sin G).im = Real.cos G.re * Real.sinh G.im := by
  have := congrArg Complex.im (Complex.sin_eq G)
  simpa [Complex.sin_ofReal_re, Complex.cosh_ofReal_re, Complex.cos_ofReal_re,
    Complex.sinh_ofReal_re, Complex.sin_ofReal_im, Complex.cosh_ofReal_im,
    Complex.cos_ofReal_im, Complex.sinh_ofReal_im] using this

theorem re_cos (G : ℂ) : (Complex.cos G).re = Real.cos G.re * Real.cosh G.im := by
  have := congrArg Complex.re (Complex.cos_eq G)
  simpa [Complex.sin_ofReal_re, Complex.cosh_ofReal_re, Complex.cos_ofReal_re,
    Complex.sinh_ofReal_re, Complex.sin_ofReal_im, Complex.cosh_ofReal_im,
    Complex.cos_ofReal_im, Complex.sinh_ofReal_im] using this

theorem im_cos (G : ℂ) : (Complex.cos G).im = -(Real.sin G.re * Real.sinh G.im) := by
  have := congrArg Complex.im (Complex.cos_eq G)
  simpa [Complex.sin_ofReal_re, Complex.cosh_ofReal_re, Complex.cos_ofReal_re,
    Complex.sinh_ofReal_re, Complex.sin_ofReal_im, Complex.cosh_ofReal_im,
    Complex.cos_ofReal_im, Complex.sinh_ofReal_im] using this

/-- `|Re sin G| ≤ cosh y₀` on the strip `|Im G| ≤ y₀`. -/
theorem abs_re_sin_le {G : ℂ} {y₀ : ℝ} (h : |G.im| ≤ y₀) :
    |(Complex.sin G).re| ≤ Real.cosh y₀ := by
  rw [re_sin, abs_mul]
  have h1 : |Real.sin G.re| ≤ 1 := Real.abs_sin_le_one _
  have h2 : |Real.cosh G.im| ≤ Real.cosh y₀ := by
    rw [abs_of_pos (Real.cosh_pos _), Real.cosh_le_cosh,
      abs_of_nonneg ((abs_nonneg _).trans h)]
    exact h
  calc |Real.sin G.re| * |Real.cosh G.im| ≤ 1 * Real.cosh y₀ :=
        mul_le_mul h1 h2 (abs_nonneg _) zero_le_one
    _ = Real.cosh y₀ := one_mul _

/-- `|Im sin G| ≤ sinh y₀` on the strip `|Im G| ≤ y₀`. -/
theorem abs_im_sin_le {G : ℂ} {y₀ : ℝ} (h : |G.im| ≤ y₀) :
    |(Complex.sin G).im| ≤ Real.sinh y₀ := by
  rw [im_sin, abs_mul, Real.abs_sinh]
  have h1 : |Real.cos G.re| ≤ 1 := Real.abs_cos_le_one _
  have h2 : Real.sinh |G.im| ≤ Real.sinh y₀ := Real.sinh_le_sinh.2 h
  calc |Real.cos G.re| * Real.sinh |G.im| ≤ 1 * Real.sinh y₀ :=
        mul_le_mul h1 h2 (Real.sinh_nonneg_iff.2 (abs_nonneg _)) zero_le_one
    _ = Real.sinh y₀ := one_mul _

/-- `|Re cos G| ≤ cosh y₀` on the strip `|Im G| ≤ y₀`. -/
theorem abs_re_cos_le {G : ℂ} {y₀ : ℝ} (h : |G.im| ≤ y₀) :
    |(Complex.cos G).re| ≤ Real.cosh y₀ := by
  rw [re_cos, abs_mul]
  have h1 : |Real.cos G.re| ≤ 1 := Real.abs_cos_le_one _
  have h2 : |Real.cosh G.im| ≤ Real.cosh y₀ := by
    rw [abs_of_pos (Real.cosh_pos _), Real.cosh_le_cosh,
      abs_of_nonneg ((abs_nonneg _).trans h)]
    exact h
  calc |Real.cos G.re| * |Real.cosh G.im| ≤ 1 * Real.cosh y₀ :=
        mul_le_mul h1 h2 (abs_nonneg _) zero_le_one
    _ = Real.cosh y₀ := one_mul _

/-- `|Im cos G| ≤ sinh y₀` on the strip `|Im G| ≤ y₀`. -/
theorem abs_im_cos_le {G : ℂ} {y₀ : ℝ} (h : |G.im| ≤ y₀) :
    |(Complex.cos G).im| ≤ Real.sinh y₀ := by
  rw [im_cos, abs_neg, abs_mul, Real.abs_sinh]
  have h1 : |Real.sin G.re| ≤ 1 := Real.abs_sin_le_one _
  have h2 : Real.sinh |G.im| ≤ Real.sinh y₀ := Real.sinh_le_sinh.2 h
  calc |Real.sin G.re| * Real.sinh |G.im| ≤ 1 * Real.sinh y₀ :=
        mul_le_mul h1 h2 (Real.sinh_nonneg_iff.2 (abs_nonneg _)) zero_le_one
    _ = Real.sinh y₀ := one_mul _

/-- `‖sin G‖ ≤ cosh y₀` on the strip `|Im G| ≤ y₀`. -/
theorem norm_sin_le {G : ℂ} {y₀ : ℝ} (h : |G.im| ≤ y₀) : ‖Complex.sin G‖ ≤ Real.cosh y₀ := by
  have hc : Real.cosh G.im ≤ Real.cosh y₀ := by
    rw [Real.cosh_le_cosh, abs_of_nonneg ((abs_nonneg _).trans h)]
    exact h
  have hsq : ‖Complex.sin G‖ ^ 2 ≤ Real.cosh y₀ ^ 2 := by
    rw [Complex.sq_norm, Complex.normSq_apply, re_sin, im_sin]
    have h1 := Real.sin_sq_add_cos_sq G.re
    have h2 := Real.cosh_sq G.im
    have h3 : Real.cosh G.im ^ 2 ≤ Real.cosh y₀ ^ 2 :=
      pow_le_pow_left₀ (Real.cosh_pos _).le hc 2
    nlinarith [sq_nonneg (Real.cos G.re), sq_nonneg (Real.sinh G.im)]
  exact (pow_le_pow_iff_left₀ (norm_nonneg _) (Real.cosh_pos _).le two_ne_zero).1 hsq

/-- `‖cos G‖ ≤ cosh y₀` on the strip `|Im G| ≤ y₀`. -/
theorem norm_cos_le {G : ℂ} {y₀ : ℝ} (h : |G.im| ≤ y₀) : ‖Complex.cos G‖ ≤ Real.cosh y₀ := by
  have hc : Real.cosh G.im ≤ Real.cosh y₀ := by
    rw [Real.cosh_le_cosh, abs_of_nonneg ((abs_nonneg _).trans h)]
    exact h
  have hsq : ‖Complex.cos G‖ ^ 2 ≤ Real.cosh y₀ ^ 2 := by
    rw [Complex.sq_norm, Complex.normSq_apply, re_cos, im_cos]
    have h1 := Real.sin_sq_add_cos_sq G.re
    have h2 := Real.cosh_sq G.im
    have h3 : Real.cosh G.im ^ 2 ≤ Real.cosh y₀ ^ 2 :=
      pow_le_pow_left₀ (Real.cosh_pos _).le hc 2
    nlinarith [sq_nonneg (Real.sin G.re), sq_nonneg (Real.sinh G.im)]
  exact (pow_le_pow_iff_left₀ (norm_nonneg _) (Real.cosh_pos _).le two_ne_zero).1 hsq

end StripBounds

/-! ### Pointwise existence, uniqueness and strict invariance -/

section Pointwise

/-- The fixed-point map `G ↦ c + a sin G - b cos G`: `keplerOp a b G = c` iff `fixMap a b c G = G`. -/
def fixMap (a b c G : ℂ) : ℂ := c + a * Complex.sin G - b * Complex.cos G

theorem keplerOp_eq_iff (a b c G : ℂ) : keplerOp a b G = c ↔ fixMap a b c G = G := by
  unfold keplerOp fixMap
  constructor <;> intro h <;> linear_combination -h

/-- The closed horizontal strip `|Im G| ≤ y₀`. -/
def strip (y₀ : ℝ) : Set ℂ := {G | |G.im| ≤ y₀}

theorem isClosed_strip (y₀ : ℝ) : IsClosed (strip y₀) :=
  isClosed_le (continuous_abs.comp Complex.continuous_im) continuous_const

theorem convex_strip (y₀ : ℝ) : Convex ℝ (strip y₀) := by
  have : strip y₀ = Complex.imLm ⁻¹' Set.Icc (-y₀) y₀ := by
    ext G
    simp [strip, abs_le]
  rw [this]
  exact (convex_Icc _ _).linear_preimage _

/-- The imaginary part of the fixed-point map on the strip. -/
theorem abs_im_fixMap_le {a b c G : ℂ} {y₀ : ℝ} (hG : |G.im| ≤ y₀) :
    |(fixMap a b c G).im| ≤
      |c.im| + (|a.re| + |b.re|) * Real.sinh y₀ + (|a.im| + |b.im|) * Real.cosh y₀ := by
  have e1 : |a.re * (Complex.sin G).im| ≤ |a.re| * Real.sinh y₀ := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_left (abs_im_sin_le hG) (abs_nonneg _)
  have e2 : |a.im * (Complex.sin G).re| ≤ |a.im| * Real.cosh y₀ := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_left (abs_re_sin_le hG) (abs_nonneg _)
  have e3 : |b.re * (Complex.cos G).im| ≤ |b.re| * Real.sinh y₀ := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_left (abs_im_cos_le hG) (abs_nonneg _)
  have e4 : |b.im * (Complex.cos G).re| ≤ |b.im| * Real.cosh y₀ := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_left (abs_re_cos_le hG) (abs_nonneg _)
  have hid : (fixMap a b c G).im = c.im + (a.re * (Complex.sin G).im + a.im * (Complex.sin G).re)
      - (b.re * (Complex.cos G).im + b.im * (Complex.cos G).re) := by
    simp [fixMap, Complex.mul_im]
  rw [hid, abs_le]
  rw [abs_le] at e1 e2 e3 e4
  constructor <;> nlinarith [neg_abs_le c.im, le_abs_self c.im]

/-- Derivative of the fixed-point map. -/
theorem hasDerivAt_fixMap (a b c G : ℂ) :
    HasDerivAt (fixMap a b c) (a * Complex.cos G + b * Complex.sin G) G := by
  have h1 := (Complex.hasDerivAt_sin G).const_mul a
  have h2 := (Complex.hasDerivAt_cos G).const_mul b
  have h := ((hasDerivAt_const G c).add h1).sub h2
  have e : fixMap a b c = ((fun _ => c) + fun y => a * Complex.sin y) - fun y => b * Complex.cos y := by
    funext y
    simp [fixMap]
  rw [e]
  convert h using 1
  ring

/-- The fixed-point map is a `κ`-contraction on the strip, by the mean value inequality. -/
theorem norm_fixMap_sub_le {a b c : ℂ} {y₀ κ : ℝ} (hcon : (‖a‖ + ‖b‖) * Real.cosh y₀ ≤ κ)
    {G H : ℂ} (hG : |G.im| ≤ y₀) (hH : |H.im| ≤ y₀) :
    ‖fixMap a b c G - fixMap a b c H‖ ≤ κ * ‖G - H‖ := by
  have hd : ∀ z ∈ strip y₀, HasDerivWithinAt (fixMap a b c)
      (a * Complex.cos z + b * Complex.sin z) (strip y₀) z :=
    fun z _ => (hasDerivAt_fixMap a b c z).hasDerivWithinAt
  have hb : ∀ z ∈ strip y₀, ‖a * Complex.cos z + b * Complex.sin z‖ ≤ κ := by
    intro z hz
    calc ‖a * Complex.cos z + b * Complex.sin z‖
        ≤ ‖a * Complex.cos z‖ + ‖b * Complex.sin z‖ := norm_add_le _ _
      _ ≤ ‖a‖ * Real.cosh y₀ + ‖b‖ * Real.cosh y₀ := by
          rw [norm_mul, norm_mul]
          exact add_le_add (mul_le_mul_of_nonneg_left (norm_cos_le hz) (norm_nonneg _))
            (mul_le_mul_of_nonneg_left (norm_sin_le hz) (norm_nonneg _))
      _ = (‖a‖ + ‖b‖) * Real.cosh y₀ := by ring
      _ ≤ κ := hcon
  exact Convex.norm_image_sub_le_of_norm_hasDerivWithin_le hd hb (convex_strip y₀) hH hG

/-- Uniqueness of the solution in the strip. -/
theorem eq_of_keplerOp_eq {a b c : ℂ} {y₀ κ : ℝ} (hκ : κ < 1)
    (hcon : (‖a‖ + ‖b‖) * Real.cosh y₀ ≤ κ) {G H : ℂ} (hG : |G.im| ≤ y₀) (hH : |H.im| ≤ y₀)
    (hGe : keplerOp a b G = c) (hHe : keplerOp a b H = c) : G = H := by
  have h1 := (keplerOp_eq_iff a b c G).1 hGe
  have h2 := (keplerOp_eq_iff a b c H).1 hHe
  have h := norm_fixMap_sub_le (c := c) hcon hG hH
  rw [h1, h2] at h
  have hn : 0 ≤ ‖G - H‖ := norm_nonneg _
  have : ‖G - H‖ = 0 := by nlinarith
  exact sub_eq_zero.1 (norm_eq_zero.1 this)

/-- A solution in the closed strip lies in the open strip, by the invariance inequality. -/
theorem abs_im_lt_of_keplerOp {a b c : ℂ} {y₀ : ℝ}
    (hinv : |c.im| + (|a.re| + |b.re|) * Real.sinh y₀ + (|a.im| + |b.im|) * Real.cosh y₀ < y₀)
    {G : ℂ} (hG : |G.im| ≤ y₀) (hGe : keplerOp a b G = c) : |G.im| < y₀ := by
  have h1 := (keplerOp_eq_iff a b c G).1 hGe
  have h := abs_im_fixMap_le (a := a) (b := b) (c := c) hG
  rw [h1] at h
  exact lt_of_le_of_lt h hinv

/-- Existence and uniqueness of the solution in the closed strip (Banach fixed point theorem). -/
theorem existsUnique_keplerOp {a b c : ℂ} {y₀ κ : ℝ} (hy : 0 < y₀) (hκ : κ < 1)
    (hinv : |c.im| + (|a.re| + |b.re|) * Real.sinh y₀ + (|a.im| + |b.im|) * Real.cosh y₀ < y₀)
    (hcon : (‖a‖ + ‖b‖) * Real.cosh y₀ ≤ κ) :
    ∃! G : ℂ, |G.im| ≤ y₀ ∧ keplerOp a b G = c := by
  have hκ0 : 0 ≤ κ :=
    le_trans (mul_nonneg (add_nonneg (norm_nonneg _) (norm_nonneg _)) (Real.cosh_pos _).le) hcon
  have hmaps : ∀ G : strip y₀, |(fixMap a b c G.1).im| ≤ y₀ := fun G =>
    (abs_im_fixMap_le (a := a) (b := b) (c := c) G.2).trans hinv.le
  let f : strip y₀ → strip y₀ := fun G => ⟨fixMap a b c G.1, hmaps G⟩
  have hf : ContractingWith κ.toNNReal f := by
    refine ⟨?_, LipschitzWith.of_dist_le_mul fun G H => ?_⟩
    · rw [← NNReal.coe_lt_coe, Real.coe_toNNReal _ hκ0]
      simpa using hκ
    · rw [Real.coe_toNNReal _ hκ0, Subtype.dist_eq, Subtype.dist_eq]
      rw [dist_eq_norm, dist_eq_norm]
      exact norm_fixMap_sub_le hcon G.2 H.2
  have : CompleteSpace (strip y₀) := (isClosed_strip y₀).completeSpace_coe
  have : Nonempty (strip y₀) := ⟨⟨0, by simp [strip, hy.le]⟩⟩
  have hfix := hf.fixedPoint_isFixedPt
  set G₀ := ContractingWith.fixedPoint f hf with hG₀
  have hfix' : fixMap a b c G₀.1 = G₀.1 := congrArg Subtype.val hfix
  refine ⟨G₀.1, ⟨G₀.2, (keplerOp_eq_iff a b c G₀.1).2 hfix'⟩, ?_⟩
  rintro H ⟨hH, hHe⟩
  exact eq_of_keplerOp_eq hκ hcon hH G₀.2 hHe ((keplerOp_eq_iff a b c G₀.1).2 hfix')

end Pointwise

end EqC

end KAM.Kepler
