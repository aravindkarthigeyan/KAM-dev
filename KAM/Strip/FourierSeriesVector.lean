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
  multilinear maps), with the bounds in the norm of `W`. The declarations about `KAM.fourierSumVec`
  and `KAM.torusCoeffW` hold for `W` any complex normed space, complete where a sum must exist (so
  every finite-dimensional `W`), with no dimension factor. The series is `KAM.fourierSumVec`; the
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

/-! ### Coefficients, the converse estimate and the representation, by duality -/

section Duality

variable {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W] [NormedSpace ℝ W]
  [IsScalarTower ℝ ℂ W] [CompleteSpace W]

/-- A continuous linear functional commutes with the `W`-valued coefficient: the coefficient of
`φ ∘ v` is `φ (v̂_k)`. -/
theorem clm_torusCoeffW {v : (Fin n → ℝ) → W} (hv : Continuous v) (φ : W →L[ℂ] ℂ)
    (k : Fin n → ℤ) : φ (torusCoeffW v k) = torusCoeff (fun x => φ (v x)) k := by
  have hL : Continuous fun x : Fin n → ℝ => fun j => (x j : ℂ) :=
    continuous_pi fun j => Complex.continuous_ofReal.comp (continuous_apply j)
  have hchar : Continuous fun x : Fin n → ℝ => character (-k) (fun j => (x j : ℂ)) :=
    (differentiable_character (-k)).continuous.comp hL
  have hint : Integrable (fun x : Fin n → ℝ => character (-k) (fun j => (x j : ℂ)) • v x)
      (volume.restrict (Set.pi Set.univ fun _ : Fin n => Icc (0 : ℝ) 1)) :=
    integrableOn_unitCube_of_continuous (hchar.smul hv)
  have hcomm := (φ.restrictScalars ℝ).integral_comp_comm hint
  unfold torusCoeffW torusCoeff torusAverage
  simpa [map_smul] using hcomm.symm

omit [NormedSpace ℝ W] [IsScalarTower ℝ ℂ W] [CompleteSpace W] in
/-- A continuous linear functional commutes with the `W`-valued series, where it converges. -/
theorem clm_fourierSumVec (φ : W →L[ℂ] ℂ) {a : (Fin n → ℤ) → W} {θ : Fin n → ℂ}
    (hs : Summable fun k => character k θ • a k) :
    φ (fourierSumVec a θ) = fourierSum (fun k => φ (a k)) θ := by
  rw [fourierSumVec, φ.map_tsum hs, fourierSum]
  refine tsum_congr fun k => ?_
  rw [map_smul, smul_eq_mul, mul_comm]

omit [NormedSpace ℝ W] [IsScalarTower ℝ ℂ W] [CompleteSpace W] in
/-- Weighted summability passes to the composite with a continuous linear functional. -/
theorem summableWeighted_comp (φ : W →L[ℂ] ℂ) {s : ℝ} {a : (Fin n → ℤ) → W}
    (ha : Summable fun k => ‖a k‖ * Real.exp (s * Fourier.modeSize k)) :
    Fourier.SummableWeighted s (fun k => φ (a k)) :=
  Summable.of_nonneg_of_le (fun _ => by positivity)
    (fun k => by
      rw [← mul_assoc]
      exact mul_le_mul_of_nonneg_right (φ.le_opNorm (a k)) (Real.exp_pos _).le)
    (ha.mul_left ‖φ‖)

omit [NormedSpace ℝ W] [IsScalarTower ℝ ℂ W] [CompleteSpace W] in
/-- The restriction to the real torus of a map holomorphic on a strip is continuous. -/
private theorem continuous_realRestriction_vec {ρ : ℝ} (hρ : 0 < ρ) {u : (Fin n → ℂ) → W}
    (hu : DifferentiableOn ℂ u (complexStrip n ρ)) :
    Continuous fun x : Fin n → ℝ => u (fun j => (x j : ℂ)) :=
  hu.continuousOn.comp_continuous
    (continuous_pi fun j => Complex.continuous_ofReal.comp (continuous_apply j))
    fun x => ofReal_mem_complexStrip hρ x

