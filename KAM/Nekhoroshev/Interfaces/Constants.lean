/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Weighted.Norm
public import KAM.Nekhoroshev.Interfaces.Setting
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Nekhoroshev.Defs.ActionBall
public import KAM.Frozen.Nekhoroshev.Defs.HasComplexHessianBound
public import KAM.Frozen.Nekhoroshev.Defs.HasDerivativeBounds
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticIntegrable
public import KAM.Frozen.Nekhoroshev.Defs.IsStrictlyQuasiConvex
public import KAM.Frozen.Nekhoroshev.Defs.RealActionDomain
public import KAM.Strip.Analytic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Tactic.Positivity

/-!
# The dictionary of constants, numerical half (`bpN:p1:constants`, `bpN:p1:constants#data`)

The seven data `(n; R, s, M, m, M_ℂ, ω_min)` of N-HEAD-C (`HeadParams`), the standing hypotheses
(H1)-(H5) (`HeadHyp`), the set `P = {J | |J| ≤ R/2}` (`centralSet`) and the derived constants
`q, B_c, μ, ℓ, r₀, A, s₀, σ, F, ε_*, C, c, T, ε₀` (`HeadParams.q` ... `HeadParams.eps0`), together
with the clauses of the constants lemma that are pure real arithmetic: (a) positivity and
`C ε₀ᵃ ≤ R/4` (`const_pos`, `const_eps0`), (b) size relations (`const_size`), (h) the conclusion
shape (`const_conclusion`).

The tubes (c), hypotheses (d), perturbation (e), exceptional branch (f) and the analytic half of the
time prefactor (g) are in `Interfaces/ConstantsAnalytic.lean`. To spare that file the arithmetic,
this file also proves the arithmetic content of those clauses as separately named helpers (their
statements are the corresponding conjuncts of the signatures):
`HeadParams.r0_le_*` (the four entries of the minimum defining `r₀`), `const_time_arith` (the
second conjunct of `const_time`), `const_exceptional_arith` (the first two conjuncts of
`const_exceptional`) and `const_perturbation_arith` (the last two conjuncts of
`const_perturbation`).

Every constant is kept as a definition and unfolded one at a time: each positivity or inequality
is proved by an abstract real lemma on named reals, never by `nlinarith` on the unfolded
expressions. The exponent is `a = 1/(2n)` (`HeadParams.expo`); `ω_min` is named `wmin` (`ω` is a
token under `open scoped ContDiff`).
-/

@[expose] public noncomputable section

open Set Metric

namespace KAM.Nekhoroshev

variable {n : ℕ}

/-- The seven data `(n; R, s, M, m, M_ℂ, ω_min)` of N-HEAD-C. -/
structure HeadParams (n : ℕ) where
  R : ℝ
  s : ℝ
  M : ℝ
  m : ℝ
  Mc : ℝ
  wmin : ℝ

/-- `R, s, M, m, M_ℂ, ω_min > 0`. -/
structure HeadParams.Pos (p : HeadParams n) : Prop where
  hR : 0 < p.R
  hs : 0 < p.s
  hM : 0 < p.M
  hm : 0 < p.m
  hMc : 0 < p.Mc
  hω : 0 < p.wmin

/-- Hypotheses (H1)-(H5) of N-HEAD-C on `h`. -/
def HeadHyp (p : HeadParams n) (h : (Fin n → ℂ) → ℂ) : Prop :=
  IsAnalyticIntegrable p.R p.s h ∧ HasComplexHessianBound p.R p.s h p.Mc ∧
    (∀ I ∈ actionBall n p.R, p.wmin ≤ ‖KAM.frequencyMap h I‖) ∧
    IsStrictlyQuasiConvex (realActionDomain n p.R p.s) h p.m ∧
    HasDerivativeBounds (realActionDomain n p.R p.s) h p.M

