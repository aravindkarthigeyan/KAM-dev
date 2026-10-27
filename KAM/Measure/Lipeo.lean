/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Topology.MetricSpace.Contracting
public import Mathlib.Analysis.Normed.Group.Basic
public import Mathlib.Analysis.Normed.Group.Constructions
public import Mathlib.Analysis.Normed.Field.Basic

/-!
# Lipeomorphisms (blueprint Part 1)

Blueprint `bp:p1:lipeo-fixed` and `bp:p1:lipeo` with its steps `step:p1:lipeo-bounds`,
`step:p1:lipeo-onto` and `step:p1:lipeo-zero`.

If `G` is `lam`-Lipschitz with `lam < 1` on a complete normed group `E`, then `Ψ = id + G` is a
bijection with `(1 - lam) ‖x - y‖ ≤ ‖Ψ x - Ψ y‖ ≤ (1 + lam) ‖x - y‖`, and with `lam = 1/2` the
forward constant is `3/2` and the inverse constant `(1 - lam)⁻¹ = 2`. The blueprint's spaces
`ℝ^d` with the max norm are the case `E = Fin d → ℝ`; the same statements hold for
`E = ℝⁿ × ℝⁿ` with the max norm of the two components, which is also complete. The map `Ψ` is
written `fun x => x + G x`.
-/

@[expose] public section

open Set Function
open scoped NNReal

namespace KAM

/-- Blueprint `bp:p1:lipeo-fixed`. A bijection `Ψ` that fixes every point of `Z` maps the
complement of `Z` onto itself. -/
theorem lipeo_fixed {α : Type*} {Ψ : α → α} (hΨ : Bijective Ψ) {Z : Set α}
    (hZ : ∀ x ∈ Z, Ψ x = x) : Ψ '' Zᶜ = Zᶜ := by
  ext y
  constructor
  · rintro ⟨x, hx, rfl⟩ hΨx
    -- `Ψ (Ψ x) = Ψ x`, so injectivity gives `x = Ψ x ∈ Z`
    have h := hZ _ hΨx
    exact hx (hΨ.1 h ▸ hΨx)
  · intro hy
    obtain ⟨x, rfl⟩ := hΨ.2 y
    refine ⟨x, fun hx => hy ?_, rfl⟩
    rw [hZ x hx]
    exact hx

section Complete

variable {E : Type*} [NormedAddCommGroup E]

/-- Blueprint `step:p1:lipeo-bounds`. For a `lam`-Lipschitz `G` with `lam < 1`, the map
`x ↦ x + G x` satisfies `(1 - lam) ‖x - y‖ ≤ ‖Ψ x - Ψ y‖ ≤ (1 + lam) ‖x - y‖`; hence it is
injective and its inverse on the image is `(1 - lam)⁻¹`-Lipschitz. -/
theorem lipeo_bounds {lam : ℝ} (hlam : lam < 1) {G : E → E}
    (hG : ∀ x y, ‖G x - G y‖ ≤ lam * ‖x - y‖) :
    (∀ x y, (1 - lam) * ‖x - y‖ ≤ ‖(x + G x) - (y + G y)‖ ∧
        ‖(x + G x) - (y + G y)‖ ≤ (1 + lam) * ‖x - y‖) ∧
      Injective (fun x => x + G x) ∧
      ∀ x y, ‖x - y‖ ≤ (1 - lam)⁻¹ * ‖(x + G x) - (y + G y)‖ := by
  have hdiff : ∀ x y, (x + G x) - (y + G y) = (x - y) + (G x - G y) := fun x y => by abel
  have hbd : ∀ x y, (1 - lam) * ‖x - y‖ ≤ ‖(x + G x) - (y + G y)‖ ∧
      ‖(x + G x) - (y + G y)‖ ≤ (1 + lam) * ‖x - y‖ := by
    intro x y
    rw [hdiff]
    have h1 := hG x y
    have h2 := norm_add_le (x - y) (G x - G y)
    have h3 := norm_sub_norm_le (x - y) (-(G x - G y))
    rw [sub_neg_eq_add, norm_neg] at h3
    constructor <;> nlinarith
  have hpos : 0 < 1 - lam := sub_pos.2 hlam
  have hinv : ∀ x y, ‖x - y‖ ≤ (1 - lam)⁻¹ * ‖(x + G x) - (y + G y)‖ := by
    intro x y
    rw [← div_eq_inv_mul, le_div_iff₀ hpos, mul_comm]
    exact (hbd x y).1
  refine ⟨hbd, fun x y hxy => ?_, hinv⟩
  have h := hinv x y
  simp only at hxy
  rw [hxy, sub_self, norm_zero, mul_zero] at h
  exact sub_eq_zero.1 (norm_le_zero_iff.1 h)

variable [CompleteSpace E]

