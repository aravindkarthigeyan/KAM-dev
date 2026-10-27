/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.NewtonError
public import KAM.Apost.PerturbationTorsion
import KAM.Strip.Periodic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# The KAM step

Blueprint Part 2, Proposition `bp:p2:step` (`KAM.Apost.step`). For an `(r, β, ε)`-admissible torus
`K`, `0 < δ ≤ 1`, `4δ < r` and the step smallness `𝔠_step ε/(γ⁴ δ^{2a}) ≤ min {1, β}`, the Newton
map `K̄ = newtonMap h K ω (r - 2δ)` of `bp:p2:newton-error` is again an admissible-type torus on
`T_{r-2δ}`, with the new error, the frame and the twist controlled by `d = C_ΔK ε/(γ² δ^a)`.

The proof follows the blueprint:

* `step:p2:st-small`: `KAM.Apost.step_small` (`Constants.lean`) turns the smallness hypothesis
  into `C_sym ε/(γ δ^{κ+1}) ≤ 1/2`, `d ≤ β/2` and `2 𝔪 C_ΔT d/δ² ≤ 1/2`; the frequency bound
  `γ ≤ Θ` is `KAM.Apost.frequency`.
* `step:p2:st-error`: `KAM.Apost.correction_spec` (size, holomorphy, periodicity and realness
  of `ΔK`) and `KAM.Apost.newton_error` (the new error). The regularity of `K̄` is
  `Step.newtonMap_differentiableOn`; the primary property is `Step.newtonMap_isPrimaryOnStrip`
  (`ΔK` is `ℤⁿ`-periodic by `KAM.periodic_int_shift`); realness is `Step.newtonMap_isRealOnReals`.
* `step:p2:st-ball`: item (a) of `KAM.Apost.perturbation` (the ball margin) applied to `K̄`.
* `step:p2:st-perturb`: `KAM.Apost.perturbation` on the strip `T_{r-2δ}` (width `r - 2δ`, loss
  `δ`, `2δ < r - 2δ`), for the tangent frame and the twist.

`T_r` is `complexStrip n r`; all the matrix norms are the operator norms of
`open scoped Matrix.Norms.Operator`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Apost

open KAM.Torus

namespace Step

section Newton

