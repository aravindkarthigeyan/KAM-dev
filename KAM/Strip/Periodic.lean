/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.ComplexStrip
public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Complex.CauchyIntegral
public import Mathlib.Analysis.Analytic.IsolatedZeros
import Mathlib.Tactic.Linarith

/-!
# Periodic holomorphic functions on strips (blueprint Part 1)

* `bp:p1:periodic-bounded`: a holomorphic `1`-periodic function on `T_ρ` is bounded on `T_ρ'` for
  every `ρ' < ρ`. Periodicity is stated coordinatewise, `u (z + e_i) = u z` for `z ∈ T_ρ`, which
  is the form used by `KAM.Strip.Fourier`; it implies invariance under all of `ℤⁿ`.
* `bp:p1:strip-identity`: a holomorphic function on `T_r` vanishing on `ℝⁿ` vanishes on `T_r`
  (induction over the coordinates, with the one-variable identity theorem on a horizontal strip).
-/

@[expose] public section

open Set Filter Topology Metric

namespace KAM

variable {n : ℕ} {F : Type*}

/-- Adding a vector with real coordinates to a point of a strip keeps it in the strip. -/
theorem add_mem_complexStrip_of_im_eq_zero {ρ : ℝ} {z w : Fin n → ℂ}
    (hz : z ∈ complexStrip n ρ) (hw : ∀ i, (w i).im = 0) : z + w ∈ complexStrip n ρ := by
  intro i
  simpa [hw i] using hz i

