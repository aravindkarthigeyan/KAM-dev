/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Quadratic iteration (blueprint `bp:p1:iteration`)

Let `Q > 0`, `p ≥ 0` and `y₀, y₁, … ≥ 0` with `y_{m+1} ≤ Q 2^{p m} y_m²` for every `m`.

* If `Q 2^p y₀ ≤ 1/2`, then `y_m ≤ Q⁻¹ 2^{-p(m+1)} 2^{-2^m}` for every `m`, in particular
  `y_m → 0` (step `step:p1:it-super`, via `x_m = Q 2^{p(m+1)} y_m`, which satisfies
  `x_{m+1} ≤ x_m²`).
* If only `q := Q 2^p y₀ ≤ 1`, then `y_m ≤ q^{2^m - 1} 2^{-p m} y₀` for every `m`, a bound linear in
  `y₀` (step `step:p1:it-linear`).

The real number `p` enters through real powers `(2 : ℝ) ^ (p * m)`.
-/

@[expose] public section

open Filter Topology

namespace KAM

variable {Q p : ℝ} {y : ℕ → ℝ}

/-- Blueprint `bp:p1:iteration`, step `step:p1:it-super`: `y_m ≤ Q⁻¹ 2^{-p(m+1)} 2^{-2^m}`
whenever `Q 2^p y₀ ≤ 1/2`. -/
theorem quadratic_iteration_super (hQ : 0 < Q) (hy : ∀ m, 0 ≤ y m)
    (hrec : ∀ m : ℕ, y (m + 1) ≤ Q * (2 : ℝ) ^ (p * m) * y m ^ 2)
    (h0 : Q * (2 : ℝ) ^ p * y 0 ≤ 1 / 2) (m : ℕ) :
    y m ≤ Q⁻¹ * (2 : ℝ) ^ (-(p * ((m : ℝ) + 1))) * ((2 : ℝ) ^ 2 ^ m)⁻¹ := by
  set x : ℕ → ℝ := fun m => Q * (2 : ℝ) ^ (p * ((m : ℝ) + 1)) * y m with hx
  have hx0 : ∀ m, 0 ≤ x m := fun m => by
    have := hy m
    positivity
  have hstep : ∀ m, x (m + 1) ≤ x m ^ 2 := by
    intro m
    have hpow : (2 : ℝ) ^ (p * (((m + 1 : ℕ) : ℝ) + 1)) * (2 : ℝ) ^ (p * (m : ℝ)) =
        ((2 : ℝ) ^ (p * ((m : ℝ) + 1))) ^ 2 := by
      rw [← Real.rpow_add (by norm_num), ← Real.rpow_natCast, ← Real.rpow_mul (by norm_num)]
      congr 1
      push_cast
      ring
    calc x (m + 1) = Q * (2 : ℝ) ^ (p * (((m + 1 : ℕ) : ℝ) + 1)) * y (m + 1) := rfl
      _ ≤ Q * (2 : ℝ) ^ (p * (((m + 1 : ℕ) : ℝ) + 1)) *
            (Q * (2 : ℝ) ^ (p * m) * y m ^ 2) :=
          mul_le_mul_of_nonneg_left (hrec m) (by positivity)
      _ = Q ^ 2 * ((2 : ℝ) ^ (p * (((m + 1 : ℕ) : ℝ) + 1)) * (2 : ℝ) ^ (p * (m : ℝ))) *
            y m ^ 2 := by ring
      _ = x m ^ 2 := by rw [hpow, hx]; ring
  have hx_le : ∀ m, x m ≤ (1 / 2 : ℝ) ^ 2 ^ m := by
    intro m
    induction m with
    | zero =>
      have : x 0 = Q * (2 : ℝ) ^ p * y 0 := by simp [hx]
      rw [this]; simpa using h0
    | succ m ih =>
      calc x (m + 1) ≤ x m ^ 2 := hstep m
        _ ≤ ((1 / 2 : ℝ) ^ 2 ^ m) ^ 2 := pow_le_pow_left₀ (hx0 m) ih 2
        _ = (1 / 2 : ℝ) ^ 2 ^ (m + 1) := by rw [← pow_mul, pow_succ]
  have hpos : 0 < Q * (2 : ℝ) ^ (p * ((m : ℝ) + 1)) := by positivity
  have hym : y m = (Q * (2 : ℝ) ^ (p * ((m : ℝ) + 1)))⁻¹ * x m := by
    rw [hx]; field_simp
  rw [hym]
  calc (Q * (2 : ℝ) ^ (p * ((m : ℝ) + 1)))⁻¹ * x m
      ≤ (Q * (2 : ℝ) ^ (p * ((m : ℝ) + 1)))⁻¹ * (1 / 2 : ℝ) ^ 2 ^ m :=
        mul_le_mul_of_nonneg_left (hx_le m) (inv_nonneg.mpr hpos.le)
    _ = Q⁻¹ * (2 : ℝ) ^ (-(p * ((m : ℝ) + 1))) * ((2 : ℝ) ^ 2 ^ m)⁻¹ := by
        rw [Real.rpow_neg (by norm_num), mul_inv, one_div, inv_pow]

