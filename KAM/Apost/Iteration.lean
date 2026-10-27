/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Step
public import KAM.Apost.Schedule
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# The induction of the KAM iteration

Blueprint Part 2, Proposition `bp:p2:iteration` (`KAM.Apost.iteration`). The sequence of tori is
the explicit `KAM.Apost.kamSeq`: `K₀ = K` and `K_{s+1} = K̄_s`, the Newton map of
`bp:p2:newton-error` on `T_{r_s - 2δ_s}`. The schedule `δ_s, r_s, ε_s, d_s` is that of
`KAM/Apost/Schedule.lean`.

The proof follows the blueprint.

* `step:p2:it-sums`: `KAM.Apost.sums_le` bounds the partial sums `D_s`, `∑ n d_j/δ_j`,
  `∑ C_B d_j/δ_j`, `∑ 2𝔪² C_ΔT d_j/δ_j²` by comparison with the sums of Lemma `bp:p2:error-decay`
  (`KAM.Apost.error_decay_sum`) and the constant inequalities `KAM.Apost.iteration_sums`.
* `step:p2:it-stepsmall`: `KAM.Apost.stepsmall_seq` gives the smallness hypothesis of
  Proposition `bp:p2:step` at every stage.
* `step:p2:it-base`: `KAM.Apost.stage_zero`.
* `step:p2:it-step`: `KAM.Apost.stage_succ` applies `KAM.Apost.step` at the stage `s` and carries
  the induction hypotheses `KAM.Apost.Stage` to `s + 1`.

`T_r` is `complexStrip n r`; matrix norms are the operator norms of
`open scoped Matrix.Norms.Operator`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix

namespace KAM.Apost

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}

