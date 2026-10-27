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
public import KAM.Frozen.Nekhoroshev.Defs.RealPart
public import KAM.Frozen.Nekhoroshev.Defs.IsStrictlyQuasiConvex
import KAM.Provider.Nekhoroshev.QuasiConvexIsoenergeticDerivative

/-!
# Frozen theorem `KAM.Nekhoroshev.quasiConvex_isoenergetic_derivative`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor. Only the
proof body between the markers may change, and only to `by exact
KAM.Provider.Nekhoroshev.quasiConvex_isoenergetic_derivative` when the provider
`KAM.Provider.Nekhoroshev.QuasiConvexIsoenergeticDerivative` is complete (sealing).
-/

@[expose] public section

namespace KAM.Nekhoroshev

/-- N-QC: the nonsingular derivative underlying BM Lemma 3.3, pp. 9--10.
Only the pointwise assertion is selected; no uniform inverse radius is asserted. -/
theorem quasiConvex_isoenergetic_derivative {n : ℕ}
    {U : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ} {m : ℝ}
    (hqc : IsStrictlyQuasiConvex U h m)
    {I : Fin n → ℝ} (hI : I ∈ U) {lam : ℝ} (hlam : 0 < lam) :
    Function.Bijective
      (fderiv ℝ (fun p : (Fin n → ℝ) × ℝ =>
        (realPart h p.1, p.2 • KAM.frequencyMap h p.1)) (I, lam)) :=
  -- FROZEN_ANCHOR_PROOF_BEGIN
  by sorry
  -- FROZEN_ANCHOR_PROOF_END
-- FROZEN_ANCHOR_SUFFIX_BEGIN

end KAM.Nekhoroshev

end
-- FROZEN_ANCHOR_SUFFIX_END
