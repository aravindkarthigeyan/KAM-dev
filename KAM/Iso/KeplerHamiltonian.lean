/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Iso.Defs.BorderedHessian
public import KAM.Frozen.Iso.Defs.KeplerBorder
public import KAM.Iso.Kepler

/-!
# The Kepler-rotation Hamiltonian

Blueprint-I Part 6: `bpI:p6:kep-ham` and `bpI:p6:kep-border`.

* `keplerRotH κ Ω I = -κ/(2 I₁²) - Ω I₂` on `ℂ²` (Lean division: junk at `I₁ = 0`).
* It is holomorphic off `{I₁ = 0}` and real on real points (`keplerRotH_real`).
* For `I₁ > 0` the frequency map is `(κ/I₁³, -Ω)`, its derivative has the single entry
  `-3κ/I₁⁴`, and the bordered Hessian of `keplerRotH κ Ω` is the reindexing of the classical
  matrix `keplerBorder κ Ω I₁` along `finThreeEquivSumUnit`; hence its determinant is
  `3 κ Ω² / I₁⁴`.
-/

@[expose] public noncomputable section

open Set

namespace KAM.Iso

section Part6

/-- `bpI:p6:kep-ham`: `h_{κ,Ω}(I) = -κ/(2 I₁²) - Ω I₂` on `ℂ²` (Lean division: junk at `I₁ = 0`). -/
def keplerRotH (κ Ω : ℝ) (I : Fin 2 → ℂ) : ℂ := -(κ : ℂ) / (2 * I 0 ^ 2) - Ω * I 1

/-- The reindexing `ε : Fin 3 ≃ Fin 2 ⊕ Unit`, `0, 1 ↦ inl 0, inl 1`, `2 ↦ inr`. -/
def finThreeEquivSumUnit : Fin 3 ≃ Fin 2 ⊕ Unit :=
  (finSumFinEquiv (m := 2) (n := 1)).symm.trans
    (Equiv.sumCongr (Equiv.refl _) (Equiv.ofUnique (Fin 1) Unit))

/-- Values of the inverse reindexing. -/
@[simp] theorem finThreeEquivSumUnit_symm_inl_zero :
    finThreeEquivSumUnit.symm (Sum.inl 0) = 0 := by decide

@[simp] theorem finThreeEquivSumUnit_symm_inl_one :
    finThreeEquivSumUnit.symm (Sum.inl 1) = 1 := by decide

@[simp] theorem finThreeEquivSumUnit_symm_inr (u : Unit) :
    finThreeEquivSumUnit.symm (Sum.inr u) = 2 := by
  cases u
  decide

/-- `bpI:p6:kep-ham`: `keplerRotH` is holomorphic off `{I₁ = 0}`. -/
theorem differentiableOn_keplerRotH (κ Ω : ℝ) :
    DifferentiableOn ℂ (keplerRotH κ Ω) {I | I 0 ≠ 0} := by
  intro I hI
  have h0 : I 0 ≠ 0 := hI
  have h2 : (2 : ℂ) * I 0 ^ 2 ≠ 0 := mul_ne_zero two_ne_zero (pow_ne_zero 2 h0)
  refine DifferentiableAt.differentiableWithinAt ?_
  unfold keplerRotH
  have hinv : DifferentiableAt ℂ (fun J : Fin 2 → ℂ => (2 * J 0 ^ 2)⁻¹) I :=
    (((differentiableAt_apply 0 I).pow 2).const_mul 2).inv h2
  have hlin : DifferentiableAt ℂ (fun J : Fin 2 → ℂ => (Ω : ℂ) * J 1) I :=
    (differentiableAt_apply 1 I).const_mul _
  simp only [div_eq_mul_inv]
  exact (hinv.const_mul _).sub hlin

