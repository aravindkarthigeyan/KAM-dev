/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Constants
public import KAM.Analysis.Iteration
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# The schedule of the iteration and the decay of the errors (blueprint `bp:p2:schedule`,
`bp:p2:error-decay`)

The schedule of Definition `bp:p2:schedule` is the four explicit sequences

* `deltaSeq ρ ρinf s = 2^{-s} δ₀` (`δ_s`),
* `rSeq ρ ρinf s = ρ - 8 δ₀ (1 - 2^{-s})` (`r_s`),
* `epsSeq n τ M σK σB σT ρ ρinf γ e` (`ε_s`), with `ε₀ = e` and
  `ε_{s+1} = C_E ε_s² / (γ⁴ δ_s^{2a})`,
* `dSeq n τ M σK σB σT ρ ρinf γ e s = C_ΔK ε_s / (γ² δ_s^a)` (`d_s`),

and `KAM.Apost.schedule` records its claims (`r₀ = ρ`, `r_{s+1} = r_s - 4 δ_s`,
`ρ_∞ ≤ ρ - 8 δ₀ < r_s`, `δ_s ≤ 1`, `4 δ_s < r_s`).

`KAM.Apost.error_decay` (Lemma `bp:p2:error-decay`) bounds the errors by
`ε_s ≤ q^{2^s - 1} 2^{-2as} e ≤ 2^{-2as} e`, for `q = 2^{2a} C_E e / (γ⁴ δ₀^{2a})`, then
`ε_s / δ_s^j ≤ 2^{-(2a - j)s} e / δ₀^j ≤ e / δ₀^j` for `0 ≤ j ≤ 2a`, and finally
`∑ ε_s / δ_s^j ≤ 2 e / δ₀^j` for `0 ≤ j ≤ 2a - 1`. The first bound is
`KAM.quadratic_iteration_linear` for `y_s = ε_s`, `Q = C_E / (γ⁴ δ₀^{2a})` and `p = 2a`
(step `step:p2:ed-errors`); the sums are a comparison with a geometric series (step
`step:p2:ed-sums`).

The helper lemmas (`deltaSeq_*`, `rSeq_*`, `epsSeq_*`) are reused by the induction
(`bp:p2:iteration`).
-/

@[expose] public noncomputable section

namespace KAM.Apost

/-- `δ_s = 2^{-s} δ₀`. -/
def deltaSeq (ρ ρinf : ℝ) (s : ℕ) : ℝ := (2 : ℝ)⁻¹ ^ s * delta0 ρ ρinf
/-- `r_s = ρ - 8 δ₀ (1 - 2^{-s})`. -/
def rSeq (ρ ρinf : ℝ) (s : ℕ) : ℝ := ρ - 8 * delta0 ρ ρinf * (1 - (2 : ℝ)⁻¹ ^ s)

variable (n τ M σK σB σT) in
/-- `ε₀ = e`, `ε_{s+1} = C_E ε_s² / (γ⁴ δ_s^{2a})`. -/
def epsSeq (ρ ρinf γ e : ℝ) : ℕ → ℝ
  | 0 => e
  | s + 1 => C_E n τ M σK σB σT * epsSeq ρ ρinf γ e s ^ 2 /
      (γ ^ 4 * deltaSeq ρ ρinf s ^ (2 * aExp n τ))

variable (n τ M σK σB σT) in
/-- `d_s = C_ΔK ε_s / (γ² δ_s^a)`. -/
def dSeq (ρ ρinf γ e : ℝ) (s : ℕ) : ℝ :=
  C_DK n τ M σK σB σT * epsSeq n τ M σK σB σT ρ ρinf γ e s /
    (γ ^ 2 * deltaSeq ρ ρinf s ^ aExp n τ)

/-! ### Helper lemmas for the sequences `δ_s` and `r_s` -/

section Sequences

variable {ρ ρinf : ℝ}

theorem deltaSeq_zero : deltaSeq ρ ρinf 0 = delta0 ρ ρinf := by
  simp [deltaSeq]

theorem deltaSeq_pos (hρ : ρinf < ρ) (s : ℕ) : 0 < deltaSeq ρ ρinf s :=
  mul_pos (pow_pos (by norm_num) s) (delta0_pos hρ)

