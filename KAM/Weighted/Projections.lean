/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Weighted.Coefficients
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Linarith

/-!
# Projections and truncation (`bpN:p4:projections`)

For scalar `u` of the class `O(r,s)` and a set `S` of modes: `P_S u = ∑_{k ∈ S} û_k χ_k`
(`projMode`), `T_K u = P_{|k|₁ ≤ K} u` (`truncate`) and the average `⟨u⟩ = û₀` (`modeAverage`).

* `projections`: `P_S u` and `⟨u⟩` stay in the class with norm `≤ M`, and `P_S u` has the
  coefficients `1_S û_k`;
* `truncation_tail`: `u - T_K u = P_{|k|₁ > K} u` and `|u - T_K u|_{r,s-σ} ≤ e^{-2πKσ} |u|_{r,s}`.
-/

@[expose] public noncomputable section

open Set

namespace KAM.Weighted

variable {n m : ℕ}

/-- `P_S u = ∑_{k ∈ S} û_k χ_k`. -/
def projMode (S : Set (Fin n → ℤ)) (u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ) :
    (Fin n → ℂ) × (Fin m → ℂ) → ℂ :=
  fun z => ∑' k, S.indicator (fun k => coeff u z.2 k * KAM.character k z.1) k

/-- `T_K u = P_{|k|₁ ≤ K} u`. -/
def truncate (K : ℝ) (u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ) : (Fin n → ℂ) × (Fin m → ℂ) → ℂ :=
  projMode {k | KAM.Fourier.modeSize k ≤ K} u

/-- The average `⟨u⟩(I) = û₀(I)` as a `θ`-independent function. -/
def modeAverage (u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ) : (Fin n → ℂ) × (Fin m → ℂ) → ℂ :=
  fun z => coeff u z.2 0

/-- `P_S u` is the Fourier series with coefficients `1_S û_k`. -/
theorem projMode_eq_fourierSeries (S : Set (Fin n → ℤ)) (u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ) :
    projMode S u = fourierSeries (fun k I => S.indicator (coeff u I) k) := by
  funext z
  unfold projMode fourierSeries
  refine tsum_congr fun k => ?_
  by_cases hk : k ∈ S <;> simp [hk]

/-- The average is the projection onto the zero mode. -/
theorem modeAverage_eq_projMode (u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ) :
    modeAverage u = projMode {0} u := by
  funext z
  unfold modeAverage projMode
  rw [tsum_eq_single 0]
  · simp [KAM.character_zero]
  · intro k hk
    simp [hk]

theorem projections {D : Set (Fin m → ℂ)} {r s M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ}
    (hs : 0 < s) (hu : InClass D r s u) (hb : WBound D r s u M) (S : Set (Fin n → ℤ)) :
    InClass D r s (projMode S u) ∧
    (∀ I ∈ polyNbhd D r, ∀ k, coeff (projMode S u) I k = S.indicator (coeff u I) k) ∧
    WBound D r s (projMode S u) M ∧
    InClass D r s (modeAverage u) ∧ WBound D r s (modeAverage u) M := by
  have key : ∀ S : Set (Fin n → ℤ),
      InClass D r s (projMode S u) ∧
      (∀ I ∈ polyNbhd D r, ∀ k, coeff (projMode S u) I k = S.indicator (coeff u I) k) ∧
      WBound D r s (projMode S u) M := by
    intro S
    rw [projMode_eq_fourierSeries]
    have ha : ∀ k, DifferentiableOn ℂ (fun I => S.indicator (coeff u I) k) (polyNbhd D r) := by
      intro k
      by_cases hk : k ∈ S
      · simpa [hk] using coeff_differentiableOn hs hu k
      · simp [hk]
    have hle : ∀ I ∈ polyNbhd D r, ∀ k,
        ‖S.indicator (coeff u I) k‖ * modeWeight s k ≤ ‖coeff u I k‖ * modeWeight s k := by
      intro I _ k
      by_cases hk : k ∈ S
      · simp [hk]
      · simp [hk, modeWeight]; positivity
    have hS : ∀ I ∈ polyNbhd D r,
        Summable (fun k => ‖S.indicator (coeff u I) k‖ * modeWeight s k) ∧
          ∑' k, ‖S.indicator (coeff u I) k‖ * modeWeight s k ≤ M := by
      intro I hI
      obtain ⟨h1, h2⟩ := hb I hI
      have hs' : Summable (fun k => ‖S.indicator (coeff u I) k‖ * modeWeight s k) :=
        Summable.of_nonneg_of_le
          (fun k => mul_nonneg (norm_nonneg _) (Real.exp_pos _).le) (hle I hI) h1
      exact ⟨hs', (hs'.tsum_le_tsum (hle I hI) h1).trans h2⟩
    obtain ⟨-, h1, h2, h3⟩ := coefficients_series (D := D) (r := r) (s := s) (S := M) hs ha hS
    exact ⟨h1, h2, h3⟩
  obtain ⟨a1, a2, a3⟩ := key S
  obtain ⟨b1, -, b3⟩ := key {0}
  rw [modeAverage_eq_projMode]
  exact ⟨a1, a2, a3, b1, b3⟩

