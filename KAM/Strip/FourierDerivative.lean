/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Strip.FourierBasic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination

/-!
# Fourier coefficients of derivatives: the real `C¹` form

Blueprint `bp:p1:fourier-basic` (a): for `v : ℝⁿ → ℂ` continuous, `1`-periodic and continuously
differentiable, `\widehat{(∂_ℓ v)}_k = 2πi k_ℓ \hat v_k`, hence
`\widehat{(∂_ω v)}_k = 2πi (k·ω) \hat v_k` for `ω ∈ ℂⁿ`, where `∂_ω v = ∑_ℓ ω_ℓ ∂_ℓ v`.

* `KAM.torusCoeff_fderiv_coordinate_real`: the coordinate derivative `∂_ℓ v`.
* `KAM.torusCoeff_fderiv_real`: the derivative `∂_ω v` along `ω ∈ ℂⁿ`.

The corresponding statement for the restriction to `ℝⁿ` of a function holomorphic and `1`-periodic
on a strip, which is the form used for the cohomological equation, is `KAM.torusCoeff_fderiv` of
`KAM.Strip.Cohomological`. Here the function is real-differentiable on `ℝⁿ` only.

The proof: the product `w = χ_{-k} v` is `C¹` and `1`-periodic, so `⟨∂_ℓ w⟩ = 0`
(`KAM.torusAverage_coordinate_eq_zero`), and `∂_ℓ w = χ_{-k} ∂_ℓ v - 2πi k_ℓ χ_{-k} v`.
-/

public noncomputable section

open Set Filter MeasureTheory
open scoped Topology

namespace KAM

variable {n : ℕ}

/-! ### The real form of `bp:p1:fourier-basic` (a) -/

/-- The embedding `ℝⁿ → ℂⁿ` as a real continuous linear map. -/
private def realEmbed (n : ℕ) : (Fin n → ℝ) →L[ℝ] (Fin n → ℂ) :=
  ContinuousLinearMap.pi fun j => Complex.ofRealCLM.comp (ContinuousLinearMap.proj j)

private theorem realEmbed_apply (x : Fin n → ℝ) : realEmbed n x = fun j => (x j : ℂ) := rfl

private theorem realEmbed_single (ℓ : Fin n) : realEmbed n (Pi.single ℓ 1) = Pi.single ℓ 1 := by
  ext j
  by_cases h : j = ℓ <;> simp [realEmbed, h]

/-- The real derivative of `x ↦ χ_m(x)` along a coordinate. -/
private theorem hasFDerivAt_character_real (m : Fin n → ℤ) (x : Fin n → ℝ) :
    HasFDerivAt (fun y : Fin n → ℝ => character m (fun j => (y j : ℂ)))
      (((character m (fun j => (x j : ℂ)) •
        ((2 * Real.pi * Complex.I : ℂ) • modeForm m)).restrictScalars ℝ).comp (realEmbed n)) x :=
  by
  have h := ((hasFDerivAt_character m (realEmbed n x)).restrictScalars ℝ).comp x
    (realEmbed n).hasFDerivAt
  exact h

/-- Linearity of the Fourier coefficient over finite sums of continuous functions. -/
theorem torusCoeff_finset_sum_mul {ι : Type*} (s : Finset ι) {f : ι → (Fin n → ℝ) → ℂ}
    (hf : ∀ i, Continuous (f i)) (a : ι → ℂ) (k : Fin n → ℤ) :
    torusCoeff (fun x => ∑ i ∈ s, a i * f i x) k = ∑ i ∈ s, a i * torusCoeff (f i) k := by
  have hL : Continuous fun x : Fin n → ℝ => character (-k) (fun j => (x j : ℂ)) :=
    (differentiable_character _).continuous.comp
      (continuous_pi fun j => Complex.continuous_ofReal.comp (continuous_apply j))
  unfold torusCoeff torusAverage
  simp only [Finset.mul_sum]
  rw [integral_finsetSum]
  · refine Finset.sum_congr rfl fun i _ => ?_
    rw [← integral_const_mul]
    congr 1
    funext x
    ring
  · intro i _
    exact integrableOn_unitCube_of_continuous (hL.mul (continuous_const.mul (hf i)))


