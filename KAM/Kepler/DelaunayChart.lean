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
public import KAM.Kepler.Orbit
public import KAM.Kepler.DelaunayJacobian
public import KAM.Kepler.DelaunaySymplectic

/-!
# The Delaunay chart

`bpI:p7:chart` (KEP-7): the Delaunay map `delaunay` is `2π`-periodic in the angles, injective
modulo the lattice `(2πℤ)² × {0}` on `deDom`, onto the Kepler region `keplerRegion`, and a local
analytic diffeomorphism at every point of `deDom` (the quotient diffeomorphism of the blueprint,
stated without a quotient type).

Proof plan.

* Periodicity is `orbitMapR_periodic`.
* Injectivity modulo the lattice: the elements `L, G` are recovered from `delaunay_elements`; then
  `r = L² (1 - e cos u)` and `q · p = L e sin u` (`e > 0`) recover `cos u` and `sin u`, hence
  `u` modulo `2π`, hence `ℓ = u - e sin u` modulo `2π`; finally the rotation angle of a nonzero
  vector is unique modulo `2π` (`rot_eq_self_iff`).
* Surjectivity (`stepI:p7:ch-surj1..3`): the elements of a point of `keplerRegion`, the anomaly
  `u` with `(cos u, sin u) = (c, s)`, the angle `g` (`exists_rot_eq`), and the momentum by
  `eq_of_planeDot_planeCross_eq`.
* Local diffeomorphism: `ContDiffAt.toOpenPartialHomeomorph` at `ω` restricted to `deDom`, and
  `OpenPartialHomeomorph.contDiffAt_symm` at every point of the target.
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff

namespace KAM.Kepler

open KAM KAM.Planetary

section Periodic

