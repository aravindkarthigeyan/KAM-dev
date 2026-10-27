/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Standing
public import KAM.Strip.CohomologicalDefs
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.FieldSimp

/-!
# Exponents and constants of Part 2 (blueprint `bp:p2:constants`)

Each constant is a `def` taking exactly the parameters it depends on, so every "depends only on …"
claim of the blueprint is syntactic.

* `(n τ)`: `kappa` (`κ`), `aExp` (`a`), `cR` (`c_R`);
* `(M σK σB σT)`: `mSize` (`𝔪`);
* `(n M σK σB σT)`: `Theta` (`Θ`), `C_X`, `C_T`, `C_red`, `C_G`, `C_B`, `C_DN`, `C_DX`, `C_DT`;
* `(n τ M σK σB σT)`: `C_Omega`, `C_sym`, `C_xi0`, `C_xiN`, `C_g`, `C_xi`, `C_DK`, `C_lin`, `C_E`,
  `c_step`, `c_sum`;
* `(n τ M σK σB σT μ)`: `c_star` (`𝔠_*`);
* `(ρ ρinf)`: `delta0` (`δ₀`).

`KAM.Apost.constants_spec` records the claims of the blueprint: the constants are `≥ 1`, `κ ≥ 1`,
`a ≥ 4` and `δ₀ ∈ (0, 1]`.

## The constant inequalities, proved once

Every inequality between the constants that later parts of Part 2 use is proved here, so that no
later module unfolds a constant. They are grouped by the blueprint step that uses them:

* orderings (`pt-small`): `C_DT ≥ max {n, C_G, C_DN}` (`n_le_C_DT`, `C_G_le_C_DT`,
  `C_DN_le_C_DT`) and `perturbation_small`;
* absorption of powers of `γ` and `δ` (`cor-absorb`, `st-small`, `ne-total`): `div_absorb`;
* smallness of the step (`st-small`): `step_small`;
* the schedule (`it-sums`, `it-stepsmall`): `error_decay_hyp`, `sum_coef_le`, `iteration_step_small`,
  `iteration_sums`;
* G1 (`g1-e`): `g1_error_small`, `g1_closeness_eq`.
-/

@[expose] public noncomputable section

namespace KAM.Apost

variable (n : ℕ) (τ M σK σB σT : ℝ)

/-- `κ = τ + n`. -/
def kappa : ℝ := τ + n
/-- `a = 2κ + 2`. -/
def aExp : ℝ := 2 * kappa n τ + 2
/-- `c_R = max {1, c(n, τ)}`, with `c(n, τ) = KAM.cohConst n τ`. -/
def cR : ℝ := max 1 (cohConst n τ)
/-- `𝔪 = max {1, M, σ_K, σ_B, σ_T}`. -/
def mSize : ℝ := max 1 (max M (max σK (max σB σT)))
/-- `Θ = 4 n 𝔪³`. -/
def Theta : ℝ := 4 * n * mSize M σK σB σT ^ 3
def C_X : ℝ := 5 * (n : ℝ) ^ 2 * mSize M σK σB σT ^ 5
def C_T : ℝ := 2 * n * mSize M σK σB σT ^ 2 * C_X n M σK σB σT
def C_Omega : ℝ := 2 * n * (n + 1) * cR n τ * mSize M σK σB σT
def C_sym : ℝ := mSize M σK σB σT ^ 2 * C_Omega n τ M σK σB σT
def C_red : ℝ := 2 * n * (n + 1) * mSize M σK σB σT ^ 2
def C_xi0 : ℝ := 2 * n * mSize M σK σB σT ^ 2 *
  (mSize M σK σB σT * Theta n M σK σB σT + cR n τ * C_T n M σK σB σT)
def C_xiN : ℝ := C_xi0 n τ M σK σB σT + 2 * n * cR n τ * mSize M σK σB σT
def C_g : ℝ := C_T n M σK σB σT * C_xiN n τ M σK σB σT +
  2 * n * mSize M σK σB σT ^ 2 * Theta n M σK σB σT
