/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Nekhoroshev.QuasiConvex

/-!
# Provider for the frozen theorem `KAM.Nekhoroshev.quasiConvex_isoenergetic_derivative`

The proof of `KAM.Nekhoroshev.quasiConvex_isoenergetic_derivative` is assembled here as
`KAM.Provider.Nekhoroshev.quasiConvex_isoenergetic_derivative`, from graph predecessors and approved
external inputs only. While the frozen anchor is `DRAFT_SORRY`, this module is quarantined: no
module other than the anchor may import it.
-/

@[expose] public section

namespace KAM.Provider.Nekhoroshev

open KAM.Nekhoroshev

theorem quasiConvex_isoenergetic_derivative {n : ℕ}
    {U : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ} {m : ℝ}
    (hqc : IsStrictlyQuasiConvex U h m)
    {I : Fin n → ℝ} (hI : I ∈ U) {lam : ℝ} (hlam : 0 < lam) :
    Function.Bijective
      (fderiv ℝ (fun p : (Fin n → ℝ) × ℝ =>
        (realPart h p.1, p.2 • KAM.frequencyMap h p.1)) (I, lam)) :=
  isoenergetic_bijective_of_qc hqc hI hlam

end KAM.Provider.Nekhoroshev

end
