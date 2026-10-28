/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Frozen.Defs.RealHamiltonian
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Iso.Defs.IsHamiltonianSolutionOn
public import KAM.Frozen.Iso.Defs.IsRestrictedSolutionOn
public import KAM.Kepler.DelaunaySymplectic
public import KAM.Iso.Conversion
public import KAM.Iso.ExactHamiltonian

/-!
# The period-one Hamiltonian and the transfer of solutions

Blueprint-I Part 7, nodes `bpI:p7:period-one`, `bpI:p7:transfer` and `bpI:p7:nondeg`.

* `tildeF K μ` is the perturbation `f̃_μ(θ, I) = μ F_μ(𝖲(θ, I))` in period-one variables.
* `delaunay_periodOne_symplectic`: `𝖰 ∘ 𝖲` is symplectic (`bpI:p7:symplectic`,
  `bpI:p6:conversion` (a)).
* `period_one`: the radii `s₀ = δ₂/(2π)`, `r₀ = 2πδ₂` and the holomorphy, bound, periodicity and
  exactness (`Ham_μ ∘ 𝖰 ∘ 𝖲 = h̃ + f̃_μ` at real points) of the period-one Hamiltonian.
* `transfer`, `transfer_identities`: a solution of the Hamiltonian system of `h̃ + f̃_μ` in the
  action set `B` is carried by `𝖰 ∘ 𝖲` to a collision-free solution of the restricted problem, with
  the radius interval, the recovery of the elements and the energy identity.
* `nondeg_exact`: nondegeneracy of the converted Kepler-rotation Hamiltonian on the real points of
  the exact complex neighbourhood.

The proofs reduce everything to one pointwise statement (`PeriodOneAux.periodOne_real`) about real
points of the product `complexStrip 2 s₀ ×ˢ actionNbhd B r₀`: the Hamiltonians agree on the open
set of such real points, hence so do their Hamilton fields (`Filter.EventuallyEq.fderiv_eq`), and
`𝖰 ∘ 𝖲` carries one field to the other (`delaunay_hamiltonianVectorField`,
`periodOneMap_hasDerivAt_iff`).
-/

@[expose] public noncomputable section

open Set Metric Real

namespace KAM.Iso

open KAM KAM.Kepler KAM.Planetary

section Part7PeriodOne

/-- `f̃_μ(θ, I) = μ F_μ(𝖲(θ, I))`. -/
def tildeF (K : Set (Fin 2 → ℝ)) (μ : ℝ) (z : (Fin 2 → ℂ) × (Fin 2 → ℂ)) : ℂ :=
  μ * exactF K (periodOneMapC z) μ

namespace PeriodOneAux

variable {K : Set (Fin 2 → ℝ)} {B : Set (Fin 2 → ℝ)}

/-! ### The radii -/

theorem exactDelta_pos (hK : SafeAction K) (hρ : kRhoMax K < 1) : 0 < exactDelta K :=
  (exact_radius_spec hK hρ).1

theorem exactDelta_le_half (hK : SafeAction K) (hρ : kRhoMax K < 1) :
    exactDelta K ≤ kLMin K / 2 := by
  have h1 := (exact_radius_spec hK hρ).2.1
  have h2 := (complex_domain_spec hK).2.1
  have h3 := min_le_right (keplerDeltaK (kEccMax K)) (min (kLMin K) (kGMin K))
  have h4 := min_le_left (kLMin K) (kGMin K)
  linarith

/-- The action points of `B` are `≥ 2π ℓ_min ≥ 4π δ₂ = 2 r₀` and positive. -/
theorem action_bounds (hK : SafeAction K) (hρ : kRhoMax K < 1)
    (hB : ∀ I ∈ B, (fun i => I i / (2 * π)) ∈ K) :
    ∀ J ∈ B, 0 < J 0 ∧ 2 * (2 * π * exactDelta K) ≤ J 0 ∧ 2 * π * kLMin K ≤ J 0 := by
  intro J hJ
  have hpi : 0 < 2 * π := by positivity
  have h1 : kLMin K ≤ J 0 / (2 * π) := (ComplexDomainAux.kLMin_spec hK).2 _ (hB J hJ)
  have h2 : kLMin K * (2 * π) ≤ J 0 := (le_div_iff₀ hpi).1 h1
  have h3 := exactDelta_le_half hK hρ
  have h4 := ComplexDomainAux.kLMin_pos hK
  refine ⟨by nlinarith, by nlinarith, by linarith⟩

