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
public import KAM.Frozen.Iso.Defs.Radius
public import KAM.Frozen.Iso.Defs.Primary1
public import KAM.Frozen.Iso.Defs.Primary2
public import KAM.Frozen.Iso.Defs.IsRestrictedSolutionOn
public import KAM.Frozen.Iso.Defs.NearCircular
import KAM.Provider.Iso.RestrictedNearCircular

/-!
# Frozen theorem `KAM.Iso.restricted_near_circular`

Owner-approved on 2026-10-27 (decision D20). This file is frozen: it is hashed in
`manifest/frozen-anchors.json`; any change needs an owner-approved versioned successor. Only the
proof body between the markers may change, and only to `by exact
KAM.Provider.Iso.restricted_near_circular` when the provider
`KAM.Provider.Iso.RestrictedNearCircular` is complete (sealing).
-/

@[expose] public section

open MeasureTheory

namespace KAM.Iso

/-- I-R3BP: an open four-dimensional near-circular region, all of whose actual restricted
three-body solutions are global, bounded and uniformly separated from both primaries.
Derived application; not the numerical Victoria theorem of Celletti--Chierchia. -/
theorem restricted_near_circular
    {aMinus aPlus eMinus ePlus : ℝ}
    (ha : 0 < aMinus) (haa : aMinus < aPlus)
    (he : 0 < eMinus) (hee : eMinus < ePlus) (heSmall : ePlus < 1 / 4)
    (hinner : aPlus * (1 + ePlus) < 1) :
    IsOpen (NearCircular aMinus aPlus eMinus ePlus) ∧
    (NearCircular aMinus aPlus eMinus ePlus).Nonempty ∧
    ∃ μ₀ d R : ℝ, 0 < μ₀ ∧ μ₀ ≤ 1 / 2 ∧ 0 < d ∧ 0 < R ∧
      ∀ μ : ℝ, 0 ≤ μ → μ < μ₀ →
        ∀ z₀ ∈ NearCircular aMinus aPlus eMinus ePlus,
        ∃ z : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ),
          z 0 = z₀ ∧ IsRestrictedSolutionOn μ Set.univ z ∧
          (∀ t : ℝ, d ≤ radius ((z t).1 - primary₁ μ) ∧
            d ≤ radius ((z t).1 - primary₂ μ) ∧
            radius ((z t).1) ≤ R ∧ radius ((z t).2) ≤ R) ∧
          ∀ (a b : ℝ) (y : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)),
            a < 0 → 0 < b → y 0 = z₀ → IsRestrictedSolutionOn μ (Set.Ioo a b) y →
            ∀ t ∈ Set.Ioo a b, y t = z t :=
  -- FROZEN_ANCHOR_PROOF_BEGIN
  by sorry
  -- FROZEN_ANCHOR_PROOF_END
-- FROZEN_ANCHOR_SUFFIX_BEGIN

end KAM.Iso

end
-- FROZEN_ANCHOR_SUFFIX_END
