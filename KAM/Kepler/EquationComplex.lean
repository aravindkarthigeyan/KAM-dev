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

/-- The fixed-point map `G ↦ c + a sin G - b cos G`: `keplerOp a b G = c` iff
`fixMap a b c G = G`. -/
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
  have e : fixMap a b c =
      ((fun _ => c) + fun y => a * Complex.sin y) - fun y => b * Complex.cos y := by
    funext y
    simp [fixMap]
  rw [e]
  convert h using 1
  ring

/-- The derivative of the fixed-point map is bounded by `κ` on the strip. -/
theorem norm_dfix_le {a b : ℂ} {y₀ κ : ℝ} (hcon : (‖a‖ + ‖b‖) * Real.cosh y₀ ≤ κ) {z : ℂ}
    (hz : |z.im| ≤ y₀) : ‖a * Complex.cos z + b * Complex.sin z‖ ≤ κ :=
  calc ‖a * Complex.cos z + b * Complex.sin z‖
      ≤ ‖a * Complex.cos z‖ + ‖b * Complex.sin z‖ := norm_add_le _ _
    _ ≤ ‖a‖ * Real.cosh y₀ + ‖b‖ * Real.cosh y₀ := by
        rw [norm_mul, norm_mul]
        exact add_le_add (mul_le_mul_of_nonneg_left (norm_cos_le hz) (norm_nonneg _))
          (mul_le_mul_of_nonneg_left (norm_sin_le hz) (norm_nonneg _))
    _ = (‖a‖ + ‖b‖) * Real.cosh y₀ := by ring
    _ ≤ κ := hcon

/-- The fixed-point map is a `κ`-contraction on the strip, by the mean value inequality. -/
theorem norm_fixMap_sub_le {a b c : ℂ} {y₀ κ : ℝ} (hcon : (‖a‖ + ‖b‖) * Real.cosh y₀ ≤ κ)
    {G H : ℂ} (hG : |G.im| ≤ y₀) (hH : |H.im| ≤ y₀) :
    ‖fixMap a b c G - fixMap a b c H‖ ≤ κ * ‖G - H‖ :=
  Convex.norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun z _ => (hasDerivAt_fixMap a b c z).hasDerivWithinAt)
    (fun _ hz => norm_dfix_le hcon hz) (convex_strip y₀) hH hG

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

/-! ### The data of the contraction and the solution -/

/-- Quantitative hypotheses of the contraction (data, not a conclusion). On a parameter set `N` with
holomorphic coefficients `a b c`: the strip `|Im G| ≤ y₀` is invariant and the map is a
`κ`-contraction. -/
structure KeplerData {P : Type*} [NormedAddCommGroup P] [NormedSpace ℂ P] [CompleteSpace P]
    (N : Set P) (a b c : P → ℂ) (y₀ κ : ℝ) : Prop where
  isOpen : IsOpen N
  analytic_a : AnalyticOnNhd ℂ a N
  analytic_b : AnalyticOnNhd ℂ b N
  analytic_c : AnalyticOnNhd ℂ c N
  y₀_pos : 0 < y₀
  κ_lt : κ < 1
  invariant : ∀ x ∈ N, |(c x).im| + (|(a x).re| + |(b x).re|) * Real.sinh y₀
      + (|(a x).im| + |(b x).im|) * Real.cosh y₀ < y₀
  contraction : ∀ x ∈ N, (‖a x‖ + ‖b x‖) * Real.cosh y₀ ≤ κ

open scoped Classical in
/-- The unique solution in the strip `|Im G| ≤ y₀` (junk `0` if there is none). -/
def keplerSol (y₀ : ℝ) (a b c : ℂ) : ℂ :=
  if h : ∃! G : ℂ, |G.im| ≤ y₀ ∧ keplerOp a b G = c then h.choose else 0

namespace EqC

/-- The specification of `keplerSol` whenever the solution in the strip is unique. -/
theorem keplerSol_props {y₀ : ℝ} {a b c : ℂ}
    (h : ∃! G : ℂ, |G.im| ≤ y₀ ∧ keplerOp a b G = c) :
    |(keplerSol y₀ a b c).im| ≤ y₀ ∧ keplerOp a b (keplerSol y₀ a b c) = c ∧
      ∀ G : ℂ, |G.im| ≤ y₀ → keplerOp a b G = c → G = keplerSol y₀ a b c := by
  unfold keplerSol
  split_ifs
  obtain ⟨⟨h1, h2⟩, h3⟩ := h.choose_spec
  exact ⟨h1, h2, fun G hG hGe => h3 G ⟨hG, hGe⟩⟩

end EqC

