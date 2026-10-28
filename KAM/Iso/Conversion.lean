/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Frozen.Defs.SymplecticForm
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Iso.Defs.BorderedHessian
public import KAM.Frozen.Iso.Defs.KeplerBorder
public import KAM.Frozen.Planetary.Defs.Phase
public import KAM.Kepler.Basic
public import KAM.Iso.KeplerHamiltonian

/-!
# The period-one conversion

Blueprint-I Part 6: `bpI:p6:conversion-map`, `bpI:p6:conversion` (a)-(d) and `bpI:p6:nondeg`.

* `periodOneMap` is the linear isomorphism `𝖲(θ, I) = (2πθ, I/(2π))` of `ℝⁿ × ℝⁿ`
  (`periodOneMapC` is the same formula on `ℂⁿ × ℂⁿ`); `periodOneCLM`, `periodOneInvCLM` are its
  continuous linear presentations.
* (a) `periodOneMap_symplectic` (conformal factor `1` for the frozen `symplecticForm`),
  `periodOneMap_hamiltonianVectorField` and the curve statement `periodOneMap_hasDerivAt_iff`.
* (b) `keplerRotH_comp_div`: `h_{κ,Ω}(I/(2π)) = h_{κ',Ω'}(I)` for every `I` (Lean totality),
  with `κ' = κ (2π)²`, `Ω' = Ω/(2π)`.
* (c), (d) the frequency map and the bordered Hessian of the converted Hamiltonian.
* `nondeg_period_one`: nondegeneracy of `h_{(2π)², 1/(2π)}` on the complex neighbourhood
  `actionNbhd B r₀` of an action set `B` with `I₁ ≥ 2 r₀`.
-/

@[expose] public noncomputable section

open Set Real

namespace KAM.Iso

open KAM KAM.Kepler KAM.Planetary

section Part6

/-- `bpI:p6:conversion-map`: `𝖲(θ, I) = (2πθ, I/(2π))`, on real and complex phase space. -/
def periodOneMap {n : ℕ} (z : Phase n) : Phase n := ((2 * π) • z.1, (2 * π)⁻¹ • z.2)
def periodOneMapC {n : ℕ} (z : (Fin n → ℂ) × (Fin n → ℂ)) : (Fin n → ℂ) × (Fin n → ℂ) :=
  (((2 * π : ℝ) : ℂ) • z.1, (((2 * π)⁻¹ : ℝ) : ℂ) • z.2)

/-- `periodOneMap` as a continuous linear map. -/
def periodOneCLM (n : ℕ) : Phase n →L[ℝ] Phase n :=
  ((2 * π) • ContinuousLinearMap.fst ℝ (Fin n → ℝ) (Fin n → ℝ)).prod
    ((2 * π)⁻¹ • ContinuousLinearMap.snd ℝ (Fin n → ℝ) (Fin n → ℝ))

/-- The inverse `(θ, I) ↦ (θ/(2π), 2π I)` of `periodOneMap`, as a continuous linear map. -/
def periodOneInvCLM (n : ℕ) : Phase n →L[ℝ] Phase n :=
  ((2 * π)⁻¹ • ContinuousLinearMap.fst ℝ (Fin n → ℝ) (Fin n → ℝ)).prod
    ((2 * π) • ContinuousLinearMap.snd ℝ (Fin n → ℝ) (Fin n → ℝ))

theorem periodOneMap_eq_clm (n : ℕ) : (periodOneMap : Phase n → Phase n) = periodOneCLM n := rfl

theorem periodOneInvCLM_periodOneMap {n : ℕ} (z : Phase n) :
    periodOneInvCLM n (periodOneMap z) = z := by
  have hπ : π ≠ 0 := Real.pi_ne_zero
  ext i
  · simp [periodOneInvCLM, periodOneMap]
    field_simp
  · simp [periodOneInvCLM, periodOneMap]
    field_simp

/-- The complexification of a real phase point intertwines `periodOneMap` and `periodOneMapC`. -/
theorem periodOneMapC_phaseToC {n : ℕ} (z : Phase n) :
    periodOneMapC (phaseToC z) = phaseToC (periodOneMap z) := by
  ext i <;> simp [periodOneMapC, phaseToC, periodOneMap]

/-- `bpI:p6:conversion` (a). -/
theorem periodOneMap_symplectic (n : ℕ) : IsSymplecticOn 1 (periodOneMap (n := n)) univ := by
  have h : (2 * π : ℝ) ≠ 0 := by positivity
  intro z _ u v
  rw [periodOneMap_eq_clm, ContinuousLinearMap.fderiv, one_mul]
  simp only [symplecticForm, periodOneCLM, ContinuousLinearMap.prod_apply,
    smul_apply, ContinuousLinearMap.coe_fst', ContinuousLinearMap.coe_snd',
    Pi.smul_apply, smul_eq_mul]
  refine Finset.sum_congr rfl fun i _ => ?_
  field_simp

