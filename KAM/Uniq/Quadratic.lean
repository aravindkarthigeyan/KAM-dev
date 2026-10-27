/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Uniq.Difference
import KAM.Apost.Triangular
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# The quadratic estimate (blueprint `bp:p3:quadratic`)

Blueprint Part 3, Proposition `bp:p3:quadratic` (`KAM.Uniq.quadratic`). Under (S1) to (S4), for a
real phase `ψ` with `‖Δ‖ < μ` on `T_ρ` (`Δ = KAM.Uniq.diffMap K₁ K₂ ψ`) and `⟨B Lᵀ Δ⟩ = 0`: for
every `0 < ρ'' < ρ' ≤ 3ρ/4`, with `δ = (ρ' - ρ'')/2`, and every pointwise bound `Y` of `‖Δ‖` on
`T_{ρ'}`,
`‖Δ‖ ≤ C_quad γ⁻² δ^{-2(τ+n)} Y²` on `T_{ρ''}`.

The proof follows the steps of the blueprint, with `ξ = P⁻¹ Δ` and `q = P⁻¹ R` of
`bp:p3:difference-equation`, `a = (γ δ^{τ+n})⁻¹` and `Y2 = Y²`:

* `step:p3:quad-remainder`: `‖q‖ ≤ ½ C_P M Y2` on `T_{ρ'}` (`difference_equation` (c)).
* `step:p3:quad-normal-osc` (`QuadAux.osc_bound`): `ξᴺ` is holomorphic, bounded and `1`-periodic
  with `∂_ω ξᴺ = qᴺ`. The a-priori bound of Part 1 (`KAM.cohomological_apriori_pi`, with the exact
  constant `KAM.cohConst`; it needs no uniqueness and no boundedness of `ξᴺ`) bounds
  `ξᴺ - ⟨ξᴺ⟩` by `C_coh a (½ C_P M Y2)` on `T_{ρ'-δ}`.
* `step:p3:quad-normal-avg` (`QuadAux.norm_avg_le`): `⟨∂_ω ξᴸ⟩ = 0` (`KAM.Apost.averages` (b)) gives
  `⟨T⟩ ⟨ξᴺ⟩ + ⟨T (ξᴺ - ⟨ξᴺ⟩)⟩ + ⟨qᴸ⟩ = 0`, hence `‖⟨ξᴺ⟩‖ ≤ σ_T (C_tor X + ½ C_P M Y2)`.
* `step:p3:quad-normal` (`QuadAux.normal_bound`, with `KAM.Uniq.normal_coeff_le` and the absorption
  `KAM.Uniq.one_le_absorb`): `‖ξᴺ‖ ≤ C^N a Y2` on `T_{ρ'-δ}`. Here `‖T‖ ≤ C_tor` on `T_{3ρ/4}` is
  `bp:p3:torsion-bound` and `γ ≤ Γ` is `bp:p3:frequency-bound`.
* `step:p3:quad-tangent` (inside `KAM.Uniq.quadratic`, with `KAM.Uniq.tangent_coeff_le` and
  `KAM.Uniq.C_L_mul_eq`): `⟨ξᴸ⟩ = 0` by hypothesis and `∂_ω ξᴸ = T ξᴺ + qᴸ` is bounded on
  `T_{ρ'-δ}`; the a-priori bound again gives `‖ξᴸ‖ ≤ C^L a² Y2` on `T_{ρ''}`.
* `step:p3:quad-combine`: `Δ = P ξ`, `|P| ≤ C_P`, and `KAM.Uniq.combine_coeff_le`.

The a-priori bound is used instead of the uniqueness statement of the blueprint: both give the same
conclusion (the solution is the one of `bp:p1:cohomological`) and the a-priori bound avoids the
solution operator altogether.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Uniq

open KAM.Torus

namespace QuadAux

variable {n : ℕ}

/-! ### Components of a `Fin n ⊕ Fin n`-valued map -/

section Components

