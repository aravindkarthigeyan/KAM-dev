/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Calculus.ContDiff.RCLike
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Comp
public import Mathlib.Analysis.Calculus.Deriv.Prod
public import Mathlib.Analysis.Calculus.Deriv.Shift
public import Mathlib.Analysis.Calculus.ContDiff.Operations

/-!
# The solution predicate of an autonomous ODE and its symmetries

Blueprint N Part 3 (`bpN:p3:gen-sol`, `bpN:p3:gen-symmetry`).

* `KAM.ODE.IsSolutionIn F W J z`: `z` solves `ẋ = F x` in `W` on `J`.
* `KAM.ODE.IsSolutionIn.mono`, `.continuousOn`, `isSolutionIn_congr_of_isOpen`,
  `.union_of_isOpen`: restriction, continuity, locality and gluing.
* `KAM.ODE.gen_symmetry_shift`, `gen_symmetry_neg`, `gen_symmetry_neg_contDiffOn`,
  `gen_symmetry_translate`, `gen_symmetry`: time shift, time reversal, space translation.
* `KAM.ODE.angleShift`: the integer translation of the angles.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

namespace KAM.ODE

section Basic

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- `bpN:p3:gen-sol`. `z` solves `ẋ = F x` in `W` on `J`: at every `t ∈ J`, `z t ∈ W` and `z` has
the two-sided derivative `F (z t)`. -/
def IsSolutionIn (F : E → E) (W : Set E) (J : Set ℝ) (z : ℝ → E) : Prop :=
  ∀ t ∈ J, z t ∈ W ∧ HasDerivAt z (F (z t)) t

/-- With `W = univ` the predicate is the raw derivative condition (used by `gen_short`). -/
theorem isSolutionIn_univ_iff {F : E → E} {J : Set ℝ} {z : ℝ → E} :
    IsSolutionIn F univ J z ↔ ∀ t ∈ J, HasDerivAt z (F (z t)) t :=
  forall₂_congr fun _ _ => ⟨fun h => h.2, fun h => ⟨mem_univ _, h⟩⟩

