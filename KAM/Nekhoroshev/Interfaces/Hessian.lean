/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Calculus.FDeriv.Symmetric
public import Mathlib.Analysis.Calculus.ContDiff.RCLike
public import Mathlib.GroupTheory.Perm.Sign
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Nekhoroshev.Defs.HasComplexHessianBound
public import KAM.Frozen.Nekhoroshev.Defs.HasDerivativeBounds
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticIntegrable
public import KAM.Nekhoroshev.Interfaces.HoloReal
public import KAM.Nekhoroshev.Interfaces.Norms

/-!
# Derivative bounds and Hessians (`bpN:p1:partials`, `bpN:p1:hessian-convert`)

* `partials`: the first-order bounds, the entry bound for the real Hessian, and the invariance of
  the ordered partial derivatives of orders `k ≤ 3` under permutations of the directions, for any
  open `U` with `B(M)` (only `C³` is used; for `k = 3` this is Schwarz twice);
* `hessian_convert`: the complex Hessian entries are `≤ M_ℂ`, the Euclidean bilinear and operator
  bounds are `n M_ℂ`, and the real Hessian of `h_ℝ` on `ℬ_s(R)` obeys the same bound.
-/

@[expose] public noncomputable section

open Set Metric Filter
open scoped Topology ContDiff

namespace KAM.Nekhoroshev

variable {n : ℕ}

/-! ### Symmetry of the iterated derivatives of a `C³` function -/

section Symmetry

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

private theorem minSmoothness_two {N : ℕ∞ω} (hN : 2 ≤ N) : minSmoothness ℝ 2 ≤ N := by
  rw [minSmoothness_of_isRCLikeNormedField]; exact_mod_cast hN

/-- `D³f x ![a, b, c] = D²(Df) x ![a, b] c`. -/
private theorem iter3_eq {f : E → ℝ} {x : E} (a b c : E) :
    iteratedFDeriv ℝ 3 f x ![a, b, c] = iteratedFDeriv ℝ 2 (fderiv ℝ f) x ![a, b] c := by
  have hi : Fin.init (![a, b, c] : Fin 3 → E) = ![a, b] := by
    ext i; fin_cases i <;> rfl
  rw [iteratedFDeriv_succ_apply_right, hi]
  rfl

/-- The first two arguments of `D³f` can be swapped (Schwarz for `Df`). -/
private theorem iter3_swap_01 {f : E → ℝ} {x : E} (hf : ContDiffAt ℝ 3 f x) (a b c : E) :
    iteratedFDeriv ℝ 3 f x ![a, b, c] = iteratedFDeriv ℝ 3 f x ![b, a, c] := by
  have h2 : ContDiffAt ℝ 2 (fderiv ℝ f) x := hf.fderiv_right (m := 2) (by norm_num)
  have hs := (h2.isSymmSndFDerivAt (n := 2) (minSmoothness_two le_rfl)).iteratedFDeriv_cons (v := a) (w := b)
  rw [iter3_eq, iter3_eq, hs]

/-- The last two arguments of `D³f` can be swapped (Schwarz for `f`, differentiated once). -/
private theorem iter3_swap_12 {f : E → ℝ} {x : E} (hf : ContDiffAt ℝ 3 f x) (a b c : E) :
    iteratedFDeriv ℝ 3 f x ![a, b, c] = iteratedFDeriv ℝ 3 f x ![a, c, b] := by
  have hΦ : DifferentiableAt ℝ (iteratedFDeriv ℝ 2 f) x :=
    (hf.iteratedFDeriv_right (m := 1) (i := 2) (by norm_num)).differentiableAt (by norm_num)
  have hev : (fun y => iteratedFDeriv ℝ 2 f y ![b, c]) =ᶠ[𝓝 x]
      fun y => iteratedFDeriv ℝ 2 f y ![c, b] := by
    filter_upwards [hf.eventually (by simp)] with y hy
    exact (hy.isSymmSndFDerivAt (n := 3) (minSmoothness_two (by norm_num))).iteratedFDeriv_cons
  have key : ∀ w : Fin 2 → E, iteratedFDeriv ℝ 3 f x (Fin.cons a w) =
      fderiv ℝ (fun y => iteratedFDeriv ℝ 2 f y w) x a := by
    intro w
    rw [fderiv_continuousMultilinear_apply_const_apply hΦ]
    rfl
  have e1 : (![a, b, c] : Fin 3 → E) = Fin.cons a ![b, c] := by
    ext i; fin_cases i <;> rfl
  have e2 : (![a, c, b] : Fin 3 → E) = Fin.cons a ![c, b] := by
    ext i; fin_cases i <;> rfl
  rw [e1, e2, key, key, hev.fderiv_eq]

omit [NormedAddCommGroup E] [NormedSpace ℝ E] in
/-- Invariance under the adjacent transpositions gives invariance under all permutations. -/
private theorem perm_invariant {k : ℕ} {α : Type*} (D : (Fin (k + 1) → E) → α)
    (hD : ∀ i : Fin k, ∀ m, D (m ∘ Equiv.swap i.castSucc i.succ) = D m)
    (σ : Equiv.Perm (Fin (k + 1))) (m : Fin (k + 1) → E) : D (m ∘ σ) = D m := by
  have hσ : σ ∈ Submonoid.closure (Set.range fun i : Fin k => Equiv.swap i.castSucc i.succ) := by
    rw [Equiv.Perm.mclosure_swap_castSucc_succ]; trivial
  induction hσ using Submonoid.closure_induction generalizing m with
  | mem x hx => obtain ⟨i, rfl⟩ := hx; exact hD i m
  | one => rfl
  | mul x y _ _ hx hy =>
    have : m ∘ ⇑(x * y) = (m ∘ x) ∘ y := rfl
    rw [this, hy, hx]

