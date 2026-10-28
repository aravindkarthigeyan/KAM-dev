/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Iso.Charts.Constants
public import KAM.Iso.Linear.Tools
public import KAM.Head.Unperturbed
import KAM.Head.H1
import KAM.Head.HamiltonianField

/-!
# Part 3 (local charts): hypothesis (d) and the flat torus

Package I3-4 of `docs/tracks/I/design/PART123-LEAN-DESIGN.md`, nodes `bpI:p3:hypothesis-d` and
`bpI:p3:torus`. `n = 2`, `τ = 2`.

* `hypothesis_d` (`bpI:p3:hypothesis-d`): (I1)-(I4) of I-G1 for `(𝔇, h + f)` with `M = Mconst`,
  and `|D^j f| ≤ F_j ε`. A wrapper on track K's `derivative_bounds_design`, `h1_domainD_*`,
  `norm_iteratedFDeriv_hbold_le`, `cbar_mul_le_derivConstM` (none of which needs the Kolmogorov
  field of `KAM.Head.Data`).
* `torus` (`bpI:p3:torus`): the flat torus `K⁰(θ) = (θ, I)` is an approximately invariant torus of
  `h + f` at the frequency `∇h(I) = s' ω*`, with the extended torsion `𝖡_h(I) + R(θ)`,
  `R = flatRemainder`, a bounded perturbation, an invertible average for small `ε`, and an energy
  average within `ε` of `h(I)`.

Track K's `KAM.Head.unperturbed` carries `KAM.Head.Data` (Kolmogorov); the flat-torus facts are
restated here for `HeadData` and `PerturbData`, with the same proofs (`TorusAux`).
-/

public section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Set Metric Filter Topology

namespace KAM.Iso.Charts

open KAM KAM.Torus KAM.Iso.Confinement
open KAM.Head (unperturbedTorus muParam Fconst Mconst actionHessian)

