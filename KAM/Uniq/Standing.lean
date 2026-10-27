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

* positivity of every constant and of `threshold` (`C_P_pos`, …, `C_quad_pos`, `threshold_pos`);
* the bounds of the frame (`step:p3:norms-frame`) and of the frequency
  (`step:p3:frequency-omega`): `two_mul_n_mul_σK_le_C_P`, `σB_mul_two_mul_n_mul_σK_le_C_P`,
  `σK_mul_σB_le_C_P`, `σK_mul_one_add_σB_le_C_P`, `two_mul_n_mul_σK_mul_σB_mul_M_le_C_Gamma`;
* the bound of the torsion (`step:p3:torsion-bound-step`): `C_P_mul_torsion_coeff_le`;
* the absorption `1 ≤ Γ ρ^{τ+n} γ⁻¹ δ^{-(τ+n)}` of `bp:p3:quadratic` (`one_le_absorb`) and the
  coefficient bookkeeping of its steps (`normal_coeff_le`, `tangent_coeff_le`, `C_L_mul_eq`,
  `combine_coeff_le`, `inv_mul_rpow_sq`);
* the three smallness conditions of the threshold (`step:p3:g2-smallness`): `phase_small`,
  `delta_small`, `iteration_small` (bundled as `g2_smallness`), and the displayed estimate of
  `step:p3:g2-iteration` (`iteration_Q_small`, `iteration_Q_two_pow_small`).
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

/-! ### Elementary facts about the parameters -/

theorem Params.one_le_cast (hP : Params n τ ρ M σK σB σT μ) : (1 : ℝ) ≤ n := by
  have h : 1 ≤ n := by have := hP.two_le; omega
  exact_mod_cast h

theorem Params.two_le_cast (hP : Params n τ ρ M σK σB σT μ) : (2 : ℝ) ≤ n := by
  exact_mod_cast hP.two_le

theorem Params.n_pos (hP : Params n τ ρ M σK σB σT μ) : (0 : ℝ) < n :=
  zero_lt_one.trans_le hP.one_le_cast

/-- `τ ≥ n - 1 ≥ 1`. -/
theorem Params.tau_pos (hP : Params n τ ρ M σK σB σT μ) : 0 < τ := by
  have h2 := hP.two_le_cast
  have := hP.tau_ge
  linarith

/-- The exponent `κ = τ + n` of the small divisors is positive. -/
theorem Params.kappa_pos (hP : Params n τ ρ M σK σB σT μ) : 0 < τ + n := by
  have := hP.tau_pos
  have := hP.n_pos
  linarith

/-! ### Positivity of the constants -/

theorem C_P_pos (hP : Params n τ ρ M σK σB σT μ) : 0 < C_P n σK σB := by
  have := hP.n_pos
  have := hP.σK_pos
  have := hP.σB_pos
  unfold C_P
  positivity

theorem C_Gamma_pos (hP : Params n τ ρ M σK σB σT μ) : 0 < C_Gamma n M σK σB :=
  mul_pos (C_P_pos hP) hP.M_pos

theorem C_tor_pos (hP : Params n τ ρ M σK σB σT μ) : 0 < C_tor n ρ M σK σB := by
  have := C_P_pos hP
  have := hP.n_pos
  have := hP.M_pos
  have := hP.ρ_pos
  unfold C_tor
  positivity

theorem C_coh_pos (hP : Params n τ ρ M σK σB σT μ) : 0 < C_coh n τ := by
  have := hP.tau_pos
  have := hP.n_pos
  unfold C_coh cohConst
  positivity

theorem C_N_pos (hP : Params n τ ρ M σK σB σT μ) : 0 < C_N n τ ρ M σK σB σT := by
  have := C_P_pos hP
  have := C_Gamma_pos hP
  have := C_tor_pos hP
  have := C_coh_pos hP
  have := hP.M_pos
  have := hP.ρ_pos
  have := hP.σT_pos
  unfold C_N
  positivity

theorem C_L_pos (hP : Params n τ ρ M σK σB σT μ) : 0 < C_L n τ ρ M σK σB σT := by
  have := C_P_pos hP
  have := C_Gamma_pos hP
  have := C_tor_pos hP
  have := C_coh_pos hP
  have := C_N_pos hP
  have := hP.M_pos
  have := hP.ρ_pos
  unfold C_L
  positivity

theorem C_quad_pos (hP : Params n τ ρ M σK σB σT μ) : 0 < C_quad n τ ρ M σK σB σT :=
  mul_pos (C_P_pos hP) (lt_max_of_lt_left (C_L_pos hP))

