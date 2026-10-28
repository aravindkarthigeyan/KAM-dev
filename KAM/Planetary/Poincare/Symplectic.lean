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

section ElementsAlgebra

/-- Unit-level identities for `q̂ = K c - v + δ v`, `p̂ = J₀ (c - δ v)` with `|c| = 1`,
`|v|² = 1 - K²`, `δ (1 + K) = v · c`; the certificates are for the ideal `(hc, hv, hd)`. -/
private theorem alg_U1 (c0 c1 v0 v1 K de : ℝ) (hc : c0 ^ 2 + c1 ^ 2 = 1)
    (hv : v0 ^ 2 + v1 ^ 2 = 1 - K ^ 2) (hd : de * (1 + K) = v0 * c0 + v1 * c1) :
    (K * c0 - v0 + de * v0) ^ 2 + (K * c1 - v1 + de * v1) ^ 2 = (1 - (v0 * c0 + v1 * c1)) ^ 2 := by
  linear_combination K ^ 2 * hc + (de - 1) ^ 2 * hv +
    (-K * de + 2 * K + c0 * v0 + c1 * v1 + de - 2) * hd

private theorem alg_U2 (c0 c1 v0 v1 K de : ℝ) (hc : c0 ^ 2 + c1 ^ 2 = 1)
    (hv : v0 ^ 2 + v1 ^ 2 = 1 - K ^ 2) (hd : de * (1 + K) = v0 * c0 + v1 * c1) :
    (-c1 + de * v1) ^ 2 + (c0 - de * v0) ^ 2 = 1 - (v0 * c0 + v1 * c1) ^ 2 := by
  linear_combination hc + de ^ 2 * hv + (-K * de - c0 * v0 - c1 * v1 + de) * hd

private theorem alg_U3 (c0 c1 v0 v1 K de : ℝ) (hc : c0 ^ 2 + c1 ^ 2 = 1)
    (hv : v0 ^ 2 + v1 ^ 2 = 1 - K ^ 2) (hd : de * (1 + K) = v0 * c0 + v1 * c1) :
    (K * c0 - v0 + de * v0) * (c0 - de * v0) - (K * c1 - v1 + de * v1) * (-c1 + de * v1) =
      K * (1 - (v0 * c0 + v1 * c1)) := by
  linear_combination K * hc - de * (de - 1) * hv + (K - 1) * (de - 1) * hd

private theorem alg_U4 (c0 c1 v0 v1 K de : ℝ) (_hc : c0 ^ 2 + c1 ^ 2 = 1)
    (_hv : v0 ^ 2 + v1 ^ 2 = 1 - K ^ 2) (hd : de * (1 + K) = v0 * c0 + v1 * c1) :
    (K * c0 - v0 + de * v0) * (-c1 + de * v1) + (K * c1 - v1 + de * v1) * (c0 - de * v0) =
      (v0 * c1 - v1 * c0) * (1 - (v0 * c0 + v1 * c1)) := by
  linear_combination (c0 * v1 - c1 * v0) * hd

private theorem alg_U5a (c0 c1 v0 v1 K de : ℝ) (hc : c0 ^ 2 + c1 ^ 2 = 1)
    (hv : v0 ^ 2 + v1 ^ 2 = 1 - K ^ 2) (hd : de * (1 + K) = v0 * c0 + v1 * c1) :
    (v0 * c0 + v1 * c1) * (K * c0 - v0 + de * v0) - (v0 * c1 - v1 * c0) * (-c1 + de * v1) =
      (1 - (v0 * c0 + v1 * c1)) * v0 := by
  linear_combination v0 * hc + c0 * de * hv - c0 * (K - 1) * hd

