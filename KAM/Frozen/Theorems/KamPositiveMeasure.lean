/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
-- FROZEN_ANCHOR_PREFIX_BEGIN
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Calculus.FDeriv.Basic
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Topology.MetricSpace.HausdorffDistance
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
public import Mathlib.MeasureTheory.Measure.Prod
public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Defs.FundamentalDomain
public import KAM.Frozen.Defs.KamCover
import KAM.Provider.KamPositiveMeasure

/-!
# Frozen theorem `KAM.kam_positive_measure`

Owner-approved on 2026-10-27 (statement draft v0.2). The statement is frozen and hashed in
`manifest/frozen-anchors.json`; only the proof body between the markers may change, and only
to `by exact KAM.Provider.kam_positive_measure` when the provider
`KAM.Provider.KamPositiveMeasure` is complete (sealing).
-/

@[expose] public section

open MeasureTheory

namespace KAM

/-- **HEAD.** Positive-measure KAM theorem with rate. -/
theorem kam_positive_measure {n : ℕ} (hn : 2 ≤ n) {τ : ℝ} (hτ : (n : ℝ) - 1 < τ)
    {s₀ r₀ : ℝ} (hs₀ : 0 < s₀) (hr₀ : 0 < r₀)
    {B : Set (Fin n → ℝ)} (hB_open : IsOpen B) (hB_bdd : Bornology.IsBounded B)
    (hB_layer : ∃ C_B : ℝ, ∀ δ : ℝ, 0 < δ →
      volume {I ∈ B | Metric.infDist I Bᶜ < δ} ≤ ENNReal.ofReal (C_B * δ))
    {h : (Fin n → ℂ) → ℂ} (hh : DifferentiableOn ℂ h (actionNbhd B r₀))
    (hh_real : ∀ I : Fin n → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
      (h fun i => (I i : ℂ)).im = 0)
    (h_nondeg : ∃ L : ℝ, ∀ I ∈ closure B, ∀ J ∈ closure B,
      ‖I - J‖ ≤ L * ‖frequencyMap h I - frequencyMap h J‖) :
    ∃ C ε₀ : ℝ, 0 < C ∧ 0 < ε₀ ∧
      ∀ (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (ε : ℝ),
        DifferentiableOn ℂ f (complexStrip n s₀ ×ˢ actionNbhd B r₀) →
        (∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ∀ k : Fin n → ℤ,
          f (z.1 + (fun i => (k i : ℂ)), z.2) = f z) →
        (∀ θ I : Fin n → ℝ,
          ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ))) ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀ →
          (f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
        (∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ‖f z‖ ≤ ε) → ε ≤ ε₀ →
        volume (fundamentalDomain B \
            kamCover h f B r₀ τ (C * Real.sqrt ε)) ≤
          ENNReal.ofReal (C * ε ^ ((1 : ℝ) / 4)) :=
  -- FROZEN_ANCHOR_PROOF_BEGIN
  by sorry
  -- FROZEN_ANCHOR_PROOF_END
-- FROZEN_ANCHOR_SUFFIX_BEGIN

end KAM

end
-- FROZEN_ANCHOR_SUFFIX_END
