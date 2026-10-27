/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Defs.IsRealOnReals
public import KAM.Strip.Averages

/-!
# Angle displacement and phase average

Blueprint Part 4, `bp:p4:phase-average`. For a torus `K : ℂⁿ → ℂⁿ × ℂⁿ` (in the coordinates
`(θ, I)`):

* `KAM.Head.angleDisplacement K θ = K₁(θ) - θ` is the angle displacement `u_K`;
* `KAM.Head.phaseAverage K = ∫_{[0,1]ⁿ} Re u_K(ιx) dx ∈ ℝⁿ` is the phase average `ph(K)`, taken
  coordinatewise like the frozen `KAM.torsionAverage` (the unit-cube average is
  `KAM.torusAverage`);
* `KAM.Head.IsNormalized K` says `ph(K) = 0`;
* `KAM.Head.phaseShift K a θ = K(θ + ι a)` is `K^{[a]}`.

The definition is accompanied by the facts that the blueprint states with it, under the standing
hypotheses that `K` is holomorphic on a strip `T_ρ` (`ρ > 0`) and real on reals:
`KAM.Head.continuous_angleDisplacement_ofReal` (`u_K ∘ ι` is continuous, so the average is a genuine
integral), `KAM.Head.angleDisplacement_ofReal_im` (`u_K(ιx)` is real) and
`KAM.Head.ofReal_phaseAverage_eq_integral` (`ι ph(K) = ∫ u_K(ιx) dx`).
-/

@[expose] public noncomputable section

open MeasureTheory

namespace KAM.Head

variable {n : ℕ}

/-- Blueprint `bp:p4:phase-average`: the angle displacement `u_K(θ) = K₁(θ) - θ`. -/
def angleDisplacement (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (θ : Fin n → ℂ) :
    Fin n → ℂ :=
  (K θ).1 - θ

/-- Blueprint `bp:p4:phase-average`: the phase average `ph(K) = ∫_{[0,1]ⁿ} Re u_K(ιx) dx ∈ ℝⁿ`,
coordinatewise. -/
def phaseAverage (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Fin n → ℝ :=
  fun i => torusAverage fun x : Fin n → ℝ => (angleDisplacement K (fun l => (x l : ℂ)) i).re

/-- Blueprint `bp:p4:phase-average`: a torus is *normalized* if its phase average vanishes. -/
def IsNormalized (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Prop :=
  phaseAverage K = 0

/-- Blueprint `bp:p4:phase-average`: the phase shift `K^{[a]}(θ) = K(θ + ι a)`, `a ∈ ℝⁿ`. -/
def phaseShift (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (a : Fin n → ℝ)
    (θ : Fin n → ℂ) : (Fin n → ℂ) × (Fin n → ℂ) :=
  K (θ + fun i => (a i : ℂ))

@[simp] theorem angleDisplacement_apply (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (θ : Fin n → ℂ) (i : Fin n) : angleDisplacement K θ i = (K θ).1 i - θ i := rfl

@[simp] theorem phaseShift_apply (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (a : Fin n → ℝ)
    (θ : Fin n → ℂ) : phaseShift K a θ = K (θ + fun i => (a i : ℂ)) := rfl

@[simp] theorem phaseShift_zero (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) :
    phaseShift K 0 = K := by
  funext θ
  simp only [phaseShift, Pi.zero_apply, Complex.ofReal_zero]
  exact congrArg K (add_zero θ)

/-- The angle displacement is continuous along the real torus when `K` is holomorphic on a strip
of positive width: the phase average is the integral of a continuous function. -/
theorem continuous_angleDisplacement_ofReal {ρ : ℝ} (hρ : 0 < ρ)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) :
    Continuous fun x : Fin n → ℝ => angleDisplacement K (fun l => (x l : ℂ)) := by
  have hι : Continuous fun x : Fin n → ℝ => (fun l => (x l : ℂ)) :=
    continuous_pi fun l => Complex.continuous_ofReal.comp (continuous_apply l)
  have hKι : Continuous fun x : Fin n → ℝ => K (fun l => (x l : ℂ)) :=
    hK.continuousOn.comp_continuous hι fun x => ofReal_mem_complexStrip hρ x
  exact hKι.fst.sub hι

/-- If `K` is real on reals, then `u_K(ιx)` is real. -/
theorem angleDisplacement_ofReal_im {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : IsRealOnReals K) (x : Fin n → ℝ) (i : Fin n) :
    (angleDisplacement K (fun l => (x l : ℂ)) i).im = 0 := by
  obtain ⟨z, hz⟩ := hK x
  simp [angleDisplacement, hz]

/-- `ι ph(K) = ∫_{[0,1]ⁿ} u_K(ιx) dx`, coordinatewise: for `K` holomorphic on `T_ρ` and real on
reals, the phase average is the (real) average of the angle displacement. -/
theorem ofReal_phaseAverage_eq_integral {ρ : ℝ} (hρ : 0 < ρ)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (hreal : IsRealOnReals K) (i : Fin n) :
    ((phaseAverage K i : ℝ) : ℂ) =
      torusAverage fun x : Fin n → ℝ => angleDisplacement K (fun l => (x l : ℂ)) i := by
  have hc : Continuous fun x : Fin n → ℝ => angleDisplacement K (fun l => (x l : ℂ)) i :=
    (continuous_apply i).comp (continuous_angleDisplacement_ofReal hρ hK)
  have hint := integrableOn_unitCube_of_continuous hc
  have hre : phaseAverage K i = (torusAverage fun x : Fin n → ℝ =>
      angleDisplacement K (fun l => (x l : ℂ)) i).re := by
    unfold phaseAverage torusAverage
    exact integral_re hint
  have him : (torusAverage fun x : Fin n → ℝ =>
      angleDisplacement K (fun l => (x l : ℂ)) i).im = 0 := by
    unfold torusAverage
    have h : (∫ x in Set.pi Set.univ (fun _ : Fin n => Set.Icc (0 : ℝ) 1),
        angleDisplacement K (fun l => (x l : ℂ)) i).im =
        ∫ x in Set.pi Set.univ (fun _ : Fin n => Set.Icc (0 : ℝ) 1),
        (angleDisplacement K (fun l => (x l : ℂ)) i).im := (integral_im hint).symm
    rw [h]
    simp only [angleDisplacement_ofReal_im hreal, integral_zero]
  rw [hre]
  exact Complex.ext (Complex.ofReal_re _) (by rw [Complex.ofReal_im, him])

/-- Vector form of `KAM.Head.ofReal_phaseAverage_eq_integral`: `ι ph(K) = ∫_{[0,1]ⁿ} u_K(ιx) dx`
as an integral of a vector in `ℂⁿ`. -/
theorem ofReal_phaseAverage_eq_integral_vec {ρ : ℝ} (hρ : 0 < ρ)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (hreal : IsRealOnReals K) :
    (fun i => ((phaseAverage K i : ℝ) : ℂ)) =
      torusAverage fun x : Fin n → ℝ => angleDisplacement K (fun l => (x l : ℂ)) := by
  have hint := integrableOn_unitCube_of_continuous (continuous_angleDisplacement_ofReal hρ hK)
  funext i
  rw [ofReal_phaseAverage_eq_integral hρ hK hreal i]
  unfold torusAverage
  exact (ContinuousLinearMap.proj (R := ℂ) (φ := fun _ : Fin n => ℂ) i).integral_comp_comm hint

end KAM.Head

end
