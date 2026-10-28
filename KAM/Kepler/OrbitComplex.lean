/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Kepler.Basic
public import KAM.Kepler.Orbit
public import KAM.Kepler.KeplerTube

/-!
# The complex orbit map

The complex orbit map `orbitMapC e₁ (ℓ, g, L, e, k)` (`bpI:p7:orbit-maps-e`) on the domain
`orbitDomC e₁ = {(ℓ, e) ∈ keplerTube e₁, L ≠ 0}`, built from the holomorphic eccentric anomaly
`eccAnomC` (`KAM.Kepler.KeplerTube`) by composition with `cos`, `sin`, polynomials and the
division by `L * (1 - e cos u)`.

* `orbitMapC_differentiableOn`: holomorphic on `orbitDomC e₁` (through `e = 0`);
* `orbitMapC_periodic`: `2π`-periodic in `ℓ` and in `g`;
* `orbitMapC_real`: real at real points `|e| ≤ e₁`, `L ≠ 0`, for arbitrary real `k`;
* `orbitMapC_ofReal`, `orbitDomC_mem_ofReal`: at the principal real points `k = √(1 - e²)` the map
  agrees with the real orbit map `orbitMapR` (complexified by `phaseToC`).
-/

@[expose] public noncomputable section

open Set Metric Real

namespace KAM.Kepler

open KAM KAM.Planetary

/-- The complex orbit map `𝖰_el(ℓ, g, L, e, k)` (`bpI:p7:orbit-maps`), coordinates `x 0 .. x 4`. -/
def orbitMapC (e₁ : ℝ) (x : Fin 5 → ℂ) : (Fin 2 → ℂ) × (Fin 2 → ℂ) :=
  let u := eccAnomC e₁ (x 0, x 3)
  let D := 1 - x 3 * Complex.cos u
  let X := x 2 ^ 2 * (Complex.cos u - x 3)
  let Y := x 2 ^ 2 * x 4 * Complex.sin u
  let PX := -Complex.sin u / (x 2 * D)
  let PY := x 4 * Complex.cos u / (x 2 * D)
  (![Complex.cos (x 1) * X - Complex.sin (x 1) * Y, Complex.sin (x 1) * X + Complex.cos (x 1) * Y],
   ![Complex.cos (x 1) * PX - Complex.sin (x 1) * PY,
     Complex.sin (x 1) * PX + Complex.cos (x 1) * PY])
/-- The domain of `orbitMapC`: the Kepler tube in `(ℓ, e)` and `L ≠ 0`. -/
def orbitDomC (e₁ : ℝ) : Set (Fin 5 → ℂ) := {x | (x 0, x 3) ∈ keplerTube e₁ ∧ x 2 ≠ 0}

namespace OrbitC

/-! ### Holomorphy -/

section Holomorphic

variable {e₁ : ℝ}

/-- On the domain the denominator `1 - e cos u` of the orbit map does not vanish. -/
theorem denom_ne_zero (h0 : 0 < e₁) (h1 : e₁ < 1) {x : Fin 5 → ℂ} (hx : x ∈ orbitDomC e₁) :
    1 - x 3 * Complex.cos (eccAnomC e₁ (x 0, x 3)) ≠ 0 := by
  have hb := ((keplerEq_tube h0 h1).2.2.2 (x 0, x 3) hx.1).2.2.2
  have hθ := (keplerConstants_pos h0 h1).2.2.2.2.2
  intro h
  have h' : 1 - keplerTheta e₁ ≤ 0 := by
    have : ‖(1 : ℂ) - x 3 * Complex.cos (eccAnomC e₁ (x 0, x 3))‖ = 0 := by rw [h, norm_zero]
    exact this ▸ hb
  linarith

/-- The eccentric anomaly is holomorphic in the coordinates `(ℓ, e) = (x 0, x 3)`. -/
theorem differentiableOn_u (h0 : 0 < e₁) (h1 : e₁ < 1) :
    DifferentiableOn ℂ (fun x : Fin 5 → ℂ => eccAnomC e₁ (x 0, x 3)) (orbitDomC e₁) := by
  have hproj : Differentiable ℂ (fun x : Fin 5 → ℂ => (x 0, x 3)) :=
    (differentiable_apply 0).prodMk (differentiable_apply 3)
  exact (keplerEq_tube h0 h1).2.1.comp hproj.differentiableOn (fun x hx => hx.1)