/-- **The coefficients of the series are the `a_k`** (blueprint `bp:p1:summation`, step
`step:p1:sum-coeff`), in the norm-free sense `û_k = a_k` for `W`-valued `û_k = ⟨u χ_{-k}⟩`.
Reduced to `KAM.torusCoeff_fourierSum` by testing against `φ ∈ W*`. -/
theorem torusCoeffW_fourierSumVec {ρ : ℝ} (hρ : 0 ≤ ρ) {a : (Fin n → ℤ) → W}
    (ha : Summable fun k => ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k))
    (k : Fin n → ℤ) :
    torusCoeffW (fun x => fourierSumVec a fun j => (x j : ℂ)) k = a k := by
  have hnorm : Summable fun l => ‖a l‖ :=
    Summable.of_nonneg_of_le (fun _ => norm_nonneg _)
      (fun l => le_mul_of_one_le_right (norm_nonneg _)
        (Real.one_le_exp (by have := Fourier.modeSize_nonneg l; positivity))) ha
  have hbd : ∀ (l : Fin n → ℤ) (x : Fin n → ℝ),
      ‖character l (fun j => (x j : ℂ)) • a l‖ ≤ ‖a l‖ := fun l x => by
    rw [norm_smul, norm_character_real, one_mul]
  have hL : Continuous fun x : Fin n → ℝ => fun j => (x j : ℂ) :=
    continuous_pi fun j => Complex.continuous_ofReal.comp (continuous_apply j)
  have hcont : Continuous fun x : Fin n → ℝ => fourierSumVec a fun j => (x j : ℂ) :=
    continuous_tsum (fun l => ((differentiable_character l).continuous.comp hL).smul
      continuous_const) hnorm hbd
  refine (SeparatingDual.eq_iff_forall_dual_eq (R := ℂ)).2 fun φ => ?_
  rw [clm_torusCoeffW hcont φ k]
  have h1 : (fun x : Fin n → ℝ => φ (fourierSumVec a fun j => (x j : ℂ))) =
      fun x => fourierSum (fun l => φ (a l)) fun j => (x j : ℂ) :=
    funext fun x => clm_fourierSumVec φ (Summable.of_norm_bounded hnorm (hbd · x))
  rw [h1]
  exact torusCoeff_fourierSum hρ (summableWeighted_comp φ ha) k

omit [NormedSpace ℂ W] [NormedSpace ℝ W] [IsScalarTower ℝ ℂ W] [CompleteSpace W] in
/-- The weighted estimate of the converse, from the decay of the coefficients: if
`‖b_k‖ ≤ e^{-2π|k|₁ρ} A` for every `k`, then for `δ > 0`,
`∑ ‖b_k‖ e^{2π|k|₁(ρ-δ)} ≤ coth(πδ)ⁿ A`, in particular the sum is finite. -/
theorem summableWeighted_of_decay_vec {ρ δ A : ℝ} (hδ : 0 < δ) {b : (Fin n → ℤ) → W}
    (hdec : ∀ k, ‖b k‖ ≤ Real.exp (-(2 * Real.pi * ρ * Fourier.modeSize k)) * A) :
    Summable (fun k => ‖b k‖ * Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k)) ∧
      ∑' k, ‖b k‖ * Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k) ≤
        (Real.cosh (Real.pi * δ) / Real.sinh (Real.pi * δ)) ^ n * A := by
  have hx : 0 < 2 * Real.pi * δ := by positivity
  have hgeom := Fourier.hasSum_exp_neg_modeSize n hx
  have hle : ∀ k : Fin n → ℤ, ‖b k‖ * Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k) ≤
      A * Real.exp (-(2 * Real.pi * δ) * Fourier.modeSize k) := by
    intro k
    calc ‖b k‖ * Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k)
        ≤ Real.exp (-(2 * Real.pi * ρ * Fourier.modeSize k)) * A *
          Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k) :=
          mul_le_mul_of_nonneg_right (hdec k) (Real.exp_pos _).le
      _ = A * Real.exp (-(2 * Real.pi * δ) * Fourier.modeSize k) := by
          rw [mul_comm _ A, mul_assoc, ← Real.exp_add]
          congr 2
          ring
  have hsum : Summable (fun k => ‖b k‖ *
      Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k)) :=
    Summable.of_nonneg_of_le (fun _ => by positivity) hle (hgeom.summable.mul_left A)
  refine ⟨hsum, ?_⟩
  calc ∑' k, ‖b k‖ * Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k)
      ≤ ∑' k : Fin n → ℤ, A * Real.exp (-(2 * Real.pi * δ) * Fourier.modeSize k) :=
        Summable.tsum_le_tsum hle hsum (hgeom.summable.mul_left A)
    _ = (Real.cosh (Real.pi * δ) / Real.sinh (Real.pi * δ)) ^ n * A := by
        rw [tsum_mul_left, hgeom.tsum_eq, show 2 * Real.pi * δ / 2 = Real.pi * δ by ring]
        ring

