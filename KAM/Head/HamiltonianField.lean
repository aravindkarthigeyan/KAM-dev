/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.HamiltonianVectorFieldC
public import KAM.Strip.Bridges
import Mathlib.Analysis.Calculus.ContDiff.Bounds

/-!
# The complex Hamiltonian vector field as a linear image of the derivative

Blueprint Part 4, step `step:p4:db-vectorfield`. For a function `φ` on `ℂⁿ × ℂⁿ`, the frozen
`KAM.hamiltonianVectorFieldℂ φ` is `J ∘ Dφ`, where `J : L(ℂ²ⁿ, ℂ) → ℂ²ⁿ`,
`J(ℓ) = ((ℓ(0, eᵢ))ᵢ, (-ℓ(eᵢ, 0))ᵢ)`, is linear with `‖J(ℓ)‖ ≤ ‖ℓ‖`.

* `KAM.Head.hamJ` is `J`, a continuous linear map of norm at most `1`
  (`KAM.Head.norm_hamJ_apply_le`); `KAM.Head.hamiltonianVectorFieldℂ_eq_hamJ` is the identity
  `X_φ = J ∘ Dφ`.
* `KAM.Head.differentiableOn_hamiltonianVectorField`: `X_φ` is holomorphic on an open set where
  `φ` is.
* `KAM.Head.norm_hamiltonianVectorField_le`, `KAM.Head.norm_fderiv_hamiltonianVectorField_le` and
  `KAM.Head.norm_iteratedFDeriv_two_hamiltonianVectorField_le`:
  `‖X_φ‖ ≤ ‖Dφ‖`, `‖DX_φ‖ ≤ ‖D²φ‖`, `‖D²X_φ‖ ≤ ‖D³φ‖`.
* `KAM.Head.hamiltonianVectorField_bounds` bundles the three bounds
  (step `step:p4:db-vectorfield`).
-/

@[expose] public noncomputable section

open Metric

namespace KAM.Head

variable {n : ℕ}

/-- The sup norm of a pair of vectors in `ℂⁿ` is at most `C` if both sup norms are. -/
private theorem norm_prod_le {C : ℝ} {a b : Fin n → ℂ} (ha : ∀ i, ‖a i‖ ≤ C)
    (hb : ∀ i, ‖b i‖ ≤ C) (hC : 0 ≤ C) : ‖(a, b)‖ ≤ C := by
  rw [Prod.norm_def]
  exact max_le ((pi_norm_le_iff_of_nonneg hC).2 ha) ((pi_norm_le_iff_of_nonneg hC).2 hb)

/-- `J(ℓ) = ((ℓ(0, eᵢ))ᵢ, (-ℓ(eᵢ, 0))ᵢ)` before it is bundled as a continuous linear map. -/
def hamJFun (ℓ : ((Fin n → ℂ) × (Fin n → ℂ)) →L[ℂ] ℂ) :
    (Fin n → ℂ) × (Fin n → ℂ) :=
  (fun i => ℓ (0, Pi.single i 1), fun i => -ℓ (Pi.single i 1, 0))

theorem norm_hamJFun_le (ℓ : ((Fin n → ℂ) × (Fin n → ℂ)) →L[ℂ] ℂ) :
    ‖hamJFun ℓ‖ ≤ ‖ℓ‖ := by
  have h1 : ∀ i : Fin n, ‖ℓ ((0 : Fin n → ℂ), (Pi.single i 1 : Fin n → ℂ))‖ ≤ ‖ℓ‖ := fun i => by
    refine (ℓ.le_opNorm _).trans ?_
    simp [Prod.norm_def, Pi.norm_single]
  have h2 : ∀ i : Fin n, ‖ℓ ((Pi.single i 1 : Fin n → ℂ), (0 : Fin n → ℂ))‖ ≤ ‖ℓ‖ := fun i => by
    refine (ℓ.le_opNorm _).trans ?_
    simp [Prod.norm_def, Pi.norm_single]
  exact norm_prod_le (fun i => h1 i) (fun i => by simpa using h2 i) (norm_nonneg _)

