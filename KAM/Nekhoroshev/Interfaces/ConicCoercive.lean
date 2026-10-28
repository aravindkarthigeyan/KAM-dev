/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Normed.Operator.NormedSpace
public import KAM.Nekhoroshev.Interfaces.Norms

/-!
# Conic coercivity (`bpN:p1:conic-coercive`)

Transverse coercivity of a bounded bilinear form `Q` on `ω^⊥` upgrades to coercivity on the cone
`{ξ | |ω · ξ| ≤ ℓ' |ξ|₂}`: if `|Q[x,y]| ≤ B |x|₂ |y|₂`, `q |v|₂² ≤ Q[v,v]` whenever `ω · v = 0`, and
`0 ≤ ℓ' ≤ |ω|₂ q / (8 (B + q))`, then `|ω · ξ| ≤ ℓ' |ξ|₂` implies `5q/8 |ξ|₂² ≤ Q[ξ,ξ]`.

The proof splits `ξ = u + w` with `w = t ω` the component along `ω` and `u ⟂ ω`, so that
`|ξ|₂² = |u|₂² + |w|₂²`, and expands `Q[ξ,ξ]`; the numerics are the named inequalities
`(q + B) κ = q / 8` and `B κ ≤ q / 8` for `κ = q / (8 (B + q))`.
-/

public section

namespace KAM.Nekhoroshev

variable {n : ℕ}

private theorem euclid_nonneg' (x : Fin n → ℝ) : 0 ≤ euclid x := Real.sqrt_nonneg _

private theorem euclid_sq' (x : Fin n → ℝ) : euclid x ^ 2 = ∑ i, x i ^ 2 := by
  unfold euclid
  rw [Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)]
  simp only [Real.norm_eq_abs, sq_abs]

private theorem euclid_smul' (t : ℝ) (x : Fin n → ℝ) : euclid (t • x) = |t| * euclid x := by
  have h : ∑ i, ‖(t • x) i‖ ^ 2 = t ^ 2 * ∑ i, ‖x i‖ ^ 2 := by
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    simp only [Pi.smul_apply, smul_eq_mul, Real.norm_eq_abs, mul_pow, sq_abs]
  unfold euclid
  rw [h, Real.sqrt_mul (sq_nonneg t), Real.sqrt_sq_eq_abs]