/-! ### Open sets and real points -/

theorem isOpen_complexStrip (n : ℕ) (ρ : ℝ) : IsOpen (complexStrip n ρ) := by
  have e : complexStrip n ρ = ⋂ i : Fin n, {θ : Fin n → ℂ | |(θ i).im| < ρ} := by
    ext θ; simp [complexStrip]
  rw [e]
  refine isOpen_iInter_of_finite fun i => isOpen_lt ?_ continuous_const
  exact continuous_abs.comp (Complex.continuous_im.comp (continuous_apply i))

theorem isOpen_actionNbhd (B : Set (Fin 2 → ℝ)) (r : ℝ) : IsOpen (actionNbhd B r) := by
  have e : actionNbhd B r = ⋃ J ∈ B, ball (fun i => (J i : ℂ)) r := by
    ext I; simp [actionNbhd, dist_eq_norm]
  rw [e]
  exact isOpen_biUnion fun _ _ => isOpen_ball

theorem continuous_phaseToC : Continuous (phaseToC (d := 2)) := by
  unfold phaseToC
  fun_prop

/-- A real point with action in `B` lies in the product `complexStrip ×ˢ actionNbhd`. -/
theorem phaseToC_mem {s r : ℝ} (hs : 0 < s) (hr : 0 < r) {z : Phase 2} (hz : z.2 ∈ B) :
    phaseToC z ∈ complexStrip 2 s ×ˢ actionNbhd B r := by
  refine ⟨fun i => ?_, z.2, hz, ?_⟩
  · show |(((z.1 i : ℝ) : ℂ)).im| < s
    rw [Complex.ofReal_im, abs_zero]; exact hs
  · show ‖(fun i => ((z.2 i : ℝ) : ℂ)) - fun i => ((z.2 i : ℝ) : ℂ)‖ < r
    rw [sub_self, norm_zero]; exact hr