theorem deltaSeq_le_delta0 (hρ : ρinf < ρ) (s : ℕ) : deltaSeq ρ ρinf s ≤ delta0 ρ ρinf := by
  have h1 : (2 : ℝ)⁻¹ ^ s ≤ 1 := pow_le_one₀ (by norm_num) (by norm_num)
  have h2 := delta0_pos hρ
  unfold deltaSeq
  nlinarith

theorem deltaSeq_succ (s : ℕ) : deltaSeq ρ ρinf (s + 1) = deltaSeq ρ ρinf s / 2 := by
  unfold deltaSeq
  rw [pow_succ]
  ring

/-- `δ_s ^ x = 2 ^ (-(x s)) δ₀ ^ x`, for real `x` (the powers `δ_s^{a}`, `δ_s^{2a}`, `δ_s^j`). -/
theorem deltaSeq_rpow (hd0 : 0 ≤ delta0 ρ ρinf) (x : ℝ) (s : ℕ) :
    deltaSeq ρ ρinf s ^ x = (2 : ℝ) ^ (-(x * s)) * delta0 ρ ρinf ^ x := by
  have h2 : (2 : ℝ)⁻¹ ^ s = (2 : ℝ) ^ (-(s : ℝ)) := by
    rw [Real.rpow_neg (by norm_num), Real.rpow_natCast, inv_pow]
  unfold deltaSeq
  rw [Real.mul_rpow (by positivity) hd0, h2, ← Real.rpow_mul (by norm_num)]
  congr 2
  ring

theorem rSeq_zero : rSeq ρ ρinf 0 = ρ := by
  simp [rSeq]

/-- `r_s = ρ - 8 δ₀ + 8 δ_s`. -/
theorem rSeq_eq (s : ℕ) :
    rSeq ρ ρinf s = ρ - 8 * delta0 ρ ρinf + 8 * deltaSeq ρ ρinf s := by
  unfold rSeq deltaSeq
  ring

theorem rSeq_succ (s : ℕ) :
    rSeq ρ ρinf (s + 1) = rSeq ρ ρinf s - 4 * deltaSeq ρ ρinf s := by
  rw [rSeq_eq, rSeq_eq, deltaSeq_succ]
  ring

end Sequences

/-- Blueprint `bp:p2:schedule` (claims). -/
theorem schedule {ρ ρinf : ℝ} (hρinf : 0 < ρinf) (hρ : ρinf < ρ) :
    rSeq ρ ρinf 0 = ρ ∧ ρinf ≤ ρ - 8 * delta0 ρ ρinf ∧
    ∀ s : ℕ, rSeq ρ ρinf (s + 1) = rSeq ρ ρinf s - 4 * deltaSeq ρ ρinf s ∧
      ρ - 8 * delta0 ρ ρinf < rSeq ρ ρinf s ∧ deltaSeq ρ ρinf s ≤ 1 ∧
      4 * deltaSeq ρ ρinf s < rSeq ρ ρinf s := by
  have h8 := eight_mul_delta0_le ρ ρinf
  refine ⟨rSeq_zero, by linarith, fun s => ⟨rSeq_succ s, ?_, ?_, ?_⟩⟩
  · have := deltaSeq_pos hρ s
    rw [rSeq_eq]
    linarith
  · exact (deltaSeq_le_delta0 hρ s).trans (delta0_le_one ρ ρinf)
  · have := deltaSeq_pos hρ s
    rw [rSeq_eq]
    linarith

/-! ### Helper lemmas for the errors `ε_s` -/

section Errors

variable {n : ℕ} {τ M σK σB σT : ℝ} {ρ ρinf γ e : ℝ}

theorem epsSeq_zero : epsSeq n τ M σK σB σT ρ ρinf γ e 0 = e := rfl

theorem epsSeq_nonneg (hP : Params n τ M σK σB σT) (hρ : ρinf < ρ) (he : 0 ≤ e) (s : ℕ) :
    0 ≤ epsSeq n τ M σK σB σT ρ ρinf γ e s := by
  induction s with
  | zero => exact he
  | succ s ih =>
    have hC := zero_le_one.trans (one_le_C_E hP)
    have hδ := (deltaSeq_pos hρ s).le
    simp only [epsSeq]
    positivity