/-- A quotient of holomorphic functions with nowhere vanishing denominator is holomorphic. -/
theorem differentiableOn_div {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {f g : E → ℂ}
    {s : Set E} (hf : DifferentiableOn ℂ f s) (hg : DifferentiableOn ℂ g s)
    (hg0 : ∀ x ∈ s, g x ≠ 0) : DifferentiableOn ℂ (fun x => f x / g x) s := by
  simp only [div_eq_mul_inv]
  exact hf.mul (hg.fun_inv hg0)

/-- A pair `![f, g]` of holomorphic functions is holomorphic. -/
theorem differentiableOn_vec2 {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {f g : E → ℂ}
    {s : Set E} (hf : DifferentiableOn ℂ f s) (hg : DifferentiableOn ℂ g s) :
    DifferentiableOn ℂ (fun x => (![f x, g x] : Fin 2 → ℂ)) s := by
  rw [differentiableOn_pi]
  intro i
  fin_cases i
  · exact hf
  · exact hg

end Holomorphic

end OrbitC

/-- `bpI:p7:orbit-maps-e`: holomorphic on the tube (through `e = 0`), `2π`-periodic in `ℓ` and `g`,
real at real points, agreeing with `orbitMapR`. -/
theorem orbitMapC_differentiableOn {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) :
    DifferentiableOn ℂ (orbitMapC e₁) (orbitDomC e₁) := by
  have hu := OrbitC.differentiableOn_u h0 h1
  have hc := hu.ccos
  have hs := hu.csin
  have hx : ∀ i : Fin 5, DifferentiableOn ℂ (fun x : Fin 5 → ℂ => x i) (orbitDomC e₁) :=
    fun i => (differentiable_apply i).differentiableOn
  have hD : DifferentiableOn ℂ
      (fun x : Fin 5 → ℂ => 1 - x 3 * Complex.cos (eccAnomC e₁ (x 0, x 3))) (orbitDomC e₁) :=
    (differentiableOn_const 1).sub ((hx 3).mul hc)
  have hden : DifferentiableOn ℂ
      (fun x : Fin 5 → ℂ => x 2 * (1 - x 3 * Complex.cos (eccAnomC e₁ (x 0, x 3))))
      (orbitDomC e₁) := (hx 2).mul hD
  have hden0 : ∀ x ∈ orbitDomC e₁,
      x 2 * (1 - x 3 * Complex.cos (eccAnomC e₁ (x 0, x 3))) ≠ 0 :=
    fun x hxm => mul_ne_zero hxm.2 (OrbitC.denom_ne_zero h0 h1 hxm)
  have hX : DifferentiableOn ℂ
      (fun x : Fin 5 → ℂ => x 2 ^ 2 * (Complex.cos (eccAnomC e₁ (x 0, x 3)) - x 3))
      (orbitDomC e₁) := ((hx 2).pow 2).mul (hc.sub (hx 3))
  have hY : DifferentiableOn ℂ
      (fun x : Fin 5 → ℂ => x 2 ^ 2 * x 4 * Complex.sin (eccAnomC e₁ (x 0, x 3)))
      (orbitDomC e₁) := (((hx 2).pow 2).mul (hx 4)).mul hs
  have hPX : DifferentiableOn ℂ
      (fun x : Fin 5 → ℂ => -Complex.sin (eccAnomC e₁ (x 0, x 3)) /
        (x 2 * (1 - x 3 * Complex.cos (eccAnomC e₁ (x 0, x 3))))) (orbitDomC e₁) :=
    OrbitC.differentiableOn_div hs.neg hden hden0
  have hPY : DifferentiableOn ℂ
      (fun x : Fin 5 → ℂ => x 4 * Complex.cos (eccAnomC e₁ (x 0, x 3)) /
        (x 2 * (1 - x 3 * Complex.cos (eccAnomC e₁ (x 0, x 3))))) (orbitDomC e₁) :=
    OrbitC.differentiableOn_div ((hx 4).mul hc) hden hden0
  have hcg : DifferentiableOn ℂ (fun x : Fin 5 → ℂ => Complex.cos (x 1)) (orbitDomC e₁) :=
    (hx 1).ccos
  have hsg : DifferentiableOn ℂ (fun x : Fin 5 → ℂ => Complex.sin (x 1)) (orbitDomC e₁) :=
    (hx 1).csin
  show DifferentiableOn ℂ
    (fun x : Fin 5 → ℂ => ((orbitMapC e₁ x).1, (orbitMapC e₁ x).2)) (orbitDomC e₁)
  refine DifferentiableOn.prodMk ?_ ?_
  · exact OrbitC.differentiableOn_vec2 ((hcg.mul hX).sub (hsg.mul hY))
      ((hsg.mul hX).add (hcg.mul hY))
  · exact OrbitC.differentiableOn_vec2 ((hcg.mul hPX).sub (hsg.mul hPY))
      ((hsg.mul hPX).add (hcg.mul hPY))

/-! ### Periodicity -/

theorem orbitMapC_periodic {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {x : Fin 5 → ℂ}
    (hx : x ∈ orbitDomC e₁) :
    orbitMapC e₁ (Function.update x 0 (x 0 + 2 * π)) = orbitMapC e₁ x ∧
      orbitMapC e₁ (Function.update x 1 (x 1 + 2 * π)) = orbitMapC e₁ x := by
  constructor
  · have hper := (eccAnomC_periodic h0 h1 hx.1).2
    have e1 : Function.update x 0 (x 0 + 2 * π) 1 = x 1 := Function.update_of_ne (by decide) _ _
    have e2 : Function.update x 0 (x 0 + 2 * π) 2 = x 2 := Function.update_of_ne (by decide) _ _
    have e3 : Function.update x 0 (x 0 + 2 * π) 3 = x 3 := Function.update_of_ne (by decide) _ _
    have e4 : Function.update x 0 (x 0 + 2 * π) 4 = x 4 := Function.update_of_ne (by decide) _ _
    simp only [orbitMapC, Function.update_self, e1, e2, e3, e4, hper, Complex.cos_add_two_pi,
      Complex.sin_add_two_pi]
  · have e0 : Function.update x 1 (x 1 + 2 * π) 0 = x 0 := Function.update_of_ne (by decide) _ _
    have e2 : Function.update x 1 (x 1 + 2 * π) 2 = x 2 := Function.update_of_ne (by decide) _ _
    have e3 : Function.update x 1 (x 1 + 2 * π) 3 = x 3 := Function.update_of_ne (by decide) _ _
    have e4 : Function.update x 1 (x 1 + 2 * π) 4 = x 4 := Function.update_of_ne (by decide) _ _
    simp only [orbitMapC, Function.update_self, e0, e2, e3, e4, Complex.cos_add_two_pi,
      Complex.sin_add_two_pi]

/-! ### Real points -/

/-- The real orbit map with the semi-axis factor `k` free (the principal value is `√(1 - e²)`). -/
private def orbitMapK (ℓ g L e k : ℝ) : Phase 2 :=
  (rot g ![L ^ 2 * (Real.cos (eccAnom ℓ e) - e), L ^ 2 * k * Real.sin (eccAnom ℓ e)],
   rot g ![-Real.sin (eccAnom ℓ e) / (L * (1 - e * Real.cos (eccAnom ℓ e))),
     k * Real.cos (eccAnom ℓ e) / (L * (1 - e * Real.cos (eccAnom ℓ e)))])

private theorem orbitMapK_sqrt (ℓ g L e : ℝ) : orbitMapK ℓ g L e √(1 - e ^ 2) = orbitMapR ℓ g L e :=
  rfl

/-- At real points of the domain the complex orbit map is the complexification of `orbitMapK`. -/
private theorem orbitMapC_cast {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {x : Fin 5 → ℝ}
    (he : |x 3| ≤ e₁) :
    orbitMapC e₁ (fun j => (x j : ℂ)) =
      phaseToC (orbitMapK (x 0) (x 1) (x 2) (x 3) (x 4)) := by
  have hu : eccAnomC e₁ (((x 0 : ℝ) : ℂ), ((x 3 : ℝ) : ℂ)) = ((eccAnom (x 0) (x 3) : ℝ) : ℂ) :=
    (keplerTube_real_points h0 h1 he).2
  simp only [orbitMapC, hu]
  refine Prod.ext ?_ ?_ <;> funext i <;> fin_cases i <;>
    simp [phaseToC, orbitMapK, rot]

/-- C6: reality for arbitrary real `k` and nonzero real `L` (not only the principal
`k = √(1-e²)`). -/
theorem orbitMapC_real {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {x : Fin 5 → ℝ} (hL : x 2 ≠ 0)
    (he : |x 3| ≤ e₁) :
    (∀ i, ((orbitMapC e₁ (fun j => (x j : ℂ))).1 i).im = 0) ∧
    (∀ i, ((orbitMapC e₁ (fun j => (x j : ℂ))).2 i).im = 0) := by
  have _ := hL
  rw [orbitMapC_cast h0 h1 he]
  exact ⟨fun i => by simp [phaseToC], fun i => by simp [phaseToC]⟩

theorem orbitMapC_ofReal {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {ℓ g L e : ℝ} (hL : 0 < L)
    (he : |e| ≤ e₁) :
    orbitMapC e₁ ![(ℓ : ℂ), (g : ℂ), (L : ℂ), (e : ℂ), ((√(1 - e ^ 2) : ℝ) : ℂ)] =
      phaseToC (orbitMapR ℓ g L e) := by
  have _ := hL
  have hc := orbitMapC_cast h0 h1 (x := ![ℓ, g, L, e, √(1 - e ^ 2)]) (by simpa using he)
  have hfun : (fun j => ((![ℓ, g, L, e, √(1 - e ^ 2)] j : ℝ) : ℂ)) =
      ![(ℓ : ℂ), (g : ℂ), (L : ℂ), (e : ℂ), ((√(1 - e ^ 2) : ℝ) : ℂ)] := by
    funext j
    fin_cases j <;> rfl
  rw [hfun] at hc
  rw [hc]
  exact congrArg phaseToC (orbitMapK_sqrt ℓ g L e)

theorem orbitDomC_mem_ofReal {e₁ : ℝ} (h0 : 0 < e₁) (h1 : e₁ < 1) {ℓ g L e : ℝ} (hL : 0 < L)
    (he : |e| ≤ e₁) :
    (![(ℓ : ℂ), (g : ℂ), (L : ℂ), (e : ℂ), ((√(1 - e ^ 2) : ℝ) : ℂ)] : Fin 5 → ℂ) ∈
      orbitDomC e₁ := by
  refine ⟨(keplerTube_real_points h0 h1 he).1, ?_⟩
  show (L : ℂ) ≠ 0
  exact_mod_cast hL.ne'

end KAM.Kepler

end
