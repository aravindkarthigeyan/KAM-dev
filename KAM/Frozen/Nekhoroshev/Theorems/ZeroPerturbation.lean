/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
-- FROZEN_ANCHOR_PREFIX_BEGIN
module

public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Defs.RealHamiltonian
public import Mathlib.Analysis.Calculus.ContDiff.Defs
public import Mathlib.Analysis.Calculus.Deriv.Basic
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import KAM.Frozen.Nekhoroshev.Defs.ActionBall
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticIntegrable
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticPerturbation
public import KAM.Frozen.Nekhoroshev.Defs.IsSolutionOn
public import KAM.Frozen.Nekhoroshev.Defs.IntegrableOrbit
import KAM.Provider.Nekhoroshev.ZeroPerturbation

/-!
# Frozen theorem `KAM.Nekhoroshev.zero_perturbation`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor. Only the
proof body between the markers may change, and only to `by exact
KAM.Provider.Nekhoroshev.zero_perturbation` when the provider
`KAM.Provider.Nekhoroshev.ZeroPerturbation` is complete (sealing).
-/

@[expose] public section

namespace KAM.Nekhoroshev

/-- N-ZERO: exact all-time integrable dynamics. This is our explicit zero-perturbation
supplement to BM Theorem 2.1 p. 5, whose printed strict bound excludes `ε = 0`. -/
theorem zero_perturbation {n : ℕ} {R s : ℝ}
    (hR : 0 < R) (hs : 0 < s) {h : (Fin n → ℂ) → ℂ}
    (hh : IsAnalyticIntegrable R s h)
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hf : IsAnalyticPerturbation R s 0 f) (θ₀ I₀ : Fin n → ℝ)
    (hI : I₀ ∈ actionBall n (R / 2)) :
    integrableOrbit h θ₀ I₀ 0 = (θ₀, I₀) ∧
    IsSolutionOn (KAM.realHamiltonian h f) (actionBall n R) Set.univ
      (integrableOrbit h θ₀ I₀) ∧
    ∀ t : ℝ, (integrableOrbit h θ₀ I₀ t).2 = I₀ :=
  -- FROZEN_ANCHOR_PROOF_BEGIN
  by exact KAM.Provider.Nekhoroshev.zero_perturbation hR hs hh hf θ₀ I₀ hI
  -- FROZEN_ANCHOR_PROOF_END
-- FROZEN_ANCHOR_SUFFIX_BEGIN

end KAM.Nekhoroshev

end
-- FROZEN_ANCHOR_SUFFIX_END
