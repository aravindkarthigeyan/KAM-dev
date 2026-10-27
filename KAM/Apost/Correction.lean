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

end Correction

end KAM.Apost

end
