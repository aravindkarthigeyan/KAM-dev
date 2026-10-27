/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Calculus.ContDiff.Comp
public import Mathlib.Analysis.Calculus.FDeriv.Prod
public import Mathlib.Analysis.Calculus.FDeriv.Mul
public import Mathlib.Analysis.Calculus.FDeriv.CompCLM
public import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Nekhoroshev.Defs.IsStrictlyQuasiConvex
public import KAM.Frozen.Nekhoroshev.Defs.RealPart

/-!
# The isoenergetic derivative of a strictly quasi-convex integrable part

Blueprint `bpN:p2:qc-deriv`, `qc-kernel`, `qc-bij`: for `g` of class `C²` near `I` with
gradient `ν(I) ≠ 0` and Hessian positive on `ν(I)^⊥`, the map
`(I, λ) ↦ (g I, λ ∇g(I))` has bijective derivative at `(I, λ)` whenever `λ > 0`.
-/

public section

namespace KAM.Nekhoroshev

open scoped ContDiff

variable {n : ℕ}

/-- The derivative of `(I, λ) ↦ (g I, λ ∇g I)`. -/
theorem hasFDerivAt_isoenergetic (g : (Fin n → ℝ) → ℝ) {I : Fin n → ℝ} (lam : ℝ)
    (hg : ContDiffAt ℝ 2 g I) :
    HasFDerivAt (fun p : (Fin n → ℝ) × ℝ =>
        (g p.1, p.2 • (fun i => fderiv ℝ g p.1 (Pi.single i 1))))
      ((fderiv ℝ g I).comp (ContinuousLinearMap.fst ℝ _ _) |>.prod
        (lam • (ContinuousLinearMap.pi fun i =>
            (ContinuousLinearMap.apply ℝ ℝ (Pi.single i 1 : Fin n → ℝ)).comp
              (fderiv ℝ (fderiv ℝ g) I)).comp (ContinuousLinearMap.fst ℝ _ _) +
          (ContinuousLinearMap.snd ℝ (Fin n → ℝ) ℝ).smulRight
            (fun i => fderiv ℝ g I (Pi.single i 1))))
      (I, lam) := by
  have hg1 : HasFDerivAt g (fderiv ℝ g I) I :=
    (hg.differentiableAt (by norm_num)).hasFDerivAt
  have hdg : HasFDerivAt (fderiv ℝ g) (fderiv ℝ (fderiv ℝ g) I) I :=
    ((ContDiffAt.fderiv_right hg (m := 1) (by norm_num)).differentiableAt (by norm_num)).hasFDerivAt
  have hν : HasFDerivAt (fun J : Fin n → ℝ => (fun i => fderiv ℝ g J (Pi.single i 1)))
      (ContinuousLinearMap.pi fun i =>
        (ContinuousLinearMap.apply ℝ ℝ (Pi.single i 1 : Fin n → ℝ)).comp
          (fderiv ℝ (fderiv ℝ g) I)) I := by
    rw [hasFDerivAt_pi]
    intro i
    exact (ContinuousLinearMap.apply ℝ ℝ (Pi.single i 1 : Fin n → ℝ)).hasFDerivAt.comp I hdg
  have h1 : HasFDerivAt (fun p : (Fin n → ℝ) × ℝ => g p.1)
      ((fderiv ℝ g I).comp (ContinuousLinearMap.fst ℝ _ _)) (I, lam) :=
    hg1.comp (I, lam) (hasFDerivAt_fst)
  have h2 := (hasFDerivAt_snd (𝕜 := ℝ) (E := Fin n → ℝ) (F := ℝ) (p := (I, lam))).smul
    (hν.comp (I, lam) (hasFDerivAt_fst (𝕜 := ℝ) (E := Fin n → ℝ) (F := ℝ) (p := (I, lam))))
  exact h1.prodMk h2

