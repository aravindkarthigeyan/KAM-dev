/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Calculus.Deriv.Prod
public import KAM.ODE.NewtonDefs

/-!
# Reduction of the Newtonian predicates to `IsSolutionIn`

Blueprint N Part 3, `bpN:p3:newton-reduction` (steps `nr-smooth`, `nr-pair`):
`newton_reduction`, `fixed_reduction`, `restricted_reduction`. Each says that the domain is open,
the field is `C^∞` on it, and the frozen solution predicate is `IsSolutionIn` of the field.
-/

@[expose] public noncomputable section

open Set Metric KAM.Kepler
open scoped NNReal ContDiff

namespace KAM.ODE

section NewtonReduction

private theorem continuous_planeLength : Continuous KAM.Planetary.planeLength := by
  unfold KAM.Planetary.planeLength KAM.Planetary.planeSq
  exact Real.continuous_sqrt.comp (continuous_finsetSum _ fun k _ =>
    ((continuous_apply k).pow 2))

/-- A pair-valued map has a derivative iff both components do. -/
theorem hasDerivAt_pair_iff {A B : Type*} [NormedAddCommGroup A] [NormedSpace ℝ A]
    [NormedAddCommGroup B] [NormedSpace ℝ B] (x : ℝ → A × B) (a : A) (b : B) (t : ℝ) :
    HasDerivAt x (a, b) t ↔
      HasDerivAt (fun s => (x s).1) a t ∧ HasDerivAt (fun s => (x s).2) b t := by
  constructor
  · intro h
    exact ⟨(hasFDerivAt_fst (𝕜 := ℝ) (p := x t)).comp_hasDerivAt t h,
      (hasFDerivAt_snd (𝕜 := ℝ) (p := x t)).comp_hasDerivAt t h⟩
  · rintro ⟨h1, h2⟩
    exact h1.prodMk h2

/-- Smoothness of a guarded force term `w ↦ (c / ℓ(u y)³) • u y`. -/
theorem contDiffAt_force {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] (c : ℝ)
    {u : E → Fin 2 → ℝ} {x : E} (hu : ContDiffAt ℝ ∞ u x)
    (hx : 0 < KAM.Planetary.planeLength (u x)) :
    ContDiffAt ℝ ∞ (fun y => (c / KAM.Planetary.planeLength (u y) ^ 3) • u y) x := by
  have h : ContDiffAt ℝ ∞ (fun w : Fin 2 → ℝ => ((KAM.Planetary.planeLength w) ^ 3)⁻¹ • w) (u x) :=
    (analyticAt_inv_cube_smul (planeLength_pos_iff.1 hx)).contDiffAt
  have := (h.comp x hu).const_smul c
  refine this.congr_of_eventuallyEq (Filter.Eventually.of_forall fun y => ?_)
  simp [div_eq_mul_inv, mul_smul]

private theorem contDiff_q {N : ℕ} (i : Fin N) :
    ContDiff ℝ ∞ (fun x : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ) => x.1 i) :=
  (contDiff_apply ℝ _ i).comp contDiff_fst

private theorem contDiffAt_sumForce {N : ℕ} (G : ℝ) (m : Fin N → ℝ) (i : Fin N)
    {x : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)} (hx : x ∈ newtonDomain N) :
    ContDiffAt ℝ ∞ (fun y : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ) =>
      ∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
        (G * m j / KAM.Planetary.planeLength (y.1 j - y.1 i) ^ 3) • (y.1 j - y.1 i)) x := by
  refine ContDiffAt.sum fun j hj => ?_
  have hji : j ≠ i := (Finset.mem_filter.1 hj).2
  exact contDiffAt_force (G * m j) ((contDiff_q j).sub (contDiff_q i)).contDiffAt (hx i j hji.symm)

