/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Kepler.Basic
public import KAM.Kepler.Plane
public import KAM.Kepler.Energy
public import KAM.Kepler.Equation

/-!
# Real Kepler and Delaunay orbit maps

The orbit frame `orbitFrame`, the orbit map `orbitMapR ℓ g L e` (including the circular endpoint
`e = 0`) and the Delaunay map `delaunay`, with the orbit identities (radius, speed, angular
momentum, radial momentum, energy), periodicity, real analyticity, membership of the Delaunay
image in `keplerRegion`, recovery of the elements, and `Ham^K ∘ 𝖰 = -1/(2L²) - G`
(`bpI:p7:elements`, `orbit-maps`, `orbit-identities`, `circular`, `h0`).
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff

namespace KAM.Kepler

open KAM KAM.Planetary

/-- The orbit frame: position and momentum in the frame of the ellipse, at eccentric anomaly `u`. -/
def orbitFrame (L e u : ℝ) : Phase 2 :=
  (![L ^ 2 * (Real.cos u - e), L ^ 2 * √(1 - e ^ 2) * Real.sin u],
   ![-Real.sin u / (L * (1 - e * Real.cos u)), √(1 - e ^ 2) * Real.cos u / (L * (1 - e * Real.cos u))])

/-- The orbit map in the parameters `(ℓ, g, L, e)`, `0 ≤ e < 1`: includes the circular endpoint `e = 0`. -/
def orbitMapR (ℓ g L e : ℝ) : Phase 2 :=
  (rot g (orbitFrame L e (eccAnom ℓ e)).1, rot g (orbitFrame L e (eccAnom ℓ e)).2)

/-- The Delaunay map `𝖰(ℓ, g, L, G)` (`bpI:p7:orbit-maps`). -/
def delaunay (w : Phase 2) : Phase 2 := orbitMapR (w.1 0) (w.1 1) (w.2 0) (eccOf (w.2 0) (w.2 1))

section Frame

private theorem pSq (v : Fin 2 → ℝ) : planeSq v = v 0 ^ 2 + v 1 ^ 2 := by
  simp [planeSq, Fin.sum_univ_two]

private theorem pDot (v w : Fin 2 → ℝ) : planeDot v w = v 0 * w 0 + v 1 * w 1 := by
  simp [planeDot, Fin.sum_univ_two]

private theorem pCross (v w : Fin 2 → ℝ) : planeCross v w = v 0 * w 1 - v 1 * w 0 := rfl

variable {L e u : ℝ}

private theorem one_sub_mul_cos_pos (he0 : 0 ≤ e) (he1 : e < 1) (u : ℝ) : 0 < 1 - e * Real.cos u := by
  have := Real.cos_le_one u
  nlinarith

private theorem sqrt_sq_one (he1 : e < 1) (he0 : 0 ≤ e) : √(1 - e ^ 2) ^ 2 = 1 - e ^ 2 :=
  Real.sq_sqrt (by nlinarith)

private theorem frame_sq_pos (he0 : 0 ≤ e) (he1 : e < 1) :
    planeSq (orbitFrame L e u).1 = (L ^ 2 * (1 - e * Real.cos u)) ^ 2 := by
  have hk := sqrt_sq_one he1 he0
  have hs := Real.sin_sq_add_cos_sq u
  simp only [orbitFrame, pSq, Matrix.cons_val_zero, Matrix.cons_val_one]
  linear_combination (L ^ 4 * Real.sin u ^ 2) * hk + (L ^ 4 * (1 - e ^ 2)) * hs

