/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Head.Defs
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# The parameters of the applications of G1 and G2, and the smallness consequences

Blueprint Part 4: Definition `bp:p4:parameters` (its claims) and Lemma `bp:p4:smallness`
(package P4-3; design `docs/campaign/design/PART4-LEAN-DESIGN.md`, Appendix A section 7).

The constants (`sigmaK`, ..., `A0`-`A4`, `lamStar`, `cT`, `etaStar`, `cStar`) are defined in
`KAM/Head/Defs.lean`. This module proves, once and for all, the inequalities about them; later
modules never unfold a constant. The module needs the constants `gc` of the frozen G1 and G2 only
through their positivity (`GConsts.Pos`).

* `KAM.Head.parameters` is the list of claims of Definition `bp:p4:parameters`: the side
  conditions of the three frozen applications, the values `σ_K - μ = σ_B - μ = 2` and
  `σ_T - μ = 4 L₊`, the identity `δ_*² / (2 L₊ c̄) = 1 / (2 L₊ F₂)` for the second entry of `c_*`,
  and the positivity of `λ_*`, `c_T`, `η_*(δ)`, `A₀`-`A₄` and `c_*`.
* `KAM.Head.smallness` is Lemma `bp:p4:smallness`, items (s1)-(s7). Each item has the exact shape
  its consumer needs.

The proofs go through the namespace `KAM.Head.Parameters`:

* a pack of positivity and monotonicity lemmas for the constants (`Fconst_pos`, `Mconst_pos`,
  `cT_pos`, `etaStar_pos`, `etaStar_mono`, ...);
* `cStar_pos` and the eight inequalities `cStar_le_one`, ..., `cStar_le_last` (one for each entry
  of the minimum defining `c_*`);
* the item lemmas `smallness_s1`, ..., `smallness_s7`, each reduced to the abstract inequality
  `mul_le_of_le_cStar` (`ε ≤ c x` and `c ≤ P / Q` give `Q ε ≤ P x`).
-/

@[expose] public section

namespace KAM.Head

namespace Parameters

variable {n : ℕ} {τ s₀ r₀ Lh : ℝ} {B : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ} {gc : GConsts}

/-! ### Positivity of the elementary constants -/

theorem cbar_pos (n : ℕ) : 0 < cbar n := by
  rw [cbar_eq]
  norm_num

theorem Lplus_pos (Lh : ℝ) : 0 < Lplus Lh := one_pos.trans_le (one_le_Lplus Lh)

theorem Fconst_pos (n : ℕ) (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) (j : ℕ) : 0 < Fconst n s₀ r₀ j :=
  div_pos (cbar_pos n) (pow_pos (deltaStar_pos hs₀ hr₀) j)

theorem Hconst_nonneg (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) (j : ℕ) : 0 ≤ Hconst s₀ r₀ B h j :=
  div_nonneg (mul_nonneg (cbar_pos n).le (hBound_nonneg h B r₀))
    (pow_nonneg (deltaStar_pos hs₀ hr₀).le j)

theorem Mconst_pos (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) : 0 < Mconst s₀ r₀ B h :=
  div_pos (mul_pos (cbar_pos n) (add_pos_of_nonneg_of_pos (hBound_nonneg h B r₀) one_pos))
    (pow_pos (deltaStar_pos hs₀ hr₀) 3)

theorem Winf_nonneg (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) : 0 ≤ Winf s₀ r₀ B h :=
  Hconst_nonneg hs₀ hr₀ 1

theorem LambdaG_nonneg (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) : 0 ≤ LambdaG s₀ r₀ B h :=
  le_max_of_le_left (Hconst_nonneg hs₀ hr₀ 2)

theorem lamStar_pos (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) : 0 < lamStar Lh s₀ r₀ :=
  div_pos (deltaStar_pos hs₀ hr₀) (mul_pos four_pos (Lplus_pos Lh))