/-- `1 + 2 C_P σ_K > 0`, the factor of the threshold and of the closeness bounds. -/
theorem one_add_two_mul_C_P_mul_σK_pos (hP : Params n τ ρ M σK σB σT μ) :
    0 < 1 + 2 * C_P n σK σB * σK := by
  have := C_P_pos hP
  have := hP.σK_pos
  positivity

/-- The three terms of the minimum in `eq:p3:c` are positive, hence `c > 0`. -/
theorem threshold_pos (hP : Params n τ ρ M σK σB σT μ) : 0 < threshold n τ ρ M σK σB σT μ := by
  have := C_P_pos hP
  have := C_Gamma_pos hP
  have := C_quad_pos hP
  have := hP.n_pos
  have := hP.ρ_pos
  have := hP.μ_pos
  have := one_add_two_mul_C_P_mul_σK_pos hP
  unfold threshold
  positivity

/-! ### The frame (`step:p3:norms-frame`) and the frequency (`step:p3:frequency-omega`) -/

/-- `|L^T| ≤ 2 n σ_K ≤ C_P`. -/
theorem two_mul_n_mul_σK_le_C_P (hP : Params n τ ρ M σK σB σT μ) :
    2 * (n : ℝ) * σK ≤ C_P n σK σB := by
  have hn := hP.n_pos
  have hK := hP.σK_pos
  have hB := hP.σB_pos
  unfold C_P
  nlinarith [mul_pos hn hK, mul_pos (mul_pos hn hK) hB]

/-- `|B L^T| ≤ σ_B · 2 n σ_K ≤ C_P`. -/
theorem σB_mul_two_mul_n_mul_σK_le_C_P (hP : Params n τ ρ M σK σB σT μ) :
    σB * (2 * (n : ℝ) * σK) ≤ C_P n σK σB := by
  have hn := hP.n_pos
  have hK := hP.σK_pos
  have hB := hP.σB_pos
  unfold C_P
  nlinarith [mul_pos hn hK, mul_pos (mul_pos hn hK) hB]

/-- `|N| ≤ σ_K σ_B ≤ C_P`, used in the bound of the torsion. -/
theorem σK_mul_σB_le_C_P (hP : Params n τ ρ M σK σB σT μ) : σK * σB ≤ C_P n σK σB := by
  have hn := hP.one_le_cast
  have hK := hP.σK_pos
  have hB := hP.σB_pos
  have hKB : 0 < σK * σB := mul_pos hK hB
  unfold C_P
  nlinarith [mul_pos hK hB]

/-- `|P| ≤ |L| + |N| ≤ σ_K (1 + σ_B) ≤ C_P`. -/
theorem σK_mul_one_add_σB_le_C_P (hP : Params n τ ρ M σK σB σT μ) :
    σK * (1 + σB) ≤ C_P n σK σB := by
  have hn := hP.one_le_cast
  have hK := hP.σK_pos
  have hB := hP.σB_pos
  have hKB : 0 < σK * (1 + σB) := mul_pos hK (by linarith)
  unfold C_P
  nlinarith [mul_pos hK hB]

/-- `|ω| ≤ 2 n σ_K σ_B M ≤ C_P M = Γ` (Lemma `bp:p2:frequency` with `ε = 0`). -/
theorem two_mul_n_mul_σK_mul_σB_mul_M_le_C_Gamma (hP : Params n τ ρ M σK σB σT μ) :
    2 * (n : ℝ) * σK * σB * M ≤ C_Gamma n M σK σB := by
  have hM := hP.M_pos
  have h := σB_mul_two_mul_n_mul_σK_le_C_P hP
  unfold C_Gamma
  have : 2 * (n : ℝ) * σK * σB * M = (σB * (2 * (n : ℝ) * σK)) * M := by ring
  rw [this]
  exact mul_le_mul_of_nonneg_right h hM.le

/-! ### The torsion (`step:p3:torsion-bound-step`) -/

