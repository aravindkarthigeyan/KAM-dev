/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Kepler.Equation
public import KAM.Kepler.Energy

/-!
# The Poincaré chart: definition, domain facts, analyticity, periodicity

The one-planet Poincaré chart `Ψ_{m,κ}(λ, ξ, Λ, η) = (q, p)` on `𝒪 = {Λ > 0, Γ < Λ}` with
`Γ = (ξ² + η²) / 2`, built from the regular Kepler equation `Φ(F, v) = λ` for the regular
eccentricity vector `v = √((1 - Γ / (2Λ)) / Λ) (ξ, η)` (`bpP:p7:poincare-def`).  This module proves
the elementary facts of the domain (`bpP:p7:o-facts`), the polar form of `v` and the analyticity of
the chart through `ξ = η = 0` together with its `2π`-periodicity in `λ` (`bpP:p7:poincare` (a)).
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff

namespace KAM.Planetary

open KAM KAM.Kepler

section PoincareChart

/-- `Γ = (ξ² + η²)/2` for `w = ((λ, ξ), (Λ, η))` (`secularGamma` for one planet). -/
def poincareGamma (w : Phase 2) : ℝ := (w.1 1 ^ 2 + w.2 1 ^ 2) / 2
def poincareK (w : Phase 2) : ℝ := 1 - poincareGamma w / w.2 0
/-- The regular eccentricity vector `v = √((1 - Γ/(2Λ))/Λ) (ξ, η)` (`secularEccVector`). -/
def poincareV (w : Phase 2) : Fin 2 → ℝ :=
  √((1 - poincareGamma w / (2 * w.2 0)) / w.2 0) • ![w.1 1, w.2 1]
/-- The eccentric longitude `F(λ, v)`. -/
def poincareF (w : Phase 2) : ℝ := keplerLong (w.1 0) (poincareV w)

/-- `bpP:p7:poincare-def`: `Ψ_{m,κ}(λ, ξ, Λ, η) = (q, p)`. -/
def poincare (m κ : ℝ) (w : Phase 2) : Phase 2 :=
  ((w.2 0 ^ 2 / (m ^ 2 * κ)) •
      (poincareK w • orbitalUnit (poincareF w) - poincareV w
        + (planeDot (poincareV w) (orbitalUnit (poincareF w)) / (1 + poincareK w)) • poincareV w),
   (m ^ 2 * κ / (w.2 0 * keplerJac (poincareV w) (poincareF w))) •
      (quarterTurn (orbitalUnit (poincareF w))
        - (planeDot (poincareV w) (orbitalUnit (poincareF w)) / (1 + poincareK w)) •
            quarterTurn (poincareV w)))

/-- The Poincaré domain `𝒪 = {Λ > 0, Γ < Λ}`. -/
def poincareDom : Set (Phase 2) := {w | 0 < w.2 0 ∧ poincareGamma w < w.2 0}

private theorem planeDot_fin_two (v w : Fin 2 → ℝ) : planeDot v w = v 0 * w 0 + v 1 * w 1 := by
  simp [planeDot, Fin.sum_univ_two]

private theorem planeSq_fin_two (v : Fin 2 → ℝ) : planeSq v = v 0 ^ 2 + v 1 ^ 2 := by
  simp [planeSq, Fin.sum_univ_two]

private theorem poincareV_zero (w : Phase 2) :
    poincareV w 0 = √((1 - poincareGamma w / (2 * w.2 0)) / w.2 0) * w.1 1 := by
  simp [poincareV]

private theorem poincareV_one (w : Phase 2) :
    poincareV w 1 = √((1 - poincareGamma w / (2 * w.2 0)) / w.2 0) * w.2 1 := by
  simp [poincareV]

/-- `𝒪` is open. -/
theorem isOpen_poincareDom : IsOpen poincareDom := by
  have h1 : Continuous fun w : Phase 2 => w.2 0 := by fun_prop
  have h2 : Continuous poincareGamma := by unfold poincareGamma; fun_prop
  exact (isOpen_lt continuous_const h1).inter (isOpen_lt h2 h1)

private theorem poincare_radicand_pos {w : Phase 2} (hw : w ∈ poincareDom) :
    0 < (1 - poincareGamma w / (2 * w.2 0)) / w.2 0 := by
  obtain ⟨hΛ, hΓ⟩ := hw
  have h2 : poincareGamma w / (2 * w.2 0) < 1 := by
    rw [div_lt_one (by positivity)]; linarith
  exact div_pos (by linarith) hΛ

