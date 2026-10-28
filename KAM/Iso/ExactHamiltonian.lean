/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Kepler.Orbit
public import KAM.Iso.ComplexDomain
public import KAM.Iso.ShiftPotential
public import KAM.Iso.RestrictedHam

/-!
# The exact Hamiltonian in Delaunay variables (`bpI:p7:exact-ham`)

For a safe action region `K` with `ρ_max < 1` the exact restricted Hamiltonian in Delaunay
variables is `Ham_μ ∘ 𝖰 = -1/(2L²) - G + μ F_μ`, where `F_μ(w) = f(q(w), μ)` is the shift
potential `shiftF` composed with the complex Delaunay positions `q(w) = (delaunayC K w).1`.

* `exactF`, `exactEps`, `exactMu2`, `exactCF`: the perturbation and its constants.
* `ExactHamData K δ₂`: the clauses (i)-(iv) of the blueprint lemma at the radius `δ₂`
  (holomorphy, the bound `C_F`, `2π`-periodicity in `ℓ` and `g`, reality and the exact identity at
  real points, and real points of `K` lying in `𝒰(δ₂)`).
* `ExactRadiusData K δ`: positivity, `δ ≤ complexDelta K`, `ExactHamData K δ`, and the geometric
  control that the complex Delaunay positions lie in the shift neighbourhood `𝒪`.
* `exactDelta K`: the radius chosen once from `ExactRadiusData`; `exact_radius_spec` certifies it
  (stepI:p7:eh-delta), and `exact_ham`, `exact_positions_mem_shiftO` are projections.

The existence of an admissible radius follows `stepI:p7:eh-delta`: the compact set
`{(ℓ, g) ∈ [0, 2π]², (L, G) ∈ K}` of real points lies in the open set `𝒰(δ₁)`, on which `𝖰` is
continuous; uniform continuity on a closed thickening, the `2π`-periodicity of `𝖰` (to reduce the
real parts of `ℓ, g` to `[0, 2π)`) and the radius bounds `r_min ≤ |q'| ≤ ρ_max` at real points of
`K` place `q(w)` within `ε₀/2` of the real shell.  The identities of clause (iv) then follow
from `shift_real`, `shift_mul_eq`, `delaunay_hamiltonian` and `restrictedHamTotal_zero`.
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff

namespace KAM.Iso

open KAM KAM.Kepler KAM.Planetary

section Part7Exact

/-- The exact perturbation `F_μ(w) = f(q(w), μ)` (`bpI:p7:exact-ham`). -/
def exactF (K : Set (Fin 2 → ℝ)) (w : (Fin 2 → ℂ) × (Fin 2 → ℂ)) (μ : ℂ) : ℂ :=
  shiftF (delaunayC K w).1 μ
def exactEps (K : Set (Fin 2 → ℝ)) : ℝ := shiftEps (kRmin K) (kRhoMax K)
def exactMu2 (K : Set (Fin 2 → ℝ)) : ℝ := exactEps K / 2
def exactCF (K : Set (Fin 2 → ℝ)) : ℝ := shiftCsh (kRmin K) (kRhoMax K) (exactEps K)

/-- The clauses (i)-(iv) of `bpI:p7:exact-ham` at a given `δ₂`. -/
def ExactHamData (K : Set (Fin 2 → ℝ)) (δ₂ : ℝ) : Prop :=
  DifferentiableOn ℂ (fun x : ((Fin 2 → ℂ) × (Fin 2 → ℂ)) × ℂ => exactF K x.1 x.2)
      (UDelta K δ₂ ×ˢ ball (0 : ℂ) (exactMu2 K)) ∧
  (∀ w ∈ UDelta K δ₂, ∀ μ : ℂ, ‖μ‖ < exactMu2 K → ‖exactF K w μ‖ ≤ exactCF K) ∧
  (∀ w ∈ UDelta K δ₂, ∀ μ : ℂ, exactF K (Function.update w.1 0 (w.1 0 + 2 * π), w.2) μ = exactF K w μ ∧
      exactF K (Function.update w.1 1 (w.1 1 + 2 * π), w.2) μ = exactF K w μ) ∧
  (∀ w : Phase 2, phaseToC w ∈ UDelta K δ₂ → ∀ μ : ℝ, |μ| < exactMu2 K →
      (exactF K (phaseToC w) μ).im = 0) ∧
  (∀ w : Phase 2, phaseToC w ∈ UDelta K δ₂ → ∀ μ : ℝ, |μ| < exactMu2 K →
      0 < w.2 1 ∧ w.2 1 < w.2 0 ∧ ∃ hcf : CollisionFree μ (delaunay w),
        restrictedHamiltonian μ ⟨delaunay w, hcf⟩ =
          -1 / (2 * w.2 0 ^ 2) - w.2 1 + μ * (exactF K (phaseToC w) μ).re) ∧
  (∀ w : Phase 2, w.2 ∈ K → phaseToC w ∈ UDelta K δ₂)