/-- The coefficient of `X_N`: `|X_N| ≤ M σ_K σ_B + 4 n Γ σ_K σ_B / ρ`, and
`C_P · (M σ_K σ_B + 4 n Γ σ_K σ_B / ρ) ≤ C_tor`. -/
theorem C_P_mul_torsion_coeff_le (hP : Params n τ ρ M σK σB σT μ) :
    C_P n σK σB * (M * (σK * σB) + 4 * n * C_Gamma n M σK σB * (σK * σB) / ρ) ≤
      C_tor n ρ M σK σB := by
  have hn := hP.n_pos
  have hM := hP.M_pos
  have hρ := hP.ρ_pos
  have hCP := C_P_pos hP
  have hKB : 0 < σK * σB := mul_pos hP.σK_pos hP.σB_pos
  have hle := σK_mul_σB_le_C_P hP
  have hX : M * (σK * σB) + 4 * n * C_Gamma n M σK σB * (σK * σB) / ρ =
      (σK * σB) * (M * (1 + 4 * n * C_P n σK σB / ρ)) := by
    unfold C_Gamma
    ring
  have hpos : 0 ≤ M * (1 + 4 * n * C_P n σK σB / ρ) := by positivity
  have hY : (σK * σB) * (M * (1 + 4 * n * C_P n σK σB / ρ)) ≤
      C_P n σK σB * (M * (1 + 4 * n * C_P n σK σB / ρ)) :=
    mul_le_mul_of_nonneg_right hle hpos
  rw [hX]
  calc C_P n σK σB * ((σK * σB) * (M * (1 + 4 * n * C_P n σK σB / ρ)))
      ≤ C_P n σK σB * (C_P n σK σB * (M * (1 + 4 * n * C_P n σK σB / ρ))) :=
        mul_le_mul_of_nonneg_left hY hCP.le
    _ = C_tor n ρ M σK σB := by unfold C_tor; ring

/-! ### Absorption and the coefficients of the quadratic estimate (`bp:p3:quadratic`)

Throughout, `a` stands for the small-divisor factor `(γ δ^{τ+n})⁻¹` and `Y2` for `‖Δ‖_{ρ'}²`.
The hypothesis `1 ≤ Γ ρ^{τ+n} a` is `eq:p3:absorb` (`one_le_absorb`). -/

/-- `eq:p3:absorb`: for `0 < γ ≤ Γ` and `0 < δ ≤ ρ`, `1 ≤ Γ ρ^{τ+n} (γ δ^{τ+n})⁻¹`. -/
theorem one_le_absorb (hP : Params n τ ρ M σK σB σT μ) {γ δ : ℝ} (hγ : 0 < γ)
    (hγΓ : γ ≤ C_Gamma n M σK σB) (hδ : 0 < δ) (hδρ : δ ≤ ρ) :
    1 ≤ C_Gamma n M σK σB * ρ ^ (τ + n) * (γ * δ ^ (τ + n))⁻¹ := by
  have hκ := hP.kappa_pos
  have hδκ : 0 < δ ^ (τ + n) := Real.rpow_pos_of_pos hδ _
  have hρκ : δ ^ (τ + n) ≤ ρ ^ (τ + n) := Real.rpow_le_rpow hδ.le hδρ hκ.le
  have hden : 0 < γ * δ ^ (τ + n) := mul_pos hγ hδκ
  rw [← div_eq_mul_inv, one_le_div hden]
  exact mul_le_mul hγΓ hρκ hδκ.le (C_Gamma_pos hP).le

/-- The square of the small-divisor factor: `(γ δ^{τ+n})⁻¹² = (γ²)⁻¹ δ^{-2(τ+n)}`. -/
theorem inv_mul_rpow_sq {γ δ : ℝ} (hδ : 0 < δ) (κ : ℝ) :
    ((γ * δ ^ κ)⁻¹) ^ 2 = (γ ^ 2)⁻¹ * δ ^ (-(2 * κ)) := by
  have h1 : δ ^ (-(2 * κ)) = ((δ ^ κ) ^ 2)⁻¹ := by
    rw [Real.rpow_neg hδ.le, ← Real.rpow_natCast, ← Real.rpow_mul hδ.le]
    norm_num
    ring_nf
  rw [h1, inv_pow, mul_pow, mul_inv]

