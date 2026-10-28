/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Planetary.Poincare.Chart
public import KAM.Kepler.KeplerTube

/-!
# The Poincaré chart: holomorphic extension

The complexified chart `poincareC` (principal branches) on the complex neighbourhood
`poincareNbhd Λ°` of the real domain (`bpP:p7:holomorphic`).  On `𝒩(Λ°)` the radicand
`(1 - Γ / (2Λ)) / Λ` lies in the right half plane, `(λ, v)` lies in the regular Kepler tube,
the chart is holomorphic, `2π`-periodic in `Re λ`, and it extends the real chart.
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff

namespace KAM.Planetary

open KAM KAM.Kepler

section PoincareChart

def poincareGammaC (w : (Fin 2 → ℂ) × (Fin 2 → ℂ)) : ℂ := (w.1 1 ^ 2 + w.2 1 ^ 2) / 2
def poincareVC (w : (Fin 2 → ℂ) × (Fin 2 → ℂ)) : Fin 2 → ℂ :=
  ((1 - poincareGammaC w / (2 * w.2 0)) / w.2 0) ^ (1 / 2 : ℂ) • ![w.1 1, w.2 1]
/-- The complex chart (principal branches), coordinates `((λ, ξ), (Λ, η))`. -/
def poincareC (m κ : ℝ) (w : (Fin 2 → ℂ) × (Fin 2 → ℂ)) : (Fin 2 → ℂ) × (Fin 2 → ℂ) :=
  let k := 1 - poincareGammaC w / w.2 0
  let v := poincareVC w
  let F := keplerLongC (w.1 0, v)
  let c : Fin 2 → ℂ := ![Complex.cos F, Complex.sin F]
  let vc := v 0 * c 0 + v 1 * c 1
  (((w.2 0 ^ 2 / (((m ^ 2 * κ : ℝ)) : ℂ))) • (k • c - v + (vc / (1 + k)) • v),
   (((m ^ 2 * κ : ℝ) : ℂ) / (w.2 0 * (1 - vc))) • (![-c 1, c 0] - (vc / (1 + k)) • ![-v 1, v 0]))
/-- `𝒩(Λ°)`. -/
def poincareNbhd (Λo : ℝ) : Set ((Fin 2 → ℂ) × (Fin 2 → ℂ)) :=
  {w | |(w.1 0).im| < 1 / 4 ∧ ‖w.2 0 - Λo‖ < Λo / 2 ∧ ‖w.1 1‖ < √Λo / 16 ∧ ‖w.2 1‖ < √Λo / 16}

section Bounds

variable {Λo : ℝ} {w : (Fin 2 → ℂ) × (Fin 2 → ℂ)}

private theorem sqrt_div_sq (hΛ : 0 < Λo) : (√Λo / 16) ^ 2 = Λo / 256 := by
  rw [div_pow, Real.sq_sqrt hΛ.le]; norm_num

private theorem nbhd_re (hw : w ∈ poincareNbhd Λo) : Λo / 2 < (w.2 0).re := by
  have h := hw.2.1
  have h1 : |(w.2 0 - Λo).re| ≤ ‖w.2 0 - Λo‖ := Complex.abs_re_le_norm _
  have h2 := (abs_le.1 h1).1
  simp only [Complex.sub_re, Complex.ofReal_re] at h2
  linarith

private theorem nbhd_im (hw : w ∈ poincareNbhd Λo) : |(w.2 0).im| < Λo / 2 := by
  have h := hw.2.1
  have h1 : |(w.2 0 - Λo).im| ≤ ‖w.2 0 - Λo‖ := Complex.abs_im_le_norm _
  simp only [Complex.sub_im, Complex.ofReal_im, sub_zero] at h1
  linarith

private theorem nbhd_norm_lower (hw : w ∈ poincareNbhd Λo) :
    Λo / 2 < ‖w.2 0‖ :=
  (nbhd_re hw).trans_le ((le_abs_self _).trans (Complex.abs_re_le_norm _))

private theorem nbhd_ne (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) : w.2 0 ≠ 0 := by
  intro h
  have := nbhd_norm_lower hw
  rw [h, norm_zero] at this
  linarith