/-- `bpN:p3:newton-reduction`, Newton case (`N ≥ 2` of the blueprint is not needed). -/
theorem newton_reduction (N : ℕ) (G : ℝ) (mass : Fin N → ℝ) :
    IsOpen (newtonDomain N) ∧ ContDiffOn ℝ ∞ (newtonField N G mass) (newtonDomain N) ∧
    ∀ Q V : ℝ → Fin N → Fin 2 → ℝ, KAM.Planetary.IsNewtonSolution G mass Q V ↔
      IsSolutionIn (newtonField N G mass) (newtonDomain N) univ (fun t => (Q t, V t)) := by
  refine ⟨?_, ?_, ?_⟩
  · have : newtonDomain N = ⋂ i, ⋂ j, ⋂ (_ : i ≠ j),
        {x : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ) |
          0 < KAM.Planetary.planeLength (x.1 j - x.1 i)} := by
      ext x; simp [newtonDomain]
    rw [this]
    refine isOpen_iInter_of_finite fun i => isOpen_iInter_of_finite fun j =>
      isOpen_iInter_of_finite fun _ => ?_
    exact isOpen_lt continuous_const (continuous_planeLength.comp
      (((continuous_apply j).comp continuous_fst).sub ((continuous_apply i).comp continuous_fst)))
  · intro x hx
    refine ContDiffAt.contDiffWithinAt ?_
    refine ContDiffAt.prodMk contDiffAt_snd (contDiffAt_pi.2 fun i => ?_)
    exact contDiffAt_sumForce G mass i hx
  · intro Q V
    constructor
    · rintro ⟨h1, h2, h3⟩ t -
      refine ⟨fun i j hij => h1 t i j hij, ?_⟩
      exact (hasDerivAt_pair_iff _ _ _ _).2 ⟨hasDerivAt_pi.2 (h2 t), hasDerivAt_pi.2 (h3 t)⟩
    · intro h
      refine ⟨fun t i j hij => (h t (mem_univ t)).1 i j hij, fun t i => ?_, fun t i => ?_⟩
      · have := ((hasDerivAt_pair_iff _ _ _ _).1 (h t (mem_univ t)).2).1
        exact hasDerivAt_pi.1 this i
      · have := ((hasDerivAt_pair_iff _ _ _ _).1 (h t (mem_univ t)).2).2
        exact hasDerivAt_pi.1 this i

/-- `bpN:p3:newton-reduction`, fixed-center case. -/
theorem fixed_reduction (N : ℕ) (G m₀ : ℝ) (m : Fin N → ℝ) (eps : ℝ) :
    IsOpen (fixedDomain N) ∧ ContDiffOn ℝ ∞ (fixedField N G m₀ m eps) (fixedDomain N) ∧
    ∀ Q V : ℝ → Fin N → Fin 2 → ℝ, KAM.Planetary.IsFixedSolution G m₀ m eps Q V ↔
      IsSolutionIn (fixedField N G m₀ m eps) (fixedDomain N) univ (fun t => (Q t, V t)) := by
  have hopen : IsOpen {x : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ) |
      ∀ i, 0 < KAM.Planetary.planeLength (x.1 i)} := by
    have : {x : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ) |
        ∀ i, 0 < KAM.Planetary.planeLength (x.1 i)} =
        ⋂ i, {x | 0 < KAM.Planetary.planeLength (x.1 i)} := by ext x; simp
    rw [this]
    exact isOpen_iInter_of_finite fun i => isOpen_lt continuous_const
      (continuous_planeLength.comp ((continuous_apply i).comp continuous_fst))
  refine ⟨(newton_reduction N G (fun _ => 0)).1.inter hopen, ?_, ?_⟩
  · intro x hx
    refine ContDiffAt.contDiffWithinAt ?_
    refine ContDiffAt.prodMk contDiffAt_snd (contDiffAt_pi.2 fun i => ?_)
    exact (contDiffAt_force (-G * m₀) (contDiff_q i).contDiffAt (hx.2 i)).add
      ((contDiffAt_sumForce G m i hx.1).const_smul eps)
  · intro Q V
    constructor
    · rintro ⟨h0, h1, h2, h3⟩ t -
      refine ⟨⟨fun i j hij => h1 t i j hij, fun i => h0 t i⟩, ?_⟩
      exact (hasDerivAt_pair_iff _ _ _ _).2 ⟨hasDerivAt_pi.2 (h2 t), hasDerivAt_pi.2 (h3 t)⟩
    · intro h
      refine ⟨fun t i => (h t (mem_univ t)).1.2 i,
        fun t i j hij => (h t (mem_univ t)).1.1 i j hij, fun t i => ?_, fun t i => ?_⟩
      · have := ((hasDerivAt_pair_iff _ _ _ _).1 (h t (mem_univ t)).2).1
        exact hasDerivAt_pi.1 this i
      · have := ((hasDerivAt_pair_iff _ _ _ _).1 (h t (mem_univ t)).2).2
        exact hasDerivAt_pi.1 this i

