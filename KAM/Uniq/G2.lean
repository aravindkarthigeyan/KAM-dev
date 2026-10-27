/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Uniq.Phase
public import KAM.Uniq.Quadratic
import KAM.Analysis.Iteration
import KAM.Apost.Triangular
import KAM.Strip.FourierSeries
import KAM.Strip.Limits
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Proof of Theorem G2 (blueprint `bp:p0:g2`, Part 3)

`KAM.Uniq.g2_explicit` is the frozen Theorem `KAM.local_uniqueness_flow` (local uniqueness of
invariant tori of flows, modulo phase) with the threshold `c` given by the explicit definition
`KAM.Uniq.threshold` (`eq:p3:c`, step `step:p3:g2-constant`, in `KAM/Uniq/Standing.lean`). Its
binders and its body are those of the frozen statement, copied verbatim. The provider
`KAM.Provider.local_uniqueness_flow` is the one-line anonymous constructor
`⟨_, g2_explicit …⟩`.

The proof follows the steps `step:p3:g2-*` of the blueprint.

* Standing data: `Params` and `(S1)`–`(S4)` are assembled from the hypotheses. The frozen row-sum
  bounds on `B = G⁻¹` and `⟨T⟩⁻¹` become operator norm bounds (`G2Aux.norm_le_of_forall_rowSum_le`).
* `step:p3:g2-smallness`: `KAM.Uniq.frequency_bound` gives `γ ≤ Γ`, and `KAM.Uniq.g2_smallness`
  gives the three smallness conditions. The closeness hypothesis is used through the real number
  `η = c γ² ρ^{2τ}`, which bounds `|K₂ - K₁|` pointwise on `T_ρ`. This replaces the supremum of the
  blueprint (departure L7: `KAM.Uniq.phase` accepts any pointwise bound).
* `step:p3:g2-phase`: `KAM.Uniq.phase`.
* `step:p3:g2-size`: `|Δ| ≤ η + σ_K |ψ| ≤ (1 + 2 C_P σ_K) η ≤ μ/2` on `T_ρ`, from the mean value
  inequality `KAM.increments_open` on the convex open strip.
* `step:p3:g2-iteration` (`G2Aux.diffMap_eq_zero`): the widths `ρ_m = (1/2 + 2^{-m-2}) ρ`
  (`G2Aux.stripWidth`) and the explicit majorant sequence `y_0 = (1 + 2 C_P σ_K) η`,
  `y_{m+1} = Q 2^{p m} y_m²` (`G2Aux.majorant`), with `Q = C_quad γ⁻² (ρ/16)^{-p}` and
  `p = 2(τ + n)`. By induction `|Δ| ≤ y_m` on `T_{ρ_m}`, from `KAM.Uniq.quadratic` with
  `ρ' = ρ_m`, `ρ'' = ρ_{m+1}` (so `(ρ' - ρ'')/2 = (ρ/16) 2^{-m}`). This avoids any supremum.
  `KAM.quadratic_iteration` gives `y_m → 0`, so `Δ = 0` on `T_{ρ/2}`.
* `step:p3:g2-conclusion`: `φ = -ψ`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Uniq

open KAM.Torus

namespace G2Aux

/-! ### Row sums and operator norm -/

/-- A square matrix whose absolute row sums are at most `B` has operator norm at most `B`. The
bound `B` is nonnegative because the matrix has a row (`0 < n`). -/
theorem norm_le_of_forall_rowSum_le {n : ℕ} (hn : 0 < n) {M : Matrix (Fin n) (Fin n) ℂ} {B : ℝ}
    (h : ∀ i, ∑ j, ‖M i j‖ ≤ B) : ‖M‖ ≤ B :=
  (norm_le_iff_forall_rowSum
    ((Finset.sum_nonneg fun _ _ => norm_nonneg _).trans (h ⟨0, hn⟩))).2 h

/-! ### The shrinking strips and the majorant sequence -/

section Schedule

/-- The widths `ρ_m = (1/2 + 2^{-m-2}) ρ` of `step:p3:g2-iteration`, so that `ρ_0 = 3ρ/4` and
`ρ_m` decreases to `ρ/2`. -/
def stripWidth (ρ : ℝ) (m : ℕ) : ℝ := (1 / 2 + (1 / 2 : ℝ) ^ m / 4) * ρ

