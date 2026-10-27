/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Hamiltonian
public import KAM.Apost.Constants
public import KAM.Apost.Tools
public import KAM.Strip.Bridges
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# The frequency bound and the bounds on the frame

Blueprint Part 2, Lemmas `bp:p2:frequency` (`KAM.Apost.frequency`) and `bp:p2:frame-basic`
(`KAM.Apost.frame_basic`). Write `𝔪 = mSize M σK σB σT`, `L = DK`, `B = G⁻¹`, `N = Ω₀ L B` and
`P = (L N)`.

* `frequency`: if `K` maps `T_r` into `𝔅` and satisfies (A3), (A4), (A6) there with `ε ≤ 1`, then
  `γ ≤ |ω| ≤ 2 n σ_K σ_B (M + ε) ≤ Θ`. From `E = X_h(K) - L ω` and `B Lᵀ L = I` one gets
  `ω = B Lᵀ (X_h(K) - E)` (`KAM.Apost.FrameAux.ofReal_eq_inv_mul_transpose_mulVec`); the upper
  bound is a product of norms, the lower bound is the Diophantine inequality at `k = e₁`.
* `frame_basic`: for `K` holomorphic on `T_r` with (A2)–(A4):
  (a) `L, G, E, A, Ω_K, B, N, P, X_N, T, E_sym, Q, η` are holomorphic on `T_r`, `B` is symmetric and
  `T` is continuous on `ℝⁿ`;
  (b) `|L| ≤ 𝔪`, `|Lᵀ| ≤ 2n𝔪`, `|B| ≤ 𝔪`, `|N| ≤ 𝔪²`, `|Nᵀ| ≤ 2n𝔪²`, `|P| ≤ 2𝔪²`, `|A| ≤ 𝔪`;
  (c) `|ηᴸ| ≤ 2n𝔪²ε`, `|ηᴺ| ≤ 2n𝔪ε` when `|E| ≤ ε`;
  (d) `|X_N| ≤ C_X/δ`, `|T| ≤ C_T/δ` on `T_{r-δ}` when `|ω| ≤ Θ`, by the Cauchy estimate for
  `∂_ω N` (`KAM.cauchy_corollaries_directional_real`).

Each item is a separate helper lemma in the namespace `KAM.Apost.FrameAux`; the two nodes assemble
them as conjunctions in the order of the blueprint. The matrix norm is the operator norm of
`open scoped Matrix.Norms.Operator` (maximum absolute row sum), the vector norm is the max norm.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Apost

open KAM.Torus

namespace FrameAux

/-! ### Norm bookkeeping -/

section Norms

variable {n : ℕ}

/-- The real vector `ω` as a complex vector has the same max norm. -/
theorem norm_ofReal_vec (ω : Fin n → ℝ) : ‖fun i => (ω i : ℂ)‖ = ‖ω‖ := by
  refine le_antisymm ?_ ?_
  · refine (pi_norm_le_iff_of_nonneg (norm_nonneg _)).2 fun i => ?_
    rw [Complex.norm_real]
    exact norm_le_pi_norm ω i
  · refine (pi_norm_le_iff_of_nonneg (norm_nonneg _)).2 fun i => ?_
    simpa using norm_le_pi_norm (fun i => (ω i : ℂ)) i

