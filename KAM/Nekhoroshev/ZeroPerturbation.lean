/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Calculus.ContDiff.Defs
public import Mathlib.Analysis.Calculus.FDeriv.Prod
public import Mathlib.Analysis.Calculus.Deriv.Prod
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticIntegrable
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticPerturbation
public import KAM.Frozen.Nekhoroshev.Defs.IntegrableOrbit
public import KAM.Frozen.Nekhoroshev.Defs.IsSolutionOn
public import KAM.Frozen.Nekhoroshev.Defs.ActionBall
public import KAM.Frozen.Nekhoroshev.Defs.RealPart

/-!
# Zero perturbation

Blueprint `bpN:p2:zero-deriv`, `zero`: for a perturbation of size `0` the real Hamiltonian agrees
with `h` near real points with action in the ball, so the integrable orbit solves Hamilton's
equations there.
-/

public section

namespace KAM.Nekhoroshev

variable {n : ℕ}

theorem actionBall_subset_realActionDomain (R s : ℝ) (hs : 0 < s) :
    actionBall n R ⊆ realActionDomain n R s := by
  intro I hI
  exact ⟨I, hI, by simpa using hs⟩

theorem perturbation_zero_real {R s : ℝ} (hs : 0 < s)
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hf : IsAnalyticPerturbation R s 0 f)
    (θ I : Fin n → ℝ) (hI : I ∈ actionBall n R) :
    f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) = 0 := by
  have hmem : ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ complexDomain n R s := by
    refine ⟨fun i => by simpa using hs, I, hI, by simpa using hs⟩
  have := hf.2.2.2.2.2 _ hmem
  exact norm_le_zero_iff.1 this

theorem realHamiltonian_eq_realPart {R s : ℝ} (hs : 0 < s) {h : (Fin n → ℂ) → ℂ}
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hf : IsAnalyticPerturbation R s 0 f)
    (z : (Fin n → ℝ) × (Fin n → ℝ)) (hz : z.2 ∈ actionBall n R) :
    KAM.realHamiltonian h f z = realPart h z.2 := by
  unfold KAM.realHamiltonian realPart
  rw [perturbation_zero_real hs hf z.1 z.2 hz, add_zero]

theorem zero_perturbation_core {R s : ℝ} (hR : 0 < R) (hs : 0 < s) {h : (Fin n → ℂ) → ℂ}
    (hh : IsAnalyticIntegrable R s h)
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hf : IsAnalyticPerturbation R s 0 f) (θ₀ I₀ : Fin n → ℝ)
    (hI : I₀ ∈ actionBall n (R / 2)) :
    integrableOrbit h θ₀ I₀ 0 = (θ₀, I₀) ∧
    IsSolutionOn (KAM.realHamiltonian h f) (actionBall n R) Set.univ
      (integrableOrbit h θ₀ I₀) ∧
    ∀ t : ℝ, (integrableOrbit h θ₀ I₀ t).2 = I₀ := by
  have hIR : I₀ ∈ actionBall n R := by
    have : ‖I₀‖ < R / 2 := by simpa [actionBall] using hI
    simp only [actionBall, Metric.mem_ball, dist_zero_right]
    linarith
  have hball : IsOpen (actionBall n R) := Metric.isOpen_ball
  have hC : ContDiffAt ℝ 3 (realPart h) I₀ :=
    (hh.2.2.2.2.mono (actionBall_subset_realActionDomain R s hs)).contDiffAt
      (hball.mem_nhds hIR)
  have hD : DifferentiableAt ℝ (realPart h) I₀ := hC.differentiableAt (by norm_num)
  refine ⟨by simp [integrableOrbit], ?_, fun t => rfl⟩
  intro t _
  set z : (Fin n → ℝ) × (Fin n → ℝ) := integrableOrbit h θ₀ I₀ t with hzdef
  have hz2 : z.2 = I₀ := rfl
  have hev : KAM.realHamiltonian h f =ᶠ[nhds z] fun w => realPart h w.2 := by
    have : {w : (Fin n → ℝ) × (Fin n → ℝ) | w.2 ∈ actionBall n R} ∈ nhds z :=
      (hball.preimage continuous_snd).mem_nhds (by simpa [hz2] using hIR)
    filter_upwards [this] with w hw using realHamiltonian_eq_realPart hs hf w hw
  have hGd : DifferentiableAt ℝ (fun w : (Fin n → ℝ) × (Fin n → ℝ) => realPart h w.2) z := by
    have hD' : DifferentiableAt ℝ (realPart h) z.2 := by rw [hz2]; exact hD
    exact hD'.comp z differentiableAt_snd
  have hGf : fderiv ℝ (fun w : (Fin n → ℝ) × (Fin n → ℝ) => realPart h w.2) z =
      (fderiv ℝ (realPart h) I₀).comp (ContinuousLinearMap.snd ℝ _ _) := by
    have := hD.hasFDerivAt.comp z (hasFDerivAt_snd (𝕜 := ℝ) (E := Fin n → ℝ)
      (F := Fin n → ℝ) (p := z))
    exact this.fderiv
  refine ⟨by simpa [hz2] using hIR, hev.differentiableAt_iff.2 hGd, ?_⟩
  have hvf : KAM.hamiltonianVectorField (KAM.realHamiltonian h f) z =
      (KAM.frequencyMap h I₀, 0) := by
    unfold KAM.hamiltonianVectorField
    rw [hev.fderiv_eq, hGf]
    ext i
    · simp [KAM.frequencyMap]; rfl
    · simp
  rw [hvf]
  have h1 : HasDerivAt (fun t : ℝ => θ₀ + t • KAM.frequencyMap h I₀)
      (KAM.frequencyMap h I₀) t := by
    have h0 : HasDerivAt (fun t : ℝ => t • KAM.frequencyMap h I₀) (KAM.frequencyMap h I₀) t := by
      simpa using (hasDerivAt_id' t).smul_const (KAM.frequencyMap h I₀)
    exact h0.const_add θ₀
  exact h1.prodMk (hasDerivAt_const t I₀)

end KAM.Nekhoroshev