/-- The full admissibility predicate of the exact radius (audit 2, R2-1): positivity, subordination to the selected
complex-domain radius, the clauses (i)-(iv), AND the geometric control that the complex Delaunay positions lie in the
shift neighbourhood. It is a result predicate (used in a choice and in theorem conclusions), never a premise. -/
def ExactRadiusData (K : Set (Fin 2 → ℝ)) (δ : ℝ) : Prop :=
  0 < δ ∧ δ ≤ complexDelta K ∧ ExactHamData K δ ∧
    ∀ w ∈ UDelta K δ, (delaunayC K w).1 ∈ shiftO (kRmin K) (kRhoMax K) (exactEps K)

open scoped Classical in
/-- The radius `δ₂` of `bpI:p7:exact-ham`, chosen once from `ExactRadiusData`. -/
def exactDelta (K : Set (Fin 2 → ℝ)) : ℝ :=
  if h : ∃ δ : ℝ, ExactRadiusData K δ then h.choose else 0

/-! ### The neighbourhoods `𝒰(δ)` -/

namespace ExactAux

variable {K : Set (Fin 2 → ℝ)}

theorem UDelta_mono {δ δ' : ℝ} (h : δ ≤ δ') : UDelta K δ ⊆ UDelta K δ' := by
  rintro w ⟨h1, J, hJ, hn⟩
  exact ⟨fun i => (h1 i).trans_le h, J, hJ, hn.trans_le h⟩

theorem isOpen_UDelta (K : Set (Fin 2 → ℝ)) (δ : ℝ) : IsOpen (UDelta K δ) := by
  have h1 : IsOpen {w : (Fin 2 → ℂ) × (Fin 2 → ℂ) | ∀ i, |(w.1 i).im| < δ} := by
    have e : {w : (Fin 2 → ℂ) × (Fin 2 → ℂ) | ∀ i, |(w.1 i).im| < δ} =
        ⋂ i : Fin 2, {w | |(w.1 i).im| < δ} := by
      ext w; simp
    rw [e]
    refine isOpen_iInter_of_finite fun i => isOpen_lt ?_ continuous_const
    exact continuous_abs.comp (Complex.continuous_im.comp ((continuous_apply i).comp continuous_fst))
  have h2 : IsOpen (actionNbhd K δ) := by
    have e : actionNbhd K δ = ⋃ J ∈ K, ball (fun i => (J i : ℂ)) δ := by
      ext I; simp [actionNbhd, dist_eq_norm]
    rw [e]
    exact isOpen_biUnion fun _ _ => isOpen_ball
  exact h1.inter (h2.preimage continuous_snd)

/-- Real points of `K × (ℝ/2πℤ)²` lie in every `𝒰(δ)`, `δ > 0`. -/
theorem real_mem_UDelta {δ : ℝ} (hδ : 0 < δ) {w : Phase 2} (hw : w.2 ∈ K) :
    phaseToC w ∈ UDelta K δ := by
  refine ⟨fun i => ?_, w.2, hw, ?_⟩
  · show |(((w.1 i : ℝ) : ℂ)).im| < δ
    rw [Complex.ofReal_im, abs_zero]; exact hδ
  · show ‖(fun i => ((w.2 i : ℝ) : ℂ)) - fun i => ((w.2 i : ℝ) : ℂ)‖ < δ
    rw [sub_self, norm_zero]; exact hδ

theorem update_mem_UDelta {δ : ℝ} {w : (Fin 2 → ℂ) × (Fin 2 → ℂ)} (hw : w ∈ UDelta K δ)
    (i : Fin 2) (c : ℂ) (hc : c.im = (w.1 i).im) : (Function.update w.1 i c, w.2) ∈ UDelta K δ := by
  refine ⟨fun j => ?_, hw.2⟩
  by_cases h : j = i
  · subst h; simpa [hc] using hw.1 j
  · simpa [Function.update_of_ne h] using hw.1 j

