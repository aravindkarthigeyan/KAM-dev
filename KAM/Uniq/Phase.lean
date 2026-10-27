/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Uniq.Frame
import KAM.Apost.Exactness
import KAM.Apost.Periodicity
import KAM.Apost.Tools
import KAM.Strip.Increments
import Mathlib.Topology.MetricSpace.Contracting
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# The phase normalization (blueprint Part 3, `bp:p3:phase`)

Blueprint Lemma `bp:p3:phase`. Assume (S1)–(S4), and let `η` bound `|K₂ - K₁|` on `T_ρ` with
`η ≤ ρ / (4 n C_P (1 + 2 C_P σ_K))`. Then there is a *real* phase `ψ ∈ ℝⁿ` with `|ψ| ≤ 2 C_P η`
such that `⟨B Lᵀ (K₂(· + ψ) - K₁)⟩ = 0`.

* `KAM.Uniq.diffMap`: the difference `Δ = K₂(· + ψ) - K₁` (`eq:p3:Delta`). It is used by
  `bp:p3:phase`, `bp:p3:difference-equation` and `bp:p3:quadratic`.
* `KAM.Uniq.phase`: the node.

The proof follows the blueprint. Write `b = B Lᵀ` and `W = K₂ - K₁`.

* `step:p3:phase-fixed-point`: since `b L = I`, for real `θ` and `ψ`
  `b (K₂(θ + ψ) - K₁(θ)) = ψ + b (W(θ + ψ) + K₁(θ + ψ) - K₁(θ) - L(θ) ψ)`
  (`KAM.Uniq.PhaseAux.redMat_mulVec_diffMap`). The map `Φ(ψ) = -⟨b (…)⟩` has `ψ` as a fixed
  point if and only if the normalization holds.
* `step:p3:phase-real`: for real `ψ` the integrand is real at real points
  (`KAM.Uniq.PhaseAux.im_integrand`), by `KAM.real_inverse` for `B`; its average is real, and
  `Φ` takes real values (it is the real part of the average).
* `step:p3:phase-derivatives`: the increment estimate `bp:p1:increments` with `δ = ρ/2`, for `W`
  and for `L = DK₁` (`KAM.Uniq.PhaseAux.norm_sub_le_real`, `norm_taylor_defect_le`).
* `step:p3:phase-contraction`: `Φ` is a `1/2`-contraction of the closed ball of radius `2 C_P η`
  into itself (`KAM.Uniq.PhaseAux.norm_phaseMap_sub_le`, `exists_fixedPoint`). The blueprint's
  integral formula for `K₁(θ+ψ) - K₁(θ+ψ') - L(θ)(ψ-ψ')` is replaced by the mean value
  inequality on the convex ball (`norm_taylor_defect_le`).
* `step:p3:phase-conclusion`: Mathlib's Banach fixed point theorem
  `ContractingWith.exists_fixedPoint'` (`KAM.Uniq.PhaseAux.exists_fixedPoint`).

The proof uses (S3) and (S4) only: (S1) and (S2) belong to the blueprint's standing assumption but
no step of the argument needs them.

Auxiliary declarations live in `KAM.Uniq.PhaseAux`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Uniq

open KAM.Torus

/-- `Δ = K₂(· + ψ) - K₁`, `eq:p3:Delta`. -/
def diffMap {n : ℕ} (K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ψ : Fin n → ℝ)
    (θ : Fin n → ℂ) : (Fin n → ℂ) × (Fin n → ℂ) :=
  K₂ (θ + fun i => (ψ i : ℂ)) - K₁ θ

namespace PhaseAux

/-! ### Increments at real points -/

section Increments

variable {n : ℕ} {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W]

/-- A point of `ℂⁿ` with vanishing imaginary parts lies in every strip of positive width. -/
theorem mem_complexStrip_of_im_eq_zero {r : ℝ} (hr : 0 < r) {a : Fin n → ℂ}
    (ha : ∀ i, (a i).im = 0) : a ∈ complexStrip n r := fun i => by
  rw [ha i, abs_zero]
  exact hr

/-- The imaginary parts of a point of norm at most `R` are at most `R`. -/
theorem abs_im_le_norm (z : Fin n → ℂ) (i : Fin n) : |(z i).im| ≤ ‖z‖ :=
  (Complex.abs_im_le_norm (z i)).trans (norm_le_pi_norm z i)

/-- A real point shifted by a vector of norm at most `R < r` lies in `T_r`. -/
theorem add_mem_complexStrip {r R : ℝ} {a z : Fin n → ℂ} (ha : ∀ i, (a i).im = 0)
    (hz : ‖z‖ ≤ R) (hR : R < r) : a + z ∈ complexStrip n r := fun i => by
  have h1 := abs_im_le_norm z i
  simp only [Pi.add_apply, Complex.add_im, ha i, zero_add]
  linarith