theorem stripWidth_zero (ρ : ℝ) : stripWidth ρ 0 = 3 * ρ / 4 := by
  unfold stripWidth
  ring

theorem half_lt_stripWidth {ρ : ℝ} (hρ : 0 < ρ) (m : ℕ) : ρ / 2 < stripWidth ρ m := by
  unfold stripWidth
  have : 0 < (1 / 2 : ℝ) ^ m := by positivity
  nlinarith

theorem stripWidth_le {ρ : ℝ} (hρ : 0 < ρ) (m : ℕ) : stripWidth ρ m ≤ 3 * ρ / 4 := by
  unfold stripWidth
  have : (1 / 2 : ℝ) ^ m ≤ 1 := pow_le_one₀ (by norm_num) (by norm_num)
  nlinarith

theorem stripWidth_succ_lt {ρ : ℝ} (hρ : 0 < ρ) (m : ℕ) :
    stripWidth ρ (m + 1) < stripWidth ρ m := by
  unfold stripWidth
  have : 0 < (1 / 2 : ℝ) ^ m := by positivity
  rw [pow_succ]
  nlinarith

/-- `(ρ_m - ρ_{m+1}) / 2 = (ρ/16) 2^{-m}`. -/
theorem half_stripWidth_sub (ρ : ℝ) (m : ℕ) :
    (stripWidth ρ m - stripWidth ρ (m + 1)) / 2 = ρ / 16 * (1 / 2 : ℝ) ^ m := by
  unfold stripWidth
  ring

/-- `((ρ/16) 2^{-m})^{-p} = (ρ/16)^{-p} 2^{p m}`: the factor `2^{p m}` of the recursion
`y_{m+1} ≤ Q 2^{p m} y_m²`. -/
theorem rpow_step {ρ : ℝ} (hρ : 0 < ρ) (p : ℝ) (m : ℕ) :
    (ρ / 16 * (1 / 2 : ℝ) ^ m) ^ (-p) = (ρ / 16) ^ (-p) * (2 : ℝ) ^ (p * m) := by
  have h16 : 0 ≤ ρ / 16 := by positivity
  have h2 : (1 / 2 : ℝ) ^ m = (2 : ℝ) ^ (-(m : ℝ)) := by
    rw [Real.rpow_neg (by norm_num), Real.rpow_natCast, one_div, inv_pow]
  have h3 : -(m : ℝ) * -p = p * m := by ring
  rw [h2, Real.mul_rpow h16 (by positivity), ← Real.rpow_mul (by norm_num), h3]

/-- The majorant sequence of `step:p3:g2-iteration`: `y_0 = y0`, `y_{m+1} = Q 2^{p m} y_m²`. -/
def majorant (Q p y0 : ℝ) : ℕ → ℝ
  | 0 => y0
  | m + 1 => Q * (2 : ℝ) ^ (p * m) * majorant Q p y0 m ^ 2

theorem majorant_nonneg {Q p y0 : ℝ} (hQ : 0 ≤ Q) (hy0 : 0 ≤ y0) (m : ℕ) :
    0 ≤ majorant Q p y0 m := by
  induction m with
  | zero => exact hy0
  | succ m ih =>
    show 0 ≤ Q * (2 : ℝ) ^ (p * m) * majorant Q p y0 m ^ 2
    positivity

end Schedule

/-! ### The iteration on shrinking strips (`step:p3:g2-iteration`) -/

section Iteration