/-- Step `step:p3:quad-normal`: the coefficient `C^N`. If `X ≤ C_coh a (½ C_P M Y2)` then
`(1 + σ_T C_tor) X + ½ σ_T C_P M Y2 ≤ C^N a Y2`. -/
theorem normal_coeff_le (hP : Params n τ ρ M σK σB σT μ) {a Y2 X : ℝ}
    (hY : 0 ≤ Y2) (habs : 1 ≤ C_Gamma n M σK σB * ρ ^ (τ + n) * a)
    (hX : X ≤ C_coh n τ * a * (1 / 2 * C_P n σK σB * M * Y2)) :
    (1 + σT * C_tor n ρ M σK σB) * X + 1 / 2 * σT * C_P n σK σB * M * Y2 ≤
      C_N n τ ρ M σK σB σT * a * Y2 := by
  have hCP := C_P_pos hP
  have hM := hP.M_pos
  have hσT := hP.σT_pos
  have hto := C_tor_pos hP
  have hcoh := C_coh_pos hP
  have hq : 0 ≤ 1 / 2 * σT * C_P n σK σB * M * Y2 := by positivity
  have h1 : (1 + σT * C_tor n ρ M σK σB) * X ≤
      (1 + σT * C_tor n ρ M σK σB) * (C_coh n τ * a * (1 / 2 * C_P n σK σB * M * Y2)) :=
    mul_le_mul_of_nonneg_left hX (by positivity)
  have h2 : 1 / 2 * σT * C_P n σK σB * M * Y2 ≤
      (C_Gamma n M σK σB * ρ ^ (τ + n) * a) * (1 / 2 * σT * C_P n σK σB * M * Y2) := by
    simpa using mul_le_mul_of_nonneg_right habs hq
  have h3 : C_N n τ ρ M σK σB σT * a * Y2 =
      (1 + σT * C_tor n ρ M σK σB) * (C_coh n τ * a * (1 / 2 * C_P n σK σB * M * Y2)) +
      (C_Gamma n M σK σB * ρ ^ (τ + n) * a) * (1 / 2 * σT * C_P n σK σB * M * Y2) := by
    unfold C_N
    ring
  rw [h3]
  linarith

/-- Step `step:p3:quad-tangent`: if `Z ≤ C^N a Y2` then
`C_tor Z + ½ C_P M Y2 ≤ (C_tor C^N + ½ C_P M Γ ρ^{τ+n}) a Y2`. -/
theorem tangent_coeff_le (hP : Params n τ ρ M σK σB σT μ) {a Y2 Z : ℝ}
    (hY : 0 ≤ Y2) (habs : 1 ≤ C_Gamma n M σK σB * ρ ^ (τ + n) * a)
    (hZ : Z ≤ C_N n τ ρ M σK σB σT * a * Y2) :
    C_tor n ρ M σK σB * Z + 1 / 2 * C_P n σK σB * M * Y2 ≤
      (C_tor n ρ M σK σB * C_N n τ ρ M σK σB σT +
        1 / 2 * C_P n σK σB * M * C_Gamma n M σK σB * ρ ^ (τ + n)) * a * Y2 := by
  have hCP := C_P_pos hP
  have hM := hP.M_pos
  have hto := C_tor_pos hP
  have hq : 0 ≤ 1 / 2 * C_P n σK σB * M * Y2 := by positivity
  have h1 : C_tor n ρ M σK σB * Z ≤ C_tor n ρ M σK σB * (C_N n τ ρ M σK σB σT * a * Y2) :=
    mul_le_mul_of_nonneg_left hZ hto.le
  have h2 : 1 / 2 * C_P n σK σB * M * Y2 ≤
      (C_Gamma n M σK σB * ρ ^ (τ + n) * a) * (1 / 2 * C_P n σK σB * M * Y2) := by
    simpa using mul_le_mul_of_nonneg_right habs hq
  have h3 : (C_tor n ρ M σK σB * C_N n τ ρ M σK σB σT +
        1 / 2 * C_P n σK σB * M * C_Gamma n M σK σB * ρ ^ (τ + n)) * a * Y2 =
      C_tor n ρ M σK σB * (C_N n τ ρ M σK σB σT * a * Y2) +
      (C_Gamma n M σK σB * ρ ^ (τ + n) * a) * (1 / 2 * C_P n σK σB * M * Y2) := by
    ring
  rw [h3]
  linarith

/-- Step `step:p3:quad-tangent`, second half: `C^L = C_coh (C_tor C^N + ½ C_P M Γ ρ^{τ+n})`, so
`C_coh a (C_tor C^N + ½ C_P M Γ ρ^{τ+n}) a Y2 = C^L a² Y2`. -/
theorem C_L_mul_eq (a Y2 : ℝ) :
    C_coh n τ * a * ((C_tor n ρ M σK σB * C_N n τ ρ M σK σB σT +
        1 / 2 * C_P n σK σB * M * C_Gamma n M σK σB * ρ ^ (τ + n)) * a * Y2) =
      C_L n τ ρ M σK σB σT * a ^ 2 * Y2 := by
  unfold C_L
  ring

