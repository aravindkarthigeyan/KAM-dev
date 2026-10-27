/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Head.Data
public import KAM.Head.PhaseAverage
public import KAM.Frozen.Defs.InvarianceError
public import KAM.Frozen.Defs.IsPrimaryOnStrip
public import KAM.Strip.Periodic
public import KAM.Torus.Basic

/-!
# Phase shifts

Blueprint Part 4, `bp:p4:shift` with its steps `step:p4:shift-translation` and
`step:p4:shift-phase`. For a torus `K : ℂⁿ → ℂⁿ × ℂⁿ`, holomorphic and primary on a strip `T_ρ`
(`ρ > 0`, the standing convention that strips have positive width) and real on reals, and
`a ∈ ℝⁿ`, the phase shift is `K^{[a]}(θ) = K(θ + ι a)` (`KAM.Head.phaseShift`).

* `step:p4:shift-translation`: `KAM.Head.differentiableOn_phaseShift`,
  `KAM.Head.isPrimaryOnStrip_phaseShift`, `KAM.Head.isRealOnReals_phaseShift`,
  `KAM.Head.fderiv_phaseShift` (clause (a)); `KAM.Head.invarianceError_phaseShift` (clause (b));
  `KAM.Head.phaseShift_transfer` (clause (c), for an arbitrary pointwise property of the value and
  the derivative), with the two instances `KAM.Head.norm_fderiv_phaseShift_le` and
  `KAM.Head.ball_phaseShift_subset`.
* `step:p4:shift-phase`: `KAM.Head.phaseAverage_phaseShift` (`ph(K^{[a]}) = ph(K) + a`, using
  `bp:p1:periodic-average`) for clause (d), and `KAM.Head.norm_phaseAverage_le` and
  `KAM.Head.norm_phaseShift_sub_le` for clause (e).
* `KAM.Head.phase_shift` is `bp:p4:shift`, clauses (a)–(e).
-/

@[expose] public noncomputable section

open MeasureTheory

namespace KAM.Head

variable {n : ℕ}

/-! ### Translation (`step:p4:shift-translation`) -/

/-- A real translation `θ ↦ θ + ι a` maps the strip `T_ρ` into itself. -/
theorem add_ofReal_mem_complexStrip {ρ : ℝ} {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ)
    (a : Fin n → ℝ) : θ + (fun i => (a i : ℂ)) ∈ complexStrip n ρ := by
  intro i
  simpa using hθ i

