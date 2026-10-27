/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
-- FROZEN_ANCHOR_PREFIX_BEGIN
module

public import Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries
public import Mathlib.Analysis.Calculus.Deriv.Basic
public import Mathlib.Analysis.SpecialFunctions.Pow.Real
public import Mathlib.Analysis.SpecialFunctions.Sqrt
public import KAM.Frozen.Defs.TorsionAverage
public import KAM.Frozen.Defs.InvarianceError
public import KAM.Frozen.Defs.IsDiophantine
public import KAM.Frozen.Defs.IsPrimaryOnStrip
public import KAM.Frozen.Defs.IsRealOnReals
public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.FrequencyMap
public import KAM.Frozen.Defs.RealHamiltonian
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Iso.Defs.KeplerBorder
import KAM.Provider.Iso.KeplerBorderedDet

/-!
# Frozen theorem `KAM.Iso.kepler_bordered_det`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor. Only the
proof body between the markers may change, and only to `by exact
KAM.Provider.Iso.kepler_bordered_det` when the provider `KAM.Provider.Iso.KeplerBorderedDet` is
complete (sealing).
-/

@[expose] public section

open MeasureTheory

namespace KAM.Iso

/-- I-KEPLER: the classical isoenergetic determinant, Chierchia (2005), p. 17,
with arbitrary positive Kepler and rotation constants. No Hessian invertibility is assumed. -/
theorem kepler_bordered_det {κ Ω : ℝ} (hκ : 0 < κ) (hΩ : 0 < Ω)
    (L : {L : ℝ // 0 < L}) :
    (keplerBorder κ Ω L).det = 3 * κ * Ω ^ 2 / L.val ^ 4 ∧
      0 < (keplerBorder κ Ω L).det :=
  -- FROZEN_ANCHOR_PROOF_BEGIN
  by exact KAM.Provider.Iso.kepler_bordered_det hκ hΩ L
  -- FROZEN_ANCHOR_PROOF_END
-- FROZEN_ANCHOR_SUFFIX_BEGIN

end KAM.Iso

end
-- FROZEN_ANCHOR_SUFFIX_END