/-- Step `step:p3:quad-combine`: if `XL ≤ C^L a² Y2` and `XN ≤ C^N a Y2` then
`C_P max {XL, XN} ≤ C_quad a² Y2`. -/
theorem combine_coeff_le (hP : Params n τ ρ M σK σB σT μ) {a Y2 XL XN : ℝ} (ha : 0 ≤ a)
    (hY : 0 ≤ Y2) (habs : 1 ≤ C_Gamma n M σK σB * ρ ^ (τ + n) * a)
    (hXL : XL ≤ C_L n τ ρ M σK σB σT * a ^ 2 * Y2)
    (hXN : XN ≤ C_N n τ ρ M σK σB σT * a * Y2) :
    C_P n σK σB * max XL XN ≤ C_quad n τ ρ M σK σB σT * a ^ 2 * Y2 := by
  have hCP := C_P_pos hP
  have hCN := C_N_pos hP
  have hq : 0 ≤ C_N n τ ρ M σK σB σT * a * Y2 := by positivity
  have h2 : XN ≤ C_Gamma n M σK σB * ρ ^ (τ + n) * C_N n τ ρ M σK σB σT * a ^ 2 * Y2 := by
    have := mul_le_mul_of_nonneg_right habs hq
    calc XN ≤ C_N n τ ρ M σK σB σT * a * Y2 := hXN
      _ ≤ C_Gamma n M σK σB * ρ ^ (τ + n) * a * (C_N n τ ρ M σK σB σT * a * Y2) := by
        simpa using this
      _ = C_Gamma n M σK σB * ρ ^ (τ + n) * C_N n τ ρ M σK σB σT * a ^ 2 * Y2 := by ring
  have hm : 0 ≤ a ^ 2 * Y2 := by positivity
  have hmax : max XL XN ≤ max (C_L n τ ρ M σK σB σT)
      (C_Gamma n M σK σB * ρ ^ (τ + n) * C_N n τ ρ M σK σB σT) * (a ^ 2 * Y2) := by
    refine max_le ?_ ?_
    · calc XL ≤ C_L n τ ρ M σK σB σT * (a ^ 2 * Y2) := by rw [← mul_assoc]; exact hXL
        _ ≤ _ := mul_le_mul_of_nonneg_right (le_max_left _ _) hm
    · calc XN ≤ (C_Gamma n M σK σB * ρ ^ (τ + n) * C_N n τ ρ M σK σB σT) * (a ^ 2 * Y2) := by
            rw [← mul_assoc]; exact h2
        _ ≤ _ := mul_le_mul_of_nonneg_right (le_max_right _ _) hm
  calc C_P n σK σB * max XL XN ≤ C_P n σK σB * (max (C_L n τ ρ M σK σB σT)
      (C_Gamma n M σK σB * ρ ^ (τ + n) * C_N n τ ρ M σK σB σT) * (a ^ 2 * Y2)) :=
        mul_le_mul_of_nonneg_left hmax hCP.le
    _ = C_quad n τ ρ M σK σB σT * a ^ 2 * Y2 := by unfold C_quad; ring

/-! ### The threshold and the three smallness conditions (`step:p3:g2-smallness`) -/

