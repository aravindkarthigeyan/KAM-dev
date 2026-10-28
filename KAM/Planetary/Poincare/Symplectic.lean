/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Planetary.Poincare.Chart
public import KAM.Kepler.Mass

/-!
# The Poincaré chart: Delaunay form, symplecticity, elements, circular torus, means

`bpP:p7:poincare` (b)-(d), (f) and the mean values (`bpP:p7:kepler` (c) transported):

* (b) on `Γ > 0` the chart is the mass/strength Delaunay chart `delaunayMK` in the variables
  `(λ - g, g, Λ, Λ - Γ)` with `(ξ, η) = √(2Γ) e_g`;
* (c) the chart is symplectic of factor one on all of `𝒪` (polar pull-back on `{(ξ, η) ≠ 0}` where
  it factors through the Delaunay chart, then continuity of `fderiv` across `ξ = η = 0`);
* (d) the elements (energy, axis, action, angular momentum, Laplace-Runge-Lenz vector), by one
  algebraic computation valid also at `ξ = η = 0`;
* (f) the circular torus `Γ = 0`;
* the `λ`-means of `1/|q|`, `|p|²`, `|q|`.
-/

@[expose] public noncomputable section

open Set Metric Real Filter Topology
open scoped ContDiff

namespace KAM.Planetary

open KAM KAM.Kepler

section PoincareChart

private theorem sy_planeDot (v w : Fin 2 → ℝ) : planeDot v w = v 0 * w 0 + v 1 * w 1 := by
  simp [planeDot, Fin.sum_univ_two]

private theorem sy_planeSq (v : Fin 2 → ℝ) : planeSq v = v 0 ^ 2 + v 1 ^ 2 := by
  simp [planeSq, Fin.sum_univ_two]