/-- The recursion `ε_{s+1} = Q' 2^{2as} ε_s²` with `Q' = C_E / (γ⁴ δ₀^{2a})`
(step `step:p2:ed-errors`). -/
theorem epsSeq_succ_eq (hρ : ρinf < ρ) (hγ : 0 < γ) (s : ℕ) :
    epsSeq n τ M σK σB σT ρ ρinf γ e (s + 1) =
      C_E n τ M σK σB σT / (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) *
        (2 : ℝ) ^ (2 * aExp n τ * (s : ℝ)) * epsSeq n τ M σK σB σT ρ ρinf γ e s ^ 2 := by
  have hd0 := delta0_pos hρ
  have hD : 0 < delta0 ρ ρinf ^ (2 * aExp n τ) := Real.rpow_pos_of_pos hd0 _
  have h2 : 0 < (2 : ℝ) ^ (2 * aExp n τ * (s : ℝ)) := Real.rpow_pos_of_pos (by norm_num) _
  simp only [epsSeq]
  rw [deltaSeq_rpow hd0.le, Real.rpow_neg (by norm_num)]
  field_simp

/-- The ratio `q = 2^{2a} C_E e / (γ⁴ δ₀^{2a})` of Lemma `bp:p2:error-decay`, as the product
`Q' 2^{2a} e` of the recursion constant `Q' = C_E / (γ⁴ δ₀^{2a})`. -/
theorem q_eq {a CE γ d0 e : ℝ} :
    CE / (γ ^ 4 * d0 ^ (2 * a)) * (2 : ℝ) ^ (2 * a) * e =
      (2 : ℝ) ^ (2 * a) * CE * e / (γ ^ 4 * d0 ^ (2 * a)) := by
  ring

/-- Step `step:p2:ed-errors`: `ε_s ≤ q^{2^s - 1} 2^{-2as} e`, by
`KAM.quadratic_iteration_linear`. -/
theorem epsSeq_le_q_pow (hP : Params n τ M σK σB σT) (hρ : ρinf < ρ) (hγ : 0 < γ) (he : 0 ≤ e)
    (s : ℕ) :
    epsSeq n τ M σK σB σT ρ ρinf γ e s ≤
      ((2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
        (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ))) ^ (2 ^ s - 1) *
        (2 : ℝ) ^ (-(2 * aExp n τ * s)) * e := by
  have hD : 0 < γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ) :=
    mul_pos (pow_pos hγ 4) (Real.rpow_pos_of_pos (delta0_pos hρ) _)
  have hQ : 0 < C_E n τ M σK σB σT / (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) :=
    div_pos (zero_lt_one.trans_le (one_le_C_E hP)) hD
  have key : epsSeq n τ M σK σB σT ρ ρinf γ e s ≤
      (C_E n τ M σK σB σT / (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) *
        (2 : ℝ) ^ (2 * aExp n τ) * epsSeq n τ M σK σB σT ρ ρinf γ e 0) ^ (2 ^ s - 1) *
        (2 : ℝ) ^ (-(2 * aExp n τ * (s : ℝ))) * epsSeq n τ M σK σB σT ρ ρinf γ e 0 :=
    quadratic_iteration_linear (y := epsSeq n τ M σK σB σT ρ ρinf γ e) hQ
      (epsSeq_nonneg hP hρ he) (fun m => (epsSeq_succ_eq hρ hγ m).le) s
  rwa [epsSeq_zero, q_eq] at key

/-- `0 ≤ q`. -/
theorem q_nonneg (hP : Params n τ M σK σB σT) (hρ : ρinf < ρ) (hγ : 0 < γ) (he : 0 ≤ e) :
    0 ≤ (2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
      (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) := by
  have hD : 0 < γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ) :=
    mul_pos (pow_pos hγ 4) (Real.rpow_pos_of_pos (delta0_pos hρ) _)
  have hC := zero_le_one.trans (one_le_C_E hP)
  positivity

