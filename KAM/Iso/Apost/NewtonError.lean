/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Iso.Apost.Correction
public import KAM.Iso.Linear.Reduced
public import KAM.Iso.Linear.EnergyDefect
public import KAM.Apost.NewtonError
public import KAM.Strip.Taylor
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Module

/-!
# Part 2 (isoenergetic iteration): the new errors

Package I2-4 of `docs/tracks/I/design/PART123-LEAN-DESIGN.md`, node `bpI:p2:newton-error`
(`KAM.Iso.Apost.newton_error`). Track K's `KAM.Apost.NewtonError` is the model.
-/

@[expose] public section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Iso.Apost

open KAM KAM.Torus KAM.Apost KAM.Iso.Linear

variable {n : ℕ}

namespace NewtonErrorAux

/-! ### The bordered system of the correction -/

section Border

variable {τ M σK σB σT γ : ℝ} {D : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {E₀ r β ε δ : ℝ}
  {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- What `border_solve` says about the data of the correction, beyond `correction_core`:
the bordered equation `Λξ - ∂_ωξ + (ω; 0)ξ^ω = η` on `T_{r-2δ}`, the normal energy equation
`⟨Y ξᴺ⟩ = η^ω`, the sharp bound `|ξᴸ| ≤ c_R Ĉ_g ε/(γ² δ^a)`, and the holomorphy of the components
of `ξ`. -/
theorem border_facts (hS : Setting n τ M σK σB σT D H ω γ)
    (hK : AdmissibleNoTwist σK σB D H ω r β ε K)
    (htw : IsUnit (KAM.Iso.extendedTorsionAverage H K ω).det ∧
      ‖(KAM.Iso.extendedTorsionAverage H K ω)⁻¹‖ ≤ σT)
    (hE : ‖KAM.Iso.energyAverage H K - (E₀ : ℂ)‖ ≤ ε) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (h2δ : 2 * δ < r) :
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      bordOp H K ω (isoXi H K ω E₀) (isoXiOmega H K ω E₀) θ = eta H K ω θ) ∧
    avg (fun θ => energyRow H K θ ⬝ᵥ bordXiN ω (isoBordData H K ω E₀) θ) =
      -(KAM.Iso.energyAverage H K - (E₀ : ℂ)) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ), ‖bordXiL ω (isoBordData H K ω E₀) 0 θ‖ ≤
      cR n τ * hatCg n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) ∧
    DifferentiableOn ℂ (bordXiL ω (isoBordData H K ω E₀) 0) (complexStrip n (r - 2 * δ)) ∧
    DifferentiableOn ℂ (bordXiN ω (isoBordData H K ω E₀)) (complexStrip n (r - 2 * δ)) := by
  have hSt := hS.toStanding
  have hP := hSt.toParams
  have hr := hK.r_pos
  have hε0 := hK.ε_nonneg
  have hγ := hSt.gamma_pos
  have hsub : complexStrip n (r - 2 * δ) ⊆ complexStrip n (r - δ) :=
    Triangular.strip_mono (by linarith)
  have hsubr : complexStrip n (r - δ) ⊆ complexStrip n r := Triangular.strip_mono (by linarith)
  have hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ D := fun θ hθ =>
    hK.ball_sub θ hθ (Metric.mem_ball_self hK.β_pos)
  have hGu : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det := fun θ hθ => (hK.gram θ hθ).1
  obtain ⟨hγω, hω1, hω2⟩ := frequency hSt hr hK.ε_le_one hK𝔅 hK.deriv_le hK.gram hK.error_le
  have hω : ‖ω‖ ≤ Theta n M σK σB σT := hω1.trans hω2
  have hγΘ : γ ≤ Theta n M σK σB σT := hγω.trans hω
  obtain ⟨-, -, hgeoN, hgeoXT⟩ := geometry_noA5 hS hK hδ hδ1 h2δ
  obtain ⟨⟨-, -, -, -, -, -, -, -, -, hTd, -, -, hηd, -, hTc⟩, -, -, -⟩ :=
    frame_basic hSt hr hK.β_pos hK.holo hK.ball_sub hK.deriv_le hK.gram
  obtain ⟨-, hperiod, -⟩ := periodicity hSt hr hK.holo hK.primary hK𝔅
  obtain ⟨-, -, -, -, hTp, -, hηp⟩ := hperiod hGu
  obtain ⟨⟨hYd, hYp, -, -, -, -, -, havg, -⟩, hYbd⟩ :=
    extended_basic hS hr hK.holo hK.primary hK.real hK𝔅 hGu
  have hηN0 : avg (etaN H K ω) = 0 := (exactness hSt hr hK.holo hK.primary hK𝔅).2
  have hbord : bordAvg ω (isoBordData H K ω E₀) = KAM.Iso.extendedTorsionAverage H K ω := by
    rw [havg, torsionAverage_eq_avg H K ω hTc]
    rfl
  have hinv : IsUnit (bordAvg ω (isoBordData H K ω E₀)).det := by
    rw [hbord]
    exact htw.1
  have hσ : ‖(bordAvg ω (isoBordData H K ω E₀))⁻¹‖ ≤ σT := by
    rw [hbord]
    exact htw.2
  have hHL : ∀ θ ∈ complexStrip n r,
      ‖etaL H K ω θ‖ ≤ 2 * n * mSize M σK σB σT ^ 2 * ε := fun θ hθ => (hgeoN θ hθ).1
  have hHN : ∀ θ ∈ complexStrip n r,
      ‖etaN H K ω θ‖ ≤ 2 * n * mSize M σK σB σT * ε := fun θ hθ => (hgeoN θ hθ).2.1
  have hHT : ∀ θ ∈ complexStrip n (r - δ),
      ‖torsion H K ω θ‖ ≤ C_T n M σK σB σT / δ := fun θ hθ => (hgeoXT hω θ hθ).2
  have hHY : ∀ θ ∈ complexStrip n (r - δ),
      ∑ b, ‖energyRow H K θ b‖ ≤ mSize M σK σB σT ^ 3 := fun θ hθ =>
    ((hYbd σK σB (fun θ hθ => ⟨hK.deriv_le θ hθ, (hK.gram θ hθ).2⟩) θ (hsubr hθ)).1).trans
      (CorrectionAux.Msigma_le_mSize hP)
  have hηωe : ‖(isoBordData H K ω E₀).ηω‖ ≤ ε := by
    show ‖-(KAM.Iso.energyAverage H K - (E₀ : ℂ))‖ ≤ ε
    rw [norm_neg]
    exact hE
  obtain ⟨⟨hXNd, -, hGd, -, -, hXLd, -⟩, ⟨hb1, hb2, hb3⟩, ⟨hcs, hcS⟩, -, -⟩ :=
    border_solve hγ (cohomological_tau_nonneg hSt) hSt.dio hr hδ h2δ (isoBordData H K ω E₀)
      (HL := 2 * n * mSize M σK σB σT ^ 2 * ε) (HN := 2 * n * mSize M σK σB σT * ε)
      (HT := C_T n M σK σB σT / δ) (HY := mSize M σK σB σT ^ 3) (σ := σT)
      (Correction.diffOn_etaL hηd) (Correction.periodic_etaL hηp)
      (Correction.diffOn_etaN hηd) (Correction.periodic_etaN hηp) hHL hHN hηN0 hTd hTp hYd hYp
      hHT hHY hinv hσ 0
  have hS0 : ‖bordSol ω (isoBordData H K ω E₀)‖ ≤
      hatCS n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) :=
    hcs.trans (Arith.sStar_arith hP hγ hγΘ hδ hδ1 hε0 (norm_nonneg _) hηωe)
  have hGL : ∀ θ ∈ complexStrip n (r - δ), ‖bordGL ω (isoBordData H K ω E₀) θ‖ ≤
      hatCg n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2)) := fun θ hθ =>
    (((hcS _ hS0).1 θ hθ).2).trans (Arith.gL_arith hP hγ hγΘ hδ hδ1 hε0 hω)
  refine ⟨fun θ hθ => ?_, hb3, fun θ hθ => ?_, hXLd, hXNd.mono hsub⟩
  · have hopen : complexStrip n (r - 2 * δ) ∈ 𝓝 θ := (isOpen_complexStrip n _).mem_nhds hθ
    have hdL := hb1 θ hθ
    have hdN : fderiv ℂ (bordXiN ω (isoBordData H K ω E₀)) θ (fun l => (ω l : ℂ)) =
        -(etaN H K ω θ) := neg_eq_iff_eq_neg.mp (hb2 θ (hsub hθ))
    have hxi : isoXi H K ω E₀ = fun θ => (Sum.elim (bordXiL ω (isoBordData H K ω E₀) 0 θ)
        (bordXiN ω (isoBordData H K ω E₀) θ) : Fin n ⊕ Fin n → ℂ) := rfl
    unfold bordOp
    rw [hxi, Correction.fderiv_sumElim_apply (hXLd.differentiableAt hopen)
        ((hXNd.mono hsub).differentiableAt hopen), hdN, eta_eq_sumElim]
    funext s
    rcases s with i | i
    · have := congrFun hdL i
      simp only [isoXiOmega, triangularMat, Matrix.fromBlocks_mulVec, Pi.add_apply, Pi.sub_apply,
        Pi.smul_apply, Sum.elim_inl, smul_eq_mul]
      simp only [Matrix.zero_mulVec] at this ⊢
      simpa [bordXiN, isoBordData, isoXi] using this
    · simp [triangularMat, Matrix.fromBlocks_mulVec, isoXiOmega]
  · have h := (hcS _ hS0).2 _ hGL θ hθ
    rw [sub_zero] at h
    exact h.trans (le_of_eq (Arith.xiL_eq hγ hδ _))

