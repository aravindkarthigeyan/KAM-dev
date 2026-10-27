/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.MeasureTheory.Measure.Hausdorff
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
public import Mathlib.MeasureTheory.Constructions.Pi
public import Mathlib.Topology.MetricSpace.Isometry

/-!
# Lipschitz images and preimages of null sets (blueprint Part 1)

Blueprint `bp:p1:lip-image-product` and `bp:p1:lip-image`. All norms are the max norms on
`Fin d → ℝ` and on `(Fin n → ℝ) × (Fin n → ℝ)`; `volume` is Lebesgue measure, regarded as an
outer measure on arbitrary sets.

The proof of the image bound follows the alternative route of the blueprint (step
`step:p1:li-sum`): for the max norm the `d`-dimensional Hausdorff measure is Lebesgue measure
(`MeasureTheory.hausdorffMeasure_pi_real`) and Lipschitz maps multiply it by at most `Λ ^ d`
(`LipschitzOnWith.hausdorffMeasure_image_le`). This route replaces the cube-cover argument, so
`step:p1:li-cubes` and `step:p1:li-image` have no declaration of their own: their content is inside
the Mathlib lemma. The product `ℝⁿ × ℝⁿ` is identified with `ℝ^(n+n)` by `Fin.append`, an isometry
that preserves Lebesgue measure (`lip_image_product`); the dimension `d = 2n` enters the
product statements as the exponent `2 * n`.

| Blueprint item | Declaration |
| --- | --- |
| `bp:p1:lip-image-product` | `lip_image_product` |
| `bp:p1:lip-image`, image bound | `lip_image`, `lip_image_prod` |
| `bp:p1:lip-image`, null preimages | `lip_preimage_null`, `lip_preimage_null_prod` |
| `step:p1:li-sum` | `lip_image` |
| `step:p1:li-preimage` | `lip_preimage_null` |
| `step:p1:li-product` | `lip_image_prod`, `lip_preimage_null_prod` |
-/

@[expose] public section

open MeasureTheory Set
open scoped NNReal ENNReal

namespace KAM

section Generic

variable {X : Type*} [MetricSpace X] [MeasurableSpace X] [BorelSpace X]

