/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Head.DerivativeBounds
public import KAM.Head.TorsionRegularGeneral

/-!
# Guarded facts for the frame and the torsion

Blueprint Part 4, `bp:p4:torsion-regular`, with its steps `step:p4:tr-inverse`,
`step:p4:tr-torsion` and `step:p4:tr-periodic`. Here the domain is `𝔇 = T_{s/2} × B_{r₀/2}`
(`KAM.Head.domainD`) and the Hamiltonian is `𝐡 = h(I) + f(θ, I)` (`KAM.Head.hbold`) of the data of
HEAD, with `h` holomorphic on `B_{r₀}`, and `f` holomorphic and `1`-periodic in `θ` on
`D(s₀, r₀) = T_{s₀} × B_{r₀}`. The frame and torsion are the frozen ones (`KAM.gramMatrix`,
`KAM.normalFrame`, `KAM.torsion`, `KAM.torsionAverage`), in the matrix form of `KAM/Torus`
(`KAM.Torus.normalMat`, `KAM.Torus.linMat`, `KAM.Torus.normalFieldMat`, bridged by
`bp:p2:frozen-agreement`).

The proof, for an arbitrary open `𝔅` and Hamiltonian `H` holomorphic on it, is in
`KAM/Head/TorsionRegularGeneral.lean`; this file specializes it. The only step specific to HEAD is
`step:p4:h1-holo`: `𝐡` is holomorphic on `𝔇` (`KAM.Head.differentiableOn_hbold`) and `ℤⁿ`-periodic
in `θ` on `𝔇`.

* `KAM.Head.hbold_periodic`: `𝐡(θ + k, I) = 𝐡(θ, I)` on `𝔇`.
* `KAM.Head.torsion_regular` is `bp:p4:torsion-regular`, clauses (a)–(d).
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix KAM KAM.Torus

namespace KAM.Head

variable {n : ℕ}

/-- Blueprint `step:p4:h1-holo` (periodicity): `𝐡(θ + k, I) = 𝐡(θ, I)` for `(θ, I) ∈ 𝔇`, `k ∈ ℤⁿ`,
since `f` is periodic and `h(I)` does not depend on `θ`. -/
theorem hbold_periodic {s₀ r₀ : ℝ} (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) {B : Set (Fin n → ℝ)}
    {h : (Fin n → ℂ) → ℂ} {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hfper : ∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ∀ k : Fin n → ℤ,
      f (z.1 + (fun i => (k i : ℂ)), z.2) = f z)
    {z : (Fin n → ℂ) × (Fin n → ℂ)} (hz : z ∈ domainD n s₀ r₀ B) (k : Fin n → ℤ) :
    hbold h f (z.1 + (fun i => (k i : ℂ)), z.2) = hbold h f z := by
  simp only [hbold]
  rw [hfper z (domainD_subset n hs₀ hr₀ B hz) k]

/-- Blueprint `bp:p4:torsion-regular`. Let `ρ > 0`, let `K` be holomorphic on `T_ρ` with
`K(T_ρ) ⊆ 𝔇` and `det G_K(θ) ≠ 0` for `θ ∈ T_ρ`, and let `ω ∈ ℝⁿ`. Write `L = DK` and
`∂_ω F = DF ω`.

* (a) The Lean matrix inverse `G_K(θ)⁻¹` is the inverse of `G_K(θ)`, and `θ ↦ G_K(θ)⁻¹` is
  holomorphic on `T_ρ` with `∂_ω (G_K⁻¹) = -G_K⁻¹ (∂_ω G_K) G_K⁻¹`.
* (b) `N = Ω₀ L G_K⁻¹` (`normalMat K`) is holomorphic on `T_ρ`, and the derivative term of the
  frozen torsion is the directional derivative `∂_ω N`.
* (c) On `T_ρ`, `T = Nᵀ Ω₀ X_N` with `X_N = DX_𝐡(K) N - ∂_ω N` (`normalFieldMat`), and `T` is
  holomorphic, so `⟨T⟩` is the integral of a continuous function on the real unit cube.
* (d) If `K` is primary on `T_ρ`, then `u(θ) = K₁(θ) - θ`, `v(θ) = K₂(θ)`, `L`, `G_K`, `N` and `T`
  are `ℤⁿ`-periodic on `T_ρ`.