/-- The superexponential bound tends to `0`, so `y_m → 0`. -/
theorem quadratic_iteration_tendsto (hQ : 0 < Q) (hp : 0 ≤ p) (hy : ∀ m, 0 ≤ y m)
    (hrec : ∀ m : ℕ, y (m + 1) ≤ Q * (2 : ℝ) ^ (p * m) * y m ^ 2)
    (h0 : Q * (2 : ℝ) ^ p * y 0 ≤ 1 / 2) : Tendsto y atTop (𝓝 0) := by
  have hgeo : Tendsto (fun m : ℕ => Q⁻¹ * (1 / 2 : ℝ) ^ m) atTop (𝓝 (Q⁻¹ * 0)) :=
    (tendsto_pow_atTop_nhds_zero_of_lt_one (by norm_num) (by norm_num)).const_mul _
  rw [mul_zero] at hgeo
  refine squeeze_zero hy (fun m => ?_) hgeo
  refine (quadratic_iteration_super hQ hy hrec h0 m).trans ?_
  have h1 : (2 : ℝ) ^ (-(p * ((m : ℝ) + 1))) ≤ 1 :=
    Real.rpow_le_one_of_one_le_of_nonpos (by norm_num)
      (neg_nonpos.mpr (mul_nonneg hp (by positivity)))
  have h2 : ((2 : ℝ) ^ 2 ^ m)⁻¹ ≤ (1 / 2 : ℝ) ^ m := by
    rw [← inv_pow, one_div]
    exact pow_le_pow_of_le_one (by norm_num) (by norm_num) (Nat.lt_two_pow_self).le
  calc Q⁻¹ * (2 : ℝ) ^ (-(p * ((m : ℝ) + 1))) * ((2 : ℝ) ^ 2 ^ m)⁻¹
      ≤ Q⁻¹ * 1 * (1 / 2 : ℝ) ^ m := by
        gcongr
    _ = Q⁻¹ * (1 / 2 : ℝ) ^ m := by rw [mul_one]