/-- `𝖲` maps `complexStrip 2 s₀ ×ˢ actionNbhd B r₀` into `𝒰(δ₂)`. -/
theorem periodOneMapC_mem_UDelta {δ : ℝ} (hδ : 0 < δ)
    (hB : ∀ I ∈ B, (fun i => I i / (2 * π)) ∈ K) {z : (Fin 2 → ℂ) × (Fin 2 → ℂ)}
    (hz : z ∈ complexStrip 2 (δ / (2 * π)) ×ˢ actionNbhd B (2 * π * δ)) :
    periodOneMapC z ∈ UDelta K δ := by
  have hpi : 0 < 2 * π := by positivity
  obtain ⟨h1, J, hJ, hJz⟩ := hz
  refine ⟨fun i => ?_, fun i => J i / (2 * π), hB J hJ, ?_⟩
  · have h := h1 i
    have e : ((periodOneMapC z).1 i).im = (2 * π) * (z.1 i).im := by
      simp only [periodOneMapC, Pi.smul_apply, smul_eq_mul]
      exact Complex.im_ofReal_mul _ _
    rw [e, abs_mul, abs_of_pos hpi]
    calc 2 * π * |(z.1 i).im| < 2 * π * (δ / (2 * π)) := by gcongr
      _ = δ := by field_simp
  · have e : (periodOneMapC z).2 - (fun i => ((J i / (2 * π) : ℝ) : ℂ)) =
        (((2 * π)⁻¹ : ℝ) : ℂ) • (z.2 - fun i => (J i : ℂ)) := by
      funext i
      simp only [periodOneMapC, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
      push_cast
      ring
    show ‖(periodOneMapC z).2 - (fun i => ((J i / (2 * π) : ℝ) : ℂ))‖ < δ
    rw [e, norm_smul, Complex.norm_real, Real.norm_of_nonneg (by positivity)]
    calc (2 * π)⁻¹ * ‖z.2 - fun i => (J i : ℂ)‖ < (2 * π)⁻¹ * (2 * π * δ) := by gcongr
      _ = δ := by field_simp

/-! ### The pointwise statement at real points -/

/-- The Kepler-rotation Hamiltonian of period one at real points, as a real formula. -/
theorem re_keplerRotH_period (J : Fin 2 → ℝ) :
    (keplerRotH ((2 * π) ^ 2) (1 / (2 * π)) (fun i => (J i : ℂ))).re =
      -(2 * π) ^ 2 / (2 * J 0 ^ 2) - 1 / (2 * π) * J 1 := by
  rw [keplerRotH_real, Complex.ofReal_re]

/-- The core of `period_one`, `transfer` and `transfer_identities`: at a real point `z` of the
period-one neighbourhood, `𝖲 z` lies in the Delaunay domain, `f̃_μ` is real, and the restricted
Hamiltonian at `𝖰 (𝖲 z)` equals the period-one Hamiltonian at `z`. -/
theorem periodOne_real (hK : SafeAction K) (hρ : kRhoMax K < 1)
    (hB : ∀ I ∈ B, (fun i => I i / (2 * π)) ∈ K) {μ : ℝ} (hμ : |μ| < exactMu2 K) {z : Phase 2}
    (hz : phaseToC z ∈
      complexStrip 2 (exactDelta K / (2 * π)) ×ˢ actionNbhd B (2 * π * exactDelta K)) :
    periodOneMap z ∈ deDom ∧ (tildeF K μ (phaseToC z)).im = 0 ∧
      ∃ hcf : CollisionFree μ (delaunay (periodOneMap z)),
        restrictedHamiltonian μ ⟨delaunay (periodOneMap z), hcf⟩ =
          realHamiltonian (keplerRotH ((2 * π) ^ 2) (1 / (2 * π))) (tildeF K μ) z := by
  have hspec := exact_radius_spec hK hρ
  have hU : phaseToC (periodOneMap z) ∈ UDelta K (exactDelta K) := by
    rw [← periodOneMapC_phaseToC]
    exact periodOneMapC_mem_UDelta hspec.1 hB hz
  obtain ⟨-, -, -, hreal, hexact, -⟩ := hspec.2.2.1
  obtain ⟨hG, hGL, hcf, hH⟩ := hexact _ hU μ hμ
  have him := hreal _ hU μ hμ
  refine ⟨⟨hG, hGL⟩, ?_, hcf, ?_⟩
  · rw [tildeF, periodOneMapC_phaseToC, Complex.im_ofReal_mul, him, mul_zero]
  · have hz0 : z.2 0 ≠ 0 := by
      intro h0
      have : (periodOneMap z).2 0 = 0 := by simp [periodOneMap, h0]
      have h1 : 0 < (periodOneMap z).2 0 := hG.trans hGL
      linarith
    have e1 : (periodOneMap z).2 0 = (2 * π)⁻¹ * z.2 0 := by simp [periodOneMap]
    have e2 : (periodOneMap z).2 1 = (2 * π)⁻¹ * z.2 1 := by simp [periodOneMap]
    have hpi : (2 * π : ℝ) ≠ 0 := by positivity
    have hc : periodOneMapC (fun i => ((z.1 i : ℝ) : ℂ), fun i => ((z.2 i : ℝ) : ℂ)) =
        phaseToC (periodOneMap z) := periodOneMapC_phaseToC z
    rw [hH]
    unfold realHamiltonian
    rw [keplerRotH_real, tildeF, hc, Complex.add_re, Complex.ofReal_re,
      Complex.re_ofReal_mul, e1, e2]
    congr 1
    field_simp

end PeriodOneAux

open PeriodOneAux

/-! ### Symplecticity -/

theorem delaunay_periodOne_symplectic :
    IsSymplecticOn 1 (fun z : Phase 2 => delaunay (periodOneMap z)) {z | periodOneMap z ∈ deDom} := by
  have h1 : IsSymplecticOn 1 (periodOneMap (n := 2)) {z | periodOneMap z ∈ deDom} :=
    fun z _ => periodOneMap_symplectic 2 z (mem_univ z)
  have h2 : IsSymplecticOn 1 delaunay deDom := delaunay_symplectic
  have hU : ∀ z ∈ {z : Phase 2 | periodOneMap z ∈ deDom}, DifferentiableAt ℝ (periodOneMap (n := 2)) z :=
    fun z _ => by
      rw [periodOneMap_eq_clm]
      exact (periodOneCLM 2).differentiableAt
  have hV : ∀ z ∈ deDom, DifferentiableAt ℝ delaunay z := fun z hz =>
    (analyticOnNhd_delaunay z hz).differentiableAt
  have h3 := IsSymplecticOn.comp h1 h2 hU hV (fun z hz => hz)
  rw [one_mul] at h3
  exact h3

/-! ### Period one -/

end Part7PeriodOne

end KAM.Iso

end
