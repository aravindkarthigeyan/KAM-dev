/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Kepler.Plane
public import KAM.Frozen.Planetary.Defs.PlaneSq
public import KAM.Frozen.Planetary.Defs.PlaneLength
public import KAM.Frozen.Iso.Defs.Radius
public import KAM.Frozen.Iso.Defs.Primary1
public import KAM.Frozen.Iso.Defs.Primary2
public import KAM.Frozen.Iso.Defs.CollisionFree

/-!
# The shift potential (`bpI:p7:shift-def`, `bpI:p7:shift`)

For the restricted three-body problem with the mass parameter `μ` removed from the Kepler baseline:
`ϑ(z) = z₀² + z₁²` on `ℂ²`, `w(q) = ϑ(q)^{-1/2}`, the potential
`Ψ(q, μ) = (1-μ) ϑ(q + μ𝐞)^{-1/2} + μ ϑ(q - (1-μ)𝐞)^{-1/2}` and the factor-removed difference quotient
`f(q, μ) = -dslope (Ψ q) 0 μ` (so that `μ f = w - Ψ`).  The domain `𝒪 × D̄(0, ε₀/2)` lies in the
set `Ξ` where the three radicands have positive real part; there `f` is jointly holomorphic (an
explicit rationalised formula for the difference quotient avoids a multivariable removable singularity
theorem), bounded by `C_sh = 6 / (ε₀ √c_*)` (Schwarz lemma), has the explicit value at `μ = 0`, and is real at real
points.

All branch arguments of `cpow` have positive real part, so they stay inside the slit plane.
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff

namespace KAM.Iso

open KAM KAM.Kepler KAM.Planetary

section Shift

/-- `ϑ(z) = z₀² + z₁²` on `ℂ²`. -/
def vtheta (z : Fin 2 → ℂ) : ℂ := z 0 ^ 2 + z 1 ^ 2
/-- The Euclidean length on `ℂ²`. -/
def clen (z : Fin 2 → ℂ) : ℝ := √(‖z 0‖ ^ 2 + ‖z 1‖ ^ 2)
/-- `𝐞 = (1, 0)` on `ℂ²`. -/
def e0 : Fin 2 → ℂ := ![1, 0]
/-- `w(q) = ϑ(q)^{-1/2}`, principal branch. -/
def shiftW (q : Fin 2 → ℂ) : ℂ := vtheta q ^ (-(1 / 2 : ℂ))
/-- `Ψ(q, μ) = (1-μ) ϑ(q + μ𝐞)^{-1/2} + μ ϑ(q - (1-μ)𝐞)^{-1/2}`. -/
def shiftPsi (q : Fin 2 → ℂ) (μ : ℂ) : ℂ :=
  (1 - μ) * vtheta (q + μ • e0) ^ (-(1 / 2 : ℂ)) + μ * vtheta (q - (1 - μ) • e0) ^ (-(1 / 2 : ℂ))
/-- `f(q, μ)` with `μ f = w - Ψ`: `-dslope (Ψ q) 0 μ` (value at `μ = 0` is `-∂_μΨ`). -/
def shiftF (q : Fin 2 → ℂ) (μ : ℂ) : ℂ := -dslope (shiftPsi q) 0 μ
/-- The domain `Ξ`. -/
def shiftXi : Set ((Fin 2 → ℂ) × ℂ) :=
  {x | 0 < (vtheta x.1).re ∧ 0 < (vtheta (x.1 + x.2 • e0)).re ∧ 0 < (vtheta (x.1 - (1 - x.2) • e0)).re}

/-- Typing data of `bpI:p7:shift`: `0 < r_min ≤ ρ_max < 1` and `ε₀` with the two smallness inequalities. -/
structure ShiftConst (rmin ρmax ε₀ : ℝ) : Prop where
  rmin_pos : 0 < rmin
  rmin_le : rmin ≤ ρmax
  rho_lt : ρmax < 1
  eps_pos : 0 < ε₀
  h₁ : ε₀ * (ε₀ + 2 * ρmax) < rmin ^ 2
  h₂ : ε₀ * (ε₀ + 4) < (1 - ρmax) ^ 2
/-- An explicit admissible `ε₀` (no choice). -/
def shiftEps (rmin ρmax : ℝ) : ℝ := min (rmin ^ 2) ((1 - ρmax) ^ 2) / 16
def shiftCstar (rmin ρmax ε₀ : ℝ) : ℝ := min (rmin ^ 2 - ε₀ * (ε₀ + 2 * ρmax)) ((1 - ρmax) ^ 2 - ε₀ * (ε₀ + 4))
def shiftCsh (rmin ρmax ε₀ : ℝ) : ℝ := 6 / (ε₀ * √(shiftCstar rmin ρmax ε₀))
/-- `𝒪`: complex points within `ε₀/2` of the real shell `r_min ≤ |q'| ≤ ρ_max`. -/
def shiftO (rmin ρmax ε₀ : ℝ) : Set (Fin 2 → ℂ) :=
  {q | ∃ q' : Fin 2 → ℝ, rmin ≤ planeLength q' ∧ planeLength q' ≤ ρmax ∧ clen (q - fun i => (q' i : ℂ)) < ε₀ / 2}

