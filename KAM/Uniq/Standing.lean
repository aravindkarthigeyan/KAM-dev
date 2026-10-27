/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Standing
public import KAM.Apost.Constants
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.FieldSimp

/-!
# Standing data and constants of Part 3 (blueprint `bp:p3:standing`)

Hypotheses are bundled as `Prop`-structures whose fields are verbatim source premises.

* `KAM.Uniq.Params` holds the fixed parameters of Part 3: `n ≥ 2`, `τ ≥ n - 1` and
  `ρ, M, σ_K, σ_B, σ_T, μ > 0`.
* `KAM.Uniq.S1` to `KAM.Uniq.S4` are the items (S1) to (S4) of Assumption `bp:p3:standing`: the
  Hamiltonian (the hypotheses H1 of the frozen Theorem G2), the frequency, the reference torus `K₁`
  and the second torus `K₂`. Each lemma of Part 3 assumes exactly the items its blueprint
  statement names, so "Assume (S3)" assumes only (S3).
* `KAM.Uniq.standing_of` is the claim of the blueprint that (S1) and (S2) contain the standing
  assumption of Part 2 (`bp:p2:standing`), with the same `n, τ, M, σ_K, σ_B, σ_T`.

No field asserts a conclusion of a Part 3 result.

## Constants

The constants of `eq:p3:constants` and `eq:p3:Cquad` are plain `def`s taking exactly the
parameters they depend on, so every "depends only on …" claim is syntactic:
`C_P (n σK σB)`, `C_Gamma (n M σK σB)` (`Γ`), `C_tor (n ρ M σK σB)`, `C_coh (n τ)`, and
`C_N`, `C_L`, `C_quad (n τ ρ M σK σB σT)`. The threshold `c` of Theorem G2 (`eq:p3:c`) is
`threshold (n τ ρ M σK σB σT μ)`; it does not depend on `γ`.

## The constant inequalities, proved once

Every inequality between the constants that later parts of Part 3 use is proved here, so that no
later module unfolds a constant:

* positivity of every constant and of `threshold` (`threshold_pos`);
* the bounds of the frame (`step:p3:norms-frame`): `C_P_ge_*`;
* the bound of the torsion (`step:p3:torsion-bound-step`): `C_P_mul_torsion_coeff_le`;
* the absorption `1 ≤ Γ ρ^{τ+n} γ⁻¹ δ^{-(τ+n)}` of `bp:p3:quadratic` (`one_le_absorb`) and the
  coefficient bookkeeping of its steps (`normal_coeff_le`, `tangent_coeff_le`, `combine_coeff_le`);
* the three smallness conditions of the threshold (`step:p3:g2-smallness`): `phase_small`,
  `delta_small`, `iteration_small`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator

namespace KAM.Uniq

/-- The parameters fixed throughout Part 3: `n ≥ 2`, `τ ≥ n - 1`, `ρ, M, σ_K, σ_B, σ_T, μ > 0`. -/
structure Params (n : ℕ) (τ ρ M σK σB σT μ : ℝ) : Prop where
  two_le : 2 ≤ n
  tau_ge : (n : ℝ) - 1 ≤ τ
  ρ_pos : 0 < ρ
  M_pos : 0 < M
  σK_pos : 0 < σK
  σB_pos : 0 < σB
  σT_pos : 0 < σT
  μ_pos : 0 < μ