def C_xi : ℝ := cR n τ * C_g n τ M σK σB σT + Theta n M σK σB σT * C_xiN n τ M σK σB σT
def C_DK : ℝ := 2 * mSize M σK σB σT ^ 2 * C_xi n τ M σK σB σT
def C_lin : ℝ := C_red n M σK σB σT * C_xi n τ M σK σB σT +
  C_sym n τ M σK σB σT * C_g n τ M σK σB σT
def C_E : ℝ := 4 * mSize M σK σB σT ^ 2 * Theta n M σK σB σT ^ 2 * C_lin n τ M σK σB σT +
  mSize M σK σB σT * C_DK n τ M σK σB σT ^ 2
def C_G : ℝ := 6 * (n : ℝ) ^ 2 * mSize M σK σB σT
def C_B : ℝ := 2 * mSize M σK σB σT ^ 2 * C_G n M σK σB σT
def C_DN : ℝ := 2 * n * mSize M σK σB σT + mSize M σK σB σT * C_B n M σK σB σT
def C_DX : ℝ := 2 * mSize M σK σB σT ^ 3 +
  (mSize M σK σB σT + n * Theta n M σK σB σT) * C_DN n M σK σB σT
def C_DT : ℝ := 4 * n * mSize M σK σB σT ^ 2 * C_DX n M σK σB σT +
  2 * n * C_DN n M σK σB σT * C_X n M σK σB σT
def c_step : ℝ := 2 * Theta n M σK σB σT ^ 4 * max (C_sym n τ M σK σB σT)
  (2 * mSize M σK σB σT * C_DT n M σK σB σT * C_DK n τ M σK σB σT)
def c_sum : ℝ := 4 * Theta n M σK σB σT ^ 2 * C_DK n τ M σK σB σT *
  max (n : ℝ) (max (C_B n M σK σB σT) (mSize M σK σB σT ^ 2 * C_DT n M σK σB σT))
def c_star (μ : ℝ) : ℝ := max ((2 : ℝ) ^ (2 * aExp n τ) * C_E n τ M σK σB σT)
  (max (c_step n τ M σK σB σT * max 1 (2 / μ)) (2 * c_sum n τ M σK σB σT / μ))
def delta0 (ρ ρinf : ℝ) : ℝ := min 1 ((ρ - ρinf) / 8)

variable {n τ M σK σB σT}

/-! ### Elementary facts about the parameters -/

theorem Params.one_le_cast (hP : Params n τ M σK σB σT) : (1 : ℝ) ≤ n := by
  have h : 1 ≤ n := by have := hP.two_le; omega
  exact_mod_cast h

theorem Params.two_le_cast (hP : Params n τ M σK σB σT) : (2 : ℝ) ≤ n := by
  exact_mod_cast hP.two_le

theorem one_le_mSize : 1 ≤ mSize M σK σB σT := le_max_left _ _

theorem M_le_mSize : M ≤ mSize M σK σB σT := (le_max_left _ _).trans (le_max_right _ _)

theorem σK_le_mSize : σK ≤ mSize M σK σB σT :=
  (le_max_left _ _).trans ((le_max_right _ _).trans (le_max_right _ _))

theorem σB_le_mSize : σB ≤ mSize M σK σB σT :=
  (le_max_left _ _).trans
    ((le_max_right _ _).trans ((le_max_right _ _).trans (le_max_right _ _)))

theorem σT_le_mSize : σT ≤ mSize M σK σB σT :=
  (le_max_right _ _).trans
    ((le_max_right _ _).trans ((le_max_right _ _).trans (le_max_right _ _)))

theorem one_le_cR : 1 ≤ cR n τ := le_max_left _ _

theorem cohConst_le_cR : cohConst n τ ≤ cR n τ := le_max_right _ _

theorem one_le_kappa (hP : Params n τ M σK σB σT) : 1 ≤ kappa n τ := by
  have := hP.two_le_cast
  have := hP.tau_ge
  unfold kappa
  linarith

theorem aExp_eq : aExp n τ = 2 * kappa n τ + 2 := rfl

theorem eight_le_aExp (hP : Params n τ M σK σB σT) : 8 ≤ aExp n τ := by
  have := hP.two_le_cast
  have := hP.tau_ge
  unfold aExp kappa
  linarith

theorem four_le_aExp (hP : Params n τ M σK σB σT) : 4 ≤ aExp n τ := by
  have := eight_le_aExp hP
  linarith