/-- Holomorphy of a reindexed (component) map. -/
theorem differentiableOn_reindex {S : Set (Fin n → ℂ)} {v : (Fin n → ℂ) → Fin n ⊕ Fin n → ℂ}
    (hv : DifferentiableOn ℂ v S) (g : Fin n → Fin n ⊕ Fin n) :
    DifferentiableOn ℂ (fun θ i => v θ (g i)) S :=
  differentiableOn_pi.2 fun i => differentiableOn_pi.1 hv (g i)

/-- Periodicity of a reindexed (component) map. -/
theorem isPeriodicOn_reindex {r : ℝ} {v : (Fin n → ℂ) → Fin n ⊕ Fin n → ℂ}
    (hv : IsPeriodicOn v r) (g : Fin n → Fin n ⊕ Fin n) :
    IsPeriodicOn (fun θ i => v θ (g i)) r := fun k z hz => by
  funext i
  simp only [hv k z hz]

/-- A component of a vector has at most the norm of the vector. -/
theorem norm_reindex_le (v : Fin n ⊕ Fin n → ℂ) (g : Fin n → Fin n ⊕ Fin n) :
    ‖fun i => v (g i)‖ ≤ ‖v‖ :=
  (pi_norm_le_iff_of_nonneg (norm_nonneg v)).2 fun i => norm_le_pi_norm v (g i)

/-- Continuity on the real torus of a function holomorphic on a strip of positive width. -/
theorem continuous_real {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    {f : (Fin n → ℂ) → E} {r : ℝ} (hr : 0 < r) (hf : DifferentiableOn ℂ f (complexStrip n r)) :
    Continuous fun x : Fin n → ℝ => f (fun i => (x i : ℂ)) :=
  Apost.Triangular.continuous_ofReal_comp hr hf

end Components

/-! ### Averages -/

section Average

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F] [CompleteSpace F]

omit [CompleteSpace F] in
/-- Averaging is additive on continuous functions. -/
theorem torusAverage_add' {f g : (Fin n → ℝ) → F} (hf : Continuous f) (hg : Continuous g) :
    torusAverage (fun x => f x + g x) = torusAverage f + torusAverage g :=
  integral_add (integrableOn_unitCube_of_continuous hf) (integrableOn_unitCube_of_continuous hg)

end Average

/-! ### The oscillating part (`step:p3:quad-osc`) -/

section Oscillation

variable {ω : Fin n → ℝ} {γ τ r δ H : ℝ}

/-- Step `step:p3:quad-normal-osc`: a holomorphic `1`-periodic `u` on `T_r` with
`‖∂_ω u‖ ≤ H` satisfies `‖u - ⟨u⟩‖ ≤ c(n, τ) (γ δ^{τ+n})⁻¹ H` on `T_{r-δ}`. The function
`u - ⟨u⟩` has zero average, so this is the a-priori bound of Part 1. -/
theorem osc_bound (hω : IsDiophantine γ τ ω) (hγ : 0 < γ) (hτ : 0 ≤ τ) (hδ : 0 < δ)
    (hδr : δ < r) {u : (Fin n → ℂ) → Fin n → ℂ} (hu : DifferentiableOn ℂ u (complexStrip n r))
    (hup : IsPeriodicOn u r)
    (hH : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ u θ (fun l => (ω l : ℂ))‖ ≤ H) :
    ∀ θ ∈ complexStrip n (r - δ), ‖u θ - avg u‖ ≤ cohConst n τ / (γ * δ ^ (τ + n)) * H := by
  have hr : 0 < r := hδ.trans hδr
  have hvd : DifferentiableOn ℂ (fun θ => u θ - avg u) (complexStrip n r) := hu.sub_const _
  have hvp : ∀ (i : Fin n) z, z ∈ complexStrip n r →
      (fun θ => u θ - avg u) (z + Pi.single i 1) = (fun θ => u θ - avg u) z :=
    fun i z hz => by simp only [hup i z hz]
  have hv0 : torusAverage (fun x : Fin n → ℝ => (fun θ => u θ - avg u) fun j => (x j : ℂ)) = 0 := by
    have e : (fun x : Fin n → ℝ => (fun θ => u θ - avg u) fun j => (x j : ℂ)) =
        fun x => (-avg u) + u (fun j => (x j : ℂ)) := by
      funext x
      simp only
      abel
    rw [e, PhaseAux.torusAverage_const_add (-avg u) (continuous_real hr hu)]
    simp
  have hHv : ∀ θ ∈ complexStrip n r,
      ‖fderiv ℂ (fun θ => u θ - avg u) θ (fun l => (ω l : ℂ))‖ ≤ H := fun θ hθ => by
    rw [fderiv_sub_const]
    exact hH θ hθ
  exact cohomological_apriori_pi hω hγ hτ hδ hδr hvd hvp hv0 hHv

