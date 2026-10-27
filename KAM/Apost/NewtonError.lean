/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Correction
public import KAM.Matrix.Bridges
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# The new invariance error

Blueprint Part 2, Lemma `bp:p2:newton-error` (`KAM.Apost.newton_error`). For an admissible torus
`K` and the correction `ΔK = P ξ` of `bp:p2:correction`, the Newton map is `K̄ = K + ΔK` on
`T_{r-2δ}` and `K` elsewhere (`KAM.Apost.newtonMap`). This file defines

* `KAM.Apost.sMat`: `S = I - Ω₀ E_sym`;
* `KAM.Apost.linError`: `E_lin = E_red ξ + Ω₀ E_sym ∂_ω ξ`;
* `KAM.Apost.quadRemainder`: `Δ²X = X_h(K + ΔK) - X_h(K) - A ΔK`,

and proves the four claims of the lemma. The proof follows the steps of the blueprint:

* `step:p2:ne-invert`: `sMat_spec` (Neumann series for `I - Ω₀ E_sym`; `Q P = S` is
  `KAM.Apost.Identities.fi_QP`);
* `step:p2:ne-domain`: `newtonMap_mem`;
* `step:p2:ne-expand`: `NewtonError.sumVec_invarianceError_newtonMap` (the first-order
  expansion of the new error, pointwise);
* `step:p2:ne-reduce`: `NewtonError.alg_core` (the abstract matrix identity),
  `NewtonError.xi_equation` (the triangular equation `Λ ξ - ∂_ω ξ = η`);
* `step:p2:ne-lin`, `ne-quad`, `ne-total`: `NewtonError.norm_linError_le`, `NewtonError.lin_arith`,
  `NewtonError.norm_quadRemainder_le`, `NewtonError.total_arith`.

`T_r` is `complexStrip n r`; all the matrix norms are the operator norms of
`open scoped Matrix.Norms.Operator`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Apost

open KAM.Torus

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}

open Classical in
/-- `K̄ = K + ΔK` on `T_w`, `K` elsewhere (`bp:p2:newton-error`, with `w = r - 2δ`). -/
def newtonMap (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (w : ℝ) : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ) :=
  fun θ => if θ ∈ complexStrip n w then K θ + correction h K ω θ else K θ