private theorem planeSq_poincareV {w : Phase 2} (hw : w ∈ poincareDom) :
    planeSq (poincareV w) = 1 - poincareK w ^ 2 := by
  have hΛ : 0 < w.2 0 := hw.1
  have hR := poincare_radicand_pos hw
  have hs := Real.sq_sqrt hR.le
  have hξη : w.1 1 ^ 2 + w.2 1 ^ 2 = 2 * poincareGamma w := by unfold poincareGamma; ring
  rw [planeSq_fin_two, poincareV_zero, poincareV_one]
  calc (√((1 - poincareGamma w / (2 * w.2 0)) / w.2 0) * w.1 1) ^ 2
        + (√((1 - poincareGamma w / (2 * w.2 0)) / w.2 0) * w.2 1) ^ 2
      = √((1 - poincareGamma w / (2 * w.2 0)) / w.2 0) ^ 2 * (w.1 1 ^ 2 + w.2 1 ^ 2) := by ring
    _ = (1 - poincareGamma w / (2 * w.2 0)) / w.2 0 * (2 * poincareGamma w) := by rw [hs, hξη]
    _ = 1 - poincareK w ^ 2 := by unfold poincareK; field_simp; ring

/-- `bpP:p7:o-facts`. -/
theorem poincare_facts {w : Phase 2} (hw : w ∈ poincareDom) :
    0 ≤ poincareGamma w ∧ 0 < poincareK w ∧ poincareK w ≤ 1 ∧
      0 < (1 - poincareGamma w / (2 * w.2 0)) / w.2 0 ∧
      planeSq (poincareV w) = 1 - poincareK w ^ 2 ∧ planeLength (poincareV w) < 1 ∧
      0 < keplerJac (poincareV w) (poincareF w) := by
  have hΛ : 0 < w.2 0 := hw.1
  have hΓΛ : poincareGamma w < w.2 0 := hw.2
  have hΓ : 0 ≤ poincareGamma w := by unfold poincareGamma; positivity
  have hK : 0 < poincareK w := by
    have : poincareGamma w / w.2 0 < 1 := (div_lt_one hΛ).2 hΓΛ
    unfold poincareK; linarith
  have hsq := planeSq_poincareV hw
  have hlen : planeLength (poincareV w) < 1 := by
    unfold planeLength
    rw [hsq, Real.sqrt_lt' one_pos]
    nlinarith [sq_pos_of_pos hK]
  refine ⟨hΓ, hK, ?_, poincare_radicand_pos hw, hsq, hlen, keplerJac_pos hlen _⟩
  have : 0 ≤ poincareGamma w / w.2 0 := div_nonneg hΓ hΛ.le
  unfold poincareK; linarith

private theorem planeLength_ex_eq_one (g : ℝ) : planeLength (ex g) = 1 := by
  simp [ex, planeLength, planeSq_fin_two, Real.cos_sq_add_sin_sq]

/-- `bpP:p7:o-facts`, polar form: `(ξ, η) = ρ e_g` gives `v = √(1 - k²) e_g`. -/
theorem poincare_facts_polar {w : Phase 2} (hw : w ∈ poincareDom) {ρ g : ℝ} (hρ : 0 < ρ)
    (hξ : w.1 1 = ρ * Real.cos g) (hη : w.2 1 = ρ * Real.sin g) :
    poincareGamma w = ρ ^ 2 / 2 ∧ poincareV w = √(1 - poincareK w ^ 2) • ex g ∧
      (∀ F, planeDot (poincareV w) (orbitalUnit F) =
        √(1 - poincareK w ^ 2) * Real.cos (F - g)) := by
  have hΓ : poincareGamma w = ρ ^ 2 / 2 := by
    unfold poincareGamma
    rw [hξ, hη]
    linear_combination (ρ ^ 2 / 2) * Real.cos_sq_add_sin_sq g
  have hvec : (![w.1 1, w.2 1] : Fin 2 → ℝ) = ρ • ex g := by
    ext i; fin_cases i <;> simp [ex, hξ, hη]
  have hs0 : 0 ≤ √((1 - poincareGamma w / (2 * w.2 0)) / w.2 0) := Real.sqrt_nonneg _
  have hlen : √(1 - poincareK w ^ 2) =
      √((1 - poincareGamma w / (2 * w.2 0)) / w.2 0) * ρ := by
    have h1 : planeLength (poincareV w) = √(1 - poincareK w ^ 2) := by
      unfold planeLength; rw [planeSq_poincareV hw]
    rw [← h1]
    unfold poincareV
    rw [hvec, smul_smul, planeLength_smul, planeLength_ex_eq_one, mul_one,
      abs_of_nonneg (mul_nonneg hs0 hρ.le)]
  have hV : poincareV w = √(1 - poincareK w ^ 2) • ex g := by
    unfold poincareV
    rw [hvec, smul_smul, hlen]
  refine ⟨hΓ, hV, fun F => ?_⟩
  rw [hV, planeDot_fin_two]
  simp only [Pi.smul_apply, smul_eq_mul, ex, orbitalUnit, Matrix.cons_val_zero, Matrix.cons_val_one,
    Real.cos_sub]
  ring

private theorem analyticAt_fst_apply (i : Fin 2) (w : Phase 2) :
    AnalyticAt ℝ (fun w : Phase 2 => w.1 i) w :=
  ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) i).comp
    (ContinuousLinearMap.fst ℝ (Fin 2 → ℝ) (Fin 2 → ℝ))).analyticAt w