/-- The coefficients of a function depend only on its values at real angles. -/
private theorem coeff_congr {D : Set (Fin m → ℂ)} {r s : ℝ} (hs : 0 < s)
    {v w : (Fin n → ℂ) × (Fin m → ℂ) → ℂ} (h : ∀ z ∈ Dom n D r s, v z = w z)
    {I : Fin m → ℂ} (hI : I ∈ polyNbhd D r) (k : Fin n → ℤ) : coeff v I k = coeff w I k := by
  unfold coeff
  congr 1
  funext x
  exact h _ ⟨KAM.ofReal_mem_complexStrip hs x, hI⟩

/-- `u - T_K u = P_{|k|₁ > K} u` and `|u - T_K u|_{r,s-σ} ≤ e^{-2πKσ} |u|_{r,s}`. -/
theorem truncation_tail {D : Set (Fin m → ℂ)} {r s σ K M : ℝ} {u : (Fin n → ℂ) × (Fin m → ℂ) → ℂ}
    (hu : InClass D r s u) (hb : WBound D r s u M) (hσ : 0 < σ) (hσs : σ < s) (hK : 0 ≤ K) :
    (∀ z ∈ Dom n D r s, u z - truncate K u z = projMode {k | K < KAM.Fourier.modeSize k} u z) ∧
    WBound D r (s - σ) (fun z => u z - truncate K u z) (Real.exp (-(2 * Real.pi * K * σ)) * M) := by
  have _ := hK
  have hs : 0 < s := hσ.trans hσs
  set T : Set (Fin n → ℤ) := {k | K < KAM.Fourier.modeSize k} with hT
  have hTc : {k | KAM.Fourier.modeSize k ≤ K} = Tᶜ := by
    ext k; simp [hT, not_lt]
  have hid : ∀ z ∈ Dom n D r s, u z - truncate K u z = projMode T u z := by
    intro z hz
    have hrep := (coefficients_repr hs hu hb).1 z hz
    have hsm : Summable (fun k => coeff u z.2 k * KAM.character k z.1) := by
      simpa [smul_eq_mul, mul_comm] using hrep.summable
    have hu' : u z = ∑' k, coeff u z.2 k * KAM.character k z.1 := by
      simpa [smul_eq_mul, mul_comm] using hrep.tsum_eq.symm
    unfold truncate projMode
    rw [hTc, hu']
    have := Summable.tsum_add (hsm.indicator Tᶜ) (hsm.indicator T)
    have e : ∀ k, Tᶜ.indicator (fun k => coeff u z.2 k * KAM.character k z.1) k +
        T.indicator (fun k => coeff u z.2 k * KAM.character k z.1) k =
        coeff u z.2 k * KAM.character k z.1 := fun k => by
      rw [add_comm]
      exact congrFun (Set.indicator_self_add_compl T
        (fun k => coeff u z.2 k * KAM.character k z.1)) k
    simp only [e] at this
    rw [this]
    ring
  refine ⟨hid, ?_⟩
  obtain ⟨-, hcoef, -⟩ := projections hs hu hb T
  have hc : ∀ I ∈ polyNbhd D r, ∀ k,
      coeff (fun z => u z - truncate K u z) I k = T.indicator (coeff u I) k := fun I hI k =>
    (coeff_congr hs hid hI k).trans (hcoef I hI k)
  set c := Real.exp (-(2 * Real.pi * K * σ)) with hc0
  intro I hI
  obtain ⟨h1, h2⟩ := hb I hI
  have hle : ∀ k, ‖coeff (fun z => u z - truncate K u z) I k‖ * modeWeight (s - σ) k ≤
      c * (‖coeff u I k‖ * modeWeight s k) := by
    intro k
    rw [hc I hI k]
    by_cases hk : k ∈ T
    · simp only [Set.indicator_of_mem hk]
      have hk' : K < KAM.Fourier.modeSize k := hk
      have hw : modeWeight (s - σ) k ≤ c * modeWeight s k := by
        unfold modeWeight
        rw [hc0, ← Real.exp_add]
        refine Real.exp_le_exp.mpr ?_
        nlinarith [mul_le_mul_of_nonneg_left hk'.le (mul_pos Real.pi_pos hσ).le]
      calc ‖coeff u I k‖ * modeWeight (s - σ) k ≤ ‖coeff u I k‖ * (c * modeWeight s k) :=
            mul_le_mul_of_nonneg_left hw (norm_nonneg _)
        _ = c * (‖coeff u I k‖ * modeWeight s k) := by ring
    · simp only [Set.indicator_of_notMem hk, norm_zero, zero_mul]
      exact mul_nonneg (Real.exp_pos _).le
        (mul_nonneg (norm_nonneg _) (Real.exp_pos _).le)
  have hnn : ∀ k, 0 ≤ ‖coeff (fun z => u z - truncate K u z) I k‖ * modeWeight (s - σ) k :=
    fun k => mul_nonneg (norm_nonneg _) (Real.exp_pos _).le
  have hsum : Summable (fun k => c * (‖coeff u I k‖ * modeWeight s k)) := h1.mul_left c
  refine ⟨Summable.of_nonneg_of_le hnn hle hsum, ?_⟩
  calc _ ≤ ∑' k, c * (‖coeff u I k‖ * modeWeight s k) :=
        (Summable.of_nonneg_of_le hnn hle hsum).tsum_le_tsum hle hsum
    _ = c * wsum u s I := by rw [tsum_mul_left]; rfl
    _ ≤ c * M := mul_le_mul_of_nonneg_left h2 (Real.exp_pos _).le

end KAM.Weighted

end