/-- (`k ≤ 3`) the ordered iterated derivatives of a `C³` function are permutation invariant. -/
theorem iteratedFDeriv_perm_of_contDiffAt_three {f : E → ℝ} {x : E} (hf : ContDiffAt ℝ 3 f x)
    {k : ℕ} (hk1 : 1 ≤ k) (hk3 : k ≤ 3) (σ : Equiv.Perm (Fin k)) (m : Fin k → E) :
    iteratedFDeriv ℝ k f x (m ∘ σ) = iteratedFDeriv ℝ k f x m := by
  interval_cases k
  · have : σ = 1 := Subsingleton.elim _ _
    subst this; rfl
  · refine perm_invariant (iteratedFDeriv ℝ 2 f x) (fun i m => ?_) σ m
    have hi : i = 0 := Subsingleton.elim _ _
    subst hi
    have hs := (hf.isSymmSndFDerivAt (n := 3) (minSmoothness_two (by norm_num))).iteratedFDeriv_cons
      (v := m 0) (w := m 1)
    have e1 : (m ∘ Equiv.swap (0 : Fin 1).castSucc (0 : Fin 1).succ) = ![m 1, m 0] := by
      ext i; fin_cases i <;> simp [Equiv.swap_apply_left]
    have e2 : m = ![m 0, m 1] := by ext i; fin_cases i <;> rfl
    rw [e1]
    conv_rhs => rw [e2]
    exact hs.symm
  · have h0 : ∀ m : Fin 3 → E, iteratedFDeriv ℝ 3 f x (m ∘ Equiv.swap 0 1) =
        iteratedFDeriv ℝ 3 f x m := by
      intro m
      have e1 : (m ∘ Equiv.swap (0 : Fin 3) 1) = ![m 1, m 0, m 2] := by
        ext i; fin_cases i <;> simp [Equiv.swap_apply_of_ne_of_ne]
      have e2 : m = ![m 0, m 1, m 2] := by ext i; fin_cases i <;> rfl
      rw [e1]
      conv_rhs => rw [e2]
      exact (iter3_swap_01 hf _ _ _).symm
    have h1 : ∀ m : Fin 3 → E, iteratedFDeriv ℝ 3 f x (m ∘ Equiv.swap 1 2) =
        iteratedFDeriv ℝ 3 f x m := by
      intro m
      have e1 : (m ∘ Equiv.swap (1 : Fin 3) 2) = ![m 0, m 2, m 1] := by
        ext i; fin_cases i <;> simp [Equiv.swap_apply_of_ne_of_ne]
      have e2 : m = ![m 0, m 1, m 2] := by ext i; fin_cases i <;> rfl
      rw [e1]
      conv_rhs => rw [e2]
      exact (iter3_swap_12 hf _ _ _).symm
    refine perm_invariant (iteratedFDeriv ℝ 3 f x) (fun i m => ?_) σ m
    fin_cases i
    · exact h0 m
    · exact h1 m

end Symmetry

/-! ### `bpN:p1:partials` -/

/-- `bpN:p1:partials`: first-order bounds and permutation invariance of ordered partials (`k ≤ 3`),
for any open `U` with `B(M)` (only `C³` is used; the `k = 3` symmetry is Schwarz for `C³`). -/
theorem partials {M : ℝ} {h : (Fin n → ℂ) → ℂ} {U : Set (Fin n → ℝ)}
    (hB : HasDerivativeBounds U h M) {I : Fin n → ℝ} (hI : I ∈ U) :
    (∀ i, |KAM.frequencyMap h I i| ≤ M) ∧ ‖KAM.frequencyMap h I‖ ≤ M ∧
    euclid (KAM.frequencyMap h I) ≤ Real.sqrt n * M ∧
    (∀ i j, |fderiv ℝ (fderiv ℝ (realPart h)) I (Pi.single i 1) (Pi.single j 1)| ≤ M) ∧
    ∀ k : ℕ, 1 ≤ k → k ≤ 3 → ∀ (idx : Fin k → Fin n) (σ : Equiv.Perm (Fin k)),
      iteratedFDeriv ℝ k (realPart h) I (fun j => Pi.single (idx (σ j)) 1) =
        iteratedFDeriv ℝ k (realPart h) I (fun j => Pi.single (idx j) 1) := by
  obtain ⟨hM, hU, hC, hb⟩ := hB
  have hfreq : ∀ i, |KAM.frequencyMap h I i| ≤ M := fun i => by
    have := hb I hI 1 le_rfl (by norm_num) ![i]
    rwa [iteratedFDeriv_one_apply] at this
  have hnorm : ‖KAM.frequencyMap h I‖ ≤ M :=
    (pi_norm_le_iff_of_nonneg hM.le).2 fun i => by simpa using hfreq i
  refine ⟨hfreq, hnorm, ?_, fun i j => ?_, fun k hk1 hk3 idx σ => ?_⟩
  · exact ((norm_le_euclid (KAM.frequencyMap h I)).2.1).trans
      (mul_le_mul_of_nonneg_left hnorm (Real.sqrt_nonneg _))
  · have := hb I hI 2 (by norm_num) (by norm_num) ![i, j]
    rwa [iteratedFDeriv_two_apply] at this
  · exact iteratedFDeriv_perm_of_contDiffAt_three (hC.contDiffAt (hU.mem_nhds hI)) hk1 hk3 σ
      (fun j => Pi.single (idx j) 1)

end KAM.Nekhoroshev

end