/-- The Hausdorff route to the image bound: if `d`-dimensional Hausdorff measure on `X` is the
measure `μ`, then a map that is `Λ`-Lipschitz on `S` multiplies the outer measure of `S` by at
most `Λ ^ d`. The constant `Λ` is an arbitrary real number. -/
theorem measure_image_le_of_hausdorffMeasure_eq {μ : Measure X} {d : ℕ}
    (hμ : (μH[(d : ℝ)] : Measure X) = μ) {S : Set X} {F : X → X} {Λ : ℝ}
    (hF : ∀ x ∈ S, ∀ y ∈ S, dist (F x) (F y) ≤ Λ * dist x y) :
    μ (F '' S) ≤ ENNReal.ofReal (Λ ^ d) * μ S := by
  -- the case of a nonnegative constant is the Mathlib bound for Hausdorff measure
  have hnn : ∀ K : ℝ≥0, LipschitzOnWith K F S → μ (F '' S) ≤ (K : ℝ≥0∞) ^ d * μ S := by
    intro K hK
    have h := hK.hausdorffMeasure_image_le (d := (d : ℝ)) (Nat.cast_nonneg d)
    rw [ENNReal.rpow_natCast] at h
    rw [← hμ]
    exact h
  rcases le_or_gt 0 Λ with hΛ | hΛ
  · lift Λ to ℝ≥0 using hΛ
    have h := hnn Λ (LipschitzOnWith.of_dist_le_mul hF)
    rwa [ENNReal.ofReal_pow Λ.coe_nonneg, ENNReal.ofReal_coe_nnreal]
  · -- a negative constant forces `S` to be a subsingleton
    have hsub : S.Subsingleton := by
      intro x hx y hy
      by_contra hne
      have h1 := hF x hx y hy
      have h2 : 0 < dist x y := dist_pos.2 hne
      nlinarith [dist_nonneg (x := F x) (y := F y)]
    have h0 : LipschitzOnWith 0 F S := by
      refine LipschitzOnWith.of_dist_le_mul fun x hx y hy => ?_
      rw [hsub hx hy]
      simp
    have h := hnn 0 h0
    rcases Nat.eq_zero_or_pos d with rfl | hd
    · simpa using h
    · rw [ENNReal.coe_zero, zero_pow hd.ne', zero_mul] at h
      exact h.trans (by simp)

/-- The preimage claim for any space where Hausdorff measure is `μ`: an injective map whose
inverse is `Λ`-Lipschitz on the image pulls `μ`-null sets back to `μ`-null sets. -/
theorem measure_preimage_eq_zero_of_hausdorffMeasure_eq {μ : Measure X} {d : ℕ}
    (hμ : (μH[(d : ℝ)] : Measure X) = μ) {A : Set X} {Φ : X → X} {Λ : ℝ}
    (hinj : InjOn Φ A) (hinv : ∀ x ∈ A, ∀ y ∈ A, dist x y ≤ Λ * dist (Φ x) (Φ y))
    {N : Set X} (hN : μ N = 0) : μ (A ∩ Φ ⁻¹' N) = 0 := by
  rcases A.eq_empty_or_nonempty with rfl | ⟨a, ha⟩
  · simp
  have : Nonempty X := ⟨a⟩
  -- the inverse of `Φ` on `Φ '' A`, extended arbitrarily
  set g : X → X := Function.invFunOn Φ A with hg
  have hleft : ∀ x ∈ A, g (Φ x) = x := fun x hx => hinj.leftInvOn_invFunOn hx
  have hsub : A ∩ Φ ⁻¹' N ⊆ g '' (N ∩ Φ '' A) := by
    rintro x ⟨hxA, hxN⟩
    exact ⟨Φ x, ⟨hxN, x, hxA, rfl⟩, hleft x hxA⟩
  have hLip : ∀ u ∈ N ∩ Φ '' A, ∀ v ∈ N ∩ Φ '' A, dist (g u) (g v) ≤ Λ * dist u v := by
    rintro _ ⟨-, x, hx, rfl⟩ _ ⟨-, y, hy, rfl⟩
    rw [hleft x hx, hleft y hy]
    exact hinv x hx y hy
  have himg := measure_image_le_of_hausdorffMeasure_eq hμ hLip
  have hzero : μ (N ∩ Φ '' A) = 0 := measure_mono_null Set.inter_subset_left hN
  rw [hzero, mul_zero] at himg
  exact measure_mono_null hsub (le_antisymm himg bot_le)

end Generic

section Pi

/-- Blueprint `bp:p1:lip-image`, image bound on `ℝ^d` with the max norm: if
`‖F x - F y‖ ≤ Λ ‖x - y‖` for `x, y ∈ S`, then `meas F(S) ≤ Λ ^ d · meas S` (outer measures). -/
theorem lip_image {d : ℕ} {S : Set (Fin d → ℝ)} {F : (Fin d → ℝ) → (Fin d → ℝ)} {Λ : ℝ}
    (hF : ∀ x ∈ S, ∀ y ∈ S, ‖F x - F y‖ ≤ Λ * ‖x - y‖) :
    volume (F '' S) ≤ ENNReal.ofReal (Λ ^ d) * volume S := by
  refine measure_image_le_of_hausdorffMeasure_eq (d := d) ?_ ?_
  · simpa using (hausdorffMeasure_pi_real (ι := Fin d))
  · simpa only [dist_eq_norm] using hF

/-- Blueprint `bp:p1:lip-image`, preimages of null sets on `ℝ^d`: if `Φ` is injective on `A` and
its inverse `Φ(A) → A` is `Λ`-Lipschitz, i.e. `‖x - y‖ ≤ Λ ‖Φ x - Φ y‖` for `x, y ∈ A`, then
`Φ⁻¹(N) = {x ∈ A | Φ x ∈ N}` is null whenever `N` is. -/
theorem lip_preimage_null {d : ℕ} {A : Set (Fin d → ℝ)} {Φ : (Fin d → ℝ) → (Fin d → ℝ)}
    {Λ : ℝ} (hinj : InjOn Φ A) (hinv : ∀ x ∈ A, ∀ y ∈ A, ‖x - y‖ ≤ Λ * ‖Φ x - Φ y‖)
    {N : Set (Fin d → ℝ)} (hN : volume N = 0) : volume (A ∩ Φ ⁻¹' N) = 0 := by
  refine measure_preimage_eq_zero_of_hausdorffMeasure_eq (d := d) (Λ := Λ) ?_ hinj ?_ hN
  · simpa using (hausdorffMeasure_pi_real (ι := Fin d))
  · simpa only [dist_eq_norm] using hinv

end Pi

section Product

/-- The identification `ℝⁿ × ℝⁿ ≃ ℝ^(n+n)` (concatenation of the two components) as a
measurable equivalence. -/
def appendMeasurableEquiv (n : ℕ) : (Fin n → ℝ) × (Fin n → ℝ) ≃ᵐ (Fin (n + n) → ℝ) :=
  (MeasurableEquiv.sumPiEquivProdPi (fun _ : Fin n ⊕ Fin n => ℝ)).symm.trans
    (MeasurableEquiv.piCongrLeft (fun _ : Fin (n + n) => ℝ) finSumFinEquiv)

theorem appendMeasurableEquiv_apply (n : ℕ) (p : (Fin n → ℝ) × (Fin n → ℝ)) :
    appendMeasurableEquiv n p = Fin.append p.1 p.2 := by
  funext i
  refine Fin.addCases (fun j => ?_) (fun j => ?_) i
  · simp only [appendMeasurableEquiv, MeasurableEquiv.trans_apply, MeasurableEquiv.coe_piCongrLeft,
      MeasurableEquiv.coe_sumPiEquivProdPi_symm, Fin.append_left]
    rw [← finSumFinEquiv_apply_left, Equiv.piCongrLeft_apply_apply]
    rfl
  · simp only [appendMeasurableEquiv, MeasurableEquiv.trans_apply, MeasurableEquiv.coe_piCongrLeft,
      MeasurableEquiv.coe_sumPiEquivProdPi_symm, Fin.append_right]
    rw [← finSumFinEquiv_apply_right, Equiv.piCongrLeft_apply_apply]
    rfl

theorem measurePreserving_appendMeasurableEquiv (n : ℕ) :
    MeasurePreserving (appendMeasurableEquiv n) volume volume :=
  (volume_measurePreserving_piCongrLeft (fun _ : Fin (n + n) => ℝ) finSumFinEquiv).comp
    (volume_measurePreserving_sumPiEquivProdPi_symm (fun _ : Fin n ⊕ Fin n => ℝ))

/-- Blueprint `bp:p1:lip-image-product`. The identification of `ℝⁿ × ℝⁿ` with `ℝ^(n+n)` by
concatenation is an isometry for the max norm of the two components, and it carries the product
of the Lebesgue measures to Lebesgue measure. -/
theorem lip_image_product (n : ℕ) :
    Isometry (fun p : (Fin n → ℝ) × (Fin n → ℝ) => (Fin.append p.1 p.2 : Fin (n + n) → ℝ)) ∧
      MeasurePreserving
        (fun p : (Fin n → ℝ) × (Fin n → ℝ) => (Fin.append p.1 p.2 : Fin (n + n) → ℝ))
        volume volume := by
  have h : (fun p : (Fin n → ℝ) × (Fin n → ℝ) => (Fin.append p.1 p.2 : Fin (n + n) → ℝ)) =
      appendMeasurableEquiv n := funext fun p => (appendMeasurableEquiv_apply n p).symm
  refine ⟨(Fin.appendIsometry n n).isometry, ?_⟩
  rw [h]
  exact measurePreserving_appendMeasurableEquiv n

/-- Lebesgue measure of an image under the identification `ℝⁿ × ℝⁿ ≃ ℝ^(n+n)`. -/
theorem volume_image_appendMeasurableEquiv (n : ℕ) (s : Set ((Fin n → ℝ) × (Fin n → ℝ))) :
    volume (appendMeasurableEquiv n '' s) = volume s := by
  rw [MeasurableEquiv.image_eq_preimage_symm]
  exact (measurePreserving_appendMeasurableEquiv n).symm.measure_preimage_equiv s

/-- On `ℝⁿ × ℝⁿ` with the max norm, `(n+n)`-dimensional Hausdorff measure is the product of the
Lebesgue measures. -/
theorem hausdorffMeasure_prod_pi (n : ℕ) :
    (μH[((n + n : ℕ) : ℝ)] : Measure ((Fin n → ℝ) × (Fin n → ℝ))) = volume := by
  refine Measure.ext fun s _ => ?_
  have hpi : (μH[((n + n : ℕ) : ℝ)] : Measure (Fin (n + n) → ℝ)) = volume := by
    simpa using (hausdorffMeasure_pi_real (ι := Fin (n + n)))
  have hiso : Isometry (appendMeasurableEquiv n) := by
    have hcoe : ⇑(Fin.appendIsometry n n) = appendMeasurableEquiv n :=
      funext fun p => (appendMeasurableEquiv_apply n p).symm
    rw [← hcoe]
    exact (Fin.appendIsometry n n).isometry
  have h1 := hiso.hausdorffMeasure_image (d := ((n + n : ℕ) : ℝ)) (Or.inl (Nat.cast_nonneg _)) s
  rw [← h1, (volume_image_appendMeasurableEquiv n s).symm]
  exact DFunLike.congr_fun hpi _

/-- Blueprint `bp:p1:lip-image`, image bound on `ℝⁿ × ℝⁿ` with the max norm of the two
components and the product Lebesgue measure, with `d = 2n`. -/
theorem lip_image_prod {n : ℕ} {S : Set ((Fin n → ℝ) × (Fin n → ℝ))}
    {F : (Fin n → ℝ) × (Fin n → ℝ) → (Fin n → ℝ) × (Fin n → ℝ)} {Λ : ℝ}
    (hF : ∀ x ∈ S, ∀ y ∈ S, ‖F x - F y‖ ≤ Λ * ‖x - y‖) :
    volume (F '' S) ≤ ENNReal.ofReal (Λ ^ (2 * n)) * volume S := by
  rw [two_mul]
  refine measure_image_le_of_hausdorffMeasure_eq (d := n + n) (hausdorffMeasure_prod_pi n) ?_
  simpa only [dist_eq_norm] using hF

/-- Blueprint `bp:p1:lip-image`, preimages of null sets on `ℝⁿ × ℝⁿ` with the max norm of the
two components and the product Lebesgue measure. -/
theorem lip_preimage_null_prod {n : ℕ} {A : Set ((Fin n → ℝ) × (Fin n → ℝ))}
    {Φ : (Fin n → ℝ) × (Fin n → ℝ) → (Fin n → ℝ) × (Fin n → ℝ)} {Λ : ℝ} (hinj : InjOn Φ A)
    (hinv : ∀ x ∈ A, ∀ y ∈ A, ‖x - y‖ ≤ Λ * ‖Φ x - Φ y‖)
    {N : Set ((Fin n → ℝ) × (Fin n → ℝ))} (hN : volume N = 0) : volume (A ∩ Φ ⁻¹' N) = 0 := by
  refine measure_preimage_eq_zero_of_hausdorffMeasure_eq (d := n + n) (Λ := Λ)
    (hausdorffMeasure_prod_pi n) hinj ?_ hN
  simpa only [dist_eq_norm] using hinv

end Product

end KAM
