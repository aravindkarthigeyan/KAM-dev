/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Limit
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# G1 with explicit constants

Blueprint Part 2, Theorem `bp:p2:g1` (`KAM.Apost.g1_explicit`): the frozen statement of
`KAM.aposteriori_kam` with the explicit constants

* `C₁ = ρ^{4τ} max {γ̄⁴, 𝔠_* δ₀^{-2a}}` (`KAM.Apost.C_1`),
* `C₂ = 2 C_ΔK ρ^{2τ} δ₀^{-a}` (`KAM.Apost.C_2`).

The body is copied verbatim from `KAM/Frozen/Theorems/AposterioriKam.lean`, with `C₁` and `C₂`
instantiated. The provider `KAM.Provider.aposteriori_kam` is the one-line anonymous constructor
`⟨_, _, g1_explicit …⟩`.

The proof follows the blueprint.

* `step:p2:g1-constants`: `0 < C₁` and `0 < C₂` from `KAM.Apost.one_le_C_DK` and
  `KAM.Apost.delta0_pos`.
* `step:p2:g1-standing`: the structure `KAM.Apost.Standing` is built from H1 (without the bound
  on `Dh`, which the blueprint does not use) and H5.
* `step:p2:g1-e`: `KAM.Apost.g1_error_small` gives `e < 1` and `𝔠_* e/(γ⁴ δ₀^{2a}) < 1`.
* `step:p2:g1-apply`: the row sums of H3 and H4 become operator norms
  (`KAM.norm_le_iff_forall_rowSum`; `KAM.Apost.norm_le_of_rowSum_le`), and `KAM.Apost.limit`
  applies.
* `step:p2:g1-check`: the seven clauses of the conclusion are those of `KAM.Apost.limit`, with
  `2 C_ΔK e/(γ² δ₀^a) = C₂ e/(γ² ρ^{2τ})` (`KAM.Apost.g1_closeness_eq`).

`T_r` is `complexStrip n r`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator

namespace KAM.Apost

/-- `C₁ = ρ^{4τ} max {γ̄⁴, 𝔠_* δ₀^{-2a}}`. -/
def C_1 (n : ℕ) (τ ρ ρinf M σK σB σT μ γbar : ℝ) : ℝ :=
  ρ ^ (4 * τ) * max (γbar ^ 4) (c_star n τ M σK σB σT μ * delta0 ρ ρinf ^ (-(2 * aExp n τ)))

/-- `C₂ = 2 C_ΔK ρ^{2τ} δ₀^{-a}`. -/
def C_2 (n : ℕ) (τ ρ ρinf M σK σB σT : ℝ) : ℝ :=
  2 * C_DK n τ M σK σB σT * ρ ^ (2 * τ) * delta0 ρ ρinf ^ (-aExp n τ)

/-- Step `step:p2:g1-constants`: `C₁ > 0`. -/
theorem C_1_pos {n : ℕ} {τ ρ ρinf M σK σB σT μ γbar : ℝ} (hρ : 0 < ρ) (hγbar : 0 < γbar) :
    0 < C_1 n τ ρ ρinf M σK σB σT μ γbar :=
  mul_pos (Real.rpow_pos_of_pos hρ _) (lt_max_of_lt_left (pow_pos hγbar 4))

/-- Step `step:p2:g1-constants`: `C₂ > 0`. -/
theorem C_2_pos {n : ℕ} {τ ρ ρinf M σK σB σT : ℝ} (hP : Params n τ M σK σB σT) (hρ : 0 < ρ)
    (hρinf : ρinf < ρ) : 0 < C_2 n τ ρ ρinf M σK σB σT :=
  mul_pos (mul_pos (mul_pos two_pos (zero_lt_one.trans_le (one_le_C_DK hP)))
    (Real.rpow_pos_of_pos hρ _)) (Real.rpow_pos_of_pos (delta0_pos hρinf) _)

/-- A bound on all absolute row sums of a square matrix with at least one row is a bound on its
operator norm (the bound is nonnegative since a row sum is). -/
theorem norm_le_of_rowSum_le {n : ℕ} (hn : 2 ≤ n) {M : Matrix (Fin n) (Fin n) ℂ} {B : ℝ}
    (h : ∀ i, ∑ j, ‖M i j‖ ≤ B) : ‖M‖ ≤ B := by
  have hB : 0 ≤ B :=
    (Finset.sum_nonneg fun j _ => norm_nonneg (M ⟨0, by omega⟩ j)).trans (h ⟨0, by omega⟩)
  exact (norm_le_iff_forall_rowSum hB).2 h

