/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Apost.Geometry
public import KAM.Apost.Triangular
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# The Newton correction

Blueprint Part 2, Lemma `bp:p2:correction` (`KAM.Apost.correction_spec`). For an admissible torus
`K` the data `ηᴸ, ηᴺ, T` of `K` feed the triangular system of `bp:p2:triangular`; this file defines

* `KAM.Apost.xi`: `ξ = (ξᴸ, ξᴺ)`, the solution of the triangular system for the data of `K`;
* `KAM.Apost.correction`: the Newton correction `ΔK = P ξ` (as a pair, `sumVec` transports),

and proves the regularity and the size bounds of the blueprint. The proof follows its steps:

* `step:p2:cor-data` (the data): `KAM.Apost.frequency` (`‖ω‖ ≤ Θ`, `γ ≤ Θ`),
  `KAM.Apost.frame_basic`, `KAM.Apost.periodicity`, `KAM.Apost.exactness` give holomorphy,
  periodicity, realness and the bounds `H_L = 2n𝔪²ε`, `H_N = 2n𝔪ε`, `H_T = C_T/δ`, `⟨ηᴺ⟩ = 0`;
  `KAM.Torus.torsionAverage_eq_avg` identifies the frozen `⟨T⟩` with `avg T`;
* `step:p2:cor-absorb`: `γ δ^j ≤ Θ` (`KAM.Apost.mul_rpow_le`, `KAM.Apost.absorb_mul_le`);
* `step:p2:cor-xin`, `cor-xi`, `cor-dxi`: the arithmetic lemmas of the namespace
  `KAM.Apost.Correction` (`xi0_arith`, `xiN_arith`, `gL_arith`, `xiL_arith`, `xi_arith`,
  `dxi_arith`, `dK_arith`), each a statement about the constants of `bp:p2:constants`;
* `step:p2:cor-reg`: `diffOn_xi`, `periodic_xi`, `isRealVec_xi` and the matching lemmas for the
  correction.

`T_r` is `complexStrip n r`; all the matrix norms are the operator norms of
`open scoped Matrix.Norms.Operator`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory Filter Topology

namespace KAM.Apost

open KAM.Torus

variable {n : ℕ} {τ M σK σB σT : ℝ} {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))}
  {h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ω : Fin n → ℝ} {γ : ℝ}

/-- `ξ = (ξᴸ, ξᴺ)` for the torus `K`: the triangular system with `ηᴸ, ηᴺ, T` of `K`. -/
def xi (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (θ : Fin n → ℂ) : Fin n ⊕ Fin n → ℂ :=
  Sum.elim (triXiL ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ)
    (triXiN ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ)

/-- The Newton correction `ΔK = P ξ`. -/
def correction (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ))
    (ω : Fin n → ℝ) (θ : Fin n → ℂ) : (Fin n → ℂ) × (Fin n → ℂ) :=
  (sumVec n).symm (frameMat K θ *ᵥ xi h K ω θ)

namespace Correction

/-! ### Step `step:p2:cor-data`: `ηᴸ`, `ηᴺ` from `η` -/

section Eta

