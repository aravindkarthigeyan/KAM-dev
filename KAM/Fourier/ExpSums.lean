/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Fourier.ExponentialDecay
public import KAM.Fourier.Derivative
public import Mathlib.Analysis.SpecificLimits.Basic
public import Mathlib.Analysis.Normed.Ring.InfiniteSum
public import Mathlib.Topology.Algebra.InfiniteSum.NatInt
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.FieldSimp

/-!
# Exponential sums over `ℤⁿ` (blueprint `bp:p1:exp-sums`)

Write `|k|₁ = KAM.Fourier.modeSize k` for the `ℓ¹` size of `k ∈ ℤⁿ`.

* (a) `y ^ τ * exp (-a * y) ≤ (τ / (exp 1 * a)) ^ τ`: `KAM.Fourier.rpow_mul_exp_neg_le`
  (blueprint step `step:p1:es-power`).
* (b) For `x > 0`, `∑_{k ∈ ℤⁿ} exp (-x |k|₁) = coth (x / 2) ^ n` and `coth (x / 2) ≤ 1 + 2 / x`
  (step `step:p1:es-product`). The sum factors over the coordinates.
* (c) For `x > 0`, `∑_{k ≠ 0} exp (-x |k|₁) ≤ (8 n / x) ^ n` (step `step:p1:es-nonzero`).

The hyperbolic cotangent is written `cosh (x / 2) / sinh (x / 2)`. The statements hold for every
`n`, including `n = 0` (then both sides of (b) equal `1`, and (c) reads `0 ≤ 1`).
-/

@[expose] public section

open Filter Topology

namespace KAM.Fourier

/-! ### One variable -/

/-- `coth (x / 2) = (1 + e^{-x}) / (1 - e^{-x})`. -/
theorem cosh_div_sinh_half {x : ℝ} (hx : 0 < x) :
    Real.cosh (x / 2) / Real.sinh (x / 2) =
      (1 + Real.exp (-x)) / (1 - Real.exp (-x)) := by
  have hu : 1 < Real.exp (x / 2) := Real.one_lt_exp_iff.mpr (by linarith)
  have hu0 : 0 < Real.exp (x / 2) := by linarith
  have he : Real.exp (-x) = (Real.exp (x / 2))⁻¹ ^ 2 := by
    rw [inv_pow, ← Real.exp_nat_mul, ← Real.exp_neg]
    congr 1; push_cast; ring
  have h1 : (Real.exp (x / 2))⁻¹ ^ 2 < 1 := by
    have : (Real.exp (x / 2))⁻¹ < 1 := inv_lt_one_of_one_lt₀ hu
    exact pow_lt_one₀ (by positivity) this (by norm_num)
  have hne : 1 - (Real.exp (x / 2))⁻¹ ^ 2 ≠ 0 := by linarith
  have hsinh : Real.sinh (x / 2) ≠ 0 := by
    rw [Real.sinh_eq, Real.exp_neg]
    have : (Real.exp (x / 2))⁻¹ < 1 := inv_lt_one_of_one_lt₀ hu
    intro h
    linarith
  rw [he, Real.cosh_eq, Real.sinh_eq, Real.exp_neg]
  field_simp

/-- The one-variable sum `∑_{m ∈ ℤ} e^{-x |m|} = (1 + e^{-x}) / (1 - e^{-x})`. -/
theorem hasSum_exp_neg_abs_int {x : ℝ} (hx : 0 < x) :
    HasSum (fun m : ℤ => Real.exp (-x * |(m : ℝ)|))
      ((1 + Real.exp (-x)) / (1 - Real.exp (-x))) := by
  set r := Real.exp (-x) with hr
  have hr0 : 0 < r := Real.exp_pos _
  have hr1 : r < 1 := by rw [hr]; exact Real.exp_lt_one_iff.mpr (by linarith)
  have key : ∀ m : ℤ, Real.exp (-x * |(m : ℝ)|) = r ^ m.natAbs := by
    intro m
    rw [hr, ← Real.exp_nat_mul, Nat.cast_natAbs, Int.cast_abs]
    congr 1
    ring
  simp_rw [key]
  have h1 : HasSum (fun n : ℕ => r ^ n) (1 - r)⁻¹ := hasSum_geometric_of_lt_one hr0.le hr1
  have h2 : HasSum (fun n : ℕ => r ^ (n + 1)) (r * (1 - r)⁻¹) := by
    simpa only [pow_succ, mul_comm] using h1.mul_left r
  have hnat : ∀ n : ℕ, (-((n : ℤ) + 1)).natAbs = n + 1 := fun n => by omega
  have h := HasSum.of_nat_of_neg_add_one (f := fun m : ℤ => r ^ m.natAbs)
    (by simpa using h1) (by simpa only [hnat] using h2)
  have hne : 1 - r ≠ 0 := by linarith
  convert h using 1
  field_simp