/-- `bpN:p3:gen-sol#consequences` (i): restriction. -/
theorem IsSolutionIn.mono {F : E → E} {W : Set E} {J J' : Set ℝ} {z : ℝ → E}
    (h : IsSolutionIn F W J z) (hJ : J' ⊆ J) : IsSolutionIn F W J' z :=
  fun t ht => h t (hJ ht)

/-- `bpN:p3:gen-sol#consequences` (ii): solutions are continuous on `J`. -/
theorem IsSolutionIn.continuousOn {F : E → E} {W : Set E} {J : Set ℝ} {z : ℝ → E}
    (h : IsSolutionIn F W J z) : ContinuousOn z J :=
  fun t ht => (h t ht).2.continuousAt.continuousWithinAt

/-- `bpN:p3:gen-sol#consequences` (iii): local nature, for open `J'`. -/
theorem isSolutionIn_congr_of_isOpen {F : E → E} {W : Set E} {J : Set ℝ} {y z : ℝ → E}
    (hJ : IsOpen J) (h : EqOn y z J) : IsSolutionIn F W J y ↔ IsSolutionIn F W J z := by
  have key : ∀ {y z : ℝ → E}, EqOn y z J → IsSolutionIn F W J y → IsSolutionIn F W J z := by
    intro y z h hy t ht
    refine ⟨(h ht) ▸ (hy t ht).1, ?_⟩
    have hev : y =ᶠ[nhds t] z := Filter.eventuallyEq_of_mem (hJ.mem_nhds ht) h
    have := ((hy t ht).2).congr_of_eventuallyEq hev.symm
    rwa [← h ht]
  exact ⟨key h, key h.symm⟩

/-- Helper (not a graph node; used by `gen_maximal` and `gen_continuation`): gluing solutions on
two open intervals along equality of the glued function. -/
theorem IsSolutionIn.union_of_isOpen {F : E → E} {W : Set E} {J₁ J₂ : Set ℝ} {y y₁ y₂ : ℝ → E}
    (h₁ : IsSolutionIn F W J₁ y₁) (h₂ : IsSolutionIn F W J₂ y₂) (hJ₁ : IsOpen J₁)
    (hJ₂ : IsOpen J₂) (e₁ : EqOn y y₁ J₁) (e₂ : EqOn y y₂ J₂) :
    IsSolutionIn F W (J₁ ∪ J₂) y := by
  rintro t (ht | ht)
  · exact ((isSolutionIn_congr_of_isOpen hJ₁ e₁).2 h₁) t ht
  · exact ((isSolutionIn_congr_of_isOpen hJ₂ e₂).2 h₂) t ht

/-- `bpN:p3:gen-symmetry` (a): time shift; the interval `J - c` is `(· + c) ⁻¹' J`. -/
theorem gen_symmetry_shift {F : E → E} {W : Set E} {J : Set ℝ} {z : ℝ → E}
    (h : IsSolutionIn F W J z) (c : ℝ) :
    IsSolutionIn F W ((fun t => t + c) ⁻¹' J) (fun t => z (t + c)) := fun t ht =>
  ⟨(h _ ht).1, by simpa using HasDerivAt.comp_add_const t c (h _ ht).2⟩

/-- `bpN:p3:gen-symmetry` (b): time reversal; the interval `-J` is `Neg.neg ⁻¹' J`. No regularity of
`F` is needed (it is applied with `W = univ` and arbitrary `F` in `gen_short`). -/
theorem gen_symmetry_neg {F : E → E} {W : Set E} {J : Set ℝ} {z : ℝ → E}
    (h : IsSolutionIn F W J z) :
    IsSolutionIn (fun x => -F x) W (Neg.neg ⁻¹' J) (fun t => z (-t)) := fun t ht => by
  refine ⟨(h _ ht).1, ?_⟩
  have := (h (-t) ht).2.scomp t (hasDerivAt_neg t)
  simpa [Function.comp_def] using this

/-- `bpN:p3:gen-symmetry` (b), regularity clause: `-F` is as smooth as `F` on `W`. -/
theorem gen_symmetry_neg_contDiffOn {F : E → E} {W : Set E} {m : WithTop ℕ∞}
    (hF : ContDiffOn ℝ m F W) : ContDiffOn ℝ m (fun x => -F x) W :=
  ContDiffOn.neg hF

/-- `bpN:p3:gen-symmetry` (c): space translation by `v` with `W + v = W` and `F (x + v) = F x`. -/
theorem gen_symmetry_translate {F : E → E} {W : Set E} {J : Set ℝ} {z : ℝ → E}
    (h : IsSolutionIn F W J z) {v : E} (hW : (fun x => x + v) '' W = W)
    (hF : ∀ x ∈ W, F (x + v) = F x) : IsSolutionIn F W J (fun t => z t + v) := fun t ht => by
  refine ⟨?_, ?_⟩
  · rw [← hW]; exact mem_image_of_mem _ (h t ht).1
  · rw [hF _ (h t ht).1]; exact (h t ht).2.add_const v

/-- `bpN:p3:gen-symmetry`, the node as one conjunction (proved from the four lemmas above). -/
theorem gen_symmetry {F : E → E} {W : Set E} {J : Set ℝ} {z : ℝ → E} (h : IsSolutionIn F W J z) :
    (∀ c : ℝ, IsSolutionIn F W ((fun t => t + c) ⁻¹' J) (fun t => z (t + c))) ∧
    (IsSolutionIn (fun x => -F x) W (Neg.neg ⁻¹' J) (fun t => z (-t)) ∧
      ∀ m : WithTop ℕ∞, ContDiffOn ℝ m F W → ContDiffOn ℝ m (fun x => -F x) W) ∧
    (∀ v : E, (fun x => x + v) '' W = W → (∀ x ∈ W, F (x + v) = F x) →
      IsSolutionIn F W J (fun t => z t + v)) :=
  ⟨fun c => gen_symmetry_shift h c,
    ⟨gen_symmetry_neg h, fun _ hF => gen_symmetry_neg_contDiffOn hF⟩,
    fun _ hW hF => gen_symmetry_translate h hW hF⟩

/-- The translation `(k, 0)` of phase space by the integer vector `k` in the angles
(owned by `KAM/ODE/Basic.lean`, so that `KAM/ODE/Hamiltonian.lean` need not import the periodic
uniform data). -/
def angleShift {n : ℕ} (k : Fin n → ℤ) : (Fin n → ℝ) × (Fin n → ℝ) := (fun i => (k i : ℝ), 0)

end Basic

end KAM.ODE