private theorem nbhd_gamma (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) :
    ‖poincareGammaC w‖ < Λo / 256 := by
  obtain ⟨-, -, h1, h2⟩ := hw
  have e1 : ‖w.1 1 ^ 2 + w.2 1 ^ 2‖ ≤ ‖w.1 1‖ ^ 2 + ‖w.2 1‖ ^ 2 :=
    (norm_add_le _ _).trans (by simp [norm_pow])
  have e2 : ‖w.1 1‖ ^ 2 < Λo / 256 := by
    rw [← sqrt_div_sq hΛ]; exact pow_lt_pow_left₀ h1 (norm_nonneg _) two_ne_zero
  have e3 : ‖w.2 1‖ ^ 2 < Λo / 256 := by
    rw [← sqrt_div_sq hΛ]; exact pow_lt_pow_left₀ h2 (norm_nonneg _) two_ne_zero
  have e4 : ‖poincareGammaC w‖ = ‖w.1 1 ^ 2 + w.2 1 ^ 2‖ / 2 := by
    unfold poincareGammaC; rw [norm_div]; simp
  rw [e4]; linarith

private theorem nbhd_delta (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) :
    ‖poincareGammaC w / (2 * w.2 0)‖ < 1 / 256 := by
  have h1 := nbhd_gamma hΛ hw
  have h2 := nbhd_norm_lower hw
  rw [norm_div, norm_mul]
  have : ‖(2 : ℂ)‖ = 2 := by simp
  have hn : 0 < (2 : ℝ) * ‖w.2 0‖ := by linarith
  rw [this, div_lt_iff₀ hn]
  nlinarith

private theorem nbhd_A_re (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) :
    255 / 256 < (1 - poincareGammaC w / (2 * w.2 0)).re ∧
      |(1 - poincareGammaC w / (2 * w.2 0)).im| < 1 / 256 := by
  have h := nbhd_delta hΛ hw
  have h1 := Complex.abs_re_le_norm (poincareGammaC w / (2 * w.2 0))
  have h2 := Complex.abs_im_le_norm (poincareGammaC w / (2 * w.2 0))
  have h3 := (abs_le.1 h1).2
  constructor
  · simp only [Complex.sub_re, Complex.one_re]; linarith
  · simp only [Complex.sub_im, Complex.one_im, zero_sub, abs_neg]; linarith

/-- The radicand lies in the right half plane. -/
private theorem nbhd_radicand_re (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) :
    0 < ((1 - poincareGammaC w / (2 * w.2 0)) / w.2 0).re := by
  obtain ⟨hA, hAi⟩ := nbhd_A_re hΛ hw
  have hre := nbhd_re hw
  have him := nbhd_im hw
  have hne := nbhd_ne hΛ hw
  rw [Complex.div_re]
  have hn : 0 < Complex.normSq (w.2 0) := Complex.normSq_pos.2 hne
  have hpos : 0 < (1 - poincareGammaC w / (2 * w.2 0)).re * (w.2 0).re +
      (1 - poincareGammaC w / (2 * w.2 0)).im * (w.2 0).im := by
    have e1 := abs_lt.1 hAi
    have e2 := abs_lt.1 him
    nlinarith [mul_pos (sub_pos.2 hA) (by linarith : 0 < (w.2 0).re)]
  rw [← add_div]
  exact div_pos hpos hn

private theorem nbhd_radicand_slit (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) :
    (1 - poincareGammaC w / (2 * w.2 0)) / w.2 0 ∈ Complex.slitPlane :=
  Complex.mem_slitPlane_iff.2 (Or.inl (nbhd_radicand_re hΛ hw))

private theorem nbhd_radicand_norm (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) :
    ‖(1 - poincareGammaC w / (2 * w.2 0)) / w.2 0‖ * Λo < 514 / 256 := by
  have h := nbhd_delta hΛ hw
  have h2 := nbhd_norm_lower hw
  have hA : ‖1 - poincareGammaC w / (2 * w.2 0)‖ < 257 / 256 :=
    (norm_sub_le _ _).trans_lt (by rw [norm_one]; linarith)
  rw [norm_div]
  have hpos : 0 < ‖w.2 0‖ := by linarith
  rw [div_mul_eq_mul_div, div_lt_iff₀ hpos]
  nlinarith [norm_nonneg (1 - poincareGammaC w / (2 * w.2 0))]

