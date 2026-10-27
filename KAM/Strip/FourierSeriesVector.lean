/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Strip.FourierBasic
public import KAM.Strip.Bridges
public import Mathlib.Analysis.Normed.Group.FunctionSeries
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Fourier series on strips: uniform convergence and values in a Banach space

`KAM/Strip/FourierSeries.lean` and `KAM/Strip/FourierBasic.lean` prove the summation lemma
(blueprint `bp:p1:summation`) for complex-valued functions. This file adds two things.

* **Uniform convergence** (step `step:p1:sum-bound`). A coefficient family with
  `∑ ‖a_k‖ e^{2π|k|₁ρ} < ∞` gives a series that converges uniformly on the strip `T_ρ`, both along
  the finite subsets of `ℤⁿ` (`KAM.tendstoUniformlyOn_fourierSum`) and along the partial sums
  `S_N = ∑_{|k|₁ ≤ N} a_k χ_k` of the blueprint (`KAM.tendstoUniformlyOn_fourierSum_cutoff`, with
  the cutoffs `KAM.modeCutoff`). The proof is the Weierstrass M-test with the summable majorant
  `KAM.norm_coeff_mul_character_le`.
* **Values in `W`.** The standing convention of Part 1 lets the summation lemma take values in a
  finite-dimensional complex normed space `W` (vectors, matrices with the operator norm, linear and
  multilinear maps), with the bounds in the norm of `W`. Every declaration with the suffix `Vec`
  or `_vec` holds for `W` any complex normed space, complete where a sum must exist (so every
  finite-dimensional `W`), with no dimension factor. The series is `KAM.fourierSumVec`, and the
  coefficient is the `W`-valued torus average `KAM.torusCoeffW` of `KAM/Strip/Bridges.lean`.
  Holomorphy, the bound and periodicity are proved directly (the termwise derivative estimates are
  those of the scalar case, with `smulRight`). The coefficient formula, the converse estimate and
  the representation are reduced to the scalar results by duality: for `φ ∈ W*`, the coefficients
  of `φ ∘ u` are `φ (û_k)`, and `W*` separates the points of `W`.

The two forms of the lemma are `KAM.summation_forward_vec` and `KAM.summation_converse_vec`.
-/

public noncomputable section

open Set Filter MeasureTheory
open scoped Topology

namespace KAM

variable {n : ℕ}

/-! ### Mode cutoffs -/

/-- The finite set `{k ∈ ℤⁿ : |k|₁ ≤ N}` of the modes of size at most `N`. -/
@[expose] def modeCutoff (n N : ℕ) : Finset (Fin n → ℤ) :=
  (Fintype.piFinset fun _ => Finset.Icc (-(N : ℤ)) N).filter fun k => Fourier.modeSize k ≤ N

theorem mem_modeCutoff {N : ℕ} {k : Fin n → ℤ} :
    k ∈ modeCutoff n N ↔ Fourier.modeSize k ≤ N := by
  rw [modeCutoff, Finset.mem_filter, Fintype.mem_piFinset]
  refine ⟨fun h => h.2, fun h => ⟨fun j => ?_, h⟩⟩
  have hj := (abs_le.mp ((Fourier.abs_coord_le_modeSize k j).trans h))
  rw [Finset.mem_Icc]
  constructor <;> [have := hj.1; have := hj.2] <;> exact_mod_cast this

theorem monotone_modeCutoff (n : ℕ) : Monotone (modeCutoff n) := by
  intro N M hNM k hk
  rw [mem_modeCutoff] at hk ⊢
  exact hk.trans (by exact_mod_cast hNM)

/-- Every finite set of modes lies in `modeCutoff n N` for `N` large. -/
theorem tendsto_modeCutoff (n : ℕ) : Tendsto (modeCutoff n) atTop atTop :=
  tendsto_atTop_finset_of_monotone (monotone_modeCutoff n) fun k =>
    ⟨⌈Fourier.modeSize k⌉₊, mem_modeCutoff.mpr (Nat.le_ceil _)⟩

/-! ### Uniform convergence of the scalar series (`step:p1:sum-bound`) -/

/-- **Uniform convergence** (blueprint `bp:p1:summation`, step `step:p1:sum-bound`). If
`∑ |a_k| e^{2π|k|₁ρ} < ∞`, the Fourier series converges absolutely and uniformly on `T_ρ`: the
finite partial sums, along the finite subsets of `ℤⁿ`, converge uniformly to `fourierSum a`. -/
theorem tendstoUniformlyOn_fourierSum {ρ : ℝ} {a : (Fin n → ℤ) → ℂ}
    (ha : Fourier.SummableWeighted (2 * Real.pi * ρ) a) :
    TendstoUniformlyOn (fun (s : Finset (Fin n → ℤ)) (θ : Fin n → ℂ) =>
        ∑ k ∈ s, a k * character k θ) (fourierSum a) atTop (complexStrip n ρ) :=
  tendstoUniformlyOn_tsum ha fun k _ hθ => norm_coeff_mul_character_le a hθ k