/-- **The converse estimate in `W`** (blueprint `bp:p1:summation`, step `step:p1:sum-converse`).
Let `u : T_ρ → W` be holomorphic, `1`-periodic and bounded by `A`, and `0 < δ < ρ`. Then the
`W`-valued coefficients `û_k = ⟨u χ_{-k}⟩` satisfy
`∑ ‖û_k‖ e^{2π|k|₁(ρ-δ)} ≤ coth(πδ)ⁿ A`, in the norm of `W`. -/
theorem summableWeighted_torusCoeffW {ρ δ A : ℝ} (hδ : 0 < δ) (hδρ : δ < ρ)
    {u : (Fin n → ℂ) → W} (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (hp : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hA : ∀ z ∈ complexStrip n ρ, ‖u z‖ ≤ A) :
    Summable (fun k => ‖torusCoeffW (fun x => u fun j => (x j : ℂ)) k‖ *
        Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k)) ∧
      ∑' k, ‖torusCoeffW (fun x => u fun j => (x j : ℂ)) k‖ *
          Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k) ≤
        (Real.cosh (Real.pi * δ) / Real.sinh (Real.pi * δ)) ^ n * A :=
  summableWeighted_of_decay_vec hδ fun k => decay_boundary_radius (hδ.trans hδρ) hu hp hA k