/-- The KAM sequence `K₀ = K`, `K_{s+1} = K̄_s` (on `T_{r_s - 2δ_s}`); `bp:p2:iteration`. -/
def kamSeq (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (ρ ρinf : ℝ) : ℕ → (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)
  | 0 => K
  | s + 1 => newtonMap h (kamSeq h K ω ρ ρinf s) ω (rSeq ρ ρinf s - 2 * deltaSeq ρ ρinf s)

/-! ### The partial sums `D_s` and their weighted versions -/

section Sums

variable (n τ M σK σB σT) in
/-- `D_s = ∑_{j<s} d_j`. -/
def sumD (ρ ρinf γ e : ℝ) (s : ℕ) : ℝ :=
  ∑ j ∈ Finset.range s, dSeq n τ M σK σB σT ρ ρinf γ e j

variable (n τ M σK σB σT) in
/-- `∑_{j<s} n d_j / δ_j`, the accumulated change of `DK`. -/
def sumDK (ρ ρinf γ e : ℝ) (s : ℕ) : ℝ :=
  ∑ j ∈ Finset.range s, n * dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j

variable (n τ M σK σB σT) in
/-- `∑_{j<s} C_B d_j / δ_j`, the accumulated change of `B`. -/
def sumB (ρ ρinf γ e : ℝ) (s : ℕ) : ℝ :=
  ∑ j ∈ Finset.range s,
    C_B n M σK σB σT * dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j

variable (n τ M σK σB σT) in
/-- `∑_{j<s} 2𝔪² C_ΔT d_j / δ_j²`, the accumulated change of `⟨T⟩⁻¹`. -/
def sumT (ρ ρinf γ e : ℝ) (s : ℕ) : ℝ :=
  ∑ j ∈ Finset.range s, 2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT *
    dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j ^ 2

variable {ρ ρinf e : ℝ}

theorem sumD_zero : sumD n τ M σK σB σT ρ ρinf γ e 0 = 0 := by simp [sumD]

theorem sumDK_zero : sumDK n τ M σK σB σT ρ ρinf γ e 0 = 0 := by simp [sumDK]

theorem sumB_zero : sumB n τ M σK σB σT ρ ρinf γ e 0 = 0 := by simp [sumB]

theorem sumT_zero : sumT n τ M σK σB σT ρ ρinf γ e 0 = 0 := by simp [sumT]

theorem sumD_succ (s : ℕ) : sumD n τ M σK σB σT ρ ρinf γ e (s + 1) =
    sumD n τ M σK σB σT ρ ρinf γ e s + dSeq n τ M σK σB σT ρ ρinf γ e s := by
  simp only [sumD, Finset.sum_range_succ]

theorem sumDK_succ (s : ℕ) : sumDK n τ M σK σB σT ρ ρinf γ e (s + 1) =
    sumDK n τ M σK σB σT ρ ρinf γ e s +
      n * dSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s := by
  simp only [sumDK, Finset.sum_range_succ]

theorem sumB_succ (s : ℕ) : sumB n τ M σK σB σT ρ ρinf γ e (s + 1) =
    sumB n τ M σK σB σT ρ ρinf γ e s +
      C_B n M σK σB σT * dSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s := by
  simp only [sumB, Finset.sum_range_succ]

theorem sumT_succ (s : ℕ) : sumT n τ M σK σB σT ρ ρinf γ e (s + 1) =
    sumT n τ M σK σB σT ρ ρinf γ e s + 2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT *
      dSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ 2 := by
  simp only [sumT, Finset.sum_range_succ]

/-- The terms `ε_i / δ_i^j` of the sums of Lemma `bp:p2:error-decay` are nonnegative. -/
theorem eps_div_nonneg (hP : Params n τ M σK σB σT) (hρ : ρinf < ρ) (he : 0 ≤ e) (j : ℝ)
    (i : ℕ) : 0 ≤ epsSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i ^ j := by
  have h1 := epsSeq_nonneg hP hρ he (γ := γ) i
  have h2 := Real.rpow_pos_of_pos (deltaSeq_pos hρ i) j
  positivity

/-- Partial sums of `X ε_i/δ_i^j` are bounded by `X · 2e/δ₀^j`, for `0 ≤ X` and `j ≤ 2a - 1`
(Lemma `bp:p2:error-decay`). -/
theorem partial_sum_le (hP : Params n τ M σK σB σT) (hρ : ρinf < ρ) (hγ : 0 < γ) (he : 0 ≤ e)
    (hq : (2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
      (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) {j X : ℝ} (hj : j ≤ 2 * aExp n τ - 1)
    (hX : 0 ≤ X) (s : ℕ) :
    ∑ i ∈ Finset.range s, X * (epsSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i ^ j) ≤
      X * (2 * e / delta0 ρ ρinf ^ j) := by
  obtain ⟨hsum, htsum⟩ := error_decay_sum hP hρ hγ he hq hj
  rw [← Finset.mul_sum]
  exact mul_le_mul_of_nonneg_left
    ((hsum.sum_le_tsum _ fun i _ => eps_div_nonneg hP hρ he j i).trans htsum) hX

/-- `d_i = (C_ΔK/γ²) · ε_i/δ_i^a`. -/
theorem dSeq_eq (i : ℕ) : dSeq n τ M σK σB σT ρ ρinf γ e i =
    C_DK n τ M σK σB σT / γ ^ 2 *
      (epsSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i ^ aExp n τ) := by
  unfold dSeq
  rw [mul_div_mul_comm]

/-- `n d_i / δ_i = (n C_ΔK/γ²) · ε_i/δ_i^{a+1}`. -/
theorem dK_term_eq (hρ : ρinf < ρ) (hγ : 0 < γ) (i : ℕ) :
    n * dSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i =
      n * C_DK n τ M σK σB σT / γ ^ 2 *
        (epsSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i ^ (aExp n τ + 1)) := by
  have hδ := deltaSeq_pos hρ i
  have hp : deltaSeq ρ ρinf i ^ aExp n τ ≠ 0 := (Real.rpow_pos_of_pos hδ _).ne'
  rw [Real.rpow_add_one hδ.ne']
  unfold dSeq
  field_simp

/-- `C_B d_i / δ_i = (C_B C_ΔK/γ²) · ε_i/δ_i^{a+1}`. -/
theorem dB_term_eq (hρ : ρinf < ρ) (hγ : 0 < γ) (i : ℕ) :
    C_B n M σK σB σT * dSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i =
      C_B n M σK σB σT * C_DK n τ M σK σB σT / γ ^ 2 *
        (epsSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i ^ (aExp n τ + 1)) := by
  have hδ := deltaSeq_pos hρ i
  have hp : deltaSeq ρ ρinf i ^ aExp n τ ≠ 0 := (Real.rpow_pos_of_pos hδ _).ne'
  rw [Real.rpow_add_one hδ.ne']
  unfold dSeq
  field_simp

/-- `2𝔪² C_ΔT d_i / δ_i² = (2𝔪² C_ΔT C_ΔK/γ²) · ε_i/δ_i^{a+2}`. -/
theorem dT_term_eq (hρ : ρinf < ρ) (hγ : 0 < γ) (i : ℕ) :
    2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT * dSeq n τ M σK σB σT ρ ρinf γ e i /
        deltaSeq ρ ρinf i ^ 2 =
      2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT * C_DK n τ M σK σB σT / γ ^ 2 *
        (epsSeq n τ M σK σB σT ρ ρinf γ e i / deltaSeq ρ ρinf i ^ (aExp n τ + 2)) := by
  have hδ := deltaSeq_pos hρ i
  have hp : deltaSeq ρ ρinf i ^ aExp n τ ≠ 0 := (Real.rpow_pos_of_pos hδ _).ne'
  rw [Real.rpow_add hδ, Real.rpow_two]
  unfold dSeq
  field_simp

/-- Step `step:p2:it-sums`: the four summed bounds, for every `s`, from
`𝔠_* e/(γ⁴ δ₀^{2a}) ≤ 1` and `γ ≤ Θ`. -/
theorem sums_le (hP : Params n τ M σK σB σT) {μ : ℝ} (hρ : ρinf < ρ) (hγ : 0 < γ)
    (hγΘ : γ ≤ Theta n M σK σB σT) (he : 0 ≤ e) (hμ : 0 < μ)
    (hsmall : c_star n τ M σK σB σT μ * e / (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1)
    (s : ℕ) :
    sumD n τ M σK σB σT ρ ρinf γ e s ≤ μ / 4 ∧ sumDK n τ M σK σB σT ρ ρinf γ e s ≤ μ / 4 ∧
      sumB n τ M σK σB σT ρ ρinf γ e s ≤ μ / 4 ∧ sumT n τ M σK σB σT ρ ρinf γ e s ≤ μ / 2 := by
  have hd0 := delta0_pos hρ
  have hq := error_decay_hyp hγ hd0 he hsmall
  have hi := iteration_sums hP hγ hγΘ hd0 (delta0_le_one ρ ρinf) he hμ hsmall
  have ha := eight_le_aExp hP
  have hn := zero_le_one.trans hP.one_le_cast
  have hCDK := zero_le_one.trans (one_le_C_DK hP)
  have hCB := zero_le_one.trans (one_le_C_B hP)
  have hCDT := zero_le_one.trans (one_le_C_DT hP)
  have hm := zero_le_one.trans (one_le_mSize (M := M) (σK := σK) (σB := σB) (σT := σT))
  refine ⟨?_, ?_, ?_, ?_⟩
  · have hX : 0 ≤ C_DK n τ M σK σB σT / γ ^ 2 := by positivity
    have := partial_sum_le hP hρ hγ he hq (j := aExp n τ) (by linarith) hX s
    simp only [sumD]
    rw [Finset.sum_congr rfl fun i _ => dSeq_eq (τ := τ) (M := M) (σK := σK) (σB := σB)
      (σT := σT) (γ := γ) (e := e) i]
    exact this.trans hi.1
  · have hX : 0 ≤ (n : ℝ) * C_DK n τ M σK σB σT / γ ^ 2 := by positivity
    have := partial_sum_le hP hρ hγ he hq (j := aExp n τ + 1) (by linarith) hX s
    simp only [sumDK]
    rw [Finset.sum_congr rfl fun i _ => dK_term_eq (τ := τ) (M := M) (σK := σK) (σB := σB)
      (σT := σT) (e := e) hρ hγ i]
    exact this.trans hi.2.1
  · have hX : 0 ≤ C_B n M σK σB σT * C_DK n τ M σK σB σT / γ ^ 2 := by positivity
    have := partial_sum_le hP hρ hγ he hq (j := aExp n τ + 1) (by linarith) hX s
    simp only [sumB]
    rw [Finset.sum_congr rfl fun i _ => dB_term_eq (τ := τ) (M := M) (σK := σK) (σB := σB)
      (σT := σT) (e := e) hρ hγ i]
    exact this.trans hi.2.2.1
  · have hX : 0 ≤ 2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT * C_DK n τ M σK σB σT / γ ^ 2 := by
      positivity
    have := partial_sum_le hP hρ hγ he hq (j := aExp n τ + 2) (by linarith) hX s
    simp only [sumT]
    rw [Finset.sum_congr rfl fun i _ => dT_term_eq (τ := τ) (M := M) (σK := σK) (σB := σB)
      (σT := σT) (e := e) hρ hγ i]
    exact this.trans hi.2.2.2

/-- Lemma `bp:p2:error-decay`, weighted form for every `j ∈ [0, 2a]`: `ε_s/δ_s^j ≤ e/δ₀^j`. -/
theorem eps_div_le (hP : Params n τ M σK σB σT) (hρ : ρinf < ρ) (hγ : 0 < γ) (he : 0 ≤ e)
    (hq : (2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
      (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) {j : ℝ} (hj : j ≤ 2 * aExp n τ) (s : ℕ) :
    epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j ≤ e / delta0 ρ ρinf ^ j :=
  (error_decay_weighted hP hρ hγ he hq hj s).1.trans (error_decay_weighted hP hρ hγ he hq hj s).2

/-- `ε_s ≤ e` (Lemma `bp:p2:error-decay`, `j = 0`). -/
theorem eps_le (hP : Params n τ M σK σB σT) (hρ : ρinf < ρ) (hγ : 0 < γ) (he : 0 ≤ e)
    (hq : (2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
      (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) (s : ℕ) :
    epsSeq n τ M σK σB σT ρ ρinf γ e s ≤ e := by
  have h0 : (0 : ℝ) ≤ 2 * aExp n τ := by
    have := eight_le_aExp hP
    linarith
  simpa using eps_div_le hP hρ hγ he hq h0 s

/-- Step `step:p2:it-stepsmall`: `𝔠_step ε_s/(γ⁴ δ_s^{2a}) ≤ min {1, μ/2}` at every stage. -/
theorem stepsmall_seq (hP : Params n τ M σK σB σT) {μ : ℝ} (hρ : ρinf < ρ) (hγ : 0 < γ)
    (he : 0 ≤ e) (hμ : 0 < μ)
    (hsmall : c_star n τ M σK σB σT μ * e / (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1)
    (s : ℕ) :
    c_step n τ M σK σB σT * epsSeq n τ M σK σB σT ρ ρinf γ e s /
      (γ ^ 4 * deltaSeq ρ ρinf s ^ (2 * aExp n τ)) ≤ min 1 (μ / 2) := by
  have hq := error_decay_hyp hγ (delta0_pos hρ) he hsmall
  have hstep := iteration_step_small hP hγ (delta0_pos hρ) he hμ hsmall
  have hc0 := zero_le_one.trans (one_le_c_step hP)
  have h2a : 2 * aExp n τ ≤ 2 * aExp n τ := le_rfl
  have hb := eps_div_le hP hρ hγ he hq h2a s
  refine le_trans ?_ hstep
  rw [mul_div_mul_comm, mul_div_mul_comm (c_step n τ M σK σB σT) e]
  exact mul_le_mul_of_nonneg_left hb (by positivity)

end Sums

/-! ### The induction hypothesis -/

/-- The induction hypothesis at stage `s`: the part of (i)--(v) of `bp:p2:iteration` that is
carried from `s` to `s + 1`. The bounds on the sums themselves (`D_s ≤ μ/4` and so on) and
`ε_s ≤ e ≤ 1` do not depend on the induction (`sums_le`, `eps_le`). -/
structure Stage (n : ℕ) (τ M σK σB σT : ℝ) (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ)))
    (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ω : Fin n → ℝ) (γ ρ ρinf μ e : ℝ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (s : ℕ) : Prop where
  adm : Admissible σK σB σT 𝔅 h ω (rSeq ρ ρinf s) (μ - sumD n τ M σK σB σT ρ ρinf γ e s)
    (epsSeq n τ M σK σB σT ρ ρinf γ e s) (kamSeq h K ω ρ ρinf s)
  dist : ∀ θ ∈ complexStrip n (rSeq ρ ρinf s),
    ‖kamSeq h K ω ρ ρinf s θ - K θ‖ ≤ sumD n τ M σK σB σT ρ ρinf γ e s
  dk : ∀ θ ∈ complexStrip n (rSeq ρ ρinf s),
    ‖fderiv ℂ (kamSeq h K ω ρ ρinf s) θ‖ ≤ σK - μ + sumDK n τ M σK σB σT ρ ρinf γ e s
  gb : ∀ θ ∈ complexStrip n (rSeq ρ ρinf s),
    ‖(gramMatrix (kamSeq h K ω ρ ρinf s) θ)⁻¹‖ ≤ σB - μ + sumB n τ M σK σB σT ρ ρinf γ e s
  tb : ‖(torsionAverage h (kamSeq h K ω ρ ρinf s) ω)⁻¹‖ ≤
    σT - μ + sumT n τ M σK σB σT ρ ρinf γ e s

section Induction

variable {ρ ρinf μ e : ℝ} {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- Step `step:p2:it-base`: `K₀ = K` is `(ρ, μ, e)`-admissible, and (ii)--(v) hold with empty
sums. -/
theorem stage_zero (hρ0 : 0 < ρ) (hμ : 0 < μ) (he0 : 0 ≤ e) (he1 : e ≤ 1)
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (hKp : IsPrimaryOnStrip K ρ)
    (hKr : IsRealOnReals K) (hball : ∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ 𝔅)
    (hDK : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ)
    (hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB - μ)
    (hT : IsUnit (torsionAverage h K ω).det ∧ ‖(torsionAverage h K ω)⁻¹‖ ≤ σT - μ)
    (hE : ∀ θ ∈ complexStrip n ρ, ‖invarianceError h K ω θ‖ ≤ e) :
    Stage n τ M σK σB σT 𝔅 h ω γ ρ ρinf μ e K 0 := by
  have hk0 : kamSeq h K ω ρ ρinf 0 = K := rfl
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · rw [hk0, rSeq_zero, sumD_zero, epsSeq_zero, sub_zero]
    exact ⟨hρ0, hμ, he0, he1, hK, hKp, hKr, hball, fun θ hθ => (hDK θ hθ).trans (by linarith),
      fun θ hθ => ⟨(hG θ hθ).1, (hG θ hθ).2.trans (by linarith)⟩,
      ⟨hT.1, hT.2.trans (by linarith)⟩, hE⟩
  · intro θ _
    rw [hk0, sub_self, norm_zero, sumD_zero]
  · intro θ hθ
    rw [rSeq_zero] at hθ
    rw [hk0, sumDK_zero, add_zero]
    exact hDK θ hθ
  · intro θ hθ
    rw [rSeq_zero] at hθ
    rw [hk0, sumB_zero, add_zero]
    exact (hG θ hθ).2
  · rw [hk0, sumT_zero, add_zero]
    exact hT.2

/-- Step `step:p2:it-step`: Proposition `bp:p2:step` applied at the stage `s` carries the induction
hypothesis to `s + 1` and gives (vi) at `s`. -/
theorem stage_succ (hS : Standing n τ M σK σB σT 𝔅 h ω γ) (hρinf : 0 < ρinf) (hρ : ρinf < ρ)
    (hμ : 0 < μ) (he0 : 0 ≤ e) (he1 : e ≤ 1)
    (heps : ∀ s, epsSeq n τ M σK σB σT ρ ρinf γ e s ≤ e)
    (hsm : ∀ s, c_step n τ M σK σB σT * epsSeq n τ M σK σB σT ρ ρinf γ e s /
      (γ ^ 4 * deltaSeq ρ ρinf s ^ (2 * aExp n τ)) ≤ min 1 (μ / 2))
    (hsum : ∀ s, sumD n τ M σK σB σT ρ ρinf γ e s ≤ μ / 4 ∧
      sumDK n τ M σK σB σT ρ ρinf γ e s ≤ μ / 4 ∧ sumB n τ M σK σB σT ρ ρinf γ e s ≤ μ / 4 ∧
      sumT n τ M σK σB σT ρ ρinf γ e s ≤ μ / 2) {s : ℕ}
    (st : Stage n τ M σK σB σT 𝔅 h ω γ ρ ρinf μ e K s) :
    Stage n τ M σK σB σT 𝔅 h ω γ ρ ρinf μ e K (s + 1) ∧
      ∀ θ ∈ complexStrip n (rSeq ρ ρinf (s + 1)),
        ‖kamSeq h K ω ρ ρinf (s + 1) θ - kamSeq h K ω ρ ρinf s θ‖ ≤
            dSeq n τ M σK σB σT ρ ρinf γ e s ∧
          ‖fderiv ℂ (kamSeq h K ω ρ ρinf (s + 1)) θ - fderiv ℂ (kamSeq h K ω ρ ρinf s) θ‖ ≤
            n * dSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s := by
  have hP := hS.toParams
  obtain ⟨hD0, -, -, -⟩ := hsum s
  obtain ⟨hD1, hDK1, hB1, hT1⟩ := hsum (s + 1)
  obtain ⟨hr1, -, hδ1, h4δ⟩ := (schedule hρinf hρ).2.2 s
  obtain ⟨-, hrlow, -, -⟩ := (schedule hρinf hρ).2.2 (s + 1)
  have hρlow := (schedule hρinf hρ).2.1
  have hδ := deltaSeq_pos hρ s
  have hsm' : c_step n τ M σK σB σT * epsSeq n τ M σK σB σT ρ ρinf γ e s /
      (γ ^ 4 * deltaSeq ρ ρinf s ^ (2 * aExp n τ)) ≤
      min 1 (μ - sumD n τ M σK σB σT ρ ρinf γ e s) :=
    (hsm s).trans (min_le_min le_rfl (by linarith))
  have hstep := step hS st.adm hδ hδ1 h4δ hsm'
  have hk : kamSeq h K ω ρ ρinf (s + 1) =
      newtonMap h (kamSeq h K ω ρ ρinf s) ω (rSeq ρ ρinf s - 2 * deltaSeq ρ ρinf s) := rfl
  have hd : dSeq n τ M σK σB σT ρ ρinf γ e s =
      C_DK n τ M σK σB σT * epsSeq n τ M σK σB σT ρ ρinf γ e s /
        (γ ^ 2 * deltaSeq ρ ρinf s ^ aExp n τ) := rfl
  have hε : epsSeq n τ M σK σB σT ρ ρinf γ e (s + 1) =
      C_E n τ M σK σB σT * epsSeq n τ M σK σB σT ρ ρinf γ e s ^ 2 /
        (γ ^ 4 * deltaSeq ρ ρinf s ^ (2 * aExp n τ)) := rfl
  rw [← hk, ← hd] at hstep
  rw [← hε] at hstep
  obtain ⟨⟨hdiff, hprim, hreal⟩, ⟨hdist, -, hball⟩, herr, hDKd, hgram, htw⟩ := hstep
  -- the strips
  have hs20 : complexStrip n (rSeq ρ ρinf (s + 1)) ⊆ complexStrip n (rSeq ρ ρinf s) :=
    Triangular.strip_mono (by rw [hr1]; linarith)
  have hs22 : complexStrip n (rSeq ρ ρinf (s + 1)) ⊆
      complexStrip n (rSeq ρ ρinf s - 2 * deltaSeq ρ ρinf s) :=
    Triangular.strip_mono (by rw [hr1]; linarith)
  have hs23 : complexStrip n (rSeq ρ ρinf (s + 1)) ⊆
      complexStrip n (rSeq ρ ρinf s - 3 * deltaSeq ρ ρinf s) :=
    Triangular.strip_mono (by rw [hr1]; linarith)
  -- the new bounds
  have hdist' : ∀ θ ∈ complexStrip n (rSeq ρ ρinf (s + 1)),
      ‖kamSeq h K ω ρ ρinf (s + 1) θ - K θ‖ ≤ sumD n τ M σK σB σT ρ ρinf γ e (s + 1) := by
    intro θ hθ
    have h1 := norm_sub_le_norm_sub_add_norm_sub (kamSeq h K ω ρ ρinf (s + 1) θ)
      (kamSeq h K ω ρ ρinf s θ) (K θ)
    have h2 := st.dist θ (hs20 hθ)
    have h3 : ‖kamSeq h K ω ρ ρinf (s + 1) θ - kamSeq h K ω ρ ρinf s θ‖ ≤
        dSeq n τ M σK σB σT ρ ρinf γ e s := by
      have := hdist θ (hs22 hθ)
      rw [hk]
      exact this
    rw [sumD_succ]
    linarith
  have hdk' : ∀ θ ∈ complexStrip n (rSeq ρ ρinf (s + 1)),
      ‖fderiv ℂ (kamSeq h K ω ρ ρinf (s + 1)) θ‖ ≤
        σK - μ + sumDK n τ M σK σB σT ρ ρinf γ e (s + 1) := by
    intro θ hθ
    have h1 := norm_le_norm_add_norm_sub' (fderiv ℂ (kamSeq h K ω ρ ρinf (s + 1)) θ)
      (fderiv ℂ (kamSeq h K ω ρ ρinf s) θ)
    have h2 := st.dk θ (hs20 hθ)
    have h3 := hDKd θ (hs23 hθ)
    rw [sumDK_succ]
    linarith
  have hgb' : ∀ θ ∈ complexStrip n (rSeq ρ ρinf (s + 1)),
      ‖(gramMatrix (kamSeq h K ω ρ ρinf (s + 1)) θ)⁻¹‖ ≤
        σB - μ + sumB n τ M σK σB σT ρ ρinf γ e (s + 1) := by
    intro θ hθ
    have h1 := norm_le_norm_add_norm_sub' (gramMatrix (kamSeq h K ω ρ ρinf (s + 1)) θ)⁻¹
      (gramMatrix (kamSeq h K ω ρ ρinf s) θ)⁻¹
    have h2 := st.gb θ (hs20 hθ)
    have h3 := (hgram θ (hs23 hθ)).2
    rw [sumB_succ]
    linarith
  have htb' : ‖(torsionAverage h (kamSeq h K ω ρ ρinf (s + 1)) ω)⁻¹‖ ≤
      σT - μ + sumT n τ M σK σB σT ρ ρinf γ e (s + 1) := by
    have h1 := norm_le_norm_add_norm_sub' (torsionAverage h (kamSeq h K ω ρ ρinf (s + 1)) ω)⁻¹
      (torsionAverage h (kamSeq h K ω ρ ρinf s) ω)⁻¹
    have h2 := st.tb
    have h3 := htw.2
    rw [sumT_succ]
    linarith
  have hβ : μ - sumD n τ M σK σB σT ρ ρinf γ e (s + 1) =
      μ - sumD n τ M σK σB σT ρ ρinf γ e s - dSeq n τ M σK σB σT ρ ρinf γ e s := by
    rw [sumD_succ]
    ring
  have hadm : Admissible σK σB σT 𝔅 h ω (rSeq ρ ρinf (s + 1))
      (μ - sumD n τ M σK σB σT ρ ρinf γ e (s + 1)) (epsSeq n τ M σK σB σT ρ ρinf γ e (s + 1))
      (kamSeq h K ω ρ ρinf (s + 1)) :=
    ⟨by linarith, by linarith, epsSeq_nonneg hP hρ he0 _, (heps _).trans he1,
      hdiff.mono hs22, fun θ hθ k => hprim θ (hs22 hθ) k, hreal,
      fun θ hθ => by
        rw [hβ]
        exact hball θ (hs22 hθ),
      fun θ hθ => (hdk' θ hθ).trans (by linarith),
      fun θ hθ => ⟨(hgram θ (hs23 hθ)).1, (hgb' θ hθ).trans (by linarith)⟩,
      ⟨htw.1, htb'.trans (by linarith)⟩, fun θ hθ => herr θ (hs22 hθ)⟩
  refine ⟨⟨hadm, hdist', hdk', hgb', htb'⟩, fun θ hθ => ⟨?_, ?_⟩⟩
  · have := hdist θ (hs22 hθ)
    rw [hk]
    exact this
  · exact hDKd θ (hs23 hθ)

end Induction

/-- Blueprint `bp:p2:iteration`, items (i)–(vi), for the explicit sequence `kamSeq`. -/
theorem iteration (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {ρ ρinf μ e : ℝ} (hρinf : 0 < ρinf)
    (hρ : ρinf < ρ) (hμ : 0 < μ) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (hKp : IsPrimaryOnStrip K ρ)
    (hKr : IsRealOnReals K) (hball : ∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) μ ⊆ 𝔅)
    (hDK : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK - μ)
    (hG : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB - μ)
    (hT : IsUnit (torsionAverage h K ω).det ∧ ‖(torsionAverage h K ω)⁻¹‖ ≤ σT - μ)
    (hE : ∀ θ ∈ complexStrip n ρ, ‖invarianceError h K ω θ‖ ≤ e) (he1 : e ≤ 1)
    (hsmall : c_star n τ M σK σB σT μ * e / (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) :
    kamSeq h K ω ρ ρinf 0 = K ∧ ∀ s : ℕ,
      (Admissible σK σB σT 𝔅 h ω (rSeq ρ ρinf s)
          (μ - ∑ j ∈ Finset.range s, dSeq n τ M σK σB σT ρ ρinf γ e j)
          (epsSeq n τ M σK σB σT ρ ρinf γ e s) (kamSeq h K ω ρ ρinf s) ∧
        epsSeq n τ M σK σB σT ρ ρinf γ e s ≤ e ∧ e ≤ 1) ∧
      (∑ j ∈ Finset.range s, dSeq n τ M σK σB σT ρ ρinf γ e j ≤ μ / 4 ∧
        ∀ θ ∈ complexStrip n (rSeq ρ ρinf s), ‖kamSeq h K ω ρ ρinf s θ - K θ‖ ≤
          ∑ j ∈ Finset.range s, dSeq n τ M σK σB σT ρ ρinf γ e j) ∧
      ((∀ θ ∈ complexStrip n (rSeq ρ ρinf s), ‖fderiv ℂ (kamSeq h K ω ρ ρinf s) θ‖ ≤ σK - μ +
          ∑ j ∈ Finset.range s, n * dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j) ∧
        σK - μ + ∑ j ∈ Finset.range s, n * dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j ≤
          σK - μ / 2) ∧
      ((∀ θ ∈ complexStrip n (rSeq ρ ρinf s), ‖(gramMatrix (kamSeq h K ω ρ ρinf s) θ)⁻¹‖ ≤
          σB - μ + ∑ j ∈ Finset.range s,
            C_B n M σK σB σT * dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j) ∧
        σB - μ + ∑ j ∈ Finset.range s,
          C_B n M σK σB σT * dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j ≤ σB - μ / 2) ∧
      (‖(torsionAverage h (kamSeq h K ω ρ ρinf s) ω)⁻¹‖ ≤ σT - μ + ∑ j ∈ Finset.range s,
          2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT * dSeq n τ M σK σB σT ρ ρinf γ e j /
            deltaSeq ρ ρinf j ^ 2 ∧
        σT - μ + ∑ j ∈ Finset.range s, 2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT *
          dSeq n τ M σK σB σT ρ ρinf γ e j / deltaSeq ρ ρinf j ^ 2 ≤ σT - μ / 2) ∧
      ∀ θ ∈ complexStrip n (rSeq ρ ρinf (s + 1)),
        ‖kamSeq h K ω ρ ρinf (s + 1) θ - kamSeq h K ω ρ ρinf s θ‖ ≤
            dSeq n τ M σK σB σT ρ ρinf γ e s ∧
          ‖fderiv ℂ (kamSeq h K ω ρ ρinf (s + 1)) θ - fderiv ℂ (kamSeq h K ω ρ ρinf s) θ‖ ≤
            n * dSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s := by
  have hP := hS.toParams
  have hγ := hS.gamma_pos
  have hρ0 : 0 < ρ := hρinf.trans hρ
  have h00 : (0 : Fin n → ℂ) ∈ complexStrip n ρ := fun i => by simpa using hρ0
  have he0 : 0 ≤ e := (norm_nonneg _).trans (hE 0 h00)
  have hK𝔅 : ∀ θ ∈ complexStrip n ρ, K θ ∈ 𝔅 := fun θ hθ =>
    hball θ hθ (Metric.mem_ball_self hμ)
  have hDK' : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σK := fun θ hθ =>
    (hDK θ hθ).trans (by linarith)
  have hG' : ∀ θ ∈ complexStrip n ρ, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB :=
    fun θ hθ => ⟨(hG θ hθ).1, (hG θ hθ).2.trans (by linarith)⟩
  -- `γ ≤ Θ`, from Lemma `bp:p2:frequency` for `K`
  obtain ⟨hγω, hω1, hω2⟩ := frequency hS hρ0 he1 hK𝔅 hDK' hG' hE
  have hγΘ : γ ≤ Theta n M σK σB σT := hγω.trans (hω1.trans hω2)
  have hq := error_decay_hyp hγ (delta0_pos hρ) he0 hsmall
  have hsums := fun s => sums_le hP hρ hγ hγΘ he0 hμ hsmall s
  have heps := fun s => eps_le hP hρ hγ he0 hq s
  have hsm := fun s => stepsmall_seq hP hρ hγ he0 hμ hsmall s
  have hall : ∀ s : ℕ, Stage n τ M σK σB σT 𝔅 h ω γ ρ ρinf μ e K s := by
    intro s
    induction s with
    | zero => exact stage_zero hρ0 hμ he0 he1 hK hKp hKr hball hDK hG hT hE
    | succ s ih => exact (stage_succ hS hρinf hρ hμ he0 he1 heps hsm hsums ih).1
  refine ⟨rfl, fun s => ?_⟩
  obtain ⟨hD, hDKs, hB, hT'⟩ := hsums s
  have st := hall s
  unfold sumD at hD
  unfold sumDK at hDKs
  unfold sumB at hB
  unfold sumT at hT'
  exact ⟨⟨st.adm, heps s, he1⟩, ⟨hD, st.dist⟩, ⟨st.dk, by linarith⟩, ⟨st.gb, by linarith⟩,
    ⟨st.tb, by linarith⟩, (stage_succ hS hρinf hρ hμ he0 he1 heps hsm hsums st).2⟩

end KAM.Apost

end