/-- `bpN:p3:newton-reduction`, restricted case (arbitrary interval `J`). -/
theorem restricted_reduction (μ : ℝ) :
    IsOpen (restrictedDomain μ) ∧ ContDiffOn ℝ ∞ (restrictedField μ) (restrictedDomain μ) ∧
    ∀ (J : Set ℝ) (z : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)),
      KAM.Iso.IsRestrictedSolutionOn μ J z ↔
        IsSolutionIn (restrictedField μ) (restrictedDomain μ) J z := by
  refine ⟨?_, ?_, ?_⟩
  · have : restrictedDomain μ = {z : (Fin 2 → ℝ) × (Fin 2 → ℝ) |
        0 < KAM.Planetary.planeLength (z.1 - KAM.Iso.primary₁ μ)} ∩
        {z | 0 < KAM.Planetary.planeLength (z.1 - KAM.Iso.primary₂ μ)} := rfl
    rw [this]
    exact (isOpen_lt continuous_const (continuous_planeLength.comp
        (continuous_fst.sub continuous_const))).inter
      (isOpen_lt continuous_const (continuous_planeLength.comp
        (continuous_fst.sub continuous_const)))
  · intro z hz
    refine ContDiffAt.contDiffWithinAt ?_
    have c1 : ∀ k, ContDiff ℝ ∞ (fun z : (Fin 2 → ℝ) × (Fin 2 → ℝ) => z.1 k) :=
      fun k => (contDiff_apply ℝ _ k).comp contDiff_fst
    have c2 : ∀ k, ContDiff ℝ ∞ (fun z : (Fin 2 → ℝ) × (Fin 2 → ℝ) => z.2 k) :=
      fun k => (contDiff_apply ℝ _ k).comp contDiff_snd
    have u1 : ∀ p : Fin 2 → ℝ, ContDiff ℝ ∞ (fun z : (Fin 2 → ℝ) × (Fin 2 → ℝ) => z.1 - p) :=
      fun p => contDiff_fst.sub contDiff_const
    refine ContDiffAt.prodMk (contDiffAt_pi.2 fun i => ?_) ((ContDiffAt.sub ?_ ?_).sub ?_)
    · fin_cases i
      · exact ((c2 0).add (c1 1)).contDiffAt
      · exact ((c2 1).sub (c1 0)).contDiffAt
    · exact contDiffAt_pi.2 fun i => by
        fin_cases i
        · exact (c2 1).contDiffAt
        · exact (c2 0).neg.contDiffAt
    · exact contDiffAt_force (1 - μ) (u1 _).contDiffAt hz.1
    · exact contDiffAt_force μ (u1 _).contDiffAt hz.2
  · intro J z
    exact forall₂_congr fun t _ => ⟨fun ⟨hz, h⟩ => ⟨hz, h⟩, fun ⟨hz, h⟩ => ⟨hz, h⟩⟩

end NewtonReduction

end KAM.ODE
