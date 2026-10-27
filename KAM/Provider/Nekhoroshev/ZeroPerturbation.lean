/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Nekhoroshev.ZeroPerturbation

/-!
# Provider for the frozen theorem `KAM.Nekhoroshev.zero_perturbation`

The proof of `KAM.Nekhoroshev.zero_perturbation` is assembled here as
`KAM.Provider.Nekhoroshev.zero_perturbation`, from graph predecessors and approved external inputs
only. While the frozen anchor is `DRAFT_SORRY`, this module is quarantined: no module other than the
anchor may import it.
-/

@[expose] public section

namespace KAM.Provider.Nekhoroshev

open KAM.Nekhoroshev

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
  zero_perturbation_core hR hs hh hf θ₀ I₀ hI

end KAM.Provider.Nekhoroshev

end