/-- Generic Kepler contraction: `bpI:p7:kepler-eq` and `bpP:p7:regular-kepler` (b) are instances.
Joint holomorphy is by the analytic implicit function theorem (`ContDiffAt.implicitFunction` over
`ℂ`, which needs `[CompleteSpace P]`) plus uniqueness in the open strip, NOT by a multivariable
Weierstrass theorem (absent from Mathlib); hence the coefficients are `AnalyticOnNhd` (a
holomorphic coefficient on `Fin m → ℂ` is analytic by `KAM.analyticOnNhd_of_differentiableOn`; the
instances below are compositions of analytic maps and need no adapter). -/
theorem keplerSol_spec {P : Type*} [NormedAddCommGroup P] [NormedSpace ℂ P] [CompleteSpace P]
    {N : Set P} {a b c : P → ℂ} {y₀ κ : ℝ} (h : KeplerData N a b c y₀ κ) {x : P} (hx : x ∈ N) :
    |(keplerSol y₀ (a x) (b x) (c x)).im| ≤ y₀ ∧
      keplerOp (a x) (b x) (keplerSol y₀ (a x) (b x) (c x)) = c x ∧
      ∀ G : ℂ, |G.im| ≤ y₀ → keplerOp (a x) (b x) G = c x → G = keplerSol y₀ (a x) (b x) (c x) :=
  EqC.keplerSol_props
    (EqC.existsUnique_keplerOp h.y₀_pos h.κ_lt (h.invariant x hx) (h.contraction x hx))

theorem keplerSol_analyticOnNhd {P : Type*} [NormedAddCommGroup P] [NormedSpace ℂ P]
    [CompleteSpace P] {N : Set P} {a b c : P → ℂ} {y₀ κ : ℝ} (h : KeplerData N a b c y₀ κ) :
    AnalyticOnNhd ℂ (fun x => keplerSol y₀ (a x) (b x) (c x)) N := by
  intro x₀ hx₀
  obtain ⟨hS1, hS2, -⟩ := keplerSol_spec h hx₀
  set G₀ := keplerSol y₀ (a x₀) (b x₀) (c x₀) with hG₀
  have hlt : |G₀.im| < y₀ := EqC.abs_im_lt_of_keplerOp (h.invariant x₀ hx₀) hS1 hS2
  have haa := h.analytic_a x₀ hx₀
  have hba := h.analytic_b x₀ hx₀
  have hca := h.analytic_c x₀ hx₀
  -- the implicit equation `Φ (x, G) = 0`
  set Φ : P × ℂ → ℂ := fun p => p.2 - a p.1 * Complex.sin p.2 + b p.1 * Complex.cos p.2 - c p.1
    with hΦdef
  have hΦ : AnalyticAt ℂ Φ (x₀, G₀) := by
    have h1 : AnalyticAt ℂ (fun p : P × ℂ => a p.1) (x₀, G₀) := haa.comp analyticAt_fst
    have h2 : AnalyticAt ℂ (fun p : P × ℂ => b p.1) (x₀, G₀) := hba.comp analyticAt_fst
    have h3 : AnalyticAt ℂ (fun p : P × ℂ => c p.1) (x₀, G₀) := hca.comp analyticAt_fst
    have h4 : AnalyticAt ℂ (fun p : P × ℂ => Complex.sin p.2) (x₀, G₀) :=
      Complex.analyticAt_sin.comp analyticAt_snd
    have h5 : AnalyticAt ℂ (fun p : P × ℂ => Complex.cos p.2) (x₀, G₀) :=
      Complex.analyticAt_cos.comp analyticAt_snd
    exact ((analyticAt_snd.sub (h1.mul h4)).add (h2.mul h5)).sub h3
  have hΦ0 : Φ (x₀, G₀) = 0 := by
    have : keplerOp (a x₀) (b x₀) G₀ - c x₀ = 0 := sub_eq_zero.2 hS2
    simpa [hΦdef, keplerOp] using this
  -- the partial derivative in `G` is the nonzero number `d`
  set d : ℂ := 1 - a x₀ * Complex.cos G₀ - b x₀ * Complex.sin G₀ with hd
  have hd0 : d ≠ 0 := by
    intro h0
    have h1 : a x₀ * Complex.cos G₀ + b x₀ * Complex.sin G₀ = 1 := by
      rw [hd] at h0
      linear_combination -h0
    have h2 := EqC.norm_dfix_le (h.contraction x₀ hx₀) hS1
    rw [h1, norm_one] at h2
    linarith [h.κ_lt]
  have hpart : HasDerivAt (fun G => Φ (x₀, G)) d G₀ := by
    have h1 := ((hasDerivAt_id G₀).sub ((Complex.hasDerivAt_sin G₀).const_mul (a x₀))).add
      ((Complex.hasDerivAt_cos G₀).const_mul (b x₀)) |>.sub_const (c x₀)
    refine (h1.congr_deriv ?_)
    simp only [hd]
    ring
  have hfd : fderiv ℂ Φ (x₀, G₀) ∘L ContinuousLinearMap.inr ℂ P ℂ =
      (1 : ℂ →L[ℂ] ℂ).smulRight d := by
    have h1 := hΦ.differentiableAt.hasFDerivAt.comp G₀ (hasFDerivAt_prodMk_right x₀ G₀)
    exact h1.unique hpart.hasFDerivAt
  have hinv : (fderiv ℂ Φ (x₀, G₀) ∘L ContinuousLinearMap.inr ℂ P ℂ).IsInvertible := by
    rw [hfd]
    refine ContinuousLinearMap.IsInvertible.of_inverse (g := (1 : ℂ →L[ℂ] ℂ).smulRight d⁻¹) ?_ ?_
    · ext
      simp [hd0]
    · ext
      simp [hd0]
  have hcd : ContDiffAt ℂ ω Φ (x₀, G₀) := hΦ.contDiffAt
  have hpn : (ω : WithTop ℕ∞) ≠ 0 := by simp
  set ψ := hcd.implicitFunction hpn hinv with hψdef
  have hψa : AnalyticAt ℂ ψ x₀ :=
    (hcd.contDiffAt_implicitFunction hpn hinv).analyticAt
  have hψ0 : ψ x₀ = G₀ := hcd.implicitFunction_apply_self hpn hinv
  have hev0 : ∀ᶠ x in 𝓝 x₀, Φ (x, ψ x) = 0 := by
    have := hcd.eventually_apply_implicitFunction hpn hinv
    simpa [hΦ0] using this
  have hev1 : ∀ᶠ x in 𝓝 x₀, |(ψ x).im| < y₀ := by
    have hc : ContinuousAt (fun x => |(ψ x).im|) x₀ :=
      (continuous_abs.comp Complex.continuous_im).continuousAt.comp hψa.continuousAt
    exact hc.eventually_lt continuousAt_const (by simpa [hψ0] using hlt)
  have hev2 : ∀ᶠ x in 𝓝 x₀, x ∈ N := h.isOpen.mem_nhds hx₀
  have hEq : ψ =ᶠ[𝓝 x₀] fun x => keplerSol y₀ (a x) (b x) (c x) := by
    filter_upwards [hev0, hev1, hev2] with x hx0 hx1 hx2
    have hop : keplerOp (a x) (b x) (ψ x) = c x := by
      have : keplerOp (a x) (b x) (ψ x) - c x = 0 := by simpa [hΦdef, keplerOp] using hx0
      exact sub_eq_zero.1 this
    exact (keplerSol_spec h hx2).2.2 (ψ x) hx1.le hop
  exact hψa.congr hEq

