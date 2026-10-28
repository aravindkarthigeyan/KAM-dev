/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Planetary.Poincare.Symplectic
public import KAM.Kepler.DelaunayChart

/-!
# The Poincaré chart: bijectivity

`bpP:p7:poincare` (e): the chart `poincare m κ` maps `𝒪` onto `𝒦_{m,κ}`, is injective modulo
`2πℤ` in `λ`, is a local analytic diffeomorphism, and has the explicit inverse `poincareInv`.

Proof plan.

* Injectivity: `Λ` and `Γ` are recovered by `poincare_elements`; for `Γ = 0` the circular formula
  `poincare_circular` gives `(cos λ, sin λ)`; for `Γ > 0` the chart is `delaunayMK` in the
  variables `(λ - g, g, Λ, Λ - Γ)` (`poincare_eq_delaunayMK`) and `delaunayMK_eq_iff` applies.
* Local diffeomorphism: the derivative is symplectic (`poincare_symplectic`), hence injective,
  hence invertible; then `ContDiffAt.toOpenPartialHomeomorph`.
* Surjectivity: `C < Λ` is `delaunayMK_image` through `Γ > 0`; `C = Λ` is the circular torus
  (`cross_eq_action_iff`).
* The inverse formula is the algebra of `poincare_elements`, with `F` recovered by `Complex.arg`.
-/

@[expose] public noncomputable section

open Set Metric Real Filter Topology
open scoped ContDiff

namespace KAM.Planetary

open KAM KAM.Kepler

section PoincareBijective

private theorem bj_polar (x y : ℝ) :
    ∃ g : ℝ, x = √(x ^ 2 + y ^ 2) * Real.cos g ∧ y = √(x ^ 2 + y ^ 2) * Real.sin g := by
  refine ⟨Complex.arg ⟨x, y⟩, ?_, ?_⟩
  · have h := Complex.norm_mul_cos_arg (⟨x, y⟩ : ℂ)
    rw [Complex.norm_def, Complex.normSq_mk] at h
    simpa [sq] using h.symm
  · have h := Complex.norm_mul_sin_arg (⟨x, y⟩ : ℂ)
    rw [Complex.norm_def, Complex.normSq_mk] at h
    simpa [sq] using h.symm

private theorem bj_exists_int {x y : ℝ} (hc : Real.cos x = Real.cos y)
    (hs : Real.sin x = Real.sin y) : ∃ k : ℤ, y = x + 2 * π * k := by
  have h : Real.cos (y - x) = 1 := by
    rw [Real.cos_sub, ← hc, ← hs]
    exact Real.cos_sq_add_sin_sq x |>.symm ▸ by nlinarith [Real.cos_sq_add_sin_sq x]
  obtain ⟨n, hn⟩ := Real.cos_eq_one_iff _ |>.1 h
  exact ⟨n, by linarith⟩

private theorem bj_cos (x : ℝ) (k : ℤ) : Real.cos (x + 2 * π * k) = Real.cos x := by
  rw [show x + 2 * π * k = x + k * (2 * π) by ring]
  exact Real.cos_add_int_mul_two_pi x k

private theorem bj_sin (x : ℝ) (k : ℤ) : Real.sin (x + 2 * π * k) = Real.sin x := by
  rw [show x + 2 * π * k = x + k * (2 * π) by ring]
  exact Real.sin_add_int_mul_two_pi x k

private theorem bj_circ_eq {w : Phase 2} (h : poincareGamma w = 0) :
    w = ((![w.1 0, 0] : Fin 2 → ℝ), (![w.2 0, 0] : Fin 2 → ℝ)) := by
  have h1 : w.1 1 = 0 := by
    have : w.1 1 ^ 2 = 0 := by
      unfold poincareGamma at h; nlinarith [sq_nonneg (w.1 1), sq_nonneg (w.2 1)]
    exact pow_eq_zero_iff two_ne_zero |>.1 this
  have h2 : w.2 1 = 0 := by
    have : w.2 1 ^ 2 = 0 := by
      unfold poincareGamma at h; nlinarith [sq_nonneg (w.1 1), sq_nonneg (w.2 1)]
    exact pow_eq_zero_iff two_ne_zero |>.1 this
  refine Prod.ext ?_ ?_ <;> ext i <;> fin_cases i <;> simp [h1, h2]

/-- Off the circular locus the chart is `delaunayMK` in the variables `(λ - g, g, Λ, Λ - Γ)`. -/
private theorem bj_noncirc {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w : Phase 2}
    (hw : w ∈ poincareDom) (hΓ : 0 < poincareGamma w) :
    ∃ g : ℝ, w.1 1 = √(2 * poincareGamma w) * Real.cos g ∧
      w.2 1 = √(2 * poincareGamma w) * Real.sin g ∧
      poincare m κ w =
        delaunayMK m κ (![w.1 0 - g, g], ![w.2 0, w.2 0 - poincareGamma w]) := by
  obtain ⟨g, hg1, hg2⟩ := bj_polar (w.1 1) (w.2 1)
  have hsum : w.1 1 ^ 2 + w.2 1 ^ 2 = 2 * poincareGamma w := by unfold poincareGamma; ring
  rw [hsum] at hg1 hg2
  refine ⟨g, hg1, hg2, ?_⟩
  have hw_eq : w = ((![w.1 0, √(2 * poincareGamma w) * Real.cos g] : Fin 2 → ℝ),
      (![w.2 0, √(2 * poincareGamma w) * Real.sin g] : Fin 2 → ℝ)) := by
    refine Prod.ext ?_ ?_ <;> ext i <;> fin_cases i
    · simp
    · simpa using hg1
    · simp
    · simpa using hg2
  calc poincare m κ w = poincare m κ ((![w.1 0, √(2 * poincareGamma w) * Real.cos g] :
          Fin 2 → ℝ), (![w.2 0, √(2 * poincareGamma w) * Real.sin g] : Fin 2 → ℝ)) :=
        congrArg _ hw_eq
    _ = _ := poincare_eq_delaunayMK hm hκ hΓ hw.2