variable {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {r : ℝ}

theorem etaL_eq_eta (θ : Fin n → ℂ) :
    etaL h K ω θ = fun i => eta h K ω θ (Sum.inl i) := by
  rw [eta_eq_sumElim]
  rfl

theorem etaN_eq_eta (θ : Fin n → ℂ) :
    etaN h K ω θ = fun i => eta h K ω θ (Sum.inr i) := by
  rw [eta_eq_sumElim]
  rfl

theorem diffOn_etaL (hη : DifferentiableOn ℂ (eta h K ω) (complexStrip n r)) :
    DifferentiableOn ℂ (etaL h K ω) (complexStrip n r) := by
  have : etaL h K ω = fun θ i => eta h K ω θ (Sum.inl i) := funext etaL_eq_eta
  rw [this]
  exact differentiableOn_pi.2 fun i => differentiableOn_pi.1 hη (Sum.inl i)

theorem diffOn_etaN (hη : DifferentiableOn ℂ (eta h K ω) (complexStrip n r)) :
    DifferentiableOn ℂ (etaN h K ω) (complexStrip n r) := by
  have : etaN h K ω = fun θ i => eta h K ω θ (Sum.inr i) := funext etaN_eq_eta
  rw [this]
  exact differentiableOn_pi.2 fun i => differentiableOn_pi.1 hη (Sum.inr i)

theorem periodic_etaL (hη : IsPeriodicOn (eta h K ω) r) : IsPeriodicOn (etaL h K ω) r :=
  fun i z hz => by rw [etaL_eq_eta, etaL_eq_eta, hη i z hz]

theorem periodic_etaN (hη : IsPeriodicOn (eta h K ω) r) : IsPeriodicOn (etaN h K ω) r :=
  fun i z hz => by rw [etaN_eq_eta, etaN_eq_eta, hη i z hz]

theorem isRealVec_etaL (hη : IsRealVec (eta h K ω)) : IsRealVec (etaL h K ω) :=
  fun x i => by rw [etaL_eq_eta]; exact hη x (Sum.inl i)

theorem isRealVec_etaN (hη : IsRealVec (eta h K ω)) : IsRealVec (etaN h K ω) :=
  fun x i => by rw [etaN_eq_eta]; exact hη x (Sum.inr i)

end Eta

/-! ### Steps `step:p2:cor-absorb` to `step:p2:cor-dxi`: the arithmetic -/

section Arith

/-- `γ δ^j > 0`. -/
theorem gd_pos {γ δ j : ℝ} (hγ : 0 < γ) (hδ : 0 < δ) : 0 < γ * δ ^ j :=
  mul_pos hγ (Real.rpow_pos_of_pos hδ _)

/-- `ε ≤ Θ ε / (γ δ^j)` for `γ ≤ Θ`, `δ ≤ 1`, `j ≥ 0` (`step:p2:cor-absorb`). -/
theorem le_Theta_div {γ Θ δ ε j : ℝ} (hγ : 0 < γ) (hγΘ : γ ≤ Θ) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (hj : 0 ≤ j) (hε : 0 ≤ ε) : ε ≤ Θ * ε / (γ * δ ^ j) := by
  rw [le_div_iff₀ (gd_pos hγ hδ)]
  calc ε * (γ * δ ^ j) ≤ ε * Θ := mul_le_mul_of_nonneg_left (mul_rpow_le hγ hγΘ hδ hδ1 hj) hε
    _ = Θ * ε := mul_comm _ _

/-- `δ^(j+1) ≤ δ^j` for `δ ≤ 1`. -/
theorem rpow_add_one_le {δ j : ℝ} (hδ : 0 < δ) (hδ1 : δ ≤ 1) : δ ^ (j + 1) ≤ δ ^ j :=
  Real.rpow_le_rpow_of_exponent_ge hδ hδ1 (by linarith)

variable (hP : Params n τ M σK σB σT) {γ δ ε : ℝ}

include hP in
/-- Step `step:p2:cor-xin`: `σ_T (H_L + H_T Γ H_N) ≤ C_{ξ₀} ε / (γ δ^{κ+1})`. -/
theorem xi0_arith (hγ : 0 < γ) (hγΘ : γ ≤ Theta n M σK σB σT) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (hε : 0 ≤ ε) (hσ : σT ≤ mSize M σK σB σT) :
    σT * (2 * n * mSize M σK σB σT ^ 2 * ε + C_T n M σK σB σT / δ *
        (cR n τ * γ⁻¹ * δ ^ (-kappa n τ)) * (2 * n * mSize M σK σB σT * ε)) ≤
      C_xi0 n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) := by
  have hκ : 0 ≤ kappa n τ + 1 := by have := one_le_kappa hP; linarith
  have hD := gd_pos (j := kappa n τ + 1) hγ hδ
  have hm : (1 : ℝ) ≤ mSize M σK σB σT := one_le_mSize
  have hcR : (1 : ℝ) ≤ cR n τ := one_le_cR
  have hCT : (1 : ℝ) ≤ C_T n M σK σB σT := one_le_C_T hP
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hσ0 : 0 ≤ σT := hP.σT_pos.le
  have hB : C_T n M σK σB σT / δ * (cR n τ * γ⁻¹ * δ ^ (-kappa n τ)) *
      (2 * n * mSize M σK σB σT * ε) =
      2 * n * mSize M σK σB σT * cR n τ * C_T n M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) := by
    have hδκ : 0 < δ ^ kappa n τ := Real.rpow_pos_of_pos hδ _
    rw [Real.rpow_neg hδ.le, Real.rpow_add_one hδ.ne']
    field_simp
  rw [hB]
  have hBnn : 0 ≤ 2 * n * mSize M σK σB σT * cR n τ * C_T n M σK σB σT * ε /
      (γ * δ ^ (kappa n τ + 1)) := by positivity
  have hAnn : 0 ≤ 2 * (n : ℝ) * mSize M σK σB σT ^ 2 * ε := by positivity
  have h1 := le_Theta_div hγ hγΘ hδ hδ1 hκ hε
  have h2 : 2 * (n : ℝ) * mSize M σK σB σT ^ 3 * ε ≤
      2 * n * mSize M σK σB σT ^ 3 * (Theta n M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1))) :=
    mul_le_mul_of_nonneg_left h1 (by positivity)
  calc σT * _ ≤ mSize M σK σB σT * (2 * n * mSize M σK σB σT ^ 2 * ε +
        2 * n * mSize M σK σB σT * cR n τ * C_T n M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1))) :=
        mul_le_mul_of_nonneg_right hσ (add_nonneg hAnn hBnn)
    _ = 2 * n * mSize M σK σB σT ^ 3 * ε + 2 * n * mSize M σK σB σT ^ 2 * cR n τ *
        C_T n M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) := by ring
    _ ≤ 2 * n * mSize M σK σB σT ^ 3 * (Theta n M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1))) +
        2 * n * mSize M σK σB σT ^ 2 * cR n τ * C_T n M σK σB σT * ε /
          (γ * δ ^ (kappa n τ + 1)) := by linarith
    _ = C_xi0 n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) := by
        unfold C_xi0
        ring