The hypotheses on `h` and `f` are those of HEAD that are needed: `h` holomorphic on `B_{r₀}`, `f`
holomorphic and periodic in `θ` on `D(s₀, r₀)`. -/
theorem torsion_regular {s₀ r₀ : ℝ} (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) {B : Set (Fin n → ℝ)}
    {h : (Fin n → ℂ) → ℂ} (hh : DifferentiableOn ℂ h (actionNbhd B r₀))
    {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}
    (hf : DifferentiableOn ℂ f (complexStrip n s₀ ×ˢ actionNbhd B r₀))
    (hfper : ∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ∀ k : Fin n → ℤ,
      f (z.1 + (fun i => (k i : ℂ)), z.2) = f z)
    {ρ : ℝ} (hρ : 0 < ρ) {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ))
    (hKD : ∀ θ ∈ complexStrip n ρ, K θ ∈ domainD n s₀ r₀ B)
    (hdet : ∀ θ ∈ complexStrip n ρ, (gramMatrix K θ).det ≠ 0) (ω : Fin n → ℝ) :
    ((∀ θ ∈ complexStrip n ρ,
        gramMatrix K θ * (gramMatrix K θ)⁻¹ = 1 ∧ (gramMatrix K θ)⁻¹ * gramMatrix K θ = 1) ∧
      DifferentiableOn ℂ (fun θ => (gramMatrix K θ)⁻¹) (complexStrip n ρ) ∧
      ∀ θ ∈ complexStrip n ρ,
        fderiv ℂ (fun θ' => (gramMatrix K θ')⁻¹) θ (fun l => (ω l : ℂ)) =
          -((gramMatrix K θ)⁻¹ * fderiv ℂ (gramMatrix K) θ (fun l => (ω l : ℂ)) *
            (gramMatrix K θ)⁻¹)) ∧
    (DifferentiableOn ℂ (normalMat K) (complexStrip n ρ) ∧
      ∀ θ ∈ complexStrip n ρ, ∀ j : Fin n,
        sumVec n (fderiv ℂ (fun θ' => normalFrame K θ' j) θ (fun l => (ω l : ℂ))) =
          fun s => fderiv ℂ (normalMat K) θ (fun l => (ω l : ℂ)) s j) ∧
    ((∀ θ ∈ complexStrip n ρ, normalFieldMat (hbold h f) K ω θ =
        linMat (hbold h f) K θ * normalMat K θ -
          fderiv ℂ (normalMat K) θ (fun l => (ω l : ℂ))) ∧
      (∀ θ ∈ complexStrip n ρ, torsion (hbold h f) K ω θ =
        (normalMat K θ)ᵀ * omegaZeroMatrix n * normalFieldMat (hbold h f) K ω θ) ∧
      DifferentiableOn ℂ (torsion (hbold h f) K ω) (complexStrip n ρ) ∧
      Continuous (fun x : Fin n → ℝ => torsion (hbold h f) K ω (fun i => (x i : ℂ))) ∧
      torsionAverage (hbold h f) K ω = avg (torsion (hbold h f) K ω)) ∧
    (IsPrimaryOnStrip K ρ →
      IsZPeriodicOn (angleDisplacement K) ρ ∧ IsZPeriodicOn (fun θ => (K θ).2) ρ ∧
      IsZPeriodicOn (fderiv ℂ K) ρ ∧ IsZPeriodicOn (tangentMat K) ρ ∧
      IsZPeriodicOn (gramMatrix K) ρ ∧ IsZPeriodicOn (normalMat K) ρ ∧
      IsZPeriodicOn (torsion (hbold h f) K ω) ρ) := by
  have h𝔅 := isOpen_domainD n s₀ r₀ B
  have hH : DifferentiableOn ℂ (hbold h f) (domainD n s₀ r₀ B) :=
    (differentiableOn_hbold hs₀ hr₀ hh hf).mono (domainD_subset_domainD' n hs₀ hr₀ B)
  obtain ⟨a1, a2, a3⟩ := gramMatrix_inverse_regular hK hdet ω
  obtain ⟨b1, b2⟩ := normalFrame_regular hK hdet ω
  exact ⟨⟨a1, a2, a3⟩, ⟨b1, b2⟩, torsion_regular_of_isOpen h𝔅 hH hρ hK hKD hdet ω,
    fun hprim => periodic_regular h𝔅 hH (fun _ hz k => hbold_periodic hs₀ hr₀ hfper hz k) hρ hK
      hprim hKD hdet ω⟩

end KAM.Head

end