theorem periodOneMap_hamiltonianVectorField {n : ℕ} {H : Phase n → ℝ} {z : Phase n}
    (hH : DifferentiableAt ℝ H (periodOneMap z)) :
    periodOneMap (hamiltonianVectorField (H ∘ periodOneMap) z) =
      hamiltonianVectorField H (periodOneMap z) := by
  have h : (2 * π : ℝ) ≠ 0 := by positivity
  have hd : fderiv ℝ (H ∘ periodOneMap) z =
      (fderiv ℝ H (periodOneMap z)).comp (periodOneCLM n) := by
    rw [periodOneMap_eq_clm] at hH ⊢
    have := fderiv_comp z hH (periodOneCLM n).differentiableAt
    rwa [ContinuousLinearMap.fderiv] at this
  have hθ : ∀ i : Fin n, periodOneCLM n (Pi.single i 1, 0) =
      (2 * π) • ((Pi.single i 1, 0) : Phase n) := by
    intro i
    ext j <;> simp [periodOneCLM]
  have hI : ∀ i : Fin n, periodOneCLM n (0, Pi.single i 1) =
      (2 * π)⁻¹ • ((0, Pi.single i 1) : Phase n) := by
    intro i
    ext j <;> simp [periodOneCLM]
  ext i
  · simp only [periodOneMap, hamiltonianVectorField, hd, ContinuousLinearMap.comp_apply, hI,
      map_smul, smul_eq_mul, Pi.smul_apply]
    field_simp
  · simp only [periodOneMap, hamiltonianVectorField, hd, ContinuousLinearMap.comp_apply, hθ,
      map_smul, smul_eq_mul, Pi.smul_apply]
    field_simp

theorem periodOneMap_hasDerivAt_iff {n : ℕ} {H : Phase n → ℝ} {w : ℝ → Phase n} {t : ℝ}
    (hH : DifferentiableAt ℝ H (periodOneMap (w t))) :
    HasDerivAt w (hamiltonianVectorField (H ∘ periodOneMap) (w t)) t ↔
      HasDerivAt (fun s => periodOneMap (w s))
        (hamiltonianVectorField H (periodOneMap (w t))) t := by
  rw [← periodOneMap_hamiltonianVectorField hH]
  constructor
  · intro hw
    exact (periodOneCLM n).hasFDerivAt.comp_hasDerivAt t hw
  · intro hw
    have := (periodOneInvCLM n).hasFDerivAt.comp_hasDerivAt t hw
    simpa [Function.comp_def, periodOneInvCLM_periodOneMap] using this