omit hP in
/-- Step `step:p2:cor-xin`: `|ξᴺ₀| + Γ H_N ≤ C_{ξN} ε / (γ δ^{κ+1})` on `T_{r-δ}`. -/
theorem xiN_arith (hγ : 0 < γ) (hδ : 0 < δ) (hδ1 : δ ≤ 1) (hε : 0 ≤ ε) {x0 : ℝ}
    (hx0 : x0 ≤ C_xi0 n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1))) :
    x0 + cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * (2 * n * mSize M σK σB σT * ε) ≤
      C_xiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) := by
  have hD := gd_pos (j := kappa n τ + 1) hγ hδ
  have hDκ := gd_pos (j := kappa n τ) hγ hδ
  have hm : (1 : ℝ) ≤ mSize M σK σB σT := one_le_mSize
  have hcR : (1 : ℝ) ≤ cR n τ := one_le_cR
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have e1 : cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * (2 * n * mSize M σK σB σT * ε) =
      2 * n * mSize M σK σB σT * cR n τ * ε / (γ * δ ^ kappa n τ) := by
    have hδκ : 0 < δ ^ kappa n τ := Real.rpow_pos_of_pos hδ _
    rw [Real.rpow_neg hδ.le]
    field_simp
  have hle : γ * δ ^ (kappa n τ + 1) ≤ γ * δ ^ kappa n τ :=
    mul_le_mul_of_nonneg_left (rpow_add_one_le hδ hδ1) hγ.le
  have e2 : 2 * n * mSize M σK σB σT * cR n τ * ε / (γ * δ ^ kappa n τ) ≤
      2 * n * mSize M σK σB σT * cR n τ * ε / (γ * δ ^ (kappa n τ + 1)) :=
    div_le_div_of_nonneg_left (by positivity) hD hle
  rw [e1]
  calc _ ≤ C_xi0 n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) +
        2 * n * mSize M σK σB σT * cR n τ * ε / (γ * δ ^ (kappa n τ + 1)) := add_le_add hx0 e2
    _ = C_xiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) := by
        unfold C_xiN
        ring

include hP in
/-- Step `step:p2:cor-xin`: `H_T X + H_L ≤ C_g ε / (γ δ^{κ+2})` for `X = C_{ξN} ε/(γ δ^{κ+1})`. -/
theorem gL_arith (hγ : 0 < γ) (hγΘ : γ ≤ Theta n M σK σB σT) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (hε : 0 ≤ ε) :
    C_T n M σK σB σT / δ * (C_xiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1))) +
        2 * n * mSize M σK σB σT ^ 2 * ε ≤
      C_g n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2)) := by
  have hκ : 0 ≤ kappa n τ + 2 := by have := one_le_kappa hP; linarith
  have hD := gd_pos (j := kappa n τ + 1) hγ hδ
  have hD2 := gd_pos (j := kappa n τ + 2) hγ hδ
  have hm : (1 : ℝ) ≤ mSize M σK σB σT := one_le_mSize
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have e1 : C_T n M σK σB σT / δ * (C_xiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1))) =
      C_T n M σK σB σT * C_xiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2)) := by
    have hδ2 : δ ^ (kappa n τ + 2) = δ ^ (kappa n τ + 1) * δ := by
      rw [← Real.rpow_add_one hδ.ne']
      congr 1
      ring
    have hδκ : 0 < δ ^ (kappa n τ + 1) := Real.rpow_pos_of_pos hδ _
    rw [hδ2]
    field_simp
  have h1 := le_Theta_div hγ hγΘ hδ hδ1 hκ hε
  have h2 : 2 * (n : ℝ) * mSize M σK σB σT ^ 2 * ε ≤
      2 * n * mSize M σK σB σT ^ 2 * (Theta n M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2))) :=
    mul_le_mul_of_nonneg_left h1 (by positivity)
  rw [e1]
  calc _ ≤ C_T n M σK σB σT * C_xiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2)) +
        2 * n * mSize M σK σB σT ^ 2 * (Theta n M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2))) :=
        add_le_add le_rfl h2
    _ = C_g n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2)) := by
        unfold C_g
        ring