private theorem sq_cpow_half (z : ℂ) : (z ^ (1 / 2 : ℂ)) ^ 2 = z := by
  simp

private theorem nbhd_mem_tube (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) :
    (w.1 0, poincareVC w) ∈ regularTube := by
  have hw' := hw
  obtain ⟨h0, -, h1, h2⟩ := hw
  refine ⟨h0, ?_⟩
  set R := (1 - poincareGammaC w / (2 * w.2 0)) / w.2 0 with hR
  set s := R ^ (1 / 2 : ℂ) with hs
  have hs2 : ‖s‖ ^ 2 = ‖R‖ := by rw [← norm_pow, hs, sq_cpow_half]
  have hb := nbhd_radicand_norm hΛ hw'
  have hsq : (‖s‖ * √Λo) ^ 2 < 4 := by
    rw [mul_pow, hs2, Real.sq_sqrt hΛ.le]; linarith
  have hlt : ‖s‖ * √Λo < 2 := by
    by_contra hcon
    push Not at hcon
    nlinarith
  have e0 : ‖poincareVC w 0‖ = ‖s‖ * ‖w.1 1‖ := by simp [poincareVC, hs, hR]
  have e1 : ‖poincareVC w 1‖ = ‖s‖ * ‖w.2 1‖ := by simp [poincareVC, hs, hR]
  show ‖poincareVC w 0‖ + ‖poincareVC w 1‖ < 1 / 4
  rw [e0, e1, ← mul_add]
  have hsn := norm_nonneg s
  have hsum : ‖w.1 1‖ + ‖w.2 1‖ < √Λo / 8 := by linarith
  calc ‖s‖ * (‖w.1 1‖ + ‖w.2 1‖) ≤ ‖s‖ * (√Λo / 8) :=
        mul_le_mul_of_nonneg_left hsum.le hsn
    _ < 1 / 4 := by nlinarith

private theorem isOpen_poincareNbhd (Λo : ℝ) : IsOpen (poincareNbhd Λo) := by
  have c1 : Continuous fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) => w.1 0 := by fun_prop
  have c2 : Continuous fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) => w.2 0 := by fun_prop
  have c3 : Continuous fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) => w.1 1 := by fun_prop
  have c4 : Continuous fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) => w.2 1 := by fun_prop
  exact (isOpen_lt (continuous_abs.comp (Complex.continuous_im.comp c1)) continuous_const).inter
    ((isOpen_lt (continuous_norm.comp (c2.sub continuous_const)) continuous_const).inter
      ((isOpen_lt (continuous_norm.comp c3) continuous_const).inter
        (isOpen_lt (continuous_norm.comp c4) continuous_const)))

private theorem nbhd_k_ne (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) :
    1 + (1 - poincareGammaC w / w.2 0) ≠ 0 := by
  have h := nbhd_gamma hΛ hw
  have h2 := nbhd_norm_lower hw
  have hne := nbhd_ne hΛ hw
  intro h0
  have h3 : poincareGammaC w / w.2 0 = 2 := by linear_combination -h0
  have h4 : ‖poincareGammaC w / w.2 0‖ < 1 := by
    rw [norm_div, div_lt_one (by linarith)]; linarith
  rw [h3] at h4
  simp at h4
  linarith

private theorem nbhd_jac_ne (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) :
    1 - (poincareVC w 0 * Complex.cos (keplerLongC (w.1 0, poincareVC w)) +
      poincareVC w 1 * Complex.sin (keplerLongC (w.1 0, poincareVC w))) ≠ 0 := by
  have := jac_ne_zero (nbhd_mem_tube hΛ hw)
  simpa [sub_sub] using this

end Bounds

end PoincareChart

end KAM.Planetary

end