theorem one_le_Theta (hP : Params n τ M σK σB σT) : 1 ≤ Theta n M σK σB σT := by
  have hn := hP.one_le_cast
  have h3 : 1 ≤ mSize M σK σB σT ^ 3 := one_le_pow₀ one_le_mSize
  unfold Theta
  exact one_le_mul_of_one_le_of_one_le (by linarith) h3

theorem mSize_le_Theta (hP : Params n τ M σK σB σT) : mSize M σK σB σT ≤ Theta n M σK σB σT := by
  have hn := hP.one_le_cast
  have hm : 1 ≤ mSize M σK σB σT := one_le_mSize
  have h2 : 1 ≤ mSize M σK σB σT ^ 2 := one_le_pow₀ hm
  have h4 : 1 ≤ 4 * (n : ℝ) * mSize M σK σB σT ^ 2 :=
    one_le_mul_of_one_le_of_one_le (by linarith) h2
  unfold Theta
  calc mSize M σK σB σT = 1 * mSize M σK σB σT := (one_mul _).symm
    _ ≤ (4 * n * mSize M σK σB σT ^ 2) * mSize M σK σB σT :=
        mul_le_mul_of_nonneg_right h4 (by linarith)
    _ = 4 * n * mSize M σK σB σT ^ 3 := by ring

/-! ### The constants are `≥ 1` -/

theorem one_le_C_X (hP : Params n τ M σK σB σT) : 1 ≤ C_X n M σK σB σT := by
  have hn := hP.one_le_cast
  have h2 : 1 ≤ (n : ℝ) ^ 2 := one_le_pow₀ hn
  have h5 : 1 ≤ mSize M σK σB σT ^ 5 := one_le_pow₀ one_le_mSize
  unfold C_X
  exact one_le_mul_of_one_le_of_one_le (by linarith) h5

theorem one_le_C_T (hP : Params n τ M σK σB σT) : 1 ≤ C_T n M σK σB σT := by
  have hn := hP.one_le_cast
  have h2 : 1 ≤ mSize M σK σB σT ^ 2 := one_le_pow₀ one_le_mSize
  unfold C_T
  exact one_le_mul_of_one_le_of_one_le
    (one_le_mul_of_one_le_of_one_le (by linarith) h2) (one_le_C_X hP)

theorem one_le_C_Omega (hP : Params n τ M σK σB σT) : 1 ≤ C_Omega n τ M σK σB σT := by
  have hn := hP.one_le_cast
  unfold C_Omega
  exact one_le_mul_of_one_le_of_one_le
    (one_le_mul_of_one_le_of_one_le
      (one_le_mul_of_one_le_of_one_le (by linarith) (by linarith)) one_le_cR) one_le_mSize

theorem one_le_C_sym (hP : Params n τ M σK σB σT) : 1 ≤ C_sym n τ M σK σB σT := by
  have h2 : 1 ≤ mSize M σK σB σT ^ 2 := one_le_pow₀ one_le_mSize
  unfold C_sym
  exact one_le_mul_of_one_le_of_one_le h2 (one_le_C_Omega hP)

theorem one_le_C_red (hP : Params n τ M σK σB σT) : 1 ≤ C_red n M σK σB σT := by
  have hn := hP.one_le_cast
  have h2 : 1 ≤ mSize M σK σB σT ^ 2 := one_le_pow₀ one_le_mSize
  unfold C_red
  exact one_le_mul_of_one_le_of_one_le
    (one_le_mul_of_one_le_of_one_le (by linarith) (by linarith)) h2

theorem one_le_C_xi0 (hP : Params n τ M σK σB σT) : 1 ≤ C_xi0 n τ M σK σB σT := by
  have hn := hP.one_le_cast
  have h2 : 1 ≤ mSize M σK σB σT ^ 2 := one_le_pow₀ one_le_mSize
  have h1 : 1 ≤ mSize M σK σB σT * Theta n M σK σB σT :=
    one_le_mul_of_one_le_of_one_le one_le_mSize (one_le_Theta hP)
  have h3 : 1 ≤ cR n τ * C_T n M σK σB σT :=
    one_le_mul_of_one_le_of_one_le one_le_cR (one_le_C_T hP)
  unfold C_xi0
  exact one_le_mul_of_one_le_of_one_le
    (one_le_mul_of_one_le_of_one_le (by linarith) h2) (by linarith)

