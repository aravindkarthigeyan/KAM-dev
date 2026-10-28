/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Planetary.Poincare.Holomorphic
public import KAM.Planetary.Poincare.Symplectic

/-!
# The Poincaré chart: symplectic identity for the complex derivative at real points

Glue for the final clause of `stepP:p7:ho-hol` (`bpP:p7:holomorphic`): at real points of
`poincareNbhd Λ°` the complex derivative of `poincareC` restricts to the real derivative of
`poincare` (`bp:p1:real-restriction`), hence `DΨᵀ M₀ DΨ = M₀`, written as invariance of the complex
bilinear form `symplecticFormC` (`xᵀ M₀ y`, the complexification of the frozen `symplecticForm`)
under `D poincareC (phaseToC w)`.  Together with `poincare_holomorphic` these are the hypotheses
of `bpP:p1:hol-chart` with `c = 1`.
-/

@[expose] public noncomputable section

open Set Metric Real

namespace KAM.Planetary

open KAM KAM.Kepler

section PoincareHolSymplectic

/-- The complexified standard symplectic form `Σ (x₂ᵢ y₁ᵢ - x₁ᵢ y₂ᵢ)` (complex bilinear). -/
def symplecticFormC {n : ℕ} (x y : (Fin n → ℂ) × (Fin n → ℂ)) : ℂ :=
  ∑ i, (x.2 i * y.1 i - x.1 i * y.2 i)

theorem symplecticFormC_phaseToC {n : ℕ} (u v : Phase n) :
    symplecticFormC (phaseToC u) (phaseToC v) = ((symplecticForm u v : ℝ) : ℂ) := by
  simp [symplecticFormC, symplecticForm, phaseToC]

/-- Real embedding as a real continuous linear map. -/
private def hsIota : Phase 2 →L[ℝ] (Fin 2 → ℂ) × (Fin 2 → ℂ) :=
  (ContinuousLinearMap.pi fun i : Fin 2 =>
      Complex.ofRealCLM.comp (ContinuousLinearMap.proj i)).prodMap
    (ContinuousLinearMap.pi fun i : Fin 2 => Complex.ofRealCLM.comp (ContinuousLinearMap.proj i))

private theorem hsIota_apply (u : Phase 2) : hsIota u = phaseToC u := rfl

/-- Real part as a real continuous linear map. -/
private def hsRe : (Fin 2 → ℂ) × (Fin 2 → ℂ) →L[ℝ] Phase 2 :=
  (ContinuousLinearMap.pi fun i : Fin 2 => Complex.reCLM.comp (ContinuousLinearMap.proj i)).prodMap
    (ContinuousLinearMap.pi fun i : Fin 2 => Complex.reCLM.comp (ContinuousLinearMap.proj i))

private theorem hsRe_phaseToC (u : Phase 2) : hsRe (phaseToC u) = u := by
  refine Prod.ext ?_ ?_ <;> ext i <;> simp [hsRe, phaseToC]