end Oscillation

/-! ### The average of the normal coordinate (`step:p3:quad-normal-avg`) -/

section AverageNormal

/-- Step `step:p3:quad-normal-avg`: if `⟨T ξᴺ + qᴸ⟩ = 0` and `⟨T⟩` is invertible with
`‖⟨T⟩⁻¹‖ ≤ σ_T`, then `‖⟨ξᴺ⟩‖ ≤ σ_T (H_T X + Q)`, where `‖T‖ ≤ H_T`, `‖ξᴺ - ⟨ξᴺ⟩‖ ≤ X` and
`‖qᴸ‖ ≤ Q` on `T_r`. -/
theorem norm_avg_le {r HT Q X σT : ℝ} (hr : 0 < r)
    {T : (Fin n → ℂ) → Matrix (Fin n) (Fin n) ℂ} {ξN qL : (Fin n → ℂ) → Fin n → ℂ}
    (hTc : Continuous fun x : Fin n → ℝ => T (fun i => (x i : ℂ)))
    (hξc : Continuous fun x : Fin n → ℝ => ξN (fun i => (x i : ℂ)))
    (hqc : Continuous fun x : Fin n → ℝ => qL (fun i => (x i : ℂ)))
    (h0 : avg (fun θ => T θ *ᵥ ξN θ + qL θ) = 0)
    (hTinv : IsUnit (avg T).det) (hσ : ‖(avg T)⁻¹‖ ≤ σT)
    (hT : ∀ θ ∈ complexStrip n r, ‖T θ‖ ≤ HT)
    (hX : ∀ θ ∈ complexStrip n r, ‖ξN θ - avg ξN‖ ≤ X)
    (hq : ∀ θ ∈ complexStrip n r, ‖qL θ‖ ≤ Q) :
    ‖avg ξN‖ ≤ σT * (HT * X + Q) := by
  set c : Fin n → ℂ := avg ξN with hc
  have hf1c : Continuous fun x : Fin n → ℝ =>
      T (fun i => (x i : ℂ)) *ᵥ (ξN (fun i => (x i : ℂ)) - c) :=
    hTc.matrix_mulVec (hξc.sub continuous_const)
  have hf2c : Continuous fun x : Fin n → ℝ => T (fun i => (x i : ℂ)) *ᵥ c :=
    hTc.matrix_mulVec continuous_const
  have hsplit : (fun x : Fin n → ℝ => T (fun i => (x i : ℂ)) *ᵥ ξN (fun i => (x i : ℂ)) +
        qL (fun i => (x i : ℂ))) =
      fun x => (T (fun i => (x i : ℂ)) *ᵥ c) +
        (T (fun i => (x i : ℂ)) *ᵥ (ξN (fun i => (x i : ℂ)) - c) + qL (fun i => (x i : ℂ))) := by
    funext x
    rw [Matrix.mulVec_sub]
    abel
  have h0' : torusAverage (fun x : Fin n → ℝ =>
      (T (fun i => (x i : ℂ)) *ᵥ c) +
        (T (fun i => (x i : ℂ)) *ᵥ (ξN (fun i => (x i : ℂ)) - c) + qL (fun i => (x i : ℂ)))) =
      0 := by
    rw [← hsplit]
    exact h0
  have hg : Continuous fun x : Fin n → ℝ =>
      T (fun i => (x i : ℂ)) *ᵥ (ξN (fun i => (x i : ℂ)) - c) + qL (fun i => (x i : ℂ)) :=
    hf1c.add hqc
  rw [torusAverage_add' hf2c hg, torusAverage_add' hf1c hqc,
    Apost.Triangular.torusAverage_mulVec_const hTc c] at h0'
  have h1 : ‖avg (fun θ => T θ *ᵥ (ξN θ - c))‖ ≤ HT * X := by
    have hHT0 : 0 ≤ HT := (norm_nonneg _).trans (hT _ (ofReal_mem_complexStrip hr 0))
    refine norm_torusAverage_le_of_strip_bound (f := fun θ => T θ *ᵥ (ξN θ - c)) hr ?_
    intro θ hθ
    calc ‖T θ *ᵥ (ξN θ - c)‖ ≤ ‖T θ‖ * ‖ξN θ - c‖ := Matrix.linfty_opNorm_mulVec _ _
      _ ≤ HT * X := mul_le_mul (hT θ hθ) (hX θ hθ) (norm_nonneg _) hHT0
  have h2 : ‖avg qL‖ ≤ Q := norm_torusAverage_le_of_strip_bound hr hq
  set w : Fin n → ℂ := torusAverage (fun x : Fin n → ℝ =>
      T (fun i => (x i : ℂ)) *ᵥ (ξN (fun i => (x i : ℂ)) - c)) +
    torusAverage (fun x : Fin n → ℝ => qL (fun i => (x i : ℂ))) with hw
  have hTc_eq : avg T *ᵥ c = -w := eq_neg_of_add_eq_zero_left h0'
  have hcw : c = (avg T)⁻¹ *ᵥ (-w) := by
    rw [← hTc_eq, Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hTinv, Matrix.one_mulVec]
  have hσ0 : 0 ≤ σT := (norm_nonneg _).trans hσ
  calc ‖c‖ = ‖(avg T)⁻¹ *ᵥ (-w)‖ := by rw [← hcw]
    _ ≤ ‖(avg T)⁻¹‖ * ‖-w‖ := Matrix.linfty_opNorm_mulVec _ _
    _ ≤ σT * (HT * X + Q) := by
      rw [norm_neg]
      exact mul_le_mul hσ ((norm_add_le _ _).trans (add_le_add h1 h2)) (norm_nonneg _) hσ0