end Border

/-! ### The expansion of the new error -/

section Expand

variable {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
  {ωstar : Fin n → ℝ} {E₀ s w : ℝ}

/-- On `T_w` the Newton map is `K + ΔK`. -/
theorem isoNewtonMap_of_mem {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n w) :
    isoNewtonMap H K ωstar E₀ s w θ = K θ + isoCorrection H K (s • ωstar) E₀ θ := by
  simp [isoNewtonMap, hθ]

/-- Near a point of `T_w` the Newton map is `K + ΔK`. -/
theorem isoNewtonMap_eventuallyEq {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n w) :
    isoNewtonMap H K ωstar E₀ s w =ᶠ[𝓝 θ] fun y => K y + isoCorrection H K (s • ωstar) E₀ y :=
  Filter.mem_of_superset ((isOpen_complexStrip n w).mem_nhds hθ) fun _ hy =>
    isoNewtonMap_of_mem hy

/-- `ΔK = P ξ` is differentiable where `P` and `ξ` are. -/
theorem differentiableAt_isoCorrection {ω : Fin n → ℝ} {θ : Fin n → ℂ}
    (hP : DifferentiableAt ℂ (frameMat K) θ) (hξ : DifferentiableAt ℂ (isoXi H K ω E₀) θ) :
    DifferentiableAt ℂ (isoCorrection H K ω E₀) θ := by
  rw [← differentiableAt_sumVec_iff]
  have hfun : (fun y => sumVec n (isoCorrection H K ω E₀ y)) =
      fun y => frameMat K y *ᵥ isoXi H K ω E₀ y := funext CorrectionAux.sumVec_isoCorrection
  rw [hfun]
  exact hP.matrix_mulVec hξ

/-- Step `ne-expand`, pointwise on `T_w`, at the new frequency `ω̄ = s̄ ω* = (1 - ξ^ω) ω`:
`Ē = Res + Δ²X + ξ^ω ∂_ω ΔK`, with `Res = A ΔK - ∂_ω ΔK + L ω ξ^ω + E` (`isoResidual`). -/
theorem sumVec_invarianceError_isoNewtonMap {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n w)
    (hK : DifferentiableAt ℂ K θ) (hP : DifferentiableAt ℂ (frameMat K) θ)
    (hξ : DifferentiableAt ℂ (isoXi H K (s • ωstar) E₀) θ)
    (hre : (isoXiOmega H K (s • ωstar) E₀).im = 0) :
    sumVec n (invarianceError H (isoNewtonMap H K ωstar E₀ s w)
        (isoNewS H K ωstar E₀ s • ωstar) θ) =
      isoResidual H K (s • ωstar) (isoXi H K (s • ωstar) E₀) (isoXiOmega H K (s • ωstar) E₀) θ +
        sumVec n (isoQuadX H K (s • ωstar) E₀ θ) +
        isoXiOmega H K (s • ωstar) E₀ •
          sumVec n (fderiv ℂ (isoCorrection H K (s • ωstar) E₀) θ
            (fun l => ((s • ωstar) l : ℂ))) := by
  have hdiffΔ := differentiableAt_isoCorrection (E₀ := E₀) hP hξ
  have hder : fderiv ℂ (isoNewtonMap H K ωstar E₀ s w) θ =
      fderiv ℂ K θ + fderiv ℂ (isoCorrection H K (s • ωstar) E₀) θ := by
    rw [(isoNewtonMap_eventuallyEq hθ).fderiv_eq]
    exact fderiv_add hK hdiffΔ
  have hX : sumVec n (fderiv ℂ (hamiltonianVectorFieldℂ H) (K θ)
      (isoCorrection H K (s • ωstar) E₀ θ)) =
      linMat H K θ *ᵥ (frameMat K θ *ᵥ isoXi H K (s • ωstar) E₀ θ) := by
    rw [← CorrectionAux.sumVec_isoCorrection, linMat, sqMat_mulVec]
  have hquad : sumVec n (hamiltonianVectorFieldℂ H (K θ + isoCorrection H K (s • ωstar) E₀ θ)) =
      sumVec n (hamiltonianVectorFieldℂ H (K θ)) +
        linMat H K θ *ᵥ (frameMat K θ *ᵥ isoXi H K (s • ωstar) E₀ θ) +
        sumVec n (isoQuadX H K (s • ωstar) E₀ θ) := by
    rw [← hX, ← map_add, ← map_add, isoQuadX]
    congr 1
    abel
  have hdΔ : sumVec n (fderiv ℂ (isoCorrection H K (s • ωstar) E₀) θ
      (fun l => ((s • ωstar) l : ℂ))) =
      fderiv ℂ (fun y => frameMat K y *ᵥ isoXi H K (s • ωstar) E₀ y) θ
        (fun l => ((s • ωstar) l : ℂ)) := by
    rw [← fderiv_sumVec_apply]
    congr 2
    exact funext CorrectionAux.sumVec_isoCorrection
  have hdK : sumVec n (fderiv ℂ K θ (fun l => ((s • ωstar) l : ℂ))) =
      tangentMat K θ *ᵥ (fun l => ((s • ωstar) l : ℂ)) := (colMat_mulVec _ _).symm
  rw [isoResidual, ← hdΔ]
  unfold invarianceError
  rw [isoNewtonMap_of_mem hθ, hder, isoNewS_smul_eq hre, _root_.add_apply, map_sub, map_add,
    hquad]
  simp only [map_smul, map_sub, hdK]
  module

end Expand

/-! ### Step `ne-reduce`: `Res = P S⁻¹ E_lin` -/

section Reduce

variable {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
  {ω : Fin n → ℝ} {ξ : (Fin n → ℂ) → Fin n ⊕ Fin n → ℂ} {ξω : ℂ} {θ : Fin n → ℂ}

/-- If `Q Res = E_lin` and `S = Q P` is invertible, then `Res = P S⁻¹ E_lin` (`Q⁻¹ = P S⁻¹`). -/
theorem isoResidual_eq_frame
    (hQ : reducer K θ *ᵥ isoResidual H K ω ξ ξω θ = isoLinError H K ω ξ ξω θ)
    (hSu : IsUnit (sMat K θ).det) :
    isoResidual H K ω ξ ξω θ =
      frameMat K θ *ᵥ ((sMat K θ)⁻¹ *ᵥ isoLinError H K ω ξ ξω θ) := by
  have hQP : reducer K θ * frameMat K θ = sMat K θ := Identities.fi_QP (K := K) (θ := θ)
  have hSS : sMat K θ * (sMat K θ)⁻¹ = 1 := Matrix.mul_nonsing_inv _ hSu
  have h1 : reducer K θ * (frameMat K θ * (sMat K θ)⁻¹) = 1 := by
    rw [← Matrix.mul_assoc, hQP, hSS]
  have h2 : frameMat K θ * (sMat K θ)⁻¹ * reducer K θ = 1 := mul_eq_one_comm.1 h1
  calc isoResidual H K ω ξ ξω θ
      = (frameMat K θ * (sMat K θ)⁻¹ * reducer K θ) *ᵥ isoResidual H K ω ξ ξω θ := by
        rw [h2, Matrix.one_mulVec]
    _ = frameMat K θ *ᵥ ((sMat K θ)⁻¹ *ᵥ (reducer K θ *ᵥ isoResidual H K ω ξ ξω θ)) := by
        simp only [Matrix.mulVec_mulVec, Matrix.mul_assoc]
    _ = _ := by rw [hQ]

end Reduce

end NewtonErrorAux

/-! ### The identity for the new error -/

section Identity

variable {τ M σK σB σT σω ν γ : ℝ} {ωstar : Fin n → ℝ} {D : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {E₀ r β ε δ s : ℝ}
  {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- Step `ne-invert`: `S = I - Ω₀ E_sym` is invertible with `‖S⁻¹‖ ≤ 2` on `T_{r-2δ}`. -/
theorem sMat_bounds (hS : IsoStanding n τ M σK σB σT σω ν ωstar D H γ)
    (hK : IsoAdmissible σK σB σT D H ωstar E₀ r β ε s K) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (h2δ : 2 * δ < r) (hsym : C_sym n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ≤ 1 / 2) :
    ∀ θ ∈ complexStrip n (r - 2 * δ), IsUnit (sMat K θ).det ∧ ‖(sMat K θ)⁻¹‖ ≤ 2 := by
  have hn : 0 < n := by have := hS.two_le; omega
  obtain ⟨-, hgeo2, -, -⟩ :=
    geometry_noA5 (hS.setting hK.s_gt.le) hK.toAdmissibleNoTwist hδ hδ1 h2δ
  exact fun θ hθ => NewtonError.sMat_spec hn ((hgeo2 θ hθ).2.trans hsym)

/-- Steps `ne-expand`, `ne-reduce`: `Ē = P S⁻¹ E_lin + Δ²X + ξ^ω ∂_ω ΔK` on `T_{r-2δ}`. -/
theorem sumVec_error_eq (hS : IsoStanding n τ M σK σB σT σω ν ωstar D H γ)
    (hK : IsoAdmissible σK σB σT D H ωstar E₀ r β ε s K) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (h2δ : 2 * δ < r) (hsym : C_sym n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ≤ 1 / 2) :
    ∀ θ ∈ complexStrip n (r - 2 * δ),
      sumVec n (invarianceError H (isoNewtonMap H K ωstar E₀ s (r - 2 * δ))
          (isoNewS H K ωstar E₀ s • ωstar) θ) =
        frameMat K θ *ᵥ ((sMat K θ)⁻¹ *ᵥ isoLinError H K (s • ωstar)
          (isoXi H K (s • ωstar) E₀) (isoXiOmega H K (s • ωstar) E₀) θ) +
        sumVec n (isoQuadX H K (s • ωstar) E₀ θ) +
        isoXiOmega H K (s • ωstar) E₀ • sumVec n
          (fderiv ℂ (isoCorrection H K (s • ωstar) E₀) θ (fun l => ((s • ωstar) l : ℂ))) := by
  have hSet := hS.setting hK.s_gt.le
  have hKN := hK.toAdmissibleNoTwist
  have hr := hK.r_pos
  have hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ D := fun θ hθ =>
    hK.ball_sub θ hθ (Metric.mem_ball_self hK.β_pos)
  have hGu : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det := fun θ hθ => (hK.gram θ hθ).1
  obtain ⟨⟨hξd, -, -, -, -, -, hre⟩, -⟩ := correction hS hK hδ hδ1 h2δ
  obtain ⟨hbord, -, -, -, -⟩ :=
    NewtonErrorAux.border_facts hSet hKN hK.twist hK.energy_le hδ hδ1 h2δ
  have hPd := Identities.differentiableOn_frameMat hK.holo hGu
  have hred := reduced hSet hr hK.holo hK𝔅 hGu (r' := r - 2 * δ) (by linarith) (by linarith) hξd
    (isoXiOmega H K (s • ωstar) E₀)
  have hSb := sMat_bounds hS hK hδ hδ1 h2δ hsym
  intro θ hθ
  have hθr : θ ∈ complexStrip n r := Triangular.strip_mono (by linarith) hθ
  have hopen_r := (isOpen_complexStrip n r).mem_nhds hθr
  have hopen_w := (isOpen_complexStrip n (r - 2 * δ)).mem_nhds hθ
  rw [NewtonErrorAux.sumVec_invarianceError_isoNewtonMap hθ (hK.holo.differentiableAt hopen_r)
    (hPd.differentiableAt hopen_r) (hξd.differentiableAt hopen_w) hre,
    NewtonErrorAux.isoResidual_eq_frame (hred.2.2.1 θ hθ (hbord θ hθ)) (hSb θ hθ).1]

end Identity

end KAM.Iso.Apost
