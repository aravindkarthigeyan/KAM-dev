/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Planetary.Defs.MovingHamiltonian
public import KAM.Frozen.Planetary.Defs.BarycentricPositions
public import KAM.Frozen.Planetary.Defs.BarycentricVelocities
public import KAM.Frozen.Planetary.Defs.ActualMasses
public import KAM.Frozen.Planetary.Defs.PairBounds
public import KAM.Frozen.Planetary.Defs.NoCollision
public import KAM.Frozen.Planetary.Defs.SecularAverage
public import KAM.Frozen.Planetary.Defs.Fast
public import KAM.Frozen.Planetary.Defs.Slow
public import KAM.Frozen.Planetary.Defs.OscillatorAction
public import KAM.Frozen.Iso.Defs.IsHamiltonianSolutionOn
public import KAM.Frozen.Planetary.Defs.SecularGamma
public import KAM.Frozen.Planetary.Defs.LongitudeJacobian
public import KAM.Frozen.Planetary.Defs.EllipsePhase
public import KAM.Frozen.Planetary.Defs.SecularIntegrand
public import KAM.Frozen.Planetary.Defs.ExactSecularHamiltonian

/-!
# Frozen definition `KAM.Planetary.SecularRegular`

Owner-approved on 2026-10-27 (decision D25). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators

namespace KAM.Planetary

/-- Regular domain of the explicit chart and full interaction integral. All phases are safe.
These guards are established by the theorem from the input box. -/
def SecularRegular (m : Fin 2 → ℝ) (mu : ℝ) (w : Phase (2 + 2)) : Prop :=
  (∀ i, 0 < m i ∧ 0 < fast w.2 i ∧ 0 ≤ secularGamma w i ∧
    secularGamma w i < fast w.2 i) ∧
  (∀ F : Fin 2 → ℝ, (∀ i, 0 < longitudeJacobian w i (F i)) ∧
    NoCollision (ellipsePhase m w F).1) ∧
  IntegrableOn (fun F : Fin 2 → ℝ =>
    secularIntegrand m mu (assemble (fast w.2) F (slow w.2) (slow w.1)))
    (Set.pi Set.univ (fun _ : Fin 2 => Set.Icc 0 (2 * Real.pi))) ∧
  DifferentiableAt ℝ (exactSecularHamiltonian m mu) w

end KAM.Planetary

end
