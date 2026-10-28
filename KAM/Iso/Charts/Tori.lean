/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Iso.Charts.Apply
import KAM.Head.Parameters
import KAM.Strip.Bridges
import Mathlib.Analysis.Normed.Operator.Prod

/-!
# Part 3 (local charts): uniform constants and the invariant tori on both sides

Package I3-5 of `docs/tracks/I/design/PART123-LEAN-DESIGN.md`, nodes `bpI:p3:uniform` and
`bpI:p3:tori`. `n = 2`, `τ = 2`.

* `uniform` (`bpI:p3:uniform`, existence form over a finite family): a common `C_K` and `ε₁`.
* `tori` (`bpI:p3:tori`, audit fix F2): the cover by the patches of `cover`; before the
  perturbation quantifiers, for every patch, its centre in `closure B'`, `p.W ⊆ 𝒰_c`, the chart
  identity `p.m = m_c` and the two rays fixed per patch and sign; then, for `ε < ε₁`, the two tori
  (T1)-(T7) whose frequencies lie on exactly those rays. It assembles `cover`, `patch_rays`,
  `apply` (per patch and sign, a finite choice of the constants), `uniform`, `points`, and the
  Cauchy estimate `KAM.cauchy_strip` for (T4).
* `part3_tori_of`: the projection of `tori` to Part 5's generic interface (`ChartCover`,
  `ToriExistence`), forgetting the charts and rays.

Part 3 applies I-G1 and G3 only through the premises `IG1Statement` and `G3Statement`.
-/

public section

open scoped Matrix.Norms.Operator
open Matrix Set Metric Topology

namespace KAM.Iso.Charts

open KAM KAM.Torus KAM.Iso.Confinement
open KAM.Head (unperturbedTorus muParam Fconst Mconst)

