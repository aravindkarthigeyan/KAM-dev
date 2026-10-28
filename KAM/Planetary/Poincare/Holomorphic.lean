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

private theorem nbhd_jac_ne (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) :
    1 - (poincareVC w 0 * Complex.cos (keplerLongC (w.1 0, poincareVC w)) +
      poincareVC w 1 * Complex.sin (keplerLongC (w.1 0, poincareVC w))) ≠ 0 := by
  have := Tube.jac_ne_zero (nbhd_mem_tube hΛ hw)
  simpa [sub_sub] using this

private theorem diffAt_div {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {c d : E → ℂ}
    {z : E} (hc : DifferentiableAt ℂ c z) (hd : DifferentiableAt ℂ d z) (hz : d z ≠ 0) :
    DifferentiableAt ℂ (fun x => c x / d x) z := by
  simpa [div_eq_mul_inv] using hc.fun_mul (hd.fun_inv hz)

private theorem differentiableAt_poincareC (m κ : ℝ) (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) :
    DifferentiableAt ℂ (poincareC m κ) w := by
  have hne := nbhd_ne hΛ hw
  have hk := nbhd_k_ne hΛ hw
  have hjac := nbhd_jac_ne hΛ hw
  have hL : DifferentiableAt ℂ (fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) => w.1 0) w := by fun_prop
  have hX : DifferentiableAt ℂ (fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) => w.1 1) w := by fun_prop
  have hY : DifferentiableAt ℂ (fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) => w.2 1) w := by fun_prop
  have hP : DifferentiableAt ℂ (fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) => w.2 0) w := by fun_prop
  have hG : DifferentiableAt ℂ poincareGammaC w := by unfold poincareGammaC; fun_prop
  have hA : DifferentiableAt ℂ (fun w => 1 - poincareGammaC w / (2 * w.2 0)) w :=
    (differentiableAt_const _).sub (diffAt_div hG (by fun_prop) (mul_ne_zero two_ne_zero hne))
  have hR : DifferentiableAt ℂ (fun w => (1 - poincareGammaC w / (2 * w.2 0)) / w.2 0) w :=
    diffAt_div hA hP hne
  have hS : DifferentiableAt ℂ
      (fun w => ((1 - poincareGammaC w / (2 * w.2 0)) / w.2 0) ^ (1 / 2 : ℂ)) w :=
    hR.cpow (differentiableAt_const _) (nbhd_radicand_slit hΛ hw)
  have hV0 : DifferentiableAt ℂ (fun w => poincareVC w 0) w := by
    have : (fun w => poincareVC w 0) = fun w => ((1 - poincareGammaC w / (2 * w.2 0)) / w.2 0) ^
        (1 / 2 : ℂ) * w.1 1 := by funext w; simp [poincareVC]
    rw [this]; exact hS.mul hX
  have hV1 : DifferentiableAt ℂ (fun w => poincareVC w 1) w := by
    have : (fun w => poincareVC w 1) = fun w => ((1 - poincareGammaC w / (2 * w.2 0)) / w.2 0) ^
        (1 / 2 : ℂ) * w.2 1 := by funext w; simp [poincareVC]
    rw [this]; exact hS.mul hY
  have hVV : DifferentiableAt ℂ poincareVC w := differentiableAt_pi.2 fun i => by
    fin_cases i
    · exact hV0
    · exact hV1
  have hg : DifferentiableAt ℂ keplerLongC (w.1 0, poincareVC w) :=
    (Tube.keplerLongC_analyticOnNhd (w.1 0, poincareVC w) (nbhd_mem_tube hΛ hw)).differentiableAt
  have hF : DifferentiableAt ℂ (fun w => keplerLongC (w.1 0, poincareVC w)) w :=
    DifferentiableAt.comp (g := keplerLongC) (f := fun w => (w.1 0, poincareVC w)) w hg
      (hL.prodMk hVV)
  have hK : DifferentiableAt ℂ (fun w => 1 - poincareGammaC w / w.2 0) w :=
    (differentiableAt_const _).sub (diffAt_div hG hP hne)
  have hC : DifferentiableAt ℂ (fun w => Complex.cos (keplerLongC (w.1 0, poincareVC w))) w :=
    hF.ccos
  have hS' : DifferentiableAt ℂ (fun w => Complex.sin (keplerLongC (w.1 0, poincareVC w))) w :=
    hF.csin
  have hVC : DifferentiableAt ℂ (fun w => poincareVC w 0 *
      Complex.cos (keplerLongC (w.1 0, poincareVC w)) + poincareVC w 1 *
      Complex.sin (keplerLongC (w.1 0, poincareVC w))) w := (hV0.mul hC).add (hV1.mul hS')
  have hQ : DifferentiableAt ℂ (fun w => (poincareVC w 0 *
      Complex.cos (keplerLongC (w.1 0, poincareVC w)) + poincareVC w 1 *
      Complex.sin (keplerLongC (w.1 0, poincareVC w))) /
      (1 + (1 - poincareGammaC w / w.2 0))) w :=
    diffAt_div hVC ((differentiableAt_const _).add hK) hk
  have hD : DifferentiableAt ℂ (fun w => ((m ^ 2 * κ : ℝ) : ℂ) / (w.2 0 * (1 - (poincareVC w 0 *
      Complex.cos (keplerLongC (w.1 0, poincareVC w)) + poincareVC w 1 *
      Complex.sin (keplerLongC (w.1 0, poincareVC w)))))) w :=
    diffAt_div (differentiableAt_const _) (hP.mul ((differentiableAt_const _).sub hVC))
      (mul_ne_zero hne hjac)
  have hM : DifferentiableAt ℂ (fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) =>
      w.2 0 ^ 2 / (((m ^ 2 * κ : ℝ)) : ℂ)) w := by
    have : DifferentiableAt ℂ (fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) => w.2 0 ^ 2) w := by fun_prop
    have e : (fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) => w.2 0 ^ 2 / (((m ^ 2 * κ : ℝ)) : ℂ)) =
        fun w => w.2 0 ^ 2 * (((m ^ 2 * κ : ℝ) : ℂ))⁻¹ := by
      funext w; rw [div_eq_mul_inv]
    rw [e]; exact this.fun_mul (differentiableAt_const _)
  refine DifferentiableAt.prodMk (differentiableAt_pi.2 (Fin.forall_fin_two.2 ⟨?_, ?_⟩))
    (differentiableAt_pi.2 (Fin.forall_fin_two.2 ⟨?_, ?_⟩))
  · simp only [Pi.smul_apply, Pi.sub_apply, Pi.add_apply, Matrix.cons_val_zero,
      Matrix.cons_val_one, smul_eq_mul]
    exact hM.mul (((hK.mul hC).sub hV0).add (hQ.mul hV0))
  · simp only [Pi.smul_apply, Pi.sub_apply, Pi.add_apply, Matrix.cons_val_zero,
      Matrix.cons_val_one, smul_eq_mul]
    exact hM.mul (((hK.mul hS').sub hV1).add (hQ.mul hV1))
  · simp only [Pi.smul_apply, Pi.sub_apply, Matrix.cons_val_zero,
      Matrix.cons_val_one, smul_eq_mul]
    exact hD.mul ((hS'.neg).sub (hQ.mul hV1.neg))
  · simp only [Pi.smul_apply, Pi.sub_apply, Matrix.cons_val_zero,
      Matrix.cons_val_one, smul_eq_mul]
    exact hD.mul ((hC).sub (hQ.mul hV0))

private theorem poincareC_periodic (m κ : ℝ) (hΛ : 0 < Λo) (hw : w ∈ poincareNbhd Λo) :
    (Function.update w.1 0 (w.1 0 + 2 * π), w.2) ∈ poincareNbhd Λo ∧
      poincareC m κ (Function.update w.1 0 (w.1 0 + 2 * π), w.2) = poincareC m κ w := by
  have h0 : Function.update w.1 0 (w.1 0 + 2 * π) 0 = w.1 0 + 2 * π := Function.update_self _ _ _
  have h1 : Function.update w.1 0 (w.1 0 + 2 * π) 1 = w.1 1 :=
    Function.update_of_ne (by decide) _ _
  refine ⟨?_, ?_⟩
  · obtain ⟨a, b, c, d⟩ := hw
    refine ⟨?_, b, ?_, d⟩
    · simpa [h0] using a
    · simpa [h1] using c
  · have hV : poincareVC (Function.update w.1 0 (w.1 0 + 2 * π), w.2) = poincareVC w := by
      simp only [poincareVC, poincareGammaC, h1]
    have hG : poincareGammaC (Function.update w.1 0 (w.1 0 + 2 * π), w.2) = poincareGammaC w := by
      simp only [poincareGammaC, h1]
    have hF : keplerLongC (Function.update w.1 0 (w.1 0 + 2 * π) 0, poincareVC w) =
        keplerLongC (w.1 0, poincareVC w) + 2 * π := by
      rw [h0]
      exact keplerLongC_shift (x := (w.1 0, poincareVC w)) (nbhd_mem_tube hΛ hw)
    unfold poincareC
    simp only [hV, hG, hF, Complex.cos_add_two_pi, Complex.sin_add_two_pi]

end Bounds

end PoincareChart

end KAM.Planetary

end