private theorem analyticAt_snd_apply (i : Fin 2) (w : Phase 2) :
    AnalyticAt ℝ (fun w : Phase 2 => w.2 i) w :=
  ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) i).comp
    (ContinuousLinearMap.snd ℝ (Fin 2 → ℝ) (Fin 2 → ℝ))).analyticAt w

private theorem analyticAt_poincareGamma (w : Phase 2) : AnalyticAt ℝ poincareGamma w := by
  unfold poincareGamma
  exact (((analyticAt_fst_apply 1 w).pow 2).add ((analyticAt_snd_apply 1 w).pow 2)).div_const

private theorem analyticAt_poincareRadicand {w : Phase 2} (hw : w ∈ poincareDom) :
    AnalyticAt ℝ (fun w : Phase 2 => (1 - poincareGamma w / (2 * w.2 0)) / w.2 0) w := by
  have hΛ := analyticAt_snd_apply 0 w
  have h2ne : 2 * w.2 0 ≠ 0 := by have := hw.1; positivity
  exact (analyticAt_const.sub ((analyticAt_poincareGamma w).div (analyticAt_const.mul hΛ) h2ne)).div
    hΛ hw.1.ne'

private theorem analyticAt_poincareV {w : Phase 2} (hw : w ∈ poincareDom) :
    AnalyticAt ℝ poincareV w := by
  have hs : AnalyticAt ℝ (fun w : Phase 2 => √((1 - poincareGamma w / (2 * w.2 0)) / w.2 0)) w :=
    (((analyticAt_poincareRadicand hw).contDiffAt (n := ω)).sqrt
      (poincare_radicand_pos hw).ne').analyticAt
  have hvec : AnalyticAt ℝ (fun w : Phase 2 => (![w.1 1, w.2 1] : Fin 2 → ℝ)) w := by
    refine AnalyticAt.pi fun i => ?_
    fin_cases i
    · exact analyticAt_fst_apply 1 w
    · exact analyticAt_snd_apply 1 w
  exact hs.smul hvec

/-- `bpP:p7:poincare` (a): the eccentric longitude `F` is analytic on `𝒪`. -/
theorem analyticOnNhd_poincareF : AnalyticOnNhd ℝ poincareF poincareDom := by
  intro w hw
  have hmap : AnalyticAt ℝ (fun w : Phase 2 => (w.1 0, poincareV w)) w :=
    (analyticAt_fst_apply 0 w).prod (analyticAt_poincareV hw)
  have hlt : planeLength (poincareV w) < 1 := (poincare_facts hw).2.2.2.2.2.1
  exact AnalyticAt.comp (g := fun x : ℝ × (Fin 2 → ℝ) => keplerLong x.1 x.2)
    (f := fun w : Phase 2 => (w.1 0, poincareV w)) (x := w)
    (analyticOnNhd_keplerLong (w.1 0, poincareV w) hlt) hmap

private theorem analyticAt_quarterTurn {f : Phase 2 → Fin 2 → ℝ} {w : Phase 2}
    (hf : AnalyticAt ℝ f w) : AnalyticAt ℝ (fun w => quarterTurn (f w)) w := by
  refine AnalyticAt.pi fun i => ?_
  fin_cases i
  · exact (analyticAt_pi_iff.1 hf 1).neg
  · exact analyticAt_pi_iff.1 hf 0

private theorem analyticAt_orbitalUnit_poincareF {w : Phase 2} (hw : w ∈ poincareDom) :
    AnalyticAt ℝ (fun w => orbitalUnit (poincareF w)) w := by
  have hF := analyticOnNhd_poincareF w hw
  refine AnalyticAt.pi fun i => ?_
  fin_cases i
  · exact AnalyticAt.comp (g := Real.cos) (f := poincareF) (x := w)
      (Real.contDiff_cos (n := ω)).contDiffAt.analyticAt hF
  · exact AnalyticAt.comp (g := Real.sin) (f := poincareF) (x := w)
      (Real.contDiff_sin (n := ω)).contDiffAt.analyticAt hF

/-- `bpP:p7:poincare` (a): the chart is analytic through `ξ = η = 0` (the positivity hypotheses
`hm`, `hκ` are part of the designed signature; Lean division is total so the proof does not use
them). -/
theorem analyticOnNhd_poincare {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) :
    AnalyticOnNhd ℝ (poincare m κ) poincareDom := by
  intro w hw
  have hΛ := analyticAt_snd_apply 0 w
  have hV := analyticAt_poincareV hw
  have hU := analyticAt_orbitalUnit_poincareF hw
  have hK : AnalyticAt ℝ poincareK w := by
    unfold poincareK
    exact analyticAt_const.sub ((analyticAt_poincareGamma w).div hΛ hw.1.ne')
  have hd : AnalyticAt ℝ
      (fun w : Phase 2 => planeDot (poincareV w) (orbitalUnit (poincareF w))) w := by
    simp only [planeDot_fin_two]
    exact ((analyticAt_pi_iff.1 hV 0).mul (analyticAt_pi_iff.1 hU 0)).add
      ((analyticAt_pi_iff.1 hV 1).mul (analyticAt_pi_iff.1 hU 1))
  have hJ : AnalyticAt ℝ (fun w : Phase 2 => keplerJac (poincareV w) (poincareF w)) w :=
    analyticAt_const.sub hd
  have hfacts := poincare_facts hw
  have hK0 : 0 < poincareK w := hfacts.2.1
  have hJ0 : 0 < keplerJac (poincareV w) (poincareF w) := hfacts.2.2.2.2.2.2
  have hdK : AnalyticAt ℝ (fun w : Phase 2 =>
      planeDot (poincareV w) (orbitalUnit (poincareF w)) / (1 + poincareK w)) w :=
    hd.div (analyticAt_const.add hK) (by linarith)
  refine AnalyticAt.prod ?_ ?_
  · exact (((hΛ.pow 2).div_const).smul (((hK.smul hU).sub hV).add (hdK.smul hV)))
  · exact (analyticAt_const.div (hΛ.mul hJ) (mul_pos hw.1 hJ0).ne').smul
      ((analyticAt_quarterTurn hU).sub (hdK.smul (analyticAt_quarterTurn hV)))

private theorem sin_add_two_pi_int (F : ℝ) (k : ℤ) : Real.sin (F + 2 * π * k) = Real.sin F := by
  rw [show F + 2 * π * k = F + k * (2 * π) by ring]; exact Real.sin_add_int_mul_two_pi F k

private theorem cos_add_two_pi_int (F : ℝ) (k : ℤ) : Real.cos (F + 2 * π * k) = Real.cos F := by
  rw [show F + 2 * π * k = F + k * (2 * π) by ring]; exact Real.cos_add_int_mul_two_pi F k

/-- `bpP:p7:poincare` (a): `2π`-periodicity in `λ` (`hm`, `hκ` are unused, see
`analyticOnNhd_poincare`). -/
theorem poincare_periodic {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w : Phase 2} (hw : w ∈ poincareDom)
    (k : ℤ) :
    poincare m κ (![w.1 0 + 2 * π * k, w.1 1], w.2) = poincare m κ w := by
  have hΓ : poincareGamma (![w.1 0 + 2 * π * k, w.1 1], w.2) = poincareGamma w := by
    simp [poincareGamma]
  have hK : poincareK (![w.1 0 + 2 * π * k, w.1 1], w.2) = poincareK w := by
    simp only [poincareK, hΓ]
  have hV : poincareV (![w.1 0 + 2 * π * k, w.1 1], w.2) = poincareV w := by
    simp only [poincareV, hΓ]; simp
  have hlen : planeLength (poincareV w) < 1 := (poincare_facts hw).2.2.2.2.2.1
  have hF : poincareF (![w.1 0 + 2 * π * k, w.1 1], w.2) = poincareF w + 2 * π * k := by
    unfold poincareF
    rw [hV]
    refine keplerLong_unique hlen ?_
    have h := keplerPhi_keplerLong hlen (w.1 0)
    simp only [keplerPhi, sin_add_two_pi_int, cos_add_two_pi_int] at h ⊢
    simp only [Matrix.cons_val_zero]
    linarith
  have hU : orbitalUnit (poincareF (![w.1 0 + 2 * π * k, w.1 1], w.2)) =
      orbitalUnit (poincareF w) := by
    rw [hF]; simp [orbitalUnit, sin_add_two_pi_int, cos_add_two_pi_int]
  have hJ : keplerJac (poincareV (![w.1 0 + 2 * π * k, w.1 1], w.2))
      (poincareF (![w.1 0 + 2 * π * k, w.1 1], w.2)) = keplerJac (poincareV w) (poincareF w) := by
    unfold keplerJac; rw [hV, hU]
  unfold poincare
  rw [hJ, hK, hV, hU]

end PoincareChart

end KAM.Planetary

end