/-- `bpI:p6:conversion` (b): holds for every `I` by Lean totality (both sides vanish together at
`I₀ = 0`). -/
theorem keplerRotH_comp_div (κ Ω : ℝ) (I : Fin 2 → ℂ) :
    keplerRotH κ Ω (fun i => I i / ((2 * π : ℝ) : ℂ)) =
      keplerRotH (κ * (2 * π) ^ 2) (Ω / (2 * π)) I := by
  have h : ((2 * π : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (by positivity : (2 * π : ℝ) ≠ 0)
  unfold keplerRotH
  push_cast at h ⊢
  by_cases h0 : I 0 = 0
  · simp only [h0]
    field_simp
  · field_simp

/-- (c). -/
theorem frequencyMap_comp_div (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) :
    frequencyMap (fun J => keplerRotH κ Ω (fun i => J i / ((2 * π : ℝ) : ℂ))) I =
        ![κ * (2 * π) ^ 2 / I 0 ^ 3, -(Ω / (2 * π))] ∧
      frequencyMap (fun J => keplerRotH κ Ω (fun i => J i / ((2 * π : ℝ) : ℂ))) I =
        (2 * π)⁻¹ • frequencyMap (keplerRotH κ Ω) (fun i => I i / (2 * π)) := by
  have hf : (fun J => keplerRotH κ Ω (fun i => J i / ((2 * π : ℝ) : ℂ))) =
      keplerRotH (κ * (2 * π) ^ 2) (Ω / (2 * π)) := funext (keplerRotH_comp_div κ Ω)
  have h : (2 * π : ℝ) ≠ 0 := by positivity
  have hI' : 0 < (fun i => I i / (2 * π)) 0 := by
    have := Real.pi_pos
    simp only
    positivity
  rw [hf, frequencyMap_keplerRotH _ _ hI, frequencyMap_keplerRotH _ _ hI']
  refine ⟨rfl, ?_⟩
  have hI0 : I 0 ≠ 0 := hI.ne'
  ext i
  fin_cases i
  · simp
    field_simp
  · simp
    field_simp

/-- (d). -/
theorem keplerBorder_conversion (κ Ω : ℝ) (L : {L : ℝ // 0 < L}) :
    keplerBorder (κ * (2 * π) ^ 2) (Ω / (2 * π)) ⟨2 * π * L.1, by have := L.2; positivity⟩ =
      Matrix.diagonal ![(2 * π)⁻¹, (2 * π)⁻¹, 1] * keplerBorder κ Ω L *
        Matrix.diagonal ![(2 * π)⁻¹, (2 * π)⁻¹, 1] := by
  have hL : L.1 ≠ 0 := L.2.ne'
  have h : (2 * π : ℝ) ≠ 0 := by positivity
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [keplerBorder, Matrix.mul_apply, Matrix.diagonal_apply] <;>
    field_simp

theorem borderedHessian_conversion (κ Ω : ℝ) {I : Fin 2 → ℝ} (hI : 0 < I 0) :
    borderedHessian (fun J => keplerRotH κ Ω (fun i => J i / ((2 * π : ℝ) : ℂ))) I =
      Matrix.reindex finThreeEquivSumUnit finThreeEquivSumUnit
        (keplerBorder (κ * (2 * π) ^ 2) (Ω / (2 * π)) ⟨I 0, hI⟩) ∧
    (borderedHessian (fun J => keplerRotH κ Ω (fun i => J i / ((2 * π : ℝ) : ℂ))) I).det =
      3 * κ * Ω ^ 2 / I 0 ^ 4 := by
  have hf : (fun J => keplerRotH κ Ω (fun i => J i / ((2 * π : ℝ) : ℂ))) =
      keplerRotH (κ * (2 * π) ^ 2) (Ω / (2 * π)) := funext (keplerRotH_comp_div κ Ω)
  have h : (2 * π : ℝ) ≠ 0 := by positivity
  rw [hf]
  refine ⟨borderedHessian_keplerRotH _ _ hI, ?_⟩
  rw [det_borderedHessian_keplerRotH _ _ hI]
  field_simp

/-- `bpI:p6:nondeg`: `h̃ = h_{(2π)², 1/(2π)}`; `B_{r₀}` is `actionNbhd B r₀`. -/
theorem nondeg_period_one (B : Set (Fin 2 → ℝ)) {r₀ : ℝ} (hr₀ : 0 < r₀)
    (hB : ∀ J ∈ B, 0 < J 0 ∧ 2 * r₀ ≤ J 0) :
    DifferentiableOn ℂ (keplerRotH ((2 * π) ^ 2) (1 / (2 * π))) (actionNbhd B r₀) ∧
    (∀ I ∈ actionNbhd B r₀, 0 < (I 0).re) ∧
    (∀ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
      0 < I 0 ∧ 0 < (borderedHessian (keplerRotH ((2 * π) ^ 2) (1 / (2 * π))) I).det) := by
  have hre : ∀ I ∈ actionNbhd B r₀, 0 < (I 0).re := by
    rintro I ⟨J, hJ, hIJ⟩
    have h1 : |(I 0 - (J 0 : ℂ)).re| ≤ ‖I - fun i => (J i : ℂ)‖ :=
      (Complex.abs_re_le_norm _).trans (norm_le_pi_norm (I - fun i => (J i : ℂ)) 0)
    have h2 := (abs_lt.mp (h1.trans_lt hIJ)).1
    have h3 := (hB J hJ).2
    simp only [Complex.sub_re, Complex.ofReal_re] at h2
    linarith
  have hdiff : DifferentiableOn ℂ (keplerRotH ((2 * π) ^ 2) (1 / (2 * π))) (actionNbhd B r₀) :=
    (differentiableOn_keplerRotH _ _).mono fun I hI => by
      have := hre I hI
      intro h0
      simp [h0] at this
  refine ⟨hdiff, hre, fun I hI => ?_⟩
  have hI0 : 0 < I 0 := by simpa using hre _ hI
  refine ⟨hI0, ?_⟩
  rw [det_borderedHessian_keplerRotH _ _ hI0]
  have h : (2 * π : ℝ) ≠ 0 := by positivity
  have : 3 * (2 * π) ^ 2 * (1 / (2 * π)) ^ 2 / I 0 ^ 4 = 3 / I 0 ^ 4 := by
    field_simp
  rw [this]
  positivity

end Part6

end KAM.Iso

end
