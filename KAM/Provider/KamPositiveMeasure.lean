/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Head.Defs
import KAM.Head.Frequency
import KAM.Head.Parameters
import KAM.Frozen.Theorems.AposterioriKam
import KAM.Frozen.Theorems.LocalUniquenessFlow
import KAM.Frozen.Theorems.VolumeNotDiophantineLe

/-!
# Provider for the frozen theorem `KAM.kam_positive_measure`

The proof of `KAM.kam_positive_measure` is assembled here as `KAM.Provider.kam_positive_measure`,
from graph predecessors and approved external inputs only. While the frozen anchor is `DRAFT_SORRY`,
this module is quarantined: no module other than the anchor may import it.

This file is the one place that may import the sealed frozen theorems `KAM.aposteriori_kam` (G1),
`KAM.local_uniqueness_flow` (G2) and `KAM.volume_not_diophantine_le` (G3) (design
`docs/campaign/design/PART4-LEAN-DESIGN.md`, sections 2.2 and 6).

* `KAM.Provider.exists_gValid` discharges the premise `KAM.Head.GValid` of the Part 4 modules: it
  produces the constants of G1 at the two tuples of Definition `bp:p4:parameters`, of G2 at
  `ρ = s/16`, and of G3 for `Ω = ∇h(B)`, together with their defining properties.
-/

public section

open MeasureTheory KAM.Head

namespace KAM.Provider

/-- The constants of the frozen G1 (two tuples), G2 and G3 exist for the data of HEAD. Lives in
`KAM/Provider/KamPositiveMeasure.lean` (the only module allowed to import the sealed anchors). -/
theorem exists_gValid {n : ℕ} {τ s₀ r₀ Lh : ℝ} {B : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ}
    (hD : Data τ s₀ r₀ B h Lh) : ∃ gc : GConsts, GValid τ s₀ r₀ B h Lh gc := by
  obtain ⟨⟨⟨hn, hτ⟩, ⟨h8, h84⟩, ⟨h16, h1632⟩, hM, hσK, hσB, hσT, hμ⟩, -⟩ := parameters hD
  obtain ⟨C11, C21, h11, h21, hb1⟩ :=
    KAM.aposteriori_kam hn hτ h8 h84 hM hσK hσB hσT hμ (one_pos : (0 : ℝ) < 1)
  obtain ⟨C12, C22, h12, h22, hb2⟩ :=
    KAM.aposteriori_kam hn hτ h16 h1632 hM hσK hσB hσT hμ (one_pos : (0 : ℝ) < 1)
  obtain ⟨cG, hcG, hb3⟩ := KAM.local_uniqueness_flow hn hτ h16 hM hσK hσB hσT hμ
  obtain ⟨C3, hC3⟩ := KAM.volume_not_diophantine_le hD.tau_gt (freq_map hD).2.2.2.2.2.2
  exact ⟨⟨C11, C21, C12, C22, cG, C3⟩, ⟨⟨h11, h21, h12, h22, hcG⟩, hb1, hb2, hb3, hC3⟩⟩

end KAM.Provider