/-- **Uniform convergence of `S_N`** (blueprint `bp:p1:summation`, step `step:p1:sum-bound`). With
`S_N = ∑_{|k|₁ ≤ N} a_k χ_k` and `∑ |a_k| e^{2π|k|₁ρ} < ∞`, `S_N → u` uniformly on `T_ρ`. -/
theorem tendstoUniformlyOn_fourierSum_cutoff {ρ : ℝ} {a : (Fin n → ℤ) → ℂ}
    (ha : Fourier.SummableWeighted (2 * Real.pi * ρ) a) :
    TendstoUniformlyOn (fun (N : ℕ) (θ : Fin n → ℂ) =>
        ∑ k ∈ modeCutoff n N, a k * character k θ) (fourierSum a) atTop (complexStrip n ρ) :=
  fun u hu => (tendsto_modeCutoff n).eventually (tendstoUniformlyOn_fourierSum ha u hu)

/-! ### Values in a complex normed space -/

section Vector

variable {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W]

/-- The Fourier series `θ ↦ ∑ₖ χₖ(θ) aₖ` with coefficients in the complex normed space `W`. For
`W = ℂ` it is `KAM.fourierSum`. -/
@[expose] def fourierSumVec (a : (Fin n → ℤ) → W) (θ : Fin n → ℂ) : W :=
  ∑' k, character k θ • a k

theorem fourierSumVec_complex (a : (Fin n → ℤ) → ℂ) : fourierSumVec a = fourierSum a := by
  funext θ
  simp only [fourierSumVec, fourierSum, smul_eq_mul, mul_comm]

theorem norm_character_smul_le {ρ : ℝ} (a : (Fin n → ℤ) → W) {θ : Fin n → ℂ}
    (hθ : θ ∈ complexStrip n ρ) (k : Fin n → ℤ) :
    ‖character k θ • a k‖ ≤ ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k) := by
  rw [norm_smul, mul_comm]
  exact mul_le_mul_of_nonneg_left (norm_character_le k hθ) (norm_nonneg _)

theorem summable_norm_character_smul {ρ : ℝ} {a : (Fin n → ℤ) → W}
    (ha : Summable fun k => ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k))
    {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ) :
    Summable fun k => ‖character k θ • a k‖ :=
  Summable.of_nonneg_of_le (fun _ => norm_nonneg _) (norm_character_smul_le a hθ) ha

theorem summable_character_smul [CompleteSpace W] {ρ : ℝ} {a : (Fin n → ℤ) → W}
    (ha : Summable fun k => ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k))
    {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ) :
    Summable fun k => character k θ • a k :=
  (summable_norm_character_smul ha hθ).of_norm

/-- The series is bounded, in the norm of `W`, by the weighted norm of its coefficients
(blueprint `bp:p1:summation`, step `step:p1:sum-bound`). -/
theorem norm_fourierSumVec_le {ρ : ℝ} {a : (Fin n → ℤ) → W}
    (ha : Summable fun k => ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k))
    {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ) :
    ‖fourierSumVec a θ‖ ≤ ∑' k, ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k) :=
  tsum_of_norm_bounded ha.hasSum (norm_character_smul_le a hθ)

/-- The series is `1`-periodic in every coordinate. -/
theorem fourierSumVec_add_single (a : (Fin n → ℤ) → W) (θ : Fin n → ℂ) (i : Fin n) :
    fourierSumVec a (θ + Pi.single i 1) = fourierSumVec a θ := by
  simp only [fourierSumVec, character_add_single]

/-- **Uniform convergence in `W`** (blueprint `bp:p1:summation`, step `step:p1:sum-bound`). If
`∑ ‖a_k‖ e^{2π|k|₁ρ} < ∞`, the finite partial sums of the `W`-valued series converge uniformly to
`fourierSumVec a` on `T_ρ`, in the norm of `W`. -/
theorem tendstoUniformlyOn_fourierSumVec [CompleteSpace W] {ρ : ℝ} {a : (Fin n → ℤ) → W}
    (ha : Summable fun k => ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) :
    TendstoUniformlyOn (fun (s : Finset (Fin n → ℤ)) (θ : Fin n → ℂ) =>
        ∑ k ∈ s, character k θ • a k) (fourierSumVec a) atTop (complexStrip n ρ) :=
  tendstoUniformlyOn_tsum ha fun k _ hθ => norm_character_smul_le a hθ k

/-- **Uniform convergence of `S_N` in `W`** (blueprint `bp:p1:summation`, step
`step:p1:sum-bound`): `S_N = ∑_{|k|₁ ≤ N} χ_k a_k → u` uniformly on `T_ρ`. -/
theorem tendstoUniformlyOn_fourierSumVec_cutoff [CompleteSpace W] {ρ : ℝ} {a : (Fin n → ℤ) → W}
    (ha : Summable fun k => ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) :
    TendstoUniformlyOn (fun (N : ℕ) (θ : Fin n → ℂ) =>
        ∑ k ∈ modeCutoff n N, character k θ • a k) (fourierSumVec a) atTop
      (complexStrip n ρ) :=
  fun u hu => (tendsto_modeCutoff n).eventually (tendstoUniformlyOn_fourierSumVec ha u hu)

