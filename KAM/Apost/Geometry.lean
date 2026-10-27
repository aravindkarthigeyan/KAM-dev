/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Exactness
public import KAM.Apost.Constants
public import KAM.Apost.Frame
public import KAM.Apost.Identities
public import KAM.Apost.Periodicity
public import KAM.Apost.Tools

/-!
# Geometry of an approximately invariant torus: the steps of `bp:p2:geometry`

Blueprint Part 2, Lemma `bp:p2:geometry` (`KAM.Apost.geometry`): for an `(r, β, ε)`-admissible `K`
and `0 < δ ≤ 1`, `2δ < r`, the bounds

* on `T_{r-δ}`: `|DE| ≤ nε/δ`, `|(DE)ᵀ| ≤ 2nε/δ`, `|∂_ω Ω_K| ≤ 2n(n+1)𝔪 ε/δ`,
  `|E_red| ≤ C_red ε/δ`;
* on `T_{r-2δ}`: `|Ω_K| ≤ C_Ω ε/(γ δ^{κ+1})`, `|E_sym| ≤ C_sym ε/(γ δ^{κ+1})`.

## The node

`KAM.Apost.geometry` assembles the steps. The two bounds on `T_{r-2δ}` pass through item (b) of
Corollary `bp:p2:cohomological` (`KAM.Apost.cohomological`), applied to `u = Ω_K` on the strip
`T_{r-δ}` with loss `δ` (so `0 < r - δ`, `δ < r - δ` and `r - δ - δ = r - 2δ`). The helper lemmas
live in the namespace `KAM.Apost.Geometry`:

* `geo_de` (step `step:p2:geo-de`): `|DE| ≤ nε/δ` and `|(DE)ᵀ| ≤ 2nε/δ` on `T_{r-δ}`;
* `geo_domegak` (step `step:p2:geo-domegak`): `|∂_ω Ω_K| ≤ 2n(n+1)𝔪 ε/δ` on `T_{r-δ}`;
* `geo_ered` (step `step:p2:geo-ered`): `|E_red| ≤ C_red ε/δ` on `T_{r-δ}`;
* `geo_omegak_inputs` and `geo_omegak_arith` (step `step:p2:geo-omegak`): the hypotheses of the
  cohomological corollary for `u = Ω_K` (holomorphy, periodicity, `⟨Ω_K⟩ = 0` by
  `KAM.Apost.exactness`, the bound on `∂_ω Ω_K`) and the constant identity
  `c_R γ⁻¹ δ^{-κ} · 2n(n+1)𝔪 ε/δ = C_Ω ε/(γ δ^{κ+1})`;
* `geo_esym_le` and `geo_esym_arith` (step `step:p2:geo-esym`): `|E_sym| ≤ 𝔪² |Ω_K|` and
  `𝔪² C_Ω = C_sym`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Apost

open KAM.Torus