theorem one_le_C_xiN (hP : Params n τ M σK σB σT) : 1 ≤ C_xiN n τ M σK σB σT := by
  have hn := hP.one_le_cast
  have h1 : 1 ≤ 2 * (n : ℝ) * cR n τ * mSize M σK σB σT :=
    one_le_mul_of_one_le_of_one_le
      (one_le_mul_of_one_le_of_one_le (by linarith) one_le_cR) one_le_mSize
  have h0 := one_le_C_xi0 hP
  unfold C_xiN
  linarith

theorem one_le_C_g (hP : Params n τ M σK σB σT) : 1 ≤ C_g n τ M σK σB σT := by
  have hn := hP.one_le_cast
  have h2 : 1 ≤ mSize M σK σB σT ^ 2 := one_le_pow₀ one_le_mSize
  have h1 : 1 ≤ C_T n M σK σB σT * C_xiN n τ M σK σB σT :=
    one_le_mul_of_one_le_of_one_le (one_le_C_T hP) (one_le_C_xiN hP)
  have h3 : 1 ≤ 2 * (n : ℝ) * mSize M σK σB σT ^ 2 * Theta n M σK σB σT :=
    one_le_mul_of_one_le_of_one_le
      (one_le_mul_of_one_le_of_one_le (by linarith) h2) (one_le_Theta hP)
  unfold C_g
  linarith

theorem one_le_C_xi (hP : Params n τ M σK σB σT) : 1 ≤ C_xi n τ M σK σB σT := by
  have h1 : 1 ≤ cR n τ * C_g n τ M σK σB σT :=
    one_le_mul_of_one_le_of_one_le one_le_cR (one_le_C_g hP)
  have h3 : 1 ≤ Theta n M σK σB σT * C_xiN n τ M σK σB σT :=
    one_le_mul_of_one_le_of_one_le (one_le_Theta hP) (one_le_C_xiN hP)
  unfold C_xi
  linarith

theorem one_le_C_DK (hP : Params n τ M σK σB σT) : 1 ≤ C_DK n τ M σK σB σT := by
  have h2 : 1 ≤ mSize M σK σB σT ^ 2 := one_le_pow₀ one_le_mSize
  unfold C_DK
  exact one_le_mul_of_one_le_of_one_le (by linarith) (one_le_C_xi hP)

theorem one_le_C_lin (hP : Params n τ M σK σB σT) : 1 ≤ C_lin n τ M σK σB σT := by
  have h1 : 1 ≤ C_red n M σK σB σT * C_xi n τ M σK σB σT :=
    one_le_mul_of_one_le_of_one_le (one_le_C_red hP) (one_le_C_xi hP)
  have h3 : 1 ≤ C_sym n τ M σK σB σT * C_g n τ M σK σB σT :=
    one_le_mul_of_one_le_of_one_le (one_le_C_sym hP) (one_le_C_g hP)
  unfold C_lin
  linarith

theorem one_le_C_E (hP : Params n τ M σK σB σT) : 1 ≤ C_E n τ M σK σB σT := by
  have h2 : 1 ≤ mSize M σK σB σT ^ 2 := one_le_pow₀ one_le_mSize
  have hΘ : 1 ≤ Theta n M σK σB σT ^ 2 := one_le_pow₀ (one_le_Theta hP)
  have hK : 1 ≤ C_DK n τ M σK σB σT ^ 2 := one_le_pow₀ (one_le_C_DK hP)
  have h1 : 1 ≤ 4 * mSize M σK σB σT ^ 2 * Theta n M σK σB σT ^ 2 *
      C_lin n τ M σK σB σT :=
    one_le_mul_of_one_le_of_one_le
      (one_le_mul_of_one_le_of_one_le (by linarith) hΘ) (one_le_C_lin hP)
  have h3 : 1 ≤ mSize M σK σB σT * C_DK n τ M σK σB σT ^ 2 :=
    one_le_mul_of_one_le_of_one_le one_le_mSize hK
  unfold C_E
  linarith