private theorem alg_U5b (c0 c1 v0 v1 K de : ℝ) (hc : c0 ^ 2 + c1 ^ 2 = 1)
    (hv : v0 ^ 2 + v1 ^ 2 = 1 - K ^ 2) (hd : de * (1 + K) = v0 * c0 + v1 * c1) :
    (v0 * c0 + v1 * c1) * (K * c1 - v1 + de * v1) - (v0 * c1 - v1 * c0) * (c0 - de * v0) =
      (1 - (v0 * c0 + v1 * c1)) * v1 := by
  linear_combination v1 * hc + c1 * de * hv - c1 * (K - 1) * hd

end ElementsAlgebra

/-- The algebra of (d): for a unit vector `c`, `|V|² = 1 - K²` and `J = 1 - V · c > 0`, the pair
`(q, p) = (a (K c - V + δ V), M (J₀ c - δ J₀ V))` has the stated elements. -/
private theorem sy_elements_alg {m κ Λ K : ℝ} (hm : 0 < m) (hκ : 0 < κ) (hΛ : 0 < Λ) (hK : 0 < K)
    (c V : Fin 2 → ℝ) (hc : c 0 ^ 2 + c 1 ^ 2 = 1) (hv : V 0 ^ 2 + V 1 ^ 2 = 1 - K ^ 2)
    (hJ : 0 < 1 - planeDot V c) (q p : Fin 2 → ℝ)
    (hq : q = (Λ ^ 2 / (m ^ 2 * κ)) • (K • c - V + (planeDot V c / (1 + K)) • V))
    (hp : p = (m ^ 2 * κ / (Λ * (1 - planeDot V c))) •
      (quarterTurn c - (planeDot V c / (1 + K)) • quarterTurn V)) :
    (q, p) ∈ regionMK m κ ∧ energyMK m κ (q, p) = -(κ ^ 2 * m ^ 3) / (2 * Λ ^ 2) ∧
      axisMK m κ (q, p) = Λ ^ 2 / (m ^ 2 * κ) ∧ actionMK m κ (q, p) = Λ ∧
      planeCross q p = Λ * K ∧
      κ⁻¹ • ((planeSq p / m ^ 2 - κ / planeLength q) • q - (planeDot q p / m ^ 2) • p) = V := by
  obtain ⟨d, hd⟩ : ∃ d, planeDot V c = d := ⟨_, rfl⟩
  rw [hd] at hq hp hJ
  have hd' : V 0 * c 0 + V 1 * c 1 = d := by rw [← hd, sy_planeDot]
  have h1K : (1 + K) ≠ 0 := by linarith
  obtain ⟨de, hdedef⟩ : ∃ de, de = d / (1 + K) := ⟨_, rfl⟩
  rw [← hdedef] at hq hp
  have hde : de * (1 + K) = V 0 * c 0 + V 1 * c 1 := by
    rw [hdedef, hd']; exact div_mul_cancel₀ _ h1K
  have hJne : 1 - d ≠ 0 := hJ.ne'
  obtain ⟨a, hadef⟩ : ∃ a, a = Λ ^ 2 / (m ^ 2 * κ) := ⟨_, rfl⟩
  obtain ⟨M, hMdef⟩ : ∃ M, M = m ^ 2 * κ / (Λ * (1 - d)) := ⟨_, rfl⟩
  rw [← hadef] at hq
  rw [← hMdef] at hp
  have ha : 0 < a := by rw [hadef]; positivity
  have hM : 0 < M := by rw [hMdef]; positivity
  have hq0 : q 0 = a * (K * c 0 - V 0 + de * V 0) := by rw [hq]; simp
  have hq1 : q 1 = a * (K * c 1 - V 1 + de * V 1) := by rw [hq]; simp
  have hp0 : p 0 = M * (-c 1 + de * V 1) := by rw [hp]; simp [quarterTurn]
  have hp1 : p 1 = M * (c 0 - de * V 0) := by rw [hp]; simp [quarterTurn]
  have U1 := alg_U1 (c 0) (c 1) (V 0) (V 1) K de hc hv hde
  have U2 := alg_U2 (c 0) (c 1) (V 0) (V 1) K de hc hv hde
  have U3 := alg_U3 (c 0) (c 1) (V 0) (V 1) K de hc hv hde
  have U4 := alg_U4 (c 0) (c 1) (V 0) (V 1) K de hc hv hde
  have U5a := alg_U5a (c 0) (c 1) (V 0) (V 1) K de hc hv hde
  have U5b := alg_U5b (c 0) (c 1) (V 0) (V 1) K de hc hv hde
  rw [hd'] at U1 U2 U3 U4 U5a U5b
  -- the lengths
  have hqsq : planeSq q = (a * (1 - d)) ^ 2 := by
    rw [sy_planeSq, hq0, hq1]; linear_combination a ^ 2 * U1
  have hqlen : planeLength q = a * (1 - d) := by
    unfold planeLength; rw [hqsq]; exact Real.sqrt_sq (by positivity)
  have hpsq : planeSq p = M ^ 2 * (1 - d ^ 2) := by
    rw [sy_planeSq, hp0, hp1]; linear_combination M ^ 2 * U2
  have haMJ : a * M * (1 - d) = Λ := by rw [hadef, hMdef]; field_simp
  have hcross : planeCross q p = Λ * K := by
    unfold planeCross
    rw [hq0, hq1, hp0, hp1]
    calc a * (K * c 0 - V 0 + de * V 0) * (M * (c 0 - de * V 0)) -
          a * (K * c 1 - V 1 + de * V 1) * (M * (-c 1 + de * V 1))
        = a * M * ((K * c 0 - V 0 + de * V 0) * (c 0 - de * V 0) -
            (K * c 1 - V 1 + de * V 1) * (-c 1 + de * V 1)) := by ring
      _ = a * M * (K * (1 - d)) := by rw [U3]
      _ = Λ * K := by rw [← haMJ]; ring
  have hdot : planeDot q p = Λ * (V 0 * c 1 - V 1 * c 0) := by
    rw [sy_planeDot, hq0, hq1, hp0, hp1]
    calc a * (K * c 0 - V 0 + de * V 0) * (M * (-c 1 + de * V 1)) +
          a * (K * c 1 - V 1 + de * V 1) * (M * (c 0 - de * V 0))
        = a * M * ((K * c 0 - V 0 + de * V 0) * (-c 1 + de * V 1) +
            (K * c 1 - V 1 + de * V 1) * (c 0 - de * V 0)) := by ring
      _ = a * M * ((V 0 * c 1 - V 1 * c 0) * (1 - d)) := by rw [U4]
      _ = Λ * (V 0 * c 1 - V 1 * c 0) := by rw [← haMJ]; ring
  have hE : energyMK m κ (q, p) = -(κ ^ 2 * m ^ 3) / (2 * Λ ^ 2) := by
    unfold energyMK
    show planeSq p / (2 * m) - κ * m / planeLength q = _
    rw [hpsq, hqlen, hMdef, hadef]
    field_simp
    ring
  have hAx : axisMK m κ (q, p) = Λ ^ 2 / (m ^ 2 * κ) := by
    unfold axisMK
    rw [hE]
    field_simp
  refine ⟨⟨?_, ?_, ?_⟩, hE, hAx, ?_, hcross, ?_⟩
  · show 0 < planeLength q
    rw [hqlen]; positivity
  · show energyMK m κ (q, p) < 0
    rw [hE]
    have : 0 < (κ ^ 2 * m ^ 3) / (2 * Λ ^ 2) := by positivity
    rw [neg_div]; linarith
  · show 0 < planeCross q p
    rw [hcross]; positivity
  · unfold actionMK
    rw [hAx, show κ * (Λ ^ 2 / (m ^ 2 * κ)) = (Λ / m) ^ 2 by field_simp,
      Real.sqrt_sq (by positivity)]
    field_simp
  · show κ⁻¹ • ((planeSq p / m ^ 2 - κ / planeLength q) • q - (planeDot q p / m ^ 2) • p) = V
    rw [hpsq, hqlen, hdot]
    ext i
    fin_cases i
    · simp only [Fin.zero_eta, Pi.smul_apply, smul_eq_mul, Pi.sub_apply]
      rw [hq0, hp0]
      have e : κ⁻¹ * ((M ^ 2 * (1 - d ^ 2) / m ^ 2 - κ / (a * (1 - d))) *
            (a * (K * c 0 - V 0 + de * V 0)) -
          Λ * (V 0 * c 1 - V 1 * c 0) / m ^ 2 * (M * (-c 1 + de * V 1))) =
          (d * (K * c 0 - V 0 + de * V 0) - (V 0 * c 1 - V 1 * c 0) * (-c 1 + de * V 1)) /
            (1 - d) := by
        rw [hMdef, hadef]; field_simp; ring
      rw [e, U5a]; field_simp
    · simp only [Fin.mk_one, Pi.smul_apply, smul_eq_mul, Pi.sub_apply]
      rw [hq1, hp1]
      have e : κ⁻¹ * ((M ^ 2 * (1 - d ^ 2) / m ^ 2 - κ / (a * (1 - d))) *
            (a * (K * c 1 - V 1 + de * V 1)) -
          Λ * (V 0 * c 1 - V 1 * c 0) / m ^ 2 * (M * (c 0 - de * V 0))) =
          (d * (K * c 1 - V 1 + de * V 1) - (V 0 * c 1 - V 1 * c 0) * (c 0 - de * V 0)) /
            (1 - d) := by
        rw [hMdef, hadef]; field_simp; ring
      rw [e, U5b]; field_simp

/-- (d): elements, including the Laplace-Runge-Lenz identity (`keplerEccVector` for `κ = 1`). -/
theorem poincare_elements {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {w : Phase 2} (hw : w ∈ poincareDom) :
    poincare m κ w ∈ regionMK m κ ∧
    energyMK m κ (poincare m κ w) = -(κ ^ 2 * m ^ 3) / (2 * w.2 0 ^ 2) ∧
    axisMK m κ (poincare m κ w) = w.2 0 ^ 2 / (m ^ 2 * κ) ∧
    actionMK m κ (poincare m κ w) = w.2 0 ∧
    planeCross (poincare m κ w).1 (poincare m κ w).2 = w.2 0 - poincareGamma w ∧
    κ⁻¹ • ((planeSq (poincare m κ w).2 / m ^ 2 - κ / planeLength (poincare m κ w).1) •
        (poincare m κ w).1
      - (planeDot (poincare m κ w).1 (poincare m κ w).2 / m ^ 2) • (poincare m κ w).2) =
      poincareV w := by
  obtain ⟨-, hK, -, -, hsq, -, hJ⟩ := poincare_facts hw
  have hΛ : 0 < w.2 0 := hw.1
  have hc : orbitalUnit (poincareF w) 0 ^ 2 + orbitalUnit (poincareF w) 1 ^ 2 = 1 := by
    simp [orbitalUnit, Real.cos_sq_add_sin_sq]
  have hv : poincareV w 0 ^ 2 + poincareV w 1 ^ 2 = 1 - poincareK w ^ 2 := by
    rw [← sy_planeSq]; exact hsq
  have hJ' : 0 < 1 - planeDot (poincareV w) (orbitalUnit (poincareF w)) := hJ
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := sy_elements_alg hm hκ hΛ hK (orbitalUnit (poincareF w))
    (poincareV w) hc hv hJ' (poincare m κ w).1 (poincare m κ w).2 rfl rfl
  refine ⟨h1, h2, h3, h4, ?_, h6⟩
  rw [h5]
  have : poincareK w = 1 - poincareGamma w / w.2 0 := rfl
  rw [this]
  field_simp

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
