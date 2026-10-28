/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Iso.Confinement.Main
public import KAM.Iso.Charts.Tori
import KAM.Frozen.Iso.Theorems.IsoenergeticKam
import KAM.Frozen.Theorems.VolumeNotDiophantineLe

/-!
# Provider for the frozen theorem `KAM.Iso.all_time_confinement`

The proof of `KAM.Iso.all_time_confinement` is assembled here as
`KAM.Provider.Iso.all_time_confinement`, from graph predecessors and approved external inputs only.
While the frozen anchor is `DRAFT_SORRY`, this module is quarantined: no module other than the
anchor may import it.

The provider consumes the SEALED frozen I-G1 and G3 (`KAM.Iso.isoenergetic_kam`,
`KAM.volume_not_diophantine_le`) through `KAM.Iso.Charts.part3_tori_of`, and closes the gap of
`confinement_main_of_tori`. The binders of the frozen theorem are packed into `HeadData` and
`PerturbData` and unpacked again at the end.
-/

public section

open Set KAM KAM.Iso KAM.Iso.Confinement

namespace KAM.Iso.Confinement

variable {B : Set (Fin 2 → ℝ)} {s₀ r₀ : ℝ} {h : (Fin 2 → ℂ) → ℂ} {B' : Set (Fin 2 → ℝ)} {η : ℝ}

/-- Premise-free output of Part 3: I-G1 and G3 are instantiated by their sealed frozen anchors. -/
theorem part3_tori (hd : HeadData B s₀ r₀ h B' η) (hne : B'.Nonempty) :
    ∃ (η₁ F₁ : ℝ) (patches : Set (EnergyPatch (realPart h) B η₁)) (ε₁ C_K : ℝ),
      ChartCover B s₀ r₀ h B' η η₁ F₁ patches ∧ ToriExistence B s₀ r₀ h B' η₁ patches ε₁ C_K :=
  KAM.Iso.Charts.part3_tori_of hd hne @KAM.Iso.isoenergetic_kam @KAM.volume_not_diophantine_le

/-- The Part 5 theorem (internal form of I-HEAD): from `HeadData`, via `part3_tori` and
`confinement_main_of_tori`; `B' = ∅` is vacuous (`ε₀ = 1`). -/
theorem confinement_main (hd : HeadData B s₀ r₀ h B' η) :
    ∃ ε₀ : ℝ, 0 < ε₀ ∧
      ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ), PerturbData B s₀ r₀ f ε → ε < ε₀ →
        ∀ z₀ : P2, z₀.2 ∈ B' →
          ∃ z : ℝ → P2, z 0 = z₀ ∧
            KAM.Iso.IsHamiltonianSolutionOn (realHamiltonian h f) B univ z ∧
            (∀ t : ℝ, ‖(z t).2 - z₀.2‖ < η) ∧
            ∀ (a b : ℝ) (y : ℝ → P2), a < 0 → 0 < b → y 0 = z₀ →
              KAM.Iso.IsHamiltonianSolutionOn (realHamiltonian h f) B (Ioo a b) y →
              ∀ t ∈ Ioo a b, y t = z t := by
  by_cases hne : B'.Nonempty
  · obtain ⟨η₁, F₁, patches, ε₁, C_K, hcov, htor⟩ := part3_tori hd hne
    exact confinement_main_of_tori hd hne hcov htor
  · refine ⟨1, one_pos, fun f ε _ _ z₀ hz₀ => absurd ⟨z₀.2, hz₀⟩ hne⟩

end KAM.Iso.Confinement

namespace KAM.Provider.Iso

/-- I-HEAD: all-time action confinement in two degrees of freedom, derived from I-G1,
energy-cylinder separation and ODE continuation; not a verbatim HL19 theorem.
The type is that of the frozen `KAM.Iso.all_time_confinement`. -/
theorem all_time_confinement
    (B : Set (Fin 2 → ℝ)) (hB : IsOpen B) (hBb : Bornology.IsBounded B)
    (hBne : B.Nonempty) {s₀ r₀ : ℝ} (hs : 0 < s₀) (hr : 0 < r₀)
    (h : (Fin 2 → ℂ) → ℂ) (hh : DifferentiableOn ℂ h (actionNbhd B r₀))
    (hhreal : ∀ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
      (h (fun i => (I i : ℂ))).im = 0)
    (hiso : ∀ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
      (borderedHessian h I).det ≠ 0)
    (B' : Set (Fin 2 → ℝ)) (hB' : IsOpen B')
    (hcompact : IsCompact (closure B')) (hinside : closure B' ⊆ B)
    {η : ℝ} (hη : 0 < η) :
    ∃ ε₀ : ℝ, 0 < ε₀ ∧
      ∀ (f : (Fin 2 → ℂ) × (Fin 2 → ℂ) → ℂ) (ε : ℝ),
        DifferentiableOn ℂ f ((complexStrip 2 s₀) ×ˢ (actionNbhd B r₀)) →
        (∀ z ∈ (complexStrip 2 s₀) ×ˢ (actionNbhd B r₀), ∀ k : Fin 2 → ℤ,
          f (z.1 + (fun i => (k i : ℂ)), z.2) = f z) →
        (∀ θ I : Fin 2 → ℝ, (fun i => (I i : ℂ)) ∈ actionNbhd B r₀ →
          (f ((fun i => (θ i : ℂ)), (fun i => (I i : ℂ)))).im = 0) →
        0 ≤ ε → ε < ε₀ →
        (∀ z ∈ (complexStrip 2 s₀) ×ˢ (actionNbhd B r₀), ‖f z‖ ≤ ε) →
        ∀ z₀ : (Fin 2 → ℝ) × (Fin 2 → ℝ), z₀.2 ∈ B' →
        ∃ z : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ),
          z 0 = z₀ ∧ IsHamiltonianSolutionOn (realHamiltonian h f) B Set.univ z ∧
          (∀ t : ℝ, ‖(z t).2 - z₀.2‖ < η) ∧
          ∀ (a b : ℝ) (y : ℝ → (Fin 2 → ℝ) × (Fin 2 → ℝ)),
            a < 0 → 0 < b → y 0 = z₀ →
            IsHamiltonianSolutionOn (realHamiltonian h f) B (Set.Ioo a b) y →
            ∀ t ∈ Set.Ioo a b, y t = z t := by
  obtain ⟨ε₀, hε₀, H⟩ := KAM.Iso.Confinement.confinement_main (B := B) (s₀ := s₀) (r₀ := r₀)
    (h := h) (B' := B') (η := η)
    ⟨⟨hs, hr, hh, hhreal⟩, hB, hBb, hBne, hiso, hB', hcompact, hinside, hη⟩
  exact ⟨ε₀, hε₀, fun f ε hf hper hreal h0 hε hbd z₀ hz₀ =>
    H f ε ⟨hf, hper, hreal, h0, hbd⟩ hε z₀ hz₀⟩

end KAM.Provider.Iso

end