end AverageNormal

/-! ### The normal coordinate (`step:p3:quad-normal`) -/

section Normal

variable {ω : Fin n → ℝ} {γ τ r δ : ℝ}

/-- Steps `step:p3:quad-normal-osc`, `step:p3:quad-normal-avg`, abstractly: with
`∂_ω ξᴺ = qᴺ`, `∂_ω ξᴸ = T ξᴺ + qᴸ`, both `ξ` holomorphic and `1`-periodic on `T_r`, and `qᴺ`,
`qᴸ` bounded by `Q`, `‖T‖ ≤ H_T` on `T_{r-δ}`:
`‖ξᴺ‖ ≤ (1 + σ_T H_T) c(n, τ) (γ δ^{τ+n})⁻¹ Q + σ_T Q` on `T_{r-δ}`. -/
theorem normal_bound (hω : IsDiophantine γ τ ω) (hγ : 0 < γ) (hτ : 0 ≤ τ) (hδ : 0 < δ)
    (hδr : δ < r) {σT HT Q : ℝ}
    {T : (Fin n → ℂ) → Matrix (Fin n) (Fin n) ℂ} {ξL ξN qL qN : (Fin n → ℂ) → Fin n → ℂ}
    (hξNd : DifferentiableOn ℂ ξN (complexStrip n r)) (hξNp : IsPeriodicOn ξN r)
    (hξNq : ∀ θ ∈ complexStrip n r, fderiv ℂ ξN θ (fun l => (ω l : ℂ)) = qN θ)
    (hqN : ∀ θ ∈ complexStrip n r, ‖qN θ‖ ≤ Q)
    (hξLd : DifferentiableOn ℂ ξL (complexStrip n r)) (hξLp : IsPeriodicOn ξL r)
    (hξLq : ∀ θ ∈ complexStrip n r,
      fderiv ℂ ξL θ (fun l => (ω l : ℂ)) = T θ *ᵥ ξN θ + qL θ)
    (hqLd : DifferentiableOn ℂ qL (complexStrip n r)) (hqL : ∀ θ ∈ complexStrip n r, ‖qL θ‖ ≤ Q)
    (hTc : Continuous fun x : Fin n → ℝ => T (fun i => (x i : ℂ)))
    (hTb : ∀ θ ∈ complexStrip n (r - δ), ‖T θ‖ ≤ HT)
    (hTinv : IsUnit (avg T).det) (hσ : ‖(avg T)⁻¹‖ ≤ σT) :
    ∀ θ ∈ complexStrip n (r - δ),
      ‖ξN θ‖ ≤ (1 + σT * HT) * (cohConst n τ / (γ * δ ^ (τ + n)) * Q) + σT * Q := by
  have hr : 0 < r := hδ.trans hδr
  have hrδ : 0 < r - δ := by linarith
  have hsub : complexStrip n (r - δ) ⊆ complexStrip n r :=
    Apost.Triangular.strip_mono (by linarith)
  have hosc := osc_bound (H := Q) hω hγ hτ hδ hδr hξNd hξNp
    (fun θ hθ => by rw [hξNq θ hθ]; exact hqN θ hθ)
  have h0 : avg (fun θ => T θ *ᵥ ξN θ + qL θ) = 0 := by
    have hz := ((Apost.averages (n := n)).2.2.2 ξL ω hr hξLd hξLp).2
    rw [← hz]
    exact congrArg torusAverage (funext fun x => (hξLq _ (ofReal_mem_complexStrip hr x)).symm)
  have havg := norm_avg_le (HT := HT) (Q := Q) hrδ hTc
    (continuous_real hr hξNd) (continuous_real hr hqLd) h0 hTinv hσ hTb
    (fun θ hθ => hosc θ hθ) (fun θ hθ => hqL θ (hsub hθ))
  intro θ hθ
  have hHT0 : 0 ≤ HT := (norm_nonneg _).trans (hTb _ (ofReal_mem_complexStrip hrδ 0))
  calc ‖ξN θ‖ = ‖(ξN θ - avg ξN) + avg ξN‖ := by rw [sub_add_cancel]
    _ ≤ ‖ξN θ - avg ξN‖ + ‖avg ξN‖ := norm_add_le _ _
    _ ≤ cohConst n τ / (γ * δ ^ (τ + n)) * Q +
        σT * (HT * (cohConst n τ / (γ * δ ^ (τ + n)) * Q) + Q) :=
        add_le_add (hosc θ hθ) havg
    _ = _ := by ring