/-! ### Holomorphy -/

/-- The derivative of a character, on a strip narrower by `ε`, is dominated by the weight of the
strip of width `ρ`: the loss `ε` absorbs the factor `|k|₁` (blueprint `bp:p1:summation`, step
`step:p1:sum-holo`, with `bp:p1:exp-sums`(a)). -/
theorem norm_fderiv_character_le {ρ ε : ℝ} (hε : 0 < ε) (k : Fin n → ℤ) {z : Fin n → ℂ}
    (hz : z ∈ complexStrip n (ρ - ε)) :
    ‖character k z • ((2 * Real.pi * Complex.I : ℂ) • modeForm k)‖ ≤
      2 * Real.pi * (Real.exp (-1) / (2 * Real.pi * ε)) *
        Real.exp (2 * Real.pi * ρ * Fourier.modeSize k) := by
  have hδ : 0 < 2 * Real.pi * ε := by positivity
  have hI : ‖(2 * Real.pi * Complex.I : ℂ)‖ = 2 * Real.pi := by
    simp [abs_of_pos Real.pi_pos]
  have hM := Fourier.mul_exp_radius_sub_le (2 * Real.pi * ρ) (Fourier.modeSize k) hδ
  have hexp : Real.exp ((2 * Real.pi * ρ - 2 * Real.pi * ε) * Fourier.modeSize k) =
      Real.exp (2 * Real.pi * (ρ - ε) * Fourier.modeSize k) := by
    congr 1
    ring
  rw [hexp] at hM
  calc ‖character k z • ((2 * Real.pi * Complex.I : ℂ) • modeForm k)‖
      = ‖character k z‖ * (2 * Real.pi * ‖modeForm k‖) := by
        rw [norm_smul, norm_smul, hI]
    _ ≤ Real.exp (2 * Real.pi * (ρ - ε) * Fourier.modeSize k) *
          (2 * Real.pi * Fourier.modeSize k) := by
        gcongr
        · exact norm_character_le k hz
        · exact norm_modeForm_le k
    _ = 2 * Real.pi * (Fourier.modeSize k *
          Real.exp (2 * Real.pi * (ρ - ε) * Fourier.modeSize k)) := by ring
    _ ≤ 2 * Real.pi * (Real.exp (-1) / (2 * Real.pi * ε) *
          Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) := by gcongr
    _ = _ := by ring

/-- The `W`-valued series is holomorphic on the strip (blueprint `bp:p1:summation`, step
`step:p1:sum-holo`): the termwise derivatives `(Dχ_k) a_k` are dominated on `T_{ρ-ε}` by the
summable family `C ‖a_k‖ e^{2π|k|₁ρ}`. -/
theorem differentiableOn_fourierSumVec [CompleteSpace W] {ρ : ℝ} {a : (Fin n → ℤ) → W}
    (ha : Summable fun k => ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) :
    DifferentiableOn ℂ (fourierSumVec a) (complexStrip n ρ) := by
  intro θ hθ
  obtain ⟨ε, hε, hθε⟩ := exists_mem_complexStrip_sub hθ
  have hsub : complexStrip n (ρ - ε) ⊆ complexStrip n ρ := fun z hz j => by
    have := hz j
    linarith
  set C : ℝ := 2 * Real.pi * (Real.exp (-1) / (2 * Real.pi * ε)) with hC
  have hderiv : ∀ (k : Fin n → ℤ) (z : Fin n → ℂ), z ∈ complexStrip n (ρ - ε) →
      HasFDerivAt (fun z => character k z • a k)
        ((character k z • ((2 * Real.pi * Complex.I : ℂ) • modeForm k)).smulRight (a k)) z :=
    fun k z _ => (hasFDerivAt_character k z).smul_const (a k)
  have hbound : ∀ (k : Fin n → ℤ) (z : Fin n → ℂ), z ∈ complexStrip n (ρ - ε) →
      ‖(character k z • ((2 * Real.pi * Complex.I : ℂ) • modeForm k)).smulRight (a k)‖ ≤
        C * (‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) := by
    intro k z hz
    rw [ContinuousLinearMap.norm_smulRight_apply, mul_left_comm, mul_comm]
    exact mul_le_mul_of_nonneg_left (norm_fderiv_character_le hε k hz) (norm_nonneg _)
  have h := hasFDerivAt_tsum_of_isPreconnected (ha.mul_left C) (isOpen_complexStrip n _)
    (convex_complexStrip n _).isPreconnected hderiv hbound hθε
    (summable_character_smul ha (hsub hθε)) hθε
  exact h.differentiableAt.differentiableWithinAt

end Vector

end KAM

end