variable {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ} {B' : Set (Fin 2 → ℝ)} {η : ℝ}

/-- `bpI:p3:uniform` (existence form over a finite family; only bounds are used downstream). -/
theorem uniform {ι : Type*} (P : Finset ι) (CK0 ε0 : ι → ℝ) (hCK : ∀ i ∈ P, 0 < CK0 i)
    (hε : ∀ i ∈ P, 0 < ε0 i) {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    ∃ C_K ε₁ : ℝ, 0 < C_K ∧ 0 < ε₁ ∧ ε₁ ≤ 1 ∧ ε₁ ≤ a ∧ ε₁ ≤ b / (2 * C_K) ∧
      ∀ i ∈ P, CK0 i ≤ C_K ∧ ε₁ ≤ ε0 i := by
  classical
  have _ := hCK
  obtain ⟨M, hM⟩ := (P.image CK0).exists_le
  obtain ⟨N, hN⟩ := (P.image fun i => (ε0 i)⁻¹).exists_le
  have hCKpos : 0 < max M 1 := lt_max_of_lt_right one_pos
  have hNpos : 0 < max N 1 := lt_max_of_lt_right one_pos
  refine ⟨max M 1, min (min 1 (min a (b / (2 * max M 1)))) (max N 1)⁻¹, hCKpos,
    lt_min (lt_min one_pos (lt_min ha (by positivity))) (inv_pos.2 hNpos),
    (min_le_left _ _).trans (min_le_left _ _),
    (min_le_left _ _).trans ((min_le_right _ _).trans (min_le_left _ _)),
    (min_le_left _ _).trans ((min_le_right _ _).trans (min_le_right _ _)), fun i hi => ?_⟩
  refine ⟨(hM _ (Finset.mem_image_of_mem _ hi)).trans (le_max_left _ _),
    (min_le_right _ _).trans ?_⟩
  have h1 : (ε0 i)⁻¹ ≤ max N 1 :=
    (hN _ (Finset.mem_image_of_mem _ hi)).trans (le_max_left _ _)
  calc (max N 1)⁻¹ ≤ ((ε0 i)⁻¹)⁻¹ := inv_anti₀ (inv_pos.2 (hε i hi)) h1
    _ = ε0 i := inv_inv _

/-! ### The output of `apply`, packaged -/

/-- (O1)–(O6) of the application of I-G1 at the flat torus `K⁰(I)` of `h + f`, `ω = s ω*`, `e = F₁ε`,
`E₀ = E`: the last conjunct of `apply` for a given pair `(K_∞, s_∞)`. -/
def ApplyOut (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) (h : (Fin 2 → ℂ) → ℂ) (B' : Set (Fin 2 → ℝ))
    (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε E : ℝ) (ωs I : Fin 2 → ℝ) (s γ C₂ C₃ : ℝ)
    (Kinf : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)) (sinf : ℝ) : Prop :=
  1 < sinf ∧ sinf < sigmaOmegaConst h B B' ∧
    DifferentiableOn ℂ Kinf (complexStrip 2 (rhoInf s₀)) ∧
    IsPrimaryOnStrip Kinf (rhoInf s₀) ∧ IsRealOnReals Kinf ∧
    (∀ θ ∈ complexStrip 2 (rhoInf s₀), invarianceError (totalH h f) Kinf (sinf • ωs) θ = 0) ∧
    (∀ θ ∈ complexStrip 2 (rhoInf s₀), totalH h f (Kinf θ) = (E : ℂ)) ∧
    (∀ θ ∈ complexStrip 2 (rhoInf s₀),
      Metric.ball (Kinf θ) (muParam s₀ r₀ / 2) ⊆ fractD B s₀ r₀ ∧
      ‖fderiv ℂ Kinf θ‖ ≤ sigmaKConst s₀ r₀ - muParam s₀ r₀ / 2 ∧
      ‖Kinf θ - unperturbedTorus I θ‖ ≤
        C₂ * (Fconst 2 s₀ r₀ 1 * ε) / (γ ^ 2 * rhoIso s₀ ^ 4)) ∧
    ‖sinf • ωs - s • ωs‖ ≤ C₃ * (Fconst 2 s₀ r₀ 1 * ε) / (γ ^ 2 * rhoIso s₀ ^ 4)

/-- The local application of `apply` at the constants `C₁ C₂ C₃` of a patch with centre `c` and a
ray `(γ, ω*, m)`: for every admissible `f, ε` and every energy `E` in the window, a pair
`(K_∞, s_∞)` with the output `ApplyOut` at `I = Ψ(E, m)`, `s = ‖∇h(I)‖/‖ω*‖`. -/
def ApplyLocal (B : Set (Fin 2 → ℝ)) (s₀ r₀ : ℝ) (h : (Fin 2 → ℂ) → ℂ) (B' : Set (Fin 2 → ℝ))
    (c : Fin 2 → ℝ) (δE : ℝ) (Ψ : ℝ × ℝ → Fin 2 → ℝ) (γ m : ℝ) (ωs : Fin 2 → ℝ)
    (C₁ C₂ C₃ : ℝ) : Prop :=
  ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ), PerturbData B s₀ r₀ f ε → ε ≤ 1 →
    ε ≤ epsT h B B' s₀ r₀ → ε < γ ^ 4 * rhoIso s₀ ^ 8 / (C₁ * Fconst 2 s₀ r₀ 1) →
    ∀ E : ℝ, |E - realPart h c| ≤ δE →
    ∃ (Kinf : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)) (sinf : ℝ),
      ApplyOut B s₀ r₀ h B' f ε E ωs (Ψ (E, m)) (‖frequencyMap h (Ψ (E, m))‖ / ‖ωs‖) γ C₂ C₃
        Kinf sinf

/-- The constants of `apply` with their local application, as `ApplyLocal` (the unfolded
conclusion of `apply`, without the frozen body). -/
theorem applyLocal_exists (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty)
    (hG1 : IG1Statement) {δE δm ρc : ℝ} {c : Fin 2 → ℝ} {W : Set (Fin 2 → ℝ)}
    {Ψ : ℝ × ℝ → Fin 2 → ℝ} (hp : IsPatch h B r₀ B' (eta1 η B B') c W Ψ δE δm ρc) {γ m : ℝ}
    {ωs : Fin 2 → ℝ} (hray : IsRay h B B' c γ ωs m) (hm : |m| < δm) :
    ∃ C₁ C₂ C₃ : ℝ, 0 < C₁ ∧ 0 < C₂ ∧ 0 < C₃ ∧ ApplyLocal B s₀ r₀ h B' c δE Ψ γ m ωs C₁ C₂ C₃ := by
  obtain ⟨C₁, C₂, C₃, h₁, h₂, h₃, -, H⟩ := apply hd hne hG1 hp hray hm
  exact ⟨C₁, C₂, C₃, h₁, h₂, h₃, H⟩

/-! ### Elementary facts for the assembly -/

/-- The inclusion `ι : ℝ² → ℂ²` is an isometry for the max norms. -/
theorem norm_toC (v : Fin 2 → ℝ) : ‖toC v‖ = ‖v‖ := by
  refine le_antisymm ((pi_norm_le_iff_of_nonneg (norm_nonneg v)).2 fun i => ?_)
    ((pi_norm_le_iff_of_nonneg (norm_nonneg _)).2 fun i => ?_)
  · simpa using norm_le_pi_norm v i
  · simpa using norm_le_pi_norm (toC v) i

/-- Cauchy estimates for (T4): if `K` is holomorphic on `T_ρ` and `‖K - (θ, ι I)‖ ≤ A` there, the
derivatives of `u = K₁ - θ` and `v = K₂ - ι I` are at most `4 A/ρ` on `T_{ρ/2}`. -/
theorem du_dv_bound {K : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)} {I : Fin 2 → ℝ} {ρ A : ℝ}
    (hρ : 0 < ρ) (hK : DifferentiableOn ℂ K (complexStrip 2 ρ))
    (hA : ∀ θ ∈ complexStrip 2 ρ, ‖K θ - (θ, toC I)‖ ≤ A) :
    (∀ θ ∈ complexStrip 2 (ρ / 2), ‖fderiv ℂ (fun θ => (K θ).1 - θ) θ‖ ≤ 4 * A / ρ) ∧
    ∀ θ ∈ complexStrip 2 (ρ / 2), ‖fderiv ℂ (fun θ => (K θ).2 - toC I) θ‖ ≤ 4 * A / ρ := by
  set u : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ) := fun θ => K θ - (θ, toC I) with hu
  have hud : DifferentiableOn ℂ u (complexStrip 2 ρ) :=
    hK.sub (differentiable_id.prodMk (differentiable_const _)).differentiableOn
  have hC := (cauchy_strip hud (A := A) hA (δ := ρ / 2) (by positivity)).2
  have hρ2 : ρ - ρ / 2 = ρ / 2 := by ring
  rw [hρ2] at hC
  have hbound : ∀ θ ∈ complexStrip 2 (ρ / 2), ‖fderiv ℂ u θ‖ ≤ 4 * A / ρ := by
    intro θ hθ
    refine (hC θ hθ).trans (le_of_eq ?_)
    push_cast
    field_simp
    ring
  have hat : ∀ θ ∈ complexStrip 2 (ρ / 2), HasFDerivAt u (fderiv ℂ u θ) θ := by
    intro θ hθ
    have hθ' : θ ∈ complexStrip 2 ρ :=
      KAM.Head.complexStrip_mono (by linarith) hθ
    exact ((hud.differentiableAt ((KAM.isOpen_complexStrip 2 ρ).mem_nhds hθ'))).hasFDerivAt
  refine ⟨fun θ hθ => ?_, fun θ hθ => ?_⟩
  · have h1 := (hat θ hθ).fst
    have h2 : (fun θ => (K θ).1 - θ) = fun θ => (u θ).1 := by
      funext x; simp [hu]
    rw [h2, h1.fderiv]
    exact (ContinuousLinearMap.opNorm_comp_le _ _).trans
      ((mul_le_of_le_one_left (norm_nonneg _) (ContinuousLinearMap.norm_fst_le ℂ _ _)).trans
        (hbound θ hθ))
  · have h1 := (hat θ hθ).snd
    have h2 : (fun θ => (K θ).2 - toC I) = fun θ => (u θ).2 := by
      funext x; simp [hu]
    rw [h2, h1.fderiv]
    exact (ContinuousLinearMap.opNorm_comp_le _ _).trans
      ((mul_le_of_le_one_left (norm_nonneg _) (ContinuousLinearMap.norm_snd_le ℂ _ _)).trans
        (hbound θ hθ))

theorem toC_sub (a b : Fin 2 → ℝ) : toC (a - b) = toC a - toC b := by
  ext i; simp [toC]

/-- (T1)–(T7) for one sign from the output `ApplyOut` of `apply` at `I = Ψ(E, m)`: the closeness
constants `C₂ F₁/(γ²ρ⁴)`, `C₃ F₁/(γ²ρ⁴)` are at most `C_K`, `C_K ε < η₁/2`. -/
theorem toriSide_of_applyOut (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty)
    {δE δm ρc : ℝ} {c : Fin 2 → ℝ} {W : Set (Fin 2 → ℝ)} {Ψ : ℝ × ℝ → Fin 2 → ℝ}
    (hp : IsPatch h B r₀ B' (eta1 η B B') c W Ψ δE δm ρc) {γ m : ℝ} {ωs : Fin 2 → ℝ}
    (hray : IsRay h B B' c γ ωs m) (hm : |m| < δm) {C₂ C₃ C_K ε : ℝ}
    (hCK : Fconst 2 s₀ r₀ 1 * max C₂ C₃ / (γ ^ 2 * rhoIso s₀ ^ 4) ≤ C_K) (hε0 : 0 ≤ ε)
    {f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ} {I₀ : Fin 2 → ℝ} (hI₀ : I₀ ∈ closure B')
    (hI₀c : ‖I₀ - c‖ < ρc) {E : ℝ} (hE : |E - realPart h c| ≤ δE)
    (hεK : C_K * ε < eta1 η B B' / 2) {Kinf : (Fin 2 → ℂ) → (Fin 2 → ℂ) × (Fin 2 → ℂ)}
    {sinf : ℝ}
    (hout : ApplyOut B s₀ r₀ h B' f ε E ωs (Ψ (E, m))
      (‖frequencyMap h (Ψ (E, m))‖ / ‖ωs‖) γ C₂ C₃ Kinf sinf) :
    ToriSide B s₀ r₀ h B' η (eta1 η B B') f ε C_K E I₀ Ψ m Kinf (Ψ (E, m)) (sinf • ωs) := by
  have hs := hd.hs
  have hr := hd.hr
  obtain ⟨hs1, hs2, hdiff, hprim, hreal, hinv, hen, hk, hsc⟩ := hout
  obtain ⟨-, -, hIE, -, hpar, hsc2, hsc4, -, -, hIB, hnear, -⟩ := points hd hne hp hray hm hE
  have hρ : 0 < rhoInf s₀ := ApplyAux.rhoInf_pos hs
  have hF1 : 1 ≤ Fconst 2 s₀ r₀ 1 := ApplyAux.one_le_Fconst hs hr
  have hD : 0 < γ ^ 2 * rhoIso s₀ ^ 4 := by
    have := ApplyAux.rhoIso_pos hs
    have := hray.1
    positivity
  have hFε : 0 ≤ Fconst 2 s₀ r₀ 1 * ε := mul_nonneg (by linarith) hε0
  have hgen : ∀ C : ℝ, C ≤ max C₂ C₃ →
      C * (Fconst 2 s₀ r₀ 1 * ε) / (γ ^ 2 * rhoIso s₀ ^ 4) ≤ C_K * ε := by
    intro C hC
    calc C * (Fconst 2 s₀ r₀ 1 * ε) / (γ ^ 2 * rhoIso s₀ ^ 4)
        ≤ max C₂ C₃ * (Fconst 2 s₀ r₀ 1 * ε) / (γ ^ 2 * rhoIso s₀ ^ 4) := by gcongr
      _ = (Fconst 2 s₀ r₀ 1 * max C₂ C₃ / (γ ^ 2 * rhoIso s₀ ^ 4)) * ε := by ring
      _ ≤ C_K * ε := by gcongr
  have hclose : ∀ θ ∈ complexStrip 2 (rhoInf s₀), ‖Kinf θ - (θ, toC (Ψ (E, m)))‖ ≤ C_K * ε :=
    fun θ hθ => (hk θ hθ).2.2.trans (hgen C₂ (le_max_left _ _))
  obtain ⟨hdu, hdv⟩ := du_dv_bound hρ hdiff hclose
  refine
    { holo := hdiff, primary := hprim, real := hreal, invariant := hinv, energy := hen,
      close := hclose, du := fun θ hθ => ?_, dv := fun θ hθ => ?_, base := rfl, ray := ?_,
      level := hIE, near := ⟨hIB, hnear _ hI₀c⟩, action := ?_,
      margins := fun θ hθ => ⟨(hk θ hθ).1, (hk θ hθ).2.1⟩ }
  · rw [mul_assoc]; exact hdu θ hθ
  · rw [mul_assoc]; exact hdv θ hθ
  · refine ⟨γ, ωs, sinf, ‖frequencyMap h (Ψ (E, m))‖ / ‖ωs‖, hray.1, hray.2.1, rfl, hs1, hs2,
      hpar, hsc2, hsc4, ?_⟩
    rw [hpar]
    exact hsc.trans (hgen C₃ (le_max_right _ _))
  · intro x
    have hx : toC x ∈ complexStrip 2 (rhoInf s₀) := fun i => by simpa [toC] using hρ
    obtain ⟨z, hz⟩ := hreal x
    have hz' : Kinf (toC x) = (toC z.1, toC z.2) := hz
    have h2 : ‖(Kinf (toC x)).2 - toC (Ψ (E, m))‖ ≤ C_K * ε :=
      (norm_snd_le (Kinf (toC x) - (toC x, toC (Ψ (E, m))))).trans (hclose (toC x) hx)
    have hKJ : (Kinf (toC x)).2 = toC z.2 := by rw [hz']
    rw [hKJ, ← toC_sub, norm_toC] at h2
    have hη1 : eta1 η B B' ≤ η := min_le_left _ _
    have hη2 : eta1 η B B' ≤ dB B B' / 2 := min_le_right _ _
    have hnear' : ‖Ψ (E, m) - I₀‖ < eta1 η B B' / 2 := hnear _ hI₀c
    have h3 : ‖z.2 - I₀‖ < eta1 η B B' := by
      calc ‖z.2 - I₀‖ = ‖(z.2 - Ψ (E, m)) + (Ψ (E, m) - I₀)‖ := by rw [sub_add_sub_cancel]
        _ ≤ ‖z.2 - Ψ (E, m)‖ + ‖Ψ (E, m) - I₀‖ := norm_add_le _ _
        _ < eta1 η B B' := by linarith
    refine ⟨?_, z.2, ?_, hKJ⟩
    · rw [hKJ, ← toC_sub, norm_toC]
      linarith
    · refine Metric.mem_cthickening_of_dist_le _ I₀ _ _ hI₀ ?_
      rw [dist_eq_norm]
      linarith

end KAM.Iso.Charts