/-- `‖L‖ = ‖DK‖`: the matrix `L` has the operator norm of the derivative. -/
theorem norm_tangentMat (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (θ : Fin n → ℂ) :
    ‖tangentMat K θ‖ = ‖fderiv ℂ K θ‖ :=
  norm_colMat _

/-- `‖A‖ = ‖DX_h ∘ K‖`: the matrix `A` has the operator norm of the derivative of `X_h`. -/
theorem norm_linMat (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (θ : Fin n → ℂ) :
    ‖linMat h K θ‖ = ‖fderiv ℂ (hamiltonianVectorFieldℂ h) (K θ)‖ :=
  norm_sqMat _

/-- The transpose of a matrix with `2n` rows has norm at most `2n` times the norm. -/
theorem norm_transpose_le_two_mul {κ : Type*} [Fintype κ] (A : Matrix (Fin n ⊕ Fin n) κ ℂ) :
    ‖Aᵀ‖ ≤ 2 * n * ‖A‖ := by
  refine (norm_transpose_le_card_mul A).trans (le_of_eq ?_)
  rw [Fintype.card_sum, Fintype.card_fin]
  push_cast
  ring

/-- The max norm of a `sumVec` image of a difference is at most the sum of the norms. -/
theorem norm_sumVec_sub_le (u v : (Fin n → ℂ) × (Fin n → ℂ)) :
    ‖sumVec n u - sumVec n v‖ ≤ ‖u‖ + ‖v‖ := by
  rw [← map_sub, norm_sumVec]
  exact norm_sub_le u v

end Norms

/-! ### The frequency bound (`bp:p2:frequency`) -/

section Frequency

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
  {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- Step `step:p2:freq-solve`: `ω = B Lᵀ (X_h(K) - E)` at every `θ` with `det G` a unit. -/
theorem ofReal_eq_inv_mul_transpose_mulVec {θ : Fin n → ℂ} (hG : IsUnit (gramMatrix K θ).det) :
    (fun l => (ω l : ℂ)) = ((gramMatrix K θ)⁻¹ * (tangentMat K θ)ᵀ) *ᵥ
      (sumVec n (hamiltonianVectorFieldℂ h (K θ)) - sumVec n (invarianceError h K ω θ)) := by
  rw [sumVec_invarianceError h K ω θ, sub_sub_cancel, Matrix.mulVec_mulVec, Matrix.mul_assoc,
    ← gramMatrix_eq_tangentMat_transpose_mul, inv_gramMatrix_mul K hG, Matrix.one_mulVec]

/-- Step `step:p2:freq-upper` at one point `θ`. -/
theorem norm_le_of_pointwise {θ : Fin n → ℂ} {ε : ℝ} (hG : IsUnit (gramMatrix K θ).det)
    (hX : ‖hamiltonianVectorFieldℂ h (K θ)‖ ≤ M) (hE : ‖invarianceError h K ω θ‖ ≤ ε)
    (hL : ‖fderiv ℂ K θ‖ ≤ σK) (hB : ‖(gramMatrix K θ)⁻¹‖ ≤ σB) :
    ‖ω‖ ≤ 2 * n * σK * σB * (M + ε) := by
  have hK0 : 0 ≤ σK := (norm_nonneg _).trans hL
  have hB0 : 0 ≤ σB := (norm_nonneg _).trans hB
  have hv : ‖sumVec n (hamiltonianVectorFieldℂ h (K θ)) - sumVec n (invarianceError h K ω θ)‖ ≤
      M + ε := (norm_sumVec_sub_le _ _).trans (add_le_add hX hE)
  have hLT : ‖(tangentMat K θ)ᵀ‖ ≤ 2 * n * σK :=
    (norm_transpose_le_two_mul _).trans (by
      rw [norm_tangentMat]
      gcongr)
  have hBL : ‖(gramMatrix K θ)⁻¹ * (tangentMat K θ)ᵀ‖ ≤ σB * (2 * n * σK) :=
    (Matrix.linfty_opNorm_mul _ _).trans (mul_le_mul hB hLT (norm_nonneg _) hB0)
  have hε0 : 0 ≤ M + ε := (norm_nonneg _).trans hv
  rw [← norm_ofReal_vec, ofReal_eq_inv_mul_transpose_mulVec (h := h) hG]
  calc _ ≤ ‖(gramMatrix K θ)⁻¹ * (tangentMat K θ)ᵀ‖ * _ := Matrix.linfty_opNorm_mulVec _ _
    _ ≤ σB * (2 * n * σK) * (M + ε) := mul_le_mul hBL hv (norm_nonneg _) (by positivity)
    _ = 2 * n * σK * σB * (M + ε) := by ring

/-- Step `step:p2:freq-lower`: `γ ≤ |ω|`, the Diophantine inequality at `k = e₁`. -/
theorem le_norm_of_dio (hn : 2 ≤ n) {τ : ℝ} (hdio : IsDiophantine γ τ ω) : γ ≤ ‖ω‖ := by
  have hn0 : 0 < n := by omega
  set i₀ : Fin n := ⟨0, hn0⟩ with hi₀
  have hk : (Pi.single i₀ (1 : ℤ) : Fin n → ℤ) ≠ 0 := by
    intro h0
    have := congrFun h0 i₀
    simp at this
  have h1 := hdio _ hk
  have hsum : (∑ i, |(((Pi.single i₀ (1 : ℤ) : Fin n → ℤ) i : ℤ) : ℝ)|) = 1 := by
    rw [Finset.sum_eq_single i₀ (fun j _ hj => by simp [hj]) (by simp)]
    simp
  have hsum2 : (∑ i, (((Pi.single i₀ (1 : ℤ) : Fin n → ℤ) i : ℤ) : ℝ) * ω i) = ω i₀ := by
    simp [Pi.single_apply]
  rw [hsum, hsum2, Real.one_rpow, div_one] at h1
  exact h1.trans ((le_abs_self _).trans (by simpa using norm_le_pi_norm ω i₀))

/-- The arithmetic `2nσ_Kσ_B(M + ε) ≤ Θ` for `M + ε ≤ 2𝔪`. -/
theorem two_mul_le_Theta (hP : Params n τ M σK σB σT) {ε : ℝ} (hε0 : 0 ≤ ε) (hε : ε ≤ 1) :
    2 * n * σK * σB * (M + ε) ≤ Theta n M σK σB σT := by
  have hm := one_le_mSize (M := M) (σK := σK) (σB := σB) (σT := σT)
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hK := σK_le_mSize (M := M) (σK := σK) (σB := σB) (σT := σT)
  have hB := σB_le_mSize (M := M) (σK := σK) (σB := σB) (σT := σT)
  have hM := M_le_mSize (M := M) (σK := σK) (σB := σB) (σT := σT)
  have hK0 := hP.σK_pos.le
  have hB0 := hP.σB_pos.le
  have hMε : M + ε ≤ 2 * mSize M σK σB σT := by linarith
  have hMε0 : 0 ≤ M + ε := by have := hP.M_pos; positivity
  calc 2 * n * σK * σB * (M + ε)
      ≤ 2 * n * mSize M σK σB σT * mSize M σK σB σT * (2 * mSize M σK σB σT) := by gcongr
    _ = Theta n M σK σB σT := by unfold Theta; ring

end Frequency

end FrameAux

/-- Blueprint `bp:p2:frequency`. -/
theorem frequency {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
    {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}
    (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r ε : ℝ} (hr : 0 < r) (hε : ε ≤ 1)
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅)
    (hA3 : ∀ θ ∈ complexStrip n r, ‖fderiv ℂ K θ‖ ≤ σK)
    (hA4 : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det ∧ ‖(gramMatrix K θ)⁻¹‖ ≤ σB)
    (hA6 : ∀ θ ∈ complexStrip n r, ‖invarianceError h K ω θ‖ ≤ ε) :
    γ ≤ ‖ω‖ ∧ ‖ω‖ ≤ 2 * n * σK * σB * (M + ε) ∧
      2 * n * σK * σB * (M + ε) ≤ Theta n M σK σB σT := by
  have h0 : (0 : Fin n → ℂ) ∈ complexStrip n r := fun i => by simpa using hr
  have hε0 : 0 ≤ ε := (norm_nonneg _).trans (hA6 0 h0)
  exact ⟨FrameAux.le_norm_of_dio hS.two_le hS.dio,
    FrameAux.norm_le_of_pointwise (hA4 0 h0).1 (hS.bounds _ (hK𝔅 0 h0)).1 (hA6 0 h0) (hA3 0 h0)
      (hA4 0 h0).2,
    FrameAux.two_mul_le_Theta hS.toParams hε0 hε⟩

end KAM.Apost

end
