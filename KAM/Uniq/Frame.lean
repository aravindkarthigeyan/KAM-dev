/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Uniq.Standing
public import KAM.Torus.Objects
public import KAM.Apost.Geometry
import KAM.Apost.Exactness
import KAM.Apost.Frame
import KAM.Apost.Identities
import KAM.Apost.Periodicity
import KAM.Apost.Tools
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# The frame of the reference torus `K₁` (blueprint Part 3, `bp:p3:auxiliary`, `bp:p3:geometry`)

Blueprint Part 3, Lemmas `bp:p3:matrix-norms`, `bp:p3:lagrangian`, `bp:p3:frequency-bound`,
`bp:p3:reducibility` and `bp:p3:torsion-bound`, for a reference torus `K₁` satisfying (S3) with
(S1), (S2) in the background. Write `L = DK₁`, `B = (LᵀL)⁻¹`, `N = Ω₀ L B`, `P = (L N)`.

* `KAM.Uniq.matrix_norms`: `|L| ≤ σ_K`, `|B| ≤ σ_B`, `|N| ≤ σ_K σ_B`, `|B Lᵀ|`, `|Lᵀ Ω₀|`, `|P|`
  and `|(B Lᵀ ; -Lᵀ Ω₀)|` are at most `C_P`. Hypothesis (S3) carries `σ_K - μ` and `σ_B - μ`, and
  `μ > 0` from `Params` turns them into `σ_K` and `σ_B`.
* `KAM.Uniq.lagrangian`: `Ω_{K₁} = Lᵀ Ω₀ L = 0` on `T_ρ`. The invariance error vanishes on the open
  strip, so `DE₁ = 0`; Part 2 gives `∂_ω Ω_{K₁} = 0` (`frame_identities` (d)), periodicity and
  `⟨Ω_{K₁}⟩ = 0` (`exactness`). Corollary `bp:p2:cohomological`(b), the operator-norm bound for
  the cohomological equation with right-hand side `0`, then gives `Ω_{K₁} = 0` on `T_{ρ-δ}` for
  every `δ ∈ (0, ρ)`, hence on `T_ρ`.
* `KAM.Uniq.frequency_bound`: `|ω| ≤ Γ` and `γ ≤ Γ`, from `bp:p2:frequency` with `ε = 0`.
* `KAM.Uniq.reducibility`: `B, N, P` holomorphic, `P⁻¹ = (B Lᵀ ; -Lᵀ Ω₀)`, `Pᵀ Ω₀ P = Ω₀`,
  `T = B Lᵀ X_N` and `A P - ∂_ω P = P Λ` on `T_ρ`, from `frame_identities` (b), (e), (f) with
  `Ω_{K₁} = 0` and `DE₁ = 0`.
* `KAM.Uniq.torsion_bound`: `T` holomorphic on `T_ρ`, continuous on `ℝⁿ`, `|T| ≤ C_tor` on
  `T_{3ρ/4}` (Cauchy estimate with `δ = ρ/4` for `∂_ω N`), entrywise integrable on `[0,1]ⁿ`, and
  `⟨T⟩` (the frozen `torsionAverage`) is `avg T`.

The auxiliary facts proved along the way live in `KAM.Uniq.FrameAux`. Nothing here assumes the
conclusion of a Part 3 result; each theorem takes exactly the structures named in its statement.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Uniq

open KAM.Torus

namespace FrameAux

