/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Iso.Confinement.Setting

/-!
# Part 5: the patch sets, the patch constants and the threshold `ε₀`

Package P5-1 of `docs/tracks/I/design/PART58-LEAN-DESIGN.md` (nodes `bpI:p5:sec-patch`,
`bpI:p5:patch-const`, `bpI:p5:eps0`).

* `EnergyPatch.K_eq_image`, `EnergyPatch.isCompact_K`: `𝒦 = Φ⁻¹(Q) = Ψ(Q)` is compact.
* `EnergyPatch.isOpen_Omega`, `EnergyPatch.Omega_subset_K`: `Ω = Φ⁻¹(O)` is open and `Ω ⊆ 𝒦`.
* `patchConst_exists`: the patch constants `r, L_m, L_Φ, κ` of `bpI:p5:patch-const` exist.
* `exists_eps0`: the threshold `ε₀` of `bpI:p5:eps0`, as an existence statement over the finite
  family of patches.
-/

public section

open Set Metric

namespace KAM.Iso.Confinement

open KAM

variable {hR : (Fin 2 → ℝ) → ℝ} {B : Set (Fin 2 → ℝ)} {η₁ : ℝ}

/-! ## The sets `𝒦` and `Ω` -/

/-- `Φ⁻¹(Q)` is the image `Ψ(Q)`. -/
theorem EnergyPatch.K_eq_image (p : EnergyPatch hR B η₁) : p.K = p.Ψ '' p.Q := by
  ext I
  constructor
  · rintro ⟨hIW, hIQ⟩
    exact ⟨_, hIQ, p.Ψ_left I hIW⟩
  · rintro ⟨v, hvQ, rfl⟩
    have hv : v ∈ (fun I => (hR I, p.m I)) '' p.W := p.Q_subset hvQ
    exact ⟨p.Ψ_mem v hv, by rw [p.Ψ_right v hv]; exact hvQ⟩

/-- `Φ⁻¹(Q)` is compact. -/
theorem EnergyPatch.isCompact_K (p : EnergyPatch hR B η₁) : IsCompact p.K := by
  rw [p.K_eq_image]
  have hQ : IsCompact p.Q := isCompact_Icc.prod isCompact_Icc
  exact hQ.image_of_continuousOn (p.Ψ_contDiffOn.continuousOn.mono p.Q_subset)

theorem EnergyPatch.isOpen_Omega (p : EnergyPatch hR B η₁) : IsOpen p.Omega := by
  have hcont : ContinuousOn (fun I => (hR I, p.m I)) p.W :=
    p.hR_contDiffOn.continuousOn.prodMk p.m_contDiffOn.continuousOn
  exact hcont.isOpen_inter_preimage p.isOpen_W (isOpen_Ioo.prod isOpen_Ioo)

theorem EnergyPatch.Omega_subset_K (p : EnergyPatch hR B η₁) : p.Omega ⊆ p.K := by
  rintro I ⟨hIW, hIO⟩
  exact ⟨hIW, Ioo_subset_Icc_self hIO.1, Ioo_subset_Icc_self hIO.2⟩

end KAM.Iso.Confinement