variable {n : ℕ} {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ}
  {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {w r : ℝ}

/-- `K̄` is holomorphic on `T_w` when `K` and `ΔK` are. -/
theorem newtonMap_differentiableOn (hK : DifferentiableOn ℂ K (complexStrip n w))
    (hc : DifferentiableOn ℂ (correction h K ω) (complexStrip n w)) :
    DifferentiableOn ℂ (newtonMap h K ω w) (complexStrip n w) :=
  (hK.add hc).congr fun _ hθ => NewtonError.newtonMap_of_mem hθ

/-- `K̄` is primary on `T_w`: `K` is primary on `T_r ⊇ T_w` and `ΔK` is `1`-periodic on `T_w`. -/
theorem newtonMap_isPrimaryOnStrip (hwr : w ≤ r) (hK : IsPrimaryOnStrip K r)
    (hc : IsPeriodicOn (correction h K ω) w) :
    IsPrimaryOnStrip (newtonMap h K ω w) w := by
  intro θ hθ k
  have hθk : θ + (fun i => (k i : ℂ)) ∈ complexStrip n w :=
    add_mem_complexStrip_of_im_eq_zero hθ fun j => by simp
  rw [NewtonError.newtonMap_of_mem hθk, NewtonError.newtonMap_of_mem hθ,
    hK θ (Triangular.strip_mono hwr hθ) k, periodic_int_shift hc k hθ]
  abel

/-- `K̄` is real on reals when `K` and `ΔK` are and `0 < w`. -/
theorem newtonMap_isRealOnReals (hw : 0 < w) (hK : IsRealOnReals K)
    (hc : IsRealOnReals (correction h K ω)) : IsRealOnReals (newtonMap h K ω w) := by
  intro θ
  have hθ : (fun i => (θ i : ℂ)) ∈ complexStrip n w := fun i => by simpa using hw
  obtain ⟨z, hz⟩ := hK θ
  obtain ⟨z', hz'⟩ := hc θ
  refine ⟨(z.1 + z'.1, z.2 + z'.2), ?_⟩
  rw [NewtonError.newtonMap_of_mem hθ, hz, hz']
  ext i <;> simp

end Newton

end Step

section Main

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}

/-- Blueprint `bp:p2:step`, items (a)–(f), with `K̄ = newtonMap h K ω (r - 2δ)` and
`d = C_ΔK ε / (γ² δ^a)`. -/
theorem step (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r β ε δ : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : Admissible σK σB σT 𝔅 h ω r β ε K)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h4δ : 4 * δ < r)
    (hsmall : c_step n τ M σK σB σT * ε / (γ ^ 4 * δ ^ (2 * aExp n τ)) ≤ min 1 β) :
    (DifferentiableOn ℂ (newtonMap h K ω (r - 2 * δ)) (complexStrip n (r - 2 * δ)) ∧
      IsPrimaryOnStrip (newtonMap h K ω (r - 2 * δ)) (r - 2 * δ) ∧
      IsRealOnReals (newtonMap h K ω (r - 2 * δ))) ∧
    ((∀ θ ∈ complexStrip n (r - 2 * δ), ‖newtonMap h K ω (r - 2 * δ) θ - K θ‖ ≤
        C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) ∧
      C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) ≤ β / 2 ∧
      ∀ θ ∈ complexStrip n (r - 2 * δ), Metric.ball (newtonMap h K ω (r - 2 * δ) θ)
        (β - C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) ⊆ 𝔅) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ), ‖invarianceError h (newtonMap h K ω (r - 2 * δ)) ω θ‖ ≤
      C_E n τ M σK σB σT * ε ^ 2 / (γ ^ 4 * δ ^ (2 * aExp n τ))) ∧
    (∀ θ ∈ complexStrip n (r - 3 * δ),
      ‖fderiv ℂ (newtonMap h K ω (r - 2 * δ)) θ - fderiv ℂ K θ‖ ≤
        n * (C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) / δ) ∧
    (∀ θ ∈ complexStrip n (r - 3 * δ), IsUnit (gramMatrix (newtonMap h K ω (r - 2 * δ)) θ).det ∧
      ‖(gramMatrix (newtonMap h K ω (r - 2 * δ)) θ)⁻¹ - (gramMatrix K θ)⁻¹‖ ≤
        C_B n M σK σB σT * (C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) / δ) ∧
    (IsUnit (torsionAverage h (newtonMap h K ω (r - 2 * δ)) ω).det ∧
      ‖(torsionAverage h (newtonMap h K ω (r - 2 * δ)) ω)⁻¹ - (torsionAverage h K ω)⁻¹‖ ≤
        2 * mSize M σK σB σT ^ 2 * C_DT n M σK σB σT *
          (C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) / δ ^ 2) := by
  have hP := hS.toParams
  have hγ := hS.gamma_pos
  have hr := hK.r_pos
  have hβ0 := hK.β_pos
  have hε0 := hK.ε_nonneg
  have h2δ : 2 * δ < r := by linarith
  have hr2 : 0 < r - 2 * δ := by linarith
  have hsub : complexStrip n (r - 2 * δ) ⊆ complexStrip n r :=
    Triangular.strip_mono (by linarith)
  have hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅 := fun θ hθ =>
    hK.ball_sub θ hθ (Metric.mem_ball_self hβ0)
  -- step `st-small`
  obtain ⟨hγω, hω1, hω2⟩ := frequency hS hr hK.ε_le_one hK𝔅 hK.deriv_le hK.gram hK.error_le
  have hω : ‖ω‖ ≤ Theta n M σK σB σT := hω1.trans hω2
  have hγΘ : γ ≤ Theta n M σK σB σT := hγω.trans hω
  obtain ⟨hs1, hs2, hs3⟩ := step_small hP hγ hγΘ hδ hδ1 hε0 hsmall
  have hdβ : C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) < β := by linarith
  -- step `st-error`
  obtain ⟨⟨-, -, -, hcd, hcp, hcr⟩, -, hbd⟩ := correction_spec hS hK hδ hδ1 h2δ
  obtain ⟨-, -, -, hnewt⟩ := newton_error hS hK hδ hδ1 h2δ hdβ hs1
  have hdiff : DifferentiableOn ℂ (newtonMap h K ω (r - 2 * δ)) (complexStrip n (r - 2 * δ)) :=
    Step.newtonMap_differentiableOn (hK.holo.mono hsub) hcd
  have hdist : ∀ θ ∈ complexStrip n (r - 2 * δ), ‖newtonMap h K ω (r - 2 * δ) θ - K θ‖ ≤
      C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) := fun θ hθ => by
    rw [NewtonError.newtonMap_of_mem hθ, add_sub_cancel_left]
    exact (hbd θ hθ).2.1
  -- step `st-perturb`, with the ball margin of `st-ball` as item (a)
  have hpert := perturbation hS hr2 hδ hδ1 (by linarith) hω (hK.holo.mono hsub)
    (fun θ hθ => hK.ball_sub θ (hsub hθ)) (fun θ hθ => hK.deriv_le θ (hsub hθ))
    (fun θ hθ => hK.gram θ (hsub hθ)) hK.twist hdiff hdist hdβ (hs3.trans (by norm_num))
  obtain ⟨hball, hDK, hB, -, -, hT⟩ := hpert
  have e3 : r - 2 * δ - δ = r - 3 * δ := by ring
  rw [e3] at hDK hB
  exact ⟨⟨hdiff, Step.newtonMap_isPrimaryOnStrip (by linarith) hK.primary hcp,
      Step.newtonMap_isRealOnReals hr2 hK.real hcr⟩,
    ⟨hdist, hs2, hball⟩, hnewt, hDK, fun θ hθ => ⟨(hB θ hθ).1, (hB θ hθ).2.2⟩, ⟨hT.2.1, hT.2.2⟩⟩

end Main

end KAM.Apost

end