variable {n : ℕ} {τ ρ M σK σB σT μ : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- `step:p3:g2-iteration`. Let `Δ = K₂(· + ψ) - K₁` have `‖Δ‖ < μ` and `⟨B Lᵀ Δ⟩ = 0`, and let
`y0` bound `‖Δ‖` on `T_ρ` with `C_quad γ⁻² (ρ/16)^{-p} 2^p y0 ≤ 1/2`, `p = 2(τ + n)`. Then
`Δ = 0` on `T_{ρ/2}`. -/
theorem diffMap_eq_zero (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) (h4 : S4 ρ 𝔅 h ω K₂) (ψ : Fin n → ℝ)
    (hΔ : ∀ θ ∈ complexStrip n ρ, ‖diffMap K₁ K₂ ψ θ‖ < μ)
    (havg : avg (fun θ => ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ) *ᵥ
      sumVec n (diffMap K₁ K₂ ψ θ)) = 0) {y0 : ℝ}
    (hy0 : ∀ θ ∈ complexStrip n ρ, ‖diffMap K₁ K₂ ψ θ‖ ≤ y0)
    (hsmall : C_quad n τ ρ M σK σB σT * (γ ^ 2)⁻¹ * (ρ / 16) ^ (-(2 * (τ + n))) *
      (2 : ℝ) ^ (2 * (τ + n)) * y0 ≤ 1 / 2) :
    ∀ θ ∈ complexStrip n (ρ / 2), diffMap K₁ K₂ ψ θ = 0 := by
  have hρ := hP.ρ_pos
  have hγ := h2.gamma_pos
  have hCq := C_quad_pos hP
  have hκ := hP.kappa_pos
  obtain ⟨p, hp⟩ : ∃ p : ℝ, p = 2 * (τ + n) := ⟨_, rfl⟩
  have hp0 : 0 ≤ p := by rw [hp]; positivity
  rw [← hp] at hsmall
  obtain ⟨Q, hQ⟩ : ∃ Q : ℝ, Q = C_quad n τ ρ M σK σB σT * (γ ^ 2)⁻¹ * (ρ / 16) ^ (-p) :=
    ⟨_, rfl⟩
  rw [← hQ] at hsmall
  have hQ0 : 0 < Q := by rw [hQ]; positivity
  have hy00 : 0 ≤ y0 := (norm_nonneg _).trans (hy0 _ (ofReal_mem_complexStrip hρ 0))
  have hy : ∀ m, 0 ≤ majorant Q p y0 m := majorant_nonneg hQ0.le hy00
  have hrec : ∀ m : ℕ, majorant Q p y0 (m + 1) ≤ Q * (2 : ℝ) ^ (p * m) * majorant Q p y0 m ^ 2 :=
    fun m => le_rfl
  have hbound : ∀ m : ℕ, ∀ θ ∈ complexStrip n (stripWidth ρ m),
      ‖diffMap K₁ K₂ ψ θ‖ ≤ majorant Q p y0 m := by
    intro m
    induction m with
    | zero =>
      intro θ hθ
      exact hy0 θ (Apost.Triangular.strip_mono (by rw [stripWidth_zero]; linarith) hθ)
    | succ m ih =>
      intro θ hθ
      have hhalf := half_lt_stripWidth hρ (m + 1)
      have hq := quadratic hP h1 h2 h3 h4 ψ hΔ havg (stripWidth ρ (m + 1)) (stripWidth ρ m)
        (by linarith) (stripWidth_succ_lt hρ m) (stripWidth_le hρ m) (majorant Q p y0 m) ih θ hθ
      rw [half_stripWidth_sub, rpow_step hρ, ← hp] at hq
      refine hq.trans (le_of_eq ?_)
      show _ = Q * (2 : ℝ) ^ (p * m) * majorant Q p y0 m ^ 2
      rw [hQ]
      ring
  have hlim : Tendsto (majorant Q p y0) atTop (𝓝 0) :=
    ((quadratic_iteration hQ0 hp0 hy hrec).1 hsmall).2
  intro θ hθ
  have hle : ‖diffMap K₁ K₂ ψ θ‖ ≤ 0 :=
    ge_of_tendsto' hlim fun m =>
      hbound m θ (Apost.Triangular.strip_mono (half_lt_stripWidth hρ m).le hθ)
  exact norm_le_zero_iff.1 hle

end Iteration

end G2Aux

