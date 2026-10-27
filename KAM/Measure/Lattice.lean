/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Algebra.BigOperators.Fin
public import Mathlib.Algebra.Order.BigOperators.Group.Finset
public import Mathlib.Algebra.Order.Group.Abs
public import Mathlib.Data.Fintype.BigOperators
public import Mathlib.Data.Int.Interval
public import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
public import Mathlib.Analysis.SumIntegralComparisons
public import Mathlib.Data.Set.Card
public import Mathlib.Topology.Algebra.InfiniteSum.Real
public import Mathlib.Order.Interval.Finset.Fin
public import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Counting lattice points on `ℓ¹` spheres

Blueprint `bp:p4:lattice-count`: for `n, m ≥ 1`, the sphere `{k ∈ ℤⁿ : |k|₁ = m}` has at most
`2 (2m+1)^(n-1) ≤ 2 · 3^(n-1) m^(n-1)` points. The proof projects to the first `n - 1`
coordinates (`step:p4:count-projection`).

Blueprint `bp:p4:lattice-sum`: for `n ≥ 1` and `τ > n - 1`,
`∑_{k ∈ ℤⁿ ∖ {0}} |k|₁^(-τ-1) ≤ S(n, τ) := 2 · 3^(n-1) (τ+2-n)/(τ+1-n)`. The proof sums by
shells (`step:p4:latsum-shells`) and compares with an integral (`step:p4:latsum-integral`).
-/

@[expose] public section

open Finset

namespace KAM.Measure

/-- The lattice points of `ℤⁿ` with `ℓ¹` norm `m`, as a finset (a subset of the box
`{-m, …, m}ⁿ`). -/
def l1Sphere (n m : ℕ) : Finset (Fin n → ℤ) :=
  (Fintype.piFinset fun _ : Fin n => Finset.Icc (-(m : ℤ)) m).filter fun k => ∑ i, |k i| = m

theorem mem_l1Sphere {n m : ℕ} {k : Fin n → ℤ} : k ∈ l1Sphere n m ↔ ∑ i, |k i| = (m : ℤ) := by
  unfold l1Sphere
  rw [Finset.mem_filter, Fintype.mem_piFinset]
  refine ⟨fun h => h.2, fun h => ⟨fun i => ?_, h⟩⟩
  have hi : |k i| ≤ ∑ j, |k j| :=
    Finset.single_le_sum (f := fun j => |k j|) (fun j _ => abs_nonneg _) (Finset.mem_univ i)
  rw [Finset.mem_Icc, ← abs_le]
  exact hi.trans h.le

/-- The fibre of the projection `Fin.init` on the sphere has at most two points. -/
theorem card_fibre_le_two {n m : ℕ} (a : Fin n → ℤ) :
    ((l1Sphere (n + 1) m).filter fun k => Fin.init k = a).card ≤ 2 := by
  set t : ℤ := (m : ℤ) - ∑ j, |a j| with ht
  have hmaps : ∀ k ∈ (l1Sphere (n + 1) m).filter (fun k => Fin.init k = a),
      k (Fin.last n) ∈ ({t, -t} : Finset ℤ) := by
    intro k hk
    rw [Finset.mem_filter, mem_l1Sphere] at hk
    obtain ⟨hs, hka⟩ := hk
    rw [Fin.sum_univ_castSucc] at hs
    have hinit : ∀ j : Fin n, k (Fin.castSucc j) = a j := fun j => by
      rw [← hka]; rfl
    simp only [hinit] at hs
    have : |k (Fin.last n)| = t := by rw [ht]; linarith
    rcases abs_cases (k (Fin.last n)) with ⟨h1, _⟩ | ⟨h1, _⟩
    · simp [Finset.mem_insert, ← this, h1]
    · simp [Finset.mem_insert, ← this, h1]
  have hinj : Set.InjOn (fun k : Fin (n + 1) → ℤ => k (Fin.last n))
      ↑((l1Sphere (n + 1) m).filter fun k => Fin.init k = a) := by
    intro k hk k' hk' h
    rw [Finset.mem_coe, Finset.mem_filter] at hk hk'
    rw [← Fin.snoc_init_self k, ← Fin.snoc_init_self k', hk.2, hk'.2]
    simp only at h
    rw [h]
  exact (Finset.card_le_card_of_injOn _ hmaps hinj).trans (Finset.card_le_two)

