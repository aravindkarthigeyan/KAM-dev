/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Calculus.ContDiff.RCLike
public import Mathlib.Analysis.Calculus.FDeriv.Equiv
public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Defs.RealHamiltonian
public import KAM.Frozen.Nekhoroshev.Defs.ActionBall
public import KAM.Frozen.Nekhoroshev.Defs.ComplexDomain
public import KAM.Frozen.Nekhoroshev.Defs.HasComplexHessianBound
public import KAM.Frozen.Nekhoroshev.Defs.HasDerivativeBounds
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticPerturbation
public import KAM.Frozen.Nekhoroshev.Defs.IsSolutionOn
public import KAM.Frozen.Nekhoroshev.Defs.IsStrictlyQuasiConvex
public import KAM.Frozen.Nekhoroshev.Defs.RealPart
public import KAM.Nekhoroshev.Interfaces.Norms
public import KAM.Nekhoroshev.Interfaces.QuasiConvex
public import KAM.Strip.Fourier

/-!
# Period normalisation (`bpN:p1:period-convert`)

The passage from the period-one angles `θ` of the standing Hamiltonian `H = h + f` to the
`2π`-periodic angles `φ = 2πθ`: `Λ(θ, I) = (2πθ, I)`, `H̃(φ, I) = 2π H(φ/2π, I)`, `h̃ = 2π h`,
`f̃(φ, I) = 2π f(φ/2π, I)`.

* `realHamiltonian_tilde`: `H̃ = H_{h̃, f̃}` (unconditional);
* `isSolutionOn_tilde_iff` (a): `z` solves `H` iff `Λ ∘ z` solves `H̃` (unconditional);
* `frequencyMap_tildeh`, `fderiv_fderiv_realPart_tildeh`, `tilde_hypotheses` (b): the frequency
  map and the Hessian scale by `2π`, and the four hypotheses scale as `m, M, M_ℂ, ω_min ↦ 2π ·`;
* `tildef_domain` (c), `tildef_periodic` (d), `tildef_fourier` (e): domain, bound,
  `2π`-periodicity and the Fourier series of `f̃`.

* `qc_convert_tilde`: the last sentence of `bpN:p1:qc-convert`, the cone estimate (b) for `h̃`
  with `(2πℓ, 2πμ)`.
-/

@[expose] public noncomputable section

open Set Metric

namespace KAM.Nekhoroshev

variable {n : ℕ}

/-- `Λ(θ, I) = (2πθ, I)`. -/
def periodLift (z : (Fin n → ℝ) × (Fin n → ℝ)) : (Fin n → ℝ) × (Fin n → ℝ) :=
  ((2 * Real.pi) • z.1, z.2)

/-- `H̃(φ, I) = 2π H(φ/2π, I)`. -/
def tildeH (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ) (z : (Fin n → ℝ) × (Fin n → ℝ)) : ℝ :=
  2 * Real.pi * H (((2 * Real.pi)⁻¹ • z.1), z.2)

/-- `h̃ = 2π h`. -/
def tildeh (h : (Fin n → ℂ) → ℂ) (I : Fin n → ℂ) : ℂ := (2 * Real.pi : ℂ) * h I

