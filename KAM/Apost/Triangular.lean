/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Tools
public import KAM.Matrix.Calculus
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# The triangular system

Blueprint Part 2, Lemma `bp:p2:triangular` (`KAM.Apost.triangular`). The solution of the
triangular system `Λξ - ∂_ω ξ = η` is an explicit construction from the data `ηᴸ, ηᴺ, T`:

* `KAM.Apost.triU`: `uᴺ = 𝓡 ηᴺ`;
* `KAM.Apost.triXi0`: `ξᴺ₀ = ⟨T⟩⁻¹ (⟨ηᴸ⟩ + ⟨T uᴺ⟩)`;
* `KAM.Apost.triXiN`: `ξᴺ = ξᴺ₀ - uᴺ`;
* `KAM.Apost.triGL`: `gᴸ = T ξᴺ - ηᴸ`;
* `KAM.Apost.triXiL`: `ξᴸ = 𝓡 gᴸ`.

The proof follows the five steps of the blueprint (`step:p2:tri-first`, `tri-xi0`, `tri-second`,
`tri-form`, `tri-real`). Each step is a helper lemma in the namespace `KAM.Apost.Triangular`,
and the node assembles them as a conjunction in the order of the blueprint items (a)–(d).
`𝓡` is `KAM.Apost.cohR`, used through `KAM.Apost.cohomological` with loss `δ` twice (on `T_r`,
then on `T_{r-δ}`).
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Apost

open KAM.Torus

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}

section Triangular

variable (ω) (ηL ηN : (Fin n → ℂ) → Fin n → ℂ) (T : (Fin n → ℂ) → Matrix (Fin n) (Fin n) ℂ)

/-- `uᴺ = 𝓡 ηᴺ`. -/
def triU : (Fin n → ℂ) → Fin n → ℂ := cohR ω ηN
/-- `ξᴺ₀ = ⟨T⟩⁻¹ (⟨ηᴸ⟩ + ⟨T uᴺ⟩)`. -/
def triXi0 : Fin n → ℂ :=
  (avg T)⁻¹ *ᵥ (avg ηL + avg (fun θ => T θ *ᵥ triU ω ηN θ))
/-- `ξᴺ = ξᴺ₀ - uᴺ`. -/
def triXiN : (Fin n → ℂ) → Fin n → ℂ := fun θ => triXi0 ω ηL ηN T - triU ω ηN θ
/-- `gᴸ = T ξᴺ - ηᴸ`. -/
def triGL : (Fin n → ℂ) → Fin n → ℂ := fun θ => T θ *ᵥ triXiN ω ηL ηN T θ - ηL θ
/-- `ξᴸ = 𝓡 gᴸ`. -/
def triXiL : (Fin n → ℂ) → Fin n → ℂ := cohR ω (triGL ω ηL ηN T)

end Triangular

namespace Triangular

/-! ### Generic helpers -/

/-- Strips are monotone in the width. -/
theorem strip_mono {ρ ρ' : ℝ} (hρ : ρ ≤ ρ') : complexStrip n ρ ⊆ complexStrip n ρ' :=
  fun _ hθ i => (hθ i).trans_le hρ

/-- Periodicity on a wide strip gives periodicity on a narrower one. -/
theorem isPeriodicOn_mono {F : Type*} {u : (Fin n → ℂ) → F} {ρ ρ' : ℝ} (hρ : ρ' ≤ ρ)
    (hu : IsPeriodicOn u ρ) : IsPeriodicOn u ρ' := fun i z hz => hu i z (strip_mono hρ hz)