/-- Counting the `ℓ¹` sphere in `ℤ^(n+1)` (`step:p4:count-projection`). -/
theorem card_l1Sphere_succ_le (n m : ℕ) :
    (l1Sphere (n + 1) m).card ≤ 2 * (2 * m + 1) ^ n := by
  have himg : (l1Sphere (n + 1) m).image Fin.init ⊆
      Fintype.piFinset fun _ : Fin n => Finset.Icc (-(m : ℤ)) m := by
    intro a ha
    rw [Finset.mem_image] at ha
    obtain ⟨k, hk, rfl⟩ := ha
    have hk' := hk
    rw [l1Sphere, Finset.mem_filter, Fintype.mem_piFinset] at hk'
    rw [Fintype.mem_piFinset]
    intro j
    exact hk'.1 (Fin.castSucc j)
  have hcard : (Fintype.piFinset fun _ : Fin n => Finset.Icc (-(m : ℤ)) m).card =
      (2 * m + 1) ^ n := by
    rw [Fintype.card_piFinset]
    simp only [Int.card_Icc]
    rw [Finset.prod_const, Finset.card_univ, Fintype.card_fin]
    congr 1
    omega
  calc (l1Sphere (n + 1) m).card
      ≤ 2 * ((l1Sphere (n + 1) m).image Fin.init).card :=
        Finset.card_le_mul_card_image _ 2 fun a _ => card_fibre_le_two a
    _ ≤ 2 * (2 * m + 1) ^ n := by
        gcongr
        exact (Finset.card_le_card himg).trans hcard.le

/-- Blueprint `bp:p4:lattice-count`. For integers `n, m ≥ 1`,
`#{k ∈ ℤⁿ : |k|₁ = m} ≤ 2 (2m+1)^(n-1) ≤ 2 · 3^(n-1) m^(n-1)`. -/
theorem lattice_count {n m : ℕ} (hn : 1 ≤ n) (hm : 1 ≤ m) :
    Set.ncard {k : Fin n → ℤ | ∑ i, |k i| = (m : ℤ)} ≤ 2 * (2 * m + 1) ^ (n - 1) ∧
      2 * (2 * m + 1) ^ (n - 1) ≤ 2 * 3 ^ (n - 1) * m ^ (n - 1) := by
  obtain ⟨n, rfl⟩ : ∃ n', n = n' + 1 := ⟨n - 1, by omega⟩
  refine ⟨?_, ?_⟩
  · have : {k : Fin (n + 1) → ℤ | ∑ i, |k i| = (m : ℤ)} = ↑(l1Sphere (n + 1) m) := by
      ext k; simp [mem_l1Sphere]
    rw [this, Set.ncard_coe_finset]
    simpa using card_l1Sphere_succ_le n m
  · have h3 : 2 * m + 1 ≤ 3 * m := by omega
    calc 2 * (2 * m + 1) ^ (n + 1 - 1) ≤ 2 * (3 * m) ^ (n + 1 - 1) := by gcongr
      _ = 2 * 3 ^ (n + 1 - 1) * m ^ (n + 1 - 1) := by rw [mul_pow]; ring

/-- The finset form of `lattice_count`: the `ℓ¹` sphere of radius `m ≥ 1` in `ℤⁿ` has at most
`2 · 3^(n-1) m^(n-1)` points. -/
theorem card_l1Sphere_le {n m : ℕ} (hn : 1 ≤ n) (hm : 1 ≤ m) :
    (l1Sphere n m).card ≤ 2 * 3 ^ (n - 1) * m ^ (n - 1) := by
  have h := lattice_count hn hm
  have hset : {k : Fin n → ℤ | ∑ i, |k i| = (m : ℤ)} = ↑(l1Sphere n m) := by
    ext k; simp [mem_l1Sphere]
  rw [hset, Set.ncard_coe_finset] at h
  exact h.1.trans h.2