/-! ### `2π`-periodicity of `delaunayC` and reduction of the real parts -/

theorem periodic_coord (hK : SafeAction K) {w : (Fin 2 → ℂ) × (Fin 2 → ℂ)}
    (hw : w ∈ UDelta K (complexDelta K)) (i : Fin 2) :
    delaunayC K (Function.update w.1 i (w.1 i + 2 * π), w.2) = delaunayC K w := by
  revert i
  refine Fin.forall_fin_two.2 ⟨?_, ?_⟩
  · exact (delaunayC_periodic hK hw).1
  · exact (delaunayC_periodic hK hw).2

theorem im_shift (z : ℂ) (k : ℤ) : (z + 2 * π * (k : ℂ)).im = z.im := by simp

theorem periodic_int (hK : SafeAction K) {w : (Fin 2 → ℂ) × (Fin 2 → ℂ)}
    (hw : w ∈ UDelta K (complexDelta K)) (i : Fin 2) (k : ℤ) :
    delaunayC K (Function.update w.1 i (w.1 i + 2 * π * (k : ℂ)), w.2) = delaunayC K w := by
  refine Int.induction_on k ?_ ?_ ?_
  · simp
  · intro n ih
    have hv : (Function.update w.1 i (w.1 i + 2 * π * ((n : ℤ) : ℂ)), w.2) ∈
        UDelta K (complexDelta K) := update_mem_UDelta hw i _ (im_shift _ _)
    have h := periodic_coord hK hv i
    simp only [Function.update_idem, Function.update_self] at h
    have e : w.1 i + 2 * π * ((n : ℤ) : ℂ) + 2 * π = w.1 i + 2 * π * (((n : ℤ) + 1 : ℤ) : ℂ) := by
      push_cast; ring
    rw [e] at h
    rw [h]; exact ih
  · intro n ih
    have hv : (Function.update w.1 i (w.1 i + 2 * π * ((-(n : ℤ) - 1 : ℤ) : ℂ)), w.2) ∈
        UDelta K (complexDelta K) := update_mem_UDelta hw i _ (im_shift _ _)
    have h := periodic_coord hK hv i
    simp only [Function.update_idem, Function.update_self] at h
    have e : w.1 i + 2 * π * ((-(n : ℤ) - 1 : ℤ) : ℂ) + 2 * π =
        w.1 i + 2 * π * ((-(n : ℤ) : ℤ) : ℂ) := by
      push_cast; ring
    rw [e] at h
    rw [← h]; exact ih