end Normal

end QuadAux

open QuadAux

variable {n : ℕ} {τ ρ M σK σB σT μ : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K₁ K₂ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- Blueprint `bp:p3:quadratic`, sup norms as pointwise bounds `Y`. -/
theorem quadratic (hP : Params n τ ρ M σK σB σT μ) (h1 : S1 M 𝔅 h) (h2 : S2 τ ω γ)
    (h3 : S3 ρ σK σB σT μ 𝔅 h ω K₁) (h4 : S4 ρ 𝔅 h ω K₂) (ψ : Fin n → ℝ)
    (hΔ : ∀ θ ∈ complexStrip n ρ, ‖diffMap K₁ K₂ ψ θ‖ < μ)
    (havg : avg (fun θ => ((gramMatrix K₁ θ)⁻¹ * (tangentMat K₁ θ)ᵀ) *ᵥ
      sumVec n (diffMap K₁ K₂ ψ θ)) = 0) :
    ∀ ρ'' ρ' : ℝ, 0 < ρ'' → ρ'' < ρ' → ρ' ≤ 3 * ρ / 4 →
      ∀ Y : ℝ, (∀ θ ∈ complexStrip n ρ', ‖diffMap K₁ K₂ ψ θ‖ ≤ Y) →
        ∀ θ ∈ complexStrip n ρ'', ‖diffMap K₁ K₂ ψ θ‖ ≤
          C_quad n τ ρ M σK σB σT * (γ ^ 2)⁻¹ * ((ρ' - ρ'') / 2) ^ (-(2 * (τ + n))) * Y ^ 2 :=
  by
  intro ρ'' ρ' hρ'' hρ''ρ' hρ'34 Y hY θ hθ
  have hρ := hP.ρ_pos
  have hτ : 0 ≤ τ := hP.tau_pos.le
  have hκ := hP.kappa_pos
  have hCP := C_P_pos hP
  have hM := hP.M_pos
  have hCL := C_L_pos hP
  have hCN := C_N_pos hP
  set δ : ℝ := (ρ' - ρ'') / 2 with hδdef
  have hδ : 0 < δ := by rw [hδdef]; linarith
  have hρ' : 0 < ρ' := hρ''.trans hρ''ρ'
  have hρ'ρ : ρ' < ρ := by linarith
  have hδρ' : δ < ρ' := by rw [hδdef]; linarith
  have hδρ'δ : δ < ρ' - δ := by rw [hδdef]; linarith
  have hδρ : δ ≤ ρ := by linarith
  have hr2 : ρ' - δ - δ = ρ'' := by rw [hδdef]; ring
  have hY0 : 0 ≤ Y := (norm_nonneg _).trans (hY _ (ofReal_mem_complexStrip hρ' 0))
  have hY2 : 0 ≤ Y ^ 2 := sq_nonneg Y
  -- the constants
  set a : ℝ := (γ * δ ^ (τ + n))⁻¹ with ha
  have hγ := h2.gamma_pos
  have ha0 : 0 < a := by
    have : 0 < δ ^ (τ + (n : ℝ)) := Real.rpow_pos_of_pos hδ _
    rw [ha]
    positivity
  have habs := one_le_absorb hP hγ (frequency_bound hP h1 h2 h3).2 hδ hδρ
  rw [← ha] at habs
  -- data from `bp:p3:torsion-bound` and `bp:p3:difference-equation`
  obtain ⟨hTd, hTc, hTb, -, hTavg⟩ := torsion_bound hP h1 h2 h3
  obtain ⟨⟨hΔd, hξd, hqd, hΔp, hξp, hcomp⟩, hder, hbd⟩ :=
    difference_equation hP h1 h2 h3 h4 ψ hΔ
  have hsA : complexStrip n ρ' ⊆ complexStrip n ρ := Apost.Triangular.strip_mono hρ'ρ.le
  have hsB : complexStrip n (ρ' - δ) ⊆ complexStrip n ρ' :=
    Apost.Triangular.strip_mono (by linarith)
  have hsC : complexStrip n ρ'' ⊆ complexStrip n (ρ' - δ) :=
    Apost.Triangular.strip_mono (by linarith)
  -- `|q| ≤ Q` on `T_{ρ'}`
  have hq : ∀ θ ∈ complexStrip n ρ',
      ‖diffQ h K₁ (diffMap K₁ K₂ ψ) θ‖ ≤ 1 / 2 * C_P n σK σB * M * Y ^ 2 := fun θ hθ =>
    (hbd θ (hsA hθ)).2.2.trans (mul_le_mul_of_nonneg_left
      (pow_le_pow_left₀ (norm_nonneg _) (hY θ hθ) 2) (by positivity))
  -- the average of the torsion
  have hTinv : IsUnit (avg (torsion h K₁ ω)).det := by
    rw [← hTavg]
    exact h3.twist.1
  have hσ : ‖(avg (torsion h K₁ ω))⁻¹‖ ≤ σT := by
    rw [← hTavg]
    linarith [h3.twist.2, hP.μ_pos]
  have hTbB : ∀ θ ∈ complexStrip n (ρ' - δ), ‖torsion h K₁ ω θ‖ ≤ C_tor n ρ M σK σB :=
    fun θ hθ => hTb θ (Apost.Triangular.strip_mono (by linarith) hθ)
  -- `step:p3:quad-normal-osc`, `step:p3:quad-normal-avg`
  have hNb := normal_bound (ω := ω) (γ := γ) (τ := τ) (r := ρ') (δ := δ) h2.dio hγ hτ hδ hδρ'
    (σT := σT) (HT := C_tor n ρ M σK σB) (Q := 1 / 2 * C_P n σK σB * M * Y ^ 2)
    (T := torsion h K₁ ω)
    (ξL := fun θ i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inl i))
    (ξN := fun θ i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inr i))
    (qL := fun θ i => diffQ h K₁ (diffMap K₁ K₂ ψ) θ (Sum.inl i))
    (qN := fun θ i => diffQ h K₁ (diffMap K₁ K₂ ψ) θ (Sum.inr i))
    ((differentiableOn_reindex hξd Sum.inr).mono hsA)
    (Apost.Triangular.isPeriodicOn_mono hρ'ρ.le (isPeriodicOn_reindex hξp Sum.inr))
    (fun θ hθ => (hder θ (hsA hθ)).2)
    (fun θ hθ => (norm_reindex_le _ Sum.inr).trans (hq θ hθ))
    ((differentiableOn_reindex hξd Sum.inl).mono hsA)
    (Apost.Triangular.isPeriodicOn_mono hρ'ρ.le (isPeriodicOn_reindex hξp Sum.inl))
    (fun θ hθ => (hder θ (hsA hθ)).1)
    ((differentiableOn_reindex hqd Sum.inl).mono hsA)
    (fun θ hθ => (norm_reindex_le _ Sum.inl).trans (hq θ hθ))
    hTc hTbB hTinv hσ
  -- `step:p3:quad-normal`
  have hN : ∀ θ ∈ complexStrip n (ρ' - δ),
      ‖fun i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inr i)‖ ≤
        C_N n τ ρ M σK σB σT * a * Y ^ 2 := fun θ hθ => by
    have hc := normal_coeff_le hP (a := a) (Y2 := Y ^ 2)
      (X := cohConst n τ / (γ * δ ^ (τ + n)) * (1 / 2 * C_P n σK σB * M * Y ^ 2)) hY2 habs
      (le_of_eq (by rw [C_coh, ha, div_eq_mul_inv]))
    calc _ ≤ (1 + σT * C_tor n ρ M σK σB) *
          (cohConst n τ / (γ * δ ^ (τ + n)) * (1 / 2 * C_P n σK σB * M * Y ^ 2)) +
          σT * (1 / 2 * C_P n σK σB * M * Y ^ 2) := hNb θ hθ
      _ = (1 + σT * C_tor n ρ M σK σB) *
          (cohConst n τ / (γ * δ ^ (τ + n)) * (1 / 2 * C_P n σK σB * M * Y ^ 2)) +
          1 / 2 * σT * C_P n σK σB * M * Y ^ 2 := by ring
      _ ≤ _ := hc
  -- `step:p3:quad-tangent`
  have hH : ∀ θ ∈ complexStrip n (ρ' - δ),
      ‖fderiv ℂ (fun θ i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inl i)) θ (fun l => (ω l : ℂ))‖ ≤
        (C_tor n ρ M σK σB * C_N n τ ρ M σK σB σT +
          1 / 2 * C_P n σK σB * M * C_Gamma n M σK σB * ρ ^ (τ + n)) * a * Y ^ 2 :=
    fun θ hθ => by
    rw [(hder θ (hsA (hsB hθ))).1]
    calc _ ≤ ‖torsion h K₁ ω θ *ᵥ fun i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inr i)‖ +
          ‖fun i => diffQ h K₁ (diffMap K₁ K₂ ψ) θ (Sum.inl i)‖ := norm_add_le _ _
      _ ≤ C_tor n ρ M σK σB * (C_N n τ ρ M σK σB σT * a * Y ^ 2) +
          1 / 2 * C_P n σK σB * M * Y ^ 2 :=
        add_le_add ((Matrix.linfty_opNorm_mulVec _ _).trans
          (mul_le_mul (hTbB θ hθ) (hN θ hθ) (norm_nonneg _) (C_tor_pos hP).le))
          ((norm_reindex_le _ Sum.inl).trans (hq θ (hsB hθ)))
      _ ≤ _ := tangent_coeff_le hP hY2 habs le_rfl
  have hξL0 : avg (fun θ i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inl i)) = 0 := by
    rw [← havg]
    exact congrArg torusAverage
      (funext fun x => (hcomp _ (hsA (ofReal_mem_complexStrip hρ' x))).2.1)
  have hL := cohomological_apriori_pi (ω := ω) h2.dio hγ hτ hδ hδρ'δ
    (u := fun θ i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inl i))
    (((differentiableOn_reindex hξd Sum.inl).mono hsA).mono hsB)
    (Apost.Triangular.isPeriodicOn_mono (by linarith) (isPeriodicOn_reindex hξp Sum.inl)) hξL0 hH
  have hXL : ∀ θ ∈ complexStrip n ρ'',
      ‖fun i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inl i)‖ ≤
        C_L n τ ρ M σK σB σT * a ^ 2 * Y ^ 2 := fun θ hθ => by
    have hθ2 : θ ∈ complexStrip n (ρ' - δ - δ) := by rw [hr2]; exact hθ
    calc _ ≤ cohConst n τ / (γ * δ ^ (τ + n)) *
          ((C_tor n ρ M σK σB * C_N n τ ρ M σK σB σT +
            1 / 2 * C_P n σK σB * M * C_Gamma n M σK σB * ρ ^ (τ + n)) * a * Y ^ 2) :=
        hL θ hθ2
      _ = C_coh n τ * a * ((C_tor n ρ M σK σB * C_N n τ ρ M σK σB σT +
            1 / 2 * C_P n σK σB * M * C_Gamma n M σK σB * ρ ^ (τ + n)) * a * Y ^ 2) := by
        rw [C_coh, ha, div_eq_mul_inv]
      _ = _ := C_L_mul_eq a (Y ^ 2)
  -- `step:p3:quad-combine`
  have hXi : ∀ θ ∈ complexStrip n ρ'', ‖diffXi K₁ (diffMap K₁ K₂ ψ) θ‖ ≤
      max (C_L n τ ρ M σK σB σT * a ^ 2 * Y ^ 2) (C_N n τ ρ M σK σB σT * a * Y ^ 2) :=
    fun θ hθ => by
    refine (pi_norm_le_iff_of_nonneg (le_max_of_le_left (by positivity))).2 ?_
    rintro (i | i)
    · exact (norm_le_pi_norm (fun i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inl i)) i).trans
        ((hXL θ hθ).trans (le_max_left _ _))
    · exact (norm_le_pi_norm (fun i => diffXi K₁ (diffMap K₁ K₂ ψ) θ (Sum.inr i)) i).trans
        ((hN θ (hsC hθ)).trans (le_max_right _ _))
  calc ‖diffMap K₁ K₂ ψ θ‖
      ≤ C_P n σK σB * ‖diffXi K₁ (diffMap K₁ K₂ ψ) θ‖ :=
        (hbd θ (hsA (hsB (hsC hθ)))).2.1
    _ ≤ C_P n σK σB * max (C_L n τ ρ M σK σB σT * a ^ 2 * Y ^ 2)
          (C_N n τ ρ M σK σB σT * a * Y ^ 2) :=
        mul_le_mul_of_nonneg_left (hXi θ hθ) hCP.le
    _ ≤ C_quad n τ ρ M σK σB σT * a ^ 2 * Y ^ 2 :=
        combine_coeff_le hP ha0.le hY2 habs le_rfl le_rfl
    _ = _ := by rw [ha, inv_mul_rpow_sq hδ]; ring

end KAM.Uniq

end
