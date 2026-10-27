/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Analytic.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
public import Mathlib.MeasureTheory.Measure.Prod
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.MeasureTheory.Integral.IntegrableOn
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import KAM.Frozen.Defs.IsDiophantine
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Defs.SymplecticForm
public import KAM.Frozen.Planetary.Defs.Phase
public import KAM.Frozen.Planetary.Defs.Assemble
public import KAM.Frozen.Planetary.Defs.SecularAverage
public import KAM.Frozen.Planetary.Defs.OscillatorAction

/-!
# Frozen definition `KAM.Planetary.HasSecularBirkhoffForm`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- CP10 (A2''): literal averaged expansion, integrability and little-o remainder.
The integral and epsilon-delta clauses use oscillator discs, matching cylinder (audit P1).
The latter includes zero, so the jet value is also fixed there. -/
def HasSecularBirkhoffForm {a b : ℕ} (P : ℝ → Phase (a + b) → ℝ)
    (V : Set (Fin a → ℝ)) (r0 mu0 : ℝ)
    (P0 : ℝ → (Fin a → ℝ) → ℝ)
    (Omega : ℝ → (Fin a → ℝ) → (Fin b → ℝ))
    (beta : ℝ → (Fin a → ℝ) → Matrix (Fin b) (Fin b) ℝ) : Prop :=
  ∀ mu ∈ Set.Icc 0 mu0, ∀ I ∈ V,
    (∀ p q : Fin b → ℝ, (∀ j, p j ^ 2 + q j ^ 2 < r0 ^ 2) →
      IntegrableOn (fun phi => P mu (assemble I phi p q))
        (Set.pi Set.univ (fun _ : Fin a => Set.Icc 0 (2 * Real.pi)))) ∧
    (∀ eps : ℝ, 0 < eps → ∃ delta : ℝ, 0 < delta ∧ delta ≤ r0 ∧
      ∀ p q : Fin b → ℝ, (∀ j, p j ^ 2 + q j ^ 2 < delta ^ 2) →
        |secularAverage P mu I p q - (P0 mu I +
          (∑ j, Omega mu I j * oscillatorAction p q j) +
          (1 / 2 : ℝ) * (∑ i, ∑ j,
            beta mu I i j * oscillatorAction p q i * oscillatorAction p q j))| ≤
          eps * ‖(p, q)‖ ^ 4)

end KAM.Planetary

end
