/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Iso.Kepler

/-!
# Provider for the frozen theorem `KAM.Iso.kepler_bordered_det`

The proof of `KAM.Iso.kepler_bordered_det` is assembled here as
`KAM.Provider.Iso.kepler_bordered_det`, from graph predecessors and approved external inputs only.
While the frozen anchor is `DRAFT_SORRY`, this module is quarantined: no module other than the
anchor may import it.
-/

@[expose] public section

namespace KAM.Provider.Iso

theorem kepler_bordered_det {κ Ω : ℝ} (hκ : 0 < κ) (hΩ : 0 < Ω)
    (L : {L : ℝ // 0 < L}) :
    (KAM.Iso.keplerBorder κ Ω L).det = 3 * κ * Ω ^ 2 / L.val ^ 4 ∧
      0 < (KAM.Iso.keplerBorder κ Ω L).det :=
  ⟨KAM.Iso.keplerBorder_det κ Ω L, KAM.Iso.keplerBorder_det_pos hκ hΩ L⟩

end KAM.Provider.Iso

end