theorem clm_apply_eq_sum (φ : (Fin n → ℝ) →L[ℝ] ℝ) (v : Fin n → ℝ) :
    φ v = ∑ i, φ (Pi.single i 1) * v i := by
  conv_lhs => rw [← Finset.univ_sum_single v]
  rw [map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  have : (Pi.single i (v i) : Fin n → ℝ) = v i • Pi.single i 1 := by
    rw [← Pi.single_smul']; simp
  rw [this, map_smul, smul_eq_mul, mul_comm]

/-- Injectivity of the isoenergetic derivative, abstractly. -/
theorem isoenergetic_injective (g : (Fin n → ℝ) → ℝ) {I : Fin n → ℝ} {lam m : ℝ}
    (hlam : 0 < lam) (hm : 0 < m) (hg : ContDiffAt ℝ 2 g I)
    (hν : (fun i => fderiv ℝ g I (Pi.single i 1)) ≠ 0)
    (hQ : ∀ v : Fin n → ℝ, (∑ i, fderiv ℝ g I (Pi.single i 1) * v i) = 0 →
      m * ‖v‖ ^ 2 ≤ fderiv ℝ (fderiv ℝ g) I v v) :
    Function.Injective (fderiv ℝ (fun p : (Fin n → ℝ) × ℝ =>
        (g p.1, p.2 • (fun i => fderiv ℝ g p.1 (Pi.single i 1)))) (I, lam)) := by
  rw [(hasFDerivAt_isoenergetic g lam hg).fderiv, injective_iff_map_eq_zero]
  rintro ⟨v, μ⟩ h
  simp only [ContinuousLinearMap.prod_apply, ContinuousLinearMap.coe_comp, Function.comp_apply,
    ContinuousLinearMap.coe_fst', add_apply, smul_apply,
    ContinuousLinearMap.coe_snd', ContinuousLinearMap.smulRight_apply,
    Prod.mk_eq_zero] at h
  obtain ⟨h1, h2⟩ := h
  have hcomp : ∀ i, lam * fderiv ℝ (fderiv ℝ g) I v (Pi.single i 1) +
      μ * fderiv ℝ g I (Pi.single i 1) = 0 := fun i => by
    have := congrFun h2 i
    simpa using this
  have hperp : (∑ i, fderiv ℝ g I (Pi.single i 1) * v i) = 0 := by
    rw [← clm_apply_eq_sum]; exact h1
  have key : lam * fderiv ℝ (fderiv ℝ g) I v v = 0 := by
    have hs : ∑ i, (lam * fderiv ℝ (fderiv ℝ g) I v (Pi.single i 1) +
        μ * fderiv ℝ g I (Pi.single i 1)) * v i = 0 :=
      Finset.sum_eq_zero fun i _ => by rw [hcomp i, zero_mul]
    simp only [add_mul, Finset.sum_add_distrib, mul_assoc, ← Finset.mul_sum] at hs
    rw [clm_apply_eq_sum (fderiv ℝ (fderiv ℝ g) I v) v]
    rw [hperp, mul_zero, add_zero] at hs
    exact hs
  have hv : v = 0 := by
    have hle := hQ v hperp
    have h0 : fderiv ℝ (fderiv ℝ g) I v v = 0 := by
      rcases mul_eq_zero.1 key with h | h
      · exact absurd h hlam.ne'
      · exact h
    rw [h0] at hle
    have : ‖v‖ ^ 2 ≤ 0 := by nlinarith
    have : ‖v‖ = 0 := by nlinarith [norm_nonneg v]
    exact norm_eq_zero.1 this
  subst hv
  have hμ : μ = 0 := by
    by_contra hne
    apply hν
    funext i
    have := hcomp i
    simp only [map_zero, zero_apply, mul_zero, zero_add] at this
    rcases mul_eq_zero.1 this with h | h
    · exact absurd h hne
    · exact h
  subst hμ
  rfl

/-- Bijectivity of the isoenergetic derivative (`bpN:p2:qc-bij`). -/
theorem isoenergetic_bijective (g : (Fin n → ℝ) → ℝ) {I : Fin n → ℝ} {lam m : ℝ}
    (hlam : 0 < lam) (hm : 0 < m) (hg : ContDiffAt ℝ 2 g I)
    (hν : (fun i => fderiv ℝ g I (Pi.single i 1)) ≠ 0)
    (hQ : ∀ v : Fin n → ℝ, (∑ i, fderiv ℝ g I (Pi.single i 1) * v i) = 0 →
      m * ‖v‖ ^ 2 ≤ fderiv ℝ (fderiv ℝ g) I v v) :
    Function.Bijective (fderiv ℝ (fun p : (Fin n → ℝ) × ℝ =>
        (g p.1, p.2 • (fun i => fderiv ℝ g p.1 (Pi.single i 1)))) (I, lam)) := by
  have hinj := isoenergetic_injective g hlam hm hg hν hQ
  have hdim : Module.finrank ℝ ((Fin n → ℝ) × ℝ) = Module.finrank ℝ (ℝ × (Fin n → ℝ)) := by
    simp only [Module.finrank_prod, Module.finrank_fin_fun, Module.finrank_self]
    omega
  refine ⟨hinj, ?_⟩
  exact (LinearMap.injective_iff_surjective_of_finrank_eq_finrank hdim
    (f := (fderiv ℝ (fun p : (Fin n → ℝ) × ℝ =>
        (g p.1, p.2 • (fun i => fderiv ℝ g p.1 (Pi.single i 1)))) (I, lam) :
      ((Fin n → ℝ) × ℝ) →L[ℝ] (ℝ × (Fin n → ℝ))).toLinearMap)).1 hinj

/-- N-QC: `bpN:p2:qc-deriv`. -/
theorem isoenergetic_bijective_of_qc {U : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ} {m : ℝ}
    (hqc : IsStrictlyQuasiConvex U h m) {I : Fin n → ℝ} (hI : I ∈ U) {lam : ℝ}
    (hlam : 0 < lam) :
    Function.Bijective
      (fderiv ℝ (fun p : (Fin n → ℝ) × ℝ =>
        (realPart h p.1, p.2 • KAM.frequencyMap h p.1)) (I, lam)) := by
  obtain ⟨hm, hU, hC, hpt⟩ := hqc
  obtain ⟨hν, hQ⟩ := hpt I hI
  exact isoenergetic_bijective (realPart h) hlam hm (hC.contDiffAt (hU.mem_nhds hI)) hν hQ

end KAM.Nekhoroshev