variable {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ} {B' : Set (Fin 2 → ℝ)} {η : ℝ}

/-! ### `hypothesis-d` -/

/-- `bpI:p3:hypothesis-d`: (I1)–(I4) for `(𝔇, h + f)` with `M = Mconst`, and `|D^j f| ≤ F_j ε`. -/
theorem hypothesis_d (hd : HeadData B s₀ r₀ h B' η) {f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ} {ε : ℝ}
    (hf : PerturbData B s₀ r₀ f ε) (hε1 : ε ≤ 1) :
    IsOpen (fractD B s₀ r₀) ∧
    (∀ z ∈ fractD B s₀ r₀, ∀ k : Fin 2 → ℤ, (z.1 + (fun i => (k i : ℂ)), z.2) ∈ fractD B s₀ r₀) ∧
    DifferentiableOn ℂ (totalH h f) (fractD B s₀ r₀) ∧
    (∀ z ∈ fractD B s₀ r₀, ∀ k : Fin 2 → ℤ,
      totalH h f (z.1 + (fun i => (k i : ℂ)), z.2) = totalH h f z) ∧
    (∀ θ I : Fin 2 → ℝ, ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ fractD B s₀ r₀ →
      (totalH h f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) ∧
    (∀ z ∈ fractD B s₀ r₀, ‖fderiv ℂ (totalH h f) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖hamiltonianVectorFieldℂ (totalH h f) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖fderiv ℂ (hamiltonianVectorFieldℂ (totalH h f)) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ (totalH h f)) z‖ ≤ Mconst s₀ r₀ B h ∧
      ‖iteratedFDeriv ℂ 2 (totalH h f) z‖ ≤ Mconst s₀ r₀ B h) ∧
    ∀ z ∈ fractD B s₀ r₀, (∀ j ∈ ({1, 2, 3} : Set ℕ), ‖iteratedFDeriv ℂ j f z‖ ≤ Fconst 2 s₀ r₀ j * ε) ∧
      ‖fderiv ℂ f z‖ ≤ Fconst 2 s₀ r₀ 1 * ε ∧ ‖hamiltonianVectorFieldℂ f z‖ ≤ Fconst 2 s₀ r₀ 1 * ε := by
  have hs := hd.hs
  have hr := hd.hr
  obtain ⟨-, -, hc, hdd⟩ := KAM.Head.derivative_bounds_design hs hr hd.bounded hd.holo hf.holo
    hf.bound
  have hhalf : ∀ {z : (Fin 2 → ℂ) × (Fin 2 → ℂ)}, z ∈ fractD B s₀ r₀ → z.2 ∈ actionNbhd B r₀ :=
    fun hz => KAM.Head.actionNbhd_mono B (half_le_self hr.le) hz.2
  refine ⟨KAM.Head.isOpen_domainD 2 s₀ r₀ B, fun z hz k => KAM.Head.h1_domainD_add_intCast hz k,
    ?_, ?_, ?_, ?_, ?_⟩
  · have h1 : DifferentiableOn ℂ (fun z : (Fin 2 → ℂ) × (Fin 2 → ℂ) => h z.2)
        (fractD B s₀ r₀) :=
      hd.holo.comp differentiableOn_snd fun z hz => hhalf hz
    exact h1.add (hf.holo.mono (KAM.Head.h1_domainD_subset_domain 2 hs hr B))
  · intro z hz k
    have := hf.periodic z (KAM.Head.h1_domainD_subset_domain 2 hs hr B hz) k
    simp only [totalH]
    rw [this]
  · intro θ I hz
    have hI : toC I ∈ actionNbhd B r₀ := hhalf hz
    simp only [totalH, Complex.add_im]
    rw [hd.real I hI, hf.real θ I hI, add_zero]
  · intro z hz
    have hM := (hdd hε1 z hz)
    have h2 : ‖iteratedFDeriv ℂ 2 (totalH h f) z‖ ≤ Mconst s₀ r₀ B h := by
      rw [KAM.Head.Mconst_eq_derivConstM]
      exact (KAM.Head.norm_iteratedFDeriv_hbold_le hs hr hd.bounded hd.holo hf.holo hf.bound hz
        (j := 2) (by simp)).trans
        (KAM.Head.cbar_mul_le_derivConstM hs hr (KAM.Head.hBound_nonneg h B r₀) hε1 (by norm_num))
    exact ⟨hM.1, hM.2.1, hM.2.2.1, hM.2.2.2, h2⟩
  · intro z hz
    obtain ⟨hj, hX, -⟩ := hc z hz
    refine ⟨hj, ?_, hX⟩
    have := hj 1 (by simp)
    rwa [norm_iteratedFDeriv_one] at this


/-! ### The flat torus: pointwise identities -/

namespace TorusAux

open Filter Topology

variable {f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ} {ε : ℝ} {I : Fin 2 → ℝ}

theorem toC_mem_half (hr : 0 < r₀) (hI : I ∈ B) : toC I ∈ actionNbhd B (r₀ / 2) :=
  ⟨I, hI, by
    show ‖toC I - toC I‖ < r₀ / 2
    rw [sub_self, norm_zero]
    exact half_pos hr⟩

theorem unperturbed_mem (hr : 0 < r₀) (hI : I ∈ B) {θ : Fin 2 → ℂ}
    (hθ : θ ∈ complexStrip 2 (min s₀ 1 / 2)) : unperturbedTorus I θ ∈ fractD B s₀ r₀ :=
  ⟨hθ, toC_mem_half hr hI⟩

theorem real_mem (hs : 0 < s₀) (hr : 0 < r₀) (hI : I ∈ B) (x : Fin 2 → ℝ) :
    ((toC x, toC I) : (Fin 2 → ℂ) × (Fin 2 → ℂ)) ∈ fractD B s₀ r₀ :=
  unperturbed_mem hr hI (ofReal_mem_complexStrip (half_pos (KAM.Head.stripWidth_pos hs)) x)

theorem differentiableOn_totalH (hd : HeadData B s₀ r₀ h B' η) (hf : PerturbData B s₀ r₀ f ε) :
    DifferentiableOn ℂ (totalH h f) (fractD B s₀ r₀) := by
  have h1 : DifferentiableOn ℂ (fun z : (Fin 2 → ℂ) × (Fin 2 → ℂ) => h z.2) (fractD B s₀ r₀) :=
    hd.holo.comp differentiableOn_snd fun z hz =>
      KAM.Head.actionNbhd_mono B (half_le_self hd.hr.le) hz.2
  exact h1.add (hf.holo.mono (KAM.Head.h1_domainD_subset_domain 2 hd.hs hd.hr B))

theorem differentiableAt_h (hd : HeadData B s₀ r₀ h B' η) {w : (Fin 2 → ℂ) × (Fin 2 → ℂ)}
    (hw : w ∈ fractD B s₀ r₀) : DifferentiableAt ℂ h w.2 :=
  hd.holo.differentiableAt ((KAM.Head.isOpen_actionNbhd B r₀).mem_nhds
    (KAM.Head.actionNbhd_mono B (half_le_self hd.hr.le) hw.2))

theorem differentiableAt_f (hd : HeadData B s₀ r₀ h B' η) (hf : PerturbData B s₀ r₀ f ε)
    {w : (Fin 2 → ℂ) × (Fin 2 → ℂ)} (hw : w ∈ fractD B s₀ r₀) : DifferentiableAt ℂ f w :=
  hf.holo.differentiableAt (((isOpen_complexStrip 2 s₀).prod
    (KAM.Head.isOpen_actionNbhd B r₀)).mem_nhds
    (KAM.Head.h1_domainD_subset_domain 2 hd.hs hd.hr B hw))

/-- `D(h + f)(w) = Dh(w.2) ∘ pr₂ + Df(w)` on `𝔇`. -/
theorem fderiv_totalH (hd : HeadData B s₀ r₀ h B' η) (hf : PerturbData B s₀ r₀ f ε)
    {w : (Fin 2 → ℂ) × (Fin 2 → ℂ)} (hw : w ∈ fractD B s₀ r₀) :
    fderiv ℂ (totalH h f) w =
      (fderiv ℂ h w.2).comp (ContinuousLinearMap.snd ℂ (Fin 2 → ℂ) (Fin 2 → ℂ)) +
        fderiv ℂ f w := by
  have h1 : HasFDerivAt (fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) => h w.2)
      ((fderiv ℂ h w.2).comp (ContinuousLinearMap.snd ℂ (Fin 2 → ℂ) (Fin 2 → ℂ))) w :=
    (differentiableAt_h hd hw).hasFDerivAt.comp w hasFDerivAt_snd
  exact (h1.add (differentiableAt_f hd hf hw).hasFDerivAt).fderiv

/-- `∂²_I (h + f) = ∇²h + ∂²_I f` on `𝔇`. -/
theorem actionHessian_totalH (hd : HeadData B s₀ r₀ h B' η) (hf : PerturbData B s₀ r₀ f ε)
    {z : (Fin 2 → ℂ) × (Fin 2 → ℂ)} (hz : z ∈ fractD B s₀ r₀) :
    actionHessian (totalH h f) z = KAM.Head.hessian h z.2 + actionHessian f z := by
  have hopen : IsOpen (fractD B s₀ r₀) := KAM.Head.isOpen_domainD 2 s₀ r₀ B
  have hr := hd.hr
  have hz2 : z.2 ∈ actionNbhd B r₀ := KAM.Head.actionNbhd_mono B (half_le_self hr.le) hz.2
  have hfd_h : DifferentiableAt ℂ (fderiv ℂ h) z.2 :=
    (differentiableOn_fderiv_of_isOpen (KAM.Head.isOpen_actionNbhd B r₀)
      hd.holo).differentiableAt ((KAM.Head.isOpen_actionNbhd B r₀).mem_nhds hz2)
  have hfd_f : DifferentiableAt ℂ (fderiv ℂ f) z :=
    (differentiableOn_fderiv_of_isOpen ((isOpen_complexStrip 2 s₀).prod
      (KAM.Head.isOpen_actionNbhd B r₀)) hf.holo).differentiableAt
      (((isOpen_complexStrip 2 s₀).prod (KAM.Head.isOpen_actionNbhd B r₀)).mem_nhds
        (KAM.Head.h1_domainD_subset_domain 2 hd.hs hr B hz))
  ext i j
  have hev : (fun w => fderiv ℂ (totalH h f) w (0, Pi.single i 1)) =ᶠ[𝓝 z]
      fun w => fderiv ℂ h w.2 (Pi.single i 1) + fderiv ℂ f w (0, Pi.single i 1) :=
    Filter.eventually_of_mem (hopen.mem_nhds hz) fun w hw => by
      beta_reduce
      rw [fderiv_totalH hd hf hw]
      rfl
  have hg : DifferentiableAt ℂ (fun I' => fderiv ℂ h I' (Pi.single i 1)) z.2 :=
    hfd_h.clm_apply (differentiableAt_const _)
  have hk : DifferentiableAt ℂ (fun w => fderiv ℂ f w (0, Pi.single i 1)) z :=
    hfd_f.clm_apply (differentiableAt_const _)
  have hgs : HasFDerivAt (fun w : (Fin 2 → ℂ) × (Fin 2 → ℂ) => fderiv ℂ h w.2 (Pi.single i 1))
      ((fderiv ℂ (fun I' => fderiv ℂ h I' (Pi.single i 1)) z.2).comp
        (ContinuousLinearMap.snd ℂ (Fin 2 → ℂ) (Fin 2 → ℂ))) z :=
    hg.hasFDerivAt.comp z hasFDerivAt_snd
  simp only [actionHessian, KAM.Head.hessian, Matrix.of_apply, Matrix.add_apply]
  rw [hev.fderiv_eq, (hgs.fun_add hk.hasFDerivAt).fderiv]
  simp

/-- For `θ ∈ T_{s/2}` the torsion of `K⁰` is `∂²_I (h + f)(θ, I)`, whatever `ω` is. -/
theorem torsion_flat (hd : HeadData B s₀ r₀ h B' η) (hf : PerturbData B s₀ r₀ f ε)
    (hI : I ∈ B) (ω : Fin 2 → ℝ) {θ : Fin 2 → ℂ} (hθ : θ ∈ complexStrip 2 (min s₀ 1 / 2)) :
    torsion (totalH h f) (unperturbedTorus I) ω θ = actionHessian (totalH h f) (θ, toC I) := by
  have hz : ((θ, toC I) : (Fin 2 → ℂ) × (Fin 2 → ℂ)) ∈ fractD B s₀ r₀ :=
    unperturbed_mem hd.hr hI hθ
  have hopen : IsOpen (fractD B s₀ r₀) := KAM.Head.isOpen_domainD 2 s₀ r₀ B
  have hdiff := differentiableOn_totalH hd hf
  have hX := KAM.Head.fderiv_hamiltonianVectorField hopen hdiff hz
  have hfd : DifferentiableAt ℂ (fderiv ℂ (totalH h f)) (θ, toC I) :=
    (differentiableOn_fderiv_of_isOpen hopen hdiff).differentiableAt (hopen.mem_nhds hz)
  have hK : unperturbedTorus I θ = (θ, toC I) := rfl
  ext i j
  rw [KAM.Head.unperturbed_actionHessian_apply hfd]
  simp only [torsion, hK, KAM.Head.normalFrame_unperturbedTorus, hX]
  simp [dotℂ, omegaZero, KAM.Head.hamJ_apply, Pi.single_apply]

end TorusAux

end KAM.Iso.Charts