theorem cT_pos (hn : 2 ≤ n) (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) : 0 < cT s₀ r₀ B h := by
  have hn' : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hM := Mconst_pos (B := B) (h := h) hs₀ hr₀
  have hW := Winf_nonneg (B := B) (h := h) hs₀ hr₀
  unfold cT
  positivity

/-- `n ≤ c_T`, since `c_T ≥ 304 n³`. -/
theorem natCast_le_cT (hn : 2 ≤ n) (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) :
    (n : ℝ) ≤ cT s₀ r₀ B h := by
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast (by omega : 1 ≤ n)
  have hM := Mconst_pos (B := B) (h := h) hs₀ hr₀
  have hW := Winf_nonneg (B := B) (h := h) hs₀ hr₀
  have h3 : (n : ℝ) ≤ (n : ℝ) ^ 3 := le_self_pow₀ hn1 (by norm_num)
  unfold cT
  nlinarith

/-! ### The function `η_*` -/

theorem etaStar_pos (hn : 2 ≤ n) (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) {δ : ℝ} (hδ : 0 < δ) :
    0 < etaStar s₀ r₀ B h Lh δ :=
  lt_min (muParam_pos hs₀ hr₀)
    (div_pos (pow_pos hδ 2)
      (mul_pos (mul_pos (by norm_num) (cT_pos hn hs₀ hr₀)) (Lplus_pos Lh)))

theorem etaStar_le_muParam (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) (Lh δ : ℝ) :
    etaStar s₀ r₀ B h Lh δ ≤ muParam s₀ r₀ :=
  min_le_left _ _

theorem etaStar_le_div (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) (h : (Fin n → ℂ) → ℂ) (Lh δ : ℝ) :
    etaStar s₀ r₀ B h Lh δ ≤ δ ^ 2 / (16 * cT s₀ r₀ B h * Lplus Lh) :=
  min_le_right _ _