/-- (f): the circular torus `Γ = 0`. -/
theorem poincare_circular {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {lam Λ : ℝ} (hΛ : 0 < Λ) :
    poincare m κ (![lam, 0], ![Λ, 0]) =
      ((Λ ^ 2 / (m ^ 2 * κ)) • (![Real.cos lam, Real.sin lam] : Fin 2 → ℝ),
       (m * √(κ / (Λ ^ 2 / (m ^ 2 * κ)))) • (![-Real.sin lam, Real.cos lam] : Fin 2 → ℝ)) := by
  have hΓ : poincareGamma ((![lam, 0], ![Λ, 0]) : Phase 2) = 0 := by simp [poincareGamma]
  have hK : poincareK ((![lam, 0], ![Λ, 0]) : Phase 2) = 1 := by simp [poincareK, hΓ]
  have hV : poincareV ((![lam, 0], ![Λ, 0]) : Phase 2) = 0 := by
    ext i; fin_cases i <;> simp [poincareV]
  have hF : poincareF ((![lam, 0], ![Λ, 0]) : Phase 2) = lam := by
    simp [poincareF, hV, keplerLong_zero_vec]
  have hs : √(κ / (Λ ^ 2 / (m ^ 2 * κ))) = m * κ / Λ := by
    rw [show κ / (Λ ^ 2 / (m ^ 2 * κ)) = (m * κ / Λ) ^ 2 by field_simp]
    exact Real.sqrt_sq (by positivity)
  rw [hs]
  unfold poincare
  rw [hK, hV, hF]
  refine Prod.ext ?_ ?_
  · ext i; fin_cases i <;> simp [orbitalUnit]
  · ext i; fin_cases i <;> simp [orbitalUnit, keplerJac, quarterTurn, sy_planeDot] <;>
      field_simp <;> simp

private theorem sy_eccOf_scaled {m : ℝ} (hm : 0 < m) {Λ Γ : ℝ} (hΛ : 0 < Λ) :
    eccOf (m⁻¹ * Λ) (m⁻¹ * (Λ - Γ)) = √(1 - (1 - Γ / Λ) ^ 2) := by
  unfold eccOf
  congr 1
  field_simp

/-- (b): Delaunay on `Γ > 0`, `(ξ, η) = ρ e_g`, `ρ = √(2Γ)`. -/
theorem poincare_eq_delaunayMK {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {lam Λ Γ g : ℝ} (hΓ : 0 < Γ)
    (hΓΛ : Γ < Λ) :
    poincare m κ (![lam, √(2 * Γ) * Real.cos g], ![Λ, √(2 * Γ) * Real.sin g]) =
      delaunayMK m κ (![lam - g, g], ![Λ, Λ - Γ]) := by
  have hΛ : 0 < Λ := hΓ.trans hΓΛ
  have hρ : 0 < √(2 * Γ) := Real.sqrt_pos.2 (by linarith)
  have hρ2 : √(2 * Γ) ^ 2 = 2 * Γ := Real.sq_sqrt (by linarith)
  set ρ := √(2 * Γ) with hρdef
  set w : Phase 2 := (![lam, ρ * Real.cos g], ![Λ, ρ * Real.sin g]) with hw
  have h1 : w.1 1 = ρ * Real.cos g := by simp [hw]
  have h2 : w.2 1 = ρ * Real.sin g := by simp [hw]
  have h3 : w.2 0 = Λ := by simp [hw]
  have h4 : w.1 0 = lam := by simp [hw]
  have hΓw : poincareGamma w = Γ := by
    have := Real.cos_sq_add_sin_sq g
    simp only [poincareGamma, h1, h2]
    linear_combination (ρ ^ 2 / 2) * this + hρ2 / 2
  have hmem : w ∈ poincareDom := by
    refine ⟨by rw [h3]; exact hΛ, ?_⟩
    rw [hΓw, h3]; exact hΓΛ
  have hpol := poincare_facts_polar hmem hρ h1 h2
  have hK : poincareK w = 1 - Γ / Λ := by simp only [poincareK, hΓw, h3]
  have hK0 : 0 < 1 - Γ / Λ := by
    rw [← hK]; exact (poincare_facts hmem).2.1
  have hK1 : 1 - Γ / Λ < 1 := by
    have : 0 < Γ / Λ := div_pos hΓ hΛ
    linarith
  set K := 1 - Γ / Λ with hKdef
  have hpos : 0 < 1 - K ^ 2 := by nlinarith
  have he0 : 0 < √(1 - K ^ 2) := Real.sqrt_pos.2 hpos
  have he1 : √(1 - K ^ 2) < 1 := by
    rw [Real.sqrt_lt' one_pos]; nlinarith
  have he2 : √(1 - K ^ 2) ^ 2 = 1 - K ^ 2 := Real.sq_sqrt hpos.le
  have hsq : √(1 - √(1 - K ^ 2) ^ 2) = K := by
    rw [he2, show 1 - (1 - K ^ 2) = K ^ 2 by ring]
    exact Real.sqrt_sq hK0.le
  set e := √(1 - K ^ 2) with hedef
  have hV : poincareV w = e • ex g := by rw [hpol.2.1, hK]
  have hF : poincareF w = g + eccAnom (lam - g) e := by
    show keplerLong (w.1 0) (poincareV w) = _
    rw [h4, hV]; exact keplerLong_eq_add_eccAnom he0 he1 lam
  set u := eccAnom (lam - g) e with hu
  have hd : planeDot (poincareV w) (orbitalUnit (poincareF w)) = e * Real.cos u := by
    rw [hpol.2.2 (poincareF w), hF, hK, add_sub_cancel_left]
  have hJ : keplerJac (poincareV w) (poincareF w) = 1 - e * Real.cos u := by
    unfold keplerJac; rw [hd]
  have hecc : eccOf (m⁻¹ * Λ) (m⁻¹ * (Λ - Γ)) = e := sy_eccOf_scaled hm hΛ
  have h1K : 1 + K ≠ 0 := by linarith
  have hJ0 : 1 - e * Real.cos u ≠ 0 := by
    rw [← hJ]; exact (poincare_facts hmem).2.2.2.2.2.2.ne'
  show poincare m κ w = _
  unfold poincare
  rw [hK, hJ, hd, hV, hF, h3]
  simp only [delaunayMK, delaunay, orbitMapR, orbitFrame, scaleMK, Matrix.cons_val_zero,
    Matrix.cons_val_one, Pi.smul_apply, smul_eq_mul, hecc, hsq]
  rw [← hu]
  have hee : ∀ X : ℝ, e * Real.cos u / (1 + K) * (e * X) = (1 - K) * (Real.cos u * X) := by
    intro X
    field_simp
    linear_combination (Real.cos u * X) * he2
  refine Prod.ext ?_ ?_
  · ext i; fin_cases i <;> simp [rot, ex, orbitalUnit, Real.cos_add, Real.sin_add, hee] <;>
      field_simp <;> ring
  · ext i; fin_cases i <;> simp [rot, ex, orbitalUnit, quarterTurn, Real.cos_add, Real.sin_add,
      hee] <;> field_simp <;> ring

end PoincareChart

end KAM.Planetary

end