namespace Geometry

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ} {r ε δ : ℝ}
  {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- `T_{r-δ} ⊆ T_r` for `δ ≥ 0`. -/
theorem complexStrip_sub_subset (hδ : 0 ≤ δ) {θ : Fin n → ℂ}
    (hθ : θ ∈ complexStrip n (r - δ)) : θ ∈ complexStrip n r := fun i =>
  lt_of_lt_of_le (hθ i) (by linarith)

/-! ### Step `step:p2:geo-de`: the derivatives of the error -/

section DE

/-- The matrix `DE` is the matrix `(∂_ℓ E_s)_{sℓ}` of the `sumVec`-image of `E`. -/
theorem errDerivMat_eq_of (θ : Fin n → ℂ) :
    errDerivMat h K ω θ = Matrix.of fun (s : Fin n ⊕ Fin n) (ℓ : Fin n) =>
      fderiv ℂ (fun y => sumVec n (invarianceError h K ω y)) θ (Pi.single ℓ 1) s := by
  ext s ℓ
  rw [errDerivMat, Identities.colMat_apply, Matrix.of_apply, fderiv_sumVec_apply]

/-- Step `step:p2:geo-de`. `E` is holomorphic on `T_r` with `|E| ≤ ε` and has `2n` components,
so Lemma `bp:p1:cauchy-strip` bounds `DE`, and Lemma `bp:p1:cauchy-corollaries` with `p = 2n`
bounds `(DE)ᵀ`, on `T_{r-δ}`. -/
theorem geo_de (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK : DifferentiableOn ℂ K (complexStrip n r)) (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hA6 : ∀ θ ∈ complexStrip n r, ‖invarianceError h K ω θ‖ ≤ ε) (hδ : 0 < δ) :
    ∀ θ ∈ complexStrip n (r - δ),
      ‖errDerivMat h K ω θ‖ ≤ n * ε / δ ∧ ‖(errDerivMat h K ω θ)ᵀ‖ ≤ 2 * n * ε / δ := by
  intro θ hθ
  have hE := FrameAux.differentiableOn_invarianceError hS hK hK𝔅
  have hf : DifferentiableOn ℂ (fun y => sumVec n (invarianceError h K ω y)) (complexStrip n r) :=
    (sumVecIso n).differentiable.comp_differentiableOn hE
  have hA : ∀ y ∈ complexStrip n r, ‖sumVec n (invarianceError h K ω y)‖ ≤ ε := fun y hy => by
    rw [norm_sumVec]
    exact hA6 y hy
  refine ⟨?_, ?_⟩
  · rw [errDerivMat, norm_colMat]
    calc ‖fderiv ℂ (invarianceError h K ω) θ‖ ≤ n * δ⁻¹ * ε :=
          (cauchy_strip hE hA6 hδ).2 θ hθ
      _ = n * ε / δ := by ring
  · have := cauchy_transpose_fintype hf hA hδ θ hθ
    rw [errDerivMat_eq_of]
    calc _ ≤ (Fintype.card (Fin n ⊕ Fin n) : ℝ) * δ⁻¹ * ε := this
      _ = 2 * n * ε / δ := by
        rw [Fintype.card_sum, Fintype.card_fin]
        push_cast
        ring

end DE

/-! ### Step `step:p2:geo-domegak`: the bound on `∂_ω Ω_K` -/

section DOmegaK

/-- Step `step:p2:geo-domegak`. By Lemma `bp:p2:frame-identities`(d) and `bp:p2:frame-basic`(b),
on `T_{r-δ}`: `|∂_ω Ω_K| ≤ |(DE)ᵀ| |L| + |Lᵀ| |DE| ≤ (2n𝔪 + 2n²𝔪) ε/δ`. -/
theorem geo_domegak (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK : DifferentiableOn ℂ K (complexStrip n r)) (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hA3 : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK)
    (hA6 : ∀ θ ∈ complexStrip n r, ‖invarianceError h K ω θ‖ ≤ ε) (hδ : 0 < δ) :
    ∀ θ ∈ complexStrip n (r - δ),
      ‖fderiv ℂ (lagrangeMat K) θ (fun l => (ω l : ℂ))‖ ≤
        2 * n * (n + 1) * mSize M σK σB σT * ε / δ := by
  intro θ hθ
  have hθr : θ ∈ complexStrip n r := complexStrip_sub_subset hδ.le hθ
  obtain ⟨hDE, hDET⟩ := geo_de hS hK hK𝔅 hA6 hδ θ hθ
  have hL : ‖tangentMat K θ‖ ≤ mSize M σK σB σT :=
    FrameAux.norm_tangentMat_le (M := M) (σB := σB) (σT := σT) (hA3 θ hθr)
  have hLT : ‖(tangentMat K θ)ᵀ‖ ≤ 2 * n * mSize M σK σB σT :=
    FrameAux.norm_transpose_tangentMat_le (M := M) (σB := σB) (σT := σT) (hA3 θ hθr)
  have h1 : ‖(errDerivMat h K ω θ)ᵀ * omegaZeroMatrix n * tangentMat K θ‖ ≤
      2 * n * ε / δ * mSize M σK σB σT := by
    refine (Matrix.linfty_opNorm_mul _ _).trans ?_
    rw [norm_mul_omegaZeroMatrix]
    exact mul_le_mul hDET hL (norm_nonneg _) ((norm_nonneg _).trans hDET)
  have h2 : ‖(tangentMat K θ)ᵀ * omegaZeroMatrix n * errDerivMat h K ω θ‖ ≤
      2 * n * mSize M σK σB σT * (n * ε / δ) := by
    refine (Matrix.linfty_opNorm_mul _ _).trans ?_
    rw [norm_mul_omegaZeroMatrix]
    exact mul_le_mul hLT hDE (norm_nonneg _) ((norm_nonneg _).trans hLT)
  rw [Identities.fi_dLagrange hS hK hK𝔅 hθr]
  calc _ ≤ ‖-((errDerivMat h K ω θ)ᵀ * omegaZeroMatrix n * tangentMat K θ)‖ +
        ‖(tangentMat K θ)ᵀ * omegaZeroMatrix n * errDerivMat h K ω θ‖ := norm_sub_le _ _
    _ ≤ 2 * n * ε / δ * mSize M σK σB σT + 2 * n * mSize M σK σB σT * (n * ε / δ) := by
        rw [norm_neg]
        exact add_le_add h1 h2
    _ = 2 * n * (n + 1) * mSize M σK σB σT * ε / δ := by ring

end DOmegaK

/-! ### Step `step:p2:geo-ered`: the bound on `E_red` -/

section ERed

/-- Step `step:p2:geo-ered`. By the block form of `E_red` (the definition of `redDefect`, item (e)
of `bp:p2:frame-identities`) and Corollary `bp:p2:matrix`(c), on `T_{r-δ}` the first block row has
norm `≤ |Nᵀ| |DE| ≤ 2n²𝔪² ε/δ` and the second `≤ |Lᵀ| |DE| + |(DE)ᵀ| |N| ≤ (2n²𝔪 + 2n𝔪²) ε/δ`;
both are `≤ C_red ε/δ`. -/
theorem geo_ered (hS : Standing n τ M σK σB σT 𝔅 h ω γ)
    (hK : DifferentiableOn ℂ K (complexStrip n r)) (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hA3 : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK)
    (hA4 : ∀ θ ∈ complexStrip n r, ‖(gramMatrix K θ)⁻¹‖ ≤ σB)
    (hA6 : ∀ θ ∈ complexStrip n r, ‖invarianceError h K ω θ‖ ≤ ε) (hδ : 0 < δ) :
    ∀ θ ∈ complexStrip n (r - δ),
      ‖redDefect h K ω θ‖ ≤ C_red n M σK σB σT * ε / δ := by
  intro θ hθ
  have hθr : θ ∈ complexStrip n r := complexStrip_sub_subset hδ.le hθ
  obtain ⟨hDE, hDET⟩ := geo_de hS hK hK𝔅 hA6 hδ θ hθ
  have hm : (1 : ℝ) ≤ mSize M σK σB σT := one_le_mSize
  have hX : 0 ≤ ε / δ := by
    have h0 : 0 ≤ ε := (norm_nonneg _).trans (hA6 θ hθr)
    positivity
  have hN : ‖normalMat K θ‖ ≤ mSize M σK σB σT ^ 2 :=
    FrameAux.norm_normalMat_le (M := M) (σT := σT) (hA3 θ hθr) (hA4 θ hθr)
  have hNT : ‖(normalMat K θ)ᵀ‖ ≤ 2 * n * mSize M σK σB σT ^ 2 :=
    FrameAux.norm_transpose_normalMat_le (M := M) (σT := σT) (hA3 θ hθr) (hA4 θ hθr)
  have hLT : ‖(tangentMat K θ)ᵀ‖ ≤ 2 * n * mSize M σK σB σT :=
    FrameAux.norm_transpose_tangentMat_le (M := M) (σB := σB) (σT := σT) (hA3 θ hθr)
  have hA : ‖(normalMat K θ)ᵀ * omegaZeroMatrix n * errDerivMat h K ω θ‖ ≤
      2 * n * mSize M σK σB σT ^ 2 * (n * ε / δ) := by
    refine (Matrix.linfty_opNorm_mul _ _).trans ?_
    rw [norm_mul_omegaZeroMatrix]
    exact mul_le_mul hNT hDE (norm_nonneg _) ((norm_nonneg _).trans hNT)
  have hC : ‖-((tangentMat K θ)ᵀ * omegaZeroMatrix n * errDerivMat h K ω θ)‖ ≤
      2 * n * mSize M σK σB σT * (n * ε / δ) := by
    rw [norm_neg]
    refine (Matrix.linfty_opNorm_mul _ _).trans ?_
    rw [norm_mul_omegaZeroMatrix]
    exact mul_le_mul hLT hDE (norm_nonneg _) ((norm_nonneg _).trans hLT)
  have hD : ‖(errDerivMat h K ω θ)ᵀ * omegaZeroMatrix n * normalMat K θ‖ ≤
      2 * n * ε / δ * mSize M σK σB σT ^ 2 := by
    refine (Matrix.linfty_opNorm_mul _ _).trans ?_
    rw [norm_mul_omegaZeroMatrix]
    exact mul_le_mul hDET hN (norm_nonneg _) ((norm_nonneg _).trans hDET)
  have hblocks := norm_fromBlocks_le ((normalMat K θ)ᵀ * omegaZeroMatrix n * errDerivMat h K ω θ)
    (0 : Matrix (Fin n) (Fin n) ℂ)
    (-((tangentMat K θ)ᵀ * omegaZeroMatrix n * errDerivMat h K ω θ))
    ((errDerivMat h K ω θ)ᵀ * omegaZeroMatrix n * normalMat K θ)
  have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hrow1 : 2 * n * mSize M σK σB σT ^ 2 * (n * ε / δ) ≤
      C_red n M σK σB σT * ε / δ := by
    have e1 : 2 * n * mSize M σK σB σT ^ 2 * (n * ε / δ) = 2 * n ^ 2 * mSize M σK σB σT ^ 2 *
        (ε / δ) := by ring
    have e2 : C_red n M σK σB σT * ε / δ = 2 * n * (n + 1) * mSize M σK σB σT ^ 2 * (ε / δ) := by
      unfold C_red
      ring
    rw [e1, e2]
    have : 0 ≤ 2 * n * mSize M σK σB σT ^ 2 * (ε / δ) := by positivity
    nlinarith
  have hrow2 : 2 * n * mSize M σK σB σT * (n * ε / δ) + 2 * n * ε / δ * mSize M σK σB σT ^ 2 ≤
      C_red n M σK σB σT * ε / δ := by
    have e1 : 2 * n * mSize M σK σB σT * (n * ε / δ) + 2 * n * ε / δ * mSize M σK σB σT ^ 2 =
        2 * n ^ 2 * mSize M σK σB σT * (ε / δ) + 2 * n * mSize M σK σB σT ^ 2 * (ε / δ) := by
      ring
    have e2 : C_red n M σK σB σT * ε / δ = 2 * n * (n + 1) * mSize M σK σB σT ^ 2 * (ε / δ) := by
      unfold C_red
      ring
    rw [e1, e2]
    have : 0 ≤ 2 * n ^ 2 * mSize M σK σB σT * (mSize M σK σB σT - 1) * (ε / δ) :=
      mul_nonneg (mul_nonneg (by positivity) (sub_nonneg.2 hm)) hX
    nlinarith
  unfold redDefect
  refine hblocks.trans (max_le ?_ ?_)
  · rw [norm_zero, add_zero]
    exact hA.trans hrow1
  · exact (add_le_add hC hD).trans hrow2

end ERed

/-! ### Step `step:p2:geo-esym`: the pointwise half -/

section ESym

/-- Step `step:p2:geo-esym` (pointwise part). By `bp:p2:frame-identities`(b) and Corollary
`bp:p2:matrix`(c), `|E_sym| = max {|Ω_K|, |B Ω_K B|} ≤ max {1, 𝔪²} |Ω_K| = 𝔪² |Ω_K|`. This part
needs no input from the cohomological equation; the bound on `Ω_K` itself is `geo-omegak`. -/
theorem geo_esym_le {θ : Fin n → ℂ} (hG : IsUnit (gramMatrix K θ).det)
    (hB : ‖(gramMatrix K θ)⁻¹‖ ≤ σB) :
    ‖symDefect K θ‖ ≤ mSize M σK σB σT ^ 2 * ‖lagrangeMat K θ‖ := by
  have hm : (1 : ℝ) ≤ mSize M σK σB σT := one_le_mSize
  have hBm : ‖(gramMatrix K θ)⁻¹‖ ≤ mSize M σK σB σT :=
    FrameAux.norm_inv_gramMatrix_le (M := M) (σK := σK) (σT := σT) hB
  rw [Identities.fi_symDefect K hG, Tools.norm_fromBlocks_diagonal]
  refine max_le ?_ ?_
  · calc ‖lagrangeMat K θ‖ = 1 * ‖lagrangeMat K θ‖ := (one_mul _).symm
      _ ≤ mSize M σK σB σT ^ 2 * ‖lagrangeMat K θ‖ :=
          mul_le_mul_of_nonneg_right (one_le_pow₀ hm) (norm_nonneg _)
  · calc ‖(gramMatrix K θ)⁻¹ * lagrangeMat K θ * (gramMatrix K θ)⁻¹‖
        ≤ ‖(gramMatrix K θ)⁻¹ * lagrangeMat K θ‖ * ‖(gramMatrix K θ)⁻¹‖ :=
          Matrix.linfty_opNorm_mul _ _
      _ ≤ (‖(gramMatrix K θ)⁻¹‖ * ‖lagrangeMat K θ‖) * ‖(gramMatrix K θ)⁻¹‖ :=
          mul_le_mul_of_nonneg_right (Matrix.linfty_opNorm_mul _ _) (norm_nonneg _)
      _ ≤ (mSize M σK σB σT * ‖lagrangeMat K θ‖) * mSize M σK σB σT := by
          gcongr
      _ = mSize M σK σB σT ^ 2 * ‖lagrangeMat K θ‖ := by ring

end ESym

/-! ### Step `step:p2:geo-omegak`: everything except the cohomological bound -/

section OmegaK

/-- The hypotheses of Corollary `bp:p2:cohomological`(b) for `u = Ω_K` on the strip `T_{r-δ}`:
`Ω_K` is holomorphic and periodic there, `⟨Ω_K⟩ = 0` (Lemma `bp:p2:exactness`), and `∂_ω Ω_K` is
bounded by `2n(n+1)𝔪 ε/δ` (step `step:p2:geo-domegak`). -/
theorem geo_omegak_inputs (hS : Standing n τ M σK σB σT 𝔅 h ω γ) (hr : 0 < r)
    (hK : DifferentiableOn ℂ K (complexStrip n r)) (hKp : IsPrimaryOnStrip K r)
    (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hA3 : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK)
    (hA6 : ∀ θ ∈ complexStrip n r, ‖invarianceError h K ω θ‖ ≤ ε) (hδ : 0 < δ) :
    DifferentiableOn ℂ (lagrangeMat K) (complexStrip n (r - δ)) ∧
      IsPeriodicOn (lagrangeMat K) (r - δ) ∧ avg (lagrangeMat K) = 0 ∧
      ∀ θ ∈ complexStrip n (r - δ),
        ‖fderiv ℂ (lagrangeMat K) θ (fun l => (ω l : ℂ))‖ ≤
          2 * n * (n + 1) * mSize M σK σB σT * ε / δ :=
  ⟨(Exactness.differentiableOn_lagrangeMat hK).mono fun _ hθ => complexStrip_sub_subset hδ.le hθ,
    fun i z hz => periodic_lagrangeMat hKp i z (complexStrip_sub_subset hδ.le hz),
    (exactness hS hr hK hKp hK𝔅).1, geo_domegak hS hK hK𝔅 hA3 hA6 hδ⟩

/-- Step `step:p2:geo-omegak`, constants: with `H = 2n(n+1)𝔪 ε/δ`,
`c_R γ⁻¹ δ^{-κ} H = C_Ω ε/(γ δ^{κ+1})`. -/
theorem geo_omegak_arith (hγ : 0 < γ) (hδ : 0 < δ) :
    cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * (2 * n * (n + 1) * mSize M σK σB σT * ε / δ) =
      C_Omega n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) := by
  have hδκ : 0 < δ ^ kappa n τ := Real.rpow_pos_of_pos hδ _
  rw [Real.rpow_neg hδ.le, Real.rpow_add_one hδ.ne']
  unfold C_Omega
  field_simp

/-- Step `step:p2:geo-esym`, constants: `𝔪² C_Ω ε/(γ δ^{κ+1}) = C_sym ε/(γ δ^{κ+1})`. -/
theorem geo_esym_arith :
    mSize M σK σB σT ^ 2 * (C_Omega n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1))) =
      C_sym n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) := by
  unfold C_sym
  ring