theorem etaStar_mono (hn : 2 ≤ n) (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) {δ δ' : ℝ} (hδ : 0 ≤ δ)
    (hδδ' : δ ≤ δ') : etaStar s₀ r₀ B h Lh δ ≤ etaStar s₀ r₀ B h Lh δ' := by
  have hden : 0 ≤ 16 * cT s₀ r₀ B h * Lplus Lh :=
    (mul_pos (mul_pos (by norm_num) (cT_pos hn hs₀ hr₀)) (Lplus_pos Lh)).le
  unfold etaStar
  exact min_le_min le_rfl (div_le_div_of_nonneg_right (pow_le_pow_left₀ hδ hδδ' 2) hden)

/-! ### Positivity of `σ_K, σ_B, σ_T` and of `A₀, ..., A₄` -/

theorem sigmaK_pos (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) : 0 < sigmaK s₀ r₀ :=
  add_pos two_pos (muParam_pos hs₀ hr₀)

theorem sigmaB_pos (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) : 0 < sigmaB s₀ r₀ :=
  add_pos two_pos (muParam_pos hs₀ hr₀)

theorem sigmaT_pos (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) : 0 < sigmaT Lh s₀ r₀ :=
  add_pos (mul_pos four_pos (Lplus_pos Lh)) (muParam_pos hs₀ hr₀)

theorem A0_pos (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) (hgc : gc.Pos) : 0 < A0 n τ s₀ r₀ gc := by
  have hs := stripWidth_pos hs₀
  exact div_pos (mul_pos (mul_pos two_pos hgc.C21_pos) (Fconst_pos n hs₀ hr₀ 1))
    (Real.rpow_pos_of_pos (by positivity) _)

theorem A1_pos (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) (hgc : gc.Pos) :
    0 < A1 τ s₀ r₀ B h Lh gc := by
  have hs := stripWidth_pos hs₀
  have hA0 := A0_pos (n := n) (τ := τ) hs₀ hr₀ hgc
  have hH3 := Hconst_nonneg (B := B) (h := h) hs₀ hr₀ 3
  have hF2 := Fconst_pos n hs₀ hr₀ 2
  have hL := Lplus_pos Lh
  unfold A1
  positivity

theorem A2_pos (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) (hgc : gc.Pos) :
    0 < A2 τ s₀ r₀ B h Lh gc := by
  have hs := stripWidth_pos hs₀
  have hA1 := A1_pos (τ := τ) (B := B) (h := h) (Lh := Lh) hs₀ hr₀ hgc
  have hσ := sigmaK_pos hs₀ hr₀
  have hC22 := hgc.C22_pos
  exact div_pos (mul_pos (mul_pos (by linarith) hC22) hA1)
    (Real.rpow_pos_of_pos (by positivity) _)

theorem A3_pos (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) (hgc : gc.Pos) :
    0 < A3 τ s₀ r₀ B h Lh gc :=
  lt_max_of_lt_left (A2_pos hs₀ hr₀ hgc)

theorem A4_pos (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) (hn : 2 ≤ n) (hgc : gc.Pos) :
    0 < A4 n τ s₀ r₀ gc := by
  have hs := stripWidth_pos hs₀
  have hA0 := A0_pos (n := n) (τ := τ) hs₀ hr₀ hgc
  have hn' : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  unfold A4
  positivity

/-! ### The eight entries of `c_*` -/

theorem cStar_le_1 : cStar τ s₀ r₀ B h Lh gc ≤ 1 :=
  min_le_left _ _

theorem cStar_le_2 :
    cStar τ s₀ r₀ B h Lh gc ≤ deltaStar s₀ r₀ ^ 2 / (2 * Lplus Lh * cbar n) :=
  (min_le_right _ _).trans (min_le_left _ _)

theorem cStar_le_3 :
    cStar τ s₀ r₀ B h Lh gc ≤
      (stripWidth s₀ / 4) ^ (4 * τ) / (2 * gc.C11 * Fconst n s₀ r₀ 1) :=
  (min_le_right _ _).trans ((min_le_right _ _).trans (min_le_left _ _))

theorem cStar_le_4 :
    cStar τ s₀ r₀ B h Lh gc ≤
      etaStar s₀ r₀ B h Lh (stripWidth s₀ / 32) / A0 n τ s₀ r₀ gc :=
  (min_le_right _ _).trans ((min_le_right _ _).trans
    ((min_le_right _ _).trans (min_le_left _ _)))

theorem cStar_le_5 :
    cStar τ s₀ r₀ B h Lh gc ≤ (3 * stripWidth s₀ / 32) ^ (4 * τ) /
      (2 * gc.C12 * A1 τ s₀ r₀ B h Lh gc * lamStar Lh s₀ r₀) :=
  (min_le_right _ _).trans ((min_le_right _ _).trans ((min_le_right _ _).trans
    ((min_le_right _ _).trans (min_le_left _ _))))

theorem cStar_le_6 :
    cStar τ s₀ r₀ B h Lh gc ≤ gc.cG * (stripWidth s₀ / 16) ^ (2 * τ) /
      (2 * A0 n τ s₀ r₀ gc +
        gc.C22 * A1 τ s₀ r₀ B h Lh gc * lamStar Lh s₀ r₀ / (3 * stripWidth s₀ / 32) ^ (2 * τ)) :=
  (min_le_right _ _).trans ((min_le_right _ _).trans ((min_le_right _ _).trans
    ((min_le_right _ _).trans ((min_le_right _ _).trans (min_le_left _ _)))))

theorem cStar_le_7 :
    cStar τ s₀ r₀ B h Lh gc ≤
      1 / (4 * (A3 τ s₀ r₀ B h Lh gc * LambdaG s₀ r₀ B h + A4 n τ s₀ r₀ gc)) :=
  (min_le_right _ _).trans ((min_le_right _ _).trans ((min_le_right _ _).trans
    ((min_le_right _ _).trans ((min_le_right _ _).trans ((min_le_right _ _).trans
      (min_le_left _ _))))))

theorem cStar_le_8 : cStar τ s₀ r₀ B h Lh gc ≤ 1 / (2 * A0 n τ s₀ r₀ gc) :=
  (min_le_right _ _).trans ((min_le_right _ _).trans ((min_le_right _ _).trans
    ((min_le_right _ _).trans ((min_le_right _ _).trans ((min_le_right _ _).trans
      (min_le_right _ _))))))

theorem cStar_pos (hn : 2 ≤ n) (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) (hgc : gc.Pos) :
    0 < cStar τ s₀ r₀ B h Lh gc := by
  have hs := stripWidth_pos hs₀
  have hA0 := A0_pos (n := n) (τ := τ) hs₀ hr₀ hgc
  have hA1 := A1_pos (τ := τ) (B := B) (h := h) (Lh := Lh) hs₀ hr₀ hgc
  have hA3 := A3_pos (τ := τ) (B := B) (h := h) (Lh := Lh) hs₀ hr₀ hgc
  have hA4 := A4_pos (τ := τ) hs₀ hr₀ hn hgc
  have hΛ := LambdaG_nonneg (B := B) (h := h) hs₀ hr₀
  have hlam := lamStar_pos (Lh := Lh) hs₀ hr₀
  have hF1 := Fconst_pos n hs₀ hr₀ 1
  have hL := Lplus_pos Lh
  have hδ := deltaStar_pos hs₀ hr₀
  have hC11 := hgc.C11_pos
  have hC12 := hgc.C12_pos
  have hC22 := hgc.C22_pos
  have hcG := hgc.cG_pos
  have hr4 : 0 < (stripWidth s₀ / 4) ^ (4 * τ) := Real.rpow_pos_of_pos (by positivity) _
  have hr332 : 0 < (3 * stripWidth s₀ / 32) ^ (4 * τ) := Real.rpow_pos_of_pos (by positivity) _
  have hr332' : 0 < (3 * stripWidth s₀ / 32) ^ (2 * τ) := Real.rpow_pos_of_pos (by positivity) _
  have hr16 : 0 < (stripWidth s₀ / 16) ^ (2 * τ) := Real.rpow_pos_of_pos (by positivity) _
  have hη := etaStar_pos (B := B) (h := h) (Lh := Lh) hn hs₀ hr₀ (δ := stripWidth s₀ / 32)
    (by positivity)
  unfold cStar
  refine lt_min one_pos (lt_min ?_ (lt_min ?_ (lt_min ?_ (lt_min ?_ (lt_min ?_ (lt_min ?_ ?_))))))
  · exact div_pos (pow_pos hδ 2) (mul_pos (mul_pos two_pos hL) (cbar_pos n))
  · exact div_pos hr4 (mul_pos (mul_pos two_pos hC11) hF1)
  · exact div_pos hη hA0
  · exact div_pos hr332 (mul_pos (mul_pos (mul_pos two_pos hC12) hA1) hlam)
  · exact div_pos (mul_pos hcG hr16)
      (add_pos (mul_pos two_pos hA0) (div_pos (mul_pos (mul_pos hC22 hA1) hlam) hr332'))
  · exact one_div_pos.2 (mul_pos four_pos (add_pos_of_nonneg_of_pos (mul_nonneg hA3.le hΛ) hA4))
  · exact one_div_pos.2 (mul_pos two_pos hA0)

/-- The second entry of `c_*`: `δ_*² / (2 L₊ c̄) = 1 / (2 L₊ F₂)`. -/
theorem deltaStar_sq_div_eq (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) :
    deltaStar s₀ r₀ ^ 2 / (2 * Lplus Lh * cbar n) = 1 / (2 * Lplus Lh * Fconst n s₀ r₀ 2) := by
  have hδ := (deltaStar_pos hs₀ hr₀).ne'
  have hc := (cbar_pos n).ne'
  have hL := (Lplus_pos Lh).ne'
  unfold Fconst
  field_simp

end Parameters

variable {n : ℕ} {τ s₀ r₀ Lh : ℝ} {B : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ} {ε γ : ℝ}
  {gc : GConsts}

/-- Blueprint `bp:p4:parameters` (claims): the side conditions of the three frozen applications,
`σ - μ` values, the second entry of `c_*`, and positivity of the derived constants. -/
theorem parameters (hD : Data τ s₀ r₀ B h Lh) :
    ((2 ≤ n ∧ (n : ℝ) - 1 ≤ τ) ∧
      (0 < stripWidth s₀ / 8 ∧ stripWidth s₀ / 8 < stripWidth s₀ / 4) ∧
      (0 < stripWidth s₀ / 16 ∧ stripWidth s₀ / 16 < 3 * stripWidth s₀ / 32) ∧
      0 < Mconst s₀ r₀ B h ∧ 0 < sigmaK s₀ r₀ ∧ 0 < sigmaB s₀ r₀ ∧ 0 < sigmaT Lh s₀ r₀ ∧
      0 < muParam s₀ r₀) ∧
    (sigmaK s₀ r₀ - muParam s₀ r₀ = 2 ∧ sigmaB s₀ r₀ - muParam s₀ r₀ = 2 ∧
      sigmaT Lh s₀ r₀ - muParam s₀ r₀ = 4 * Lplus Lh) ∧
    deltaStar s₀ r₀ ^ 2 / (2 * Lplus Lh * cbar n) = 1 / (2 * Lplus Lh * Fconst n s₀ r₀ 2) ∧
    0 < lamStar Lh s₀ r₀ ∧ 0 < cT s₀ r₀ B h ∧ (∀ δ : ℝ, 0 < δ → 0 < etaStar s₀ r₀ B h Lh δ) ∧
    ∀ gc : GConsts, gc.Pos →
      0 < A0 n τ s₀ r₀ gc ∧ 0 < A1 τ s₀ r₀ B h Lh gc ∧ 0 < A2 τ s₀ r₀ B h Lh gc ∧
      0 < A3 τ s₀ r₀ B h Lh gc ∧ 0 < A4 n τ s₀ r₀ gc ∧ 0 < cStar τ s₀ r₀ B h Lh gc := by
  obtain ⟨hn, hτ, hs₀, hr₀, -⟩ := hD
  have hs := stripWidth_pos hs₀
  refine ⟨⟨⟨hn, hτ.le⟩, ⟨by positivity, by linarith⟩, ⟨by positivity, by linarith⟩,
    Parameters.Mconst_pos hs₀ hr₀, Parameters.sigmaK_pos hs₀ hr₀, Parameters.sigmaB_pos hs₀ hr₀,
    Parameters.sigmaT_pos hs₀ hr₀, muParam_pos hs₀ hr₀⟩,
    ⟨by unfold sigmaK; ring, by unfold sigmaB; ring, by unfold sigmaT; ring⟩,
    Parameters.deltaStar_sq_div_eq hs₀ hr₀, Parameters.lamStar_pos hs₀ hr₀,
    Parameters.cT_pos hn hs₀ hr₀, fun δ hδ => Parameters.etaStar_pos hn hs₀ hr₀ hδ,
    fun gc hgc => ⟨Parameters.A0_pos hs₀ hr₀ hgc, Parameters.A1_pos hs₀ hr₀ hgc,
      Parameters.A2_pos hs₀ hr₀ hgc, Parameters.A3_pos hs₀ hr₀ hgc,
      Parameters.A4_pos hs₀ hr₀ hn hgc, Parameters.cStar_pos hn hs₀ hr₀ hgc⟩⟩

end KAM.Head