/-- The exponent `a = 1/(2n)`. -/
def HeadParams.expo (n : ℕ) : ℝ := 1 / (2 * (n : ℝ))
/-- `q = m/n`. -/
def HeadParams.q (p : HeadParams n) : ℝ := qcQ n p.m
/-- `B_c = n M_ℂ + q`. -/
def HeadParams.B (p : HeadParams n) : ℝ := qcB n p.m p.Mc
/-- `μ = q/2`. -/
def HeadParams.mu (p : HeadParams n) : ℝ := qcMu n p.m
/-- `ℓ = ω_min q / (8 (B_c + q))`. -/
def HeadParams.ell (p : HeadParams n) : ℝ := qcEll n p.m p.Mc p.wmin
/-- `r₀ = min (s/2, R/8, ℓ/(2B_c), 4ω_min/μ)`. -/
def HeadParams.r0 (p : HeadParams n) : ℝ :=
  min (min (p.s / 2) (p.R / 8)) (min (p.ell / (2 * p.B)) (4 * p.wmin / p.mu))
/-- `A = 11 B_c / μ`. -/
def HeadParams.A (p : HeadParams n) : ℝ := 11 * p.B / p.mu
/-- `s₀ = π s`. -/
def HeadParams.s0 (p : HeadParams n) : ℝ := Real.pi * p.s
/-- `σ = π s / 4`. -/
def HeadParams.sigma (p : HeadParams n) : ℝ := Real.pi * p.s / 4
/-- `F = 2π coth(π s/4)ⁿ`. -/
def HeadParams.F (p : HeadParams n) : ℝ := 2 * Real.pi * KAM.Weighted.coth (Real.pi * p.s / 4) ^ n
/-- `ε_* = 2π μ r₀² / (2¹⁰ A²ⁿ)`. -/
def HeadParams.epsStar (p : HeadParams n) : ℝ :=
  2 * Real.pi * p.mu * p.r0 ^ 2 / (2 ^ 10 * p.A ^ (2 * n))
/-- `C = (r₀/A) (F/ε_*)ᵃ`. -/
def HeadParams.C (p : HeadParams n) : ℝ := p.r0 / p.A * (p.F / p.epsStar) ^ HeadParams.expo n
/-- `c = (s₀/(6√n)) (ε_*/F)ᵃ`. -/
def HeadParams.c (p : HeadParams n) : ℝ :=
  p.s0 / (6 * Real.sqrt n) * (p.epsStar / p.F) ^ HeadParams.expo n
/-- `T = A² s₀ / (4π n M)`. -/
def HeadParams.T (p : HeadParams n) : ℝ := p.A ^ 2 * p.s0 / (4 * Real.pi * n * p.M)
/-- `ε₀ = min (ε_*/F, (R/(4C))²ⁿ)`. -/
def HeadParams.eps0 (p : HeadParams n) : ℝ := min (p.epsStar / p.F) ((p.R / (4 * p.C)) ^ (2 * n))

/-- `P = {J ∈ ℝⁿ | |J| ≤ R/2}` embedded in `ℂⁿ` (the set `D` of the tubes `V_{r₀} P`). -/
def centralSet (n : ℕ) (R : ℝ) : Set (Fin n → ℂ) :=
  KAM.realInclusion n '' {J : Fin n → ℝ | ‖J‖ ≤ R / 2}

/-! ### Abstract real lemmas -/

section Real

/-- `coth x > 0` for `x > 0`. -/
private theorem coth_pos_of_pos {x : ℝ} (hx : 0 < x) : 0 < KAM.Weighted.coth x :=
  div_pos (Real.cosh_pos x) (Real.sinh_pos_iff.mpr hx)

private theorem cast_pos_of_one_le (hn : 1 ≤ n) : (0 : ℝ) < n :=
  Nat.cast_pos.mpr (by omega)

/-- `(x ^ (2n)) ^ (1/(2n)) = x` for `x ≥ 0`, `n ≥ 1`. -/
private theorem pow_rpow_expo {x : ℝ} (hx : 0 ≤ x) (hn : 1 ≤ n) :
    (x ^ (2 * n)) ^ HeadParams.expo n = x := by
  have h : HeadParams.expo n = ((2 * n : ℕ) : ℝ)⁻¹ := by
    unfold HeadParams.expo
    push_cast
    rw [one_div]
  rw [h]
  exact Real.pow_rpow_inv_natCast hx (by omega)

/-- `a = 1/(2n) ≥ 0`. -/
private theorem expo_nonneg : 0 ≤ HeadParams.expo n := by
  unfold HeadParams.expo
  positivity