omit hP in
/-- Step `step:p2:cor-xi`: `Γ · C_g ε/(γ δ^{κ+2}) = c_R C_g ε/(γ² δ^a)`. -/
theorem xiL_arith (hγ : 0 < γ) (hδ : 0 < δ) :
    cR n τ * γ⁻¹ * δ ^ (-kappa n τ) * (C_g n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2))) =
      cR n τ * C_g n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) := by
  have hδκ : 0 < δ ^ kappa n τ := Real.rpow_pos_of_pos hδ _
  have hδκ2 : 0 < δ ^ (kappa n τ + 2) := Real.rpow_pos_of_pos hδ _
  have ha : δ ^ aExp n τ = δ ^ kappa n τ * δ ^ (kappa n τ + 2) := by
    rw [← Real.rpow_add hδ]
    congr 1
    rw [aExp_eq]
    ring
  rw [ha, Real.rpow_neg hδ.le]
  field_simp

include hP in
/-- Step `step:p2:cor-xi`: `max {c_R C_g, Θ C_{ξN}} ε/(γ² δ^a) ≤ C_ξ ε/(γ² δ^a)`. -/
theorem xi_arith (hγ : 0 < γ) (hδ : 0 < δ) (hε : 0 ≤ ε) {x : ℝ}
    (hx : x ≤ cR n τ * C_g n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) ∨
      x ≤ Theta n M σK σB σT * C_xiN n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) :
    x ≤ C_xi n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) := by
  have hD : 0 < γ ^ 2 * δ ^ aExp n τ := mul_pos (pow_pos hγ 2) (Real.rpow_pos_of_pos hδ _)
  have hcg : 0 ≤ cR n τ * C_g n τ M σK σB σT :=
    mul_nonneg (zero_le_one.trans one_le_cR) (zero_le_one.trans (one_le_C_g hP))
  have hth : 0 ≤ Theta n M σK σB σT * C_xiN n τ M σK σB σT :=
    mul_nonneg (zero_le_one.trans (one_le_Theta hP)) (zero_le_one.trans (one_le_C_xiN hP))
  have e : C_xi n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) =
      cR n τ * C_g n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) +
        Theta n M σK σB σT * C_xiN n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) := by
    unfold C_xi
    ring
  have h1 : 0 ≤ cR n τ * C_g n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) :=
    div_nonneg (mul_nonneg hcg hε) hD.le
  have h2 : 0 ≤ Theta n M σK σB σT * C_xiN n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) :=
    div_nonneg (mul_nonneg hth hε) hD.le
  rw [e]
  rcases hx with hx | hx <;> linarith

include hP in
/-- Step `step:p2:cor-absorb` for `ξᴺ`: `C_{ξN} ε/(γ δ^{κ+1}) ≤ Θ C_{ξN} ε/(γ² δ^a)`. -/
theorem xiN_absorb (hγ : 0 < γ) (hγΘ : γ ≤ Theta n M σK σB σT) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (hε : 0 ≤ ε) :
    C_xiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ≤
      Theta n M σK σB σT * C_xiN n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) := by
  have hκ := one_le_kappa hP
  have h := absorb_mul_le (i := 1) (k := 2) (c := Theta n M σK σB σT * C_xiN n τ M σK σB σT)
    (j := kappa n τ + 1) (J := aExp n τ) hγ hγΘ hδ hδ1 (by norm_num)
    (by rw [aExp_eq]; linarith) hε (zero_le_one.trans (one_le_C_xiN hP)) (by simp)
  simpa only [pow_one] using h