theorem one_le_C_G (hP : Params n τ M σK σB σT) : 1 ≤ C_G n M σK σB σT := by
  have hn := hP.one_le_cast
  have h2 : 1 ≤ (n : ℝ) ^ 2 := one_le_pow₀ hn
  unfold C_G
  exact one_le_mul_of_one_le_of_one_le (by linarith) one_le_mSize

theorem one_le_C_B (hP : Params n τ M σK σB σT) : 1 ≤ C_B n M σK σB σT := by
  have h2 : 1 ≤ mSize M σK σB σT ^ 2 := one_le_pow₀ one_le_mSize
  unfold C_B
  exact one_le_mul_of_one_le_of_one_le (by linarith) (one_le_C_G hP)

theorem one_le_C_DN (hP : Params n τ M σK σB σT) : 1 ≤ C_DN n M σK σB σT := by
  have hn := hP.one_le_cast
  have h1 : 1 ≤ 2 * (n : ℝ) * mSize M σK σB σT :=
    one_le_mul_of_one_le_of_one_le (by linarith) one_le_mSize
  have h3 : 1 ≤ mSize M σK σB σT * C_B n M σK σB σT :=
    one_le_mul_of_one_le_of_one_le one_le_mSize (one_le_C_B hP)
  unfold C_DN
  linarith

theorem one_le_C_DX (hP : Params n τ M σK σB σT) : 1 ≤ C_DX n M σK σB σT := by
  have hn := hP.one_le_cast
  have h3 : 1 ≤ mSize M σK σB σT ^ 3 := one_le_pow₀ one_le_mSize
  have h1 : 1 ≤ mSize M σK σB σT + n * Theta n M σK σB σT := by
    have : 1 ≤ (n : ℝ) * Theta n M σK σB σT :=
      one_le_mul_of_one_le_of_one_le hn (one_le_Theta hP)
    linarith [one_le_mSize (M := M) (σK := σK) (σB := σB) (σT := σT)]
  have h4 : 1 ≤ (mSize M σK σB σT + n * Theta n M σK σB σT) * C_DN n M σK σB σT :=
    one_le_mul_of_one_le_of_one_le h1 (one_le_C_DN hP)
  unfold C_DX
  linarith

theorem one_le_C_DT (hP : Params n τ M σK σB σT) : 1 ≤ C_DT n M σK σB σT := by
  have hn := hP.one_le_cast
  have h2 : 1 ≤ mSize M σK σB σT ^ 2 := one_le_pow₀ one_le_mSize
  have h1 : 1 ≤ 4 * (n : ℝ) * mSize M σK σB σT ^ 2 * C_DX n M σK σB σT :=
    one_le_mul_of_one_le_of_one_le
      (one_le_mul_of_one_le_of_one_le (by linarith) h2) (one_le_C_DX hP)
  have h3 : 1 ≤ 2 * (n : ℝ) * C_DN n M σK σB σT * C_X n M σK σB σT :=
    one_le_mul_of_one_le_of_one_le
      (one_le_mul_of_one_le_of_one_le (by linarith) (one_le_C_DN hP)) (one_le_C_X hP)
  unfold C_DT
  linarith

theorem one_le_c_step (hP : Params n τ M σK σB σT) : 1 ≤ c_step n τ M σK σB σT := by
  have hΘ : 1 ≤ Theta n M σK σB σT ^ 4 := one_le_pow₀ (one_le_Theta hP)
  have hs := one_le_C_sym hP
  have hmax : 1 ≤ max (C_sym n τ M σK σB σT)
      (2 * mSize M σK σB σT * C_DT n M σK σB σT * C_DK n τ M σK σB σT) :=
    hs.trans (le_max_left _ _)
  unfold c_step
  exact one_le_mul_of_one_le_of_one_le (by linarith) hmax

theorem one_le_c_sum (hP : Params n τ M σK σB σT) : 1 ≤ c_sum n τ M σK σB σT := by
  have hn := hP.one_le_cast
  have hΘ : 1 ≤ Theta n M σK σB σT ^ 2 := one_le_pow₀ (one_le_Theta hP)
  have hmax : 1 ≤ max (n : ℝ) (max (C_B n M σK σB σT)
      (mSize M σK σB σT ^ 2 * C_DT n M σK σB σT)) := hn.trans (le_max_left _ _)
  unfold c_sum
  exact one_le_mul_of_one_le_of_one_le
    (one_le_mul_of_one_le_of_one_le (by linarith) (one_le_C_DK hP)) hmax