/-- `2 μ ≤ B_c` in abstract form: `q/2 * 2 = q ≤ n M_ℂ + q`. -/
private theorem two_mul_half_le {q nMc : ℝ} (h : 0 ≤ nMc) : 2 * (q / 2) ≤ nMc + q := by
  linarith

/-- The size inequality `ℓ/(2B) ≤ 4ℓ/μ` from `2μ ≤ B`, `0 < μ`, `0 ≤ ℓ`. -/
private theorem div_two_mul_le_four_div {ell B mu : ℝ} (hmu : 0 < mu) (hell : 0 ≤ ell)
    (hB : 2 * mu ≤ B) : ell / (2 * B) ≤ 4 * ell / mu := by
  have hB0 : 0 < B := by linarith
  rw [div_le_div_iff₀ (by positivity) hmu]
  have h1 : mu ≤ B / 2 := by linarith
  calc ell * mu ≤ ell * (B / 2) := mul_le_mul_of_nonneg_left h1 hell
    _ ≤ 4 * ell * (2 * B) := by nlinarith [mul_nonneg hell hB0.le]

/-- `22 ≤ 11 B / μ` from `2μ ≤ B`. -/
private theorem twenty_two_le_div {B mu : ℝ} (hmu : 0 < mu) (hB : 2 * mu ≤ B) :
    22 ≤ 11 * B / mu := by
  rw [le_div_iff₀ hmu]
  linarith

/-- `r/A ≤ r/22` for `0 ≤ r`, `22 ≤ A`. -/
private theorem div_le_div_twenty_two {r A : ℝ} (hr : 0 ≤ r) (hA : 22 ≤ A) : r / A ≤ r / 22 :=
  div_le_div_of_nonneg_left hr (by norm_num) hA

/-- `r/22 ≤ R/176` from `r ≤ R/8`. -/
private theorem div_twenty_two_le {r R : ℝ} (hr : r ≤ R / 8) : r / 22 ≤ R / 176 := by
  rw [div_le_div_iff₀ (by norm_num) (by norm_num)]
  linarith

/-- `C * x = R/4` when `x = R/(4C)`. -/
private theorem mul_div_four_eq {C R : ℝ} (hC : 0 < C) : C * (R / (4 * C)) = R / 4 := by
  field_simp

/-- `2 * (N / (4 K)) ≤ N / Ω` for `0 ≤ N`, `0 < Ω ≤ 2 K`, `0 < K`. -/
private theorem two_mul_div_le {N K Ω : ℝ} (hN : 0 ≤ N) (hK : 0 < K) (hΩ : 0 < Ω)
    (hΩK : Ω ≤ 2 * K) : 2 * (N / (4 * K)) ≤ N / Ω := by
  have h : 2 * (N / (4 * K)) = N / (2 * K) := by
    field_simp
    ring
  rw [h]
  exact div_le_div_of_nonneg_left hN hΩ hΩK

/-- `r * (x * ε)ᵃ = (r * xᵃ) * εᵃ` for `x, ε ≥ 0`. -/
private theorem mul_mul_rpow {r x e a : ℝ} (hx : 0 ≤ x) (he : 0 ≤ e) :
    r * (x * e) ^ a = r * x ^ a * e ^ a := by
  rw [Real.mul_rpow hx he, mul_assoc]

/-- `(x * ε⁻¹)ᵃ = xᵃ * ε^(-a)` for `x, ε ≥ 0`. -/
private theorem rpow_mul_inv {x e a : ℝ} (hx : 0 ≤ x) (he : 0 ≤ e) :
    (x * e⁻¹) ^ a = x ^ a * e ^ (-a) := by
  rw [Real.mul_rpow hx (inv_nonneg.mpr he), Real.inv_rpow he, Real.rpow_neg he]

end Real

/-! ### Positivity of the constants (`bpN:p1:co-pos`) -/

namespace HeadParams

variable (p : HeadParams n)

theorem q_pos (hn : 1 ≤ n) (hp : p.Pos) : 0 < p.q :=
  div_pos hp.hm (cast_pos_of_one_le hn)

theorem B_pos (hn : 1 ≤ n) (hp : p.Pos) : 0 < p.B :=
  add_pos (mul_pos (cast_pos_of_one_le hn) hp.hMc) (q_pos p hn hp)

