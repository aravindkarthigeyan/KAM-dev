/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Iso.Defs.KeplerBorder

/-!
# The Kepler bordered determinant

Blueprint `bpI:p6:det-formula`: `det (keplerBorder κ Ω L) = 3 κ Ω² / L⁴`, and `bpI:p6:kepler`:
this is positive for `κ, Ω > 0`.
-/

public section

namespace KAM.Iso

theorem keplerBorder_det (κ Ω : ℝ) (L : {L : ℝ // 0 < L}) :
    (keplerBorder κ Ω L).det = 3 * κ * Ω ^ 2 / L.val ^ 4 := by
  have hL : L.val ≠ 0 := L.2.ne'
  rw [Matrix.det_fin_three]
  simp only [keplerBorder, Matrix.of_apply, Matrix.cons_val', Matrix.cons_val_zero,
    Matrix.cons_val_one, Matrix.cons_val_two, Matrix.empty_val', Matrix.cons_val_fin_one,
    Matrix.head_cons, Matrix.tail_cons, Matrix.head_fin_const]
  field_simp
  ring

theorem keplerBorder_det_pos {κ Ω : ℝ} (hκ : 0 < κ) (hΩ : 0 < Ω)
    (L : {L : ℝ // 0 < L}) : 0 < (keplerBorder κ Ω L).det := by
  rw [keplerBorder_det]
  have := L.2
  positivity

end KAM.Iso