/-- Coordinatewise `1`-periodicity on a strip gives invariance under single integer shifts. -/
theorem periodic_single_int {ρ : ℝ} {u : (Fin n → ℂ) → F}
    (hp : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (i : Fin n) (m : ℤ) {z : Fin n → ℂ} (hz : z ∈ complexStrip n ρ) :
    u (z + Pi.single i (m : ℂ)) = u z := by
  have hmem : ∀ c : ℤ, z + Pi.single i (c : ℂ) ∈ complexStrip n ρ := fun c =>
    add_mem_complexStrip_of_im_eq_zero hz fun j => by
      by_cases h : j = i <;> simp [h]
  induction m using Int.induction_on with
  | zero => simp
  | succ m ih =>
    have h1 := hp i (z + Pi.single i ((m : ℤ) : ℂ)) (hmem m)
    have h2 : ((m : ℤ) : ℂ) + 1 = (((m : ℤ) + 1 : ℤ) : ℂ) := by push_cast; ring
    rw [add_assoc, ← Pi.single_add, h2] at h1
    rw [h1, ih]
  | pred m ih =>
    have h1 := hp i (z + Pi.single i ((-(m : ℤ) - 1 : ℤ) : ℂ)) (hmem _)
    have h2 : ((-(m : ℤ) - 1 : ℤ) : ℂ) + 1 = ((-(m : ℤ) : ℤ) : ℂ) := by push_cast; ring
    rw [add_assoc, ← Pi.single_add, h2] at h1
    rw [← h1, ih]

/-- Coordinatewise `1`-periodicity on a strip gives invariance under all translations by `ℤⁿ`. -/
theorem periodic_int_shift {ρ : ℝ} {u : (Fin n → ℂ) → F}
    (hp : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (k : Fin n → ℤ) {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ) :
    u (θ + fun i => (k i : ℂ)) = u θ := by
  have key : ∀ s : Finset (Fin n), u (θ + ∑ i ∈ s, Pi.single i (k i : ℂ)) = u θ := by
    intro s
    induction s using Finset.induction_on with
    | empty => simp
    | insert a s ha ih =>
      have hmem : θ + ∑ i ∈ s, Pi.single i (k i : ℂ) ∈ complexStrip n ρ :=
        add_mem_complexStrip_of_im_eq_zero hθ fun j => by
          rw [Finset.sum_apply, Complex.im_sum]
          refine Finset.sum_eq_zero fun i _ => ?_
          by_cases h : j = i
          · subst h; simp
          · simp [h]
      have heq : θ + ∑ i ∈ insert a s, Pi.single i (k i : ℂ) =
          (θ + ∑ i ∈ s, Pi.single i (k i : ℂ)) + Pi.single a (k a : ℂ) := by
        rw [Finset.sum_insert ha]
        abel
      rw [heq, periodic_single_int hp a (k a) hmem, ih]
  have h := key Finset.univ
  rwa [Finset.univ_sum_single (fun i => (k i : ℂ))] at h

variable [NormedAddCommGroup F] [NormedSpace ℂ F]

/-- The compact fundamental set: real parts in `[0,1]`, imaginary parts of modulus at most `σ`. -/
def fundamentalStrip (n : ℕ) (σ : ℝ) : Set (Fin n → ℂ) :=
  Set.pi univ fun _ => {z : ℂ | z.re ∈ Icc (0 : ℝ) 1 ∧ z.im ∈ Icc (-σ) σ}

theorem isCompact_fundamentalStrip (n : ℕ) (σ : ℝ) : IsCompact (fundamentalStrip n σ) := by
  refine isCompact_univ_pi fun _ => ?_
  exact isCompact_Icc.reProdIm isCompact_Icc

/-- Blueprint `bp:p1:periodic-bounded`. If `u` is holomorphic and `1`-periodic on `T_ρ`, then `u`
is bounded on `T_ρ'` for every `ρ' < ρ` (for `ρ' ≤ 0` and `n ≥ 1` the strip `T_ρ'` is empty).
Step `step:p1:pb-compact` is the body: `u` is continuous on the compact fundamental set
`{Re θ ∈ [0,1]ⁿ, |Im θ_j| ≤ ρ'} ⊂ T_ρ`, and every `θ ∈ T_ρ'` is `θ' + k` with `θ'` in this set
and `k = ⌊Re θ⌋`. -/
theorem periodic_bounded {ρ ρ' : ℝ} {u : (Fin n → ℂ) → F}
    (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (hp : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hρ : ρ' < ρ) : ∃ A : ℝ, ∀ θ ∈ complexStrip n ρ', ‖u θ‖ ≤ A := by
  have hsub : fundamentalStrip n ρ' ⊆ complexStrip n ρ := by
    intro θ hθ i
    have h := (hθ i (mem_univ i)).2
    exact lt_of_le_of_lt (abs_le.mpr ⟨h.1, h.2⟩) hρ
  obtain ⟨A, hA⟩ := (isCompact_fundamentalStrip n ρ').exists_bound_of_continuousOn
    (hu.continuousOn.mono hsub)
  refine ⟨A, fun θ hθ => ?_⟩
  set k : Fin n → ℤ := fun i => ⌊(θ i).re⌋ with hk
  set θ' : Fin n → ℂ := θ - fun i => (k i : ℂ) with hθ'
  have hθ'S : θ' ∈ fundamentalStrip n ρ' := by
    intro i _
    have him : (θ' i).im = (θ i).im := by simp [hθ']
    have hre : (θ' i).re = (θ i).re - ⌊(θ i).re⌋ := by simp [hθ', hk]
    refine ⟨⟨?_, ?_⟩, ?_⟩
    · rw [hre]; exact sub_nonneg.mpr (Int.floor_le _)
    · rw [hre]; linarith [Int.lt_floor_add_one (θ i).re]
    · rw [him]; exact abs_le.mp (hθ i).le
  have hθ'T : θ' ∈ complexStrip n ρ := hsub hθ'S
  have hθeq : θ = θ' + fun i => (k i : ℂ) := by simp [hθ']
  rw [hθeq, periodic_int_shift hp k hθ'T]
  exact hA θ' hθ'S

/-- The open horizontal strip `{ζ : |Im ζ| < r}` in `ℂ`. -/
def horizontalStrip (r : ℝ) : Set ℂ := Complex.im ⁻¹' Ioo (-r) r

theorem isOpen_horizontalStrip (r : ℝ) : IsOpen (horizontalStrip r) :=
  isOpen_Ioo.preimage Complex.continuous_im

theorem isPreconnected_horizontalStrip (r : ℝ) : IsPreconnected (horizontalStrip r) :=
  ((convex_Ioo (-r) r).linear_preimage Complex.imLm).isPreconnected

theorem mem_horizontalStrip {r : ℝ} {ζ : ℂ} : ζ ∈ horizontalStrip r ↔ |ζ.im| < r := by
  simp only [horizontalStrip, mem_preimage, mem_Ioo, abs_lt]

/-- Replacing one coordinate of a point of `T_r` by a point of the horizontal strip stays in
`T_r`. -/
theorem update_mem_complexStrip {r : ℝ} {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n r) (j : Fin n)
    {ζ : ℂ} (hζ : ζ ∈ horizontalStrip r) : Function.update θ j ζ ∈ complexStrip n r := by
  intro i
  by_cases h : i = j
  · subst h
    simpa using mem_horizontalStrip.mp hζ
  · simpa [Function.update_of_ne h] using hθ i

theorem differentiable_update (θ : Fin n → ℂ) (j : Fin n) :
    Differentiable ℂ (fun ζ : ℂ => Function.update θ j ζ) := by
  rw [differentiable_pi]
  intro i
  by_cases h : i = j
  · subst h
    simp
  · simp [Function.update_of_ne h]

variable [CompleteSpace F]

/-- Blueprint `bp:p1:strip-identity`. Let `r > 0` and let `v` be holomorphic on `T_r` with values
in a complex Banach space (the blueprint takes finite-dimensional `W`). If `v` vanishes at every
real point, then `v = 0` on `T_r`.

Step `step:p1:si-induction`: for `m ≤ n`, `v` vanishes at each `θ ∈ T_r` whose coordinates of index
at least `m` are real; the step from `m` to `m + 1` applies the one-variable identity theorem to
`ζ ↦ v (θ with coordinate m replaced by ζ)` on the connected strip `|Im ζ| < r`. -/
theorem strip_identity {r : ℝ} (hr : 0 < r) {v : (Fin n → ℂ) → F}
    (hv : DifferentiableOn ℂ v (complexStrip n r))
    (h0 : ∀ x : Fin n → ℝ, v (fun i => (x i : ℂ)) = 0) :
    ∀ θ ∈ complexStrip n r, v θ = 0 := by
  have hclaim : ∀ m : ℕ, ∀ θ ∈ complexStrip n r, (∀ i : Fin n, m ≤ i.val → (θ i).im = 0) →
      v θ = 0 := by
    intro m
    induction m with
    | zero =>
      intro θ _ hθ
      have : θ = fun i => (((θ i).re : ℝ) : ℂ) := by
        ext i
        exact Complex.ext (by simp) (by simpa using hθ i (Nat.zero_le _))
      rw [this]
      exact h0 _
    | succ m ih =>
      intro θ hθT hθ
      by_cases hm : m < n
      · set j : Fin n := ⟨m, hm⟩ with hj
        set φ : ℂ → F := fun ζ => v (Function.update θ j ζ) with hφ
        have hmaps : MapsTo (fun ζ : ℂ => Function.update θ j ζ) (horizontalStrip r)
            (complexStrip n r) := fun ζ hζ => update_mem_complexStrip hθT j hζ
        have hφd : DifferentiableOn ℂ φ (horizontalStrip r) :=
          hv.comp (differentiable_update θ j).differentiableOn hmaps
        have hφan : AnalyticOnNhd ℂ φ (horizontalStrip r) :=
          hφd.analyticOnNhd (isOpen_horizontalStrip r)
        have hreal : ∀ x : ℝ, φ (x : ℂ) = 0 := by
          intro x
          apply ih _ (update_mem_complexStrip hθT j (mem_horizontalStrip.mpr (by simpa using hr)))
          intro i hi
          by_cases hij : i = j
          · subst hij; simp
          · have : m + 1 ≤ i.val := by
              have : i.val ≠ m := fun h => hij (Fin.ext h)
              omega
            simpa [Function.update_of_ne hij] using hθ i this
        have h0mem : (0 : ℂ) ∈ horizontalStrip r := mem_horizontalStrip.mpr (by simpa using hr)
        have hten : Tendsto (fun x : ℝ => (x : ℂ)) (𝓝[≠] 0) (𝓝[≠] 0) :=
          tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _
            (tendsto_nhdsWithin_of_tendsto_nhds (by simpa using Complex.continuous_ofReal.tendsto 0))
            (eventually_nhdsWithin_of_forall fun x hx => by simpa using hx)
        have hfreq : ∃ᶠ z in 𝓝[≠] (0 : ℂ), φ z = 0 :=
          hten.frequently (Frequently.of_forall hreal)
        have hzero := hφan.eqOn_zero_of_preconnected_of_frequently_eq_zero
          (isPreconnected_horizontalStrip r) h0mem hfreq
        have := hzero (mem_horizontalStrip.mpr (by simpa using hθT j) : θ j ∈ horizontalStrip r)
        simpa [hφ] using this
      · apply ih θ hθT
        intro i _
        exact absurd i.isLt (by omega)
  intro θ hθ
  exact hclaim n θ hθ fun i hi => absurd i.isLt (by omega)

end KAM