theorem mu_pos (hn : 1 ≤ n) (hp : p.Pos) : 0 < p.mu :=
  half_pos (q_pos p hn hp)

/-- `2 μ ≤ B_c` (since `2μ = q` and `B_c = n M_ℂ + q`). -/
theorem two_mu_le_B (hn : 1 ≤ n) (hp : p.Pos) : 2 * p.mu ≤ p.B :=
  two_mul_half_le (mul_pos (cast_pos_of_one_le hn) hp.hMc).le

theorem ell_pos (hn : 1 ≤ n) (hp : p.Pos) : 0 < p.ell :=
  div_pos (mul_pos hp.hω (q_pos p hn hp))
    (mul_pos (by norm_num) (add_pos (B_pos p hn hp) (q_pos p hn hp)))

theorem r0_pos (hn : 1 ≤ n) (hp : p.Pos) : 0 < p.r0 := by
  have hB := B_pos p hn hp
  have hmu := mu_pos p hn hp
  have hell := ell_pos p hn hp
  have h1 : 0 < p.s / 2 := half_pos hp.hs
  have h2 : 0 < p.R / 8 := by have := hp.hR; positivity
  have h3 : 0 < p.ell / (2 * p.B) := by positivity
  have h4 : 0 < 4 * p.wmin / p.mu := by have := hp.hω; positivity
  exact lt_min (lt_min h1 h2) (lt_min h3 h4)

theorem A_pos (hn : 1 ≤ n) (hp : p.Pos) : 0 < p.A :=
  div_pos (mul_pos (by norm_num) (B_pos p hn hp)) (mu_pos p hn hp)

theorem s0_pos (hp : p.Pos) : 0 < p.s0 :=
  mul_pos Real.pi_pos hp.hs

theorem sigma_pos (hp : p.Pos) : 0 < p.sigma :=
  div_pos (mul_pos Real.pi_pos hp.hs) (by norm_num)

/-- `coth(π s/4) > 0`. -/
theorem coth_pos (hp : p.Pos) : 0 < KAM.Weighted.coth (Real.pi * p.s / 4) :=
  coth_pos_of_pos (div_pos (mul_pos Real.pi_pos hp.hs) (by norm_num))

theorem F_pos (hp : p.Pos) : 0 < p.F :=
  mul_pos (mul_pos (by norm_num) Real.pi_pos) (pow_pos (coth_pos p hp) n)

theorem epsStar_pos (hn : 1 ≤ n) (hp : p.Pos) : 0 < p.epsStar := by
  have hmu := mu_pos p hn hp
  have hr0 := r0_pos p hn hp
  have hA := A_pos p hn hp
  unfold epsStar
  have := Real.pi_pos
  positivity

theorem C_pos (hn : 1 ≤ n) (hp : p.Pos) : 0 < p.C := by
  have hr0 := r0_pos p hn hp
  have hA := A_pos p hn hp
  have hF := F_pos p hp
  have hE := epsStar_pos p hn hp
  unfold C
  positivity

theorem c_pos (hn : 1 ≤ n) (hp : p.Pos) : 0 < p.c := by
  have hs0 := s0_pos p hp
  have hF := F_pos p hp
  have hE := epsStar_pos p hn hp
  have hsqrt : 0 < Real.sqrt n := Real.sqrt_pos.mpr (cast_pos_of_one_le hn)
  unfold c
  positivity

theorem T_pos (hn : 1 ≤ n) (hp : p.Pos) : 0 < p.T := by
  have hA := A_pos p hn hp
  have hs0 := s0_pos p hp
  have hn' := cast_pos_of_one_le hn
  have hM := hp.hM
  have := Real.pi_pos
  unfold T
  positivity

theorem eps0_pos (hn : 1 ≤ n) (hp : p.Pos) : 0 < p.eps0 := by
  have hC := C_pos p hn hp
  have hF := F_pos p hp
  have hE := epsStar_pos p hn hp
  have hR := hp.hR
  unfold eps0
  exact lt_min (div_pos hE hF) (pow_pos (by positivity) _)

/-! The four entries of the minimum defining `r₀`. -/

theorem r0_le_half_s : p.r0 ≤ p.s / 2 :=
  (min_le_left _ _).trans (min_le_left _ _)

