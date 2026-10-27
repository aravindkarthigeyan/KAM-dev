/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.TorsionAverage
public import KAM.Frozen.Defs.InvarianceError
public import KAM.Frozen.Defs.GramMatrix
public import KAM.Frozen.Defs.IsPrimaryOnStrip
public import KAM.Frozen.Defs.IsRealOnReals
public import KAM.Frozen.Defs.IsDiophantine
public import KAM.Matrix.Norms
public import Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries

/-!
# Standing data and admissibility for Part 2 (blueprint `bp:p2:standing`, `bp:p2:admissible`)

Hypotheses are bundled as `Prop`-structures whose fields are verbatim source premises.

* `KAM.Apost.Params` holds the fixed parameters of `bp:p2:standing`: `n ≥ 2`, `τ ≥ n - 1` and
  `M, σ_K, σ_B, σ_T > 0`.
* `KAM.Apost.Standing` (Assumption `bp:p2:standing`) extends `Params` by the hypotheses H1 (except
  `‖Dh‖ ≤ M`, which the blueprint does not use) and H5 of the frozen Theorem G1, copied verbatim.
* `KAM.Apost.Admissible` (Definition `bp:p2:admissible`) is `(r, β, ε)`-admissibility: the
  parameter ranges `r > 0`, `β > 0`, `0 ≤ ε ≤ 1` and conditions (A1)–(A6).

No field asserts a conclusion of a Part 2 result. Each lemma assumes exactly the structure its
blueprint statement names. The norm on matrices is the operator norm of
`open scoped Matrix.Norms.Operator`, which is the maximum absolute row sum.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator

namespace KAM.Apost

/-- The fixed parameters of `bp:p2:standing`: `n ≥ 2`, `τ ≥ n - 1`, `M, σ_K, σ_B, σ_T > 0`. -/
structure Params (n : ℕ) (τ M σK σB σT : ℝ) : Prop where
  two_le : 2 ≤ n
  tau_ge : (n : ℝ) - 1 ≤ τ
  M_pos : 0 < M
  σK_pos : 0 < σK
  σB_pos : 0 < σB
  σT_pos : 0 < σT

/-- Blueprint `bp:p2:standing`. Every field is a hypothesis of the frozen G1 (H1, H5), verbatim. -/
structure Standing (n : ℕ) (τ M σK σB σT : ℝ) (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ω : Fin n → ℝ) (γ : ℝ) : Prop
    extends Params n τ M σK σB σT where
  isOpen : IsOpen 𝔅
  transl_mem : ∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ 𝔅
  holo : DifferentiableOn ℂ h 𝔅
  periodic : ∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, h (z.1 + (fun i => (k i : ℂ)), z.2) = h z
  real : ∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ 𝔅 →
    (h ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0
  bounds : ∀ z ∈ 𝔅, ‖hamiltonianVectorFieldℂ h z‖ ≤ M ∧
    ‖fderiv ℂ (hamiltonianVectorFieldℂ h) z‖ ≤ M ∧
    ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖ ≤ M
  gamma_pos : 0 < γ
  dio : IsDiophantine γ τ ω

/-- Blueprint `bp:p2:admissible`: `K` is `(r, β, ε)`-admissible, with the parameter ranges
`r > 0`, `β > 0`, `0 ≤ ε ≤ 1` of the definition as fields. -/
structure Admissible {n : ℕ} (σK σB σT : ℝ) (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ω : Fin n → ℝ) (r β ε : ℝ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Prop where
  r_pos : 0 < r
  β_pos : 0 < β
  ε_nonneg : 0 ≤ ε
  ε_le_one : ε ≤ 1
  holo : DifferentiableOn ℂ K (complexStrip n r)
  primary : IsPrimaryOnStrip K r
  real : IsRealOnReals K
  ball_sub : ∀ θ ∈ complexStrip n r, Metric.ball (K θ) β ⊆ 𝔅
  deriv_le : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK
  gram : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB
  twist : IsUnit (torsionAverage h K ω).det ∧ ‖(torsionAverage h K ω)⁻¹‖ ≤ σT
  error_le : ∀ θ ∈ complexStrip n r, ‖invarianceError h K ω θ‖ ≤ ε

end KAM.Apost

end