/-- A function holomorphic on a strip of positive width is continuous on the real torus. -/
theorem continuous_ofReal_comp {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    {f : (Fin n → ℂ) → E} {ρ : ℝ} (hρ : 0 < ρ) (hf : DifferentiableOn ℂ f (complexStrip n ρ)) :
    Continuous (fun x : Fin n → ℝ => f (fun i => (x i : ℂ))) :=
  hf.continuousOn.comp_continuous
    (continuous_pi fun i => Complex.continuous_ofReal.comp (continuous_apply i))
    (fun x => ofReal_mem_complexStrip hρ x)

/-- A real matrix times a real vector is real. -/
theorem mulVec_im_eq_zero {ι κ : Type*} [Fintype κ] {A : Matrix ι κ ℂ} {v : κ → ℂ}
    (hA : ∀ i j, (A i j).im = 0) (hv : ∀ j, (v j).im = 0) (i : ι) :
    ((A *ᵥ v) i).im = 0 := by
  simp [Matrix.mulVec, dotProduct, Complex.im_sum, Complex.mul_im, hA, hv]

/-- The inverse of an invertible real matrix applied to a real vector is real. -/
theorem inv_mulVec_im_eq_zero {A : Matrix (Fin n) (Fin n) ℂ} (hA : ∀ i j, (A i j).im = 0)
    (hU : IsUnit A.det) {w : Fin n → ℂ} (hw : ∀ j, (w j).im = 0) (i : Fin n) :
    ((A⁻¹ *ᵥ w) i).im = 0 := by
  have hex : ∃ B : Matrix (Fin n) (Fin n) ℝ, A = B.map Complex.ofReal :=
    ⟨Matrix.of fun i j => (A i j).re,
      Matrix.ext fun i j => Complex.ext (by simp) (by simp [hA i j])⟩
  obtain ⟨B', hB'⟩ := (real_inverse).1 n A hex ((Matrix.isUnit_iff_isUnit_det A).2 hU)
  refine mulVec_im_eq_zero (fun i j => ?_) hw i
  rw [hB']
  simp

/-- Averaging commutes with applying a constant vector to a continuous matrix-valued map. -/
theorem torusAverage_mulVec_const {f : (Fin n → ℝ) → Matrix (Fin n) (Fin n) ℂ}
    (hf : Continuous f) (v : Fin n → ℂ) :
    torusAverage (fun x => f x *ᵥ v) = torusAverage f *ᵥ v := by
  let L : Matrix (Fin n) (Fin n) ℂ →L[ℝ] (Fin n → ℂ) := LinearMap.toContinuousLinearMap
    { toFun := fun A => A *ᵥ v
      map_add' := fun A B => Matrix.add_mulVec A B v
      map_smul' := fun c A => by simp [Matrix.smul_mulVec] }
  exact L.integral_comp_comm (μ := volume.restrict (Set.pi Set.univ
    fun _ : Fin n => Set.Icc (0 : ℝ) 1)) (φ := f) (integrableOn_unitCube_of_continuous hf)

/-- Averaging is additive on continuous vector-valued functions. -/
theorem avg_sub {f g : (Fin n → ℂ) → Fin n → ℂ}
    (hf : Continuous fun x : Fin n → ℝ => f (fun i => (x i : ℂ)))
    (hg : Continuous fun x : Fin n → ℝ => g (fun i => (x i : ℂ))) :
    avg (fun θ => f θ - g θ) = avg f - avg g :=
  integral_sub (integrableOn_unitCube_of_continuous hf) (integrableOn_unitCube_of_continuous hg)

/-- Averaging commutes with applying a constant vector to a continuous matrix-valued map. -/
theorem avg_mulVec_const {T : (Fin n → ℂ) → Matrix (Fin n) (Fin n) ℂ}
    (hT : Continuous fun x : Fin n → ℝ => T (fun i => (x i : ℂ))) (v : Fin n → ℂ) :
    avg (fun θ => T θ *ᵥ v) = avg T *ᵥ v :=
  torusAverage_mulVec_const hT v

section Steps

variable {ηL ηN : (Fin n → ℂ) → Fin n → ℂ} {T : (Fin n → ℂ) → Matrix (Fin n) (Fin n) ℂ}

/-! ### Step `step:p2:tri-xi0`: the constant `ξᴺ₀` -/

/-- Step `step:p2:tri-xi0`: the bound `|ξᴺ₀| ≤ σ (H_L + H_T Γ H_N)`, where `Γ H_N` bounds `uᴺ`. -/
theorem norm_triXi0_le {r δ HL HT HN Γ σ : ℝ} (hr : 0 < r) (hrδ : 0 < r - δ)
    (hHL : ∀ θ ∈ complexStrip n r, ‖ηL θ‖ ≤ HL)
    (hHT : ∀ θ ∈ complexStrip n (r - δ), ‖T θ‖ ≤ HT)
    (hU : ∀ θ ∈ complexStrip n (r - δ), ‖triU ω ηN θ‖ ≤ Γ * HN) (hσ : ‖(avg T)⁻¹‖ ≤ σ) :
    ‖triXi0 ω ηL ηN T‖ ≤ σ * (HL + HT * Γ * HN) := by
  have hHT0 : 0 ≤ HT := (norm_nonneg _).trans (hHT _ (ofReal_mem_complexStrip hrδ 0))
  have hσ0 : 0 ≤ σ := (norm_nonneg _).trans hσ
  have h1 : ‖avg ηL‖ ≤ HL := norm_torusAverage_le_of_strip_bound hr hHL
  have h2 : ‖avg (fun θ => T θ *ᵥ triU ω ηN θ)‖ ≤ HT * Γ * HN := by
    refine norm_torusAverage_le_of_strip_bound (f := fun θ => T θ *ᵥ triU ω ηN θ) hrδ ?_
    intro θ hθ
    calc ‖T θ *ᵥ triU ω ηN θ‖ ≤ ‖T θ‖ * ‖triU ω ηN θ‖ := Matrix.linfty_opNorm_mulVec _ _
      _ ≤ HT * (Γ * HN) := mul_le_mul (hHT θ hθ) (hU θ hθ) (norm_nonneg _) hHT0
      _ = HT * Γ * HN := by ring
  unfold triXi0
  calc _ ≤ ‖(avg T)⁻¹‖ * ‖avg ηL + avg (fun θ => T θ *ᵥ triU ω ηN θ)‖ :=
        Matrix.linfty_opNorm_mulVec _ _
    _ ≤ σ * (HL + HT * Γ * HN) :=
        mul_le_mul hσ ((norm_add_le _ _).trans (add_le_add h1 h2)) (norm_nonneg _) hσ0

/-- Step `step:p2:tri-xi0`: `T ξᴺ₀` averages to `⟨ηᴸ⟩ + ⟨T uᴺ⟩`, because `⟨T⟩ ξᴺ₀` is that. -/
theorem avg_mulVec_triXi0 (hTinv : IsUnit (avg T).det) :
    avg T *ᵥ triXi0 ω ηL ηN T = avg ηL + avg (fun θ => T θ *ᵥ triU ω ηN θ) := by
  rw [triXi0, Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hTinv, Matrix.one_mulVec]

/-- Step `step:p2:tri-xi0`: `⟨gᴸ⟩ = ⟨T⟩ ξᴺ₀ - ⟨T uᴺ⟩ - ⟨ηᴸ⟩ = 0`. -/
theorem avg_triGL_eq_zero (hcL : Continuous fun x : Fin n → ℝ => ηL (fun i => (x i : ℂ)))
    (hcT : Continuous fun x : Fin n → ℝ => T (fun i => (x i : ℂ)))
    (hcU : Continuous fun x : Fin n → ℝ => triU ω ηN (fun i => (x i : ℂ)))
    (hTinv : IsUnit (avg T).det) : avg (triGL ω ηL ηN T) = 0 := by
  have hcTU : Continuous fun x : Fin n → ℝ =>
      T (fun i => (x i : ℂ)) *ᵥ triU ω ηN (fun i => (x i : ℂ)) := hcT.matrix_mulVec hcU
  have hcTξ : Continuous fun x : Fin n → ℝ =>
      T (fun i => (x i : ℂ)) *ᵥ triXi0 ω ηL ηN T := hcT.matrix_mulVec continuous_const
  have hg : triGL ω ηL ηN T = fun θ => (T θ *ᵥ triXi0 ω ηL ηN T - T θ *ᵥ triU ω ηN θ) - ηL θ := by
    funext θ
    simp only [triGL, triXiN, Matrix.mulVec_sub]
  rw [hg, avg_sub (hcTξ.sub hcTU) hcL, avg_sub hcTξ hcTU, avg_mulVec_const hcT,
    avg_mulVec_triXi0 hTinv]
  abel

/-! ### Steps `step:p2:tri-first` and `step:p2:tri-form`: `ξᴺ` -/

/-- `ξᴺ = ξᴺ₀ - uᴺ` is holomorphic where `uᴺ` is. -/
theorem triXiN_differentiableOn {S : Set (Fin n → ℂ)} (hU : DifferentiableOn ℂ (triU ω ηN) S) :
    DifferentiableOn ℂ (triXiN ω ηL ηN T) S :=
  (differentiableOn_const _).sub hU

/-- `ξᴺ = ξᴺ₀ - uᴺ` is periodic where `uᴺ` is. -/
theorem triXiN_periodic {ρ : ℝ} (hU : IsPeriodicOn (triU ω ηN) ρ) :
    IsPeriodicOn (triXiN ω ηL ηN T) ρ := fun i z hz => by
  simp only [triXiN, hU i z hz]

/-- Step `step:p2:tri-form`: `∂_ω ξᴺ = -ηᴺ`, from `∂_ω uᴺ = ηᴺ`. -/
theorem fderiv_triXiN {θ : Fin n → ℂ}
    (hU : fderiv ℂ (triU ω ηN) θ (fun l => (ω l : ℂ)) = ηN θ) :
    fderiv ℂ (triXiN ω ηL ηN T) θ (fun l => (ω l : ℂ)) = -ηN θ := by
  have h : fderiv ℂ (triXiN ω ηL ηN T) θ = -fderiv ℂ (triU ω ηN) θ :=
    fderiv_const_sub (f := triU ω ηN) (x := θ) (triXi0 ω ηL ηN T)
  rw [h, _root_.neg_apply, hU]

/-- Step `step:p2:tri-first`: `|ξᴺ| ≤ |ξᴺ₀| + Γ H_N` where `|uᴺ| ≤ Γ H_N`. -/
theorem norm_triXiN_le {S : Set (Fin n → ℂ)} {Γ HN : ℝ}
    (hU : ∀ θ ∈ S, ‖triU ω ηN θ‖ ≤ Γ * HN) {θ : Fin n → ℂ} (hθ : θ ∈ S) :
    ‖triXiN ω ηL ηN T θ‖ ≤ ‖triXi0 ω ηL ηN T‖ + Γ * HN :=
  (norm_sub_le _ _).trans (add_le_add le_rfl (hU θ hθ))

/-! ### Step `step:p2:tri-second`: `gᴸ` -/

/-- `gᴸ = T ξᴺ - ηᴸ` is holomorphic where `T`, `ξᴺ`, `ηᴸ` are. -/
theorem triGL_differentiableOn {S : Set (Fin n → ℂ)} (hT : DifferentiableOn ℂ T S)
    (hξ : DifferentiableOn ℂ (triXiN ω ηL ηN T) S) (hηL : DifferentiableOn ℂ ηL S) :
    DifferentiableOn ℂ (triGL ω ηL ηN T) S :=
  (hT.matrix_mulVec hξ).sub hηL

/-- `gᴸ = T ξᴺ - ηᴸ` is periodic where `T`, `ξᴺ`, `ηᴸ` are. -/
theorem triGL_periodic {ρ : ℝ} (hT : IsPeriodicOn T ρ) (hξ : IsPeriodicOn (triXiN ω ηL ηN T) ρ)
    (hηL : IsPeriodicOn ηL ρ) : IsPeriodicOn (triGL ω ηL ηN T) ρ := fun i z hz => by
  simp only [triGL, hT i z hz, hξ i z hz, hηL i z hz]

/-- Step `step:p2:tri-second`: `|gᴸ| ≤ H_T X + H_L` where `|ξᴺ| ≤ X`. -/
theorem norm_triGL_le {S : Set (Fin n → ℂ)} {HL HT X : ℝ}
    (hHL : ∀ θ ∈ S, ‖ηL θ‖ ≤ HL) (hHT : ∀ θ ∈ S, ‖T θ‖ ≤ HT)
    (hX : ∀ θ ∈ S, ‖triXiN ω ηL ηN T θ‖ ≤ X) {θ : Fin n → ℂ} (hθ : θ ∈ S) :
    ‖triGL ω ηL ηN T θ‖ ≤ HT * X + HL := by
  have hHT0 : 0 ≤ HT := (norm_nonneg _).trans (hHT θ hθ)
  calc ‖T θ *ᵥ triXiN ω ηL ηN T θ - ηL θ‖
      ≤ ‖T θ *ᵥ triXiN ω ηL ηN T θ‖ + ‖ηL θ‖ := norm_sub_le _ _
    _ ≤ ‖T θ‖ * ‖triXiN ω ηL ηN T θ‖ + HL :=
        add_le_add (Matrix.linfty_opNorm_mulVec _ _) (hHL θ hθ)
    _ ≤ HT * X + HL := by
        gcongr
        exacts [hHT θ hθ, hX θ hθ]

/-! ### Step `step:p2:tri-real`: realness -/

/-- Step `step:p2:tri-real`: `ξᴺ₀` is real when `ηᴸ`, `uᴺ`, `T` are. -/
theorem triXi0_im_eq_zero (hcL : Continuous fun x : Fin n → ℝ => ηL (fun i => (x i : ℂ)))
    (hcT : Continuous fun x : Fin n → ℝ => T (fun i => (x i : ℂ)))
    (hcU : Continuous fun x : Fin n → ℝ => triU ω ηN (fun i => (x i : ℂ)))
    (hTinv : IsUnit (avg T).det) (hηL : IsRealVec ηL) (hU : IsRealVec (triU ω ηN))
    (hTr : IsRealMat T) (i : Fin n) : (triXi0 ω ηL ηN T i).im = 0 := by
  have hcTU : Continuous fun x : Fin n → ℝ =>
      T (fun i => (x i : ℂ)) *ᵥ triU ω ηN (fun i => (x i : ℂ)) := hcT.matrix_mulVec hcU
  have hA : ∀ i j, ((avg T) i j).im = 0 := fun i j => by
    show (torusAverage (fun x : Fin n → ℝ => T (fun i => (x i : ℂ))) i j).im = 0
    rw [torusAverage_matrix_apply hcT i j]
    exact Tools.im_integral_eq_zero fun x => hTr x i j
  have hw : ∀ j, ((avg ηL + avg (fun θ => T θ *ᵥ triU ω ηN θ)) j).im = 0 := fun j => by
    have h1 : (avg ηL j).im = 0 := by
      show (torusAverage (fun x : Fin n → ℝ => ηL (fun i => (x i : ℂ))) j).im = 0
      rw [Tools.torusAverage_vector_apply hcL j]
      exact Tools.im_integral_eq_zero fun x => hηL x j
    have h2 : (avg (fun θ => T θ *ᵥ triU ω ηN θ) j).im = 0 := by
      show (torusAverage (fun x : Fin n → ℝ =>
        T (fun i => (x i : ℂ)) *ᵥ triU ω ηN (fun i => (x i : ℂ))) j).im = 0
      rw [Tools.torusAverage_vector_apply hcTU j]
      exact Tools.im_integral_eq_zero fun x => mulVec_im_eq_zero (hTr x) (hU x) j
    rw [Pi.add_apply, Complex.add_im, h1, h2, add_zero]
  exact inv_mulVec_im_eq_zero hA hTinv hw i

/-- Step `step:p2:tri-real`: `ξᴺ = ξᴺ₀ - uᴺ` is real when `ξᴺ₀` and `uᴺ` are. -/
theorem isRealVec_triXiN (h0 : ∀ i, (triXi0 ω ηL ηN T i).im = 0) (hU : IsRealVec (triU ω ηN)) :
    IsRealVec (triXiN ω ηL ηN T) := fun x i => by
  show ((triXi0 ω ηL ηN T - triU ω ηN (fun j => (x j : ℂ))) i).im = 0
  rw [Pi.sub_apply, Complex.sub_im, h0 i, hU x i, sub_zero]

/-- Step `step:p2:tri-real`: `gᴸ = T ξᴺ - ηᴸ` is real when `T`, `ξᴺ`, `ηᴸ` are. -/
theorem isRealVec_triGL (hTr : IsRealMat T) (hξ : IsRealVec (triXiN ω ηL ηN T))
    (hηL : IsRealVec ηL) : IsRealVec (triGL ω ηL ηN T) := fun x i => by
  show ((T (fun j => (x j : ℂ)) *ᵥ triXiN ω ηL ηN T (fun j => (x j : ℂ)) -
    ηL (fun j => (x j : ℂ))) i).im = 0
  rw [Pi.sub_apply, Complex.sub_im, mulVec_im_eq_zero (hTr x) (hξ x) i, hηL x i, sub_zero]

end Steps

end Triangular

/-- Blueprint `bp:p2:triangular`, items (a)–(d); `Γ_δ = c_R γ⁻¹ δ^{-κ}`. -/
theorem triangular (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r δ : ℝ} (hr : 0 < r) (hδ : 0 < δ)
    (h2δ : 2 * δ < r) {ηL ηN : (Fin n → ℂ) → Fin n → ℂ}
    {T : (Fin n → ℂ) → Matrix (Fin n) (Fin n) ℂ} {HL HN HT σ : ℝ}
    (hηL : DifferentiableOn ℂ ηL (complexStrip n r)) (hηLp : IsPeriodicOn ηL r)
    (hηN : DifferentiableOn ℂ ηN (complexStrip n r)) (hηNp : IsPeriodicOn ηN r)
    (hHL : ∀ θ ∈ complexStrip n r, ‖ηL θ‖ ≤ HL) (hHN : ∀ θ ∈ complexStrip n r, ‖ηN θ‖ ≤ HN)
    (hηN0 : avg ηN = 0) (hT : DifferentiableOn ℂ T (complexStrip n r)) (hTp : IsPeriodicOn T r)
    (hHT : ∀ θ ∈ complexStrip n (r - δ), ‖T θ‖ ≤ HT) (hTinv : IsUnit (avg T).det)
    (hσ : ‖(avg T)⁻¹‖ ≤ σ) :
    (avg (triGL ω ηL ηN T) = 0 ∧
      DifferentiableOn ℂ (triXiN ω ηL ηN T) (complexStrip n (r - δ)) ∧
      IsPeriodicOn (triXiN ω ηL ηN T) (r - δ) ∧
      DifferentiableOn ℂ (triGL ω ηL ηN T) (complexStrip n (r - δ)) ∧
      IsPeriodicOn (triGL ω ηL ηN T) (r - δ) ∧
      DifferentiableOn ℂ (triXiL ω ηL ηN T) (complexStrip n (r - 2 * δ)) ∧
      IsPeriodicOn (triXiL ω ηL ηN T) (r - 2 * δ)) ∧
    ((∀ θ ∈ complexStrip n (r - δ), fderiv ℂ (triXiN ω ηL ηN T) θ (fun l => (ω l : ℂ)) = -ηN θ) ∧
      ∀ θ ∈ complexStrip n (r - 2 * δ),
        fderiv ℂ (triXiL ω ηL ηN T) θ (fun l => (ω l : ℂ)) = triGL ω ηL ηN T θ) ∧
    (‖triXi0 ω ηL ηN T‖ ≤ σ * (HL + HT * (cR n τ * γ⁻¹ * δ ^ (-kappa n τ)) * HN) ∧
      (∀ θ ∈ complexStrip n (r - δ),
        ‖triXiN ω ηL ηN T θ‖ ≤ ‖triXi0 ω ηL ηN T‖ + cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * HN) ∧
      (∀ X, (∀ θ ∈ complexStrip n (r - δ), ‖triXiN ω ηL ηN T θ‖ ≤ X) →
        ∀ θ ∈ complexStrip n (r - δ), ‖triGL ω ηL ηN T θ‖ ≤ HT * X + HL) ∧
      (∀ Y, (∀ θ ∈ complexStrip n (r - δ), ‖triGL ω ηL ηN T θ‖ ≤ Y) →
        ∀ θ ∈ complexStrip n (r - 2 * δ),
          ‖triXiL ω ηL ηN T θ‖ ≤ cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * Y)) ∧
    (IsRealVec ηL → IsRealVec ηN → IsRealMat T →
      (∀ i, (triXi0 ω ηL ηN T i).im = 0) ∧ IsRealVec (triXiL ω ηL ηN T) ∧
      IsRealVec (triXiN ω ηL ηN T) ∧ IsRealVec (triGL ω ηL ηN T)) := by
  have hδr : δ < r := by linarith
  have hr1 : 0 < r - δ := by linarith
  have hδr1 : δ < r - δ := by linarith
  have hsub : complexStrip n (r - δ) ⊆ complexStrip n r := Triangular.strip_mono (by linarith)
  have hcL := Triangular.continuous_ofReal_comp hr hηL
  have hcT := Triangular.continuous_ofReal_comp hr hT
  -- first cohomological equation: `uᴺ = 𝓡 ηᴺ` on `T_{r-δ}`
  obtain ⟨hvec1, -⟩ := cohomological hS hr hδ hδr
  obtain ⟨hU1, hU2, -, hU4, hU5, hU6, -⟩ := hvec1 ηN HN hηN hηNp hHN hηN0
  have hU1' : DifferentiableOn ℂ (triU ω ηN) (complexStrip n (r - δ)) := hU1
  have hU2' : IsPeriodicOn (triU ω ηN) (r - δ) := hU2
  have hU5' : ∀ θ ∈ complexStrip n (r - δ),
      ‖triU ω ηN θ‖ ≤ cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * HN := hU5
  have hcU : Continuous fun x : Fin n → ℝ => triU ω ηN (fun i => (x i : ℂ)) :=
    Triangular.continuous_ofReal_comp hr1 hU1'
  -- the triangular solution
  have hXN := fun θ (hθ : θ ∈ complexStrip n (r - δ)) =>
    Triangular.norm_triXiN_le (ω := ω) (ηL := ηL) (T := T) hU5' hθ
  have hξd := Triangular.triXiN_differentiableOn (ω := ω) (ηL := ηL) (T := T) hU1'
  have hξp := Triangular.triXiN_periodic (ω := ω) (ηL := ηL) (T := T) hU2'
  have hgd := Triangular.triGL_differentiableOn (hT.mono hsub) hξd (hηL.mono hsub)
  have hgp := Triangular.triGL_periodic (Triangular.isPeriodicOn_mono (by linarith) hTp) hξp
    (Triangular.isPeriodicOn_mono (by linarith) hηLp)
  have hgb : ∀ X, (∀ θ ∈ complexStrip n (r - δ), ‖triXiN ω ηL ηN T θ‖ ≤ X) →
      ∀ θ ∈ complexStrip n (r - δ), ‖triGL ω ηL ηN T θ‖ ≤ HT * X + HL :=
    fun X hX θ hθ => Triangular.norm_triGL_le (fun θ hθ => hHL θ (hsub hθ)) hHT hX hθ
  have hg0 := Triangular.avg_triGL_eq_zero hcL hcT hcU hTinv
  -- second cohomological equation: `ξᴸ = 𝓡 gᴸ` on `T_{r-2δ}`
  obtain ⟨hvec2, -⟩ := cohomological hS hr1 hδ hδr1
  have e2 : r - δ - δ = r - 2 * δ := by ring
  obtain ⟨hL1, hL2, -, hL4, -, hL6, -⟩ := hvec2 (triGL ω ηL ηN T) _ hgd hgp (hgb _ hXN) hg0
  rw [e2] at hL1 hL2 hL4
  refine ⟨⟨hg0, hξd, hξp, hgd, hgp, hL1, hL2⟩,
    ⟨fun θ hθ => Triangular.fderiv_triXiN (hU4 θ hθ), fun θ hθ => hL4 θ hθ⟩,
    ⟨Triangular.norm_triXi0_le hr hr1 hHL hHT hU5' hσ, hXN, hgb, fun Y hY θ hθ => ?_⟩,
    fun hηLr hηNr hTr => ?_⟩
  · obtain ⟨-, -, -, -, hL5, -, -⟩ := hvec2 (triGL ω ηL ηN T) Y hgd hgp hY hg0
    rw [e2] at hL5
    exact hL5 θ hθ
  · have hUr : IsRealVec (triU ω ηN) := hU6 hηNr
    have h0 := Triangular.triXi0_im_eq_zero hcL hcT hcU hTinv hηLr hUr hTr
    have hξr := Triangular.isRealVec_triXiN (ω := ω) (ηL := ηL) (T := T) h0 hUr
    have hgr := Triangular.isRealVec_triGL (ω := ω) (ηN := ηN) hTr hξr hηLr
    exact ⟨h0, hL6 hgr, hξr, hgr⟩

end KAM.Apost

end
