/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Strip.Cohomological
public import KAM.Matrix.Norms
public import KAM.Matrix.Inverse
public import KAM.Matrix.Calculus
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# The cohomological equation in operator norms

Blueprint `bp:p1:cohomological-operator`, built on the scalar and vector results of
`KAM.Strip.Cohomological` (`KAM.cohSolution`, `KAM.cohSolutionPi`, `KAM.eq_cohSolution`,
`KAM.eq_cohSolutionPi`, `KAM.norm_cohSolutionPi_le`). Matrices carry the operator norm of
`open scoped Matrix.Norms.Operator` (the maximum absolute row sum). Both statements are proved by
testing against vectors.

**Matrix data** (steps `step:p1:coo-entries`, `step:p1:coo-vectors`, `step:p1:coo-norm`): for
`g : T_ρ → ℂ^{p×q}` holomorphic, `1`-periodic, bounded by `A` in the operator norm, with zero
average, the entrywise solution `KAM.cohSolutionMat ω g` is holomorphic and `1`-periodic on
`T_{ρ-δ}`, has zero average, solves `∂_ω u = g`, is real if `g` is, is the only holomorphic
`1`-periodic zero-average solution (`KAM.eq_cohSolutionMat`), and satisfies, in the operator norm,
`‖u‖ ≤ cohConst n τ / (γ δ^{τ+n}) A` (`KAM.norm_cohSolutionMat_le`).

**A-priori form** (step `step:p1:coo-apriori`): a holomorphic `1`-periodic `u` on `T_ρ` with zero
average, with values in `ℂ`, `ℂ^p` or `ℂ^{p×q}`, and `‖∂_ω u‖ ≤ H` on `T_ρ`, satisfies
`‖u‖ ≤ cohConst n τ / (γ δ^{τ+n}) H` on `T_{ρ-δ}` (`KAM.cohomological_apriori`,
`KAM.cohomological_apriori_pi`, `KAM.cohomological_apriori_operator`). Here `g := ∂_ω u` is
holomorphic, `1`-periodic, bounded, with zero average, and `u` solves `∂_ω u = g` on `T_{ρ-δ}`, so
`u = 𝓡 g` there by uniqueness (no boundedness of `u` is assumed).

For `‖v‖ ≤ 1` the function `θ ↦ u θ v` is `ℂ^p`-valued, holomorphic, `1`-periodic, with
`∂_ω (u v) = (∂_ω u) v`; the vector bound gives `‖u θ v‖ ≤ ΓH`, and
`‖u θ‖ = sup_{‖v‖≤1} ‖u θ v‖` (`KAM.isGreatest_norm_mulVec`).
-/

public noncomputable section

open Set Filter MeasureTheory
open scoped Topology Matrix.Norms.Operator

namespace KAM

variable {n : ℕ}

/-! ### Helpers -/

/-- The restriction to `ℝⁿ` of a function holomorphic on a strip of positive width is continuous. -/
theorem continuous_restrict_real {F : Type*} [NormedAddCommGroup F] [NormedSpace ℂ F] {r : ℝ}
    (hr : 0 < r) {u : (Fin n → ℂ) → F} (hu : DifferentiableOn ℂ u (complexStrip n r)) :
    Continuous fun x : Fin n → ℝ => u fun j => (x j : ℂ) :=
  hu.continuousOn.comp_continuous continuous_realPoint fun x => ofReal_mem_complexStrip hr x

/-- A continuous linear map commutes with the torus average of a continuous function. -/
theorem torusAverage_clm {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F] (L : E →L[ℝ] F)
    {f : (Fin n → ℝ) → E} (hf : Continuous f) :
    torusAverage (fun x => L (f x)) = L (torusAverage f) :=
  L.integral_comp_comm (integrableOn_unitCube_of_continuous hf)

