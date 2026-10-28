/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Kepler.Basic
public import KAM.Kepler.Plane
public import KAM.Kepler.Energy
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Iso.Defs.CollisionFree
public import KAM.Frozen.Iso.Defs.RestrictedHamiltonian
public import KAM.Frozen.Iso.Defs.RestrictedVectorField
public import KAM.Frozen.Iso.Defs.IsRestrictedSolutionOn
public import KAM.Frozen.Iso.Defs.IsHamiltonianSolutionOn
public import KAM.Frozen.Planetary.Defs.Phase
public import KAM.Frozen.Planetary.Defs.PlaneCross
public import KAM.Frozen.Planetary.Defs.QuarterTurn

/-!
# The restricted Hamiltonian in rotating Cartesian coordinates

Blueprint-I Part 7, nodes `bpI:p7:ham-eq`, `bpI:p7:newton` and the second clause of `bpI:p7:h0`.

* `restrictedHamTotal` is the frozen `restrictedHamiltonian` formula on all of `Phase 2` (no
  subtype), and `restrictedHamiltonian_eq` is `rfl`.
* `analyticOnNhd_restrictedHamTotal`: it is real analytic on the open collision-free set.
* `restrictedVectorField_eq_hamiltonian`: the frozen restricted field is the Hamiltonian field of
  `restrictedHamTotal`; `isRestrictedSolutionOn_iff` transfers solutions.
* `restricted_newton_iff`: the rotating Hamilton equations at a time `t` are equivalent to the
  Newton equations `x' = v`, `v' = F(x - rot t primary)` in the inertial frame (pointwise in time).
* `restrictedHamTotal_zero`: `Ham_0 = E - Γ` (Lean totality, no hypothesis).
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff

namespace KAM.Iso

open KAM KAM.Kepler KAM.Planetary

section Part7Ham

/-- The total (Lean) restricted Hamiltonian, equal to `restrictedHamiltonian` on collision-free points. -/
def restrictedHamTotal (μ : ℝ) (z : Phase 2) : ℝ :=
  radiusSq z.2 / 2 + z.1 1 * z.2 0 - z.1 0 * z.2 1 - (1 - μ) / radius (z.1 - primary₁ μ)
    - μ / radius (z.1 - primary₂ μ)