/-- `bpI:p7:chart`: periodic, injective modulo `(2πℤ)² × {0}`, surjective onto `𝒞`, local analytic
diffeomorphism (the quotient diffeomorphism of the blueprint, stated without a quotient type). -/
theorem delaunay_periodic {w : Phase 2} (hw : w ∈ deDom) (k k' : ℤ) :
    delaunay ((w.1 + ![2 * π * k, 2 * π * k'], w.2)) = delaunay w := by
  obtain ⟨hG, hGL⟩ := hw
  have hL : 0 < w.2 0 := hG.trans hGL
  obtain ⟨he0, he1, -⟩ := eccOf_data hG hGL
  unfold delaunay
  simp only [Pi.add_apply, Matrix.cons_val_zero, Matrix.cons_val_one]
  exact orbitMapR_periodic k k' hL he0.le he1

end Periodic

section Injective

private theorem pSq (v : Fin 2 → ℝ) : planeSq v = v 0 ^ 2 + v 1 ^ 2 := by
  simp [planeSq, Fin.sum_univ_two]

/-- A rotation fixing a nonzero vector is a rotation by a multiple of `2π`. -/
private theorem rot_eq_self_iff {a : ℝ} {v : Fin 2 → ℝ} (hv : v ≠ 0) (h : rot a v = v) :
    ∃ n : ℤ, a = 2 * π * n := by
  have h0 : Real.cos a * v 0 - Real.sin a * v 1 = v 0 := by
    simpa [rot] using congrFun h 0
  have h1 : Real.sin a * v 0 + Real.cos a * v 1 = v 1 := by
    simpa [rot] using congrFun h 1
  have hpos : 0 < v 0 ^ 2 + v 1 ^ 2 := by
    rw [← pSq, ← planeLength_sq]
    have := planeLength_pos_iff.mpr hv
    positivity
  have hc : Real.cos a = 1 := by
    have : (Real.cos a - 1) * (v 0 ^ 2 + v 1 ^ 2) = 0 := by
      linear_combination v 0 * h0 + v 1 * h1
    have := (mul_eq_zero.mp this).resolve_right hpos.ne'
    linarith
  obtain ⟨n, hn⟩ := (Real.cos_eq_one_iff a).mp hc
  exact ⟨n, by rw [← hn]; ring⟩

/-- Equal orbit maps with equal `(L, e)` (`0 < e < 1`) differ by a lattice vector in `(ℓ, g)`. -/
private theorem orbitMapR_eq_imp {ℓ ℓ' g g' L e : ℝ} (hL : 0 < L) (he0 : 0 < e) (he1 : e < 1)
    (h : orbitMapR ℓ g L e = orbitMapR ℓ' g' L e) :
    ∃ k k' : ℤ, ℓ' = ℓ + 2 * π * k ∧ g' = g + 2 * π * k' := by
  have he : |e| < 1 := by rw [abs_lt]; constructor <;> linarith
  set u := eccAnom ℓ e with hu
  set u' := eccAnom ℓ' e with hu'
  have hrad := orbitMapR_radius (ℓ := ℓ) (g := g) hL he0.le he1
  have hrad' := orbitMapR_radius (ℓ := ℓ') (g := g') hL he0.le he1
  have hdot := orbitMapR_dot (ℓ := ℓ) (g := g) hL he0.le he1
  have hdot' := orbitMapR_dot (ℓ := ℓ') (g := g') hL he0.le he1
  rw [h] at hrad hdot
  have hc : Real.cos u' = Real.cos u := by
    have h1 : L ^ 2 * (1 - e * Real.cos u) = L ^ 2 * (1 - e * Real.cos u') := by
      rw [← hrad, ← hrad']
    have h2 : e * Real.cos u = e * Real.cos u' := by
      have := mul_left_cancel₀ (pow_ne_zero 2 hL.ne') h1
      linarith
    exact (mul_left_cancel₀ he0.ne' h2).symm
  have hs : Real.sin u' = Real.sin u := by
    have h1 : L * e * Real.sin u = L * e * Real.sin u' := by rw [← hdot, ← hdot']
    exact (mul_left_cancel₀ (mul_ne_zero hL.ne' he0.ne') h1).symm
  obtain ⟨k, hk⟩ := (Real.cos_eq_one_iff (u' - u)).mp (by
    rw [Real.cos_sub, hc, hs]; nlinarith [Real.sin_sq_add_cos_sq u])
  have hℓ : ℓ' = ℓ + 2 * π * k := by
    have e1 := eccAnom_eq ℓ he
    have e2 := eccAnom_eq ℓ' he
    rw [← hu] at e1
    rw [← hu'] at e2
    have : u' = u + 2 * π * k := by linarith
    rw [← e2, ← e1, hs, this]; ring
  have hF : orbitFrame L e u' = orbitFrame L e u := by simp only [orbitFrame, hc, hs]
  have hpos : 0 < planeLength (orbitFrame L e u).1 := by
    have h1 := orbitMapR_radius (ℓ := ℓ) (g := g) hL he0.le he1
    have h2 : planeLength (orbitMapR ℓ g L e).1 = planeLength (orbitFrame L e u).1 := by
      rw [orbitMapR, planeLength_rot]
    rw [← h2, h1]
    have : e * Real.cos u < 1 := by
      have := Real.cos_le_one u
      nlinarith
    have : 0 < 1 - e * Real.cos u := by linarith
    positivity
  have hne : (orbitFrame L e u).1 ≠ 0 := planeLength_pos_iff.mp hpos
  have hpos1 := congrArg Prod.fst h
  simp only [orbitMapR, ← hu, ← hu', hF] at hpos1
  have hrot : rot (g - g') (orbitFrame L e u).1 = (orbitFrame L e u).1 := by
    have e1 : rot (-g') (rot g (orbitFrame L e u).1) = rot (g - g') (orbitFrame L e u).1 := by
      rw [rot_rot]; congr 1; ring
    have e2 : rot (-g') (rot g' (orbitFrame L e u).1) = (orbitFrame L e u).1 := by
      rw [rot_rot, neg_add_cancel]
      ext i; fin_cases i <;> simp [rot]
    rw [← e1, hpos1, e2]
  obtain ⟨n, hn⟩ := rot_eq_self_iff hne hrot
  refine ⟨k, -n, hℓ, ?_⟩
  push_cast
  linarith

/-- The elements `(L, G)` are determined by the point. -/
private theorem delaunay_snd_eq {w w' : Phase 2} (hw : w ∈ deDom) (hw' : w' ∈ deDom)
    (h : delaunay w = delaunay w') : w.2 = w'.2 := by
  have e1 := delaunay_elements hw
  have e2 := delaunay_elements hw'
  rw [h] at e1
  ext i; fin_cases i
  · exact e1.1.symm.trans e2.1
  · exact e1.2.1.symm.trans e2.2.1

theorem delaunay_eq_iff {w w' : Phase 2} (hw : w ∈ deDom) (hw' : w' ∈ deDom) :
    delaunay w = delaunay w' ↔
      ∃ k k' : ℤ, w'.1 = w.1 + ![2 * π * k, 2 * π * k'] ∧ w'.2 = w.2 := by
  constructor
  · intro h
    have h2 := delaunay_snd_eq hw hw' h
    obtain ⟨hG, hGL⟩ := hw
    have hL : 0 < w.2 0 := hG.trans hGL
    obtain ⟨he0, he1, -⟩ := eccOf_data hG hGL
    have hL' : w'.2 0 = w.2 0 := by rw [← h2]
    have hG' : w'.2 1 = w.2 1 := by rw [← h2]
    unfold delaunay at h
    rw [hL', hG'] at h
    obtain ⟨k, k', hk, hk'⟩ := orbitMapR_eq_imp hL he0 he1 h
    refine ⟨k, k', ?_, h2.symm⟩
    ext i; fin_cases i
    · simpa using hk
    · simpa using hk'
  · rintro ⟨k, k', h1, h2⟩
    have : w' = (w.1 + ![2 * π * k, 2 * π * k'], w.2) := Prod.ext h1 h2
    rw [this]
    exact (delaunay_periodic hw k k').symm

end Injective

end KAM.Kepler

end