include hP in
/-- Step `step:p2:cor-dxi`: `|ηᴺ| ≤ 2n𝔪ε ≤ C_g ε/(γ δ^{κ+2})`. -/
theorem dxi_arith (hγ : 0 < γ) (hγΘ : γ ≤ Theta n M σK σB σT) (hδ : 0 < δ) (hδ1 : δ ≤ 1)
    (hε : 0 ≤ ε) :
    2 * n * mSize M σK σB σT * ε ≤ C_g n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2)) := by
  have hκ : 0 ≤ kappa n τ + 2 := by have := one_le_kappa hP; linarith
  have hD2 := gd_pos (j := kappa n τ + 2) hγ hδ
  have hm : (1 : ℝ) ≤ mSize M σK σB σT := one_le_mSize
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hCT : 0 ≤ C_T n M σK σB σT * C_xiN n τ M σK σB σT :=
    mul_nonneg (zero_le_one.trans (one_le_C_T hP)) (zero_le_one.trans (one_le_C_xiN hP))
  have h1 := le_Theta_div hγ hγΘ hδ hδ1 hκ hε
  have h2 : 2 * (n : ℝ) * mSize M σK σB σT ^ 2 * ε ≤
      2 * n * mSize M σK σB σT ^ 2 * (Theta n M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2))) :=
    mul_le_mul_of_nonneg_left h1 (by positivity)
  have e : C_g n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2)) =
      C_T n M σK σB σT * C_xiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2)) +
        2 * n * mSize M σK σB σT ^ 2 * (Theta n M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2))) := by
    unfold C_g
    ring
  have h3 : 0 ≤ C_T n M σK σB σT * C_xiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2)) :=
    div_nonneg (mul_nonneg hCT hε) hD2.le
  have h4 : 2 * (n : ℝ) * mSize M σK σB σT * ε ≤ 2 * n * mSize M σK σB σT ^ 2 * ε := by
    have : 0 ≤ 2 * (n : ℝ) * mSize M σK σB σT * ε := by positivity
    nlinarith
  rw [e]
  linarith

/-- Step `step:p2:cor-xi`: `2𝔪² · C_ξ ε/(γ² δ^a) = C_ΔK ε/(γ² δ^a)`. -/
theorem dK_arith :
    2 * mSize M σK σB σT ^ 2 * (C_xi n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ)) =
      C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) := by
  unfold C_DK
  ring

end Arith

/-! ### Step `step:p2:cor-reg`: regularity of `ξ = (ξᴸ, ξᴺ)` and `ΔK = P ξ` -/

section Regularity