/-- One coordinate of the real part reduced to `[0, 2π)`, without changing `delaunayC`. -/
theorem reduce_coord (hK : SafeAction K) {w : (Fin 2 → ℂ) × (Fin 2 → ℂ)}
    (hw : w ∈ UDelta K (complexDelta K)) (i : Fin 2) :
    ∃ w' : (Fin 2 → ℂ) × (Fin 2 → ℂ), w' ∈ UDelta K (complexDelta K) ∧
      delaunayC K w' = delaunayC K w ∧ w'.2 = w.2 ∧ (∀ j, (w'.1 j).im = (w.1 j).im) ∧
      (∀ j, j ≠ i → w'.1 j = w.1 j) ∧ 0 ≤ (w'.1 i).re ∧ (w'.1 i).re < 2 * π := by
  have hpi : (0 : ℝ) < 2 * π := by positivity
  set k : ℤ := -⌊(w.1 i).re / (2 * π)⌋ with hk
  refine ⟨(Function.update w.1 i (w.1 i + 2 * π * (k : ℂ)), w.2),
    update_mem_UDelta hw i _ (im_shift _ _), periodic_int hK hw i k, rfl, ?_, ?_, ?_, ?_⟩
  · intro j
    by_cases h : j = i
    · subst h; simp
    · simp [Function.update_of_ne h]
  · intro j hj
    simp [Function.update_of_ne hj]
  · have h1 := Int.floor_le ((w.1 i).re / (2 * π))
    have h2 := (le_div_iff₀ hpi).1 h1
    simp only [Function.update_self, Complex.add_re, Complex.mul_re, hk]
    simp
    linarith
  · have h1 := Int.lt_floor_add_one ((w.1 i).re / (2 * π))
    have h2 := (div_lt_iff₀ hpi).1 h1
    simp only [Function.update_self, Complex.add_re, Complex.mul_re, hk]
    simp
    linarith

theorem reduce (hK : SafeAction K) {w : (Fin 2 → ℂ) × (Fin 2 → ℂ)}
    (hw : w ∈ UDelta K (complexDelta K)) :
    ∃ w' : (Fin 2 → ℂ) × (Fin 2 → ℂ), w' ∈ UDelta K (complexDelta K) ∧
      delaunayC K w' = delaunayC K w ∧ w'.2 = w.2 ∧ (∀ j, (w'.1 j).im = (w.1 j).im) ∧
      ∀ j, 0 ≤ (w'.1 j).re ∧ (w'.1 j).re < 2 * π := by
  obtain ⟨w₁, h1U, h1F, h12, h1im, h1ne, h1a, h1b⟩ := reduce_coord hK hw 0
  obtain ⟨w₂, h2U, h2F, h22, h2im, h2ne, h2a, h2b⟩ := reduce_coord hK h1U 1
  refine ⟨w₂, h2U, h2F.trans h1F, h22.trans h12, fun j => (h2im j).trans (h1im j), ?_⟩
  refine Fin.forall_fin_two.2 ⟨?_, ?_⟩
  · rw [h2ne 0 (by decide)]; exact ⟨h1a, h1b⟩
  · exact ⟨h2a, h2b⟩

/-! ### Real points and the shell -/

theorem norm_sub_re (z : ℂ) : ‖z - (z.re : ℂ)‖ = |z.im| := by
  have e : z - (z.re : ℂ) = (z.im : ℂ) * Complex.I := by
    apply Complex.ext <;> simp
  rw [e, norm_mul, Complex.norm_I, mul_one, Complex.norm_real, Real.norm_eq_abs]

theorem clen_lt_of_norm_lt {z : Fin 2 → ℂ} {c : ℝ} (h : ‖z‖ < c / 2) : clen z < c := by
  have hc : 0 < c := by have := norm_nonneg z; linarith
  have h0 : ‖z 0‖ ^ 2 ≤ ‖z‖ ^ 2 := pow_le_pow_left₀ (norm_nonneg _) (norm_le_pi_norm z 0) 2
  have h1 : ‖z 1‖ ^ 2 ≤ ‖z‖ ^ 2 := pow_le_pow_left₀ (norm_nonneg _) (norm_le_pi_norm z 1) 2
  have hz : ‖z‖ ^ 2 < (c / 2) ^ 2 := pow_lt_pow_left₀ h (norm_nonneg _) two_ne_zero
  have e : (c / 2) ^ 2 = c ^ 2 / 4 := by ring
  unfold clen
  rw [Real.sqrt_lt' hc]
  nlinarith [sq_pos_of_pos hc]

/-- At a real point of `K`, `q(w)` is the real Delaunay position, and its length lies in
`[r_min, ρ_max]`. -/
theorem real_pos_data (hK : SafeAction K) {z : Phase 2} (hz : z.2 ∈ K) :
    (delaunayC K (phaseToC z)).1 = (fun i => (((delaunay z).1 i : ℝ) : ℂ)) ∧
      kRmin K ≤ planeLength (delaunay z).1 ∧ planeLength (delaunay z).1 ≤ kRhoMax K := by
  have hcd := complex_domain_spec hK
  have hδ₁ : 0 < complexDelta K := hcd.1
  obtain ⟨-, -, -, -, -, -, -, -, hreal, -⟩ := hcd
  refine ⟨?_, ?_⟩
  · have := hreal z (real_mem_UDelta hδ₁ hz)
    rw [this]; rfl
  · have hc := hK.sub_cone z.2 hz
    have hL : 0 < z.2 0 := hc.1.trans hc.2
    obtain ⟨he0, he1⟩ := ComplexDomainAux.eccOf_pos_lt_one hc.1 hc.2
    have hb := orbitMapR_radius_bounds (ℓ := z.1 0) (g := z.1 1) hL he0.le he1
    have h1 : kRmin K ≤ z.2 0 ^ 2 * (1 - eccOf (z.2 0) (z.2 1)) :=
      (ComplexDomainAux.sInf_spec hK (ComplexDomainAux.continuousOn_rminFn hK)).2 z.2 hz
    have h2 : z.2 0 ^ 2 * (1 + eccOf (z.2 0) (z.2 1)) ≤ kRhoMax K :=
      (ComplexDomainAux.sSup_spec hK (ComplexDomainAux.continuousOn_rmaxFn hK)).2 z.2 hz
    exact ⟨h1.trans hb.1, hb.2.trans h2⟩

end ExactAux

end Part7Exact

end KAM.Iso

end