variable {n : ℕ} {τ ρ M σK σB σT μ : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K₁ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-! ### What (S3) says at one point, with `μ > 0` -/

section Pointwise

variable (hP : Params n τ ρ M σK σB σT μ) (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁)
include hP h3

/-- `K₁(T_ρ) ⊆ 𝔅`: the ball of radius `μ > 0` around `K₁ θ` lies in `𝔅`. -/
theorem mem_of_S3 {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ) : K₁ θ ∈ 𝔅 :=
  h3.ball_sub θ hθ (Metric.mem_ball_self hP.μ_pos)

/-- `|DK₁| ≤ σ_K - μ ≤ σ_K`. -/
theorem deriv_le_of_S3 {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ) :
    ‖fderiv ℂ K₁ θ‖ ≤ σK := by
  have := h3.deriv_le θ hθ
  have := hP.μ_pos
  linarith

/-- `|B| ≤ σ_B - μ ≤ σ_B`. -/
theorem inv_gram_le_of_S3 {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ) :
    ‖(gramMatrix K₁ θ)⁻¹‖ ≤ σB := by
  have := (h3.gram θ hθ).2
  have := hP.μ_pos
  linarith

omit hP in
/-- The Gram determinant is a unit on `T_ρ`. -/
theorem isUnit_of_S3 {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ) :
    IsUnit (gramMatrix K₁ θ).det :=
  (h3.gram θ hθ).1

end Pointwise

/-! ### Frame norms (`step:p3:norms-frame`) -/

section Norms

variable {θ : Fin n → ℂ}

/-- `|N| ≤ |Ω₀ L| |B| = |L| |B| ≤ σ_K σ_B`. -/
theorem norm_normalMat_le' (hL : ‖fderiv ℂ K₁ θ‖ ≤ σK) (hB : ‖(gramMatrix K₁ θ)⁻¹‖ ≤ σB) :
    ‖normalMat K₁ θ‖ ≤ σK * σB := by
  have hB0 : 0 ≤ ‖(gramMatrix K₁ θ)⁻¹‖ := norm_nonneg _
  calc ‖normalMat K₁ θ‖
      ≤ ‖omegaZeroMatrix n * tangentMat K₁ θ‖ * ‖(gramMatrix K₁ θ)⁻¹‖ :=
        Matrix.linfty_opNorm_mul _ _
    _ = ‖tangentMat K₁ θ‖ * ‖(gramMatrix K₁ θ)⁻¹‖ := by rw [norm_omegaZeroMatrix_mul]
    _ ≤ σK * σB :=
        mul_le_mul ((Apost.FrameAux.norm_tangentMat K₁ θ).le.trans hL) hB hB0
          ((norm_nonneg _).trans ((Apost.FrameAux.norm_tangentMat K₁ θ).le.trans hL))

/-- `|Lᵀ| ≤ 2 n σ_K`. -/
theorem norm_transpose_tangentMat_le' (hL : ‖fderiv ℂ K₁ θ‖ ≤ σK) :
    ‖(tangentMat K₁ θ)ᵀ‖ ≤ 2 * n * σK :=
  (Apost.FrameAux.norm_transpose_le_two_mul _).trans
    (mul_le_mul_of_nonneg_left ((Apost.FrameAux.norm_tangentMat K₁ θ).le.trans hL)
      (by positivity))

/-- `|B Lᵀ| ≤ σ_B · 2 n σ_K`. -/
theorem norm_inv_mul_transpose_le (hL : ‖fderiv ℂ K₁ θ‖ ≤ σK)
    (hB : ‖(gramMatrix K₁ θ)⁻¹‖ ≤ σB) :
    ‖(gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ‖ ≤ σB * (2 * n * σK) :=
  (Matrix.linfty_opNorm_mul _ _).trans
    (mul_le_mul hB (norm_transpose_tangentMat_le' hL) (norm_nonneg _)
      ((norm_nonneg _).trans hB))

/-- `|Lᵀ Ω₀| = |Lᵀ| ≤ 2 n σ_K`. -/
theorem norm_transpose_mul_omega_le (hL : ‖fderiv ℂ K₁ θ‖ ≤ σK) :
    ‖(tangentMat K₁ θ)ᵀ * omegaZeroMatrix n‖ ≤ 2 * n * σK := by
  rw [norm_mul_omegaZeroMatrix]
  exact norm_transpose_tangentMat_le' hL

/-- `|P| ≤ |L| + |N| ≤ σ_K + σ_K σ_B`. -/
theorem norm_frameMat_le' (hL : ‖fderiv ℂ K₁ θ‖ ≤ σK) (hB : ‖(gramMatrix K₁ θ)⁻¹‖ ≤ σB) :
    ‖frameMat K₁ θ‖ ≤ σK * (1 + σB) :=
  calc ‖frameMat K₁ θ‖ ≤ ‖tangentMat K₁ θ‖ + ‖normalMat K₁ θ‖ :=
        Apost.Tools.norm_fromCols_le_add _ _
    _ ≤ σK + σK * σB :=
        add_le_add ((Apost.FrameAux.norm_tangentMat K₁ θ).le.trans hL)
          (norm_normalMat_le' hL hB)
    _ = σK * (1 + σB) := by ring

end Norms

/-! ### The invariance error vanishes on the open strip -/

section Invariance

variable {θ : Fin n → ℂ}

/-- `E₁ = 0` on the open strip gives `DE₁ = 0` there. -/
theorem errDerivMat_eq_zero (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) (hθ : θ ∈ complexStrip n ρ) :
    errDerivMat h K₁ ω θ = 0 := by
  have hev : invarianceError h K₁ ω =ᶠ[𝓝 θ] fun _ => 0 :=
    Filter.eventuallyEq_of_mem ((isOpen_complexStrip n ρ).mem_nhds hθ) fun y hy =>
      h3.invariant y hy
  have hD : fderiv ℂ (invarianceError h K₁ ω) θ = 0 := by
    rw [hev.fderiv_eq]
    exact fderiv_const_apply 0
  rw [errDerivMat, hD]
  ext s j
  simp [colMat]

/-- `∂_ω Ω_{K₁} = 0` on `T_ρ`: `bp:p2:frame-identities`(d) with `DE₁ = 0`. -/
theorem fderiv_lagrangeMat_eq_zero (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h)
    (h2 : S2 τ ω γ) (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) (hθ : θ ∈ complexStrip n ρ) :
    fderiv ℂ (lagrangeMat K₁) θ (fun l => (ω l : ℂ)) = 0 := by
  obtain ⟨-, -, -, hd, -⟩ := KAM.Apost.frame_identities (standing_of hP h1 h2) hP.ρ_pos
    h3.holo (fun θ' hθ' => mem_of_S3 hP h3 hθ') (fun θ' hθ' => isUnit_of_S3 h3 hθ') θ hθ
  rw [hd, errDerivMat_eq_zero h3 hθ]
  simp

end Invariance

/-! ### Exhausting `T_ρ` by the smaller strips `T_{ρ-δ}` -/

/-- Every point of `T_ρ` lies in some `T_{ρ-δ}` with `0 < δ < ρ`. -/
theorem exists_sub_mem (hn : 0 < n) {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ) :
    ∃ δ, 0 < δ ∧ δ < ρ ∧ θ ∈ complexStrip n (ρ - δ) := by
  have : Nonempty (Fin n) := ⟨⟨0, hn⟩⟩
  obtain ⟨i₀, hi₀⟩ := Finite.exists_max (fun i => |(θ i).im|)
  have hlt : |(θ i₀).im| < ρ := hθ i₀
  have h0 := abs_nonneg (θ i₀).im
  refine ⟨(ρ - |(θ i₀).im|) / 2, by linarith, by linarith, fun i => ?_⟩
  have := hi₀ i
  show |(θ i).im| < ρ - (ρ - |(θ i₀).im|) / 2
  linarith

/-! ### The frame algebra at `K₁` -/

section Algebra

variable {θ : Fin n → ℂ}

/-- `Nᵀ Ω₀ = B Lᵀ`, since `B` is symmetric and `Ω₀ᵀ Ω₀ = I`. -/
theorem normalMat_transpose_mul_omega (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (θ : Fin n → ℂ) :
    (normalMat K θ)ᵀ * omegaZeroMatrix n = (gramMatrix K θ)⁻¹ * (tangentMat K θ)ᵀ := by
  rw [normalMat, Matrix.transpose_mul, Matrix.transpose_mul,
    Apost.FrameAux.transpose_inv_gramMatrix K θ, Matrix.mul_assoc, Matrix.mul_assoc,
    Apost.Tools.omegaZeroMatrix_transpose_mul_self, Matrix.mul_one]

/-- `Q = -Ω₀ Pᵀ Ω₀ = (B Lᵀ ; -Lᵀ Ω₀)`, the stacked form of `bp:p2:matrix`(d). -/
theorem reducer_eq_fromRows (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (θ : Fin n → ℂ) :
    reducer K θ = Matrix.fromRows ((gramMatrix K θ)⁻¹ * (tangentMat K θ)ᵀ)
      (-((tangentMat K θ)ᵀ * omegaZeroMatrix n)) := by
  rw [reducer, frameMat, Matrix.transpose_fromCols, Apost.Tools.omegaZeroMatrix_mul_fromRows,
    Matrix.fromRows_mul, Matrix.neg_mul, normalMat_transpose_mul_omega, Matrix.fromRows_neg]
  simp

end Algebra

end FrameAux

variable {n : ℕ} {τ ρ M σK σB σT μ : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- Blueprint `bp:p3:matrix-norms`. -/
theorem matrix_norms (hP : Params n τ ρ M σK σB σT μ) (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) :
    ∀ θ ∈ complexStrip n ρ,
      ‖tangentMat K₁ θ‖ ≤ σK ∧ ‖(gramMatrix K₁ θ)⁻¹‖ ≤ σB ∧ ‖normalMat K₁ θ‖ ≤ σK * σB ∧
      ‖(gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ‖ ≤ C_P n σK σB ∧
      ‖(tangentMat K₁ θ)ᵀ * omegaZeroMatrix n‖ ≤ C_P n σK σB ∧ ‖frameMat K₁ θ‖ ≤ C_P n σK σB ∧
      ‖Matrix.fromRows ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ)
        (-((tangentMat K₁ θ)ᵀ * omegaZeroMatrix n))‖ ≤ C_P n σK σB := by
  intro θ hθ
  have hL := FrameAux.deriv_le_of_S3 hP h3 hθ
  have hB := FrameAux.inv_gram_le_of_S3 hP h3 hθ
  have h4 : ‖(gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ‖ ≤ C_P n σK σB :=
    (FrameAux.norm_inv_mul_transpose_le hL hB).trans (σB_mul_two_mul_n_mul_σK_le_C_P hP)
  have h5 : ‖(tangentMat K₁ θ)ᵀ * omegaZeroMatrix n‖ ≤ C_P n σK σB :=
    (FrameAux.norm_transpose_mul_omega_le hL).trans (two_mul_n_mul_σK_le_C_P hP)
  refine ⟨(Apost.FrameAux.norm_tangentMat K₁ θ).le.trans hL, hB,
    FrameAux.norm_normalMat_le' hL hB, h4, h5,
    (FrameAux.norm_frameMat_le' hL hB).trans (σK_mul_one_add_σB_le_C_P hP), ?_⟩
  rw [norm_fromRows, norm_neg]
  exact max_le h4 h5

/-- Blueprint `bp:p3:lagrangian`. -/
theorem lagrangian (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) : ∀ θ ∈ complexStrip n ρ, lagrangeMat K₁ θ = 0 := by
  intro θ hθ
  have hS := standing_of hP h1 h2
  obtain ⟨δ, hδ, hδρ, hθδ⟩ := FrameAux.exists_sub_mem (by have := hP.two_le; omega) hθ
  have hb := (KAM.Apost.cohomological hS hP.ρ_pos hδ hδρ).2 (lagrangeMat K₁) 0
    (Apost.Exactness.differentiableOn_lagrangeMat h3.holo)
    (Apost.periodic_lagrangeMat h3.primary)
    (KAM.Apost.exactness hS hP.ρ_pos h3.holo h3.primary
      fun θ' hθ' => FrameAux.mem_of_S3 hP h3 hθ').1
    (fun θ' hθ' => by rw [FrameAux.fderiv_lagrangeMat_eq_zero hP h1 h2 h3 hθ', norm_zero]) θ hθδ
  simpa using hb

/-- Blueprint `bp:p3:frequency-bound`. -/
theorem frequency_bound (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) : ‖ω‖ ≤ C_Gamma n M σK σB ∧ γ ≤ C_Gamma n M σK σB := by
  obtain ⟨hγ, hω, -⟩ := KAM.Apost.frequency (standing_of hP h1 h2) hP.ρ_pos (ε := 0)
    (by norm_num) (K := K₁) (fun θ hθ => FrameAux.mem_of_S3 hP h3 hθ)
    (fun θ hθ => FrameAux.deriv_le_of_S3 hP h3 hθ)
    (fun θ hθ => ⟨FrameAux.isUnit_of_S3 h3 hθ, FrameAux.inv_gram_le_of_S3 hP h3 hθ⟩)
    (fun θ hθ => by rw [h3.invariant θ hθ, norm_zero])
  have hω' : ‖ω‖ ≤ 2 * n * σK * σB * M := by simpa using hω
  have hΓ := two_mul_n_mul_σK_mul_σB_mul_M_le_C_Gamma hP
  exact ⟨hω'.trans hΓ, hγ.trans (hω'.trans hΓ)⟩

/-- Blueprint `bp:p3:reducibility`. -/
theorem reducibility (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) :
    DifferentiableOn ℂ (fun θ => (gramMatrix K₁ θ)⁻¹) (complexStrip n ρ) ∧
    DifferentiableOn ℂ (normalMat K₁) (complexStrip n ρ) ∧
    DifferentiableOn ℂ (frameMat K₁) (complexStrip n ρ) ∧
    ∀ θ ∈ complexStrip n ρ, IsUnit (frameMat K₁ θ).det ∧
      (frameMat K₁ θ)⁻¹ = Matrix.fromRows ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ)
        (-((tangentMat K₁ θ)ᵀ * omegaZeroMatrix n)) ∧
      (frameMat K₁ θ)ᵀ * omegaZeroMatrix n * frameMat K₁ θ = omegaZeroMatrix n ∧
      torsion h K₁ ω θ = (gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ * normalFieldMat h K₁ ω θ ∧
      linMat h K₁ θ * frameMat K₁ θ - fderiv ℂ (frameMat K₁) θ (fun l => (ω l : ℂ)) =
        frameMat K₁ θ * triangularMat (torsion h K₁ ω θ) := by
  have hS := standing_of hP h1 h2
  have hK := h3.holo
  have hK𝔅 : ∀ θ ∈ complexStrip n ρ, K₁ θ ∈ 𝔅 := fun θ hθ => FrameAux.mem_of_S3 hP h3 hθ
  have hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K₁ θ).det :=
    fun θ hθ => FrameAux.isUnit_of_S3 h3 hθ
  have hLd := differentiableOn_tangentMat hK
  have hNd := differentiableOn_normalMat hK hG
  have hBd := (holomorphic_inverse (isOpen_complexStrip n ρ) (differentiableOn_gramMatrix hK)
    fun θ hθ => (hG θ hθ).ne_zero).1
  refine ⟨hBd, hNd, Apost.FrameAux.differentiableOn_frameMat hLd hNd, fun θ hθ => ?_⟩
  obtain ⟨-, ⟨hb1, hb2⟩, -, -, he, hf1, -⟩ :=
    KAM.Apost.frame_identities hS hP.ρ_pos hK hK𝔅 hG θ hθ
  have hsym : symDefect K₁ θ = 0 := by
    rw [hb2, lagrangian hP h1 h2 h3 θ hθ]
    simp
  have hQP : reducer K₁ θ * frameMat K₁ θ = 1 := by rw [hf1, hsym]; simp
  have hPQ : frameMat K₁ θ * reducer K₁ θ = 1 := mul_eq_one_comm.1 hQP
  have hred : redDefect h K₁ ω θ = 0 := by
    rw [redDefect, FrameAux.errDerivMat_eq_zero h3 hθ]
    simp
  refine ⟨Matrix.isUnit_det_of_left_inverse hQP, ?_, ?_, ?_, ?_⟩
  · rw [Matrix.inv_eq_left_inv hQP, FrameAux.reducer_eq_fromRows]
  · rw [hb1, hsym, add_zero]
  · rw [torsion_eq_mat h K₁ ω (hNd.differentiableAt ((isOpen_complexStrip n ρ).mem_nhds hθ)),
      FrameAux.normalMat_transpose_mul_omega]
  · calc linMat h K₁ θ * frameMat K₁ θ - fderiv ℂ (frameMat K₁) θ (fun l => (ω l : ℂ))
        = (frameMat K₁ θ * reducer K₁ θ) *
            (linMat h K₁ θ * frameMat K₁ θ -
              fderiv ℂ (frameMat K₁) θ (fun l => (ω l : ℂ))) := by rw [hPQ, Matrix.one_mul]
      _ = frameMat K₁ θ * (reducer K₁ θ * (linMat h K₁ θ * frameMat K₁ θ -
            fderiv ℂ (frameMat K₁) θ (fun l => (ω l : ℂ)))) := Matrix.mul_assoc _ _ _
      _ = frameMat K₁ θ * triangularMat (torsion h K₁ ω θ) := by rw [he, hred, add_zero]

/-- Blueprint `bp:p3:torsion-bound`. -/
theorem torsion_bound (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) :
    DifferentiableOn ℂ (torsion h K₁ ω) (complexStrip n ρ) ∧
    Continuous (fun x : Fin n → ℝ => torsion h K₁ ω (fun i => (x i : ℂ))) ∧
    (∀ θ ∈ complexStrip n (3 * ρ / 4), ‖torsion h K₁ ω θ‖ ≤ C_tor n ρ M σK σB) ∧
    (∀ i j, IntegrableOn (fun x : Fin n → ℝ => torsion h K₁ ω (fun l => (x l : ℂ)) i j)
      (Set.pi Set.univ fun _ => Set.Icc (0 : ℝ) 1)) ∧
    torsionAverage h K₁ ω = avg (torsion h K₁ ω) := by
  have hS := standing_of hP h1 h2
  have hρ := hP.ρ_pos
  have hK := h3.holo
  have hK𝔅 : ∀ θ ∈ complexStrip n ρ, K₁ θ ∈ 𝔅 := fun θ hθ => FrameAux.mem_of_S3 hP h3 hθ
  obtain ⟨-, hNd, -, hred⟩ := reducibility hP h1 h2 h3
  have hAd := Apost.FrameAux.differentiableOn_linMat hS hK hK𝔅
  have hXd := Apost.FrameAux.differentiableOn_normalFieldMat (ω := ω) hAd hNd
  have hTd := Apost.FrameAux.differentiableOn_torsion hNd hXd
  have hcont := Apost.FrameAux.continuous_torsion_real hρ hTd
  refine ⟨hTd, hcont, ?_, fun i j => integrableOn_unitCube_of_continuous (hcont.matrix_elem i j),
    torsionAverage_eq_avg h K₁ ω hcont⟩
  intro θ hθ
  have hθρ : θ ∈ complexStrip n ρ := fun i => (hθ i).trans (by linarith)
  have hNb : ∀ θ' ∈ complexStrip n ρ, ‖normalMat K₁ θ'‖ ≤ σK * σB := fun θ' hθ' =>
    FrameAux.norm_normalMat_le' (FrameAux.deriv_le_of_S3 hP h3 hθ')
      (FrameAux.inv_gram_le_of_S3 hP h3 hθ')
  have hθ' : θ ∈ complexStrip n (ρ - ρ / 4) := by
    have : ρ - ρ / 4 = 3 * ρ / 4 := by ring
    rw [this]
    exact hθ
  have hdir := cauchy_corollaries_directional_real hNd hNb (δ := ρ / 4) (by linarith) ω θ hθ'
  obtain ⟨hωΓ, -⟩ := frequency_bound hP h1 h2 h3
  have hsum : ∑ ℓ, |ω ℓ| ≤ n * C_Gamma n M σK σB :=
    calc ∑ ℓ, |ω ℓ| ≤ ∑ _ℓ : Fin n, ‖ω‖ :=
          Finset.sum_le_sum fun ℓ _ => by simpa using norm_le_pi_norm ω ℓ
      _ = n * ‖ω‖ := by simp
      _ ≤ n * C_Gamma n M σK σB := by gcongr
  have hdir' : ‖fderiv ℂ (normalMat K₁) θ (fun l => (ω l : ℂ))‖ ≤
      4 * n * C_Gamma n M σK σB * (σK * σB) / ρ :=
    hdir.trans (by
      calc (∑ ℓ, |ω ℓ|) * (ρ / 4)⁻¹ * (σK * σB)
          ≤ (n * C_Gamma n M σK σB) * (ρ / 4)⁻¹ * (σK * σB) := by
            have := mul_pos hP.σK_pos hP.σB_pos
            gcongr
        _ = 4 * n * C_Gamma n M σK σB * (σK * σB) / ρ := by field_simp)
  have hA : ‖linMat h K₁ θ‖ ≤ M :=
    (Apost.FrameAux.norm_linMat h K₁ θ).le.trans (h1.bounds _ (hK𝔅 θ hθρ)).2.2.1
  have hX : ‖normalFieldMat h K₁ ω θ‖ ≤
      M * (σK * σB) + 4 * n * C_Gamma n M σK σB * (σK * σB) / ρ :=
    calc ‖normalFieldMat h K₁ ω θ‖
        ≤ ‖linMat h K₁ θ * normalMat K₁ θ‖ + ‖fderiv ℂ (normalMat K₁) θ (fun l => (ω l : ℂ))‖ :=
          norm_sub_le _ _
      _ ≤ M * (σK * σB) + 4 * n * C_Gamma n M σK σB * (σK * σB) / ρ :=
          add_le_add ((Matrix.linfty_opNorm_mul _ _).trans
            (mul_le_mul hA (hNb θ hθρ) (norm_nonneg _) hP.M_pos.le)) hdir'
  obtain ⟨-, -, -, hBL, -⟩ := matrix_norms hP h3 θ hθρ
  obtain ⟨-, -, -, hT, -⟩ := hred θ hθρ
  have hX0 : 0 ≤ M * (σK * σB) + 4 * n * C_Gamma n M σK σB * (σK * σB) / ρ :=
    (norm_nonneg _).trans hX
  rw [hT]
  exact ((Matrix.linfty_opNorm_mul _ _).trans (mul_le_mul hBL hX (norm_nonneg _)
    (C_P_pos hP).le)).trans (C_P_mul_torsion_coeff_le hP)

end KAM.Uniq

end