/-- `bpI:p6:kep-ham`: `keplerRotH` is real on real points. -/
theorem keplerRotH_real (κ Ω : ℝ) (J : Fin 2 → ℝ) :
    keplerRotH κ Ω (fun i => (J i : ℂ)) = ((-κ / (2 * J 0 ^ 2) - Ω * J 1 : ℝ) : ℂ) := by
  unfold keplerRotH
  push_cast
  rfl

/-- Auxiliary: the real Kepler profile `x ↦ -κ/(2x²)` has derivative `κ/x³` at `x ≠ 0`. -/
private theorem hasDerivAt_kepler_profile (κ : ℝ) {x : ℝ} (hx : x ≠ 0) :
    HasDerivAt (fun y : ℝ => -κ / (2 * y ^ 2)) (κ / x ^ 3) x := by
  have hd : HasDerivAt (fun y : ℝ => 2 * y ^ 2) (2 * (2 * x)) x := by
    simpa using (hasDerivAt_pow 2 x).const_mul 2
  have h2 : (2 : ℝ) * x ^ 2 ≠ 0 := mul_ne_zero two_ne_zero (pow_ne_zero 2 hx)
  have := (hasDerivAt_const x (-κ)).div hd h2
  convert this using 1
  field_simp
  ring

/-- Auxiliary: the real part of `keplerRotH` on real points, as a real function. -/
private theorem re_keplerRotH_real (κ Ω : ℝ) :
    (fun J : Fin 2 → ℝ => (keplerRotH κ Ω (fun j => (J j : ℂ))).re) =
      fun J => -κ / (2 * J 0 ^ 2) - Ω * J 1 := by
  funext J
  rw [keplerRotH_real, Complex.ofReal_re]

/-- Auxiliary: the Fréchet derivative of the real Kepler-rotation Hamiltonian. -/
private theorem hasFDerivAt_keplerRotH_real (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : I 0 ≠ 0) :
    HasFDerivAt (fun J : Fin 2 → ℝ => -κ / (2 * J 0 ^ 2) - Ω * J 1)
      ((κ / I 0 ^ 3) • ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) 0 -
        Ω • ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) 1) I := by
  have h0 : HasFDerivAt (fun J : Fin 2 → ℝ => -κ / (2 * J 0 ^ 2))
      ((κ / I 0 ^ 3) • ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) 0) I :=
    by
      have hp : HasFDerivAt (fun J : Fin 2 → ℝ => J 0)
          (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) 0) I :=
        hasFDerivAt_apply 0 I
      have h := (hasDerivAt_kepler_profile κ hI).comp_hasFDerivAt I hp
      exact h
  have h1 : HasFDerivAt (fun J : Fin 2 → ℝ => Ω * J 1)
      (Ω • ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) 1) I :=
    (hasFDerivAt_apply 1 I).const_mul Ω
  exact h0.sub h1