/-- Blueprint `bp:p1:iteration`, step `step:p1:it-linear`: if `q = Q 2^p y₀ ≤ 1`, then
`y_m ≤ q^{2^m - 1} 2^{-p m} y₀`. -/
theorem quadratic_iteration_linear (hQ : 0 < Q) (hy : ∀ m, 0 ≤ y m)
    (hrec : ∀ m : ℕ, y (m + 1) ≤ Q * (2 : ℝ) ^ (p * m) * y m ^ 2)
    (m : ℕ) :
    y m ≤ (Q * (2 : ℝ) ^ p * y 0) ^ (2 ^ m - 1) * (2 : ℝ) ^ (-(p * (m : ℝ))) * y 0 := by
  induction m with
  | zero => simp
  | succ m ih =>
    set q := Q * (2 : ℝ) ^ p * y 0 with hq
    have hy0 := hy 0
    have hq0 : 0 ≤ q := by positivity
    have hu : 0 < (2 : ℝ) ^ (p * (m : ℝ)) := by positivity
    have hc : 0 < (2 : ℝ) ^ p := by positivity
    have hsplit : (2 : ℝ) ^ (p * (((m + 1 : ℕ) : ℝ))) = (2 : ℝ) ^ (p * (m : ℝ)) * (2 : ℝ) ^ p := by
      rw [← Real.rpow_add (by norm_num)]
      congr 1
      push_cast
      ring
    have hexp : 2 ^ (m + 1) - 1 = 2 * (2 ^ m - 1) + 1 := by
      have := Nat.one_le_two_pow (n := m)
      rw [pow_succ]
      omega
    have hneg : ∀ t : ℕ, (2 : ℝ) ^ (-(p * (t : ℝ))) = ((2 : ℝ) ^ (p * (t : ℝ)))⁻¹ := fun t =>
      Real.rpow_neg (by norm_num) _
    set E := q ^ (2 ^ m - 1) with hE
    have key : q ^ (2 ^ (m + 1) - 1) = E ^ 2 * q := by
      rw [hexp, pow_succ, pow_mul', hE]
    have hE0 : 0 ≤ E := by positivity
    have hB0 : 0 ≤ E * ((2 : ℝ) ^ (p * (m : ℝ)))⁻¹ * y 0 := by positivity
    rw [hneg] at ih
    calc y (m + 1) ≤ Q * (2 : ℝ) ^ (p * m) * y m ^ 2 := hrec m
      _ ≤ Q * (2 : ℝ) ^ (p * m) * (E * ((2 : ℝ) ^ (p * (m : ℝ)))⁻¹ * y 0) ^ 2 :=
          mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (hy m) ih 2) (by positivity)
      _ = q ^ (2 ^ (m + 1) - 1) * (2 : ℝ) ^ (-(p * ((m + 1 : ℕ) : ℝ))) * y 0 := by
          rw [hneg, hsplit, key, hq]
          field_simp

/-- Blueprint `bp:p1:iteration`. Let `Q > 0`, `p ≥ 0` and `y₀, y₁, … ≥ 0` with
`y_{m+1} ≤ Q 2^{p m} y_m²` for every `m ≥ 0`.

* If `Q 2^p y₀ ≤ 1/2`, then `y_m ≤ Q⁻¹ 2^{-p(m+1)} 2^{-2^m}` for every `m`, and `y_m → 0`.
* If only `q := Q 2^p y₀ ≤ 1`, then `y_m ≤ q^{2^m - 1} 2^{-p m} y₀` for every `m`.

Steps: `step:p1:it-super` is `quadratic_iteration_super` (with `quadratic_iteration_tendsto` for
the limit) and `step:p1:it-linear` is `quadratic_iteration_linear`. -/
theorem quadratic_iteration (hQ : 0 < Q) (hp : 0 ≤ p) (hy : ∀ m, 0 ≤ y m)
    (hrec : ∀ m : ℕ, y (m + 1) ≤ Q * (2 : ℝ) ^ (p * m) * y m ^ 2) :
    (Q * (2 : ℝ) ^ p * y 0 ≤ 1 / 2 →
      (∀ m : ℕ, y m ≤ Q⁻¹ * (2 : ℝ) ^ (-(p * ((m : ℝ) + 1))) * ((2 : ℝ) ^ 2 ^ m)⁻¹) ∧
        Tendsto y atTop (𝓝 0)) ∧
    (Q * (2 : ℝ) ^ p * y 0 ≤ 1 →
      ∀ m : ℕ, y m ≤ (Q * (2 : ℝ) ^ p * y 0) ^ (2 ^ m - 1) * (2 : ℝ) ^ (-(p * (m : ℝ))) * y 0) :=
  ⟨fun h0 => ⟨quadratic_iteration_super hQ hy hrec h0,
      quadratic_iteration_tendsto hQ hp hy hrec h0⟩,
    fun _ m => quadratic_iteration_linear hQ hy hrec m⟩

end KAM