private theorem frame_radius (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    planeLength (orbitFrame L e u).1 = L ^ 2 * (1 - e * Real.cos u) := by
  unfold planeLength
  rw [frame_sq_pos he0 he1]
  exact Real.sqrt_sq (by have := one_sub_mul_cos_pos he0 he1 u; positivity)

private theorem frame_speed_sq (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    planeSq (orbitFrame L e u).2 =
      (1 + e * Real.cos u) / (L ^ 2 * (1 - e * Real.cos u)) := by
  have hk := sqrt_sq_one he1 he0
  have hs := Real.sin_sq_add_cos_sq u
  have hD := one_sub_mul_cos_pos he0 he1 u
  simp only [orbitFrame, pSq, Matrix.cons_val_zero, Matrix.cons_val_one]
  field_simp
  linear_combination Real.cos u ^ 2 * hk + hs

private theorem frame_dot (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    planeDot (orbitFrame L e u).1 (orbitFrame L e u).2 = L * e * Real.sin u := by
  have hk := sqrt_sq_one he1 he0
  have hD := one_sub_mul_cos_pos he0 he1 u
  simp only [orbitFrame, pDot, Matrix.cons_val_zero, Matrix.cons_val_one]
  field_simp
  have hD' : 0 < 1 - Real.cos u * e := by linarith [mul_comm e (Real.cos u)]
  rw [div_eq_iff hD'.ne']
  linear_combination (Real.sin u * Real.cos u) * hk

private theorem frame_cross (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    planeCross (orbitFrame L e u).1 (orbitFrame L e u).2 = L * √(1 - e ^ 2) := by
  have hs := Real.sin_sq_add_cos_sq u
  have hD := one_sub_mul_cos_pos he0 he1 u
  simp only [orbitFrame, pCross, Matrix.cons_val_zero, Matrix.cons_val_one]
  field_simp
  have hD' : 0 < 1 - Real.cos u * e := by linarith [mul_comm e (Real.cos u)]
  rw [div_eq_iff hD'.ne']
  linear_combination √(1 - e ^ 2) * hs

end Frame

section OrbitIdentities

private theorem pSq' (v : Fin 2 → ℝ) : planeSq v = v 0 ^ 2 + v 1 ^ 2 := by
  simp [planeSq, Fin.sum_univ_two]

private theorem planeSq_rot (g : ℝ) (v : Fin 2 → ℝ) : planeSq (rot g v) = planeSq v := by
  rw [← planeLength_sq, planeLength_rot, planeLength_sq]

variable {ℓ g L e : ℝ}

theorem orbitMapR_radius (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    planeLength (orbitMapR ℓ g L e).1 = L ^ 2 * (1 - e * Real.cos (eccAnom ℓ e)) := by
  rw [orbitMapR, planeLength_rot]; exact frame_radius hL he0 he1

theorem orbitMapR_radius_bounds (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    L ^ 2 * (1 - e) ≤ planeLength (orbitMapR ℓ g L e).1 ∧
      planeLength (orbitMapR ℓ g L e).1 ≤ L ^ 2 * (1 + e) := by
  rw [orbitMapR_radius hL he0 he1]
  have h1 := Real.cos_le_one (eccAnom ℓ e)
  have h2 := Real.neg_one_le_cos (eccAnom ℓ e)
  have hL2 : 0 < L ^ 2 := by positivity
  constructor
  · exact mul_le_mul_of_nonneg_left (by nlinarith) hL2.le
  · exact mul_le_mul_of_nonneg_left (by nlinarith) hL2.le

theorem orbitMapR_speed_sq (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    planeSq (orbitMapR ℓ g L e).2 =
      (1 + e * Real.cos (eccAnom ℓ e)) / (L ^ 2 * (1 - e * Real.cos (eccAnom ℓ e))) := by
  rw [orbitMapR, planeSq_rot]; exact frame_speed_sq hL he0 he1

theorem orbitMapR_cross (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    planeCross (orbitMapR ℓ g L e).1 (orbitMapR ℓ g L e).2 = L * √(1 - e ^ 2) := by
  rw [orbitMapR, planeCross_rot]; exact frame_cross hL he0 he1

theorem orbitMapR_dot (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    planeDot (orbitMapR ℓ g L e).1 (orbitMapR ℓ g L e).2 = L * e * Real.sin (eccAnom ℓ e) := by
  rw [orbitMapR, planeDot_rot]; exact frame_dot hL he0 he1

theorem orbitMapR_energy (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    kE (orbitMapR ℓ g L e) = -1 / (2 * L ^ 2) := by
  have hD := one_sub_mul_cos_pos he0 he1 (eccAnom ℓ e)
  unfold kE
  rw [orbitMapR_radius hL he0 he1, orbitMapR_speed_sq hL he0 he1]
  field_simp
  ring

theorem orbitMapR_radial (hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    (L * e * Real.sin (eccAnom ℓ e)) ^ 2 =
        -(L * √(1 - e ^ 2)) ^ 2 + 2 * planeLength (orbitMapR ℓ g L e).1
          - planeLength (orbitMapR ℓ g L e).1 ^ 2 / L ^ 2 ∧
      L ^ 2 * e * Real.cos (eccAnom ℓ e) = L ^ 2 - planeLength (orbitMapR ℓ g L e).1 := by
  rw [orbitMapR_radius hL he0 he1]
  have hk := sqrt_sq_one he1 he0
  have hs := Real.sin_sq_add_cos_sq (eccAnom ℓ e)
  constructor
  · have h2 : (L ^ 2 * (1 - e * Real.cos (eccAnom ℓ e))) ^ 2 / L ^ 2
        = L ^ 2 * (1 - e * Real.cos (eccAnom ℓ e)) ^ 2 := by field_simp
    rw [h2]
    linear_combination (L ^ 2 * e ^ 2) * hs + L ^ 2 * hk
  · ring

theorem eccAnom_add_int_mul_two_pi (k : ℤ) (ℓ : ℝ) (he0 : 0 ≤ e) (he1 : e < 1) :
    eccAnom (ℓ + 2 * π * k) e = eccAnom ℓ e + 2 * π * k := by
  have he : |e| < 1 := by rw [abs_lt]; constructor <;> linarith
  have h := eccAnom_eq ℓ he
  have hs : Real.sin (eccAnom ℓ e + 2 * π * k) = Real.sin (eccAnom ℓ e) := by
    rw [show eccAnom ℓ e + 2 * π * k = eccAnom ℓ e + k * (2 * π) by ring]
    exact Real.sin_add_int_mul_two_pi _ _
  have key : keplerPhi ![e, 0] (eccAnom ℓ e + 2 * π * k) = ℓ + 2 * π * k := by
    simp only [keplerPhi, Matrix.cons_val_zero, Matrix.cons_val_one, zero_mul, add_zero]
    rw [hs]
    linarith [h]
  exact keplerLong_unique (planeLength_eccVec he) key

theorem orbitMapR_periodic (k k' : ℤ) (_hL : 0 < L) (he0 : 0 ≤ e) (he1 : e < 1) :
    orbitMapR (ℓ + 2 * π * k) (g + 2 * π * k') L e = orbitMapR ℓ g L e := by
  have hc : Real.cos (eccAnom ℓ e + 2 * π * k) = Real.cos (eccAnom ℓ e) := by
    rw [show eccAnom ℓ e + 2 * π * k = eccAnom ℓ e + k * (2 * π) by ring]
    exact Real.cos_add_int_mul_two_pi _ _
  have hs : Real.sin (eccAnom ℓ e + 2 * π * k) = Real.sin (eccAnom ℓ e) := by
    rw [show eccAnom ℓ e + 2 * π * k = eccAnom ℓ e + k * (2 * π) by ring]
    exact Real.sin_add_int_mul_two_pi _ _
  simp only [orbitMapR, eccAnom_add_int_mul_two_pi k ℓ he0 he1, orbitFrame, hc, hs, rot_two_pi_int]

end OrbitIdentities

section Analytic

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

private theorem analyticAt_mk2 {x₀ : E} {f g : E → ℝ} (hf : AnalyticAt ℝ f x₀) (hg : AnalyticAt ℝ g x₀) :
    AnalyticAt ℝ (fun x => (![f x, g x] : Fin 2 → ℝ)) x₀ := by
  refine AnalyticAt.pi fun i => ?_
  fin_cases i
  · simpa using hf
  · simpa using hg

private theorem analyticAt_sqrt_comp {x₀ : E} {f : E → ℝ} (hf : AnalyticAt ℝ f x₀) (h : f x₀ ≠ 0) :
    AnalyticAt ℝ (fun x => √(f x)) x₀ :=
  (hf.contDiffAt.sqrt h).analyticAt

private theorem analyticAt_rot {x₀ : E} {g : E → ℝ} {v : E → Fin 2 → ℝ} (hg : AnalyticAt ℝ g x₀)
    (hv : AnalyticAt ℝ v x₀) : AnalyticAt ℝ (fun x => rot (g x) (v x)) x₀ := by
  have h0 : AnalyticAt ℝ (fun x => v x 0) x₀ := analyticAt_pi_iff.mp hv 0
  have h1 : AnalyticAt ℝ (fun x => v x 1) x₀ := analyticAt_pi_iff.mp hv 1
  have hc : AnalyticAt ℝ (fun x => Real.cos (g x)) x₀ := Real.analyticAt_cos.comp hg
  have hs : AnalyticAt ℝ (fun x => Real.sin (g x)) x₀ := Real.analyticAt_sin.comp hg
  exact analyticAt_mk2 ((hc.mul h0).sub (hs.mul h1)) ((hs.mul h0).add (hc.mul h1))

/-- Analyticity of the orbit map in analytic parameters. -/
theorem analyticAt_orbit_param {x₀ : E} {g L e u : E → ℝ} (hg : AnalyticAt ℝ g x₀)
    (hL : AnalyticAt ℝ L x₀) (he : AnalyticAt ℝ e x₀) (hu : AnalyticAt ℝ u x₀)
    (hL0 : 0 < L x₀) (he0 : 0 ≤ e x₀) (he1 : e x₀ < 1) :
    AnalyticAt ℝ (fun x => (rot (g x) (orbitFrame (L x) (e x) (u x)).1,
      rot (g x) (orbitFrame (L x) (e x) (u x)).2)) x₀ := by
  have hD0 : 0 < 1 - e x₀ * Real.cos (u x₀) := one_sub_mul_cos_pos he0 he1 _
  have hc : AnalyticAt ℝ (fun x => Real.cos (u x)) x₀ := Real.analyticAt_cos.comp hu
  have hs : AnalyticAt ℝ (fun x => Real.sin (u x)) x₀ := Real.analyticAt_sin.comp hu
  have hk : AnalyticAt ℝ (fun x => √(1 - e x ^ 2)) x₀ :=
    analyticAt_sqrt_comp (analyticAt_const.sub (he.pow 2)) (by nlinarith)
  have hLD : AnalyticAt ℝ (fun x => L x * (1 - e x * Real.cos (u x))) x₀ :=
    hL.mul (analyticAt_const.sub (he.mul hc))
  have hLD0 : L x₀ * (1 - e x₀ * Real.cos (u x₀)) ≠ 0 := by positivity
  refine AnalyticAt.prod (analyticAt_rot hg ?_) (analyticAt_rot hg ?_)
  · exact analyticAt_mk2 ((hL.pow 2).mul (hc.sub he)) (((hL.pow 2).mul hk).mul hs)
  · exact analyticAt_mk2 (hs.neg.div hLD hLD0) ((hk.mul hc).div hLD hLD0)

end Analytic

theorem analyticOnNhd_orbitMapR :
    AnalyticOnNhd ℝ (fun x : Fin 4 → ℝ => orbitMapR (x 0) (x 1) (x 2) (x 3))
      {x | 0 < x 2 ∧ 0 ≤ x 3 ∧ x 3 < 1} := by
  intro x hx
  obtain ⟨h2, h3, h3'⟩ := hx
  have proj : ∀ i : Fin 4, AnalyticAt ℝ (fun x : Fin 4 → ℝ => x i) x := fun i =>
    (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 4 => ℝ) i).analyticAt x
  have hu : AnalyticAt ℝ (fun x : Fin 4 → ℝ => eccAnom (x 0) (x 3)) x := by
    have hm : AnalyticAt ℝ (fun x : Fin 4 → ℝ => ((x 0, x 3) : ℝ × ℝ)) x :=
      (proj 0).prod (proj 3)
    have hx' : |(((x 0, x 3) : ℝ × ℝ)).2| < 1 := by
      simp only [abs_lt]; constructor <;> linarith
    have hg := analyticOnNhd_eccAnom ((x 0, x 3) : ℝ × ℝ) hx'
    exact AnalyticAt.comp (g := fun p : ℝ × ℝ => eccAnom p.1 p.2)
      (f := fun x : Fin 4 → ℝ => ((x 0, x 3) : ℝ × ℝ)) hg hm
  exact analyticAt_orbit_param (proj 1) (proj 2) (proj 3) hu h2 h3 h3'

theorem eccOf_mem_Ioo {L G : ℝ} (h : (![L, G] : Fin 2 → ℝ) 1 < (![L, G] : Fin 2 → ℝ) 0)
    (hG : 0 < G) : 0 < eccOf L G ∧ eccOf L G < 1 := by
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one] at h
  have hL : 0 < L := hG.trans h
  have h1 : G ^ 2 / L ^ 2 < 1 := by
    rw [div_lt_one (by positivity)]; nlinarith
  have h2 : 0 < G ^ 2 / L ^ 2 := by positivity
  unfold eccOf
  constructor
  · exact Real.sqrt_pos.mpr (by linarith)
  · rw [Real.sqrt_lt' one_pos]; nlinarith

private theorem eccOf_data {L G : ℝ} (hG : 0 < G) (hGL : G < L) :
    0 < eccOf L G ∧ eccOf L G < 1 ∧ √(1 - eccOf L G ^ 2) = G / L := by
  have hm := eccOf_mem_Ioo (L := L) (G := G) (by simpa using hGL) hG
  refine ⟨hm.1, hm.2, ?_⟩
  have hL : 0 < L := hG.trans hGL
  have h1 : G ^ 2 / L ^ 2 < 1 := by
    rw [div_lt_one (by positivity)]; nlinarith
  have hsq : eccOf L G ^ 2 = 1 - G ^ 2 / L ^ 2 := Real.sq_sqrt (by linarith)
  have : 1 - eccOf L G ^ 2 = (G / L) ^ 2 := by rw [hsq, div_pow]; ring
  rw [this]
  exact Real.sqrt_sq (by positivity)

private theorem delaunay_cross {w : Phase 2} (hw : w ∈ deDom) :
    planeCross (delaunay w).1 (delaunay w).2 = w.2 1 := by
  obtain ⟨hG, hGL⟩ := hw
  have hL : 0 < w.2 0 := hG.trans hGL
  obtain ⟨he0, he1, hk⟩ := eccOf_data hG hGL
  unfold delaunay
  rw [orbitMapR_cross hL he0.le he1, hk]
  field_simp

private theorem delaunay_energy {w : Phase 2} (hw : w ∈ deDom) :
    kE (delaunay w) = -1 / (2 * w.2 0 ^ 2) := by
  obtain ⟨hG, hGL⟩ := hw
  have hL : 0 < w.2 0 := hG.trans hGL
  obtain ⟨he0, he1, -⟩ := eccOf_data hG hGL
  exact orbitMapR_energy hL he0.le he1

theorem delaunay_mem_region {w : Phase 2} (hw : w ∈ deDom) : delaunay w ∈ keplerRegion := by
  have hw' := hw
  obtain ⟨hG, hGL⟩ := hw'
  have hL : 0 < w.2 0 := hG.trans hGL
  obtain ⟨he0, he1, -⟩ := eccOf_data hG hGL
  refine ⟨?_, ?_, ?_, ?_⟩
  · unfold delaunay
    rw [orbitMapR_radius hL he0.le he1]
    have := one_sub_mul_cos_pos he0.le he1 (eccAnom (w.1 0) (eccOf (w.2 0) (w.2 1)))
    positivity
  · rw [delaunay_energy hw]
    have : 0 < 2 * w.2 0 ^ 2 := by positivity
    exact div_neg_of_neg_of_pos (by norm_num) this
  · rw [delaunay_cross hw]; exact hG
  · rw [delaunay_cross hw, delaunay_energy hw]
    have : -1 / (2 * (-1 / (2 * w.2 0 ^ 2))) = w.2 0 ^ 2 := by field_simp
    rw [this]; nlinarith

theorem delaunay_elements {w : Phase 2} (hw : w ∈ deDom) :
    elemL (delaunay w) = w.2 0 ∧ planeCross (delaunay w).1 (delaunay w).2 = w.2 1 ∧
      elemA (delaunay w) = w.2 0 ^ 2 ∧ elemEcc (delaunay w) = eccOf (w.2 0) (w.2 1) := by
  have hw' := hw
  obtain ⟨hG, hGL⟩ := hw'
  have hL : 0 < w.2 0 := hG.trans hGL
  have hE := delaunay_energy hw
  have hC := delaunay_cross hw
  have h2 : -2 * kE (delaunay w) = (w.2 0)⁻¹ ^ 2 := by rw [hE]; field_simp
  refine ⟨?_, hC, ?_, ?_⟩
  · unfold elemL
    rw [h2, Real.sqrt_sq (by positivity)]; field_simp
  · unfold elemA
    rw [h2]; field_simp
  · unfold elemEcc eccOf
    rw [hE, hC]
    congr 1
    field_simp
    ring

theorem orbitMapR_eq_delaunay {ℓ g L G : ℝ} (hw : (![ℓ, g], ![L, G]) ∈ deDom) :
    orbitMapR ℓ g L (eccOf L G) = delaunay (![ℓ, g], ![L, G]) := by
  have _ := hw
  simp [delaunay]

theorem analyticOnNhd_delaunay : AnalyticOnNhd ℝ delaunay deDom := by
  intro w hw
  obtain ⟨hG, hGL⟩ := hw
  have hL : 0 < w.2 0 := hG.trans hGL
  obtain ⟨he0, he1, -⟩ := eccOf_data hG hGL
  have p1 : ∀ i : Fin 2, AnalyticAt ℝ (fun w : Phase 2 => w.1 i) w := fun i =>
    ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) i).comp
      (ContinuousLinearMap.fst ℝ (Fin 2 → ℝ) (Fin 2 → ℝ))).analyticAt w
  have p2 : ∀ i : Fin 2, AnalyticAt ℝ (fun w : Phase 2 => w.2 i) w := fun i =>
    ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) i).comp
      (ContinuousLinearMap.snd ℝ (Fin 2 → ℝ) (Fin 2 → ℝ))).analyticAt w
  have hL2 : w.2 0 ^ 2 ≠ 0 := by positivity
  have hecc : AnalyticAt ℝ (fun w : Phase 2 => eccOf (w.2 0) (w.2 1)) w := by
    unfold eccOf
    refine analyticAt_sqrt_comp (analyticAt_const.sub (((p2 1).pow 2).div ((p2 0).pow 2) hL2)) ?_
    have h1 : w.2 1 ^ 2 / w.2 0 ^ 2 < 1 := by
      rw [div_lt_one (by positivity)]; nlinarith
    have h2 : 0 < w.2 1 ^ 2 / w.2 0 ^ 2 := by positivity
    linarith
  have hu : AnalyticAt ℝ (fun w : Phase 2 => eccAnom (w.1 0) (eccOf (w.2 0) (w.2 1))) w := by
    have hm : AnalyticAt ℝ (fun w : Phase 2 => ((w.1 0, eccOf (w.2 0) (w.2 1)) : ℝ × ℝ)) w :=
      (p1 0).prod hecc
    have hx' : |(((w.1 0, eccOf (w.2 0) (w.2 1)) : ℝ × ℝ)).2| < 1 := by
      simp only [abs_lt]; constructor <;> linarith
    have hg := analyticOnNhd_eccAnom ((w.1 0, eccOf (w.2 0) (w.2 1)) : ℝ × ℝ) hx'
    exact AnalyticAt.comp (g := fun p : ℝ × ℝ => eccAnom p.1 p.2)
      (f := fun w : Phase 2 => ((w.1 0, eccOf (w.2 0) (w.2 1)) : ℝ × ℝ)) hg hm
  exact analyticAt_orbit_param (p1 1) (p2 0) hecc hu hL he0.le he1

theorem delaunay_hamiltonian {w : Phase 2} (hw : w ∈ deDom) :
    kE (delaunay w) - planeCross (delaunay w).1 (delaunay w).2 = -1 / (2 * w.2 0 ^ 2) - w.2 1 := by
  rw [delaunay_energy hw, delaunay_cross hw]

end KAM.Kepler

end