/-- `f̃(φ, I) = 2π f(φ/2π, I)`. -/
def tildef (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (w : (Fin n → ℂ) × (Fin n → ℂ)) : ℂ :=
  (2 * Real.pi : ℂ) * f (((2 * Real.pi : ℂ)⁻¹ • w.1), w.2)

/-! ### Elementary facts about `2π` and the lift `Λ` -/

private theorem two_pi_pos : 0 < 2 * Real.pi := by positivity

private theorem two_pi_ne : (2 * Real.pi : ℝ) ≠ 0 := two_pi_pos.ne'

private theorem two_pi_cast : (2 * Real.pi : ℂ) = ((2 * Real.pi : ℝ) : ℂ) := by push_cast; rfl

private theorem two_pi_inv_cast : (2 * Real.pi : ℂ)⁻¹ = (((2 * Real.pi)⁻¹ : ℝ) : ℂ) := by
  push_cast; rfl

private theorem norm_two_pi : ‖(2 * Real.pi : ℂ)‖ = 2 * Real.pi := by
  rw [two_pi_cast, Complex.norm_real, Real.norm_of_nonneg two_pi_pos.le]

private theorem re_two_pi_mul (w : ℂ) : ((2 * Real.pi : ℂ) * w).re = 2 * Real.pi * w.re := by
  rw [two_pi_cast, Complex.re_ofReal_mul]

private theorem two_pi_mul_inv (x : ℝ) : 2 * Real.pi * ((2 * Real.pi)⁻¹ * x) = x := by
  rw [← mul_assoc, mul_inv_cancel₀ two_pi_ne, one_mul]

/-- `Λ` as a continuous linear equivalence of `ℝⁿ × ℝⁿ`. -/
private def periodLiftCLE (n : ℕ) :
    ((Fin n → ℝ) × (Fin n → ℝ)) ≃L[ℝ] ((Fin n → ℝ) × (Fin n → ℝ)) where
  toFun := periodLift
  invFun := fun z => ((2 * Real.pi)⁻¹ • z.1, z.2)
  map_add' := fun x y => by
    refine Prod.ext ?_ rfl
    simp [periodLift, smul_add]
  map_smul' := fun c x => by
    refine Prod.ext ?_ rfl
    simp [periodLift, smul_comm c]
  left_inv := fun z => by
    refine Prod.ext ?_ rfl
    change (2 * Real.pi)⁻¹ • (2 * Real.pi) • z.1 = z.1
    rw [smul_smul, inv_mul_cancel₀ two_pi_ne, one_smul]
  right_inv := fun z => by
    refine Prod.ext ?_ rfl
    change (2 * Real.pi) • (2 * Real.pi)⁻¹ • z.1 = z.1
    rw [smul_smul, mul_inv_cancel₀ two_pi_ne, one_smul]
  continuous_toFun := by
    unfold periodLift
    fun_prop
  continuous_invFun := by fun_prop

private theorem periodLiftCLE_apply (z : (Fin n → ℝ) × (Fin n → ℝ)) :
    periodLiftCLE n z = periodLift z := rfl

private theorem periodLiftCLE_symm_apply (z : (Fin n → ℝ) × (Fin n → ℝ)) :
    (periodLiftCLE n).symm z = ((2 * Real.pi)⁻¹ • z.1, z.2) := rfl

private theorem periodLift_fst (z : (Fin n → ℝ) × (Fin n → ℝ)) :
    (periodLift z).1 = (2 * Real.pi) • z.1 := rfl

private theorem periodLift_snd (z : (Fin n → ℝ) × (Fin n → ℝ)) : (periodLift z).2 = z.2 := rfl

private theorem tildeH_eq (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ) :
    tildeH H = (2 * Real.pi) • (H ∘ (periodLiftCLE n).symm) := rfl

/-- The derivative of `H̃` at `Λ z`: `D H̃(Λz) = 2π · DH(z) ∘ Λ⁻¹` (also when `H` is not
differentiable, both sides then vanish). -/
private theorem fderiv_tildeH (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ)
    (z : (Fin n → ℝ) × (Fin n → ℝ)) :
    fderiv ℝ (tildeH H) (periodLift z) =
      (2 * Real.pi) • (fderiv ℝ H z).comp (periodLiftCLE n).symm.toContinuousLinearMap := by
  have h := (periodLiftCLE n).symm.comp_right_fderiv (f := H) (x := periodLift z)
  rw [tildeH_eq, fderiv_const_smul_field, Pi.smul_apply, h]
  have hz : (periodLiftCLE n).symm (periodLift z) = z := (periodLiftCLE n).symm_apply_apply z
  rw [hz]

/-- `H̃` is differentiable at `Λ z` iff `H` is differentiable at `z`. -/
private theorem differentiableAt_tildeH_iff (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ)
    (z : (Fin n → ℝ) × (Fin n → ℝ)) :
    DifferentiableAt ℝ (tildeH H) (periodLift z) ↔ DifferentiableAt ℝ H z := by
  constructor
  · intro h
    have h1 : DifferentiableAt ℝ (tildeH H ∘ periodLiftCLE n) z :=
      DifferentiableAt.comp z h (periodLiftCLE n).differentiableAt
    have h2 : (tildeH H ∘ periodLiftCLE n) = (2 * Real.pi) • H := by
      funext y
      change 2 * Real.pi * H ((2 * Real.pi)⁻¹ • (2 * Real.pi) • y.1, y.2) = 2 * Real.pi * H y
      rw [smul_smul, inv_mul_cancel₀ two_pi_ne, one_smul]
    rw [h2] at h1
    have h3 := h1.const_smul (2 * Real.pi)⁻¹
    rwa [smul_smul, inv_mul_cancel₀ two_pi_ne, one_smul] at h3
  · intro h
    rw [tildeH_eq]
    refine DifferentiableAt.const_smul ?_ _
    refine DifferentiableAt.comp (periodLift z) ?_ (periodLiftCLE n).symm.differentiableAt
    rw [← periodLiftCLE_apply, ContinuousLinearEquiv.symm_apply_apply]
    exact h

/-- The Hamiltonian vector field of `H̃` at `Λ z` is `Λ` applied to that of `H` at `z`. -/
private theorem hamiltonianVectorField_tildeH (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ)
    (z : (Fin n → ℝ) × (Fin n → ℝ)) :
    KAM.hamiltonianVectorField (tildeH H) (periodLift z) =
      periodLift (KAM.hamiltonianVectorField H z) := by
  refine Prod.ext (funext fun i => ?_) (funext fun i => ?_)
  · simp only [KAM.hamiltonianVectorField, fderiv_tildeH, periodLift_fst, Pi.smul_apply,
      smul_eq_mul, smul_apply, ContinuousLinearMap.comp_apply,
      ContinuousLinearEquiv.coe_coe, periodLiftCLE_symm_apply, smul_zero]
  · simp only [KAM.hamiltonianVectorField, fderiv_tildeH, periodLift_snd,
      smul_eq_mul, smul_apply, ContinuousLinearMap.comp_apply,
      ContinuousLinearEquiv.coe_coe, periodLiftCLE_symm_apply]
    have : ((2 * Real.pi)⁻¹ • (Pi.single i 1 : Fin n → ℝ), (0 : Fin n → ℝ)) =
        (2 * Real.pi)⁻¹ • ((Pi.single i 1 : Fin n → ℝ), (0 : Fin n → ℝ)) := by
      simp
    rw [this, map_smul, smul_eq_mul, two_pi_mul_inv]

/-- Differentiation commutes with the lift `Λ`. -/
private theorem hasDerivAt_periodLift_iff (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ))
    (v : (Fin n → ℝ) × (Fin n → ℝ)) (t : ℝ) :
    HasDerivAt (fun t => periodLift (z t)) (periodLift v) t ↔ HasDerivAt z v t := by
  constructor
  · intro h
    have h1 := (periodLiftCLE n).symm.hasFDerivAt.comp_hasDerivAt t h
    have h2 : ((periodLiftCLE n).symm ∘ fun t => periodLift (z t)) = z := by
      funext s
      exact (periodLiftCLE n).symm_apply_apply (z s)
    have h3 : (periodLiftCLE n).symm (periodLift v) = v := (periodLiftCLE n).symm_apply_apply v
    rw [h2] at h1
    simpa [h3] using h1
  · intro h
    exact (periodLiftCLE n).hasFDerivAt.comp_hasDerivAt t h