/-- Blueprint `step:p4:db-vectorfield`: the linear map
`J : L(ℂⁿ × ℂⁿ, ℂ) → ℂⁿ × ℂⁿ`, `J(ℓ) = ((ℓ(0, eᵢ))ᵢ, (-ℓ(eᵢ, 0))ᵢ)`, as a continuous linear
map. -/
def hamJ (n : ℕ) :
    (((Fin n → ℂ) × (Fin n → ℂ)) →L[ℂ] ℂ) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ) :=
  LinearMap.mkContinuous
    { toFun := hamJFun
      map_add' := fun ℓ ℓ' => by ext <;> simp [hamJFun, add_comm]
      map_smul' := fun c ℓ => by ext <;> simp [hamJFun] }
    1 fun ℓ => by simpa using norm_hamJFun_le ℓ

theorem hamJ_apply (ℓ : ((Fin n → ℂ) × (Fin n → ℂ)) →L[ℂ] ℂ) :
    hamJ n ℓ = (fun i => ℓ (0, Pi.single i 1), fun i => -ℓ (Pi.single i 1, 0)) := rfl

/-- `‖J(ℓ)‖ ≤ ‖ℓ‖`, because `‖(0, eᵢ)‖ = ‖(eᵢ, 0)‖ = 1`. -/
theorem norm_hamJ_apply_le (ℓ : ((Fin n → ℂ) × (Fin n → ℂ)) →L[ℂ] ℂ) : ‖hamJ n ℓ‖ ≤ ‖ℓ‖ :=
  norm_hamJFun_le ℓ

/-- `‖J‖ ≤ 1`. -/
theorem norm_hamJ_le : ‖hamJ n‖ ≤ 1 :=
  (hamJ n).opNorm_le_bound zero_le_one fun ℓ => by simpa using norm_hamJ_apply_le ℓ

/-- Blueprint `step:p4:db-vectorfield`, `X_φ = J ∘ Dφ`: the frozen complex Hamiltonian vector
field is `J` applied to the derivative. -/
theorem hamiltonianVectorFieldℂ_eq_hamJ (φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) :
    hamiltonianVectorFieldℂ φ = fun z => hamJ n (fderiv ℂ φ z) := rfl

section Regularity

variable {V : Set ((Fin n → ℂ) × (Fin n → ℂ))} {φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}

/-- Blueprint `step:p4:db-vectorfield`. The Hamiltonian vector field of a function holomorphic on
an open set is holomorphic there: `X_φ = J ∘ Dφ` with `J` continuous linear and `Dφ` holomorphic
(`bp:p1:holomorphic-regularity`). -/
theorem differentiableOn_hamiltonianVectorField (hV : IsOpen V) (hφ : DifferentiableOn ℂ φ V) :
    DifferentiableOn ℂ (hamiltonianVectorFieldℂ φ) V :=
  (hamJ n).differentiable.comp_differentiableOn (differentiableOn_fderiv_of_isOpen hV hφ)

/-- The derivative `Dφ` of a function holomorphic on an open set is `C²` there. -/
theorem contDiffAt_fderiv_two (hV : IsOpen V) (hφ : DifferentiableOn ℂ φ V) {z : _}
    (hz : z ∈ V) : ContDiffAt ℂ 2 (fderiv ℂ φ) z :=
  ((contDiffOn_nat_of_differentiableOn hV hφ 3).fderiv_of_isOpen hV (m := 2)
    (by norm_num)).contDiffAt (hV.mem_nhds hz)

/-- Blueprint `step:p4:db-vectorfield`. For `j ≤ 2`, `‖D^j X_φ‖ ≤ ‖D^{j+1} φ‖` at every point of
the open set where `φ` is holomorphic: `J` is a contraction, and composing with it does not
increase the norm of the iterated derivative. -/
theorem norm_iteratedFDeriv_hamiltonianVectorField_le (hV : IsOpen V)
    (hφ : DifferentiableOn ℂ φ V) {z : _} (hz : z ∈ V) {j : ℕ} (hj : j ≤ 2) :
    ‖iteratedFDeriv ℂ j (hamiltonianVectorFieldℂ φ) z‖ ≤ ‖iteratedFDeriv ℂ (j + 1) φ z‖ := by
  have h := (hamJ n).norm_iteratedFDeriv_comp_left (contDiffAt_fderiv_two hV hφ hz)
    (n := j) (by exact_mod_cast hj)
  rw [norm_iteratedFDeriv_fderiv] at h
  exact h.trans (by nlinarith [norm_hamJ_le (n := n), norm_nonneg (iteratedFDeriv ℂ (j + 1) φ z)])

/-- Blueprint `step:p4:db-vectorfield`: `‖X_φ‖ ≤ ‖Dφ‖`. -/
theorem norm_hamiltonianVectorField_le (φ : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (z : (Fin n → ℂ) × (Fin n → ℂ)) : ‖hamiltonianVectorFieldℂ φ z‖ ≤ ‖fderiv ℂ φ z‖ := by
  rw [hamiltonianVectorFieldℂ_eq_hamJ]
  exact norm_hamJ_apply_le _

/-- Blueprint `step:p4:db-vectorfield`: `D X_φ = J ∘ D²φ` on the open set where `φ` is
holomorphic. -/
theorem fderiv_hamiltonianVectorField (hV : IsOpen V) (hφ : DifferentiableOn ℂ φ V) {z : _}
    (hz : z ∈ V) :
    fderiv ℂ (hamiltonianVectorFieldℂ φ) z = (hamJ n).comp (fderiv ℂ (fderiv ℂ φ) z) := by
  have hg : DifferentiableAt ℂ (fderiv ℂ φ) z :=
    (differentiableOn_fderiv_of_isOpen hV hφ).differentiableAt (hV.mem_nhds hz)
  exact ((hamJ n).hasFDerivAt.comp z hg.hasFDerivAt).fderiv

/-- Blueprint `step:p4:db-vectorfield`. For `φ` holomorphic on an open set `V` of `ℂⁿ × ℂⁿ` and
`z ∈ V`: `‖X_φ(z)‖ ≤ ‖Dφ(z)‖`, `‖DX_φ(z)‖ ≤ ‖D²φ(z)‖` and `‖D²X_φ(z)‖ ≤ ‖D³φ(z)‖`. -/
theorem hamiltonianVectorField_bounds (hV : IsOpen V) (hφ : DifferentiableOn ℂ φ V) {z : _}
    (hz : z ∈ V) :
    ‖hamiltonianVectorFieldℂ φ z‖ ≤ ‖fderiv ℂ φ z‖ ∧
    ‖fderiv ℂ (hamiltonianVectorFieldℂ φ) z‖ ≤ ‖iteratedFDeriv ℂ 2 φ z‖ ∧
    ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ φ) z‖ ≤ ‖iteratedFDeriv ℂ 3 φ z‖ := by
  refine ⟨norm_hamiltonianVectorField_le φ z, ?_, norm_iteratedFDeriv_hamiltonianVectorField_le
    hV hφ hz (j := 2) le_rfl⟩
  rw [← norm_iteratedFDeriv_one]
  exact norm_iteratedFDeriv_hamiltonianVectorField_le hV hφ hz (j := 1) (by norm_num)

end Regularity

end KAM.Head

end