/-- **Fourier coefficients of coordinate derivatives** (blueprint `bp:p1:fourier-basic` (a),
step `step:p1:fb-derivative`): if `v : ℝⁿ → ℂ` is continuously differentiable and `1`-periodic, then
`\widehat{(∂_ℓ v)}_k = 2πi k_ℓ \hat v_k`. -/
theorem torusCoeff_fderiv_coordinate_real {v : (Fin n → ℝ) → ℂ} (hv : ContDiff ℝ 1 v)
    (hp : ∀ (i : Fin n) x, v (x + Pi.single i 1) = v x) (ℓ : Fin n) (k : Fin n → ℤ) :
    torusCoeff (fun x => fderiv ℝ v x (Pi.single ℓ 1)) k =
      2 * Real.pi * Complex.I * (k ℓ : ℂ) * torusCoeff v k := by
  set c : (Fin n → ℝ) → ℂ := fun y => character (-k) (fun j => (y j : ℂ)) with hc_def
  set C : (Fin n → ℝ) → ((Fin n → ℝ) →L[ℝ] ℂ) := fun x =>
    ((character (-k) (fun j => (x j : ℂ)) •
      ((2 * Real.pi * Complex.I : ℂ) • modeForm (-k))).restrictScalars ℝ).comp (realEmbed n)
    with hC_def
  have hcd : ∀ x, HasFDerivAt c (C x) x := fun x => hasFDerivAt_character_real (-k) x
  have hvd : ∀ x, HasFDerivAt v (fderiv ℝ v x) x := fun x =>
    (hv.differentiable one_ne_zero x).hasFDerivAt
  have hwd : ∀ x, HasFDerivAt (fun y => c y * v y) (c x • fderiv ℝ v x + v x • C x) x :=
    fun x => (hcd x).mul (hvd x)
  have hcc : Continuous c :=
    (differentiable_character _).continuous.comp
      (continuous_pi fun j => Complex.continuous_ofReal.comp (continuous_apply j))
  have hCc : Continuous C := by
    have h1 : Continuous fun x : Fin n → ℝ =>
        (character (-k) (fun j => (x j : ℂ)) • ((2 * Real.pi * Complex.I : ℂ) • modeForm (-k))) :=
      hcc.smul continuous_const
    exact ((ContinuousLinearMap.isEmbedding_restrictScalars ℝ).continuous.comp h1).clm_comp
      continuous_const
  have hvc : Continuous v := hv.continuous
  have hDv : Continuous fun x => fderiv ℝ v x := hv.continuous_fderiv one_ne_zero
  have hwc : Continuous fun x => c x • fderiv ℝ v x + v x • C x :=
    (hcc.smul hDv).add (hvc.smul hCc)
  have hper : ∀ x, c (x + Pi.single ℓ 1) * v (x + Pi.single ℓ 1) = c x * v x := by
    intro x
    have : (fun j => (((x + Pi.single ℓ (1 : ℝ) : Fin n → ℝ) j : ℝ) : ℂ)) =
        (fun j => (x j : ℂ)) + Pi.single ℓ 1 := by
      funext j
      by_cases h : j = ℓ
      · subst h
        simp
      · simp [h]
    simp only [hc_def, this, character_add_single, hp ℓ x]
  have h0 := torusAverage_coordinate_eq_zero hwd hwc ℓ hper
  have hCe : ∀ x, C x (Pi.single ℓ 1) =
      character (-k) (fun j => (x j : ℂ)) * (2 * Real.pi * Complex.I * ((-k) ℓ : ℤ)) := by
    intro x
    simp only [hC_def, ContinuousLinearMap.comp_apply, realEmbed_single,
      ContinuousLinearMap.coe_restrictScalars', smul_apply, smul_eq_mul]
    simp [modeForm_apply, Pi.single_apply]
  simp only [add_apply, smul_apply, smul_eq_mul, hCe]
    at h0
  have h1 : IntegrableOn (fun x : Fin n → ℝ => c x * fderiv ℝ v x (Pi.single ℓ 1))
      (Set.pi Set.univ fun _ : Fin n => Icc (0 : ℝ) 1) :=
    integrableOn_unitCube_of_continuous (hcc.mul (hDv.clm_apply continuous_const))
  have h2 : IntegrableOn (fun x : Fin n → ℝ => (2 * Real.pi * Complex.I * ((-k) ℓ : ℤ)) *
      (c x * v x)) (Set.pi Set.univ fun _ : Fin n => Icc (0 : ℝ) 1) :=
    integrableOn_unitCube_of_continuous (continuous_const.mul (hcc.mul hvc))
  have h3 : torusCoeff (fun x => fderiv ℝ v x (Pi.single ℓ 1)) k +
      (2 * Real.pi * Complex.I * ((-k) ℓ : ℤ)) * torusCoeff v k = 0 := by
    unfold torusCoeff
    rw [← h0]
    unfold torusAverage
    rw [← integral_const_mul, ← integral_add h1 h2]
    congr 1
    funext x
    simp only [hc_def]
    ring
  have hneg : (((-k) ℓ : ℤ) : ℂ) = -(k ℓ : ℂ) := by simp
  rw [hneg] at h3
  linear_combination h3

/-- **Fourier coefficients of derivatives** (blueprint `bp:p1:fourier-basic` (a)): for `v : ℝⁿ → ℂ`
continuously differentiable and `1`-periodic and every `ω ∈ ℂⁿ`, the coefficients of
`∂_ω v = ∑_ℓ ω_ℓ ∂_ℓ v` are `\widehat{(∂_ω v)}_k = 2πi (k·ω) \hat v_k`. -/
theorem torusCoeff_fderiv_real {v : (Fin n → ℝ) → ℂ} (hv : ContDiff ℝ 1 v)
    (hp : ∀ (i : Fin n) x, v (x + Pi.single i 1) = v x) (ω : Fin n → ℂ) (k : Fin n → ℤ) :
    torusCoeff (fun x => ∑ ℓ, ω ℓ * fderiv ℝ v x (Pi.single ℓ 1)) k =
      2 * Real.pi * Complex.I * (∑ j, (k j : ℂ) * ω j) * torusCoeff v k := by
  have hDv : Continuous fun x => fderiv ℝ v x := hv.continuous_fderiv one_ne_zero
  rw [torusCoeff_finset_sum_mul _ (fun ℓ => hDv.clm_apply continuous_const) ω k,
    Finset.mul_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun ℓ _ => ?_
  rw [torusCoeff_fderiv_coordinate_real hv hp ℓ k]
  ring

end KAM

end