/-- Blueprint `step:p4:latsum-integral`. For `p > 1`, `∑_{m ≥ 1} m^(-p) ≤ p/(p-1)` (stated for
every partial sum; the `m = 0` term vanishes because `0 ^ (-p) = 0`). -/
theorem sum_range_rpow_neg_le {p : ℝ} (hp : 1 < p) (M : ℕ) :
    ∑ m ∈ Finset.range (M + 1), (m : ℝ) ^ (-p) ≤ p / (p - 1) := by
  have hp0 : 0 < p := by linarith
  have hp1 : 0 < p - 1 := by linarith
  have hz : (0 : ℝ) ^ (-p) = 0 := Real.zero_rpow (neg_ne_zero.mpr hp0.ne')
  cases M with
  | zero =>
    simp only [zero_add, Finset.range_one, Finset.sum_singleton, Nat.cast_zero, hz]
    exact div_nonneg hp0.le hp1.le
  | succ M =>
    rw [Finset.sum_range_succ', Finset.sum_range_succ']
    simp only [Nat.cast_zero, hz, add_zero, zero_add, Nat.cast_one, Real.one_rpow]
    have hanti : AntitoneOn (fun x : ℝ => x ^ (-p)) (Set.Icc (1 : ℝ) (1 + M)) := by
      intro x hx y hy hxy
      exact Real.rpow_le_rpow_of_nonpos (by linarith [hx.1]) hxy (by linarith)
    have hsum := hanti.sum_le_integral
    have hint : ∫ x in (1 : ℝ)..(1 + M), x ^ (-p) =
        ((1 + (M : ℝ)) ^ (-p + 1) - 1 ^ (-p + 1)) / (-p + 1) := by
      apply integral_rpow
      right
      refine ⟨by linarith, ?_⟩
      rw [Set.uIcc_of_le (by linarith [(Nat.cast_nonneg M : (0 : ℝ) ≤ M)])]
      intro h
      linarith [h.1]
    have hle : ((1 + (M : ℝ)) ^ (-p + 1) - 1 ^ (-p + 1)) / (-p + 1) ≤ 1 / (p - 1) := by
      have hpos : 0 ≤ (1 + (M : ℝ)) ^ (-p + 1) :=
        Real.rpow_nonneg (by linarith [(Nat.cast_nonneg M : (0 : ℝ) ≤ M)]) _
      have key : ∀ a : ℝ, (a - 1) / (-p + 1) = (1 - a) / (p - 1) := fun a => by
        rw [show -p + 1 = -(p - 1) by ring, div_neg, ← neg_div, neg_sub]
      rw [Real.one_rpow, key]
      gcongr
      linarith
    have hshift : ∑ i ∈ Finset.range M, ((i + 1 + 1 : ℕ) : ℝ) ^ (-p) =
        ∑ i ∈ Finset.range M, (1 + ((i + 1 : ℕ) : ℝ)) ^ (-p) := by
      refine Finset.sum_congr rfl fun i _ => ?_
      push_cast; ring_nf
    rw [hshift]
    have : p / (p - 1) = 1 + 1 / (p - 1) := by field_simp; ring
    rw [this]
    linarith

/-- On the sphere of radius `m ≥ 1`, the sum of `|k|₁^(-τ-1)` is at most `2 · 3^(n-1) m^(-p)`
with `p = τ + 2 - n`; here the sum runs over any subset of the sphere. -/
theorem sum_sphere_le {n : ℕ} (hn : 1 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 < τ) (m : ℕ)
    (F : Finset (Fin n → ℤ)) (hF : ∀ k ∈ F, ∑ i, |k i| = (m : ℤ)) :
    ∑ k ∈ F, (∑ i, |(k i : ℝ)|) ^ (-τ - 1) ≤
      2 * 3 ^ (n - 1) * (m : ℝ) ^ (-(τ + 2 - n)) := by
  have hn' : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hexp : -τ - 1 ≠ 0 := by intro h; linarith
  have hcast : ∀ k ∈ F, (∑ i, |(k i : ℝ)|) = (m : ℝ) := fun k hk => by
    have := congrArg (fun z : ℤ => (z : ℝ)) (hF k hk)
    simpa using this
  rw [Finset.sum_congr rfl fun k hk => by rw [hcast k hk], Finset.sum_const, nsmul_eq_mul]
  rcases Nat.eq_zero_or_pos m with rfl | hm
  · simp only [Nat.cast_zero, Real.zero_rpow hexp, mul_zero]
    positivity
  have hsub : F ⊆ l1Sphere n m := fun k hk => mem_l1Sphere.mpr (hF k hk)
  have hcard : (F.card : ℝ) ≤ 2 * 3 ^ (n - 1) * (m : ℝ) ^ (n - 1) := by
    have h1 : F.card ≤ (l1Sphere n m).card := Finset.card_le_card hsub
    exact_mod_cast h1.trans (card_l1Sphere_le hn hm)
  have hmpos : (0 : ℝ) < m := by exact_mod_cast hm
  calc (F.card : ℝ) * (m : ℝ) ^ (-τ - 1)
      ≤ 2 * 3 ^ (n - 1) * (m : ℝ) ^ (n - 1) * (m : ℝ) ^ (-τ - 1) := by
        gcongr
    _ = 2 * 3 ^ (n - 1) * (m : ℝ) ^ (-(τ + 2 - n)) := by
        rw [mul_assoc, ← Real.rpow_natCast (m : ℝ) (n - 1), ← Real.rpow_add hmpos]
        congr 2
        rw [Nat.cast_sub hn]
        push_cast
        ring

/-- Blueprint `step:p4:latsum-shells`, for finite sets of lattice points: the sum of
`|k|₁^(-τ-1)` over a finite subset of `ℤⁿ` is at most `S(n, τ)`. -/
theorem sum_finset_le {n : ℕ} (hn : 1 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 < τ)
    (F : Finset (Fin n → ℤ)) :
    ∑ k ∈ F, (∑ i, |(k i : ℝ)|) ^ (-τ - 1) ≤
      2 * 3 ^ (n - 1) * ((τ + 2 - n) / (τ + 1 - n)) := by
  have hn' : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hp : 1 < τ + 2 - n := by linarith
  set g : (Fin n → ℤ) → ℕ := fun k => (∑ i, |k i|).toNat with hg
  set M : ℕ := F.sup g with hM
  have hmaps : ∀ k ∈ F, g k ∈ Finset.range (M + 1) := fun k hk =>
    Finset.mem_range.mpr (Nat.lt_succ_of_le (Finset.le_sup (f := g) hk))
  rw [← Finset.sum_fiberwise_of_maps_to hmaps]
  have hfib : ∀ m ∈ Finset.range (M + 1),
      ∑ k ∈ F with g k = m, (∑ i, |(k i : ℝ)|) ^ (-τ - 1) ≤
        2 * 3 ^ (n - 1) * (m : ℝ) ^ (-(τ + 2 - n)) := fun m _ => by
    refine sum_sphere_le hn hτ m _ fun k hk => ?_
    have hk' := (Finset.mem_filter.mp hk).2
    have h0 : 0 ≤ ∑ i, |k i| := Finset.sum_nonneg fun i _ => abs_nonneg _
    simp only [hg] at hk'
    omega
  refine (Finset.sum_le_sum hfib).trans ?_
  rw [← Finset.mul_sum]
  have := sum_range_rpow_neg_le hp M
  have h2 : τ + 2 - n - 1 = τ + 1 - n := by ring
  rw [h2] at this
  calc 2 * 3 ^ (n - 1) * ∑ m ∈ Finset.range (M + 1), (m : ℝ) ^ (-(τ + 2 - n))
      ≤ 2 * 3 ^ (n - 1) * ((τ + 2 - n) / (τ + 1 - n)) := by gcongr

/-- Blueprint `bp:p4:lattice-sum`. For `n ≥ 1` and `τ > n - 1`, the series
`∑_{k ∈ ℤⁿ ∖ {0}} |k|₁^(-τ-1)` converges and its sum is at most
`S(n, τ) = 2 · 3^(n-1) (τ + 2 - n)/(τ + 1 - n)`. -/
theorem lattice_sum {n : ℕ} (hn : 1 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 < τ) :
    Summable (fun k : {k : Fin n → ℤ // k ≠ 0} => (∑ i, |((k : Fin n → ℤ) i : ℝ)|) ^ (-τ - 1)) ∧
      ∑' k : {k : Fin n → ℤ // k ≠ 0}, (∑ i, |((k : Fin n → ℤ) i : ℝ)|) ^ (-τ - 1) ≤
        2 * 3 ^ (n - 1) * ((τ + 2 - n) / (τ + 1 - n)) := by
  have hn' : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hexp : -τ - 1 ≠ 0 := by intro h; linarith
  set f : (Fin n → ℤ) → ℝ := fun k => (∑ i, |(k i : ℝ)|) ^ (-τ - 1) with hf
  have hnonneg : ∀ k, 0 ≤ f k := fun k =>
    Real.rpow_nonneg (Finset.sum_nonneg fun i _ => abs_nonneg _) _
  have hsum : Summable f := summable_of_sum_le hnonneg (sum_finset_le hn hτ)
  have hsupp : Function.support f ⊆ {k : Fin n → ℤ | k ≠ 0} := by
    intro k hk
    simp only [Function.mem_support, hf] at hk
    show k ≠ 0
    rintro rfl
    simp [Real.zero_rpow hexp] at hk
  refine ⟨hsum.subtype {k : Fin n → ℤ | k ≠ 0}, ?_⟩
  have heq := tsum_subtype_eq_of_support_subset (f := f) hsupp
  exact (le_of_eq heq).trans (hsum.tsum_le_of_sum_le (sum_finset_le hn hτ))

end KAM.Measure

end