theorem r0_le_R_div_eight : p.r0 ≤ p.R / 8 :=
  (min_le_left _ _).trans (min_le_right _ _)

theorem r0_le_ell_div : p.r0 ≤ p.ell / (2 * p.B) :=
  (min_le_right _ _).trans (min_le_left _ _)

theorem r0_le_wmin_div : p.r0 ≤ 4 * p.wmin / p.mu :=
  (min_le_right _ _).trans (min_le_right _ _)

end HeadParams

/-! ### The clauses of `bpN:p1:constants` that are arithmetic -/

/-- (a) positivity and `C ε₀ᵃ ≤ R/4`, `ε₀ ≤ ε_*/F`. -/
theorem const_pos (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) :
    0 < p.q ∧ 0 < p.B ∧ 0 < p.mu ∧ 0 < p.ell ∧ 0 < p.r0 ∧ 0 < p.A ∧ 0 < p.s0 ∧ 0 < p.sigma ∧
      0 < p.F ∧ 0 < p.epsStar ∧ 0 < p.C ∧ 0 < p.c ∧ 0 < p.T ∧ 0 < p.eps0 :=
  ⟨p.q_pos hn hp, p.B_pos hn hp, p.mu_pos hn hp, p.ell_pos hn hp, p.r0_pos hn hp, p.A_pos hn hp,
    p.s0_pos hp, p.sigma_pos hp, p.F_pos hp, p.epsStar_pos hn hp, p.C_pos hn hp, p.c_pos hn hp,
    p.T_pos hn hp, p.eps0_pos hn hp⟩

theorem const_eps0 (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) :
    p.C * p.eps0 ^ HeadParams.expo n ≤ p.R / 4 ∧ p.eps0 ≤ p.epsStar / p.F := by
  refine ⟨?_, min_le_left _ _⟩
  have hC := p.C_pos hn hp
  have hR := hp.hR
  have hx : 0 ≤ p.R / (4 * p.C) := by positivity
  have h1 : p.eps0 ^ HeadParams.expo n ≤ p.R / (4 * p.C) := by
    calc p.eps0 ^ HeadParams.expo n
        ≤ ((p.R / (4 * p.C)) ^ (2 * n)) ^ HeadParams.expo n :=
          Real.rpow_le_rpow (p.eps0_pos hn hp).le (min_le_right _ _) expo_nonneg
      _ = p.R / (4 * p.C) := pow_rpow_expo hx hn
  calc p.C * p.eps0 ^ HeadParams.expo n ≤ p.C * (p.R / (4 * p.C)) :=
        mul_le_mul_of_nonneg_left h1 hC.le
    _ = p.R / 4 := mul_div_four_eq hC

/-- (b) size relations: `r₀ ≤ ℓ/(2B_c)`, `r₀ ≤ 4ℓ/μ`, `A ≥ 22`, `R₀ = r₀/A ≤ R/176`. -/
theorem const_size (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) :
    p.r0 ≤ p.ell / (2 * p.B) ∧ p.r0 ≤ 4 * p.ell / p.mu ∧ 22 ≤ p.A ∧ p.r0 / p.A ≤ p.r0 / 22 ∧
      p.r0 / 22 ≤ p.R / 176 := by
  have hA : 22 ≤ p.A := twenty_two_le_div (p.mu_pos hn hp) (p.two_mu_le_B hn hp)
  exact ⟨p.r0_le_ell_div,
    p.r0_le_ell_div.trans
      (div_two_mul_le_four_div (p.mu_pos hn hp) (p.ell_pos hn hp).le (p.two_mu_le_B hn hp)),
    hA, div_le_div_twenty_two (p.r0_pos hn hp).le hA, div_twenty_two_le p.r0_le_R_div_eight⟩