/-- `H̃ = H_{h̃, f̃}` when `H = H_{h,f}` (unconditional). -/
theorem realHamiltonian_tilde (h : (Fin n → ℂ) → ℂ) (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) :
    KAM.realHamiltonian (tildeh h) (tildef f) = tildeH (KAM.realHamiltonian h f) := by
  funext z
  have hz : ((2 * Real.pi : ℂ)⁻¹ • fun i => (z.1 i : ℂ)) =
      fun i => ((((2 * Real.pi)⁻¹ • z.1) i : ℝ) : ℂ) := by
    funext i
    rw [two_pi_inv_cast]
    simp
  simp only [KAM.realHamiltonian, tildeh, tildef, tildeH, hz]
  rw [← mul_add, re_two_pi_mul]

/-- (a) dynamics: unconditional. -/
theorem isSolutionOn_tilde_iff (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ) (U : Set (Fin n → ℝ))
    (J : Set ℝ) (z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)) :
    IsSolutionOn H U J z ↔ IsSolutionOn (tildeH H) U J (fun t => periodLift (z t)) := by
  unfold IsSolutionOn
  refine forall_congr' fun t => forall_congr' fun _ => ?_
  rw [periodLift_snd, differentiableAt_tildeH_iff, hamiltonianVectorField_tildeH,
    hasDerivAt_periodLift_iff]