/-! ### The Euclidean length on `ℂ²` -/

private theorem clen_sq (z : Fin 2 → ℂ) : clen z ^ 2 = ‖z 0‖ ^ 2 + ‖z 1‖ ^ 2 :=
  Real.sq_sqrt (by positivity)

private theorem clen_nonneg (z : Fin 2 → ℂ) : 0 ≤ clen z := Real.sqrt_nonneg _

private theorem dot_norm_le (a b : Fin 2 → ℂ) :
    ‖a 0‖ * ‖b 0‖ + ‖a 1‖ * ‖b 1‖ ≤ clen a * clen b := by
  apply le_of_sq_le_sq _ (mul_nonneg (clen_nonneg a) (clen_nonneg b))
  rw [mul_pow, clen_sq, clen_sq]
  nlinarith [sq_nonneg (‖a 0‖ * ‖b 1‖ - ‖a 1‖ * ‖b 0‖)]

private theorem norm_dot_le (a b : Fin 2 → ℂ) :
    ‖a 0 * b 0 + a 1 * b 1‖ ≤ clen a * clen b := by
  refine le_trans ?_ (dot_norm_le a b)
  calc ‖a 0 * b 0 + a 1 * b 1‖ ≤ ‖a 0 * b 0‖ + ‖a 1 * b 1‖ := norm_add_le _ _
    _ = ‖a 0‖ * ‖b 0‖ + ‖a 1‖ * ‖b 1‖ := by rw [norm_mul, norm_mul]

private theorem clen_add_le (a b : Fin 2 → ℂ) : clen (a + b) ≤ clen a + clen b := by
  apply le_of_sq_le_sq _ (add_nonneg (clen_nonneg a) (clen_nonneg b))
  have h0 : ‖a 0 + b 0‖ ^ 2 ≤ (‖a 0‖ + ‖b 0‖) ^ 2 :=
    pow_le_pow_left₀ (norm_nonneg _) (norm_add_le _ _) 2
  have h1 : ‖a 1 + b 1‖ ^ 2 ≤ (‖a 1‖ + ‖b 1‖) ^ 2 :=
    pow_le_pow_left₀ (norm_nonneg _) (norm_add_le _ _) 2
  have hd := dot_norm_le a b
  have ha := clen_sq a
  have hb := clen_sq b
  rw [clen_sq]
  simp only [Pi.add_apply]
  nlinarith

private theorem clen_smul (c : ℂ) (z : Fin 2 → ℂ) : clen (c • z) = ‖c‖ * clen z := by
  unfold clen
  simp only [Pi.smul_apply, smul_eq_mul, norm_mul]
  rw [show (‖c‖ * ‖z 0‖) ^ 2 + (‖c‖ * ‖z 1‖) ^ 2 = ‖c‖ ^ 2 * (‖z 0‖ ^ 2 + ‖z 1‖ ^ 2) by ring,
    Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq (norm_nonneg c)]

private theorem clen_smul_e0 (μ : ℂ) : clen (μ • e0) = ‖μ‖ := by
  rw [clen_smul]
  simp [clen, e0]

private theorem clen_ofReal (v : Fin 2 → ℝ) : clen (fun i => (v i : ℂ)) = planeLength v := by
  simp [clen, planeLength, planeSq, Fin.sum_univ_two]

private theorem vtheta_ofReal (v : Fin 2 → ℝ) :
    vtheta (fun i => (v i : ℂ)) = ((planeSq v : ℝ) : ℂ) := by
  simp [vtheta, planeSq, Fin.sum_univ_two]

/-! ### Positivity of the radicands -/