/-- Pythagoras for orthogonal coordinate vectors. -/
private theorem euclid_add_sq_of_orth (u w : Fin n → ℝ) (h : ∑ i, u i * w i = 0) :
    euclid (u + w) ^ 2 = euclid u ^ 2 + euclid w ^ 2 := by
  rw [euclid_sq', euclid_sq', euclid_sq']
  have : ∀ i, (u + w) i ^ 2 = u i ^ 2 + 2 * (u i * w i) + w i ^ 2 := fun i => by
    simp only [Pi.add_apply]; ring
  simp only [this, Finset.sum_add_distrib, ← Finset.mul_sum, h]
  ring

private theorem euclid_pos_of_ne_zero {fr : Fin n → ℝ} (hfr : fr ≠ 0) : 0 < euclid fr := by
  obtain ⟨i, hi⟩ := Function.ne_iff.1 hfr
  unfold euclid
  refine Real.sqrt_pos.2 (Finset.sum_pos' (fun j _ => by positivity) ⟨i, Finset.mem_univ i, ?_⟩)
  have : 0 < ‖fr i‖ := norm_pos_iff.2 hi
  positivity

/-- The numerics of `bpN:p1:cc-num`, with `κ = q / (8 (B + q))`: `(q + B) κ = q / 8`,
`κ ≤ 1` and `B κ ≤ q / 8`. -/
private theorem conic_numerics {B q : ℝ} (hB : 0 < B) (hq : 0 < q) :
    (q + B) * (q / (8 * (B + q))) = q / 8 ∧ q / (8 * (B + q)) ≤ 1 ∧
      B * (q / (8 * (B + q))) ≤ q / 8 := by
  have hBq : 0 < B + q := add_pos hB hq
  have hκ0 : 0 ≤ q / (8 * (B + q)) := by positivity
  have h1 : (q + B) * (q / (8 * (B + q))) = q / 8 := by
    field_simp
    ring
  have h2 : q / (8 * (B + q)) ≤ 1 := by
    rw [div_le_one (by positivity)]
    linarith
  refine ⟨h1, h2, ?_⟩
  have : q * (q / (8 * (B + q))) ≥ 0 := by positivity
  linarith

/-- `bpN:p1:conic-coercive` (linear algebra core; `n ≥ 1`, `B, q > 0`, `Q` bilinear). -/
theorem conic_coercive (hn : 1 ≤ n) {B q : ℝ} (hB : 0 < B) (hq : 0 < q)
    (Q : (Fin n → ℝ) →L[ℝ] (Fin n → ℝ) →L[ℝ] ℝ) (hQ : ∀ x y, |Q x y| ≤ B * euclid x * euclid y)
    {fr : Fin n → ℝ} (hfr : fr ≠ 0) (hcoer : ∀ v, ∑ i, fr i * v i = 0 → q * euclid v ^ 2 ≤ Q v v)
    {ℓ' : ℝ} (hℓ0 : 0 ≤ ℓ') (hℓ : ℓ' ≤ euclid fr * q / (8 * (B + q))) :
    ∀ ξ, |∑ i, fr i * ξ i| ≤ ℓ' * euclid ξ → 5 / 8 * q * euclid ξ ^ 2 ≤ Q ξ ξ := by
  have _ := hn
  have _ := hℓ0
  intro ξ hξ
  obtain ⟨hκq, hκ1, hBκ⟩ := conic_numerics hB hq
  have hF : 0 < euclid fr := euclid_pos_of_ne_zero hfr
  have hFsq : ∑ i, fr i * fr i = euclid fr ^ 2 := by
    rw [euclid_sq']
    exact Finset.sum_congr rfl fun i _ => (sq (fr i)).symm
  -- the component of `ξ` along `fr`
  set κ : ℝ := q / (8 * (B + q)) with hκdef
  have hκ0 : 0 ≤ κ := by positivity
  set s : ℝ := ∑ i, fr i * ξ i with hsdef
  set t : ℝ := s / euclid fr ^ 2 with htdef
  set w : Fin n → ℝ := t • fr with hwdef
  set u : Fin n → ℝ := ξ - w with hudef
  have hξuw : ξ = u + w := by simp [hudef]
  have hfrw : ∑ i, fr i * w i = s := by
    have : ∑ i, fr i * w i = t * euclid fr ^ 2 := by
      rw [← hFsq, Finset.mul_sum]
      exact Finset.sum_congr rfl fun i _ => by simp only [hwdef, Pi.smul_apply, smul_eq_mul]; ring
    rw [this, htdef]
    field_simp
  have hfru : ∑ i, fr i * u i = 0 := by
    have : ∑ i, fr i * u i = s - ∑ i, fr i * w i := by
      rw [hsdef, ← Finset.sum_sub_distrib]
      exact Finset.sum_congr rfl fun i _ => by simp only [hudef, Pi.sub_apply]; ring
    rw [this, hfrw]
    ring
  have huw : ∑ i, u i * w i = 0 := by
    have : ∑ i, u i * w i = t * ∑ i, fr i * u i := by
      rw [Finset.mul_sum]
      exact Finset.sum_congr rfl fun i _ => by simp only [hwdef, Pi.smul_apply, smul_eq_mul]; ring
    rw [this, hfru, mul_zero]
  -- sizes
  set N : ℝ := euclid ξ with hNdef
  set a : ℝ := euclid u with hadef
  set τ : ℝ := euclid w with hτdef
  have ha0 : 0 ≤ a := euclid_nonneg' u
  have hτ0 : 0 ≤ τ := euclid_nonneg' w
  have hN0 : 0 ≤ N := euclid_nonneg' ξ
  have hNsq : N ^ 2 = a ^ 2 + τ ^ 2 := by
    rw [hNdef, hξuw]
    exact euclid_add_sq_of_orth u w huw
  have haN : a ≤ N := by
    refine (pow_le_pow_iff_left₀ ha0 hN0 (two_ne_zero)).1 ?_
    rw [hNsq]
    exact le_add_of_nonneg_right (sq_nonneg τ)
  have hτF : τ * euclid fr = |s| := by
    have h1 : τ = |t| * euclid fr := by rw [hτdef, hwdef, euclid_smul']
    rw [h1, htdef, abs_div, abs_of_nonneg (sq_nonneg (euclid fr))]
    field_simp
  have hτκ : τ ≤ κ * N := by
    have h2 : τ * euclid fr ≤ euclid fr * (κ * N) := by
      rw [hτF]
      calc |s| ≤ ℓ' * N := hξ
        _ ≤ euclid fr * q / (8 * (B + q)) * N := mul_le_mul_of_nonneg_right hℓ hN0
        _ = euclid fr * (κ * N) := by rw [hκdef]; ring
    rw [mul_comm (euclid fr)] at h2
    exact le_of_mul_le_mul_right h2 hF
  have hτN : τ ≤ N := hτκ.trans (mul_le_of_le_one_left hN0 hκ1)
  -- expansion of `Q ξ ξ`
  have hexp : Q ξ ξ = Q u u + Q u w + Q w u + Q w w := by
    rw [hξuw]
    simp only [map_add, add_apply]
    ring
  have hQuu : q * a ^ 2 ≤ Q u u := hcoer u hfru
  have hQuw : -(B * a * τ) ≤ Q u w := (abs_le.1 (hQ u w)).1
  have hQwu : -(B * τ * a) ≤ Q w u := (abs_le.1 (hQ w u)).1
  have hQww : -(B * τ * τ) ≤ Q w w := (abs_le.1 (hQ w w)).1
  have hlow : q * a ^ 2 - B * a * τ - B * τ * a - B * τ * τ ≤ Q ξ ξ := by
    rw [hexp]; linarith
  -- numerics
  have hA : (q + B) * τ ≤ q / 8 * N := by
    calc (q + B) * τ ≤ (q + B) * (κ * N) := mul_le_mul_of_nonneg_left hτκ (by positivity)
      _ = ((q + B) * κ) * N := by ring
      _ = q / 8 * N := by rw [hκq]
  have hB' : (q + B) * τ ^ 2 ≤ q / 8 * N ^ 2 := by
    calc (q + B) * τ ^ 2 = ((q + B) * τ) * τ := by ring
      _ ≤ (q / 8 * N) * N :=
          mul_le_mul hA hτN hτ0 (by positivity)
      _ = q / 8 * N ^ 2 := by ring
  have hC : B * a * τ ≤ q / 8 * N ^ 2 := by
    calc B * a * τ ≤ B * N * (κ * N) := by
          refine mul_le_mul (mul_le_mul_of_nonneg_left haN hB.le) hτκ hτ0 (by positivity)
      _ = (B * κ) * N ^ 2 := by ring
      _ ≤ q / 8 * N ^ 2 := mul_le_mul_of_nonneg_right hBκ (sq_nonneg N)
  have hfin : q * a ^ 2 = q * N ^ 2 - q * τ ^ 2 := by rw [hNsq]; ring
  calc 5 / 8 * q * N ^ 2 = q * N ^ 2 - q / 8 * N ^ 2 - q / 4 * N ^ 2 := by ring
    _ ≤ q * a ^ 2 - B * a * τ - B * τ * a - B * τ * τ := by
        have e1 : B * τ * a = B * a * τ := by ring
        have e2 : B * τ * τ = B * τ ^ 2 := by ring
        linarith [hfin, hB', hC]
    _ ≤ Q ξ ξ := hlow

end KAM.Nekhoroshev