/-- The first inequality chain of Lemma `bp:p2:error-decay`. -/
theorem error_decay_eps (hP : Params n τ M σK σB σT) (hρ : ρinf < ρ) (hγ : 0 < γ) (he : 0 ≤ e)
    (hq : (2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
      (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) (s : ℕ) :
    epsSeq n τ M σK σB σT ρ ρinf γ e s ≤
        ((2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
          (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ))) ^ (2 ^ s - 1) *
          (2 : ℝ) ^ (-(2 * aExp n τ * s)) * e ∧
      ((2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
          (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ))) ^ (2 ^ s - 1) *
          (2 : ℝ) ^ (-(2 * aExp n τ * s)) * e ≤ (2 : ℝ) ^ (-(2 * aExp n τ * s)) * e := by
  refine ⟨epsSeq_le_q_pow hP hρ hγ he s, ?_⟩
  have h1 := pow_le_one₀ (q_nonneg hP hρ hγ he) hq (n := 2 ^ s - 1)
  have h2 : 0 ≤ (2 : ℝ) ^ (-(2 * aExp n τ * (s : ℝ))) * e := by positivity
  calc _ ≤ 1 * ((2 : ℝ) ^ (-(2 * aExp n τ * (s : ℝ))) * e) := by
        rw [← mul_assoc]
        exact mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right h1 (by positivity)) he
    _ = _ := one_mul _

/-- The weighted bounds `ε_s / δ_s^j ≤ 2^{-(2a - j)s} e / δ₀^j ≤ e / δ₀^j` for `0 ≤ j ≤ 2a`. -/
theorem error_decay_weighted (hP : Params n τ M σK σB σT) (hρ : ρinf < ρ) (hγ : 0 < γ)
    (he : 0 ≤ e)
    (hq : (2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
      (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) {j : ℝ}
    (hj2 : j ≤ 2 * aExp n τ) (s : ℕ) :
    epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j ≤
          (2 : ℝ) ^ (-((2 * aExp n τ - j) * s)) * e / delta0 ρ ρinf ^ j ∧
        (2 : ℝ) ^ (-((2 * aExp n τ - j) * s)) * e / delta0 ρ ρinf ^ j ≤ e / delta0 ρ ρinf ^ j := by
  have hd0 := delta0_pos hρ
  have hDj : 0 < delta0 ρ ρinf ^ j := Real.rpow_pos_of_pos hd0 _
  have h2j : 0 < (2 : ℝ) ^ (-(j * (s : ℝ))) := Real.rpow_pos_of_pos (by norm_num) _
  have hsplit : (2 : ℝ) ^ (-((2 * aExp n τ - j) * (s : ℝ))) =
      (2 : ℝ) ^ (-(2 * aExp n τ * (s : ℝ))) / (2 : ℝ) ^ (-(j * (s : ℝ))) := by
    rw [← Real.rpow_sub (by norm_num)]
    congr 1
    ring
  refine ⟨?_, ?_⟩
  · have hε := (error_decay_eps hP hρ hγ he hq s).1.trans (error_decay_eps hP hρ hγ he hq s).2
    rw [deltaSeq_rpow hd0.le, hsplit]
    calc _ ≤ (2 : ℝ) ^ (-(2 * aExp n τ * (s : ℝ))) * e /
          ((2 : ℝ) ^ (-(j * (s : ℝ))) * delta0 ρ ρinf ^ j) :=
          div_le_div_of_nonneg_right hε (by positivity)
      _ = _ := by field_simp
  · have h1 : (2 : ℝ) ^ (-((2 * aExp n τ - j) * (s : ℝ))) ≤ 1 :=
      Real.rpow_le_one_of_one_le_of_nonpos (by norm_num)
        (neg_nonpos.mpr (mul_nonneg (by linarith) (Nat.cast_nonneg s)))
    exact div_le_div_of_nonneg_right (mul_le_of_le_one_left he h1) hDj.le

/-- The summed bounds `∑ ε_s / δ_s^j ≤ 2 e / δ₀^j` for `0 ≤ j ≤ 2a - 1` (step `step:p2:ed-sums`):
comparison with the geometric series of ratio `2^{-(2a - j)} ≤ 1/2`. -/
theorem error_decay_sum (hP : Params n τ M σK σB σT) (hρ : ρinf < ρ) (hγ : 0 < γ)
    (he : 0 ≤ e)
    (hq : (2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
      (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) {j : ℝ}
    (hj2 : j ≤ 2 * aExp n τ - 1) :
    Summable (fun s => epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j) ∧
      ∑' s, epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j ≤
        2 * e / delta0 ρ ρinf ^ j := by
  have hd0 := delta0_pos hρ
  have hDj : 0 < delta0 ρ ρinf ^ j := Real.rpow_pos_of_pos hd0 _
  set r : ℝ := (2 : ℝ) ^ (-(2 * aExp n τ - j)) with hr
  have hr0 : 0 < r := Real.rpow_pos_of_pos (by norm_num) _
  have hr1 : r ≤ 1 / 2 := by
    have : r ≤ (2 : ℝ) ^ (-1 : ℝ) :=
      Real.rpow_le_rpow_of_exponent_le (by norm_num) (by linarith)
    rwa [Real.rpow_neg_one, ← one_div] at this
  have hgeo : ∀ s : ℕ, (2 : ℝ) ^ (-((2 * aExp n τ - j) * (s : ℝ))) = r ^ s := by
    intro s
    rw [hr, ← Real.rpow_natCast, ← Real.rpow_mul (by norm_num)]
    congr 1
    ring
  have hle : ∀ s : ℕ, epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j ≤
      e / delta0 ρ ρinf ^ j * r ^ s := by
    intro s
    have := (error_decay_weighted hP hρ hγ he hq (j := j) (by linarith) s).1
    rw [hgeo] at this
    calc _ ≤ _ := this
      _ = _ := by ring
  have hnn : ∀ s : ℕ, 0 ≤ epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j := by
    intro s
    have := epsSeq_nonneg hP hρ he (γ := γ) s
    have := (Real.rpow_pos_of_pos (deltaSeq_pos hρ s) j)
    positivity
  have hsum : Summable (fun s : ℕ => e / delta0 ρ ρinf ^ j * r ^ s) :=
    (summable_geometric_of_lt_one hr0.le (by linarith)).mul_left _
  refine ⟨Summable.of_nonneg_of_le hnn hle hsum, ?_⟩
  calc _ ≤ ∑' s : ℕ, e / delta0 ρ ρinf ^ j * r ^ s :=
        (Summable.of_nonneg_of_le hnn hle hsum).tsum_le_tsum hle hsum
    _ = e / delta0 ρ ρinf ^ j * (1 - r)⁻¹ := by
        rw [tsum_mul_left, tsum_geometric_of_lt_one hr0.le (by linarith)]
    _ ≤ e / delta0 ρ ρinf ^ j * 2 := by
        have h2 : (1 - r)⁻¹ ≤ 2 := by
          rw [inv_le_comm₀ (by linarith) (by norm_num)]
          linarith
        exact mul_le_mul_of_nonneg_left h2 (by positivity)
    _ = 2 * e / delta0 ρ ρinf ^ j := by ring

end Errors

variable {n : ℕ} {τ M σK σB σT : ℝ}

/-- Blueprint `bp:p2:error-decay`, with `q = 2^{2a} C_E e / (γ⁴ δ₀^{2a})`. -/
theorem error_decay (hP : Params n τ M σK σB σT) {ρ ρinf γ e : ℝ} (hρinf : 0 < ρinf)
    (hρ : ρinf < ρ) (hγ : 0 < γ) (he : 0 ≤ e)
    (hq : (2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
      (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ)) ≤ 1) :
    (∀ s : ℕ, epsSeq n τ M σK σB σT ρ ρinf γ e s ≤
        ((2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
          (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ))) ^ (2 ^ s - 1) *
          (2 : ℝ) ^ (-(2 * aExp n τ * s)) * e ∧
      ((2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT * e /
          (γ ^ 4 * delta0 ρ ρinf ^ (2 * aExp n τ))) ^ (2 ^ s - 1) *
          (2 : ℝ) ^ (-(2 * aExp n τ * s)) * e ≤ (2 : ℝ) ^ (-(2 * aExp n τ * s)) * e) ∧
    (∀ j : ℝ, 0 ≤ j → j ≤ 2 * aExp n τ → ∀ s : ℕ,
      epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j ≤
          (2 : ℝ) ^ (-((2 * aExp n τ - j) * s)) * e / delta0 ρ ρinf ^ j ∧
        (2 : ℝ) ^ (-((2 * aExp n τ - j) * s)) * e / delta0 ρ ρinf ^ j ≤ e / delta0 ρ ρinf ^ j) ∧
    (∀ j : ℝ, 0 ≤ j → j ≤ 2 * aExp n τ - 1 →
      Summable (fun s => epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j) ∧
      ∑' s, epsSeq n τ M σK σB σT ρ ρinf γ e s / deltaSeq ρ ρinf s ^ j ≤
        2 * e / delta0 ρ ρinf ^ j) := by
  have _hρinf := hρinf
  exact ⟨error_decay_eps hP hρ hγ he hq,
    fun _ _ hj2 s => error_decay_weighted hP hρ hγ he hq hj2 s,
    fun _ _ hj2 => error_decay_sum hP hρ hγ he hq hj2⟩

end KAM.Apost

end