theorem one_le_c_star (hP : Params n τ M σK σB σT) (μ : ℝ) :
    1 ≤ c_star n τ M σK σB σT μ := by
  have h1 : 1 ≤ (2 : ℝ) ^ (2 * aExp n τ) :=
    Real.one_le_rpow (by norm_num) (by linarith [four_le_aExp hP])
  unfold c_star
  exact (one_le_mul_of_one_le_of_one_le h1 (one_le_C_E hP)).trans (le_max_left _ _)

theorem delta0_pos {ρ ρinf : ℝ} (hρinf : ρinf < ρ) : 0 < delta0 ρ ρinf :=
  lt_min one_pos (by linarith)

theorem delta0_le_one (ρ ρinf : ℝ) : delta0 ρ ρinf ≤ 1 := min_le_left _ _

theorem eight_mul_delta0_le (ρ ρinf : ℝ) : 8 * delta0 ρ ρinf ≤ ρ - ρinf := by
  have : delta0 ρ ρinf ≤ (ρ - ρinf) / 8 := min_le_right _ _
  linarith

/-- Blueprint `bp:p2:constants` (claims): the constants are `≥ 1`; `κ ≥ 1`, `a ≥ 4`;
`δ₀ ∈ (0, 1]`. Dependences are the argument lists. -/
theorem constants_spec (hP : Params n τ M σK σB σT) :
    1 ≤ cR n τ ∧ 1 ≤ mSize M σK σB σT ∧ 1 ≤ Theta n M σK σB σT ∧ 1 ≤ C_X n M σK σB σT ∧
    1 ≤ C_T n M σK σB σT ∧ 1 ≤ C_Omega n τ M σK σB σT ∧ 1 ≤ C_sym n τ M σK σB σT ∧
    1 ≤ C_red n M σK σB σT ∧ 1 ≤ C_xi0 n τ M σK σB σT ∧ 1 ≤ C_xiN n τ M σK σB σT ∧
    1 ≤ C_g n τ M σK σB σT ∧ 1 ≤ C_xi n τ M σK σB σT ∧ 1 ≤ C_DK n τ M σK σB σT ∧
    1 ≤ C_lin n τ M σK σB σT ∧ 1 ≤ C_E n τ M σK σB σT ∧ 1 ≤ C_G n M σK σB σT ∧
    1 ≤ C_B n M σK σB σT ∧ 1 ≤ C_DN n M σK σB σT ∧ 1 ≤ C_DX n M σK σB σT ∧
    1 ≤ C_DT n M σK σB σT ∧ 1 ≤ c_step n τ M σK σB σT ∧ 1 ≤ c_sum n τ M σK σB σT ∧
    1 ≤ kappa n τ ∧ 4 ≤ aExp n τ ∧
    (∀ μ, 0 < μ → 1 ≤ c_star n τ M σK σB σT μ) ∧
    (∀ ρ ρinf, 0 < ρinf → ρinf < ρ → 0 < delta0 ρ ρinf ∧ delta0 ρ ρinf ≤ 1) :=
  ⟨one_le_cR, one_le_mSize, one_le_Theta hP, one_le_C_X hP, one_le_C_T hP, one_le_C_Omega hP,
    one_le_C_sym hP, one_le_C_red hP, one_le_C_xi0 hP, one_le_C_xiN hP, one_le_C_g hP,
    one_le_C_xi hP, one_le_C_DK hP, one_le_C_lin hP, one_le_C_E hP, one_le_C_G hP, one_le_C_B hP,
    one_le_C_DN hP, one_le_C_DX hP, one_le_C_DT hP, one_le_c_step hP, one_le_c_sum hP,
    one_le_kappa hP, four_le_aExp hP, fun μ _ => one_le_c_star hP μ,
    fun _ _ _ h => ⟨delta0_pos h, delta0_le_one _ _⟩⟩

end KAM.Apost

end