theorem restrictedHamiltonian_eq (μ : ℝ) (z : {z : Phase 2 // CollisionFree μ z}) :
    restrictedHamiltonian μ z = restrictedHamTotal μ z.1 := rfl

theorem isOpen_collisionFree (μ : ℝ) : IsOpen {z : Phase 2 | CollisionFree μ z} := by
  have hc : ∀ p : Fin 2 → ℝ, Continuous fun z : Phase 2 => radius (z.1 - p) := by
    intro p
    unfold radius radiusSq
    fun_prop
  exact (isOpen_lt continuous_const (hc _)).inter (isOpen_lt continuous_const (hc _))

private theorem radiusSq_def (v : Fin 2 → ℝ) : radiusSq v = v 0 ^ 2 + v 1 ^ 2 := by
  simp [radiusSq, Fin.sum_univ_two]

/-- `bpI:p7:ham-eq`. -/
theorem analyticOnNhd_restrictedHamTotal (μ : ℝ) :
    AnalyticOnNhd ℝ (restrictedHamTotal μ) {z : Phase 2 | CollisionFree μ z} := by
  intro z hz
  obtain ⟨h1, h2⟩ := hz
  have hv1 : z.1 - primary₁ μ ≠ 0 := planeLength_pos_iff.mp h1
  have hv2 : z.1 - primary₂ μ ≠ 0 := planeLength_pos_iff.mp h2
  have hfst : ∀ p : Fin 2 → ℝ, AnalyticAt ℝ (fun z : Phase 2 => z.1 - p) z := fun p =>
    analyticAt_fst.sub analyticAt_const
  have g1 : AnalyticAt ℝ (fun z : Phase 2 => radius (z.1 - primary₁ μ)) z :=
    AnalyticAt.comp (g := planeLength) (f := fun z : Phase 2 => z.1 - primary₁ μ)
      (analyticAt_planeLength hv1) (hfst (primary₁ μ))
  have g2 : AnalyticAt ℝ (fun z : Phase 2 => radius (z.1 - primary₂ μ)) z :=
    AnalyticAt.comp (g := planeLength) (f := fun z : Phase 2 => z.1 - primary₂ μ)
      (analyticAt_planeLength hv2) (hfst (primary₂ μ))
  have hp : AnalyticAt ℝ (fun z : Phase 2 => radiusSq z.2 / 2 + z.1 1 * z.2 0 - z.1 0 * z.2 1) z := by
    simp only [radiusSq_def]
    have a0 : ∀ k : Fin 2, AnalyticAt ℝ (fun z : Phase 2 => z.1 k) z := fun k =>
      (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) k).analyticAt _ |>.comp analyticAt_fst
    have a1 : ∀ k : Fin 2, AnalyticAt ℝ (fun z : Phase 2 => z.2 k) z := fun k =>
      (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) k).analyticAt _ |>.comp analyticAt_snd
    exact ((((a1 0).pow 2).add ((a1 1).pow 2)).div_const).add ((a0 1).mul (a1 0)) |>.sub ((a0 0).mul (a1 1))
  exact (hp.sub (analyticAt_const.div g1 h1.ne')).sub (analyticAt_const.div g2 h2.ne')

/-- The derivative of `restrictedHamTotal` at a collision-free point, in the direction `(u, w)`. -/
private theorem fderiv_restrictedHamTotal_apply {μ : ℝ} {z : Phase 2} (hz : CollisionFree μ z)
    (u w : Fin 2 → ℝ) :
    fderiv ℝ (restrictedHamTotal μ) z (u, w) =
      z.2 0 * w 0 + z.2 1 * w 1 + (u 1 * z.2 0 + z.1 1 * w 0) - (u 0 * z.2 1 + z.1 0 * w 1)
      + (1 - μ) * ((planeLength (z.1 - primary₁ μ) ^ 3)⁻¹ *
          ((z.1 - primary₁ μ) 0 * u 0 + (z.1 - primary₁ μ) 1 * u 1))
      + μ * ((planeLength (z.1 - primary₂ μ) ^ 3)⁻¹ *
          ((z.1 - primary₂ μ) 0 * u 0 + (z.1 - primary₂ μ) 1 * u 1)) := by
  obtain ⟨h1, h2⟩ := hz
  have hv1 : z.1 - primary₁ μ ≠ 0 := planeLength_pos_iff.mp h1
  have hv2 : z.1 - primary₂ μ ≠ 0 := planeLength_pos_iff.mp h2
  have c1 : ∀ k : Fin 2, HasFDerivAt (fun z : Phase 2 => z.1 k)
      ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) k).comp
        (ContinuousLinearMap.fst ℝ (Fin 2 → ℝ) (Fin 2 → ℝ))) z := fun k =>
    ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) k).hasFDerivAt).comp z
      (ContinuousLinearMap.fst ℝ (Fin 2 → ℝ) (Fin 2 → ℝ)).hasFDerivAt
  have c2 : ∀ k : Fin 2, HasFDerivAt (fun z : Phase 2 => z.2 k)
      ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) k).comp
        (ContinuousLinearMap.snd ℝ (Fin 2 → ℝ) (Fin 2 → ℝ))) z := fun k =>
    ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) k).hasFDerivAt).comp z
      (ContinuousLinearMap.snd ℝ (Fin 2 → ℝ) (Fin 2 → ℝ)).hasFDerivAt
  have g : ∀ p : Fin 2 → ℝ, z.1 - p ≠ 0 → HasFDerivAt (fun z : Phase 2 => (planeLength (z.1 - p))⁻¹)
      ((-((planeLength (z.1 - p) ^ 3)⁻¹) •
        ∑ k, (z.1 - p) k • ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) k).comp
        (ContinuousLinearMap.fst ℝ (Fin 2 → ℝ) (Fin 2 → ℝ))) z := fun p hp =>
    HasFDerivAt.comp (g := fun w : Fin 2 → ℝ => (planeLength w)⁻¹)
      (f := fun z : Phase 2 => z.1 - p) z (hasFDerivAt_inv_planeLength hp)
      ((hasFDerivAt_fst (𝕜 := ℝ) (p := z)).sub_const p)
  have hA0 := ((c2 0).pow 2).const_mul 2⁻¹
  have hA1 := ((c2 1).pow 2).const_mul 2⁻¹
  have hD := (((((hA0.add hA1).add ((c1 1).mul (c2 0))).sub ((c1 0).mul (c2 1))).sub
      ((g _ hv1).const_mul (1 - μ))).sub ((g _ hv2).const_mul μ))
  have hD' := hD.congr_of_eventuallyEq (f₁ := restrictedHamTotal μ)
    (Filter.Eventually.of_forall fun z' => by
      simp only [restrictedHamTotal, radiusSq_def, div_eq_mul_inv, radius_eq_planeLength,
        Pi.add_apply, Pi.sub_apply, Pi.mul_apply]
      ring)
  rw [hD'.fderiv]
  simp [Fin.sum_univ_two]
  ring

theorem restrictedVectorField_eq_hamiltonian {μ : ℝ} {z : Phase 2} (hz : CollisionFree μ z) :
    restrictedVectorField μ ⟨z, hz⟩ = hamiltonianVectorField (restrictedHamTotal μ) z := by
  refine Prod.ext ?_ ?_
  · funext i
    simp only [hamiltonianVectorField, fderiv_restrictedHamTotal_apply hz]
    fin_cases i <;> simp [restrictedVectorField]
  · funext i
    simp only [hamiltonianVectorField, fderiv_restrictedHamTotal_apply hz]
    fin_cases i <;>
      simp only [restrictedVectorField, Fin.zero_eta, Fin.mk_one, Pi.sub_apply, Pi.smul_apply,
        smul_eq_mul, Matrix.cons_val_zero, Matrix.cons_val_one, radius_eq_planeLength] <;>
      simp <;> ring

theorem isRestrictedSolutionOn_iff (μ : ℝ) (J : Set ℝ) (z : ℝ → Phase 2) :
    IsRestrictedSolutionOn μ J z ↔
      (∀ t ∈ J, CollisionFree μ (z t)) ∧ IsHamiltonianSolutionOn (restrictedHamTotal μ) univ J z := by
  constructor
  · intro h
    refine ⟨fun t ht => (h t ht).choose, fun t ht => ?_⟩
    obtain ⟨hz, hd⟩ := h t ht
    refine ⟨mem_univ _, ?_, ?_⟩
    · exact ((analyticOnNhd_restrictedHamTotal μ) (z t) hz).differentiableAt
    · rw [← restrictedVectorField_eq_hamiltonian hz]; exact hd
  · rintro ⟨hcf, hsol⟩ t ht
    obtain ⟨-, -, hd⟩ := hsol t ht
    exact ⟨hcf t ht, by rw [restrictedVectorField_eq_hamiltonian (hcf t ht)]; exact hd⟩

/-- `bpI:p7:h0`, second clause: `Ham^R3_0 = E - Γ` (Lean totality, no hypothesis). -/
theorem restrictedHamTotal_zero (z : Phase 2) : restrictedHamTotal 0 z = kE z - planeCross z.1 z.2 := by
  have h1 : primary₁ 0 = 0 := by
    ext i; fin_cases i <;> simp [primary₁]
  simp only [restrictedHamTotal, kE, planeCross, h1, sub_zero, zero_div, radius_eq_planeLength,
    radiusSq_eq_planeSq]
  ring

end Part7Ham

end KAM.Iso

end