theorem keplerSol_differentiableOn {P : Type*} [NormedAddCommGroup P] [NormedSpace ℂ P]
    [CompleteSpace P] {N : Set P} {a b c : P → ℂ} {y₀ κ : ℝ} (h : KeplerData N a b c y₀ κ) :
    DifferentiableOn ℂ (fun x => keplerSol y₀ (a x) (b x) (c x)) N :=
  (keplerSol_analyticOnNhd h).differentiableOn

/-- Generic derivatives (implicit differentiation; the denominator `1 - a cos G - b sin G` is
nonzero on `N` because `‖a cos G‖ + ‖b sin G‖ ≤ κ < 1`):
`∂_x G = (a' sin G - b' cos G + c')/(1 - a cos G - b sin G)` in direction `v`. -/
theorem keplerSol_fderiv {P : Type*} [NormedAddCommGroup P] [NormedSpace ℂ P] [CompleteSpace P]
    {N : Set P} {a b c : P → ℂ} {y₀ κ : ℝ} (h : KeplerData N a b c y₀ κ) {x : P} (hx : x ∈ N)
    (v : P) :
    fderiv ℂ (fun x => keplerSol y₀ (a x) (b x) (c x)) x v *
        (1 - a x * Complex.cos (keplerSol y₀ (a x) (b x) (c x))
          - b x * Complex.sin (keplerSol y₀ (a x) (b x) (c x))) =
      fderiv ℂ a x v * Complex.sin (keplerSol y₀ (a x) (b x) (c x))
        - fderiv ℂ b x v * Complex.cos (keplerSol y₀ (a x) (b x) (c x)) + fderiv ℂ c x v := by
  set S : P → ℂ := fun x => keplerSol y₀ (a x) (b x) (c x) with hS
  have hSd : HasFDerivAt S (fderiv ℂ S x) x :=
    ((keplerSol_analyticOnNhd h) x hx).differentiableAt.hasFDerivAt
  have had : HasFDerivAt a (fderiv ℂ a x) x := (h.analytic_a x hx).differentiableAt.hasFDerivAt
  have hbd : HasFDerivAt b (fderiv ℂ b x) x := (h.analytic_b x hx).differentiableAt.hasFDerivAt
  have hcd : HasFDerivAt c (fderiv ℂ c x) x := (h.analytic_c x hx).differentiableAt.hasFDerivAt
  have hF : HasFDerivAt
      (fun y => S y - a y * Complex.sin (S y) + b y * Complex.cos (S y) - c y) _ x :=
    ((hSd.sub (had.mul hSd.csin)).add (hbd.mul hSd.ccos)).sub hcd
  have hzero : (fun y => S y - a y * Complex.sin (S y) + b y * Complex.cos (S y) - c y)
      =ᶠ[𝓝 x] fun _ => (0 : ℂ) := by
    filter_upwards [h.isOpen.mem_nhds hx] with y hy
    have := (keplerSol_spec h hy).2.1
    simp only [keplerOp] at this
    simp only [hS]
    rw [this, sub_self]
  have h0 := hF.fderiv
  rw [hzero.fderiv_eq] at h0
  simp only [fderiv_fun_const, Pi.zero_apply] at h0
  have h1 := congrArg (fun L => L v) h0
  simp only [sub_apply, add_apply, smul_apply, smul_eq_mul, zero_apply] at h1
  simp only [hS] at h1 ⊢
  linear_combination -h1