private theorem norm_vtheta_sub_le (z z' : Fin 2 → ℂ) :
    ‖vtheta z - vtheta z'‖ ≤ clen (z - z') * (clen (z - z') + 2 * clen z') := by
  have key : vtheta z - vtheta z' =
      (z - z') 0 * ((z - z') + (2 : ℂ) • z') 0 + (z - z') 1 * ((z - z') + (2 : ℂ) • z') 1 := by
    simp only [vtheta, Pi.sub_apply, Pi.add_apply, Pi.smul_apply, smul_eq_mul]; ring
  rw [key]
  refine (norm_dot_le _ _).trans (mul_le_mul_of_nonneg_left ?_ (clen_nonneg _))
  calc clen ((z - z') + (2 : ℂ) • z') ≤ clen (z - z') + clen ((2 : ℂ) • z') := clen_add_le _ _
    _ = clen (z - z') + 2 * clen z' := by rw [clen_smul]; simp

private theorem re_vtheta_ge {z z' : Fin 2 → ℂ} {D c : ℝ} (hD : clen (z - z') ≤ D)
    (hc : clen z' ≤ c) : (vtheta z').re - D * (D + 2 * c) ≤ (vtheta z).re := by
  have h1 := norm_vtheta_sub_le z z'
  have h0 := clen_nonneg (z - z')
  have h0' := clen_nonneg z'
  have h2 : clen (z - z') * (clen (z - z') + 2 * clen z') ≤ D * (D + 2 * c) :=
    mul_le_mul hD (by linarith) (by linarith) (h0.trans hD)
  have h3 : |(vtheta z).re - (vtheta z').re| ≤ ‖vtheta z - vtheta z'‖ := by
    rw [← Complex.sub_re]; exact Complex.abs_re_le_norm _
  have := (abs_le.mp h3).1
  linarith

private theorem cstar_le_first (rmin ρmax ε₀ : ℝ) :
    shiftCstar rmin ρmax ε₀ ≤ rmin ^ 2 - ε₀ * (ε₀ + 2 * ρmax) := min_le_left _ _

private theorem cstar_le_second (rmin ρmax ε₀ : ℝ) :
    shiftCstar rmin ρmax ε₀ ≤ (1 - ρmax) ^ 2 - ε₀ * (ε₀ + 4) := min_le_right _ _

private theorem shiftCstar_pos {rmin ρmax ε₀ : ℝ} (h : ShiftConst rmin ρmax ε₀) :
    0 < shiftCstar rmin ρmax ε₀ :=
  lt_min (by linarith [h.h₁]) (by linarith [h.h₂])

private theorem eps_lt_quarter {rmin ρmax ε₀ : ℝ} (h : ShiftConst rmin ρmax ε₀) : ε₀ < 1 / 4 := by
  have h2 := h.h₂
  have h3 := h.rmin_pos
  have h4 := h.rmin_le
  have h5 := h.rho_lt
  have h6 := h.eps_pos
  nlinarith

/-- The real unit vector `(1, 0)`. -/
private def e0R : Fin 2 → ℝ := ![1, 0]

private theorem real_vec_e0 (v : Fin 2 → ℝ) :
    (fun i => (((v - e0R : Fin 2 → ℝ) i : ℝ) : ℂ)) = (fun i => (v i : ℂ)) - e0 := by
  ext i; fin_cases i <;> simp [e0, e0R]

private theorem planeLength_e0R : planeLength e0R = 1 := by
  simp [e0R, planeLength, planeSq, Fin.sum_univ_two]

variable {rmin ρmax ε₀ : ℝ}

private theorem shiftO_re_first (h : ShiftConst rmin ρmax ε₀) {q : Fin 2 → ℂ}
    (hq : q ∈ shiftO rmin ρmax ε₀) :
    shiftCstar rmin ρmax ε₀ ≤ (vtheta q).re := by
  obtain ⟨q', h1, h2, h3⟩ := hq
  have hD : clen (q - fun i => (q' i : ℂ)) ≤ ε₀ := by linarith [h.eps_pos]
  have hc : clen (fun i => (q' i : ℂ)) ≤ ρmax := by rw [clen_ofReal]; exact h2
  have key := re_vtheta_ge hD hc
  rw [vtheta_ofReal, Complex.ofReal_re, ← planeLength_sq] at key
  have hsq : rmin ^ 2 ≤ planeLength q' ^ 2 := pow_le_pow_left₀ h.rmin_pos.le h1 2
  linarith [cstar_le_first rmin ρmax ε₀]

private theorem shiftO_re_second (h : ShiftConst rmin ρmax ε₀) {q : Fin 2 → ℂ}
    (hq : q ∈ shiftO rmin ρmax ε₀) {μ : ℂ} (hμ : ‖μ‖ ≤ ε₀ / 2) :
    shiftCstar rmin ρmax ε₀ ≤ (vtheta (q + μ • e0)).re := by
  obtain ⟨q', h1, h2, h3⟩ := hq
  have hD : clen (q + μ • e0 - fun i => (q' i : ℂ)) ≤ ε₀ := by
    have : q + μ • e0 - (fun i => (q' i : ℂ)) = (q - fun i => (q' i : ℂ)) + μ • e0 := by
      abel
    rw [this]
    refine (clen_add_le _ _).trans ?_
    rw [clen_smul_e0]
    linarith
  have hc : clen (fun i => (q' i : ℂ)) ≤ ρmax := by rw [clen_ofReal]; exact h2
  have key := re_vtheta_ge hD hc
  rw [vtheta_ofReal, Complex.ofReal_re, ← planeLength_sq] at key
  have hsq : rmin ^ 2 ≤ planeLength q' ^ 2 := pow_le_pow_left₀ h.rmin_pos.le h1 2
  linarith [cstar_le_first rmin ρmax ε₀]

private theorem shiftO_re_third (h : ShiftConst rmin ρmax ε₀) {q : Fin 2 → ℂ}
    (hq : q ∈ shiftO rmin ρmax ε₀) {μ : ℂ} (hμ : ‖μ‖ ≤ ε₀ / 2) :
    shiftCstar rmin ρmax ε₀ ≤ (vtheta (q - (1 - μ) • e0)).re := by
  obtain ⟨q', h1, h2, h3⟩ := hq
  have hz' : (fun i => (((q' - e0R : Fin 2 → ℝ) i : ℝ) : ℂ)) = (fun i => (q' i : ℂ)) - e0 :=
    real_vec_e0 q'
  have hD : clen (q - (1 - μ) • e0 - (fun i => (((q' - e0R : Fin 2 → ℝ) i : ℝ) : ℂ))) ≤ ε₀ := by
    have : q - (1 - μ) • e0 - (fun i => (((q' - e0R : Fin 2 → ℝ) i : ℝ) : ℂ)) =
        (q - fun i => (q' i : ℂ)) + μ • e0 := by
      rw [hz']
      ext i
      simp only [Pi.add_apply, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
      ring
    rw [this]
    refine (clen_add_le _ _).trans ?_
    rw [clen_smul_e0]
    linarith
  have hlow : 1 - ρmax ≤ planeLength (q' - e0R) := by
    have := abs_planeLength_sub_le e0R q'
    rw [planeLength_sub_comm e0R q', planeLength_e0R] at this
    have := (abs_le.mp this).2
    linarith
  have hup : planeLength (q' - e0R) ≤ 2 := by
    have := planeLength_add_le q' (-e0R)
    rw [← sub_eq_add_neg, planeLength_neg, planeLength_e0R] at this
    linarith [h.rho_lt]
  have hc : clen (fun i => (((q' - e0R : Fin 2 → ℝ) i : ℝ) : ℂ)) ≤ 2 := by
    rw [clen_ofReal]; exact hup
  have key := re_vtheta_ge hD hc
  rw [vtheta_ofReal, Complex.ofReal_re, ← planeLength_sq] at key
  have hsq : (1 - ρmax) ^ 2 ≤ planeLength (q' - e0R) ^ 2 :=
    pow_le_pow_left₀ (by linarith [h.rho_lt]) hlow 2
  linarith [cstar_le_second rmin ρmax ε₀]

theorem shiftConst_shiftEps {rmin ρmax : ℝ} (h0 : 0 < rmin) (h1 : rmin ≤ ρmax) (h2 : ρmax < 1) :
    ShiftConst rmin ρmax (shiftEps rmin ρmax) := by
  have hr : 0 < rmin ^ 2 := by positivity
  have hρ : 0 < (1 - ρmax) ^ 2 := by
    have : 0 < 1 - ρmax := by linarith
    positivity
  have hρ1 : (1 - ρmax) ^ 2 ≤ 1 := by nlinarith
  have hmin : 0 < min (rmin ^ 2) ((1 - ρmax) ^ 2) := lt_min hr hρ
  have hle1 : min (rmin ^ 2) ((1 - ρmax) ^ 2) ≤ rmin ^ 2 := min_le_left _ _
  have hle2 : min (rmin ^ 2) ((1 - ρmax) ^ 2) ≤ (1 - ρmax) ^ 2 := min_le_right _ _
  have he : 0 < shiftEps rmin ρmax := by unfold shiftEps; positivity
  have he1 : shiftEps rmin ρmax ≤ rmin ^ 2 / 16 := by unfold shiftEps; linarith
  have he2 : shiftEps rmin ρmax ≤ (1 - ρmax) ^ 2 / 16 := by unfold shiftEps; linarith
  have he3 : shiftEps rmin ρmax ≤ 1 / 16 := by linarith
  refine ⟨h0, h1, h2, he, ?_, ?_⟩
  · have hρ0 : 0 ≤ ρmax := h0.le.trans h1
    nlinarith
  · nlinarith

/-- `bpI:p7:shift`: the numerators, `𝒪 × D̄(0, ε₀/2) ⊆ Ξ`, `Re ϑ ≥ c_*`, `|ϑ^{-1/2}| ≤ c_*^{-1/2}`. -/
theorem shift_domain {rmin ρmax ε₀ : ℝ} (h : ShiftConst rmin ρmax ε₀) {q : Fin 2 → ℂ}
    (hq : q ∈ shiftO rmin ρmax ε₀) {μ : ℂ} (hμ : ‖μ‖ ≤ ε₀ / 2) :
    (q, μ) ∈ shiftXi ∧ shiftCstar rmin ρmax ε₀ ≤ (vtheta q).re ∧
      shiftCstar rmin ρmax ε₀ ≤ (vtheta (q + μ • e0)).re ∧
      shiftCstar rmin ρmax ε₀ ≤ (vtheta (q - (1 - μ) • e0)).re ∧ 0 < shiftCstar rmin ρmax ε₀ := by
  have hpos := shiftCstar_pos h
  have h1 := shiftO_re_first h hq
  have h2 := shiftO_re_second h hq hμ
  have h3 := shiftO_re_third h hq hμ
  exact ⟨⟨hpos.trans_le h1, hpos.trans_le h2, hpos.trans_le h3⟩, h1, h2, h3, hpos⟩

/-! ### Holomorphy of the building blocks -/

private theorem differentiable_vtheta : Differentiable ℂ vtheta := by
  unfold vtheta; fun_prop

private theorem slit_of_re_pos {z : ℂ} (h : 0 < z.re) : z ∈ Complex.slitPlane :=
  Complex.mem_slitPlane_iff.mpr (Or.inl h)

private theorem differentiable_vtheta_add (q : Fin 2 → ℂ) :
    Differentiable ℂ fun μ : ℂ => vtheta (q + μ • e0) :=
  differentiable_vtheta.comp (by fun_prop)

private theorem differentiable_vtheta_sub (q : Fin 2 → ℂ) :
    Differentiable ℂ fun μ : ℂ => vtheta (q - (1 - μ) • e0) :=
  differentiable_vtheta.comp (by fun_prop)

private theorem differentiableAt_shiftPsi {q : Fin 2 → ℂ} {μ : ℂ} (hx : (q, μ) ∈ shiftXi) :
    DifferentiableAt ℂ (shiftPsi q) μ := by
  obtain ⟨_, h2, h3⟩ := hx
  have hA : DifferentiableAt ℂ (fun μ : ℂ => vtheta (q + μ • e0) ^ (-(1 / 2 : ℂ))) μ :=
    ((differentiable_vtheta_add q) μ).cpow_const (slit_of_re_pos h2)
  have hB : DifferentiableAt ℂ (fun μ : ℂ => vtheta (q - (1 - μ) • e0) ^ (-(1 / 2 : ℂ))) μ :=
    ((differentiable_vtheta_sub q) μ).cpow_const (slit_of_re_pos h3)
  exact (((differentiableAt_const (1 : ℂ)).sub differentiableAt_id).mul hA).add
    (differentiableAt_id.mul hB)

private theorem isOpen_slice (q : Fin 2 → ℂ) : IsOpen {μ : ℂ | (q, μ) ∈ shiftXi} := by
  have h2 : IsOpen {μ : ℂ | 0 < (vtheta (q + μ • e0)).re} :=
    isOpen_lt continuous_const (Complex.continuous_re.comp (differentiable_vtheta_add q).continuous)
  have h3 : IsOpen {μ : ℂ | 0 < (vtheta (q - (1 - μ) • e0)).re} :=
    isOpen_lt continuous_const (Complex.continuous_re.comp (differentiable_vtheta_sub q).continuous)
  exact (isOpen_const (p := 0 < (vtheta q).re)).inter (h2.inter h3)

private theorem continuousOn_deriv_shiftPsi (q : Fin 2 → ℂ) :
    ContinuousOn (deriv (shiftPsi q)) {μ : ℂ | (q, μ) ∈ shiftXi} := by
  have hd : DifferentiableOn ℂ (shiftPsi q) {μ : ℂ | (q, μ) ∈ shiftXi} :=
    fun μ hμ => (differentiableAt_shiftPsi hμ).differentiableWithinAt
  exact (hd.analyticOnNhd (isOpen_slice q)).deriv.continuousOn

/-! ### Principal square roots on `Re > 0` -/

private theorem re_cpow_half_pos {z : ℂ} (hz : 0 < z.re) : 0 < (z ^ (1 / 2 : ℂ)).re := by
  have hz0 : z ≠ 0 := fun h => by simp [h] at hz
  rw [Complex.cpow_def_of_ne_zero hz0, Complex.exp_re]
  apply mul_pos (Real.exp_pos _)
  apply Real.cos_pos_of_mem_Ioo
  have := abs_lt.mp (Complex.abs_arg_lt_pi_div_two_iff.mpr (Or.inl hz))
  simp only [Complex.mul_im, Complex.log_im, Complex.log_re]
  constructor <;> norm_num <;> linarith [this.1, this.2]

private theorem cpow_half_sq (z : ℂ) : (z ^ (1 / 2 : ℂ)) ^ 2 = z := by
  simp [one_div]

private theorem cpow_neg_half (z : ℂ) : z ^ (-(1 / 2 : ℂ)) = (z ^ (1 / 2 : ℂ))⁻¹ :=
  Complex.cpow_neg _ _

private theorem cpow_neg_three_half (z : ℂ) :
    z ^ (-(3 / 2 : ℂ)) = ((z ^ (1 / 2 : ℂ)) ^ 3)⁻¹ := by
  rw [Complex.cpow_neg, show (3 / 2 : ℂ) = ((3 : ℕ) : ℂ) * (1 / 2) by norm_num,
    Complex.cpow_nat_mul]

private theorem cpow_half_ne_zero {z : ℂ} (hz : 0 < z.re) : z ^ (1 / 2 : ℂ) ≠ 0 :=
  fun h => by have := re_cpow_half_pos hz; rw [h] at this; simp at this

/-! ### The derivative at `μ = 0` -/

private theorem hasDerivAt_shiftPsi_zero {q : Fin 2 → ℂ} (hx : (q, (0 : ℂ)) ∈ shiftXi) :
    HasDerivAt (shiftPsi q)
      (-(shiftW q) - q 0 * vtheta q ^ (-(3 / 2 : ℂ)) + vtheta (q - e0) ^ (-(1 / 2 : ℂ))) 0 := by
  obtain ⟨h1, h2, h3⟩ := hx
  simp only [zero_smul, add_zero, sub_zero, one_smul] at h1 h2 h3
  have hU : HasDerivAt (fun μ : ℂ => vtheta (q + μ • e0)) (2 * q 0) 0 := by
    have hfun : (fun μ : ℂ => vtheta (q + μ • e0)) = fun μ => (q 0 + μ) ^ 2 + q 1 ^ 2 := by
      funext μ; simp [vtheta, e0]
    rw [hfun]
    have := (((hasDerivAt_id (0 : ℂ)).const_add (q 0)).pow 2).add_const (q 1 ^ 2)
    simpa using this
  have hA := hU.cpow_const (c := -(1 / 2 : ℂ)) (by simpa using slit_of_re_pos h2)
  have hB := (((differentiable_vtheta_sub q) 0).cpow_const (c := -(1 / 2 : ℂ))
    (by simpa using slit_of_re_pos h3)).hasDerivAt
  have hΨ := (((hasDerivAt_const (0 : ℂ) (1 : ℂ)).sub (hasDerivAt_id (0 : ℂ))).mul hA).add
    ((hasDerivAt_id (0 : ℂ)).mul hB)
  have hexp : (-(1 / 2 : ℂ) - 1) = -(3 / 2 : ℂ) := by norm_num
  refine hΨ.congr_deriv ?_
  simp only [Pi.sub_apply, id, zero_smul, add_zero, sub_zero, one_smul, hexp, shiftW]
  ring

theorem shift_value_zero {q : Fin 2 → ℂ} (hq : (q, (0 : ℂ)) ∈ shiftXi) :
    shiftF q 0 = shiftW q + q 0 * vtheta q ^ (-(3 / 2 : ℂ)) - vtheta (q - e0) ^ (-(1 / 2 : ℂ)) := by
  unfold shiftF
  rw [dslope_same, (hasDerivAt_shiftPsi_zero hq).deriv]
  ring

theorem shift_mul_eq {rmin ρmax ε₀ : ℝ} (h : ShiftConst rmin ρmax ε₀) {q : Fin 2 → ℂ}
    (hq : q ∈ shiftO rmin ρmax ε₀) {μ : ℂ} (hμ : ‖μ‖ < ε₀ / 2) :
    μ * shiftF q μ = shiftW q - shiftPsi q μ := by
  have _ := And.intro h (And.intro hq hμ)
  have h1 := sub_smul_dslope (shiftPsi q) 0 μ
  have h0 : shiftPsi q 0 = shiftW q := by simp [shiftPsi, shiftW]
  unfold shiftF
  simp only [smul_eq_mul, sub_zero] at h1
  rw [h0] at h1
  linear_combination (-1 : ℂ) * h1

/-! ### The rationalised difference quotient and joint holomorphy -/

/-- `f(q, μ)` written without the removable singularity:
`(2 q₀ + μ) / (s_u s_v (s_u + s_v)) + ϑ(q + μ𝐞)^{-1/2} - ϑ(q - (1-μ)𝐞)^{-1/2}`, where
`s_u = ϑ(q + μ𝐞)^{1/2}` and `s_v = ϑ(q)^{1/2}`. -/
private def shiftFt (q : Fin 2 → ℂ) (μ : ℂ) : ℂ :=
  (2 * q 0 + μ) / (vtheta (q + μ • e0) ^ (1 / 2 : ℂ) * vtheta q ^ (1 / 2 : ℂ) *
      (vtheta (q + μ • e0) ^ (1 / 2 : ℂ) + vtheta q ^ (1 / 2 : ℂ))) +
    vtheta (q + μ • e0) ^ (-(1 / 2 : ℂ)) - vtheta (q - (1 - μ) • e0) ^ (-(1 / 2 : ℂ))

private theorem alg_identity {a b t μ s : ℂ} (ha : a ≠ 0) (hb : b ≠ 0) (hab : a + b ≠ 0)
    (hμ : μ ≠ 0) (h : a ^ 2 - b ^ 2 = μ * s) :
    -(((1 - μ) * a⁻¹ + μ * t) - b⁻¹) / μ = s / (a * b * (a + b)) + a⁻¹ - t := by
  field_simp
  linear_combination h

private theorem shiftF_eq_shiftFt_of_ne {q : Fin 2 → ℂ} {μ : ℂ} (hx : (q, μ) ∈ shiftXi)
    (hμ : μ ≠ 0) : shiftF q μ = shiftFt q μ := by
  obtain ⟨h1, h2, h3⟩ := hx
  have ha := cpow_half_ne_zero h2
  have hb := cpow_half_ne_zero h1
  have hab : vtheta (q + μ • e0) ^ (1 / 2 : ℂ) + vtheta q ^ (1 / 2 : ℂ) ≠ 0 := fun h => by
    have := congrArg Complex.re h
    have h5 := re_cpow_half_pos h1
    have h6 := re_cpow_half_pos h2
    simp only [Complex.add_re, Complex.zero_re] at this
    linarith
  have hΨ0 : shiftPsi q 0 = (vtheta q ^ (1 / 2 : ℂ))⁻¹ := by
    have : shiftPsi q 0 = vtheta q ^ (-(1 / 2 : ℂ)) := by simp [shiftPsi]
    rw [this, cpow_neg_half]
  have hsq : (vtheta (q + μ • e0) ^ (1 / 2 : ℂ)) ^ 2 - (vtheta q ^ (1 / 2 : ℂ)) ^ 2 =
      μ * (2 * q 0 + μ) := by
    rw [cpow_half_sq, cpow_half_sq]
    simp only [vtheta, Pi.add_apply, Pi.smul_apply, smul_eq_mul, e0]
    simp
    ring
  unfold shiftF shiftFt
  rw [dslope_of_ne _ hμ, slope_def_field, sub_zero, hΨ0]
  have := alg_identity (t := vtheta (q - (1 - μ) • e0) ^ (-(1 / 2 : ℂ))) ha hb hab hμ hsq
  rw [cpow_neg_half, cpow_neg_half] at *
  simp only [shiftPsi, cpow_neg_half] at *
  convert this using 2
  ring

private theorem shiftF_eq_shiftFt_zero {q : Fin 2 → ℂ} (hx : (q, (0 : ℂ)) ∈ shiftXi) :
    shiftF q 0 = shiftFt q 0 := by
  have h1 : 0 < (vtheta q).re := hx.1
  have hb := cpow_half_ne_zero h1
  rw [shift_value_zero hx]
  unfold shiftFt shiftW
  simp only [zero_smul, add_zero, sub_zero, one_smul, add_zero, cpow_neg_three_half, cpow_neg_half]
  field_simp
  ring

private theorem shiftF_eq_shiftFt {q : Fin 2 → ℂ} {μ : ℂ} (hx : (q, μ) ∈ shiftXi) :
    shiftF q μ = shiftFt q μ := by
  by_cases hμ : μ = 0
  · subst hμ; exact shiftF_eq_shiftFt_zero hx
  · exact shiftF_eq_shiftFt_of_ne hx hμ

private theorem differentiableAt_shiftFt {x : (Fin 2 → ℂ) × ℂ} (hx : x ∈ shiftXi) :
    DifferentiableAt ℂ (fun y : (Fin 2 → ℂ) × ℂ => shiftFt y.1 y.2) x := by
  obtain ⟨h1, h2, h3⟩ := hx
  have dV : Differentiable ℂ fun y : (Fin 2 → ℂ) × ℂ => vtheta y.1 :=
    differentiable_vtheta.comp (by fun_prop)
  have dU : Differentiable ℂ fun y : (Fin 2 → ℂ) × ℂ => vtheta (y.1 + y.2 • e0) :=
    differentiable_vtheta.comp (by fun_prop)
  have dT : Differentiable ℂ fun y : (Fin 2 → ℂ) × ℂ => vtheta (y.1 - (1 - y.2) • e0) :=
    differentiable_vtheta.comp (by fun_prop)
  have sU : DifferentiableAt ℂ (fun y : (Fin 2 → ℂ) × ℂ => vtheta (y.1 + y.2 • e0) ^ (1 / 2 : ℂ)) x :=
    (dU x).cpow_const (slit_of_re_pos h2)
  have sV : DifferentiableAt ℂ (fun y : (Fin 2 → ℂ) × ℂ => vtheta y.1 ^ (1 / 2 : ℂ)) x :=
    (dV x).cpow_const (slit_of_re_pos h1)
  have aU : DifferentiableAt ℂ
      (fun y : (Fin 2 → ℂ) × ℂ => vtheta (y.1 + y.2 • e0) ^ (-(1 / 2 : ℂ))) x :=
    (dU x).cpow_const (slit_of_re_pos h2)
  have aT : DifferentiableAt ℂ
      (fun y : (Fin 2 → ℂ) × ℂ => vtheta (y.1 - (1 - y.2) • e0) ^ (-(1 / 2 : ℂ))) x :=
    (dT x).cpow_const (slit_of_re_pos h3)
  have hab : vtheta (x.1 + x.2 • e0) ^ (1 / 2 : ℂ) + vtheta x.1 ^ (1 / 2 : ℂ) ≠ 0 := fun h => by
    have := congrArg Complex.re h
    have h5 := re_cpow_half_pos h1
    have h6 := re_cpow_half_pos h2
    simp only [Complex.add_re, Complex.zero_re] at this
    linarith
  have hden : vtheta (x.1 + x.2 • e0) ^ (1 / 2 : ℂ) * vtheta x.1 ^ (1 / 2 : ℂ) *
      (vtheta (x.1 + x.2 • e0) ^ (1 / 2 : ℂ) + vtheta x.1 ^ (1 / 2 : ℂ)) ≠ 0 :=
    mul_ne_zero (mul_ne_zero (cpow_half_ne_zero h2) (cpow_half_ne_zero h1)) hab
  have hnum : DifferentiableAt ℂ (fun y : (Fin 2 → ℂ) × ℂ => 2 * y.1 0 + y.2) x := by fun_prop
  have hD : DifferentiableAt ℂ (fun y : (Fin 2 → ℂ) × ℂ =>
      vtheta (y.1 + y.2 • e0) ^ (1 / 2 : ℂ) * vtheta y.1 ^ (1 / 2 : ℂ) *
        (vtheta (y.1 + y.2 • e0) ^ (1 / 2 : ℂ) + vtheta y.1 ^ (1 / 2 : ℂ))) x :=
    (sU.mul sV).mul (sU.add sV)
  have hdiv : DifferentiableAt ℂ (fun y : (Fin 2 → ℂ) × ℂ =>
      (2 * y.1 0 + y.2) * (vtheta (y.1 + y.2 • e0) ^ (1 / 2 : ℂ) * vtheta y.1 ^ (1 / 2 : ℂ) *
        (vtheta (y.1 + y.2 • e0) ^ (1 / 2 : ℂ) + vtheta y.1 ^ (1 / 2 : ℂ)))⁻¹) x :=
    hnum.mul (hD.fun_inv hden)
  unfold shiftFt
  simp only [div_eq_mul_inv]
  exact (hdiv.add aU).sub aT

theorem shift_holomorphic {rmin ρmax ε₀ : ℝ} (h : ShiftConst rmin ρmax ε₀) :
    DifferentiableOn ℂ (fun x : (Fin 2 → ℂ) × ℂ => shiftF x.1 x.2)
      (shiftO rmin ρmax ε₀ ×ˢ ball (0 : ℂ) (ε₀ / 2)) := by
  have hmem : ∀ x ∈ shiftO rmin ρmax ε₀ ×ˢ ball (0 : ℂ) (ε₀ / 2), x ∈ shiftXi := fun x hx =>
    (shift_domain h hx.1 (by simpa using (mem_ball_zero_iff.mp hx.2).le)).1
  have hF : DifferentiableOn ℂ (fun x : (Fin 2 → ℂ) × ℂ => shiftFt x.1 x.2)
      (shiftO rmin ρmax ε₀ ×ˢ ball (0 : ℂ) (ε₀ / 2)) :=
    fun x hx => (differentiableAt_shiftFt (hmem x hx)).differentiableWithinAt
  exact hF.congr (fun x hx => shiftF_eq_shiftFt (hmem x hx))

end Shift

end KAM.Iso

end