variable {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {r : ℝ}

theorem diffOn_sumElim {ξL ξN : (Fin n → ℂ) → Fin n → ℂ} {S : Set (Fin n → ℂ)}
    (hL : DifferentiableOn ℂ ξL S) (hN : DifferentiableOn ℂ ξN S) :
    DifferentiableOn ℂ (fun θ => (Sum.elim (ξL θ) (ξN θ) : Fin n ⊕ Fin n → ℂ)) S := by
  refine differentiableOn_pi.2 ?_
  rintro (i | i)
  · exact differentiableOn_pi.1 hL i
  · exact differentiableOn_pi.1 hN i

theorem periodic_sumElim {ξL ξN : (Fin n → ℂ) → Fin n → ℂ} {ρ : ℝ}
    (hL : IsPeriodicOn ξL ρ) (hN : IsPeriodicOn ξN ρ) :
    IsPeriodicOn (fun θ => (Sum.elim (ξL θ) (ξN θ) : Fin n ⊕ Fin n → ℂ)) ρ :=
  fun i z hz => by simp only [hL i z hz, hN i z hz]

theorem isRealVec_sumElim {ξL ξN : (Fin n → ℂ) → Fin n → ℂ}
    (hL : IsRealVec ξL) (hN : IsRealVec ξN) :
    IsRealVec (fun θ => (Sum.elim (ξL θ) (ξN θ) : Fin n ⊕ Fin n → ℂ)) := by
  intro x s
  rcases s with s | s
  · exact hL x s
  · exact hN x s

theorem fderiv_sumElim_apply {ξL ξN : (Fin n → ℂ) → Fin n → ℂ} {θ : Fin n → ℂ}
    (hL : DifferentiableAt ℂ ξL θ) (hN : DifferentiableAt ℂ ξN θ) (v : Fin n → ℂ) :
    fderiv ℂ (fun θ => (Sum.elim (ξL θ) (ξN θ) : Fin n ⊕ Fin n → ℂ)) θ v =
      Sum.elim (fderiv ℂ ξL θ v) (fderiv ℂ ξN θ v) := by
  have hd : ∀ s : Fin n ⊕ Fin n,
      DifferentiableAt ℂ (fun x => (Sum.elim (ξL x) (ξN x) : Fin n ⊕ Fin n → ℂ) s) θ := by
    rintro (s | s)
    · exact differentiableAt_pi.1 hL s
    · exact differentiableAt_pi.1 hN s
  rw [fderiv_pi hd]
  funext s
  rcases s with s | s
  · simp only [ContinuousLinearMap.pi_apply, Sum.elim_inl]
    rw [(hasFDerivAt_pi'.1 hL.hasFDerivAt s).fderiv]
    rfl
  · simp only [ContinuousLinearMap.pi_apply, Sum.elim_inr]
    rw [(hasFDerivAt_pi'.1 hN.hasFDerivAt s).fderiv]
    rfl

theorem norm_sumElim_le {a b : Fin n → ℂ} {C : ℝ} (ha : ‖a‖ ≤ C) (hb : ‖b‖ ≤ C) :
    ‖(Sum.elim a b : Fin n ⊕ Fin n → ℂ)‖ ≤ C := by
  refine (pi_norm_le_iff_of_nonneg ((norm_nonneg _).trans ha)).2 ?_
  rintro (i | i)
  · exact (norm_le_pi_norm a i).trans ha
  · exact (norm_le_pi_norm b i).trans hb

theorem sumVec_correction (θ : Fin n → ℂ) :
    sumVec n (correction h K ω θ) = frameMat K θ *ᵥ xi h K ω θ :=
  (sumVec n).apply_symm_apply _

theorem diffOn_correction {S : Set (Fin n → ℂ)} (hP : DifferentiableOn ℂ (frameMat K) S)
    (hξ : DifferentiableOn ℂ (xi h K ω) S) : DifferentiableOn ℂ (correction h K ω) S :=
  (sumVecIso n).symm.differentiable.comp_differentiableOn (hP.matrix_mulVec hξ)

theorem periodic_correction (hP : IsPeriodicOn (frameMat K) r)
    (hξ : IsPeriodicOn (xi h K ω) r) : IsPeriodicOn (correction h K ω) r :=
  fun i z hz => by simp only [correction, hP i z hz, hξ i z hz]

theorem isRealOnReals_correction (hP : IsRealMat (frameMat K)) (hξ : IsRealVec (xi h K ω)) :
    IsRealOnReals (correction h K ω) := by
  rw [← isRealVec_sumVec_iff]
  intro x s
  simp only [sumVec_correction]
  exact Triangular.mulVec_im_eq_zero (hP x) (hξ x) s

theorem norm_correction_le {θ : Fin n → ℂ} {B X : ℝ} (hB : ‖frameMat K θ‖ ≤ B)
    (hX : ‖xi h K ω θ‖ ≤ X) : ‖correction h K ω θ‖ ≤ B * X := by
  rw [← norm_sumVec, sumVec_correction]
  calc _ ≤ ‖frameMat K θ‖ * ‖xi h K ω θ‖ := Matrix.linfty_opNorm_mulVec _ _
    _ ≤ B * X := mul_le_mul hB hX (norm_nonneg _) ((norm_nonneg _).trans hB)

end Regularity

end Correction

/-- Blueprint `bp:p2:correction`. -/
theorem correction_spec (hS : Standing n τ M σK σB σT 𝔅 h ω γ) {r β ε δ : ℝ}
    {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} (hK : Admissible σK σB σT 𝔅 h ω r β ε K)
    (hδ : 0 < δ) (hδ1 : δ ≤ 1) (h2δ : 2 * δ < r) :
    (DifferentiableOn ℂ (xi h K ω) (complexStrip n (r - 2 * δ)) ∧
      IsPeriodicOn (xi h K ω) (r - 2 * δ) ∧ IsRealVec (xi h K ω) ∧
      DifferentiableOn ℂ (correction h K ω) (complexStrip n (r - 2 * δ)) ∧
      IsPeriodicOn (correction h K ω) (r - 2 * δ) ∧ IsRealOnReals (correction h K ω)) ∧
    (∀ θ ∈ complexStrip n (r - δ),
      ‖triXiN ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ‖ ≤
        C_xiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) ∧
      ‖triGL ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ‖ ≤
        C_g n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2))) ∧
    (∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖xi h K ω θ‖ ≤ C_xi n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) ∧
      ‖correction h K ω θ‖ ≤ C_DK n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) ∧
      ‖fderiv ℂ (xi h K ω) θ (fun l => (ω l : ℂ))‖ ≤
        C_g n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2))) := by
  have hr := hK.r_pos
  have hε0 := hK.ε_nonneg
  have hP := hS.toParams
  have hγ := hS.gamma_pos
  have hr1 : 0 < r - δ := by linarith
  have hr2 : 0 < r - 2 * δ := by linarith
  have hsub : complexStrip n (r - 2 * δ) ⊆ complexStrip n (r - δ) :=
    Triangular.strip_mono (by linarith)
  have hK𝔅 : ∀ θ ∈ complexStrip n r, K θ ∈ 𝔅 := fun θ hθ =>
    hK.ball_sub θ hθ (Metric.mem_ball_self hK.β_pos)
  have hGu : ∀ θ ∈ complexStrip n r, IsUnit (gramMatrix K θ).det := fun θ hθ => (hK.gram θ hθ).1
  -- step `cor-data`: frequency, holomorphy, periodicity, realness, bounds, `⟨ηᴺ⟩ = 0`
  obtain ⟨hγω, hω1, hω2⟩ := frequency hS hK.r_pos hK.ε_le_one hK𝔅 hK.deriv_le hK.gram hK.error_le
  have hω : ‖ω‖ ≤ Theta n M σK σB σT := hω1.trans hω2
  have hγΘ : γ ≤ Theta n M σK σB σT := hγω.trans hω
  obtain ⟨⟨-, -, -, -, -, -, -, hPd, -, hTd, -, -, hηd, -, hTc⟩, hnorm, hηb, hTb⟩ :=
    frame_basic hS hr hK.β_pos hK.holo hK.ball_sub hK.deriv_le hK.gram
  obtain ⟨-, hperiod, hreal⟩ := periodicity hS hr hK.holo hK.primary hK𝔅
  obtain ⟨-, -, hPp, -, hTp, -, hηp⟩ := hperiod hGu
  obtain ⟨-, -, -, -, -, -, -, -, -, -, hPr, -, hTr, -, hηr, -⟩ := hreal hGu hK.real
  have hTavg : torsionAverage h K ω = avg (torsion h K ω) := torsionAverage_eq_avg h K ω hTc
  have hTinv : IsUnit (avg (torsion h K ω)).det := by
    rw [← hTavg]
    exact hK.twist.1
  have hσ : ‖(avg (torsion h K ω))⁻¹‖ ≤ σT := by
    rw [← hTavg]
    exact hK.twist.2
  have hηN0 : avg (etaN h K ω) = 0 := (exactness hS hr hK.holo hK.primary hK𝔅).2
  have hHL : ∀ θ ∈ complexStrip n r,
      ‖etaL h K ω θ‖ ≤ 2 * n * mSize M σK σB σT ^ 2 * ε := fun θ hθ =>
    (hηb ε hK.error_le θ hθ).1
  have hHN : ∀ θ ∈ complexStrip n r,
      ‖etaN h K ω θ‖ ≤ 2 * n * mSize M σK σB σT * ε := fun θ hθ =>
    (hηb ε hK.error_le θ hθ).2
  have hHT : ∀ θ ∈ complexStrip n (r - δ),
      ‖torsion h K ω θ‖ ≤ C_T n M σK σB σT / δ := fun θ hθ =>
    (hTb hω δ hδ hδ1 (by linarith) θ hθ).2
  -- the triangular lemma for the data of `K`
  obtain ⟨⟨-, hXNd, hXNp, -, -, hXLd, hXLp⟩, ⟨hdXN, hdXL⟩, ⟨hxi0, hxiN, hgb, hxiL⟩, hrealTri⟩ :=
    triangular hS hr hδ h2δ (ηL := etaL h K ω) (ηN := etaN h K ω) (T := torsion h K ω)
      (HL := 2 * n * mSize M σK σB σT ^ 2 * ε) (HN := 2 * n * mSize M σK σB σT * ε)
      (HT := C_T n M σK σB σT / δ) (σ := σT)
      (Correction.diffOn_etaL hηd) (Correction.periodic_etaL hηp)
      (Correction.diffOn_etaN hηd) (Correction.periodic_etaN hηp) hHL hHN hηN0 hTd hTp hHT
      hTinv hσ
  obtain ⟨-, hXLr, hXNr, -⟩ := hrealTri (Correction.isRealVec_etaL hηr)
    (Correction.isRealVec_etaN hηr) hTr
  -- steps `cor-absorb`, `cor-xin`: `ξᴺ₀`, `ξᴺ`, `gᴸ`
  have hX0 := hxi0.trans (Correction.xi0_arith hP hγ hγΘ hδ hδ1 hε0 σT_le_mSize)
  have hXN : ∀ θ ∈ complexStrip n (r - δ),
      ‖triXiN ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ‖ ≤
        C_xiN n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 1)) := fun θ hθ =>
    (hxiN θ hθ).trans (Correction.xiN_arith hγ hδ hδ1 hε0 hX0)
  have hGL : ∀ θ ∈ complexStrip n (r - δ),
      ‖triGL ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ‖ ≤
        C_g n τ M σK σB σT * ε / (γ * δ ^ (kappa n τ + 2)) := fun θ hθ =>
    (hgb _ hXN θ hθ).trans (Correction.gL_arith hP hγ hγΘ hδ hδ1 hε0)
  -- step `cor-xi`: `ξ`
  have hXL : ∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖triXiL ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ‖ ≤
        C_xi n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) := fun θ hθ =>
    Correction.xi_arith hP hγ hδ hε0 (Or.inl (by
      rw [← Correction.xiL_arith hγ hδ]
      exact hxiL _ hGL θ hθ))
  have hXi : ∀ θ ∈ complexStrip n (r - 2 * δ),
      ‖xi h K ω θ‖ ≤ C_xi n τ M σK σB σT * ε / (γ ^ 2 * δ ^ aExp n τ) := fun θ hθ =>
    Correction.norm_sumElim_le (hXL θ hθ)
      (Correction.xi_arith hP hγ hδ hε0 (Or.inr
        ((hXN θ (hsub hθ)).trans (Correction.xiN_absorb hP hγ hγΘ hδ hδ1 hε0))))
  -- regularity of `ξ` and `ΔK` (step `cor-reg`)
  have hξd : DifferentiableOn ℂ (xi h K ω) (complexStrip n (r - 2 * δ)) :=
    Correction.diffOn_sumElim hXLd (hXNd.mono hsub)
  have hξp : IsPeriodicOn (xi h K ω) (r - 2 * δ) :=
    Correction.periodic_sumElim hXLp (Triangular.isPeriodicOn_mono (by linarith) hXNp)
  have hξr : IsRealVec (xi h K ω) := Correction.isRealVec_sumElim hXLr hXNr
  have hPd' : DifferentiableOn ℂ (frameMat K) (complexStrip n (r - 2 * δ)) :=
    hPd.mono (Triangular.strip_mono (by linarith))
  refine ⟨⟨hξd, hξp, hξr, Correction.diffOn_correction hPd' hξd,
    Correction.periodic_correction (Triangular.isPeriodicOn_mono (by linarith) hPp) hξp,
    Correction.isRealOnReals_correction hPr hξr⟩,
    fun θ hθ => ⟨hXN θ hθ, hGL θ hθ⟩, fun θ hθ => ⟨hXi θ hθ, ?_, ?_⟩⟩
  · have hθr : θ ∈ complexStrip n r := Triangular.strip_mono (by linarith) hθ
    obtain ⟨-, -, -, -, -, hPn, -⟩ := hnorm θ hθr
    rw [← Correction.dK_arith]
    exact Correction.norm_correction_le hPn (hXi θ hθ)
  · have hθ1 : θ ∈ complexStrip n (r - δ) := hsub hθ
    have hopen : (complexStrip n (r - 2 * δ)) ∈ 𝓝 θ := (isOpen_complexStrip n _).mem_nhds hθ
    rw [show xi h K ω = fun θ => (Sum.elim
      (triXiL ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ)
      (triXiN ω (etaL h K ω) (etaN h K ω) (torsion h K ω) θ) : Fin n ⊕ Fin n → ℂ) from rfl,
      Correction.fderiv_sumElim_apply (hXLd.differentiableAt hopen)
        ((hXNd.mono hsub).differentiableAt hopen), hdXL θ hθ, hdXN θ hθ1]
    refine Correction.norm_sumElim_le (hGL θ hθ1) ?_
    rw [norm_neg]
    exact (hHN θ (Triangular.strip_mono (by linarith) hθ)).trans
      (Correction.dxi_arith hP hγ hγΘ hδ hδ1 hε0)

end KAM.Apost

end