end OmegaK

end Geometry

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}

/-- Blueprint `bp:p2:geometry`. -/
theorem geometry (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r β ε δ : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : Admissible σK σB σT 𝔅 h ω r β ε K)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h2δ : 2 * δ < r) :
    (∀ θ ∈ complexStrip n (r - δ),
      ‖errDerivMat h K ω θ‖ ≤ n * ε / δ ∧ ‖(errDerivMat h K ω θ)ᵀ‖ ≤ 2 * n * ε / δ ∧
      ‖fderiv ℂ (lagrangeMat K) θ (fun l => (ω l : ℂ))‖ ≤
        2 * n * (n + 1) * mSize M σK σB σT * ε / δ ∧
      ‖redDefect h K ω θ‖ ≤ C_red n M σK σB σT * ε / δ) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖lagrangeMat K θ‖ ≤ C_Omega n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ∧
      ‖symDefect K θ‖ ≤ C_sym n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1))) := by
  -- `δ ≤ 1` is part of the blueprint statement; no step uses it.
  have _hδ1 : δ ≤ 1 := hδ1
  have hr := hK.r_pos
  have hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅 := fun θ hθ =>
    hK.ball_sub θ hθ (Metric.mem_ball_self hK.β_pos)
  obtain ⟨hdiff, hper, havg, hbound⟩ := Geometry.geo_omegak_inputs hS hr hK.holo hK.primary hK𝔅
    hK.deriv_le hK.error_le hδ
  have hΩ : ∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖lagrangeMat K θ‖ ≤ C_Omega n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) := by
    intro θ hθ
    have hθ' : θ ∈ complexStrip n (r - δ - δ) := by
      have : r - δ - δ = r - 2 * δ := by ring
      rw [this]
      exact hθ
    have hcoh := (cohomological hS (r := r - δ) (δ := δ) (by linarith) hδ (by linarith)).2
      (lagrangeMat K) _ hdiff hper havg hbound θ hθ'
    rwa [Geometry.geo_omegak_arith hS.gamma_pos hδ] at hcoh
  refine ⟨fun θ hθ => ?_, fun θ hθ => ?_⟩
  · obtain ⟨h1, h2⟩ := Geometry.geo_de hS hK.holo hK𝔅 hK.error_le hδ θ hθ
    exact ⟨h1, h2, hbound θ hθ, Geometry.geo_ered hS hK.holo hK𝔅 hK.deriv_le
      (fun θ hθ => (hK.gram θ hθ).2) hK.error_le hδ θ hθ⟩
  · have hθr : θ ∈ complexStrip n r := fun i => lt_of_lt_of_le (hθ i) (by linarith)
    refine ⟨hΩ θ hθ, ?_⟩
    calc ‖symDefect K θ‖ ≤ mSize M σK σB σT ^ 2 * ‖lagrangeMat K θ‖ :=
          Geometry.geo_esym_le (hK.gram θ hθr).1 (hK.gram θ hθr).2
      _ ≤ mSize M σK σB σT ^ 2 *
            (C_Omega n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1))) :=
          mul_le_mul_of_nonneg_left (hΩ θ hθ) (by positivity)
      _ = C_sym n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) := Geometry.geo_esym_arith

end KAM.Apost

end