/-- The average of a matrix-valued continuous function is the matrix of the averages of the
entries. -/
theorem torusAverage_apply_matrix {p q : ℕ} {f : (Fin n → ℝ) → Matrix (Fin p) (Fin q) ℂ}
    (hf : Continuous f) (i : Fin p) (j : Fin q) :
    torusAverage f i j = torusAverage (fun x => f x i j) :=
  (torusAverage_clm ((LinearMap.toContinuousLinearMap
    (Matrix.entryLinearMap ℂ ℂ i j)).restrictScalars ℝ) hf).symm

/-- Multiplication of a matrix by a fixed vector, as a continuous linear map. -/
private def mulVecCLM {p q : ℕ} (v : Fin q → ℂ) :
    Matrix (Fin p) (Fin q) ℂ →L[ℂ] (Fin p → ℂ) :=
  LinearMap.toContinuousLinearMap
    { toFun := fun M => M.mulVec v
      map_add' := fun M N => Matrix.add_mulVec M N v
      map_smul' := fun c M => Matrix.smul_mulVec c M v }

private theorem mulVecCLM_apply {p q : ℕ} (v : Fin q → ℂ) (M : Matrix (Fin p) (Fin q) ℂ) :
    mulVecCLM v M = M.mulVec v := rfl

/-- **Transfer along `M ↦ M v`.** For `u` holomorphic on a strip of positive width and a fixed
vector `v`, the function `θ ↦ u θ v` is holomorphic, its average is `⟨u⟩ v`, and its directional
derivative is `(∂_ω u) v`. -/
theorem mulVec_transfer {p q : ℕ} {ρ : ℝ} (hρ : 0 < ρ)
    {u : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ} (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (v : Fin q → ℂ) (ω : Fin n → ℝ) :
    DifferentiableOn ℂ (fun θ => (u θ).mulVec v) (complexStrip n ρ) ∧
      torusAverage (fun x : Fin n → ℝ => (u fun j => (x j : ℂ)).mulVec v) =
        (torusAverage fun x : Fin n → ℝ => u fun j => (x j : ℂ)).mulVec v ∧
      ∀ θ ∈ complexStrip n ρ, fderiv ℂ (fun θ => (u θ).mulVec v) θ (fun l => (ω l : ℂ)) =
        (fderiv ℂ u θ (fun l => (ω l : ℂ))).mulVec v := by
  refine ⟨(mulVecCLM (p := p) v).differentiable.comp_differentiableOn hu,
    torusAverage_clm ((mulVecCLM (p := p) v).restrictScalars ℝ)
      (continuous_restrict_real hρ hu), fun θ hθ => ?_⟩
  have hd : DifferentiableAt ℂ u θ := hu.differentiableAt ((isOpen_complexStrip n _).mem_nhds hθ)
  have hfd : fderiv ℂ (fun θ => mulVecCLM (p := p) v (u θ)) θ =
      (mulVecCLM (p := p) v).comp (fderiv ℂ u θ) :=
    ((mulVecCLM (p := p) v).hasFDerivAt.comp θ hd.hasFDerivAt).fderiv
  exact congrArg (fun L => L (fun l => (ω l : ℂ))) hfd

/-! ### The a-priori bound -/

section Apriori

variable {ω : Fin n → ℝ} {γ τ ρ δ : ℝ}
  (hω : IsDiophantine γ τ ω) (hγ : 0 < γ) (hτ : 0 ≤ τ) (hδ : 0 < δ) (hδρ : δ < ρ)

include hω hγ hτ hδ hδρ

/-- **A-priori bound, scalar-valued** (blueprint `bp:p1:cohomological-operator`, step
`step:p1:coo-apriori`): if `u` is holomorphic and `1`-periodic on `T_ρ` with zero average and
`|∂_ω u| ≤ H` on `T_ρ`, then `|u| ≤ cohConst n τ / (γ δ^{τ+n}) H` on `T_{ρ-δ}`. No boundedness of
`u` is assumed. -/
theorem cohomological_apriori {u : (Fin n → ℂ) → ℂ} {H : ℝ}
    (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (hup : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hu0 : torusAverage (fun x : Fin n → ℝ => u fun j => (x j : ℂ)) = 0)
    (hH : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ u θ (fun l => (ω l : ℂ))‖ ≤ H) :
    ∀ θ ∈ complexStrip n (ρ - δ), ‖u θ‖ ≤ cohConst n τ / (γ * δ ^ (τ + n)) * H := by
  have hρ : 0 < ρ := hδ.trans hδρ
  have hmono : complexStrip n (ρ - δ) ⊆ complexStrip n ρ := fun z hz j => by
    have := hz j
    linarith
  set g : (Fin n → ℂ) → ℂ := fun θ => fderiv ℂ u θ (fun l => (ω l : ℂ)) with hg_def
  have hg : DifferentiableOn ℂ g (complexStrip n ρ) :=
    (differentiableOn_fderiv_of_isOpen_pi (isOpen_complexStrip n ρ) hu).clm_apply
      (differentiableOn_const _)
  have hgp : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → g (z + Pi.single i 1) = g z := fun i z hz => by
    simp only [hg_def, fderiv_add_single_of_periodic hup i hz]
  have hg0 : torusAverage (fun x : Fin n → ℝ => g fun j => (x j : ℂ)) = 0 :=
    torusAverage_complex_direction_eq_zero hρ hu hup _
  intro θ hθ
  rw [eq_cohSolution hω hγ hτ hδ hδρ hg hgp hH hg0 (hu.mono hmono)
    (fun i z hz => hup i z (hmono hz)) hu0 (fun θ _ => rfl) hθ]
  exact norm_cohSolution_le hω hγ hτ hδ hδρ hg hgp hH hg0 hθ

/-- **A-priori bound, vector-valued**: the max-norm version, applying the scalar bound to each
component. -/
theorem cohomological_apriori_pi {p : ℕ} {u : (Fin n → ℂ) → Fin p → ℂ} {H : ℝ}
    (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (hup : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hu0 : torusAverage (fun x : Fin n → ℝ => u fun j => (x j : ℂ)) = 0)
    (hH : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ u θ (fun l => (ω l : ℂ))‖ ≤ H) :
    ∀ θ ∈ complexStrip n (ρ - δ), ‖u θ‖ ≤ cohConst n τ / (γ * δ ^ (τ + n)) * H := by
  intro θ hθ
  have hρ : 0 < ρ := hδ.trans hδρ
  have hH0 : 0 ≤ H := (norm_nonneg _).trans (hH _ (ofReal_mem_complexStrip hρ 0))
  have hc := cohConst_nonneg (n := n) hτ
  refine (pi_norm_le_iff_of_nonneg (by positivity)).mpr fun l => ?_
  obtain ⟨hul, hupl, hu0l⟩ := component_holomorphic_periodic hρ hu hup hu0 l
  refine cohomological_apriori hω hγ hτ hδ hδρ (u := fun z => u z l) hul hupl hu0l ?_ θ hθ
  intro θ' hθ'
  rw [← fderiv_apply_of_differentiableAt
    (hu.differentiableAt ((isOpen_complexStrip n ρ).mem_nhds hθ'))]
  exact (norm_le_pi_norm _ l).trans (hH θ' hθ')

/-- **A-priori bound in the operator norm** (blueprint `bp:p1:cohomological-operator`): let `u` be
holomorphic and `1`-periodic on `T_ρ` with values in `ℂ^{p×q}` (operator norm), with zero average
and `‖∂_ω u‖ ≤ H` on `T_ρ`. Then `‖u‖ ≤ cohConst n τ / (γ δ^{τ+n}) H` on `T_{ρ-δ}`. -/
theorem cohomological_apriori_operator {p q : ℕ}
    {u : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ} {H : ℝ}
    (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (hup : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hu0 : torusAverage (fun x : Fin n → ℝ => u fun j => (x j : ℂ)) = 0)
    (hH : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ u θ (fun l => (ω l : ℂ))‖ ≤ H) :
    ∀ θ ∈ complexStrip n (ρ - δ), ‖u θ‖ ≤ cohConst n τ / (γ * δ ^ (τ + n)) * H := by
  intro θ hθ
  have hρ : 0 < ρ := hδ.trans hδρ
  obtain ⟨v, hv, hMv⟩ := (isGreatest_norm_mulVec (u θ)).1
  have hv1 : ‖v‖ ≤ 1 := by simpa using hv
  have hMv' : ‖(u θ).mulVec v‖ = ‖u θ‖ := hMv
  rw [← hMv']
  obtain ⟨hw, hwavg, hwd⟩ := mulVec_transfer hρ hu v ω
  refine cohomological_apriori_pi hω hγ hτ hδ hδρ (u := fun θ => (u θ).mulVec v) hw
    (fun i z hz => by simp only [hup i z hz]) ?_ ?_ θ hθ
  · rw [hwavg, hu0, Matrix.zero_mulVec]
  · intro θ' hθ'
    rw [hwd θ' hθ']
    exact (Matrix.linfty_opNorm_mulVec _ v).trans
      ((mul_le_of_le_one_right (norm_nonneg _) hv1).trans (hH θ' hθ'))

end Apriori

/-! ### Matrix-valued data -/

/-- The entrywise solution operator for matrix-valued data: `(𝓡 g)_{ij} = 𝓡 (g_{ij})`. -/
@[expose] def cohSolutionMat {p q : ℕ} (ω : Fin n → ℝ)
    (g : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ) : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ :=
  fun θ => Matrix.of fun i j => cohSolution ω (fun θ' => g θ' i j) θ

/-- The entrywise solution is `1`-periodic in every coordinate. -/
theorem cohSolutionMat_add_single {p q : ℕ} (ω : Fin n → ℝ)
    (g : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ) (θ : Fin n → ℂ) (k : Fin n) :
    cohSolutionMat ω g (θ + Pi.single k 1) = cohSolutionMat ω g θ := by
  ext i j
  exact cohSolution_add_single ω (fun θ' => g θ' i j) θ k

/-- Realness of the entrywise solution: if `g` is real on `ℝⁿ`, so is `𝓡 g`. -/
theorem cohSolutionMat_im_eq_zero {p q : ℕ} (ω : Fin n → ℝ)
    {g : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ}
    (hreal : ∀ (x : Fin n → ℝ) (i : Fin p) (j : Fin q), (g (fun l => (x l : ℂ)) i j).im = 0)
    (x : Fin n → ℝ) (i : Fin p) (j : Fin q) :
    (cohSolutionMat ω g (fun l => (x l : ℂ)) i j).im = 0 :=
  cohSolution_im_eq_zero ω (g := fun θ => g θ i j) (fun x => hreal x i j) x

section MatrixData

variable {p q : ℕ} {ω : Fin n → ℝ} {γ τ ρ δ A : ℝ} {g : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ}
  (hω : IsDiophantine γ τ ω) (hγ : 0 < γ) (hτ : 0 ≤ τ) (hδ : 0 < δ) (hδρ : δ < ρ)
  (hg : DifferentiableOn ℂ g (complexStrip n ρ))
  (hp : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → g (z + Pi.single i 1) = g z)
  (hA : ∀ z ∈ complexStrip n ρ, ‖g z‖ ≤ A)
  (h0 : torusAverage (fun x : Fin n → ℝ => g fun j => (x j : ℂ)) = 0)

include hδ hδρ hg hp hA h0

/-- The hypotheses of the scalar case hold for each entry of a matrix-valued datum
(`‖g_{ij}‖ ≤ ‖g‖`, blueprint `step:p1:coo-entries`). -/
theorem entry_holomorphic_periodic (i : Fin p) (j : Fin q) :
    DifferentiableOn ℂ (fun θ => g θ i j) (complexStrip n ρ) ∧
      (∀ (k : Fin n) z, z ∈ complexStrip n ρ → g (z + Pi.single k 1) i j = g z i j) ∧
      (∀ z ∈ complexStrip n ρ, ‖g z i j‖ ≤ A) ∧
      torusAverage (fun x : Fin n → ℝ => g (fun l => (x l : ℂ)) i j) = 0 := by
  have hρ : 0 < ρ := hδ.trans hδρ
  refine ⟨differentiableOn_matrix_iff_entries.mp hg i j,
    fun k z hz => by rw [hp k z hz], fun z hz => (norm_entry_le _ i j).trans (hA z hz), ?_⟩
  rw [← torusAverage_apply_matrix (continuous_restrict_real hρ hg) i j, h0]
  rfl

include hω hγ hτ

/-- Holomorphy of the entrywise solution. -/
theorem differentiableOn_cohSolutionMat :
    DifferentiableOn ℂ (cohSolutionMat ω g) (complexStrip n (ρ - δ)) :=
  differentiableOn_matrix_iff_entries.mpr fun i j =>
    let h := entry_holomorphic_periodic hδ hδρ hg hp hA h0 i j
    differentiableOn_cohSolution hω hγ hτ hδ hδρ h.1 h.2.1 h.2.2.1 h.2.2.2

/-- The entrywise solution has zero average. -/
theorem torusAverage_cohSolutionMat :
    torusAverage (fun x : Fin n → ℝ => cohSolutionMat ω g fun j => (x j : ℂ)) = 0 := by
  have hr : 0 < ρ - δ := sub_pos.mpr hδρ
  ext i j
  rw [torusAverage_apply_matrix (continuous_restrict_real hr
    (differentiableOn_cohSolutionMat hω hγ hτ hδ hδρ hg hp hA h0)) i j]
  let h := entry_holomorphic_periodic hδ hδρ hg hp hA h0 i j
  exact torusAverage_cohSolution hω hγ hτ hδ hδρ h.1 h.2.1 h.2.2.1 h.2.2.2

/-- The entrywise solution solves the equation. -/
theorem fderiv_cohSolutionMat {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n (ρ - δ)) :
    fderiv ℂ (cohSolutionMat ω g) θ (fun l => (ω l : ℂ)) = g θ := by
  ext i j
  have hu := differentiableOn_cohSolutionMat hω hγ hτ hδ hδρ hg hp hA h0
  rw [← fderiv_matrix_apply (hu.differentiableAt ((isOpen_complexStrip n _).mem_nhds hθ))]
  let h := entry_holomorphic_periodic hδ hδρ hg hp hA h0 i j
  exact fderiv_cohSolution hω hγ hτ hδ hδρ h.1 h.2.1 h.2.2.1 h.2.2.2 hθ

/-- **Uniqueness for matrix-valued data**: every zero-average holomorphic `1`-periodic solution of
`∂_ω u = g` on `T_{ρ-δ}`, bounded or not, is the entrywise solution. -/
theorem eq_cohSolutionMat {u : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ}
    (hu : DifferentiableOn ℂ u (complexStrip n (ρ - δ)))
    (hup : ∀ (k : Fin n) z, z ∈ complexStrip n (ρ - δ) → u (z + Pi.single k 1) = u z)
    (hu0 : torusAverage (fun x : Fin n → ℝ => u fun j => (x j : ℂ)) = 0)
    (hud : ∀ θ ∈ complexStrip n (ρ - δ), fderiv ℂ u θ (fun l => (ω l : ℂ)) = g θ)
    {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n (ρ - δ)) : u θ = cohSolutionMat ω g θ := by
  have hr : 0 < ρ - δ := sub_pos.mpr hδρ
  ext i j
  let h := entry_holomorphic_periodic hδ hδρ hg hp hA h0 i j
  refine eq_cohSolution hω hγ hτ hδ hδρ h.1 h.2.1 h.2.2.1 h.2.2.2
    (v := fun θ => u θ i j) (differentiableOn_matrix_iff_entries.mp hu i j)
    (fun k z hz => by rw [hup k z hz]) ?_ ?_ hθ
  · rw [← torusAverage_apply_matrix (continuous_restrict_real hr hu) i j, hu0]
    rfl
  · intro θ' hθ'
    rw [fderiv_matrix_apply (hu.differentiableAt ((isOpen_complexStrip n _).mem_nhds hθ')),
      hud θ' hθ']

/-- **The bound in the operator norm** (blueprint `bp:p1:cohomological-operator`, steps
`step:p1:coo-vectors` and `step:p1:coo-norm`): for matrix-valued `g` bounded by `A` in the
operator norm, `‖𝓡 g‖ ≤ cohConst n τ / (γ δ^{τ+n}) A` on `T_{ρ-δ}`. -/
theorem norm_cohSolutionMat_le {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n (ρ - δ)) :
    ‖cohSolutionMat ω g θ‖ ≤ cohConst n τ / (γ * δ ^ (τ + n)) * A := by
  have hρ : 0 < ρ := hδ.trans hδρ
  have hr : 0 < ρ - δ := sub_pos.mpr hδρ
  obtain ⟨v, hv, hMv⟩ := (isGreatest_norm_mulVec (cohSolutionMat ω g θ)).1
  have hv1 : ‖v‖ ≤ 1 := by simpa using hv
  have hMv' : ‖(cohSolutionMat ω g θ).mulVec v‖ = ‖cohSolutionMat ω g θ‖ := hMv
  rw [← hMv']
  -- the datum `g v`
  obtain ⟨hG, hGavg, -⟩ := mulVec_transfer hρ hg v ω
  have hGp : ∀ (k : Fin n) z, z ∈ complexStrip n ρ →
      (g (z + Pi.single k 1)).mulVec v = (g z).mulVec v := fun k z hz => by rw [hp k z hz]
  have hGA : ∀ z ∈ complexStrip n ρ, ‖(g z).mulVec v‖ ≤ A := fun z hz =>
    (Matrix.linfty_opNorm_mulVec _ v).trans
      ((mul_le_of_le_one_right (norm_nonneg _) hv1).trans (hA z hz))
  have hG0 : torusAverage (fun x : Fin n → ℝ => (g fun j => (x j : ℂ)).mulVec v) = 0 := by
    rw [hGavg, h0, Matrix.zero_mulVec]
  -- the candidate `U v`
  have hU := differentiableOn_cohSolutionMat hω hγ hτ hδ hδρ hg hp hA h0
  obtain ⟨hw, hwavg, hwd⟩ := mulVec_transfer hr hU v ω
  have hsol : (cohSolutionMat ω g θ).mulVec v =
      cohSolutionPi ω (fun θ => (g θ).mulVec v) θ :=
    eq_cohSolutionPi hω hγ hτ hδ hδρ hG hGp hGA hG0
      (v := fun θ => (cohSolutionMat ω g θ).mulVec v) hw
      (fun k z _ => by rw [cohSolutionMat_add_single])
      (by rw [hwavg, torusAverage_cohSolutionMat hω hγ hτ hδ hδρ hg hp hA h0,
        Matrix.zero_mulVec])
      (fun θ' hθ' => by
        rw [hwd θ' hθ', fderiv_cohSolutionMat hω hγ hτ hδ hδρ hg hp hA h0 hθ']) hθ
  rw [hsol]
  exact norm_cohSolutionPi_le hω hγ hτ hδ hδρ hG hGp hGA hG0 hθ

end MatrixData

end KAM

end
