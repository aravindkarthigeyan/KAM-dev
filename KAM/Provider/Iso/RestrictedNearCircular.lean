/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Iso.R3bp.Constants
public import KAM.Iso.R3bp.HeadData
public import KAM.Iso.R3bp.Uniqueness
import KAM.Frozen.Iso.Theorems.AllTimeConfinement

/-!
# Provider for the frozen theorem `KAM.Iso.restricted_near_circular`

The proof of `KAM.Iso.restricted_near_circular` is assembled here as
`KAM.Provider.Iso.restricted_near_circular`, from graph predecessors and approved external inputs
only. While the frozen anchor is `DRAFT_SORRY`, this module is quarantined: no module other than the
anchor may import it.

The proof consumes the SEALED frozen I-HEAD (`KAM.Iso.all_time_confinement`) once, at the data of
`r3bp_headData`, to obtain `ε_H`; everything else is `r3bp_core`, the openness and nonemptiness of
the region, and `restricted_unique`.
-/

public section

open KAM KAM.Kepler KAM.Iso KAM.Iso.R3bp

namespace KAM.Provider.Iso

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
            ∀ t ∈ Set.Ioo a b, y t = z t := by
  have hp : R3bpParams aMinus aPlus eMinus ePlus := ⟨ha, haa, he, hee, heSmall, hinner⟩
  have hd := r3bp_headData hp
  obtain ⟨εH, hεH, hHEAD⟩ := KAM.Iso.all_time_confinement (safeB aMinus aPlus eMinus ePlus)
    hd.isOpen hd.bounded hd.nonempty hd.hs hd.hr r3bpH hd.holo hd.real hd.iso
    (safeB' aMinus aPlus eMinus ePlus) hd.isOpen' hd.compact hd.inside hd.hη
  obtain ⟨μ₀, d, R, hμ₀, hμ₀h, hd0, hR0, hcore⟩ := r3bp_core hp hεH
  refine ⟨isOpen_nearCircular_region aMinus aPlus eMinus ePlus,
    nearCircular_nonempty hp.region, μ₀, d, R, hμ₀, hμ₀h, hd0, hR0, fun μ hμ0 hμ z₀ hz₀ => ?_⟩
  obtain ⟨⟨hpert, hsmall⟩, hex⟩ := hcore μ hμ0 hμ
  obtain ⟨w₀, hw₀B', hw₀, hrest⟩ := hex z₀ hz₀
  obtain ⟨zt, hzt0, hzt, -, -⟩ := hHEAD (tildeF (safeK aMinus aPlus eMinus ePlus) μ)
    (μ * exactCF (safeK aMinus aPlus eMinus ePlus)) hpert.holo hpert.periodic hpert.real
    hpert.nonneg hsmall hpert.bound w₀ hw₀B'
  obtain ⟨z, hz0, hzsol, hbounds⟩ := hrest zt hzt0 hzt
  exact ⟨z, hz0, hzsol, hbounds, fun a b y ha hb hy0 hy t ht =>
    restricted_unique μ ha hb (hy0.trans hz0.symm) hy hzsol t ht⟩

end KAM.Provider.Iso