/-! ### (b) The quantities scale by `2π` -/

private theorem realPart_tildeh (h : (Fin n → ℂ) → ℂ) :
    realPart (tildeh h) = (2 * Real.pi) • realPart h := by
  funext I
  simp only [realPart, tildeh, Pi.smul_apply, smul_eq_mul]
  exact re_two_pi_mul _

/-- (b) quantities, unconditional: `ω_{h̃} = 2π ω_h`, `D²h̃_ℝ = 2π D²h_ℝ`. -/
theorem frequencyMap_tildeh (h : (Fin n → ℂ) → ℂ) (I : Fin n → ℝ) :
    KAM.frequencyMap (tildeh h) I = (2 * Real.pi) • KAM.frequencyMap h I := by
  funext i
  have hf : (fun J : Fin n → ℝ => (tildeh h fun j => (J j : ℂ)).re) =
      (2 * Real.pi) • fun J : Fin n → ℝ => (h fun j => (J j : ℂ)).re := by
    funext J
    exact re_two_pi_mul _
  simp only [KAM.frequencyMap, hf, fderiv_const_smul_field, smul_apply, Pi.smul_apply,
    smul_eq_mul]

theorem fderiv_fderiv_realPart_tildeh (h : (Fin n → ℂ) → ℂ) (I : Fin n → ℝ) :
    fderiv ℝ (fderiv ℝ (realPart (tildeh h))) I =
      (2 * Real.pi) • fderiv ℝ (fderiv ℝ (realPart h)) I := by
  rw [realPart_tildeh, fderiv_const_smul_field]
  exact congrFun (fderiv_const_smul_field (𝕜 := ℝ) (R := ℝ) (f := fderiv ℝ (realPart h))
    (2 * Real.pi)) I

private theorem tildeh_eq_smul (h : (Fin n → ℂ) → ℂ) : tildeh h = (2 * Real.pi : ℂ) • h := rfl

