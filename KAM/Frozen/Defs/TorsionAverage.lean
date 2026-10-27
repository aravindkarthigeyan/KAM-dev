/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
public import Mathlib.Analysis.Complex.Basic
public import KAM.Frozen.Defs.Torsion

/-!
# Frozen definition `KAM.torsionAverage`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 §2.1, H4. This file is frozen: its
bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an owner-approved versioned
successor.
-/

@[expose] public noncomputable section

open MeasureTheory

namespace KAM

/-- The average `⟨T⟩` of the torsion over the real torus `[0,1]ⁿ`. -/
def torsionAverage {n : ℕ} (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) : Matrix (Fin n) (Fin n) ℂ :=
  fun i j => ∫ θ in Set.pi Set.univ (fun _ : Fin n => Set.Icc (0 : ℝ) 1),
    torsion h K ω (fun l => (θ l : ℂ)) i j

end KAM

end