/-- Blueprint `bp:p4:shift` (a): `K^{[a]}` is holomorphic on `T_ρ`. -/
theorem differentiableOn_phaseShift {ρ : ℝ} {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (a : Fin n → ℝ) :
    DifferentiableOn ℂ (phaseShift K a) (complexStrip n ρ) :=
  hK.comp (differentiableOn_id.add_const _) fun _ hθ => add_ofReal_mem_complexStrip hθ a

/-- Blueprint `bp:p4:shift` (a): `K^{[a]}` is primary on `T_ρ` when `K` is. -/
theorem isPrimaryOnStrip_phaseShift {ρ : ℝ} {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : IsPrimaryOnStrip K ρ) (a : Fin n → ℝ) : IsPrimaryOnStrip (phaseShift K a) ρ := by
  intro θ hθ k
  simp only [phaseShift_apply]
  rw [add_right_comm]
  exact hK _ (add_ofReal_mem_complexStrip hθ a) k

/-- Blueprint `bp:p4:shift` (a): `K^{[a]}` is real on reals when `K` is. -/
theorem isRealOnReals_phaseShift {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : IsRealOnReals K) (a : Fin n → ℝ) : IsRealOnReals (phaseShift K a) := by
  intro x
  obtain ⟨z, hz⟩ := hK (x + a)
  refine ⟨z, ?_⟩
  simp only [phaseShift_apply]
  rw [← hz]
  congr 1
  funext i
  simp

/-- Blueprint `bp:p4:shift` (a): `DK^{[a]}(θ) = DK(θ + ι a)` (chain rule, for every `θ`). -/
theorem fderiv_phaseShift (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (a : Fin n → ℝ)
    (θ : Fin n → ℂ) :
    fderiv ℂ (phaseShift K a) θ = fderiv ℂ K (θ + fun i => (a i : ℂ)) :=
  fderiv_comp_add_right (f := K) (fun i => (a i : ℂ))

/-- Blueprint `bp:p4:shift` (b): the invariance error of `K^{[a]}` at `ω` is
`E_{K^{[a]}}(θ) = E_K(θ + ι a)`, for every Hamiltonian `H` and every `θ`. -/
theorem invarianceError_phaseShift (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω a : Fin n → ℝ) (θ : Fin n → ℂ) :
    invarianceError H (phaseShift K a) ω θ = invarianceError H K ω (θ + fun i => (a i : ℂ)) := by
  simp only [invarianceError, phaseShift_apply, fderiv_phaseShift]

/-- Blueprint `bp:p4:shift` (b): if `K` is invariant on `T_ρ` (zero invariance error), so is
`K^{[a]}`. -/
theorem invarianceError_phaseShift_eq_zero {ρ : ℝ} (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω a : Fin n → ℝ)
    (hinv : ∀ θ ∈ complexStrip n ρ, invarianceError H K ω θ = 0) :
    ∀ θ ∈ complexStrip n ρ, invarianceError H (phaseShift K a) ω θ = 0 := fun θ hθ => by
  rw [invarianceError_phaseShift]
  exact hinv _ (add_ofReal_mem_complexStrip hθ a)

/-- Blueprint `bp:p4:shift` (c): any pointwise property of the value and the derivative of `K`
on `T_ρ` transfers to `K^{[a]}`, since the strip is invariant under real translations. -/
theorem phaseShift_transfer {ρ : ℝ} {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (P : (Fin n → ℂ) × (Fin n → ℂ) → ((Fin n → ℂ) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ)) → Prop)
    (a : Fin n → ℝ) (hP : ∀ θ ∈ complexStrip n ρ, P (K θ) (fderiv ℂ K θ)) :
    ∀ θ ∈ complexStrip n ρ, P (phaseShift K a θ) (fderiv ℂ (phaseShift K a) θ) := fun θ hθ => by
  rw [fderiv_phaseShift]
  exact hP _ (add_ofReal_mem_complexStrip hθ a)

/-- Blueprint `bp:p4:shift` (c): a bound on `‖DK‖` on `T_ρ` transfers to `K^{[a]}`. -/
theorem norm_fderiv_phaseShift_le {ρ σ : ℝ} {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (a : Fin n → ℝ) (hσ : ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σ) :
    ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ (phaseShift K a) θ‖ ≤ σ :=
  phaseShift_transfer (fun _ L => ‖L‖ ≤ σ) a hσ

/-- Blueprint `bp:p4:shift` (c): containment of the balls around `K(θ)` in a set `𝔅` transfers
to `K^{[a]}`. -/
theorem ball_phaseShift_subset {ρ β : ℝ} {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (a : Fin n → ℝ) {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
    (hball : ∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) β ⊆ 𝔅) :
    ∀ θ ∈ complexStrip n ρ, Metric.ball (phaseShift K a θ) β ⊆ 𝔅 :=
  fun _ hθ => hball _ (add_ofReal_mem_complexStrip hθ a)

/-! ### Phase average (`step:p4:shift-phase`) -/

/-- The average of a constant over the unit cube is the constant. -/
theorem torusAverage_const (c : ℝ) : torusAverage (fun _ : Fin n → ℝ => c) = c := by
  unfold torusAverage
  rw [setIntegral_const, measureReal_def, volume_unitCube]
  simp

/-- A primary torus has `ℤⁿ`-periodic angle displacement along real points (coordinatewise):
`Re u_K(ι(x + e_j))_i = Re u_K(ιx)_i`. -/
theorem re_angleDisplacement_periodic {ρ : ℝ} (hρ : 0 < ρ)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : IsPrimaryOnStrip K ρ) (i j : Fin n)
    (x : Fin n → ℝ) :
    (angleDisplacement K (fun l => (((x + Pi.single j 1 : Fin n → ℝ) l : ℝ) : ℂ)) i).re =
      (angleDisplacement K (fun l => (x l : ℂ)) i).re := by
  have hx := ofReal_mem_complexStrip hρ x
  have h := Torus.primary_coordinatewise hK j hx
  have hcast : (fun l => (((x + Pi.single j 1 : Fin n → ℝ) l : ℝ) : ℂ)) =
      (fun l => (x l : ℂ)) + Pi.single j 1 := by
    funext l
    by_cases hl : l = j
    · subst hl; simp
    · simp [hl]
  rw [hcast]
  simp only [angleDisplacement_apply, h, Prod.fst_add, Pi.add_apply, Complex.sub_re,
    Complex.add_re]
  by_cases hij : i = j
  · subst hij; simp
  · simp [hij]

/-- Blueprint `bp:p4:shift` (d), step `step:p4:shift-phase`: `ph(K^{[a]}) = ph(K) + a`. The real
part of the angle displacement of `K^{[a]}` is `Re u_K(ι(x + a)) + a`, and `x ↦ Re u_K(ι x)` is
continuous and `1`-periodic, so its average is translation invariant (`bp:p1:periodic-average`). -/
theorem phaseAverage_phaseShift {ρ : ℝ} (hρ : 0 < ρ)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n ρ))
    (hprim : IsPrimaryOnStrip K ρ) (a : Fin n → ℝ) :
    phaseAverage (phaseShift K a) = phaseAverage K + a := by
  funext i
  set g : (Fin n → ℝ) → ℝ := fun x => (angleDisplacement K (fun l => (x l : ℂ)) i).re with hg
  have hgc : Continuous g :=
    Complex.continuous_re.comp
      ((continuous_apply i).comp (continuous_angleDisplacement_ofReal hρ hK))
  have hgp : ∀ (j : Fin n) x, g (x + Pi.single j 1) = g x := fun j x =>
    re_angleDisplacement_periodic hρ hprim i j x
  have key : ∀ x, (angleDisplacement (phaseShift K a) (fun l => (x l : ℂ)) i).re =
      g (x + a) + a i := by
    intro x
    have hcast : (fun l => (((x + a : Fin n → ℝ) l : ℝ) : ℂ)) =
        (fun l => (x l : ℂ)) + fun l => (a l : ℂ) := by
      funext l; simp
    simp only [hg]
    rw [hcast]
    simp only [angleDisplacement_apply, phaseShift_apply, Pi.add_apply,
      Complex.sub_re, Complex.add_re, Complex.ofReal_re]
    ring
  have hshift : Continuous fun x => g (x + a) := hgc.comp (continuous_id.add continuous_const)
  have hint1 := integrableOn_unitCube_of_continuous hshift
  have hint2 := integrableOn_unitCube_of_continuous
    (continuous_const : Continuous fun _ : Fin n → ℝ => a i)
  show torusAverage (fun x => (angleDisplacement (phaseShift K a) (fun l => (x l : ℂ)) i).re) =
    torusAverage g + a i
  simp only [key]
  have hadd : torusAverage (fun x => g (x + a) + a i) =
      torusAverage (fun x => g (x + a)) + torusAverage (fun _ : Fin n → ℝ => a i) :=
    integral_add hint1 hint2
  rw [hadd, torusAverage_const, periodic_average hgc hgp a]

/-- Blueprint `bp:p4:shift` (d): `K^{[a]}` is normalized iff `a = -ph(K)`; hence a torus has
exactly one normalized phase shift, `K^{[-ph(K)]}`. -/
theorem isNormalized_phaseShift_iff {ρ : ℝ} (hρ : 0 < ρ)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : DifferentiableOn ℂ K (complexStrip n ρ))
    (hprim : IsPrimaryOnStrip K ρ) (a : Fin n → ℝ) :
    IsNormalized (phaseShift K a) ↔ a = -phaseAverage K := by
  unfold IsNormalized
  rw [phaseAverage_phaseShift hρ hK hprim a]
  exact add_eq_zero_iff_eq_neg'