/-- `bpI:p6:kep-border`: frequency map, its derivative, the bordered Hessian and its determinant. -/
theorem frequencyMap_keplerRotH (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) :
    frequencyMap (keplerRotH κ Ω) I = ![κ / I 0 ^ 3, -Ω] := by
  funext i
  unfold frequencyMap
  rw [re_keplerRotH_real, (hasFDerivAt_keplerRotH_real κ Ω hI.ne').fderiv]
  fin_cases i <;> simp

/-- Auxiliary: the frequency map of `keplerRotH` is smooth near a point with `0 < I₁`, with the
Fréchet derivative `-3κ/I₁⁴ · (∂₁)` in the first component. -/
private theorem hasFDerivAt_frequencyMap_keplerRotH (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) :
    HasFDerivAt (fun J : Fin 2 → ℝ => (![κ / J 0 ^ 3, -Ω] : Fin 2 → ℝ))
      (ContinuousLinearMap.pi
        (![(-3 * κ / I 0 ^ 4) • ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) 0, 0] :
          Fin 2 → ((Fin 2 → ℝ) →L[ℝ] ℝ))) I := by
  have hp : HasFDerivAt (fun J : Fin 2 → ℝ => J 0)
      (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) 0) I :=
    hasFDerivAt_apply 0 I
  have hg : HasDerivAt (fun y : ℝ => κ / y ^ 3) (-3 * κ / I 0 ^ 4) (I 0) := by
    have hd : HasDerivAt (fun y : ℝ => y ^ 3) (3 * I 0 ^ 2) (I 0) := by
      simpa using hasDerivAt_pow 3 (I 0)
    have h3 : I 0 ^ 3 ≠ 0 := pow_ne_zero 3 hI.ne'
    have := (hasDerivAt_const (I 0) κ).div hd h3
    convert this using 1
    have h0 : I 0 ≠ 0 := hI.ne'
    field_simp
    ring
  have h0 : HasFDerivAt (fun J : Fin 2 → ℝ => κ / J 0 ^ 3)
      ((-3 * κ / I 0 ^ 4) • ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) 0) I := by
    have h := hg.comp_hasFDerivAt I hp
    exact h
  refine (hasFDerivAt_pi (φ := fun (i : Fin 2) (J : Fin 2 → ℝ) =>
    (![κ / J 0 ^ 3, -Ω] : Fin 2 → ℝ) i)
    (φ' := (![(-3 * κ / I 0 ^ 4) •
        ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) 0, 0] :
      Fin 2 → ((Fin 2 → ℝ) →L[ℝ] ℝ))) (x := I)).2 ?_
  intro i
  fin_cases i
  · exact h0
  · exact hasFDerivAt_const _ _

theorem fderiv_frequencyMap_keplerRotH (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) (a b : Fin 2) :
    fderiv ℝ (frequencyMap (keplerRotH κ Ω)) I (Pi.single b 1) a =
      if a = 0 ∧ b = 0 then -3 * κ / I 0 ^ 4 else 0 := by
  have hev : frequencyMap (keplerRotH κ Ω) =ᶠ[nhds I]
      fun J : Fin 2 → ℝ => (![κ / J 0 ^ 3, -Ω] : Fin 2 → ℝ) := by
    have hopen : IsOpen {J : Fin 2 → ℝ | 0 < J 0} :=
      isOpen_lt continuous_const (continuous_apply 0)
    filter_upwards [hopen.mem_nhds hI] with J hJ
    exact frequencyMap_keplerRotH κ Ω hJ
  rw [hev.fderiv_eq, (hasFDerivAt_frequencyMap_keplerRotH κ Ω hI).fderiv]
  fin_cases a <;> fin_cases b <;> simp

theorem borderedHessian_keplerRotH (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) :
    borderedHessian (keplerRotH κ Ω) I =
      Matrix.reindex finThreeEquivSumUnit finThreeEquivSumUnit (keplerBorder κ Ω ⟨I 0, hI⟩) := by
  ext i j
  rw [Matrix.reindex_apply, Matrix.submatrix_apply]
  rcases i with a | u <;> rcases j with b | v
  · simp only [borderedHessian, fderiv_frequencyMap_keplerRotH κ Ω hI]
    fin_cases a <;> fin_cases b <;>
      simp [keplerBorder]
  · fin_cases a <;> simp [borderedHessian, frequencyMap_keplerRotH κ Ω hI, keplerBorder]
  · fin_cases b <;> simp [borderedHessian, frequencyMap_keplerRotH κ Ω hI, keplerBorder]
  · simp [borderedHessian, keplerBorder]

theorem det_borderedHessian_keplerRotH (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) :
    (borderedHessian (keplerRotH κ Ω) I).det = 3 * κ * Ω ^ 2 / I 0 ^ 4 := by
  rw [borderedHessian_keplerRotH κ Ω hI, Matrix.det_reindex_self]
  exact keplerBorder_det κ Ω ⟨I 0, hI⟩

end Part6

end KAM.Iso

end
