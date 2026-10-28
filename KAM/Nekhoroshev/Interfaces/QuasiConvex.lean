/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Nekhoroshev.Defs.IsStrictlyQuasiConvex
public import KAM.Nekhoroshev.Interfaces.ConicCoercive
public import KAM.Nekhoroshev.Interfaces.Hessian

/-!
# Quantified quasi-convexity (`bpN:p1:qc-convert`)

From the frozen max-norm quasi-convexity `IsStrictlyQuasiConvex` with constant `m`, a complex
Hessian bound `M_ℂ` and the frequency lower bound `ω_min`, Pöschel's quantified conditions on
`B(0, R)` with the explicit constants `qcQ qcB qcMu qcEll` of `Interfaces/Setting`: (a) the
Hessian bound `B_c` and coercivity `q` on `ω^⊥`, (b) the cone estimate `μ` for `|ω·ξ| ≤ ℓ|ξ|`
(from `conic_coercive`), (c) the comparison of the frequency norms.

The scaling sentence for `h̃` is `qc_convert_tilde` in `Interfaces/Period`.
-/

@[expose] public noncomputable section

open Set Metric

namespace KAM.Nekhoroshev

variable {n : ℕ}

/-- `bpN:p1:qc-convert` (a)-(c): Pöschel's quantified quasi-convexity on `B(0,R)`. -/
theorem qc_convert (hn : 1 ≤ n) {R s m Mc wmin : ℝ} {h : (Fin n → ℂ) → ℂ} (hR : 0 < R) (hs : 0 < s)
    (hm : 0 < m) (hMc : 0 < Mc) (hω : 0 < wmin) (hh : IsAnalyticIntegrable R s h)
    (hH : HasComplexHessianBound R s h Mc)
    (hQC : IsStrictlyQuasiConvex (realActionDomain n R s) h m)
    (hmin : ∀ I ∈ actionBall n R, wmin ≤ ‖KAM.frequencyMap h I‖) :
    ∀ I ∈ actionBall n R,
      ((∀ x y, |fderiv ℝ (fderiv ℝ (realPart h)) I x y| ≤ qcB n m Mc * euclid x * euclid y) ∧
        (∀ v, ∑ i, KAM.frequencyMap h I i * v i = 0 →
          qcQ n m * euclid v ^ 2 ≤ fderiv ℝ (fderiv ℝ (realPart h)) I v v)) ∧
      (∀ ξ, |∑ i, KAM.frequencyMap h I i * ξ i| ≤ qcEll n m Mc wmin * euclid ξ →
        qcMu n m * euclid ξ ^ 2 ≤ fderiv ℝ (fderiv ℝ (realPart h)) I ξ ξ) ∧
      (wmin ≤ ‖KAM.frequencyMap h I‖ ∧ ‖KAM.frequencyMap h I‖ ≤ euclid (KAM.frequencyMap h I) ∧
        euclid (KAM.frequencyMap h I) ≤ Real.sqrt n * ‖KAM.frequencyMap h I‖) := by
  intro I hI
  have hIR : I ∈ realActionDomain n R s := ball_subset_realActionDomain hR hs hI
  have hn0 : (0 : ℝ) < n := by exact_mod_cast hn
  have hq : 0 < qcQ n m := div_pos hm hn0
  have hB : 0 < qcB n m Mc := by
    unfold qcB
    have : 0 < (n : ℝ) * Mc := mul_pos hn0 hMc
    linarith
  obtain ⟨-, -, -, hQ1⟩ := hQC
  obtain ⟨hfr, hcoer⟩ := hQ1 I hIR
  have hbound : ∀ x y, |fderiv ℝ (fderiv ℝ (realPart h)) I x y| ≤
      qcB n m Mc * euclid x * euclid y := by
    intro x y
    refine ((hessian_convert hR hs hh hH).2 I hIR x y).trans ?_
    unfold qcB
    have h1 : 0 ≤ euclid x * euclid y := mul_nonneg (Real.sqrt_nonneg _) (Real.sqrt_nonneg _)
    nlinarith [mul_nonneg hq.le h1]
  have hcoer' : ∀ v, ∑ i, KAM.frequencyMap h I i * v i = 0 →
      qcQ n m * euclid v ^ 2 ≤ fderiv ℝ (fderiv ℝ (realPart h)) I v v := by
    intro v hv
    refine le_trans ?_ (hcoer v hv)
    have h1 := (norm_le_euclid v).2.2
    unfold qcQ
    rw [div_mul_eq_mul_div, div_le_iff₀ hn0]
    nlinarith
  refine ⟨⟨hbound, hcoer'⟩, fun ξ hξ => ?_, ?_⟩
  · have hF : wmin ≤ euclid (KAM.frequencyMap h I) :=
      (hmin I hI).trans (norm_le_euclid _).1
    have hl0 : 0 ≤ qcEll n m Mc wmin := by
      unfold qcEll
      have := hq.le
      have := hB.le
      positivity
    have hl : qcEll n m Mc wmin ≤
        euclid (KAM.frequencyMap h I) * qcQ n m / (8 * (qcB n m Mc + qcQ n m)) := by
      unfold qcEll
      gcongr
    have := conic_coercive hn hB hq (fderiv ℝ (fderiv ℝ (realPart h)) I) hbound hfr hcoer' hl0 hl
      ξ hξ
    refine le_trans ?_ this
    unfold qcMu
    have := sq_nonneg (euclid ξ)
    nlinarith
  · exact ⟨hmin I hI, (norm_le_euclid _).1, (norm_le_euclid _).2.1⟩

end KAM.Nekhoroshev

end
