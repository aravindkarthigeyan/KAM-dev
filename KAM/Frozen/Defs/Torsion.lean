/-
Copyright (c) 2026 Scott Armstrong. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong
-/
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Calculus.FDeriv.Basic
public import KAM.Frozen.Defs.NormalFrame
public import KAM.Frozen.Defs.DotC
public import KAM.Frozen.Defs.OmegaZero
public import KAM.Frozen.Defs.HamiltonianVectorFieldC

/-!
# Frozen definition `KAM.torsion`

Owner-approved on 2026-10-27 (statement draft v0.2). Source: HL19 (3.6), (3.7). This file is frozen:
its bytes are hashed in `manifest/frozen-anchors.json`, and any change needs an owner-approved
versioned successor.
-/

@[expose] public noncomputable section

namespace KAM

/-- The torsion matrix `T(θ) = N(θ)ᵀ Ω₀ X_N(θ)`, with `X_N = DX_h(K) N - DN[ω]`
(HL19 (3.6), (3.7)). -/
def torsion {n : ℕ} (h : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)) (ω : Fin n → ℝ) (θ : Fin n → ℂ) :
    Matrix (Fin n) (Fin n) ℂ :=
  fun i j => dotℂ (normalFrame K θ i) (omegaZero
    (fderiv ℂ (hamiltonianVectorFieldℂ h) (K θ) (normalFrame K θ j) -
      fderiv ℂ (fun θ' => normalFrame K θ' j) θ (fun l => (ω l : ℂ))))

end KAM

end