/-- Blueprint `step:p1:lipeo-onto`. For a `lam`-Lipschitz `G` with `lam < 1` on a complete space,
`x ↦ x + G x` is a bijection (Banach's fixed point theorem for `x ↦ y - G x`), and its inverse is
`(1 - lam)⁻¹`-Lipschitz. -/
theorem lipeo_onto {lam : ℝ} (hlam : lam < 1) {G : E → E}
    (hG : ∀ x y, ‖G x - G y‖ ≤ lam * ‖x - y‖) :
    Bijective (fun x => x + G x) ∧
      ∀ x y, ‖x - y‖ ≤ (1 - lam)⁻¹ * ‖(x + G x) - (y + G y)‖ := by
  obtain ⟨-, hinj, hinv⟩ := lipeo_bounds hlam hG
  refine ⟨⟨hinj, fun y => ?_⟩, hinv⟩
  -- `x ↦ y - G x` is a contraction with constant `max lam 0`
  set K : ℝ≥0 := Real.toNNReal lam with hK
  have hKlt : K < 1 := by
    rw [hK, ← NNReal.coe_lt_coe, Real.coe_toNNReal']
    exact max_lt hlam one_pos
  have hcontr : ContractingWith K (fun x => y - G x) := by
    refine ⟨hKlt, LipschitzWith.of_dist_le_mul fun x x' => ?_⟩
    rw [dist_eq_norm, dist_eq_norm, sub_sub_sub_cancel_left, ← norm_neg, neg_sub]
    calc ‖G x - G x'‖ ≤ lam * ‖x - x'‖ := hG x x'
      _ ≤ (K : ℝ) * ‖x - x'‖ := by
        gcongr
        exact Real.le_coe_toNNReal lam
  obtain ⟨x, hx⟩ : ∃ x, y - G x = x := ⟨_, hcontr.fixedPoint_isFixedPt⟩
  exact ⟨x, (sub_eq_iff_eq_add.1 hx).symm⟩

/-- Blueprint `step:p1:lipeo-zero`. If `G = 0` on `Z`, then `x ↦ x + G x` fixes `Z` pointwise and
so maps the complement of `Z` onto itself. -/
theorem lipeo_zero {lam : ℝ} (hlam : lam < 1) {G : E → E}
    (hG : ∀ x y, ‖G x - G y‖ ≤ lam * ‖x - y‖) {Z : Set E} (hGZ : ∀ x ∈ Z, G x = 0) :
    (fun x => x + G x) '' Zᶜ = Zᶜ :=
  lipeo_fixed (lipeo_onto hlam hG).1 fun x hx => by simp [hGZ x hx]

/-- Blueprint `bp:p1:lipeo`, for any complete normed group `E` (in particular `E = ℝ^d`, see
`lipeo`, and `E = ℝⁿ × ℝⁿ` with the max norm of the two components). If `G` is `lam`-Lipschitz
with `lam < 1`, then `Ψ = id + G` is a bijection with
`(1 - lam) ‖x - y‖ ≤ ‖Ψ x - Ψ y‖ ≤ (1 + lam) ‖x - y‖`; and if `G = 0` on `Z`, then `Ψ` maps the
complement of `Z` onto itself. -/
theorem lipeo_complete {lam : ℝ} (hlam : lam < 1) {G : E → E}
    (hG : ∀ x y, ‖G x - G y‖ ≤ lam * ‖x - y‖) :
    Bijective (fun x => x + G x) ∧
      (∀ x y, (1 - lam) * ‖x - y‖ ≤ ‖(x + G x) - (y + G y)‖ ∧
        ‖(x + G x) - (y + G y)‖ ≤ (1 + lam) * ‖x - y‖) ∧
      ∀ Z : Set E, (∀ x ∈ Z, G x = 0) → (fun x => x + G x) '' Zᶜ = Zᶜ :=
  ⟨(lipeo_onto hlam hG).1, (lipeo_bounds hlam hG).1, fun _ hZ => lipeo_zero hlam hG hZ⟩

/-- The case `lam = 1/2` of `bp:p1:lipeo` used in Part 4: `Ψ = id + G` is a bijection that is
`3/2`-Lipschitz with a `2`-Lipschitz inverse, and maps the complement of any zero set of `G` onto
itself. -/
theorem lipeo_half {G : E → E} (hG : ∀ x y, ‖G x - G y‖ ≤ (1 / 2 : ℝ) * ‖x - y‖) :
    Bijective (fun x => x + G x) ∧
      (∀ x y, ‖(x + G x) - (y + G y)‖ ≤ (3 / 2 : ℝ) * ‖x - y‖) ∧
      (∀ x y, ‖x - y‖ ≤ 2 * ‖(x + G x) - (y + G y)‖) ∧
      ∀ Z : Set E, (∀ x ∈ Z, G x = 0) → (fun x => x + G x) '' Zᶜ = Zᶜ := by
  obtain ⟨hbij, hbd, hZ⟩ := lipeo_complete (lam := 1 / 2) (by norm_num) hG
  refine ⟨hbij, fun x y => ?_, fun x y => ?_, hZ⟩
  · have h := (hbd x y).2
    rwa [show (1 : ℝ) + 1 / 2 = 3 / 2 by norm_num] at h
  · have h := (lipeo_onto (lam := 1 / 2) (by norm_num) hG).2 x y
    rwa [show ((1 : ℝ) - 1 / 2)⁻¹ = 2 by norm_num] at h

end Complete

/-- Blueprint `bp:p1:lipeo`. If `G : ℝ^d → ℝ^d` (max norm) is `lam`-Lipschitz with `lam < 1`,
then `Ψ = id + G` is a bijection of `ℝ^d` with
`(1 - lam) ‖x - y‖ ≤ ‖Ψ x - Ψ y‖ ≤ (1 + lam) ‖x - y‖`; and if `G = 0` on a set `Z'`, then `Ψ`
maps `ℝ^d ∖ Z'` onto itself. -/
theorem lipeo {d : ℕ} {lam : ℝ} (hlam : lam < 1) {G : (Fin d → ℝ) → (Fin d → ℝ)}
    (hG : ∀ x y, ‖G x - G y‖ ≤ lam * ‖x - y‖) :
    Bijective (fun x => x + G x) ∧
      (∀ x y, (1 - lam) * ‖x - y‖ ≤ ‖(x + G x) - (y + G y)‖ ∧
        ‖(x + G x) - (y + G y)‖ ≤ (1 + lam) * ‖x - y‖) ∧
      ∀ Z : Set (Fin d → ℝ), (∀ x ∈ Z, G x = 0) → (fun x => x + G x) '' Zᶜ = Zᶜ :=
  lipeo_complete hlam hG

end KAM