/-- Real coefficients give a real solution. -/
theorem keplerSol_real {y₀ : ℝ} {a b c : ℂ} (ha : a.im = 0) (hb : b.im = 0) (hc : c.im = 0)
    (hex : ∃ G : ℂ, |G.im| ≤ y₀ ∧ keplerOp a b G = c)
    (huniq : ∃! G : ℂ, |G.im| ≤ y₀ ∧ keplerOp a b G = c) :
    (keplerSol y₀ a b c).im = 0 := by
  have _ := hex
  obtain ⟨h1, h2, h3⟩ := EqC.keplerSol_props huniq
  set S := keplerSol y₀ a b c with hS
  have ha' : (starRingEnd ℂ) a = a := Complex.conj_eq_iff_im.2 ha
  have hb' : (starRingEnd ℂ) b = b := Complex.conj_eq_iff_im.2 hb
  have hc' : (starRingEnd ℂ) c = c := Complex.conj_eq_iff_im.2 hc
  have hconj : keplerOp a b ((starRingEnd ℂ) S) = c := by
    have e : keplerOp a b ((starRingEnd ℂ) S) = (starRingEnd ℂ) (keplerOp a b S) := by
      simp [keplerOp, Complex.sin_conj, Complex.cos_conj, ha', hb']
    rw [e, h2, hc']
  have hmem : |((starRingEnd ℂ) S).im| ≤ y₀ := by simpa using h1
  exact Complex.conj_eq_iff_im.1 (h3 _ hmem hconj)

/-- Translation by `2π` in the right-hand side. -/
theorem keplerSol_shift {y₀ : ℝ} {a b c : ℂ} (huniq : ∃! G : ℂ, |G.im| ≤ y₀ ∧ keplerOp a b G = c) :
    keplerSol y₀ a b (c + 2 * π) = keplerSol y₀ a b c + 2 * π := by
  obtain ⟨h1, h2, h3⟩ := EqC.keplerSol_props huniq
  set S := keplerSol y₀ a b c with hS
  have hmem : |(S + 2 * π).im| ≤ y₀ := by simpa using h1
  have hop : keplerOp a b (S + 2 * π) = c + 2 * π := by
    simp only [keplerOp, Complex.sin_add_two_pi, Complex.cos_add_two_pi]
    simp only [keplerOp] at h2
    linear_combination h2
  have huniq' : ∃! G : ℂ, |G.im| ≤ y₀ ∧ keplerOp a b G = c + 2 * π := by
    refine ⟨S + 2 * π, ⟨hmem, hop⟩, ?_⟩
    rintro G ⟨hG, hGe⟩
    have hG' : |(G - 2 * π).im| ≤ y₀ := by simpa using hG
    have hGe' : keplerOp a b (G - 2 * π) = c := by
      simp only [keplerOp, Complex.sin_sub_two_pi, Complex.cos_sub_two_pi]
      simp only [keplerOp] at hGe
      linear_combination hGe
    have := h3 _ hG' hGe'
    linear_combination this
  exact ((EqC.keplerSol_props huniq').2.2 _ hmem hop).symm

end KAM.Kepler