/-- **Fourier representation in `W`** (blueprint `bp:p1:summation`, step
`step:p1:sum-representation`). A holomorphic, `1`-periodic, bounded `u : T_ρ → W` equals its
Fourier series at every point of `T_ρ`. Reduced to `KAM.eq_fourierSum_torusCoeff` by testing
against `φ ∈ W*`. -/
theorem eq_fourierSumVec_torusCoeffW {ρ A : ℝ} (hρ : 0 < ρ) {u : (Fin n → ℂ) → W}
    (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (hp : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hA : ∀ z ∈ complexStrip n ρ, ‖u z‖ ≤ A) {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ) :
    u θ = fourierSumVec (torusCoeffW fun x => u fun j => (x j : ℂ)) θ := by
  obtain ⟨ε, hε, hθε⟩ := exists_mem_complexStrip_sub hθ
  set δ := min ε (ρ / 2) with hδ_def
  have hδ : 0 < δ := lt_min hε (half_pos hρ)
  have hδρ : δ < ρ := (min_le_right _ _).trans_lt (half_lt_self hρ)
  have hθδ : θ ∈ complexStrip n (ρ - δ) := fun j =>
    (hθε j).trans_le (by linarith [min_le_left ε (ρ / 2), hδ_def])
  obtain ⟨hsum, -⟩ := summableWeighted_torusCoeffW hδ hδρ hu hp hA
  have hterm := summable_character_smul hsum hθδ
  have hcont := continuous_realRestriction_vec hρ hu
  refine (SeparatingDual.eq_iff_forall_dual_eq (R := ℂ)).2 fun φ => ?_
  have hφu := eq_fourierSum_torusCoeff hρ (u := fun z => φ (u z)) (A := ‖φ‖ * A)
    (φ.differentiable.comp_differentiableOn hu)
    (fun i z hz => by simp only [hp i z hz])
    (fun z hz => (φ.le_opNorm (u z)).trans
      (mul_le_mul_of_nonneg_left (hA z hz) (norm_nonneg φ))) hθ
  rw [clm_fourierSumVec φ hterm, hφu]
  congr 1
  funext k
  exact (clm_torusCoeffW hcont φ k).symm

/-! ### The summation lemma in `W` -/

/-- **Summation, forward part, with values in `W`** (blueprint `bp:p1:summation`). If
`∑ ‖a_k‖ e^{2π|k|₁ρ} < ∞`, then `u(θ) = ∑ χ_k(θ) a_k` converges absolutely at every point of `T_ρ`
and uniformly there along `S_N = ∑_{|k|₁ ≤ N} χ_k a_k`; it is holomorphic and `1`-periodic on
`T_ρ`, bounded there by `∑ ‖a_k‖ e^{2π|k|₁ρ}` in the norm of `W`, and its coefficients are
`û_k = a_k`. -/
theorem summation_forward_vec {ρ : ℝ} (hρ : 0 ≤ ρ) {a : (Fin n → ℤ) → W}
    (ha : Summable fun k => ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) :
    (∀ θ ∈ complexStrip n ρ, Summable fun k => ‖character k θ • a k‖) ∧
    TendstoUniformlyOn (fun (N : ℕ) (θ : Fin n → ℂ) =>
        ∑ k ∈ modeCutoff n N, character k θ • a k) (fourierSumVec a) atTop
      (complexStrip n ρ) ∧
    (∀ θ ∈ complexStrip n ρ,
      ‖fourierSumVec a θ‖ ≤ ∑' k, ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) ∧
    DifferentiableOn ℂ (fourierSumVec a) (complexStrip n ρ) ∧
    (∀ (i : Fin n) z, z ∈ complexStrip n ρ →
      fourierSumVec a (z + Pi.single i 1) = fourierSumVec a z) ∧
    (∀ k, torusCoeffW (fun x => fourierSumVec a fun j => (x j : ℂ)) k = a k) :=
  ⟨fun _ hθ => summable_norm_character_smul ha hθ, tendstoUniformlyOn_fourierSumVec_cutoff ha,
    fun _ hθ => norm_fourierSumVec_le ha hθ, differentiableOn_fourierSumVec ha,
    fun i z _ => fourierSumVec_add_single a z i, torusCoeffW_fourierSumVec hρ ha⟩

/-- **Summation, converse part, with values in `W`** (blueprint `bp:p1:summation`). Let
`u : T_ρ → W` be holomorphic, `1`-periodic and bounded by `A` (as in the decay lemma), and
`0 < δ < ρ`. Then `∑ ‖û_k‖ e^{2π|k|₁(ρ-δ)} ≤ coth(πδ)ⁿ A`, and `u` equals its Fourier series at
every point of `T_ρ`. -/
theorem summation_converse_vec {ρ δ A : ℝ} (hδ : 0 < δ) (hδρ : δ < ρ) {u : (Fin n → ℂ) → W}
    (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (hp : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hA : ∀ z ∈ complexStrip n ρ, ‖u z‖ ≤ A) :
    (Summable (fun k => ‖torusCoeffW (fun x => u fun j => (x j : ℂ)) k‖ *
        Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k)) ∧
      ∑' k, ‖torusCoeffW (fun x => u fun j => (x j : ℂ)) k‖ *
          Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k) ≤
        (Real.cosh (Real.pi * δ) / Real.sinh (Real.pi * δ)) ^ n * A) ∧
    ∀ θ ∈ complexStrip n ρ,
      u θ = fourierSumVec (torusCoeffW fun x => u fun j => (x j : ℂ)) θ :=
  ⟨summableWeighted_torusCoeffW hδ hδρ hu hp hA,
    fun _ hθ => eq_fourierSumVec_torusCoeffW (hδ.trans hδρ) hu hp hA hθ⟩

end Duality

/-! ### Sanity checks: the standing codomains of Part 1

Vectors `ℂ^p` carry the max norm and matrices `ℂ^{p×q}` the operator norm they induce (the maximum
row sum), as in `KAM/Matrix/Norms.lean`. The bounds of the two forms of the lemma are in these
norms, with no dimension factor. -/

section Instances

open scoped Matrix.Norms.Operator

/-- Forward part for vectors `ℂ^p` with the max norm. -/
example {p : ℕ} {ρ : ℝ} (hρ : 0 ≤ ρ) {a : (Fin n → ℤ) → (Fin p → ℂ)}
    (ha : Summable fun k => ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) :
    DifferentiableOn ℂ (fourierSumVec a) (complexStrip n ρ) ∧
      (∀ θ ∈ complexStrip n ρ,
        ‖fourierSumVec a θ‖ ≤ ∑' k, ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) ∧
      (∀ k, torusCoeffW (fun x => fourierSumVec a fun j => (x j : ℂ)) k = a k) :=
  let h := summation_forward_vec hρ ha
  ⟨h.2.2.2.1, h.2.2.1, h.2.2.2.2.2⟩

/-- The norm on matrices in force here is the operator norm for the max norm on vectors, that is,
the maximum row sum. -/
example {p q : ℕ} (M : Matrix (Fin p) (Fin q) ℂ) :
    ‖M‖ = ↑(Finset.univ.sup fun i => ∑ j, ‖M i j‖₊) :=
  Matrix.linfty_opNorm_def M

/-- Forward part for matrices `ℂ^{p×q}` with the operator norm. -/
example {p q : ℕ} {ρ : ℝ} (hρ : 0 ≤ ρ) {a : (Fin n → ℤ) → Matrix (Fin p) (Fin q) ℂ}
    (ha : Summable fun k => ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) :
    DifferentiableOn ℂ (fourierSumVec a) (complexStrip n ρ) ∧
      (∀ θ ∈ complexStrip n ρ,
        ‖fourierSumVec a θ‖ ≤ ∑' k, ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) ∧
      (∀ k, torusCoeffW (fun x => fourierSumVec a fun j => (x j : ℂ)) k = a k) :=
  let h := summation_forward_vec hρ ha
  ⟨h.2.2.2.1, h.2.2.1, h.2.2.2.2.2⟩

/-- Converse part for matrices `ℂ^{p×q}` with the operator norm. -/
example {p q : ℕ} {ρ δ A : ℝ} (hδ : 0 < δ) (hδρ : δ < ρ)
    {u : (Fin n → ℂ) → Matrix (Fin p) (Fin q) ℂ} (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (hp : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hA : ∀ z ∈ complexStrip n ρ, ‖u z‖ ≤ A) :
    ∑' k, ‖torusCoeffW (fun x => u fun j => (x j : ℂ)) k‖ *
        Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k) ≤
      (Real.cosh (Real.pi * δ) / Real.sinh (Real.pi * δ)) ^ n * A ∧
    ∀ θ ∈ complexStrip n ρ,
      u θ = fourierSumVec (torusCoeffW fun x => u fun j => (x j : ℂ)) θ :=
  let h := summation_converse_vec hδ hδρ hu hp hA
  ⟨h.1.2, h.2⟩

end Instances

end KAM

end