/-- Blueprint `bp:p4:shift` (e), first bound: if `‖K(ιx) - K⁰_{I_*}(ιx)‖ ≤ C` for all real `x`,
then `‖ph(K)‖ ≤ C`. -/
theorem norm_phaseAverage_le {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (I : Fin n → ℝ)
    {C : ℝ} (hC : ∀ x : Fin n → ℝ, ‖K (fun l => (x l : ℂ)) -
      unperturbedTorus I (fun l => (x l : ℂ))‖ ≤ C) : ‖phaseAverage K‖ ≤ C := by
  refine (pi_norm_le_iff_of_nonneg ((norm_nonneg _).trans (hC 0))).2 fun i => ?_
  refine norm_torusAverage_le fun x _ => ?_
  have h1 : ‖(angleDisplacement K (fun l => (x l : ℂ)) i).re‖ ≤
      ‖angleDisplacement K (fun l => (x l : ℂ)) i‖ := Complex.abs_re_le_norm _
  have h2 : ‖angleDisplacement K (fun l => (x l : ℂ)) i‖ ≤
      ‖K (fun l => (x l : ℂ)) - unperturbedTorus I (fun l => (x l : ℂ))‖ := by
    refine (norm_le_pi_norm (angleDisplacement K (fun l => (x l : ℂ))) i).trans ?_
    refine le_trans ?_ (le_max_left _ _)
    exact le_of_eq (by simp [angleDisplacement, unperturbedTorus])
  exact h1.trans (h2.trans (hC x))

/-- Blueprint `bp:p4:shift` (e), second bound:
`‖K^{[a]}(θ) - K⁰_{I_*}(θ)‖ ≤ ‖K(θ + ι a) - K⁰_{I_*}(θ + ι a)‖ + ‖a‖`, since
`K⁰_{I_*}(θ + ι a) - K⁰_{I_*}(θ) = (ι a, 0)`. -/
theorem norm_phaseShift_sub_le (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (I a : Fin n → ℝ)
    (θ : Fin n → ℂ) :
    ‖phaseShift K a θ - unperturbedTorus I θ‖ ≤
      ‖K (θ + fun i => (a i : ℂ)) - unperturbedTorus I (θ + fun i => (a i : ℂ))‖ + ‖a‖ := by
  have e : phaseShift K a θ - unperturbedTorus I θ =
      (K (θ + fun i => (a i : ℂ)) - unperturbedTorus I (θ + fun i => (a i : ℂ))) +
        (unperturbedTorus I (θ + fun i => (a i : ℂ)) - unperturbedTorus I θ) := by
    simp only [phaseShift_apply]; abel
  have h2 : ‖unperturbedTorus I (θ + fun i => (a i : ℂ)) - unperturbedTorus I θ‖ = ‖a‖ := by
    have : unperturbedTorus I (θ + fun i => (a i : ℂ)) - unperturbedTorus I θ =
        ((fun i => (a i : ℂ)), (0 : Fin n → ℂ)) := by
      ext i <;> simp [unperturbedTorus]
    rw [this, Prod.norm_def]
    simp only [norm_zero]
    rw [max_eq_left (norm_nonneg _)]
    refine le_antisymm ?_ ?_
    · refine (pi_norm_le_iff_of_nonneg (norm_nonneg _)).2 fun i => ?_
      simpa using norm_le_pi_norm a i
    · refine (pi_norm_le_iff_of_nonneg (norm_nonneg _)).2 fun i => ?_
      simpa using norm_le_pi_norm (fun i => (a i : ℂ)) i
  rw [e]
  exact (norm_add_le _ _).trans (by rw [h2])

/-! ### The lemma -/

/-- Blueprint `bp:p4:shift`. Let `ρ > 0`, `K` holomorphic and primary on `T_ρ` and real on reals,
`a, ω ∈ ℝⁿ`, and `H` the Hamiltonian in the invariance error.

* (a) `K^{[a]}` is holomorphic on `T_ρ`, primary on `T_ρ` and real on reals, and
  `DK^{[a]}(θ) = DK(θ + ι a)` for `θ ∈ T_ρ`.
* (b) `E_{K^{[a]}}(θ) = E_K(θ + ι a)`; if `K` is invariant on `T_ρ`, so is `K^{[a]}`.
* (c) Bounds on `‖DK‖` and the containment of balls around `K(θ)` in a set `𝔅` transfer from `K`
  to `K^{[a]}`.
* (d) `ph(K^{[a]}) = ph(K) + a`; `K^{[a]}` is normalized exactly for `a = -ph(K)`; and if `K` and
  `K^{[a]}` are both normalized then `a = 0`.
* (e) For `I_* ∈ ℝⁿ`: `‖ph(K)‖ ≤ C` whenever `‖K(ιx) - K⁰_{I_*}(ιx)‖ ≤ C` for all real `x`, and
  `‖K^{[a]}(θ) - K⁰_{I_*}(θ)‖ ≤ ‖K(θ + ι a) - K⁰_{I_*}(θ + ι a)‖ + ‖a‖`. -/
theorem phase_shift {ρ : ℝ} (hρ : 0 < ρ) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (hprim : IsPrimaryOnStrip K ρ)
    (hreal : IsRealOnReals K) (a ω : Fin n → ℝ) (H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) :
    (DifferentiableOn ℂ (phaseShift K a) (complexStrip n ρ) ∧
      IsPrimaryOnStrip (phaseShift K a) ρ ∧ IsRealOnReals (phaseShift K a) ∧
      ∀ θ ∈ complexStrip n ρ, fderiv ℂ (phaseShift K a) θ = fderiv ℂ K (θ + fun i => (a i : ℂ))) ∧
    ((∀ θ ∈ complexStrip n ρ, invarianceError H (phaseShift K a) ω θ =
        invarianceError H K ω (θ + fun i => (a i : ℂ))) ∧
      ((∀ θ ∈ complexStrip n ρ, invarianceError H K ω θ = 0) →
        ∀ θ ∈ complexStrip n ρ, invarianceError H (phaseShift K a) ω θ = 0)) ∧
    ((∀ σ : ℝ, (∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ K θ‖ ≤ σ) →
        ∀ θ ∈ complexStrip n ρ, ‖fderiv ℂ (phaseShift K a) θ‖ ≤ σ) ∧
      (∀ (𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))) (β : ℝ),
        (∀ θ ∈ complexStrip n ρ, Metric.ball (K θ) β ⊆ 𝔅) →
          ∀ θ ∈ complexStrip n ρ, Metric.ball (phaseShift K a θ) β ⊆ 𝔅)) ∧
    (phaseAverage (phaseShift K a) = phaseAverage K + a ∧
      (∀ a' : Fin n → ℝ, IsNormalized (phaseShift K a') ↔ a' = -phaseAverage K) ∧
      (IsNormalized K → IsNormalized (phaseShift K a) → a = 0)) ∧
    (∀ I : Fin n → ℝ,
      (∀ C : ℝ, (∀ x : Fin n → ℝ, ‖K (fun l => (x l : ℂ)) -
        unperturbedTorus I (fun l => (x l : ℂ))‖ ≤ C) → ‖phaseAverage K‖ ≤ C) ∧
      ∀ θ : Fin n → ℂ, ‖phaseShift K a θ - unperturbedTorus I θ‖ ≤
        ‖K (θ + fun i => (a i : ℂ)) - unperturbedTorus I (θ + fun i => (a i : ℂ))‖ + ‖a‖) := by
  refine ⟨⟨differentiableOn_phaseShift hK a, isPrimaryOnStrip_phaseShift hprim a,
    isRealOnReals_phaseShift hreal a, fun θ _ => fderiv_phaseShift K a θ⟩,
    ⟨fun θ _ => invarianceError_phaseShift H K ω a θ,
      invarianceError_phaseShift_eq_zero H K ω a⟩,
    ⟨fun σ hσ => norm_fderiv_phaseShift_le a hσ, fun _ _ hball => ball_phaseShift_subset a hball⟩,
    ⟨phaseAverage_phaseShift hρ hK hprim a, isNormalized_phaseShift_iff hρ hK hprim, ?_⟩,
    fun I => ⟨fun _ hC => norm_phaseAverage_le I hC, norm_phaseShift_sub_le K I a⟩⟩
  intro h0 h1
  have := (isNormalized_phaseShift_iff hρ hK hprim a).1 h1
  rw [h0] at this
  simpa using this

end KAM.Head

end