/-- Blueprint `bp:p3:standing` (S1): the Hamiltonian (frozen G2, H1, verbatim). -/
structure S1 {n : ℕ} (M : ℝ) (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) : Prop where
  isOpen : IsOpen 𝔅
  transl_mem : ∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ 𝔅
  holo : DifferentiableOn ℂ h 𝔅
  periodic : ∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, h (z.1 + (fun i => (k i : ℂ)), z.2) = h z
  real : ∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ 𝔅 →
    (h ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0
  bounds : ∀ z ∈ 𝔅, ‖fderiv ℂ h z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ h z‖ ≤ M ∧
    ‖fderiv ℂ (hamiltonianVectorFieldℂ h) z‖ ≤ M ∧
    ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖ ≤ M

/-- Blueprint `bp:p3:standing` (S2): the frequency. -/
structure S2 {n : ℕ} (τ : ℝ) (ω : Fin n → ℝ) (γ : ℝ) : Prop where
  gamma_pos : 0 < γ
  dio : IsDiophantine γ τ ω

/-- Blueprint `bp:p3:standing` (S3): the reference torus. -/
structure S3 {n : ℕ} (ρ σK σB σT μ : ℝ) (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ω : Fin n → ℝ)
    (K₁ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Prop where
  holo : DifferentiableOn ℂ K₁ (complexStrip n ρ)
  primary : IsPrimaryOnStrip K₁ ρ
  real : IsRealOnReals K₁
  ball_sub : ∀ θ ∈ complexStrip n ρ, Metric.ball (K₁ θ) μ ⊆ 𝔅
  deriv_le : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K₁ θ‖ ≤ σK - μ
  gram : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K₁ θ).det ∧ ‖(gramMatrix K₁ θ)⁻¹‖ ≤ σB - μ
  twist : IsUnit (torsionAverage h K₁ ω).det ∧ ‖(torsionAverage h K₁ ω)⁻¹‖ ≤ σT - μ
  invariant : ∀ θ ∈ complexStrip n ρ, invarianceError h K₁ ω θ = 0

/-- Blueprint `bp:p3:standing` (S4): the second torus. -/
structure S4 {n : ℕ} (ρ : ℝ) (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ω : Fin n → ℝ)
    (K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) : Prop where
  holo : DifferentiableOn ℂ K₂ (complexStrip n ρ)
  primary : IsPrimaryOnStrip K₂ ρ
  real : IsRealOnReals K₂
  mem : ∀ θ ∈ complexStrip n ρ, K₂ θ ∈ 𝔅
  invariant : ∀ θ ∈ complexStrip n ρ, invarianceError h K₂ ω θ = 0

variable (n : ℕ) (τ ρ M σK σB σT μ : ℝ)

/-- `C_P = 2 n σ_K (1 + σ_B)` (`eq:p3:constants`): bounds the frame and its inverse. -/
def C_P : ℝ := 2 * n * σK * (1 + σB)
/-- `Γ = C_P M` (`eq:p3:constants`): bounds `|ω|` and `γ`. -/
def C_Gamma : ℝ := C_P n σK σB * M
/-- `C_tor = C_P² M (1 + 4 n C_P / ρ)` (`eq:p3:constants`): bounds the torsion on `T_{3ρ/4}`. -/
def C_tor : ℝ := C_P n σK σB ^ 2 * M * (1 + 4 * n * C_P n σK σB / ρ)
/-- `C_coh = c(n, τ)` (`eq:p3:constants`), the constant of `bp:p1:cohomological`. -/
def C_coh : ℝ := cohConst n τ
/-- `C^N = ½ C_P M [(1 + σ_T C_tor) C_coh + σ_T Γ ρ^{τ+n}]` (`eq:p3:Cquad`). -/
def C_N : ℝ := 1 / 2 * C_P n σK σB * M *
  ((1 + σT * C_tor n ρ M σK σB) * C_coh n τ + σT * C_Gamma n M σK σB * ρ ^ (τ + n))
/-- `C^L = C_coh [C_tor C^N + ½ C_P M Γ ρ^{τ+n}]` (`eq:p3:Cquad`). -/
def C_L : ℝ := C_coh n τ * (C_tor n ρ M σK σB * C_N n τ ρ M σK σB σT +
  1 / 2 * C_P n σK σB * M * C_Gamma n M σK σB * ρ ^ (τ + n))
/-- `C_quad = C_P max {C^L, Γ ρ^{τ+n} C^N}` (`eq:p3:Cquad`). -/
def C_quad : ℝ := C_P n σK σB *
  max (C_L n τ ρ M σK σB σT) (C_Gamma n M σK σB * ρ ^ (τ + n) * C_N n τ ρ M σK σB σT)
/-- The threshold `c` of G2, `eq:p3:c` (step `step:p3:g2-constant`). -/
def threshold : ℝ := (1 + 2 * C_P n σK σB * σK)⁻¹ *
  min (ρ ^ (1 - 2 * τ) / (4 * n * C_P n σK σB * C_Gamma n M σK σB ^ 2))
    (min (μ * ρ ^ (-(2 * τ)) / (2 * C_Gamma n M σK σB ^ 2))
      ((ρ / 32) ^ (2 * (τ + n)) * ρ ^ (-(2 * τ)) / (2 * C_quad n τ ρ M σK σB σT)))

variable {n τ ρ M σK σB σT μ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- Blueprint `bp:p3:standing` (claim after the assumption): (S1), (S2) contain
`bp:p2:standing`. -/
theorem standing_of (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ) :
    KAM.Apost.Standing n τ M σK σB σT 𝔅 h ω γ where
  two_le := hP.two_le
  tau_ge := hP.tau_ge
  M_pos := hP.M_pos
  σK_pos := hP.σK_pos
  σB_pos := hP.σB_pos
  σT_pos := hP.σT_pos
  isOpen := h1.isOpen
  transl_mem := h1.transl_mem
  holo := h1.holo
  periodic := h1.periodic
  real := h1.real
  bounds := fun z hz => ⟨(h1.bounds z hz).2.1, (h1.bounds z hz).2.2.1, (h1.bounds z hz).2.2.2⟩
  gamma_pos := h2.gamma_pos
  dio := h2.dio

end KAM.Uniq

end