/-- `S = I - Ω₀ E_sym`. -/
def sMat (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (θ : Fin n → ℂ) :
    Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ :=
  1 - omegaZeroMatrix n * symDefect K θ

/-- `E_lin = E_red ξ + Ω₀ E_sym ∂_ω ξ`. -/
def linError (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (θ : Fin n → ℂ) : Fin n ⊕ Fin n → ℂ :=
  redDefect h K ω θ *ᵥ xi h K ω θ +
    (omegaZeroMatrix n * symDefect K θ) *ᵥ fderiv ℂ (xi h K ω) θ (fun l => (ω l : ℂ))

/-- `Δ²X = X_h(K + ΔK) - X_h(K) - A ΔK`. -/
def quadRemainder (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (θ : Fin n → ℂ) :
    (Fin n → ℂ) × (Fin n → ℂ) :=
  hamiltonianVectorFieldℂ h (K θ + correction h K ω θ) - hamiltonianVectorFieldℂ h (K θ) -
    fderiv ℂ (hamiltonianVectorFieldℂ h) (K θ) (correction h K ω θ)

namespace NewtonError

/-! ### Step `step:p2:ne-reduce`: the abstract matrix identity -/

section Algebra

/-- The algebra of `step:p2:ne-expand` and `step:p2:ne-reduce`, for abstract matrices.
Here `P` is the frame, `Q` the reducer, `Λ` the triangular matrix, `R = E_red`, `A = DX_h ∘ K`,
`dP = ∂_ω P`, `S = Q P` with inverse `S'`, `e` the error, `η` the data, `ξ` the unknown, `dξ`
its derivative: if `Q (A P - dP) = Λ + R`, `Q e = -η` and `Λ ξ - dξ = η`, then
`e + A P ξ - dP ξ - P dξ = P S⁻¹ (R ξ + (I - S) dξ)`. -/
theorem alg_core {ι : Type*} [Fintype ι] [DecidableEq ι]
    (P Q Λ R A dP S S' : Matrix ι ι ℂ) (e η ξ dξ : ι → ℂ)
    (hQP : Q * P = S) (hSS : S * S' = 1) (hQe : Q *ᵥ e = -η)
    (hred : Q * (A * P - dP) = Λ + R) (hη : Λ *ᵥ ξ - dξ = η) :
    e + A *ᵥ (P *ᵥ ξ) - dP *ᵥ ξ - P *ᵥ dξ = P *ᵥ (S' *ᵥ (R *ᵥ ξ + (1 - S) *ᵥ dξ)) := by
  have hQ : Q * (P * S') = 1 := by rw [← Matrix.mul_assoc, hQP, hSS]
  have hQ' : P * S' * Q = 1 := mul_eq_one_comm.1 hQ
  have h1 : Q *ᵥ (A *ᵥ (P *ᵥ ξ) - dP *ᵥ ξ) = (Λ + R) *ᵥ ξ := by
    rw [← hred, ← Matrix.mulVec_mulVec, Matrix.sub_mulVec, Matrix.mulVec_mulVec]
  have hv : Q *ᵥ (e + A *ᵥ (P *ᵥ ξ) - dP *ᵥ ξ - P *ᵥ dξ) = R *ᵥ ξ + (1 - S) *ᵥ dξ := by
    have e1 : e + A *ᵥ (P *ᵥ ξ) - dP *ᵥ ξ - P *ᵥ dξ =
        e + (A *ᵥ (P *ᵥ ξ) - dP *ᵥ ξ) - P *ᵥ dξ := by abel
    rw [e1, Matrix.mulVec_sub, Matrix.mulVec_add, h1, hQe, Matrix.mulVec_mulVec, hQP,
      Matrix.sub_mulVec, Matrix.one_mulVec, Matrix.add_mulVec, ← hη]
    abel
  calc e + A *ᵥ (P *ᵥ ξ) - dP *ᵥ ξ - P *ᵥ dξ
      = (P * S' * Q) *ᵥ (e + A *ᵥ (P *ᵥ ξ) - dP *ᵥ ξ - P *ᵥ dξ) := by rw [hQ', Matrix.one_mulVec]
    _ = P *ᵥ (S' *ᵥ (R *ᵥ ξ + (1 - S) *ᵥ dξ)) := by
      rw [← hv]
      simp only [Matrix.mulVec_mulVec, Matrix.mul_assoc]

end Algebra

/-! ### Step `step:p2:ne-invert`: invertibility of `S` -/

section Invert

/-- Step `step:p2:ne-invert`: `‖E_sym‖ ≤ 1/2` gives `S = I - Ω₀ E_sym` invertible with
`‖S⁻¹‖ ≤ 2` (Neumann series, `bp:p1:neumann` with `A = I`, and `‖Ω₀‖ ≤ 1`). -/
theorem sMat_spec (hn : 0 < n) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {θ : Fin n → ℂ}
    (hsym : ‖symDefect K θ‖ ≤ 1 / 2) : IsUnit (sMat K θ).det ∧ ‖(sMat K θ)⁻¹‖ ≤ 2 := by
  have : Nonempty (Fin n ⊕ Fin n) := ⟨Sum.inl ⟨0, hn⟩⟩
  have hΔ : ‖-(omegaZeroMatrix n * symDefect K θ)‖ ≤ 1 / 2 := by
    rw [norm_neg]
    calc ‖omegaZeroMatrix n * symDefect K θ‖
        ≤ ‖omegaZeroMatrix n‖ * ‖symDefect K θ‖ := Matrix.linfty_opNorm_mul _ _
      _ ≤ 1 * ‖symDefect K θ‖ :=
          mul_le_mul_of_nonneg_right (norm_omegaZeroMatrix_le n) (norm_nonneg _)
      _ ≤ 1 / 2 := by linarith
  have hsmall : ‖(1 : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ)⁻¹‖ *
      ‖-(omegaZeroMatrix n * symDefect K θ)‖ ≤ 1 / 2 := by
    rw [inv_one, norm_one, one_mul]
    exact hΔ
  obtain ⟨h1, h2, -⟩ := KAM.neumann isUnit_one hsmall
  have hS : sMat K θ = 1 + -(omegaZeroMatrix n * symDefect K θ) := by
    rw [sMat, sub_eq_add_neg]
  rw [hS]
  refine ⟨(Matrix.isUnit_iff_isUnit_det _).1 h1, ?_⟩
  calc _ ≤ 2 * ‖(1 : Matrix (Fin n ⊕ Fin n) (Fin n ⊕ Fin n) ℂ)⁻¹‖ := h2
    _ = 2 := by rw [inv_one, norm_one, mul_one]

end Invert

/-! ### Step `step:p2:ne-expand`: the expansion of the new error -/

section Expand

variable {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {w : ℝ}

/-- On `T_w` the Newton map is `K + ΔK`. -/
theorem newtonMap_of_mem {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n w) :
    newtonMap h K ω w θ = K θ + correction h K ω θ := by
  simp [newtonMap, hθ]

/-- Near a point of `T_w` the Newton map is `K + ΔK`. -/
theorem newtonMap_eventuallyEq {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n w) :
    newtonMap h K ω w =ᶠ[𝓝 θ] fun y => K y + correction h K ω y :=
  Filter.mem_of_superset ((isOpen_complexStrip n w).mem_nhds hθ) fun _ hy =>
    newtonMap_of_mem hy

/-- Step `step:p2:ne-domain`: if `‖ΔK(θ)‖ < β` on `T_w` and the balls `B_β(K(θ))` lie in `𝔅`, the
Newton map takes `T_w` into `𝔅`. -/
theorem newtonMap_mem {β : ℝ} {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n w)
    (hball : Metric.ball (K θ) β ⊆ 𝔅) (hcorr : ‖correction h K ω θ‖ < β) :
    newtonMap h K ω w θ ∈ 𝔅 := by
  rw [newtonMap_of_mem hθ]
  exact hball (by simpa [Metric.mem_ball, dist_eq_norm] using hcorr)

/-- The `sumVec`-image of the derivative of `ΔK = P ξ`, by the product rule. -/
theorem sumVec_fderiv_correction {θ : Fin n → ℂ} (hP : DifferentiableAt ℂ (frameMat K) θ)
    (hξ : DifferentiableAt ℂ (xi h K ω) θ) (v : Fin n → ℂ) :
    sumVec n (fderiv ℂ (correction h K ω) θ v) =
      fderiv ℂ (frameMat K) θ v *ᵥ xi h K ω θ + frameMat K θ *ᵥ fderiv ℂ (xi h K ω) θ v := by
  rw [← fderiv_sumVec_apply]
  have hfun : (fun y => sumVec n (correction h K ω y)) =
      fun y => frameMat K y *ᵥ xi h K ω y := funext Correction.sumVec_correction
  rw [hfun, fderiv_matrix_mulVec_apply hP hξ]

/-- The `ΔK = P ξ` is differentiable where `P` and `ξ` are. -/
theorem differentiableAt_correction {θ : Fin n → ℂ} (hP : DifferentiableAt ℂ (frameMat K) θ)
    (hξ : DifferentiableAt ℂ (xi h K ω) θ) : DifferentiableAt ℂ (correction h K ω) θ := by
  rw [← differentiableAt_sumVec_iff]
  have hfun : (fun y => sumVec n (correction h K ω y)) =
      fun y => frameMat K y *ᵥ xi h K ω y := funext Correction.sumVec_correction
  rw [hfun]
  exact hP.matrix_mulVec hξ

/-- Step `step:p2:ne-expand`, pointwise on `T_w`:
`Ē = E + A ΔK - ∂_ω ΔK + Δ²X`, with `A ΔK = A P ξ` and `∂_ω ΔK = (∂_ω P) ξ + P ∂_ω ξ`
(as `sumVec`-images). -/
theorem sumVec_invarianceError_newtonMap {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n w)
    (hK : DifferentiableAt ℂ K θ) (hP : DifferentiableAt ℂ (frameMat K) θ)
    (hξ : DifferentiableAt ℂ (xi h K ω) θ) :
    sumVec n (invarianceError h (newtonMap h K ω w) ω θ) =
      (sumVec n (invarianceError h K ω θ) + linMat h K θ *ᵥ (frameMat K θ *ᵥ xi h K ω θ) -
        fderiv ℂ (frameMat K) θ (fun l => (ω l : ℂ)) *ᵥ xi h K ω θ -
        frameMat K θ *ᵥ fderiv ℂ (xi h K ω) θ (fun l => (ω l : ℂ))) +
      sumVec n (quadRemainder h K ω θ) := by
  have hder : fderiv ℂ (newtonMap h K ω w) θ =
      fderiv ℂ K θ + fderiv ℂ (correction h K ω) θ := by
    rw [(newtonMap_eventuallyEq hθ).fderiv_eq]
    exact fderiv_add hK (differentiableAt_correction hP hξ)
  have hX : sumVec n (fderiv ℂ (hamiltonianVectorFieldℂ h) (K θ) (correction h K ω θ)) =
      linMat h K θ *ᵥ (frameMat K θ *ᵥ xi h K ω θ) := by
    rw [← Correction.sumVec_correction, linMat, sqMat_mulVec]
  have hquad : sumVec n (hamiltonianVectorFieldℂ h (K θ + correction h K ω θ)) =
      sumVec n (hamiltonianVectorFieldℂ h (K θ)) +
        linMat h K θ *ᵥ (frameMat K θ *ᵥ xi h K ω θ) + sumVec n (quadRemainder h K ω θ) := by
    rw [← hX, ← map_add, ← map_add, quadRemainder]
    congr 1
    abel
  unfold invarianceError
  rw [newtonMap_of_mem hθ, hder, _root_.add_apply, map_sub, map_sub, map_add, hquad,
    sumVec_fderiv_correction hP hξ]
  abel

end Expand

/-! ### Step `step:p2:ne-reduce`: the triangular equation for `ξ` -/

section Triangular

/-- Lemma `bp:p2:triangular`(b) for the data of `K`: `Λ ξ - ∂_ω ξ = η` on `T_{r-2δ}`. The data are
set up as in `KAM.Apost.correction_spec` (`step:p2:cor-data`). -/
theorem xi_equation (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r β ε δ : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : Admissible σK σB σT 𝔅 h ω r β ε K)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h2δ : 2 * δ < r) :
    ∀ θ ∈ complexStrip n (r - 2 * δ),
      triangularMat (torsion h K ω θ) *ᵥ xi h K ω θ -
        fderiv ℂ (xi h K ω) θ (fun l => (ω l : ℂ)) = eta h K ω θ := by
  have hr := hK.r_pos
  have hε0 := hK.ε_nonneg
  have hr1 : 0 < r - δ := by linarith
  have hsub : complexStrip n (r - 2 * δ) ⊆ complexStrip n (r - δ) :=
    Triangular.strip_mono (by linarith)
  have hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅 := fun θ hθ =>
    hK.ball_sub θ hθ (Metric.mem_ball_self hK.β_pos)
  have hGu : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det := fun θ hθ => (hK.gram θ hθ).1
  obtain ⟨hγω, hω1, hω2⟩ := frequency hS hK.r_pos hK.ε_le_one hK𝔅 hK.deriv_le hK.gram hK.error_le
  have hω : ‖ω‖ ≤ Theta n M σK σB σT := hω1.trans hω2
  obtain ⟨⟨-, -, -, -, -, -, -, -, -, hTd, -, -, hηd, -, hTc⟩, hnorm, hηb, hTb⟩ :=
    frame_basic hS hr hK.β_pos hK.holo hK.ball_sub hK.deriv_le hK.gram
  obtain ⟨-, hperiod, -⟩ := periodicity hS hr hK.holo hK.primary hK𝔅
  obtain ⟨-, -, -, -, hTp, -, hηp⟩ := hperiod hGu
  have hTavg : torsionAverage h K ω = avg (torsion h K ω) := torsionAverage_eq_avg h K ω hTc
  have hTinv : IsUnit (avg (torsion h K ω)).det := by
    rw [← hTavg]
    exact hK.twist.1
  have hσ : ‖(avg (torsion h K ω))⁻¹‖ ≤ σT := by
    rw [← hTavg]
    exact hK.twist.2
  have hηN0 : avg (etaN h K ω) = 0 := (exactness hS hr hK.holo hK.primary hK𝔅).2
  have hHL : ∀ θ ∈ complexStrip n r,
      ‖etaL h K ω θ‖ ≤ 2 * n * mSize M σK σB σT ^ 2 * ε := fun θ hθ =>
    (hηb ε hK.error_le θ hθ).1
  have hHN : ∀ θ ∈ complexStrip n r,
      ‖etaN h K ω θ‖ ≤ 2 * n * mSize M σK σB σT * ε := fun θ hθ =>
    (hηb ε hK.error_le θ hθ).2
  have hHT : ∀ θ ∈ complexStrip n (r - δ),
      ‖torsion h K ω θ‖ ≤ C_T n M σK σB σT / δ := fun θ hθ =>
    (hTb hω δ hδ hδ1 (by linarith) θ hθ).2
  obtain ⟨⟨-, hXNd, -, -, -, hXLd, -⟩, ⟨hdXN, hdXL⟩, -, -⟩ :=
    triangular hS hr hδ h2δ (ηL := etaL h K ω) (ηN := etaN h K ω) (T := torsion h K ω)
      (HL := 2 * n * mSize M σK σB σT ^ 2 * ε) (HN := 2 * n * mSize M σK σB σT * ε)
      (HT := C_T n M σK σB σT / δ) (σ := σT)
      (Correction.diffOn_etaL hηd) (Correction.periodic_etaL hηp)
      (Correction.diffOn_etaN hηd) (Correction.periodic_etaN hηp) hHL hHN hηN0 hTd hTp hHT
      hTinv hσ
  intro θ hθ
  have hθ1 : θ ∈ complexStrip n (r - δ) := hsub hθ
  have hopen : (complexStrip n (r - 2 * δ)) ∈ 𝓝 θ := (isOpen_complexStrip n _).mem_nhds hθ
  rw [show xi h K ω = fun θ => (Sum.elim
      (triXiL ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ)
      (triXiN ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ) : Fin n ⊕ Fin n → ℂ) from rfl,
    Correction.fderiv_sumElim_apply (hXLd.differentiableAt hopen)
      ((hXNd.mono hsub).differentiableAt hopen), hdXL θ hθ, hdXN θ hθ1, eta_eq_sumElim]
  funext s
  rcases s with i | i
  · simp [triangularMat, Matrix.fromBlocks_mulVec, triGL]
  · simp [triangularMat, Matrix.fromBlocks_mulVec]

end Triangular

/-! ### Step `step:p2:ne-quad`: the quadratic remainder -/

/-- Step `step:p2:ne-quad`: by `bp:p2:hamiltonian`(e) with `z = K(θ)`, `w = ΔK(θ)`,
`|Δ²X| ≤ M |ΔK|² ≤ M d²` if `|ΔK(θ)| ≤ d < β` and `B_β(K(θ)) ⊆ 𝔅`. -/
theorem norm_quadRemainder_le (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {β d : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {θ : Fin n → ℂ}
    (hball : Metric.ball (K θ) β ⊆ 𝔅) (hcorr : ‖correction h K ω θ‖ ≤ d) (hd : d < β) :
    ‖quadRemainder h K ω θ‖ ≤ M * d ^ 2 :=
  (ham_mvt hS (K θ) (correction h K ω θ) β hball (lt_of_le_of_lt hcorr hd)).2.trans
    (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (norm_nonneg _) hcorr 2) hS.M_pos.le)

/-! ### Steps `step:p2:ne-lin`, `step:p2:ne-total`: the arithmetic -/

section Arith

variable {γ δ ε : ℝ}

/-- `δ^(a+1)` and `δ^(κ+1) δ^(κ+2)` agree (`2κ + 3 = a + 1`). -/
theorem rpow_aExp_add_one_eq (hδ : 0 < δ) :
    δ ^ (aExp n τ + 1) = δ ^ (kappa n τ + 1) * δ ^ (kappa n τ + 2) := by
  rw [← Real.rpow_add hδ]
  congr 1
  unfold aExp
  ring

/-- `(δ^a)² = δ^(2a)`. -/
theorem rpow_aExp_sq (hδ : 0 < δ) : (δ ^ aExp n τ) ^ 2 = δ ^ (2 * aExp n τ) := by
  rw [mul_comm, Real.rpow_mul hδ.le, Real.rpow_two]

/-- Step `step:p2:ne-lin`: the two terms of `E_lin` add up to `C_lin ε² / (γ² δ^(a+1))`. -/
theorem lin_arith (hγ : 0 < γ) (hδ : 0 < δ) :
    C_red n M σK σB σT * ε / δ * (C_xi n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) +
      C_sym n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) *
        (C_g n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2))) =
      C_lin n τ M σK σB σT * ε ^ 2 / (γ ^ 2 * δ ^ (aExp n τ + 1)) := by
  have h1 : δ ^ (aExp n τ + 1) = δ ^ aExp n τ * δ := Real.rpow_add_one hδ.ne' _
  have h2 : δ ^ aExp n τ = δ ^ (kappa n τ + 1) * δ ^ (kappa n τ + 1) := by
    rw [← Real.rpow_add hδ]
    congr 1
    unfold aExp
    ring
  have h3 : δ ^ (kappa n τ + 2) = δ ^ (kappa n τ + 1) * δ := by
    rw [← Real.rpow_add_one hδ.ne']
    congr 1
    ring
  have hx : 0 < δ ^ (kappa n τ + 1) := Real.rpow_pos_of_pos hδ _
  rw [h1, h3, h2]
  unfold C_lin
  field_simp

/-- Step `step:p2:ne-total`: `|P| |S⁻¹| |E_lin| + |Δ²X| ≤ C_E ε² / (γ⁴ δ^(2a))`, given
`|P| ≤ 2𝔪²`, `|S⁻¹| ≤ 2`, `|E_lin| ≤ C_lin ε²/(γ² δ^(a+1))`, `|Δ²X| ≤ M d²` and
`d = C_ΔK ε/(γ² δ^a)`. -/
theorem total_arith (hP : Params n τ M σK σB σT) (hγ : 0 < γ) (hγΘ : γ ≤ Theta n M σK σB σT)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) :
    2 * mSize M σK σB σT ^ 2 *
        (2 * (C_lin n τ M σK σB σT * ε ^ 2 / (γ ^ 2 * δ ^ (aExp n τ + 1)))) +
      M * (C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) ^ 2 ≤
      C_E n τ M σK σB σT * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ)) := by
  have ha := eight_le_aExp hP
  have hm : 1 ≤ mSize M σK σB σT := one_le_mSize
  have hlin := zero_le_one.trans (one_le_C_lin hP)
  have hγδ : 0 < γ ^ 4 * δ ^ (2 * aExp n τ) := mul_pos (pow_pos hγ 4) (Real.rpow_pos_of_pos hδ _)
  have hδa : 0 < δ ^ aExp n τ := Real.rpow_pos_of_pos hδ _
  -- the linear term
  have hX : 0 ≤ 4 * mSize M σK σB σT ^ 2 * C_lin n τ M σK σB σT := by positivity
  have hlinear := absorb_mul_le (i := 2) (k := 4) (j := aExp n τ + 1) (J := 2 * aExp n τ)
    (c := 4 * mSize M σK σB σT ^ 2 * Theta n M σK σB σT ^ 2 * C_lin n τ M σK σB σT)
    (ε := ε ^ 2) hγ hγΘ hδ hδ1 (by norm_num) (by linarith) (sq_nonneg ε) hX
    (by norm_num; apply le_of_eq; ring)
  have hlinear' : 2 * mSize M σK σB σT ^ 2 *
        (2 * (C_lin n τ M σK σB σT * ε ^ 2 / (γ ^ 2 * δ ^ (aExp n τ + 1)))) =
      4 * mSize M σK σB σT ^ 2 * C_lin n τ M σK σB σT * ε ^ 2 /
        (γ ^ 2 * δ ^ (aExp n τ + 1)) := by ring
  -- the quadratic term
  have hquad : M * (C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) ^ 2 ≤
      mSize M σK σB σT * C_DK n τ M σK σB σT ^ 2 * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ)) := by
    have : (C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) ^ 2 =
        C_DK n τ M σK σB σT ^ 2 * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ)) := by
      rw [div_pow, mul_pow, mul_pow, ← pow_mul, rpow_aExp_sq hδ]
    rw [this, ← mul_div_assoc, mul_assoc]
    exact div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_right M_le_mSize (by positivity))
      hγδ.le
  have hE : C_E n τ M σK σB σT * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ)) =
      4 * mSize M σK σB σT ^ 2 * Theta n M σK σB σT ^ 2 * C_lin n τ M σK σB σT * ε ^ 2 /
        (γ ^ 4 * δ ^ (2 * aExp n τ)) +
      mSize M σK σB σT * C_DK n τ M σK σB σT ^ 2 * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ)) := by
    unfold C_E
    ring
  rw [hE, hlinear']
  exact add_le_add hlinear hquad

end Arith

/-! ### Norm estimates for `E_lin` and `P S⁻¹ E_lin` -/

section Norms

variable {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {θ : Fin n → ℂ}

/-- Step `step:p2:ne-lin`: `|E_lin| ≤ |E_red| |ξ| + |E_sym| |∂_ω ξ|`, using `|Ω₀| ≤ 1`. -/
theorem norm_linError_le {a b c d : ℝ} (hR : ‖redDefect h K ω θ‖ ≤ a) (hξ : ‖xi h K ω θ‖ ≤ b)
    (hE : ‖symDefect K θ‖ ≤ c) (hdξ : ‖fderiv ℂ (xi h K ω) θ (fun l => (ω l : ℂ))‖ ≤ d) :
    ‖linError h K ω θ‖ ≤ a * b + c * d := by
  have h1 : ‖redDefect h K ω θ *ᵥ xi h K ω θ‖ ≤ a * b :=
    (Matrix.linfty_opNorm_mulVec _ _).trans
      (mul_le_mul hR hξ (norm_nonneg _) ((norm_nonneg _).trans hR))
  have h2 : ‖omegaZeroMatrix n * symDefect K θ‖ ≤ c :=
    calc _ ≤ ‖omegaZeroMatrix n‖ * ‖symDefect K θ‖ := Matrix.linfty_opNorm_mul _ _
      _ ≤ 1 * ‖symDefect K θ‖ :=
          mul_le_mul_of_nonneg_right (norm_omegaZeroMatrix_le n) (norm_nonneg _)
      _ ≤ c := by linarith
  have h3 : ‖(omegaZeroMatrix n * symDefect K θ) *ᵥ
      fderiv ℂ (xi h K ω) θ (fun l => (ω l : ℂ))‖ ≤ c * d :=
    (Matrix.linfty_opNorm_mulVec _ _).trans
      (mul_le_mul h2 hdξ (norm_nonneg _) ((norm_nonneg _).trans h2))
  exact (norm_add_le _ _).trans (add_le_add h1 h3)

/-- `|P (S⁻¹ v)| ≤ a (b c)` from `|P| ≤ a`, `|S⁻¹| ≤ b`, `|v| ≤ c`. -/
theorem norm_mulVec_mulVec_le {ι : Type*} [Fintype ι] [DecidableEq ι] {P S' : Matrix ι ι ℂ}
    {v : ι → ℂ} {a b c : ℝ} (hP : ‖P‖ ≤ a) (hS : ‖S'‖ ≤ b) (hv : ‖v‖ ≤ c) :
    ‖P *ᵥ (S' *ᵥ v)‖ ≤ a * (b * c) :=
  (Matrix.linfty_opNorm_mulVec _ _).trans
    (mul_le_mul hP ((Matrix.linfty_opNorm_mulVec _ _).trans
      (mul_le_mul hS hv (norm_nonneg _) ((norm_nonneg _).trans hS))) (norm_nonneg _)
      ((norm_nonneg _).trans hP))

end Norms

end NewtonError

/-- Blueprint `bp:p2:newton-error`. -/
theorem newton_error (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r β ε δ : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : Admissible σK σB σT 𝔅 h ω r β ε K)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h2δ : 2 * δ < r)
    (hβ : C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) < β)
    (hsym : C_sym n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ≤ 1 / 2) :
    (∀ θ ∈ complexStrip n (r - 2 * δ), newtonMap h K ω (r - 2 * δ) θ ∈ 𝔅) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ), IsUnit (sMat K θ).det ∧ ‖(sMat K θ)⁻¹‖ ≤ 2) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      sumVec n (invarianceError h (newtonMap h K ω (r - 2 * δ)) ω θ) =
        frameMat K θ *ᵥ ((sMat K θ)⁻¹ *ᵥ linError h K ω θ) + sumVec n (quadRemainder h K ω θ)) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖invarianceError h (newtonMap h K ω (r - 2 * δ)) ω θ‖ ≤
        C_E n τ M σK σB σT * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ))) := by
  have hr := hK.r_pos
  have hε0 := hK.ε_nonneg
  have hP := hS.toParams
  have hγ := hS.gamma_pos
  have hn : 0 < n := by have := hP.two_le; omega
  have hsubr : complexStrip n (r - 2 * δ) ⊆ complexStrip n r :=
    Triangular.strip_mono (by linarith)
  have hsub1 : complexStrip n (r - 2 * δ) ⊆ complexStrip n (r - δ) :=
    Triangular.strip_mono (by linarith)
  have hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅 := fun θ hθ =>
    hK.ball_sub θ hθ (Metric.mem_ball_self hK.β_pos)
  have hGu : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det := fun θ hθ => (hK.gram θ hθ).1
  obtain ⟨hγω, hω1, hω2⟩ := frequency hS hr hK.ε_le_one hK𝔅 hK.deriv_le hK.gram hK.error_le
  have hγΘ : γ ≤ Theta n M σK σB σT := hγω.trans (hω1.trans hω2)
  obtain ⟨⟨-, -, -, -, -, -, -, hPd, -⟩, hnorm, -, -⟩ :=
    frame_basic hS hr hK.β_pos hK.holo hK.ball_sub hK.deriv_le hK.gram
  obtain ⟨⟨hξd, -, -, -, -, -⟩, -, hbd⟩ := correction_spec hS hK hδ hδ1 h2δ
  obtain ⟨hgeo1, hgeo2⟩ := geometry hS hK hδ hδ1 h2δ
  have hfi := frame_identities hS hr hK.holo hK𝔅 hGu
  have hxieq := NewtonError.xi_equation hS hK hδ hδ1 h2δ
  -- the invertibility of `S` (step `ne-invert`)
  have hSinv : ∀ θ ∈ complexStrip n (r - 2 * δ), IsUnit (sMat K θ).det ∧ ‖(sMat K θ)⁻¹‖ ≤ 2 :=
    fun θ hθ => NewtonError.sMat_spec hn ((hgeo2 θ hθ).2.trans hsym)
  -- the expansion and the reduction (steps `ne-expand`, `ne-reduce`)
  have hident : ∀ θ ∈ complexStrip n (r - 2 * δ),
      sumVec n (invarianceError h (newtonMap h K ω (r - 2 * δ)) ω θ) =
        frameMat K θ *ᵥ ((sMat K θ)⁻¹ *ᵥ linError h K ω θ) + sumVec n (quadRemainder h K ω θ) := by
    intro θ hθ
    have hθr := hsubr hθ
    have hopen_r := (isOpen_complexStrip n r).mem_nhds hθr
    have hopen_w := (isOpen_complexStrip n (r - 2 * δ)).mem_nhds hθ
    rw [NewtonError.sumVec_invarianceError_newtonMap hθ (hK.holo.differentiableAt hopen_r)
      (hPd.differentiableAt hopen_r) (hξd.differentiableAt hopen_w)]
    obtain ⟨-, -, -, -, hred, hQP, hQE⟩ := hfi θ hθr
    have hSS : sMat K θ * (sMat K θ)⁻¹ = 1 :=
      Matrix.mul_nonsing_inv _ (hSinv θ hθ).1
    have key := NewtonError.alg_core (frameMat K θ) (reducer K θ)
      (triangularMat (torsion h K ω θ)) (redDefect h K ω θ) (linMat h K θ)
      (fderiv ℂ (frameMat K) θ (fun l => (ω l : ℂ))) (sMat K θ) (sMat K θ)⁻¹
      (sumVec n (invarianceError h K ω θ)) (eta h K ω θ) (xi h K ω θ)
      (fderiv ℂ (xi h K ω) θ (fun l => (ω l : ℂ))) hQP hSS hQE hred (hxieq θ hθ)
    have hone : 1 - sMat K θ = omegaZeroMatrix n * symDefect K θ := by
      unfold sMat
      exact sub_sub_cancel _ _
    rw [key, hone]
    rfl
  refine ⟨fun θ hθ => ?_, hSinv, hident, fun θ hθ => ?_⟩
  · exact NewtonError.newtonMap_mem hθ (hK.ball_sub θ (hsubr hθ))
      (lt_of_le_of_lt (hbd θ hθ).2.1 hβ)
  · have hθr := hsubr hθ
    obtain ⟨-, -, -, -, -, hPn, -⟩ := hnorm θ hθr
    obtain ⟨hξb, hcb, hdξb⟩ := hbd θ hθ
    have hlin := NewtonError.norm_linError_le (h := h) (ω := ω) (K := K) (θ := θ)
      (hgeo1 θ (hsub1 hθ)).2.2.2 hξb (hgeo2 θ hθ).2 hdξb
    rw [NewtonError.lin_arith hγ hδ] at hlin
    have hq' := NewtonError.norm_quadRemainder_le hS (hK.ball_sub θ hθr) hcb hβ
    rw [← norm_sumVec, hident θ hθ]
    calc _ ≤ ‖frameMat K θ *ᵥ ((sMat K θ)⁻¹ *ᵥ linError h K ω θ)‖ +
          ‖sumVec n (quadRemainder h K ω θ)‖ := norm_add_le _ _
      _ ≤ 2 * mSize M σK σB σT ^ 2 *
            (2 * (C_lin n τ M σK σB σT * ε ^ 2 / (γ ^ 2 * δ ^ (aExp n τ + 1)))) +
          M * (C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) ^ 2 := by
        rw [norm_sumVec]
        exact add_le_add (NewtonError.norm_mulVec_mulVec_le hPn (hSinv θ hθ).2 hlin) hq'
      _ ≤ _ := NewtonError.total_arith hP hγ hγΘ hδ hδ1

end KAM.Apost

end