private theorem norm_two_pi_smul_real {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (x : E) : ‖(2 * Real.pi) • x‖ = 2 * Real.pi * ‖x‖ := by
  rw [norm_smul, Real.norm_of_nonneg two_pi_pos.le]

/-- (b) the four hypotheses scale: `m, M, M_ℂ, ω_min ↦ 2π ·`. -/
theorem tilde_hypotheses {R s m M Mc wmin : ℝ} {U : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ} :
    (IsStrictlyQuasiConvex U h m → IsStrictlyQuasiConvex U (tildeh h) (2 * Real.pi * m)) ∧
    (HasDerivativeBounds U h M → HasDerivativeBounds U (tildeh h) (2 * Real.pi * M)) ∧
    (HasComplexHessianBound R s h Mc → HasComplexHessianBound R s (tildeh h) (2 * Real.pi * Mc)) ∧
    (∀ I : Fin n → ℝ, wmin ≤ ‖KAM.frequencyMap h I‖ →
      2 * Real.pi * wmin ≤ ‖KAM.frequencyMap (tildeh h) I‖) ∧
    (∀ I : Fin n → ℝ,
      euclid (KAM.frequencyMap (tildeh h) I) = 2 * Real.pi * euclid (KAM.frequencyMap h I)) := by
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · rintro ⟨hm, hU, hC, hI⟩
    refine ⟨mul_pos two_pi_pos hm, hU, ?_, fun I hIU => ?_⟩
    · rw [realPart_tildeh]
      exact hC.const_smul (R := ℝ) (2 * Real.pi)
    · obtain ⟨hne, hq⟩ := hI I hIU
      refine ⟨?_, fun v hv => ?_⟩
      · rw [frequencyMap_tildeh]
        exact smul_ne_zero two_pi_ne hne
      · rw [frequencyMap_tildeh] at hv
        have hv' : ∑ i, KAM.frequencyMap h I i * v i = 0 := by
          have hsum : ∑ i, (((2 * Real.pi) • KAM.frequencyMap h I) i) * v i =
              2 * Real.pi * ∑ i, KAM.frequencyMap h I i * v i := by
            rw [Finset.mul_sum]
            exact Finset.sum_congr rfl fun i _ => by
              simp only [Pi.smul_apply, smul_eq_mul, mul_assoc]
          rw [hsum] at hv
          exact (mul_eq_zero.mp hv).resolve_left two_pi_ne
        rw [fderiv_fderiv_realPart_tildeh, smul_apply, smul_apply, smul_eq_mul, mul_assoc]
        exact mul_le_mul_of_nonneg_left (hq v hv') two_pi_pos.le
  · rintro ⟨hM, hU, hC, hB⟩
    refine ⟨mul_pos two_pi_pos hM, hU, ?_, fun I hIU k hk1 hk3 idx => ?_⟩
    · rw [realPart_tildeh]
      exact hC.const_smul (R := ℝ) (2 * Real.pi)
    · have hca : ContDiffAt ℝ k (realPart h) I :=
        (hC.contDiffAt (hU.mem_nhds hIU)).of_le (by exact_mod_cast hk3)
      rw [realPart_tildeh, iteratedFDeriv_const_smul_apply hca]
      change |(2 * Real.pi) * iteratedFDeriv ℝ k (realPart h) I (fun j => Pi.single (idx j) 1)| ≤ _
      rw [abs_mul, abs_of_pos two_pi_pos]
      exact mul_le_mul_of_nonneg_left (hB I hIU k hk1 hk3 idx) two_pi_pos.le
  · rintro ⟨hMc, hC, hB⟩
    refine ⟨mul_pos two_pi_pos hMc, ?_, fun z hz => ?_⟩
    · rw [tildeh_eq_smul]
      exact hC.const_smul (R := ℂ) (2 * Real.pi : ℂ)
    · have h2 : fderiv ℂ (fderiv ℂ (tildeh h)) z =
          (2 * Real.pi : ℂ) • fderiv ℂ (fderiv ℂ h) z := by
        rw [tildeh_eq_smul, fderiv_const_smul_field]
        exact congrFun (fderiv_const_smul_field (𝕜 := ℂ) (R := ℂ) (f := fderiv ℂ h)
          (2 * Real.pi : ℂ)) z
      rw [h2]
      calc ‖(2 * Real.pi : ℂ) • fderiv ℂ (fderiv ℂ h) z‖
          ≤ ‖(2 * Real.pi : ℂ)‖ * ‖fderiv ℂ (fderiv ℂ h) z‖ :=
            ContinuousLinearMap.opNorm_smul_le _ _
        _ ≤ 2 * Real.pi * Mc := by
          rw [norm_two_pi]
          exact mul_le_mul_of_nonneg_left (hB z hz) two_pi_pos.le
  · intro I hI
    rw [frequencyMap_tildeh, norm_two_pi_smul_real]
    exact mul_le_mul_of_nonneg_left hI two_pi_pos.le
  · intro I
    rw [frequencyMap_tildeh]
    unfold euclid
    have h1 : ∑ i, ‖((2 * Real.pi) • KAM.frequencyMap h I) i‖ ^ 2 =
        (2 * Real.pi) ^ 2 * ∑ i, ‖KAM.frequencyMap h I i‖ ^ 2 := by
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      simp only [Pi.smul_apply, smul_eq_mul, norm_mul, Real.norm_of_nonneg two_pi_pos.le, mul_pow]
    rw [h1, Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq two_pi_pos.le]

/-- `bpN:p1:qc-convert`, last sentence: the conclusions (b) for `h̃` with `(2πℓ, 2πμ)`. -/
theorem qc_convert_tilde (hn : 1 ≤ n) {R s m Mc wmin : ℝ} {h : (Fin n → ℂ) → ℂ} (hR : 0 < R)
    (hs : 0 < s) (hm : 0 < m) (hMc : 0 < Mc) (hω : 0 < wmin) (hh : IsAnalyticIntegrable R s h)
    (hH : HasComplexHessianBound R s h Mc)
    (hQC : IsStrictlyQuasiConvex (realActionDomain n R s) h m)
    (hmin : ∀ I ∈ actionBall n R, wmin ≤ ‖KAM.frequencyMap h I‖) :
    ∀ I ∈ actionBall n R, ∀ ξ,
      |∑ i, KAM.frequencyMap (tildeh h) I i * ξ i| ≤ 2 * Real.pi * qcEll n m Mc wmin * euclid ξ →
        2 * Real.pi * qcMu n m * euclid ξ ^ 2 ≤
          fderiv ℝ (fderiv ℝ (realPart (tildeh h))) I ξ ξ := by
  intro I hI ξ hξ
  have hsum : ∑ i, KAM.frequencyMap (tildeh h) I i * ξ i =
      2 * Real.pi * ∑ i, KAM.frequencyMap h I i * ξ i := by
    rw [frequencyMap_tildeh, Finset.mul_sum]
    exact Finset.sum_congr rfl fun i _ => by
      simp only [Pi.smul_apply, smul_eq_mul, mul_assoc]
  rw [hsum, abs_mul, abs_of_pos two_pi_pos] at hξ
  have h1 := (qc_convert hn hR hs hm hMc hω hh hH hQC hmin I hI).2.1 ξ
    (le_of_mul_le_mul_left (by rwa [← mul_assoc]) two_pi_pos)
  rw [fderiv_fderiv_realPart_tildeh, smul_apply, smul_apply, smul_eq_mul, mul_assoc]
  exact mul_le_mul_of_nonneg_left h1 two_pi_pos.le

/-! ### (c)-(e) The perturbation `f̃` -/

private theorem mapsTo_tildef (R s : ℝ) :
    MapsTo (fun w : (Fin n → ℂ) × (Fin n → ℂ) => (((2 * Real.pi : ℂ)⁻¹ • w.1), w.2))
      (KAM.complexStrip n (2 * Real.pi * s) ×ˢ KAM.actionNbhd (actionBall n R) s)
      (complexDomain n R s) := by
  rintro ⟨θ, I⟩ ⟨hθ, hI⟩
  refine ⟨fun i => ?_, hI⟩
  have h1 := hθ i
  change |(((2 * Real.pi : ℂ)⁻¹ • θ) i).im| < s
  rw [Pi.smul_apply, smul_eq_mul, two_pi_inv_cast, Complex.im_ofReal_mul, abs_mul,
    abs_of_pos (inv_pos.mpr two_pi_pos)]
  rw [inv_mul_lt_iff₀ two_pi_pos]
  exact h1

/-- (c) domains: `f̃` is holomorphic on `{|Im φ| < 2πs} × B(0,R)_s` and `|f̃| ≤ 2π ε`. -/
theorem tildef_domain {R s ε : ℝ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hR : 0 < R) (hs : 0 < s)
    (hf : IsAnalyticPerturbation R s ε f) :
    DifferentiableOn ℂ (tildef f)
      (KAM.complexStrip n (2 * Real.pi * s) ×ˢ KAM.actionNbhd (actionBall n R) s) ∧
    ∀ w ∈ KAM.complexStrip n (2 * Real.pi * s) ×ˢ KAM.actionNbhd (actionBall n R) s,
      ‖tildef f w‖ ≤ 2 * Real.pi * ε := by
  obtain ⟨-, hdiff, -, -, -, hbound⟩ := hf
  refine ⟨?_, fun w hw => ?_⟩
  · have hg : Differentiable ℂ (fun w : (Fin n → ℂ) × (Fin n → ℂ) =>
        (((2 * Real.pi : ℂ)⁻¹ • w.1), w.2)) := by fun_prop
    exact (hdiff.comp hg.differentiableOn (mapsTo_tildef R s)).const_mul _
  · unfold tildef
    rw [norm_mul, norm_two_pi]
    exact mul_le_mul_of_nonneg_left (hbound _ (mapsTo_tildef R s hw)) two_pi_pos.le

/-- (d) `2π`-periodicity of `f̃` (needs the periodicity clause of `IsAnalyticPerturbation`). -/
theorem tildef_periodic {R s ε : ℝ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hR : 0 < R)
    (hs : 0 < s) (hf : IsAnalyticPerturbation R s ε f) :
    ∀ w ∈ KAM.complexStrip n (2 * Real.pi * s) ×ˢ KAM.actionNbhd (actionBall n R) s,
      ∀ k : Fin n → ℤ,
        tildef f (w.1 + (2 * Real.pi : ℂ) • (fun i => (k i : ℂ)), w.2) = tildef f w := by
  obtain ⟨-, -, -, hper, -, -⟩ := hf
  intro w hw k
  have h2 : (2 * Real.pi : ℂ) ≠ 0 := by rw [two_pi_cast]; exact_mod_cast two_pi_ne
  have h1 := hper _ (mapsTo_tildef R s hw) k
  unfold tildef
  congr 1
  rw [smul_add, smul_smul, inv_mul_cancel₀ h2, one_smul]
  exact h1

/-- (e) Fourier series: `f̃ = ∑ f̃̂_k e^{ik·φ}` with `f̃̂_k = 2π f̂_k` whenever the series of
`f(·, I)` converges to `f` at `φ/2π` (period-one coefficients `KAM.torusCoeff`). -/
theorem tildef_fourier {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {I φ : Fin n → ℂ}
    (hS : HasSum (fun k : Fin n → ℤ =>
      KAM.torusCoeff (fun x : Fin n → ℝ => f (fun j => (x j : ℂ), I)) k *
        KAM.character k ((2 * Real.pi : ℂ)⁻¹ • φ)) (f ((2 * Real.pi : ℂ)⁻¹ • φ, I))) :
    HasSum (fun k : Fin n → ℤ =>
      (2 * Real.pi : ℂ) * KAM.torusCoeff (fun x : Fin n → ℝ => f (fun j => (x j : ℂ), I)) k *
        Complex.exp (Complex.I * ∑ j, (k j : ℂ) * φ j)) (tildef f (φ, I)) := by
  have hpi : (2 * Real.pi : ℂ) ≠ 0 := by rw [two_pi_cast]; exact_mod_cast two_pi_ne
  have hchar : ∀ k : Fin n → ℤ, KAM.character k ((2 * Real.pi : ℂ)⁻¹ • φ) =
      Complex.exp (Complex.I * ∑ j, (k j : ℂ) * φ j) := fun k => by
    unfold KAM.character
    congr 1
    rw [Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [Pi.smul_apply, smul_eq_mul]
    field_simp
  have := hS.mul_left (2 * Real.pi : ℂ)
  simp only [hchar, ← mul_assoc] at this
  exact this

end KAM.Nekhoroshev

end