theorem poincare_eq_iff {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w w' : Phase 2} (hw : w ∈ poincareDom)
    (hw' : w' ∈ poincareDom) :
    poincare m κ w = poincare m κ w' ↔ ∃ k : ℤ, w'.1 = ![w.1 0 + 2 * π * k, w.1 1] ∧
      w'.2 = w.2 := by
  constructor
  · intro h
    obtain ⟨-, -, -, hA, hC, -⟩ := poincare_elements hm hκ hw
    obtain ⟨-, -, -, hA', hC', -⟩ := poincare_elements hm hκ hw'
    have hΛ : w'.2 0 = w.2 0 := by rw [← hA, ← hA', h]
    have hΓ : poincareGamma w' = poincareGamma w := by
      have : w.2 0 - poincareGamma w = w'.2 0 - poincareGamma w' := by rw [← hC, ← hC', h]
      linarith
    rcases (poincare_facts hw).1.eq_or_lt with h0 | hpos
    · have h0' : poincareGamma w' = 0 := by rw [hΓ]; exact h0.symm
      have c1 := bj_circ_eq h0.symm
      have c2 := bj_circ_eq h0'
      have e1 := poincare_circular hm hκ (lam := w.1 0) (Λ := w.2 0) hw.1
      have e2 := poincare_circular hm hκ (lam := w'.1 0) (Λ := w'.2 0) hw'.1
      rw [← c1] at e1
      rw [← c2] at e2
      rw [e1, e2, hΛ] at h
      have hq := congrArg Prod.fst h
      have hA0 : 0 < w.2 0 ^ 2 / (m ^ 2 * κ) := by have := hw.1; positivity
      have q0 := congrFun hq 0
      have q1 := congrFun hq 1
      simp only [Pi.smul_apply, smul_eq_mul, Matrix.cons_val_zero, Matrix.cons_val_one] at q0 q1
      obtain ⟨k, hk⟩ := bj_exists_int (mul_left_cancel₀ hA0.ne' q0)
        (mul_left_cancel₀ hA0.ne' q1)
      refine ⟨k, ?_, ?_⟩
      · ext i; fin_cases i
        · simpa using hk
        · have a := congrFun (congrArg Prod.fst c1) 1
          have b := congrFun (congrArg Prod.fst c2) 1
          simp at a b
          simp [a, b]
      · ext i; fin_cases i
        · simpa using hΛ
        · have a := congrFun (congrArg Prod.snd c1) 1
          have b := congrFun (congrArg Prod.snd c2) 1
          simp at a b
          simp [a, b]
    · have hpos' : 0 < poincareGamma w' := by rw [hΓ]; exact hpos
      obtain ⟨g, hg1, hg2, hd⟩ := bj_noncirc hm hκ hw hpos
      obtain ⟨g', hg1', hg2', hd'⟩ := bj_noncirc hm hκ hw' hpos'
      rw [hd, hd'] at h
      have hdw : (![w.1 0 - g, g], ![w.2 0, w.2 0 - poincareGamma w]) ∈ deDom :=
        by refine ⟨?_, ?_⟩ <;> simp <;> linarith [hw.2]
      have hdw' : (![w'.1 0 - g', g'], ![w'.2 0, w'.2 0 - poincareGamma w']) ∈ deDom :=
        by refine ⟨?_, ?_⟩ <;> simp <;> linarith [hw'.2]
      have h' := (delaunayMK_eq_iff hm hκ hdw hdw').1 h
      obtain ⟨k, k', hk1, hk2⟩ := h'
      have a1 := congrFun hk1 0
      have a2 := congrFun hk1 1
      simp at a1 a2
      refine ⟨k + k', ?_, ?_⟩
      · ext i; fin_cases i
        · simp only [Fin.zero_eta, Matrix.cons_val_zero]
          push_cast
          linarith
        · show w'.1 1 = w.1 1
          rw [hg1', hg1, hΓ, show g' = g + 2 * π * k' by linarith, bj_cos]
      · ext i; fin_cases i
        · simpa using hΛ
        · show w'.2 1 = w.2 1
          rw [hg2', hg2, hΓ, show g' = g + 2 * π * k' by linarith, bj_sin]
  · rintro ⟨k, h1, h2⟩
    have : w' = (![w.1 0 + 2 * π * k, w.1 1], w.2) := Prod.ext h1 h2
    rw [this]
    exact (poincare_periodic hm hκ hw k).symm

end PoincareBijective

end KAM.Planetary

end