/-- `step:p3:phase-derivatives`: the increment estimate of `bp:p1:increments` with `δ = ρ/2`,
between two points with vanishing imaginary parts. -/
theorem norm_sub_le_real {u : (Fin n → ℂ) → W} {ρ A : ℝ} (hρ : 0 < ρ)
    (hu : DifferentiableOn ℂ u (complexStrip n ρ)) (hA : ∀ z ∈ complexStrip n ρ, ‖u z‖ ≤ A)
    {a b : Fin n → ℂ} (ha : ∀ i, (a i).im = 0) (hb : ∀ i, (b i).im = 0) :
    ‖u a - u b‖ ≤ n * (ρ / 2)⁻¹ * A * ‖a - b‖ := by
  have hρ2 : 0 < ρ - ρ / 2 := by linarith
  have h := (KAM.increments hu (δ := ρ / 2) (by linarith) (θ := b) (v := a - b)
    (mem_complexStrip_of_im_eq_zero hρ2 hb)
    (by rw [add_sub_cancel]; exact mem_complexStrip_of_im_eq_zero hρ2 ha)).2 A hA
  rwa [add_sub_cancel] at h

/-- `step:p3:phase-contraction`: the mean value inequality for
`z ↦ u (a + z) - Du(a) z` on the convex closed ball of radius `R < ρ/2`, with
`‖Du(a + w) - Du(a)‖ ≤ n (ρ/2)⁻¹ σ ‖w‖` from `bp:p1:increments` applied to `Du`. -/
theorem norm_taylor_defect_le [FiniteDimensional ℂ W] {u : (Fin n → ℂ) → W} {ρ σ R : ℝ}
    (hρ : 0 < ρ) (hσ0 : 0 ≤ σ) (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (hσ : ∀ z ∈ complexStrip n ρ, ‖fderiv ℂ u z‖ ≤ σ) (hRρ : R < ρ / 2)
    {a : Fin n → ℂ} (ha : ∀ i, (a i).im = 0) {z z' : Fin n → ℂ} (hz : ‖z‖ ≤ R) (hz' : ‖z'‖ ≤ R) :
    ‖(u (a + z) - u (a + z')) - fderiv ℂ u a (z - z')‖ ≤ n * (ρ / 2)⁻¹ * σ * R * ‖z - z'‖ := by
  have hρ2 : 0 < ρ - ρ / 2 := by linarith
  have hdu : DifferentiableOn ℂ (fderiv ℂ u) (complexStrip n ρ) :=
    (holomorphic_regularity (isOpen_complexStrip n ρ) hu).1
  have hmem : ∀ w : Fin n → ℂ, ‖w‖ ≤ R → a + w ∈ complexStrip n ρ := fun w hw =>
    add_mem_complexStrip ha hw (by linarith)
  have hmem2 : ∀ w : Fin n → ℂ, ‖w‖ ≤ R → a + w ∈ complexStrip n (ρ - ρ / 2) := fun w hw =>
    add_mem_complexStrip ha hw (by linarith)
  have hd : ∀ w : Fin n → ℂ, ‖w‖ ≤ R → HasFDerivAt (fun w => u (a + w) - fderiv ℂ u a w)
      (fderiv ℂ u (a + w) - fderiv ℂ u a) w := fun w hw => by
    have h1 : HasFDerivAt u (fderiv ℂ u (a + w)) (a + w) :=
      (hu.differentiableAt ((isOpen_complexStrip n ρ).mem_nhds (hmem w hw))).hasFDerivAt
    have h2 : HasFDerivAt (fun x : Fin n → ℂ => a + x) (ContinuousLinearMap.id ℂ _) w :=
      (hasFDerivAt_id w).const_add a
    exact ((h1.comp w h2).sub (fderiv ℂ u a).hasFDerivAt).congr_fderiv (by simp)
  have hbound : ∀ w ∈ Metric.closedBall (0 : Fin n → ℂ) R,
      ‖fderiv ℂ (fun w => u (a + w) - fderiv ℂ u a w) w‖ ≤ n * (ρ / 2)⁻¹ * σ * R := by
    intro w hw
    rw [mem_closedBall_zero_iff] at hw
    rw [(hd w hw).fderiv]
    have h2 := (KAM.increments hdu (δ := ρ / 2) (by linarith) (θ := a) (v := w)
      (mem_complexStrip_of_im_eq_zero hρ2 ha) (hmem2 w hw)).2 σ hσ
    have hc : 0 ≤ (n : ℝ) * (ρ / 2)⁻¹ * σ := by positivity
    exact h2.trans (mul_le_mul_of_nonneg_left hw hc)
  have h := (convex_closedBall (0 : Fin n → ℂ) R).norm_image_sub_le_of_norm_fderiv_le (𝕜 := ℂ)
    (fun w hw => (hd w (mem_closedBall_zero_iff.1 hw)).differentiableAt) hbound
    (mem_closedBall_zero_iff.2 hz') (mem_closedBall_zero_iff.2 hz)
  rw [map_sub]
  convert h using 2
  abel

end Increments

/-! ### The integrand `b (W(θ+ψ) + K₁(θ+ψ) - K₁(θ) - L(θ) ψ)` -/

section Integrand

variable {n : ℕ} {τ ρ M σK σB σT μ : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- The real vectors `x + y` and `x`, `y` as complex vectors. -/
theorem ofReal_vec_add (x y : Fin n → ℝ) :
    (fun i => ((x + y) i : ℂ)) = (fun i => (x i : ℂ)) + fun i => (y i : ℂ) := by
  ext i
  simp

/-- The real vectors `x - y`, `x` and `y` as complex vectors. -/
theorem ofReal_vec_sub (x y : Fin n → ℝ) :
    (fun i => ((x - y) i : ℂ)) = (fun i => (x i : ℂ)) - fun i => (y i : ℂ) := by
  ext i
  simp

/-- `b = B Lᵀ` (`n × 2n`), the first block row of `P⁻¹`. -/
def redMat (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (θ : Fin n → ℂ) :
    Matrix (Fin n) (Fin n ⊕ Fin n) ℂ :=
  (gramMatrix K θ)⁻¹ * (tangentMat K θ)ᵀ

/-- `b (K₂(θ + ψ) - K₁(θ) - L(θ) ψ) = b (W(θ+ψ) + K₁(θ+ψ) - K₁(θ) - L(θ) ψ)`, the integrand of
`Φ(ψ) = -⟨…⟩` in `step:p3:phase-fixed-point`. -/
def integrand (K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ψ : Fin n → ℝ)
    (θ : Fin n → ℂ) : Fin n → ℂ :=
  redMat K₁ θ *ᵥ sumVec n (K₂ (θ + fun i => (ψ i : ℂ)) - K₁ θ -
    fderiv ℂ K₁ θ (fun i => (ψ i : ℂ)))

/-- `step:p3:phase-fixed-point`: `b L = I`, so
`b (K₂(θ+ψ) - K₁(θ)) = ψ + b (K₂(θ+ψ) - K₁(θ) - L(θ) ψ)`. -/
theorem redMat_mulVec_diffMap {θ : Fin n → ℂ} (hG : IsUnit (gramMatrix K₁ θ).det)
    (ψ : Fin n → ℝ) :
    redMat K₁ θ *ᵥ sumVec n (diffMap K₁ K₂ ψ θ) = (fun i => (ψ i : ℂ)) + integrand K₁ K₂ ψ θ := by
  have hL : redMat K₁ θ *ᵥ sumVec n (fderiv ℂ K₁ θ (fun i => (ψ i : ℂ))) =
      fun i => (ψ i : ℂ) := by
    rw [← colMat_mulVec]
    show redMat K₁ θ *ᵥ (tangentMat K₁ θ *ᵥ _) = _
    rw [Matrix.mulVec_mulVec, redMat, Matrix.mul_assoc,
      ← gramMatrix_eq_tangentMat_transpose_mul, inv_gramMatrix_mul K₁ hG, Matrix.one_mulVec]
  have e : diffMap K₁ K₂ ψ θ = (K₂ (θ + fun i => (ψ i : ℂ)) - K₁ θ -
      fderiv ℂ K₁ θ (fun i => (ψ i : ℂ))) + fderiv ℂ K₁ θ (fun i => (ψ i : ℂ)) := by
    rw [diffMap, sub_add_cancel]
  rw [e, map_add, Matrix.mulVec_add, hL, add_comm]
  rfl

/-- The matrix `b` is holomorphic on `T_ρ` when `K₁` is and `det G` is a unit there. -/
theorem differentiableOn_redMat {ρ : ℝ} (hK : DifferentiableOn ℂ K₁ (complexStrip n ρ))
    (hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K₁ θ).det) :
    DifferentiableOn ℂ (redMat K₁) (complexStrip n ρ) :=
  (holomorphic_inverse (isOpen_complexStrip n ρ) (differentiableOn_gramMatrix hK)
    fun θ hθ => (hG θ hθ).ne_zero).1.matrix_mul (differentiableOn_tangentMat hK).matrix_transpose

/-- `step:p3:phase-real` (continuity): the integrand is continuous on `ℝⁿ`. -/
theorem continuous_integrand {ρ : ℝ} (hρ : 0 < ρ) (hK₁ : DifferentiableOn ℂ K₁ (complexStrip n ρ))
    (hK₂ : DifferentiableOn ℂ K₂ (complexStrip n ρ))
    (hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K₁ θ).det) (ψ : Fin n → ℝ) :
    Continuous (fun x : Fin n → ℝ => integrand K₁ K₂ ψ (fun i => (x i : ℂ))) := by
  have hb : Continuous (fun x : Fin n → ℝ => redMat K₁ (fun i => (x i : ℂ))) :=
    Apost.Exactness.continuous_real_of_differentiableOn hρ (differentiableOn_redMat hK₁ hG)
  have h2 : Continuous (fun x : Fin n → ℝ => K₂ ((fun i => (x i : ℂ)) + fun i => (ψ i : ℂ))) := by
    have e : (fun x : Fin n → ℝ => K₂ ((fun i => (x i : ℂ)) + fun i => (ψ i : ℂ))) =
        fun x => K₂ (fun i => ((x + ψ) i : ℂ)) := funext fun x => by rw [ofReal_vec_add]
    rw [e]
    exact (Apost.Exactness.continuous_real_of_differentiableOn hρ hK₂).comp
      (continuous_id.add continuous_const)
  have h1 : Continuous (fun x : Fin n → ℝ => K₁ (fun i => (x i : ℂ))) :=
    Apost.Exactness.continuous_real_of_differentiableOn hρ hK₁
  have h3 : Continuous (fun x : Fin n → ℝ => fderiv ℂ K₁ (fun i => (x i : ℂ))
      (fun i => (ψ i : ℂ))) :=
    (continuous_fderiv_real_of_holomorphic hρ hK₁).clm_apply continuous_const
  exact hb.matrix_mulVec ((sumVecIso n).continuous.comp ((h2.sub h1).sub h3))

/-- `step:p3:phase-real`: the integrand is real at real points, for a real phase. -/
theorem im_integrand {ρ : ℝ} (hρ : 0 < ρ) (hK₁ : DifferentiableOn ℂ K₁ (complexStrip n ρ))
    (hreal₁ : IsRealOnReals K₁) (hreal₂ : IsRealOnReals K₂)
    (hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K₁ θ).det) (ψ x : Fin n → ℝ) (i : Fin n) :
    (integrand K₁ K₂ ψ (fun i => (x i : ℂ)) i).im = 0 := by
  have hb : Apost.HasRealEntries (redMat K₁ (fun i => (x i : ℂ))) :=
    (Apost.hasRealEntries_inv_gramMatrix hρ hK₁ hreal₁ hG x).mul
      (Apost.hasRealEntries_tangentMat hρ hK₁ hreal₁ x).transpose
  have hv : Apost.HasRealVec (sumVec n (K₂ ((fun i => (x i : ℂ)) + fun i => (ψ i : ℂ)) -
      K₁ (fun i => (x i : ℂ)) - fderiv ℂ K₁ (fun i => (x i : ℂ)) (fun i => (ψ i : ℂ)))) := by
    intro s
    have e2 := isRealVec_sumVec_iff.2 hreal₂ (x + ψ) s
    have e1 := isRealVec_sumVec_iff.2 hreal₁ x s
    have e3 := Apost.im_sumVec_fderiv_real hρ hK₁ hreal₁ x
      (v := fun i => (ψ i : ℂ)) (fun i => by simp) s
    rw [ofReal_vec_add] at e2
    simp only [map_sub, Pi.sub_apply, Complex.sub_im, e1, e2, e3, sub_zero]
  exact hb.mulVec hv i

end Integrand

/-! ### Averages of a constant plus a continuous function -/

section Average

variable {n : ℕ} {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

/-- The average of the sum of a constant and a continuous function. -/
theorem torusAverage_const_add (c : F) {f : (Fin n → ℝ) → F} (hf : Continuous f) :
    torusAverage (fun x => c + f x) = c + torusAverage f := by
  unfold torusAverage
  rw [integral_add (integrableOn_unitCube_of_continuous (continuous_const (y := c)))
    (integrableOn_unitCube_of_continuous hf)]
  congr 1
  rw [setIntegral_const, measureReal_def, volume_unitCube, ENNReal.toReal_one, one_smul]

end Average

/-! ### The constants of the contraction -/

section Constants

variable {n : ℕ} {τ ρ M σK σB σT μ : ℝ}

/-- `R = 2 C_P η < ρ/2`: the closed ball of the fixed point problem stays inside the strip
`T_{ρ/2}`. -/
theorem radius_lt (hP : Params n τ ρ M σK σB σT μ) {η : ℝ} (hη0 : 0 ≤ η)
    (hsmall : η ≤ ρ / (4 * n * C_P n σK σB * (1 + 2 * C_P n σK σB * σK))) :
    2 * C_P n σK σB * η < ρ / 2 := by
  have hC := C_P_pos hP
  have hρ := hP.ρ_pos
  have hn := hP.two_le_cast
  have hσ := hP.σK_pos
  have hs := one_add_two_mul_C_P_mul_σK_pos hP
  have hD : 0 < 4 * (n : ℝ) * C_P n σK σB * (1 + 2 * C_P n σK σB * σK) := by positivity
  rw [le_div_iff₀ hD] at hsmall
  have h1 : 1 ≤ 1 + 2 * C_P n σK σB * σK := by nlinarith [mul_pos hC hσ]
  have h2 : 0 ≤ 2 * C_P n σK σB * η := by positivity
  nlinarith [mul_le_mul hn h1 zero_le_one (by linarith : (0 : ℝ) ≤ n)]

/-- The Lipschitz constant of `Φ`: `C_P (n (ρ/2)⁻¹ η + n (ρ/2)⁻¹ σ_K R) ≤ 1/2` for `R = 2 C_P η`
(`eq:p3:phase-small`). -/
theorem lip_le_half (hP : Params n τ ρ M σK σB σT μ) {η : ℝ}
    (hsmall : η ≤ ρ / (4 * n * C_P n σK σB * (1 + 2 * C_P n σK σB * σK))) :
    C_P n σK σB * (n * (ρ / 2)⁻¹ * η + n * (ρ / 2)⁻¹ * σK * (2 * C_P n σK σB * η)) ≤ 1 / 2 := by
  have hC := C_P_pos hP
  have hρ := hP.ρ_pos
  have hn := hP.n_pos
  have hσ := hP.σK_pos
  have hs := one_add_two_mul_C_P_mul_σK_pos hP
  have hD : 0 < 4 * (n : ℝ) * C_P n σK σB * (1 + 2 * C_P n σK σB * σK) := by positivity
  rw [le_div_iff₀ hD] at hsmall
  have key : C_P n σK σB * (n * (ρ / 2)⁻¹ * η + n * (ρ / 2)⁻¹ * σK * (2 * C_P n σK σB * η)) =
      η * (4 * n * C_P n σK σB * (1 + 2 * C_P n σK σB * σK)) / (2 * ρ) := by
    field_simp
    ring
  rw [key, div_le_iff₀ (by positivity)]
  linarith

end Constants

/-! ### The contraction `Φ` -/

section Contraction

variable {n : ℕ} {τ ρ M σK σB σT μ : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ}
  {K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- `step:p3:phase-contraction`, pointwise: for real `θ = x` and phases of norm at most `R`,
`|b (E_ψ - E_ψ')| ≤ C_P (n (ρ/2)⁻¹ η + n (ρ/2)⁻¹ σ_K R) |ψ - ψ'|`. -/
theorem norm_integrand_sub_le (hP : Params n τ ρ M σK σB σT μ) (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁)
    (h4 : S4 ρ 𝔅 h ω K₂) {η R : ℝ} (hη : ∀ θ ∈ complexStrip n ρ, ‖K₂ θ - K₁ θ‖ ≤ η)
    (hRρ : R < ρ / 2) {ψ ψ' : Fin n → ℝ} (hψ : ‖ψ‖ ≤ R) (hψ' : ‖ψ'‖ ≤ R) (x : Fin n → ℝ) :
    ‖integrand K₁ K₂ ψ (fun i => (x i : ℂ)) - integrand K₁ K₂ ψ' (fun i => (x i : ℂ))‖ ≤
      C_P n σK σB * (n * (ρ / 2)⁻¹ * η + n * (ρ / 2)⁻¹ * σK * R) * ‖ψ - ψ'‖ := by
  have hρ := hP.ρ_pos
  have hC := C_P_pos hP
  set a : Fin n → ℂ := fun i => (x i : ℂ) with ha_def
  have ha : ∀ i, (a i).im = 0 := fun i => by simp [ha_def]
  have hmem : a ∈ complexStrip n ρ := mem_complexStrip_of_im_eq_zero hρ ha
  set ψc : Fin n → ℂ := fun i => (ψ i : ℂ) with hψc_def
  set ψc' : Fin n → ℂ := fun i => (ψ' i : ℂ) with hψc'_def
  have hψc : ‖ψc‖ ≤ R := (Apost.FrameAux.norm_ofReal_vec ψ).le.trans hψ
  have hψc' : ‖ψc'‖ ≤ R := (Apost.FrameAux.norm_ofReal_vec ψ').le.trans hψ'
  have hdiffc : ‖ψc - ψc'‖ = ‖ψ - ψ'‖ := by
    rw [hψc_def, hψc'_def, ← ofReal_vec_sub, Apost.FrameAux.norm_ofReal_vec]
  have hre : ∀ i, ((a + ψc) i).im = 0 := fun i => by simp [ha_def, hψc_def]
  have hre' : ∀ i, ((a + ψc') i).im = 0 := fun i => by simp [ha_def, hψc'_def]
  have h1 := norm_sub_le_real (u := fun θ => K₂ θ - K₁ θ) hρ (h4.holo.sub h3.holo) hη hre hre'
  rw [add_sub_add_left_eq_sub] at h1
  have h2 := norm_taylor_defect_le (u := K₁) hρ hP.σK_pos.le h3.holo
    (fun z hz => FrameAux.deriv_le_of_S3 hP h3 hz) hRρ ha hψc hψc'
  have hb : ‖redMat K₁ a‖ ≤ C_P n σK σB := (matrix_norms hP h3 a hmem).2.2.2.1
  have e : (K₂ (a + ψc) - K₁ a - fderiv ℂ K₁ a ψc) - (K₂ (a + ψc') - K₁ a - fderiv ℂ K₁ a ψc') =
      ((K₂ (a + ψc) - K₁ (a + ψc)) - (K₂ (a + ψc') - K₁ (a + ψc'))) +
        ((K₁ (a + ψc) - K₁ (a + ψc')) - fderiv ℂ K₁ a (ψc - ψc')) := by
    rw [map_sub]
    abel
  rw [integrand, integrand, ← Matrix.mulVec_sub, ← map_sub]
  refine (Matrix.linfty_opNorm_mulVec _ _).trans ?_
  rw [norm_sumVec, e]
  calc ‖redMat K₁ a‖ * _ ≤ C_P n σK σB * ((n * (ρ / 2)⁻¹ * η * ‖ψc - ψc'‖) +
        (n * (ρ / 2)⁻¹ * σK * R * ‖ψc - ψc'‖)) :=
      mul_le_mul hb ((norm_add_le _ _).trans (add_le_add h1 h2)) (norm_nonneg _) hC.le
    _ = _ := by rw [hdiffc]; ring

/-- `step:p3:phase-contraction`: `|Φ(0)| ≤ |b| |W| ≤ C_P η`, pointwise. -/
theorem norm_integrand_zero_le (hP : Params n τ ρ M σK σB σT μ) (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁)
    {η : ℝ} (hη : ∀ θ ∈ complexStrip n ρ, ‖K₂ θ - K₁ θ‖ ≤ η) (x : Fin n → ℝ) :
    ‖integrand K₁ K₂ 0 (fun i => (x i : ℂ))‖ ≤ C_P n σK σB * η := by
  have hρ := hP.ρ_pos
  have hC := C_P_pos hP
  have hmem : (fun i => (x i : ℂ)) ∈ complexStrip n ρ :=
    mem_complexStrip_of_im_eq_zero hρ fun i => by simp
  have h0 : (fun i => ((0 : Fin n → ℝ) i : ℂ)) = 0 := by
    ext i
    simp
  rw [integrand, h0, add_zero, map_zero, sub_zero]
  refine (Matrix.linfty_opNorm_mulVec _ _).trans ?_
  rw [norm_sumVec]
  exact mul_le_mul (matrix_norms hP h3 _ hmem).2.2.2.1 (hη _ hmem) (norm_nonneg _) hC.le

/-- The map `Φ(ψ) = -Re ⟨b (W(· + ψ) + K₁(· + ψ) - K₁ - L ψ)⟩` of `step:p3:phase-fixed-point`.
Its values are real by construction; `im_integrand` shows that taking the real part loses
nothing. -/
def phaseMap (K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ψ : Fin n → ℝ) : Fin n → ℝ :=
  fun i => -(avg (integrand K₁ K₂ ψ) i).re

/-- `Φ` is Lipschitz on the ball `‖ψ‖ ≤ R`. -/
theorem norm_phaseMap_sub_le (hP : Params n τ ρ M σK σB σT μ) (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁)
    (h4 : S4 ρ 𝔅 h ω K₂) {η R : ℝ} (hη : ∀ θ ∈ complexStrip n ρ, ‖K₂ θ - K₁ θ‖ ≤ η)
    (hRρ : R < ρ / 2) {ψ ψ' : Fin n → ℝ} (hψ : ‖ψ‖ ≤ R) (hψ' : ‖ψ'‖ ≤ R) :
    ‖phaseMap K₁ K₂ ψ - phaseMap K₁ K₂ ψ'‖ ≤
      C_P n σK σB * (n * (ρ / 2)⁻¹ * η + n * (ρ / 2)⁻¹ * σK * R) * ‖ψ - ψ'‖ := by
  have hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K₁ θ).det := fun θ hθ =>
    FrameAux.isUnit_of_S3 h3 hθ
  have hc := continuous_integrand hP.ρ_pos h3.holo h4.holo hG ψ
  have hc' := continuous_integrand hP.ρ_pos h3.holo h4.holo hG ψ'
  have hsub : avg (integrand K₁ K₂ ψ) - avg (integrand K₁ K₂ ψ') =
      torusAverage (fun x : Fin n → ℝ => integrand K₁ K₂ ψ (fun i => (x i : ℂ)) -
        integrand K₁ K₂ ψ' (fun i => (x i : ℂ))) := by
    unfold avg torusAverage
    rw [← integral_sub (integrableOn_unitCube_of_continuous hc)
      (integrableOn_unitCube_of_continuous hc')]
  have hnorm : ‖avg (integrand K₁ K₂ ψ) - avg (integrand K₁ K₂ ψ')‖ ≤
      C_P n σK σB * (n * (ρ / 2)⁻¹ * η + n * (ρ / 2)⁻¹ * σK * R) * ‖ψ - ψ'‖ := by
    rw [hsub]
    exact norm_torusAverage_le fun x _ => norm_integrand_sub_le hP h3 h4 hη hRρ hψ hψ' x
  refine (pi_norm_le_iff_of_nonneg ((norm_nonneg _).trans hnorm)).2 fun i => ?_
  have e : (phaseMap K₁ K₂ ψ - phaseMap K₁ K₂ ψ') i =
      -((avg (integrand K₁ K₂ ψ) - avg (integrand K₁ K₂ ψ')) i).re := by
    simp only [phaseMap, Pi.sub_apply, Complex.sub_re]
    ring
  rw [e, norm_neg, Real.norm_eq_abs]
  exact (Complex.abs_re_le_norm _).trans ((norm_le_pi_norm _ i).trans hnorm)

/-- `|Φ(0)| ≤ C_P η`. -/
theorem norm_phaseMap_zero_le (hP : Params n τ ρ M σK σB σT μ) (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁)
    {η : ℝ} (hη : ∀ θ ∈ complexStrip n ρ, ‖K₂ θ - K₁ θ‖ ≤ η) :
    ‖phaseMap K₁ K₂ 0‖ ≤ C_P n σK σB * η := by
  have hnorm : ‖avg (integrand K₁ K₂ 0)‖ ≤ C_P n σK σB * η :=
    norm_torusAverage_le fun x _ => norm_integrand_zero_le hP h3 hη x
  refine (pi_norm_le_iff_of_nonneg ((norm_nonneg _).trans hnorm)).2 fun i => ?_
  rw [Real.norm_eq_abs]
  show |-(avg (integrand K₁ K₂ 0) i).re| ≤ _
  rw [abs_neg]
  exact (Complex.abs_re_le_norm _).trans ((norm_le_pi_norm _ i).trans hnorm)

/-- `step:p3:phase-conclusion`: Banach's fixed point theorem on the closed ball of radius
`2 C_P η`, on which `Φ` is a `1/2`-contraction mapping the ball into itself. -/
theorem exists_fixedPoint (hP : Params n τ ρ M σK σB σT μ) (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁)
    (h4 : S4 ρ 𝔅 h ω K₂) {η : ℝ} (hη : ∀ θ ∈ complexStrip n ρ, ‖K₂ θ - K₁ θ‖ ≤ η)
    (hsmall : η ≤ ρ / (4 * n * C_P n σK σB * (1 + 2 * C_P n σK σB * σK))) :
    ∃ ψ : Fin n → ℝ, ‖ψ‖ ≤ 2 * C_P n σK σB * η ∧ phaseMap K₁ K₂ ψ = ψ := by
  have hρ := hP.ρ_pos
  have hC := C_P_pos hP
  have hη0 : 0 ≤ η := (norm_nonneg _).trans
    (hη 0 (mem_complexStrip_of_im_eq_zero hρ fun i => by simp))
  have hR0 : 0 ≤ 2 * C_P n σK σB * η := by positivity
  have hRρ := radius_lt hP hη0 hsmall
  have hlip := lip_le_half hP hsmall
  have hcont : ∀ ψ ψ' : Fin n → ℝ, ‖ψ‖ ≤ 2 * C_P n σK σB * η → ‖ψ'‖ ≤ 2 * C_P n σK σB * η →
      ‖phaseMap K₁ K₂ ψ - phaseMap K₁ K₂ ψ'‖ ≤ 1 / 2 * ‖ψ - ψ'‖ := fun ψ ψ' hψ hψ' =>
    (norm_phaseMap_sub_le hP h3 h4 hη hRρ hψ hψ').trans
      (mul_le_mul_of_nonneg_right hlip (norm_nonneg _))
  have hmaps : Set.MapsTo (phaseMap K₁ K₂) (Metric.closedBall 0 (2 * C_P n σK σB * η))
      (Metric.closedBall 0 (2 * C_P n σK σB * η)) := by
    intro ψ hψ
    rw [mem_closedBall_zero_iff] at hψ ⊢
    have h1 := hcont ψ 0 hψ (by rw [norm_zero]; exact hR0)
    have h2 := norm_phaseMap_zero_le hP h3 hη
    rw [sub_zero] at h1
    calc ‖phaseMap K₁ K₂ ψ‖ = ‖(phaseMap K₁ K₂ ψ - phaseMap K₁ K₂ 0) + phaseMap K₁ K₂ 0‖ := by
          rw [sub_add_cancel]
      _ ≤ ‖phaseMap K₁ K₂ ψ - phaseMap K₁ K₂ 0‖ + ‖phaseMap K₁ K₂ 0‖ := norm_add_le _ _
      _ ≤ 1 / 2 * ‖ψ‖ + C_P n σK σB * η := add_le_add h1 h2
      _ ≤ 2 * C_P n σK σB * η := by nlinarith
  have hcw : ContractingWith (1 / 2 : NNReal) (hmaps.restrict (phaseMap K₁ K₂) _ _) := by
    refine ⟨by rw [← NNReal.coe_lt_coe]; norm_num, LipschitzWith.of_dist_le_mul fun x y => ?_⟩
    rw [Subtype.dist_eq, Subtype.dist_eq, dist_eq_norm, dist_eq_norm]
    have := hcont x y (mem_closedBall_zero_iff.1 x.2) (mem_closedBall_zero_iff.1 y.2)
    simpa using this
  obtain ⟨ψ, hψ, hfix, -⟩ := ContractingWith.exists_fixedPoint'
    Metric.isClosed_closedBall.isComplete hmaps hcw (x := 0) (Metric.mem_closedBall_self hR0)
    (edist_ne_top _ _)
  exact ⟨ψ, mem_closedBall_zero_iff.1 hψ, hfix⟩

end Contraction

end PhaseAux

variable {n : ℕ} {τ ρ M σK σB σT μ : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- Blueprint `bp:p3:phase`, with `η` any bound of `|K₂ - K₁|` on `T_ρ`. -/
theorem phase (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) (h4 : S4 ρ 𝔅 h ω K₂) {η : ℝ}
    (hη : ∀ θ ∈ complexStrip n ρ, ‖K₂ θ - K₁ θ‖ ≤ η)
    (hsmall : η ≤ ρ / (4 * n * C_P n σK σB * (1 + 2 * C_P n σK σB * σK))) :
    ∃ ψ : Fin n → ℝ, ‖ψ‖ ≤ 2 * C_P n σK σB * η ∧
      avg (fun θ => ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ) *ᵥ
        sumVec n (diffMap K₁ K₂ ψ θ)) = 0 := by
  -- (S1) and (S2) belong to the blueprint's standing assumption; this proof does not use them.
  have _hS := standing_of hP h1 h2
  have hρ := hP.ρ_pos
  have hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K₁ θ).det := fun θ hθ =>
    FrameAux.isUnit_of_S3 h3 hθ
  obtain ⟨ψ, hψ, hfix⟩ := PhaseAux.exists_fixedPoint hP h3 h4 hη hsmall
  refine ⟨ψ, hψ, ?_⟩
  have hc := PhaseAux.continuous_integrand hρ h3.holo h4.holo hG ψ
  have havg : avg (PhaseAux.integrand K₁ K₂ ψ) = -(fun i => (ψ i : ℂ)) := by
    ext i
    refine Complex.ext ?_ ?_
    · have := congrFun hfix i
      simp only [PhaseAux.phaseMap] at this
      simp only [Pi.neg_apply, Complex.neg_re, Complex.ofReal_re]
      linarith
    · show (torusAverage (fun x : Fin n → ℝ => PhaseAux.integrand K₁ K₂ ψ
        (fun i => (x i : ℂ))) i).im = _
      rw [Apost.Tools.torusAverage_vector_apply hc i]
      simpa using Apost.Tools.im_integral_eq_zero fun x =>
        PhaseAux.im_integrand hρ h3.holo h3.real h4.real hG ψ x i
  have heq : avg (fun θ => ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ) *ᵥ
      sumVec n (diffMap K₁ K₂ ψ θ)) =
      avg (fun θ => (fun i => (ψ i : ℂ)) + PhaseAux.integrand K₁ K₂ ψ θ) := by
    unfold avg
    congr 1
    funext x
    exact PhaseAux.redMat_mulVec_diffMap (hG _ (PhaseAux.mem_complexStrip_of_im_eq_zero hρ
      fun i => by simp)) ψ
  rw [heq]
  show torusAverage (fun x : Fin n → ℝ => (fun i => (ψ i : ℂ)) +
    PhaseAux.integrand K₁ K₂ ψ (fun i => (x i : ℂ))) = 0
  rw [PhaseAux.torusAverage_const_add _ hc]
  have : torusAverage (fun x : Fin n → ℝ => PhaseAux.integrand K₁ K₂ ψ (fun i => (x i : ℂ))) =
      -(fun i => (ψ i : ℂ)) := havg
  rw [this, add_neg_cancel]


end KAM.Uniq

end