/-- (h) conclusion shape (`ε > 0`): `R₀ (Fε/ε_*)^a = C ε^a` and `(s₀/6√n)(ε_*/Fε)^a = c ε^{-a}`. -/
theorem const_conclusion (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) {ε : ℝ} (hε : 0 < ε) :
    p.r0 / p.A * (p.F * ε / p.epsStar) ^ HeadParams.expo n = p.C * ε ^ HeadParams.expo n ∧
    p.s0 / (6 * Real.sqrt n) * (p.epsStar / (p.F * ε)) ^ HeadParams.expo n =
      p.c * ε ^ (-HeadParams.expo n) := by
  have hF := p.F_pos hp
  have hE := p.epsStar_pos hn hp
  constructor
  · have h : p.F * ε / p.epsStar = p.F / p.epsStar * ε := by ring
    rw [h]
    exact mul_mul_rpow (div_pos hF hE).le hε.le
  · have h : p.epsStar / (p.F * ε) = p.epsStar / p.F * ε⁻¹ := by
      field_simp
    rw [h, rpow_mul_inv (div_pos hE hF).le hε.le]
    unfold HeadParams.c
    ring

/-- The arithmetic half of (g): `2T ≤ A² s₀ / Ω₀` for every `Ω₀ ∈ (0, 2π n M]` (the second
conjunct of `const_time`, proved in `ConstantsAnalytic` from this). -/
theorem const_time_arith (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) :
    ∀ Ω₀ : ℝ, 0 < Ω₀ → Ω₀ ≤ 2 * Real.pi * n * p.M → 2 * p.T ≤ p.A ^ 2 * p.s0 / Ω₀ := by
  intro Ω₀ hΩ hΩM
  have hK : 0 < Real.pi * n * p.M :=
    mul_pos (mul_pos Real.pi_pos (cast_pos_of_one_le hn)) hp.hM
  have hN : 0 ≤ p.A ^ 2 * p.s0 := (mul_pos (pow_pos (p.A_pos hn hp) 2) (p.s0_pos hp)).le
  have hΩK : Ω₀ ≤ 2 * (Real.pi * n * p.M) := by
    calc Ω₀ ≤ 2 * Real.pi * n * p.M := hΩM
      _ = 2 * (Real.pi * n * p.M) := by ring
  have h := two_mul_div_le hN hK hΩ hΩK
  unfold HeadParams.T
  rw [show 4 * Real.pi * (n : ℝ) * p.M = 4 * (Real.pi * n * p.M) by ring]
  exact h

/-- The arithmetic half of (f): `m_P r₀/8 = 2π μ r₀/8 ≤ π ω_min < 2π ω_min` (the first two
conjuncts of `const_exceptional`, whose third conjunct is the analytic one). -/
theorem const_exceptional_arith (hn : 1 ≤ n) (p : HeadParams n) (hp : p.Pos) :
    2 * Real.pi * p.mu * p.r0 / 8 ≤ Real.pi * p.wmin ∧
      Real.pi * p.wmin < 2 * Real.pi * p.wmin := by
  refine ⟨?_, ?_⟩
  · have hmu := p.mu_pos hn hp
    have hpi := Real.pi_pos
    have h1 : p.mu * p.r0 ≤ 4 * p.wmin := by
      have := mul_le_mul_of_nonneg_left p.r0_le_wmin_div hmu.le
      rwa [mul_div_cancel₀ _ hmu.ne'] at this
    calc 2 * Real.pi * p.mu * p.r0 / 8 = Real.pi * (p.mu * p.r0) / 4 := by ring
      _ ≤ Real.pi * (4 * p.wmin) / 4 := by gcongr
      _ = Real.pi * p.wmin := by ring
  · have := mul_pos Real.pi_pos hp.hω
    linarith

/-- The arithmetic half of (e): `2π (coth(π s/4)ⁿ ε) = F ε` and `ε ≤ ε₀ → F ε ≤ ε_*` (the last two
conjuncts of `const_perturbation`). -/
theorem const_perturbation_arith (p : HeadParams n) (hp : p.Pos) (ε : ℝ) :
    2 * Real.pi * (KAM.Weighted.coth (Real.pi * p.s / 4) ^ n * ε) = p.F * ε ∧
      (ε ≤ p.eps0 → p.F * ε ≤ p.epsStar) := by
  have hF := p.F_pos hp
  refine ⟨by unfold HeadParams.F; ring, fun hε => ?_⟩
  have h1 : ε ≤ p.epsStar / p.F := hε.trans (min_le_left _ _)
  rw [le_div_iff₀ hF] at h1
  linarith

end KAM.Nekhoroshev

end