/-- `coth (x / 2) ≤ 1 + 2 / x` for `x > 0` (blueprint (b), second assertion). -/
theorem cosh_div_sinh_half_le {x : ℝ} (hx : 0 < x) :
    Real.cosh (x / 2) / Real.sinh (x / 2) ≤ 1 + 2 / x := by
  rw [cosh_div_sinh_half hx]
  have hr0 : 0 < Real.exp (-x) := Real.exp_pos _
  have hr1 : Real.exp (-x) < 1 := Real.exp_lt_one_iff.mpr (by linarith)
  have hxr : Real.exp (-x) * (x + 1) ≤ 1 := by
    have h := Real.add_one_le_exp x
    have h2 : Real.exp (-x) * Real.exp x = 1 := by rw [← Real.exp_add]; simp
    nlinarith
  rw [div_le_iff₀ (by linarith)]
  have : (1 + 2 / x) * (1 - Real.exp (-x)) = 1 - Real.exp (-x) + 2 / x * (1 - Real.exp (-x)) := by
    ring
  rw [this]
  have h3 : 1 + Real.exp (-x) ≤ 1 - Real.exp (-x) + 2 / x * (1 - Real.exp (-x)) := by
    have : 2 * Real.exp (-x) ≤ 2 / x * (1 - Real.exp (-x)) := by
      rw [div_mul_eq_mul_div, le_div_iff₀ hx]
      nlinarith
    linarith
  exact h3

/-! ### Products over the coordinates -/

