/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Analysis.Analytic.Basic
public import Mathlib.Analysis.Calculus.Deriv.Basic
public import Mathlib.Analysis.Calculus.FDeriv.Basic
public import KAM.Frozen.Defs.SymplecticForm
public import KAM.Frozen.Defs.HamiltonianVectorField

/-!
# Frozen definition `KAM.IsInvariantLagrangianTorus`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: ruling Q3; HL19 (2.1), (2.3), Rem.
2.2–2.3. This file is frozen: its bytes are hashed in `manifest/frozen-anchors.json`, and any change
needs an owner-approved versioned successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- `K : ℝⁿ → ℝⁿ × ℝⁿ` parameterizes an invariant torus of `H` with frequency `ω`: a real-analytic
primary torus (`K(θ + k) = K(θ) + (k, 0)`), embedded (injective modulo `ℤⁿ`, immersive), Lagrangian,
and carrying the linear flow: `t ↦ K(θ + tω)` solves Hamilton's equations for every `θ`. -/
def IsInvariantLagrangianTorus {n : ℕ} (H : (Fin n → ℝ) × (Fin n → ℝ) → ℝ) (ω : Fin n → ℝ)
    (K : (Fin n → ℝ) → (Fin n → ℝ) × (Fin n → ℝ)) : Prop :=
  AnalyticOnNhd ℝ K Set.univ ∧
  (∀ (θ : Fin n → ℝ) (k : Fin n → ℤ),
    K (θ + (fun i => (k i : ℝ))) = K θ + (fun i => (k i : ℝ), 0)) ∧
  (∀ (θ θ' : Fin n → ℝ) (k : Fin n → ℤ),
    K θ' = K θ + (fun i => (k i : ℝ), 0) → θ' = θ + (fun i => (k i : ℝ))) ∧
  (∀ θ, Function.Injective (fderiv ℝ K θ)) ∧
  (∀ θ u v, symplecticForm (fderiv ℝ K θ u) (fderiv ℝ K θ v) = 0) ∧
  (∀ (θ : Fin n → ℝ) (t : ℝ),
    HasDerivAt (fun s : ℝ => K (θ + s • ω)) (hamiltonianVectorField H (K (θ + t • ω))) t)

end KAM

end