/-- The factor `1 + 2 C_P σ_K` times the threshold is the minimum of `eq:p3:c`. -/
theorem one_add_mul_threshold (hP : Params n τ ρ M σK σB σT μ) :
    (1 + 2 * C_P n σK σB * σK) * threshold n τ ρ M σK σB σT μ =
      min (ρ ^ (1 - 2 * τ) / (4 * n * C_P n σK σB * C_Gamma n M σK σB ^ 2))
        (min (μ * ρ ^ (-(2 * τ)) / (2 * C_Gamma n M σK σB ^ 2))
          ((ρ / 32) ^ (2 * (τ + n)) * ρ ^ (-(2 * τ)) / (2 * C_quad n τ ρ M σK σB σT))) := by
  unfold threshold
  rw [← mul_assoc, mul_inv_cancel₀ (one_add_two_mul_C_P_mul_σK_pos hP).ne', one_mul]

/-- `closeness`: from `η ≤ c γ² ρ^{2τ}`, `(1 + 2 C_P σ_K) η` is at most the minimum of `eq:p3:c`
times `γ² ρ^{2τ}`. -/
theorem one_add_mul_le_min (hP : Params n τ ρ M σK σB σT μ) {γ η : ℝ}
    (hη : η ≤ threshold n τ ρ M σK σB σT μ * γ ^ 2 * ρ ^ (2 * τ)) :
    (1 + 2 * C_P n σK σB * σK) * η ≤
      min (ρ ^ (1 - 2 * τ) / (4 * n * C_P n σK σB * C_Gamma n M σK σB ^ 2))
        (min (μ * ρ ^ (-(2 * τ)) / (2 * C_Gamma n M σK σB ^ 2))
          ((ρ / 32) ^ (2 * (τ + n)) * ρ ^ (-(2 * τ)) / (2 * C_quad n τ ρ M σK σB σT))) *
        (γ ^ 2 * ρ ^ (2 * τ)) := by
  have hs := one_add_two_mul_C_P_mul_σK_pos hP
  calc (1 + 2 * C_P n σK σB * σK) * η
      ≤ (1 + 2 * C_P n σK σB * σK) *
          (threshold n τ ρ M σK σB σT μ * γ ^ 2 * ρ ^ (2 * τ)) :=
        mul_le_mul_of_nonneg_left hη hs.le
    _ = ((1 + 2 * C_P n σK σB * σK) * threshold n τ ρ M σK σB σT μ) *
          (γ ^ 2 * ρ ^ (2 * τ)) := by ring
    _ = _ := by rw [one_add_mul_threshold hP]

/-- `ρ^{1-2τ} ρ^{2τ} = ρ`. -/
theorem rpow_one_sub_mul_rpow (hρ : 0 < ρ) (τ : ℝ) : ρ ^ (1 - 2 * τ) * ρ ^ (2 * τ) = ρ := by
  rw [← Real.rpow_add hρ, sub_add_cancel, Real.rpow_one]

/-- `ρ^{-2τ} ρ^{2τ} = 1`. -/
theorem rpow_neg_mul_rpow (hρ : 0 < ρ) (τ : ℝ) : ρ ^ (-(2 * τ)) * ρ ^ (2 * τ) = 1 := by
  rw [← Real.rpow_add hρ, neg_add_cancel, Real.rpow_zero]

/-- First smallness condition (the hypothesis of `bp:p3:phase`), from `γ ≤ Γ`:
`η ≤ ρ / (4 n C_P (1 + 2 C_P σ_K))`. -/
theorem phase_small (hP : Params n τ ρ M σK σB σT μ) {γ η : ℝ} (hγ : 0 < γ)
    (hγΓ : γ ≤ C_Gamma n M σK σB)
    (hη : η ≤ threshold n τ ρ M σK σB σT μ * γ ^ 2 * ρ ^ (2 * τ)) :
    η ≤ ρ / (4 * n * C_P n σK σB * (1 + 2 * C_P n σK σB * σK)) := by
  have hCP := C_P_pos hP
  have hΓ := C_Gamma_pos hP
  have hn := hP.n_pos
  have hρ := hP.ρ_pos
  have hs := one_add_two_mul_C_P_mul_σK_pos hP
  have hρτ : 0 < ρ ^ (2 * τ) := Real.rpow_pos_of_pos hρ _
  have hmin := (one_add_mul_le_min hP hη).trans
    (mul_le_mul_of_nonneg_right (min_le_left _ _) (by positivity))
  have hγ2 : γ ^ 2 ≤ C_Gamma n M σK σB ^ 2 := pow_le_pow_left₀ hγ.le hγΓ 2
  have hA : ρ ^ (1 - 2 * τ) / (4 * n * C_P n σK σB * C_Gamma n M σK σB ^ 2) *
      (γ ^ 2 * ρ ^ (2 * τ)) ≤ ρ / (4 * n * C_P n σK σB) := by
    calc ρ ^ (1 - 2 * τ) / (4 * n * C_P n σK σB * C_Gamma n M σK σB ^ 2) *
          (γ ^ 2 * ρ ^ (2 * τ))
        ≤ ρ ^ (1 - 2 * τ) / (4 * n * C_P n σK σB * C_Gamma n M σK σB ^ 2) *
          (C_Gamma n M σK σB ^ 2 * ρ ^ (2 * τ)) := by
          gcongr
      _ = (ρ ^ (1 - 2 * τ) * ρ ^ (2 * τ)) / (4 * n * C_P n σK σB) := by
          field_simp
      _ = ρ / (4 * n * C_P n σK σB) := by rw [rpow_one_sub_mul_rpow hρ]
  have h4 : 0 < 4 * (n : ℝ) * C_P n σK σB := by positivity
  rw [le_div_iff₀ (by positivity)]
  calc η * (4 * n * C_P n σK σB * (1 + 2 * C_P n σK σB * σK))
      = (4 * n * C_P n σK σB) * ((1 + 2 * C_P n σK σB * σK) * η) := by ring
    _ ≤ (4 * n * C_P n σK σB) * (ρ / (4 * n * C_P n σK σB)) :=
        mul_le_mul_of_nonneg_left (hmin.trans hA) h4.le
    _ = ρ := by field_simp

/-- Second smallness condition, from `γ ≤ Γ`: `(1 + 2 C_P σ_K) η ≤ μ / 2`. -/
theorem delta_small (hP : Params n τ ρ M σK σB σT μ) {γ η : ℝ} (hγ : 0 < γ)
    (hγΓ : γ ≤ C_Gamma n M σK σB)
    (hη : η ≤ threshold n τ ρ M σK σB σT μ * γ ^ 2 * ρ ^ (2 * τ)) :
    (1 + 2 * C_P n σK σB * σK) * η ≤ μ / 2 := by
  have hΓ := C_Gamma_pos hP
  have hρ := hP.ρ_pos
  have hρτ : 0 < ρ ^ (2 * τ) := Real.rpow_pos_of_pos hρ _
  have hmin := (one_add_mul_le_min hP hη).trans
    (mul_le_mul_of_nonneg_right ((min_le_right _ _).trans (min_le_left _ _)) (by positivity))
  have hγ2 : γ ^ 2 ≤ C_Gamma n M σK σB ^ 2 := pow_le_pow_left₀ hγ.le hγΓ 2
  refine hmin.trans ?_
  calc μ * ρ ^ (-(2 * τ)) / (2 * C_Gamma n M σK σB ^ 2) * (γ ^ 2 * ρ ^ (2 * τ))
      ≤ μ * ρ ^ (-(2 * τ)) / (2 * C_Gamma n M σK σB ^ 2) *
        (C_Gamma n M σK σB ^ 2 * ρ ^ (2 * τ)) := by
        have := hP.μ_pos
        gcongr
    _ = μ * (ρ ^ (-(2 * τ)) * ρ ^ (2 * τ)) / 2 := by field_simp
    _ = μ / 2 := by rw [rpow_neg_mul_rpow hρ, mul_one]

/-- Third smallness condition (it uses `γ` itself, not `Γ`):
`(1 + 2 C_P σ_K) η ≤ γ² (ρ/32)^{2(τ+n)} / (2 C_quad)`. -/
theorem iteration_small (hP : Params n τ ρ M σK σB σT μ) {γ η : ℝ}
    (hη : η ≤ threshold n τ ρ M σK σB σT μ * γ ^ 2 * ρ ^ (2 * τ)) :
    (1 + 2 * C_P n σK σB * σK) * η ≤
      γ ^ 2 * (ρ / 32) ^ (2 * (τ + n)) / (2 * C_quad n τ ρ M σK σB σT) := by
  have hQ := C_quad_pos hP
  have hρ := hP.ρ_pos
  have hmin := (one_add_mul_le_min hP hη).trans
    (mul_le_mul_of_nonneg_right ((min_le_right _ _).trans (min_le_right _ _))
      (by have := Real.rpow_pos_of_pos hρ (2 * τ); positivity))
  refine hmin.trans (le_of_eq ?_)
  calc (ρ / 32) ^ (2 * (τ + n)) * ρ ^ (-(2 * τ)) / (2 * C_quad n τ ρ M σK σB σT) *
        (γ ^ 2 * ρ ^ (2 * τ))
      = γ ^ 2 * (ρ / 32) ^ (2 * (τ + n)) * (ρ ^ (-(2 * τ)) * ρ ^ (2 * τ)) /
          (2 * C_quad n τ ρ M σK σB σT) := by field_simp
    _ = γ ^ 2 * (ρ / 32) ^ (2 * (τ + n)) / (2 * C_quad n τ ρ M σK σB σT) := by
        rw [rpow_neg_mul_rpow hρ, mul_one]

/-- `(ρ/32)^{-p} = (ρ/16)^{-p} 2^p`: the factor `2^p` of `Q 2^p y₀` in `step:p3:g2-iteration`. -/
theorem rpow_div_thirtytwo (hρ : 0 < ρ) (p : ℝ) :
    (ρ / 32) ^ (-p) = (ρ / 16) ^ (-p) * (2 : ℝ) ^ p := by
  have h : ρ / 32 = ρ / 16 * 2⁻¹ := by ring
  have h16 : 0 ≤ ρ / 16 := by positivity
  rw [h, Real.mul_rpow h16 (by norm_num), Real.inv_rpow (by norm_num),
    Real.rpow_neg (by norm_num : (0 : ℝ) ≤ 2), inv_inv]

/-- The displayed estimate of `step:p3:g2-iteration`:
`C_quad γ⁻² (ρ/32)^{-2(τ+n)} (1 + 2 C_P σ_K) η ≤ 1/2`, from the third smallness condition. -/
theorem iteration_Q_small (hP : Params n τ ρ M σK σB σT μ) {γ η : ℝ} (hγ : 0 < γ)
    (hη : η ≤ threshold n τ ρ M σK σB σT μ * γ ^ 2 * ρ ^ (2 * τ)) :
    C_quad n τ ρ M σK σB σT * (γ ^ 2)⁻¹ * (ρ / 32) ^ (-(2 * (τ + n))) *
      ((1 + 2 * C_P n σK σB * σK) * η) ≤ 1 / 2 := by
  have hQ := C_quad_pos hP
  have hρ := hP.ρ_pos
  have hp : 0 < (ρ / 32) ^ (2 * (τ + n)) := Real.rpow_pos_of_pos (by positivity) _
  have h3 := iteration_small hP hη
  have hneg : (ρ / 32) ^ (-(2 * (τ + n))) = ((ρ / 32) ^ (2 * (τ + n)))⁻¹ :=
    Real.rpow_neg (by positivity) _
  rw [hneg]
  have hγ2 : 0 < γ ^ 2 := pow_pos hγ 2
  have hfac : 0 ≤ C_quad n τ ρ M σK σB σT * (γ ^ 2)⁻¹ * ((ρ / 32) ^ (2 * (τ + n)))⁻¹ := by
    positivity
  calc C_quad n τ ρ M σK σB σT * (γ ^ 2)⁻¹ * ((ρ / 32) ^ (2 * (τ + n)))⁻¹ *
        ((1 + 2 * C_P n σK σB * σK) * η)
      ≤ C_quad n τ ρ M σK σB σT * (γ ^ 2)⁻¹ * ((ρ / 32) ^ (2 * (τ + n)))⁻¹ *
        (γ ^ 2 * (ρ / 32) ^ (2 * (τ + n)) / (2 * C_quad n τ ρ M σK σB σT)) :=
        mul_le_mul_of_nonneg_left h3 hfac
    _ = 1 / 2 := by field_simp

/-- The displayed estimate of `step:p3:g2-iteration` with the constants of the recursion
`y_{m+1} ≤ Q 2^{pm} y_m²`, `Q = C_quad γ⁻² (ρ/16)^{-p}`, `p = 2(τ+n)`: `Q 2^p y₀ ≤ 1/2` for
`y₀ = (1 + 2 C_P σ_K) η`. -/
theorem iteration_Q_two_pow_small (hP : Params n τ ρ M σK σB σT μ) {γ η : ℝ} (hγ : 0 < γ)
    (hη : η ≤ threshold n τ ρ M σK σB σT μ * γ ^ 2 * ρ ^ (2 * τ)) :
    C_quad n τ ρ M σK σB σT * (γ ^ 2)⁻¹ * (ρ / 16) ^ (-(2 * (τ + n))) *
      (2 : ℝ) ^ (2 * (τ + n)) * ((1 + 2 * C_P n σK σB * σK) * η) ≤ 1 / 2 := by
  have h := iteration_Q_small hP hγ hη
  rw [rpow_div_thirtytwo hP.ρ_pos] at h
  calc _ = C_quad n τ ρ M σK σB σT * (γ ^ 2)⁻¹ * ((ρ / 16) ^ (-(2 * (τ + n))) *
        (2 : ℝ) ^ (2 * (τ + n))) * ((1 + 2 * C_P n σK σB * σK) * η) := by ring
    _ ≤ 1 / 2 := h

/-- The three smallness conditions of `step:p3:g2-smallness` at once: from `0 < γ ≤ Γ` and the
closeness `η ≤ c γ² ρ^{2τ}`. -/
theorem g2_smallness (hP : Params n τ ρ M σK σB σT μ) {γ η : ℝ} (hγ : 0 < γ)
    (hγΓ : γ ≤ C_Gamma n M σK σB)
    (hη : η ≤ threshold n τ ρ M σK σB σT μ * γ ^ 2 * ρ ^ (2 * τ)) :
    η ≤ ρ / (4 * n * C_P n σK σB * (1 + 2 * C_P n σK σB * σK)) ∧
    (1 + 2 * C_P n σK σB * σK) * η ≤ μ / 2 ∧
    (1 + 2 * C_P n σK σB * σK) * η ≤
      γ ^ 2 * (ρ / 32) ^ (2 * (τ + n)) / (2 * C_quad n τ ρ M σK σB σT) :=
  ⟨phase_small hP hγ hγΓ hη, delta_small hP hγ hγΓ hη, iteration_small hP hη⟩

/-- The parameters of Part 3 contain those of Part 2 (`bp:p2:standing`). -/
theorem Params.toApost (hP : Params n τ ρ M σK σB σT μ) :
    KAM.Apost.Params n τ M σK σB σT where
  two_le := hP.two_le
  tau_ge := hP.tau_ge
  M_pos := hP.M_pos
  σK_pos := hP.σK_pos
  σB_pos := hP.σB_pos
  σT_pos := hP.σT_pos

end KAM.Uniq

end