private theorem hs_eventually {m κ Λo : ℝ} (hm : 0 < m) (hκ : 0 < κ) (hΛ : 0 < Λo) {w : Phase 2}
    (hw : phaseToC w ∈ poincareNbhd Λo) :
    (fun z => phaseToC (poincare m κ z)) =ᶠ[nhds w] fun z => poincareC m κ (phaseToC z) := by
  have hcont : Continuous (phaseToC : Phase 2 → (Fin 2 → ℂ) × (Fin 2 → ℂ)) := hsIota.continuous
  have hopen : IsOpen (phaseToC ⁻¹' poincareNbhd Λo) :=
    (poincare_holomorphic hm hκ hΛ).1.preimage hcont
  filter_upwards [hopen.mem_nhds hw] with z hz
  exact ((poincare_holomorphic hm hκ hΛ).2.2.2.2 z hz).2.symm

private theorem hs_hasFDerivAt {m κ Λo : ℝ} (hm : 0 < m) (hκ : 0 < κ) (hΛ : 0 < Λo) {w : Phase 2}
    (hw : phaseToC w ∈ poincareNbhd Λo) :
    HasFDerivAt (poincare m κ)
      (hsRe.comp ((fderiv ℂ (poincareC m κ) (phaseToC w)).restrictScalars ℝ |>.comp hsIota)) w := by
  have hd : DifferentiableAt ℂ (poincareC m κ) (phaseToC w) :=
    ((poincare_holomorphic hm hκ hΛ).2.2.1.differentiableAt
      ((poincare_holomorphic hm hκ hΛ).1.mem_nhds hw))
  have h1 : HasFDerivAt (fun z : Phase 2 => poincareC m κ (phaseToC z))
      (((fderiv ℂ (poincareC m κ) (phaseToC w)).restrictScalars ℝ).comp hsIota) w :=
    (hd.hasFDerivAt.restrictScalars ℝ).comp w hsIota.hasFDerivAt
  have h2 := hsRe.hasFDerivAt.comp w h1
  refine h2.congr_of_eventuallyEq ?_
  filter_upwards [hs_eventually hm hκ hΛ hw] with z hz
  simp only [Function.comp_apply]
  rw [← hz]
  exact (hsRe_phaseToC _).symm

/-- Real restriction: the complex derivative of `poincareC` at a real point of `poincareNbhd Λo`,
applied to a real vector, is the complexification of the real derivative of `poincare`
(`bp:p1:real-restriction`). -/
theorem poincare_fderiv_real_restriction {m κ Λo : ℝ} (hm : 0 < m) (hκ : 0 < κ) (hΛ : 0 < Λo)
    {w : Phase 2} (hw : phaseToC w ∈ poincareNbhd Λo) (u : Phase 2) :
    fderiv ℂ (poincareC m κ) (phaseToC w) (phaseToC u) =
      phaseToC (fderiv ℝ (poincare m κ) w u) := by
  have hd : DifferentiableAt ℂ (poincareC m κ) (phaseToC w) :=
    ((poincare_holomorphic hm hκ hΛ).2.2.1.differentiableAt
      ((poincare_holomorphic hm hκ hΛ).1.mem_nhds hw))
  have hP : DifferentiableAt ℝ (poincare m κ) w := (hs_hasFDerivAt hm hκ hΛ hw).differentiableAt
  have h1 : HasFDerivAt (fun z : Phase 2 => poincareC m κ (phaseToC z))
      (((fderiv ℂ (poincareC m κ) (phaseToC w)).restrictScalars ℝ).comp hsIota) w :=
    (hd.hasFDerivAt.restrictScalars ℝ).comp w hsIota.hasFDerivAt
  have h2 : HasFDerivAt (fun z : Phase 2 => phaseToC (poincare m κ z))
      (hsIota.comp (fderiv ℝ (poincare m κ) w)) w :=
    hsIota.hasFDerivAt.comp w hP.hasFDerivAt
  have h3 := h2.unique (h1.congr_of_eventuallyEq (hs_eventually hm hκ hΛ hw))
  have := congrArg (fun L => L u) h3
  simpa [hsIota_apply] using this.symm

/-- `bpP:p7:holomorphic`, final clause of `stepP:p7:ho-hol`: `DΨᵀ M₀ DΨ = M₀` at real points
(the complex derivative preserves the complex symplectic form), from `poincare_symplectic`
(`bpP:p7:poincare`(c)) and real restriction. Hence the hypotheses of `bpP:p1:hol-chart`
with `c = 1`. -/
theorem poincare_holomorphic_symplectic {m κ Λo : ℝ} (hm : 0 < m) (hκ : 0 < κ) (hΛ : 0 < Λo) :
    ∀ w : Phase 2, phaseToC w ∈ poincareNbhd Λo →
      ∀ x y : (Fin 2 → ℂ) × (Fin 2 → ℂ),
        symplecticFormC (fderiv ℂ (poincareC m κ) (phaseToC w) x)
            (fderiv ℂ (poincareC m κ) (phaseToC w) y) = symplecticFormC x y := by
  intro w hw x y
  set A := fderiv ℂ (poincareC m κ) (phaseToC w) with hA
  have hdom : w ∈ poincareDom := ((poincare_holomorphic hm hκ hΛ).2.2.2.2 w hw).1
  -- the bilinear form
  let B : ((Fin 2 → ℂ) × (Fin 2 → ℂ)) →ₗ[ℂ] ((Fin 2 → ℂ) × (Fin 2 → ℂ)) →ₗ[ℂ] ℂ :=
    LinearMap.mk₂ ℂ symplecticFormC
      (fun a b c => by
        simp only [symplecticFormC, Prod.fst_add, Prod.snd_add, Pi.add_apply,
          ← Finset.sum_add_distrib]
        exact Finset.sum_congr rfl fun i _ => by ring)
      (fun r a b => by
        simp only [symplecticFormC, Prod.smul_fst, Prod.smul_snd, Pi.smul_apply, smul_eq_mul,
          Finset.mul_sum]
        exact Finset.sum_congr rfl fun i _ => by ring)
      (fun a b c => by
        simp only [symplecticFormC, Prod.fst_add, Prod.snd_add, Pi.add_apply,
          ← Finset.sum_add_distrib]
        exact Finset.sum_congr rfl fun i _ => by ring)
      (fun r a b => by
        simp only [symplecticFormC, Prod.smul_fst, Prod.smul_snd, Pi.smul_apply, smul_eq_mul,
          Finset.mul_sum]
        exact Finset.sum_congr rfl fun i _ => by ring)
  have hB : ∀ a b, B a b = symplecticFormC a b := fun a b => rfl
  let A' : ((Fin 2 → ℂ) × (Fin 2 → ℂ)) →ₗ[ℂ] ((Fin 2 → ℂ) × (Fin 2 → ℂ)) := A.toLinearMap
  have hreal : ∀ u v : Phase 2,
      B (A' (phaseToC u)) (A' (phaseToC v)) = B (phaseToC u) (phaseToC v) := by
    intro u v
    have h1 : A (phaseToC u) = _ := poincare_fderiv_real_restriction hm hκ hΛ hw u
    have h2 : A (phaseToC v) = _ := poincare_fderiv_real_restriction hm hκ hΛ hw v
    have h3 := poincare_symplectic hm hκ w hdom u v
    simp only [hB, A', ContinuousLinearMap.coe_coe, h1, h2, symplecticFormC_phaseToC, h3, one_mul]
  have hspan : Submodule.span ℂ
      (Set.range (phaseToC : Phase 2 → (Fin 2 → ℂ) × (Fin 2 → ℂ))) = ⊤ := by
    rw [Submodule.eq_top_iff']
    intro x
    have hx : x = ∑ i, x.1 i • phaseToC ((Pi.single i 1 : Fin 2 → ℝ), (0 : Fin 2 → ℝ)) +
        ∑ i, x.2 i • phaseToC ((0 : Fin 2 → ℝ), (Pi.single i 1 : Fin 2 → ℝ)) := by
      refine Prod.ext ?_ ?_ <;> ext j <;> fin_cases j <;> simp [phaseToC, Pi.single_apply]
    rw [hx]
    refine Submodule.add_mem _ (Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _
      (Submodule.subset_span ⟨_, rfl⟩)) (Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _
      (Submodule.subset_span ⟨_, rfl⟩))
  have step1 : ∀ v : Phase 2, ∀ x, B (A' x) (A' (phaseToC v)) = B x (phaseToC v) := by
    intro v
    have h : (B.compl₁₂ A' A').flip (phaseToC v) = B.flip (phaseToC v) :=
      LinearMap.ext_on hspan (by rintro _ ⟨u, rfl⟩; exact hreal u v)
    intro x
    exact LinearMap.congr_fun h x
  have step2 : ∀ x, B.compl₁₂ A' A' x = B x := by
    intro x
    exact LinearMap.ext_on hspan (by rintro _ ⟨v, rfl⟩; exact step1 v x)
  exact LinearMap.congr_fun (step2 x) y

end PoincareHolSymplectic

end KAM.Planetary

end