/-- A nonnegative summable family on `ℤ` gives, on `ℤⁿ`, the summable product family whose sum is
the `n`-th power. -/
theorem hasSum_pi_prod {f : ℤ → ℝ} (hf0 : ∀ m, 0 ≤ f m) {S : ℝ} (hf : HasSum f S) (n : ℕ) :
    HasSum (fun k : Fin n → ℤ => ∏ j, f (k j)) (S ^ n) := by
  induction n with
  | zero =>
    simp only [Finset.univ_eq_empty, Finset.prod_empty, pow_zero]
    exact hasSum_single (f := fun _ : Fin 0 → ℤ => (1 : ℝ)) default
      (fun b hb => absurd (Subsingleton.elim b default) hb)
  | succ n ih =>
    have hf0' : 0 ≤ f := fun m => hf0 m
    have hnn : 0 ≤ fun k : Fin n → ℤ => ∏ j, f (k j) := fun k =>
      Finset.prod_nonneg fun j _ => hf0 _
    have hsum : Summable fun p : ℤ × (Fin n → ℤ) => f p.1 * ∏ j, f (p.2 j) :=
      Summable.mul_of_nonneg (f := f) (g := fun k : Fin n → ℤ => ∏ j, f (k j))
        hf.summable ih.summable hf0' hnn
    have hprod : HasSum (fun p : ℤ × (Fin n → ℤ) => f p.1 * ∏ j, f (p.2 j)) (S * S ^ n) :=
      HasSum.mul (f := f) (g := fun k : Fin n → ℤ => ∏ j, f (k j)) hf ih hsum
    have hcomp : ((fun k : Fin (n + 1) → ℤ => ∏ j, f (k j)) ∘ Fin.consEquiv (fun _ => ℤ)) =
        fun p : ℤ × (Fin n → ℤ) => f p.1 * ∏ j, f (p.2 j) := by
      ext p
      simp [Fin.prod_univ_succ, Fin.consEquiv]
    rw [pow_succ']
    refine (Fin.consEquiv (fun _ => ℤ)).hasSum_iff.mp ?_
    rw [hcomp]
    exact hprod

/-- Blueprint `bp:p1:exp-sums`(b), first assertion (step `step:p1:es-product`): for `x > 0`,
`∑_{k ∈ ℤⁿ} e^{-x |k|₁} = coth (x / 2) ^ n`, as a `HasSum`. -/
theorem hasSum_exp_neg_modeSize (n : ℕ) {x : ℝ} (hx : 0 < x) :
    HasSum (fun k : Fin n → ℤ => Real.exp (-x * modeSize k))
      ((Real.cosh (x / 2) / Real.sinh (x / 2)) ^ n) := by
  rw [cosh_div_sinh_half hx]
  have h := hasSum_pi_prod (f := fun m : ℤ => Real.exp (-x * |(m : ℝ)|))
    (fun m => (Real.exp_pos _).le) (hasSum_exp_neg_abs_int hx) n
  convert h using 2 with k
  rw [modeSize, Finset.mul_sum, Real.exp_sum]

/-! ### Nonzero modes -/

/-- A nonzero integer index has `ℓ¹` size at least `1`. -/
theorem one_le_modeSize {n : ℕ} {k : Fin n → ℤ} (hk : k ≠ 0) : 1 ≤ modeSize k := by
  obtain ⟨j, hj⟩ := Function.ne_iff.mp hk
  have h1 : (1 : ℝ) ≤ |(k j : ℝ)| := by exact_mod_cast Int.one_le_abs hj
  exact h1.trans (abs_coord_le_modeSize k j)

/-- The real inequality behind step `step:p1:es-nonzero`:
`e^{-x/2} (x + 4)^n ≤ (8 n)^n` for `n ≥ 1` and `x > 0`. -/
theorem exp_neg_half_mul_add_pow_le {n : ℕ} (hn : 1 ≤ n) {x : ℝ} (hx : 0 < x) :
    Real.exp (-(x / 2)) * (x + 4) ^ n ≤ (8 * n) ^ n := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have hn0 : (0 : ℝ) ≤ ((m + 1 : ℕ) : ℝ) := Nat.cast_nonneg _
  have hn1 : (1 : ℝ) ≤ ((m + 1 : ℕ) : ℝ) := by exact_mod_cast hn
  have hE : Real.exp (-(x / 2)) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  have hE0 : 0 ≤ Real.exp (-(x / 2)) := (Real.exp_pos _).le
  -- the power times the exponential, by part (a) with `a = 1/2`
  have hpow : x ^ (m + 1) * Real.exp (-(x / 2)) ≤ (4 * ((m + 1 : ℕ) : ℝ)) ^ (m + 1) := by
    have h := rpow_mul_exp_neg_le (x := x) (τ := ((m + 1 : ℕ) : ℝ)) (δ := 1 / 2) hx.le hn0
      (by norm_num)
    rw [Real.rpow_natCast, Real.rpow_natCast] at h
    have h2 : -(1 / 2 : ℝ) * x = -(x / 2) := by ring
    rw [h2] at h
    refine h.trans (pow_le_pow_left₀ (by positivity) ?_ _)
    have he : (2 : ℝ) ≤ Real.exp 1 := by
      have := Real.add_one_le_exp (1 : ℝ)
      linarith
    rw [div_le_iff₀ (by positivity)]
    nlinarith
  have h4 : (4 : ℝ) ^ (m + 1) ≤ (4 * ((m + 1 : ℕ) : ℝ)) ^ (m + 1) :=
    pow_le_pow_left₀ (by norm_num) (by nlinarith) _
  have hadd := add_pow_le hx.le (by norm_num : (0 : ℝ) ≤ 4) (m + 1)
  calc Real.exp (-(x / 2)) * (x + 4) ^ (m + 1)
      ≤ Real.exp (-(x / 2)) * (2 ^ (m + 1 - 1) * (x ^ (m + 1) + 4 ^ (m + 1))) :=
        mul_le_mul_of_nonneg_left hadd hE0
    _ = 2 ^ m * (x ^ (m + 1) * Real.exp (-(x / 2)) + 4 ^ (m + 1) * Real.exp (-(x / 2))) := by
        rw [Nat.add_sub_cancel]; ring
    _ ≤ 2 ^ m * ((4 * ((m + 1 : ℕ) : ℝ)) ^ (m + 1) + (4 * ((m + 1 : ℕ) : ℝ)) ^ (m + 1)) := by
        refine mul_le_mul_of_nonneg_left (add_le_add hpow ?_) (by positivity)
        calc (4 : ℝ) ^ (m + 1) * Real.exp (-(x / 2)) ≤ 4 ^ (m + 1) * 1 :=
              mul_le_mul_of_nonneg_left hE (by positivity)
          _ ≤ _ := by rw [mul_one]; exact h4
    _ = (8 * ((m + 1 : ℕ) : ℝ)) ^ (m + 1) := by
        rw [mul_pow 8, show (8 : ℝ) = 2 * 4 by norm_num, mul_pow 2 4, mul_pow 4]
        ring

/-- Blueprint `bp:p1:exp-sums`(c) (step `step:p1:es-nonzero`): for `x > 0`,
`∑_{k ≠ 0} e^{-x |k|₁} ≤ (8 n / x)^n`. -/
theorem tsum_exp_neg_modeSize_ne_zero_le (n : ℕ) {x : ℝ} (hx : 0 < x) :
    ∑' k : {k : Fin n → ℤ // k ≠ 0}, Real.exp (-x * modeSize k.1) ≤ (8 * n / x) ^ n := by
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · have : IsEmpty {k : Fin 0 → ℤ // k ≠ 0} :=
      ⟨fun k => k.2 (Subsingleton.elim _ _)⟩
    simp
  have hs : ∀ y : ℝ, 0 < y → Summable fun k : Fin n → ℤ => Real.exp (-y * modeSize k) :=
    fun y hy => (hasSum_exp_neg_modeSize n hy).summable
  have hx2 : 0 < x / 2 := by positivity
  have hsub1 : Summable fun k : {k : Fin n → ℤ // k ≠ 0} => Real.exp (-x * modeSize k.1) :=
    (hs x hx).subtype {k | k ≠ 0}
  have hsub2 : Summable fun k : {k : Fin n → ℤ // k ≠ 0} =>
      Real.exp (-(x / 2)) * Real.exp (-(x / 2) * modeSize k.1) :=
    ((hs (x / 2) hx2).subtype {k | k ≠ 0}).mul_left _
  have hpt : ∀ k : {k : Fin n → ℤ // k ≠ 0}, Real.exp (-x * modeSize k.1) ≤
      Real.exp (-(x / 2)) * Real.exp (-(x / 2) * modeSize k.1) := by
    intro k
    rw [← Real.exp_add, Real.exp_le_exp]
    have := one_le_modeSize k.2
    nlinarith
  have h1 : ∑' k : {k : Fin n → ℤ // k ≠ 0}, Real.exp (-x * modeSize k.1) ≤
      Real.exp (-(x / 2)) * ∑' k : Fin n → ℤ, Real.exp (-(x / 2) * modeSize k) := by
    calc _ ≤ ∑' k : {k : Fin n → ℤ // k ≠ 0},
          Real.exp (-(x / 2)) * Real.exp (-(x / 2) * modeSize k.1) :=
        hsub1.tsum_le_tsum hpt hsub2
      _ = Real.exp (-(x / 2)) * ∑' k : {k : Fin n → ℤ // k ≠ 0},
          Real.exp (-(x / 2) * modeSize k.1) := tsum_mul_left
      _ ≤ _ := by
        refine mul_le_mul_of_nonneg_left ?_ (Real.exp_pos _).le
        exact Summable.tsum_subtype_le (fun k : Fin n → ℤ => Real.exp (-(x / 2) * modeSize k))
          {k | k ≠ 0} (fun _ => (Real.exp_pos _).le) (hs (x / 2) hx2)
  have h2 : ∑' k : Fin n → ℤ, Real.exp (-(x / 2) * modeSize k) =
      (Real.cosh (x / 2 / 2) / Real.sinh (x / 2 / 2)) ^ n :=
    (hasSum_exp_neg_modeSize n hx2).tsum_eq
  have hcoth : Real.cosh (x / 2 / 2) / Real.sinh (x / 2 / 2) ≤ 1 + 4 / x := by
    have := cosh_div_sinh_half_le hx2
    have h4 : 2 / (x / 2) = 4 / x := by field_simp; norm_num
    rwa [h4] at this
  have hcoth0 : 0 ≤ Real.cosh (x / 2 / 2) / Real.sinh (x / 2 / 2) := by
    rw [cosh_div_sinh_half hx2]
    have hr0 : 0 < Real.exp (-(x / 2)) := Real.exp_pos _
    have hr1 : Real.exp (-(x / 2)) < 1 := Real.exp_lt_one_iff.mpr (by linarith)
    exact div_nonneg (by linarith) (by linarith)
  have h3 : ∑' k : Fin n → ℤ, Real.exp (-(x / 2) * modeSize k) ≤ (1 + 4 / x) ^ n := by
    rw [h2]; exact pow_le_pow_left₀ hcoth0 hcoth n
  have h5 := exp_neg_half_mul_add_pow_le hn hx
  calc _ ≤ _ := h1
    _ ≤ Real.exp (-(x / 2)) * (1 + 4 / x) ^ n :=
        mul_le_mul_of_nonneg_left h3 (Real.exp_pos _).le
    _ = Real.exp (-(x / 2)) * (x + 4) ^ n / x ^ n := by
        rw [show 1 + 4 / x = (x + 4) / x by field_simp, div_pow]; ring
    _ ≤ (8 * n) ^ n / x ^ n := by gcongr
    _ = (8 * n / x) ^ n := (div_pow _ _ _).symm

/-- Blueprint `bp:p1:exp-sums`. Exponential sums over `ℤⁿ`, with `|k|₁ = modeSize k`:
(a) for `y ≥ 0`, `a > 0`, `τ ≥ 0`: `y ^ τ * exp (-a * y) ≤ (τ / (exp 1 * a)) ^ τ`;
(b) for `x > 0`: `∑_{k ∈ ℤⁿ} exp (-x |k|₁) = coth (x / 2) ^ n` (as a `HasSum`) and
`coth (x / 2) ≤ 1 + 2 / x`;
(c) for `x > 0`: `∑_{k ≠ 0} exp (-x |k|₁) ≤ (8 n / x) ^ n`.
The blueprint assumes `n ≥ 1`; the statement holds for every `n`. Steps: `step:p1:es-power` is
`rpow_mul_exp_neg_le`, `step:p1:es-product` is `hasSum_exp_neg_modeSize` with
`cosh_div_sinh_half_le`, and `step:p1:es-nonzero` is `tsum_exp_neg_modeSize_ne_zero_le`. -/
theorem exp_sums (n : ℕ) :
    (∀ y a τ : ℝ, 0 ≤ y → 0 < a → 0 ≤ τ →
      y ^ τ * Real.exp (-a * y) ≤ (τ / (Real.exp 1 * a)) ^ τ) ∧
    (∀ x : ℝ, 0 < x →
      HasSum (fun k : Fin n → ℤ => Real.exp (-x * modeSize k))
        ((Real.cosh (x / 2) / Real.sinh (x / 2)) ^ n) ∧
      Real.cosh (x / 2) / Real.sinh (x / 2) ≤ 1 + 2 / x) ∧
    (∀ x : ℝ, 0 < x →
      ∑' k : {k : Fin n → ℤ // k ≠ 0}, Real.exp (-x * modeSize k.1) ≤ (8 * n / x) ^ n) :=
  ⟨fun _ _ _ hy ha hτ => rpow_mul_exp_neg_le hy hτ ha,
    fun _ hx => ⟨hasSum_exp_neg_modeSize n hx, cosh_div_sinh_half_le hx⟩,
    fun _ hx => tsum_exp_neg_modeSize_ne_zero_le n hx⟩

end KAM.Fourier