/-- The frozen G2 with the explicit threshold `c = threshold …` (`eq:p3:c`); body copied verbatim
from `KAM/Frozen/Theorems/LocalUniquenessFlow.lean`. Proof: steps `step:p3:g2-*`. -/
theorem g2_explicit {n : ℕ} (hn : 2 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 ≤ τ)
    {ρ : ℝ} (hρ : 0 < ρ)
    {M σK σB σT μ : ℝ} (hM : 0 < M) (hσK : 0 < σK) (hσB : 0 < σB) (hσT : 0 < σT) (hμ : 0 < μ) :
    0 < threshold n τ ρ M σK σB σT μ ∧
      ∀ (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))) (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
        (K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (γ : ℝ),
        IsOpen 𝔅 →
        (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ 𝔅) →
        DifferentiableOn ℂ h 𝔅 →
        (∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, h (z.1 + (fun i => (k i : ℂ)), z.2) = h z) →
        (∀ θ I : Fin n → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ 𝔅 →
          (h ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
        (∀ z ∈ 𝔅, ‖fderiv ℂ h z‖ ≤ M ∧ ‖hamiltonianVectorFieldℂ h z‖ ≤ M ∧
          ‖fderiv ℂ (hamiltonianVectorFieldℂ h) z‖ ≤ M ∧
          ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ h) z‖ ≤ M) →
        DifferentiableOn ℂ K₁ (complexStrip n ρ) → IsPrimaryOnStrip K₁ ρ → IsRealOnReals K₁ →
        (∀ θ ∈ complexStrip n ρ, Metric.ball (K₁ θ) μ ⊆ 𝔅) →
        (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K₁ θ‖ ≤ σK - μ) →
        (∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K₁ θ).det ∧
          ∀ i, ∑ j, ‖(gramMatrix K₁ θ)⁻¹ i j‖ ≤ σB - μ) →
        IsUnit (torsionAverage h K₁ ω).det →
        (∀ i, ∑ j, ‖(torsionAverage h K₁ ω)⁻¹ i j‖ ≤ σT - μ) →
        0 < γ → IsDiophantine γ τ ω →
        (∀ θ ∈ complexStrip n ρ, invarianceError h K₁ ω θ = 0) →
        DifferentiableOn ℂ K₂ (complexStrip n ρ) → IsPrimaryOnStrip K₂ ρ → IsRealOnReals K₂ →
        (∀ θ ∈ complexStrip n ρ, K₂ θ ∈ 𝔅) →
        (∀ θ ∈ complexStrip n ρ, invarianceError h K₂ ω θ = 0) →
        (∀ θ ∈ complexStrip n ρ,
          ‖K₁ θ - K₂ θ‖ ≤ threshold n τ ρ M σK σB σT μ * γ ^ 2 * ρ ^ (2 * τ)) →
        ∃ φ : Fin n → ℝ, ∀ θ ∈ complexStrip n (ρ / 2), K₂ θ = K₁ (θ + (fun i => (φ i : ℂ))) := by
  -- `step:p3:g2-constant`: the standing data
  have hP : Params n τ ρ M σK σB σT μ := ⟨hn, hτ, hρ, hM, hσK, hσB, hσT, hμ⟩
  refine ⟨threshold_pos hP, ?_⟩
  intro 𝔅 h K₁ K₂ ω γ hopen htransl hholo hper hreal hbd hK₁holo hK₁prim hK₁real hball hderiv
    hgram htwistdet htwistrow hγ hdio hinv₁ hK₂holo hK₂prim hK₂real hmem hinv₂ hclose
  have hn0 : 0 < n := by omega
  have h1 : S1 M 𝔅 h := ⟨hopen, htransl, hholo, hper, hreal, hbd⟩
  have h2 : S2 τ ω γ := ⟨hγ, hdio⟩
  have h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁ :=
    ⟨hK₁holo, hK₁prim, hK₁real, hball, hderiv,
      fun θ hθ => ⟨(hgram θ hθ).1, G2Aux.norm_le_of_forall_rowSum_le hn0 (hgram θ hθ).2⟩,
      ⟨htwistdet, G2Aux.norm_le_of_forall_rowSum_le hn0 htwistrow⟩, hinv₁⟩
  have h4 : S4 ρ 𝔅 h ω K₂ := ⟨hK₂holo, hK₂prim, hK₂real, hmem, hinv₂⟩
  -- `η = c γ² ρ^{2τ}` bounds `|K₁ - K₂|` pointwise on `T_ρ`
  obtain ⟨η, hηdef⟩ : ∃ η : ℝ, η = threshold n τ ρ M σK σB σT μ * γ ^ 2 * ρ ^ (2 * τ) :=
    ⟨_, rfl⟩
  have hηle : η ≤ threshold n τ ρ M σK σB σT μ * γ ^ 2 * ρ ^ (2 * τ) := hηdef.le
  have hcl : ∀ θ ∈ complexStrip n ρ, ‖K₂ θ - K₁ θ‖ ≤ η := fun θ hθ => by
    rw [norm_sub_rev, hηdef]
    exact hclose θ hθ
  have hη0 : 0 ≤ η := (norm_nonneg _).trans (hcl _ (ofReal_mem_complexStrip hρ 0))
  -- `step:p3:g2-smallness`
  obtain ⟨hph, hdel, -⟩ :=
    g2_smallness hP hγ (frequency_bound hP h1 h2 h3).2 hηle
  -- `step:p3:g2-phase`
  obtain ⟨ψ, hψ, havg⟩ := phase hP h1 h2 h3 h4 hcl hph
  -- `step:p3:g2-size`
  have hCP : 0 ≤ C_P n σK σB := (C_P_pos hP).le
  have hsize : ∀ θ ∈ complexStrip n ρ,
      ‖diffMap K₁ K₂ ψ θ‖ ≤ (1 + 2 * C_P n σK σB * σK) * η := by
    intro θ hθ
    have hθψ : θ + (fun i => (ψ i : ℂ)) ∈ complexStrip n ρ := DiffAux.add_real_mem hθ ψ
    have e1 : ‖K₂ (θ + fun i => (ψ i : ℂ)) - K₁ (θ + fun i => (ψ i : ℂ))‖ ≤ η :=
      hcl _ hθψ
    have e2 : ‖K₁ (θ + fun i => (ψ i : ℂ)) - K₁ θ‖ ≤ σK * ‖fun i => (ψ i : ℂ)‖ :=
      increments_open (isOpen_complexStrip n ρ) h3.holo
        (fun x hx => (h3.deriv_le x hx).trans (by linarith))
        ((convex_complexStrip n ρ).segment_subset hθ hθψ)
    rw [Apost.FrameAux.norm_ofReal_vec] at e2
    have e3 : diffMap K₁ K₂ ψ θ =
        (K₂ (θ + fun i => (ψ i : ℂ)) - K₁ (θ + fun i => (ψ i : ℂ))) +
          (K₁ (θ + fun i => (ψ i : ℂ)) - K₁ θ) := by
      unfold diffMap
      abel
    calc ‖diffMap K₁ K₂ ψ θ‖ ≤ η + σK * ‖ψ‖ := by
          rw [e3]
          exact (norm_add_le _ _).trans (add_le_add e1 e2)
      _ ≤ η + σK * (2 * C_P n σK σB * η) := by gcongr
      _ = (1 + 2 * C_P n σK σB * σK) * η := by ring
  have hΔ : ∀ θ ∈ complexStrip n ρ, ‖diffMap K₁ K₂ ψ θ‖ < μ := fun θ hθ =>
    lt_of_le_of_lt ((hsize θ hθ).trans hdel) (by linarith)
  -- `step:p3:g2-iteration`
  have hzero := G2Aux.diffMap_eq_zero hP h1 h2 h3 h4 ψ hΔ havg hsize
    (iteration_Q_two_pow_small hP hγ hηle)
  -- `step:p3:g2-conclusion`
  refine ⟨-ψ, fun θ hθ => ?_⟩
  have hθ' : θ + (fun i => (((-ψ) i : ℝ) : ℂ)) ∈ complexStrip n (ρ / 2) :=
    DiffAux.add_real_mem hθ (-ψ)
  have h0 := hzero _ hθ'
  have e : θ + (fun i => (((-ψ) i : ℝ) : ℂ)) + (fun i => (ψ i : ℂ)) = θ := by
    ext i
    simp
  simp only [diffMap, e] at h0
  exact sub_eq_zero.1 h0

end KAM.Uniq

end