/-- Blueprint `bp:p2:g1`: the frozen G1 with the explicit `C₁`, `C₂` (body copied verbatim from
`KAM/Frozen/Theorems/AposterioriKam.lean`, `C₁ C₂` instantiated). -/
theorem g1_explicit {n : ℕ} (hn : 2 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 ≤ τ)
    {ρ ρinf : ℝ} (hρinf : 0 < ρinf) (hρinfρ : ρinf < ρ)
    {M σK σB σT μ : ℝ} (hM : 0 < M) (hσK : 0 < σK) (hσB : 0 < σB) (hσT : 0 < σT) (hμ : 0 < μ)
    {γbar : ℝ} (hγbar : 0 < γbar) :
    0 < C_1 n τ ρ ρinf M σK σB σT μ γbar ∧ 0 < C_2 n τ ρ ρinf M σK σB σT ∧
      ∀ (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))) (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
        (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (γ e : ℝ),
        IsOpen 𝔅 →
        (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ 𝔅) →
        DifferentiableOn ℂ h 𝔅 →
        (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, h (z.1 + (fun i => (k i : ℂ)), z.2) = h z) →
        (∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ 𝔅 →
          (h ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
        (∀ z ∈ 𝔅, ‖fderiv ℂ h z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ h z‖ ≤ M ∧
          ‖fderiv ℂ (hamiltonianVectorFieldℂ h) z‖ ≤ M ∧
          ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖ ≤ M) →
        DifferentiableOn ℂ K (complexStrip n ρ) → IsPrimaryOnStrip K ρ → IsRealOnReals K →
        (∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ 𝔅) →
        (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ) →
        (∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧
          ∀ i, ∑ j, ‖(gramMatrix K θ)⁻¹ i j‖ ≤ σB - μ) →
        IsUnit (torsionAverage h K ω).det →
        (∀ i, ∑ j, ‖(torsionAverage h K ω)⁻¹ i j‖ ≤ σT - μ) →
        0 < γ → γ ≤ γbar → IsDiophantine γ τ ω →
        (∀ θ ∈ complexStrip n ρ, ‖invarianceError h K ω θ‖ ≤ e) →
        C_1 n τ ρ ρinf M σK σB σT μ γbar * e / (γ ^ 4 * ρ ^ (4 * τ)) < 1 →
        ∃ Kinf : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ),
          DifferentiableOn ℂ Kinf (complexStrip n ρinf) ∧ IsPrimaryOnStrip Kinf ρinf ∧
          IsRealOnReals Kinf ∧
          (∀ θ ∈ complexStrip n ρinf, invarianceError h Kinf ω θ = 0) ∧
          (∀ θ ∈ complexStrip n ρinf, Metric.ball (Kinf θ) (μ / 2) ⊆ 𝔅) ∧
          (∀ θ ∈ complexStrip n ρinf, ‖fderiv ℂ Kinf θ‖ ≤ σK - μ / 2) ∧
          ∀ θ ∈ complexStrip n ρinf,
            ‖Kinf θ - K θ‖ ≤ C_2 n τ ρ ρinf M σK σB σT * e / (γ ^ 2 * ρ ^ (2 * τ)) := by
  have hP : Params n τ M σK σB σT := ⟨hn, hτ, hM, hσK, hσB, hσT⟩
  have hρ0 : 0 < ρ := hρinf.trans hρinfρ
  refine ⟨C_1_pos hρ0 hγbar, C_2_pos hP hρ0 hρinfρ, ?_⟩
  intro 𝔅 h K ω γ e hopen htransl hholo hper hreal hbd hK hKp hKr hball hDK hG hTu hTb hγ hγγbar
    hdio hE hC1
  -- step `g1-standing`
  have hS : Standing n τ M σK σB σT 𝔅 h ω γ :=
    { toParams := hP
      isOpen := hopen
      transl_mem := htransl
      holo := hholo
      periodic := hper
      real := hreal
      bounds := fun z hz => ⟨(hbd z hz).2.1, (hbd z hz).2.2.1, (hbd z hz).2.2.2⟩
      gamma_pos := hγ
      dio := hdio }
  -- step `g1-e`
  obtain ⟨he1, hsm⟩ := g1_error_small hP hρinf hρinfρ hγ hγγbar hC1
  -- step `g1-apply`: row sums become operator norms
  have hG' : ∀ θ ∈ complexStrip n ρ,
      IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB - μ := fun θ hθ =>
    ⟨(hG θ hθ).1, norm_le_of_rowSum_le hn (hG θ hθ).2⟩
  have hT' : IsUnit (torsionAverage h K ω).det ∧ ‖(torsionAverage h K ω)⁻¹‖ ≤ σT - μ :=
    ⟨hTu, norm_le_of_rowSum_le hn hTb⟩
  obtain ⟨⟨-, -, hholoK⟩, ⟨hprim, hrealK⟩, ⟨hclose, -⟩, hmarg, hinv⟩ :=
    limit hS hρinf hρinfρ hμ hK hKp hKr hball hDK hG' hT' hE he1.le hsm.le
  -- step `g1-check`
  have hd0 := delta0_pos hρinfρ
  refine ⟨kamLimit h K ω ρ ρinf, hholoK, hprim, hrealK, hinv, fun θ hθ => (hmarg θ hθ).1,
    fun θ hθ => (hmarg θ hθ).2, fun θ hθ => ?_⟩
  have := hclose θ hθ
  rw [g1_closeness_eq (τ' := τ) hρ0 hγ hd0] at this
  exact this

end KAM.Apost

end
