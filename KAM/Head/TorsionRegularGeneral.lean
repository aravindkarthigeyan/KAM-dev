/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Head.HamiltonianField
public import KAM.Head.PhaseAverage
public import KAM.Torus.FrozenAgreement

/-!
# Guarded facts for the frame and the torsion, for a general Hamiltonian

Blueprint Part 4, `bp:p4:torsion-regular`, steps `step:p4:tr-inverse`, `step:p4:tr-torsion` and
`step:p4:tr-periodic`, for an arbitrary open set `𝔅 ⊆ ℂⁿ × ℂⁿ` and a Hamiltonian `H` holomorphic
on `𝔅` (the case `𝔅 = 𝔇`, `H = 𝐡` of HEAD is in `KAM/Head/TorsionRegular.lean`). Let `K` be
holomorphic on `T_ρ` (`ρ > 0`) with `K(T_ρ) ⊆ 𝔅` and `det G_K ≠ 0` on `T_ρ`, and `ω ∈ ℝⁿ`.

* `step:p4:tr-inverse`, (a): `KAM.Head.gramMatrix_inverse_regular`, with the derivative formula
  `∂_ω(G⁻¹) = -G⁻¹ (∂_ω G) G⁻¹`.
* `step:p4:tr-torsion`, (b), (c): `KAM.Head.normalFrame_regular` (`N` holomorphic, and the
  derivative term of the frozen torsion is `∂_ω N`), `KAM.Head.differentiableOn_linMat`
  (`DX_H ∘ K` holomorphic) and `KAM.Head.torsion_regular` (`T = Nᵀ Ω₀ X_N` holomorphic, `⟨T⟩` the
  integral of a continuous function).
* `step:p4:tr-periodic`, (d): `KAM.Head.periodic_regular`, for `K` primary and `H` periodic in
  `θ`: the angle displacement, `v`, `L`, `G`, `N`, `T` are `ℤⁿ`-periodic on `T_ρ`.
-/

@[expose] public noncomputable section

open scoped Matrix.Norms.Operator
open Matrix MeasureTheory KAM KAM.Torus

namespace KAM.Head

variable {n : ℕ}

/-- `ℤⁿ`-periodicity on the strip `T_r`: `u(θ + k) = u(θ)` for `θ ∈ T_r` and `k ∈ ℤⁿ`. -/
def IsZPeriodicOn {F : Type*} (u : (Fin n → ℂ) → F) (r : ℝ) : Prop :=
  ∀ θ ∈ complexStrip n r, ∀ k : Fin n → ℤ, u (θ + fun i => (k i : ℂ)) = u θ

/-- `ℤⁿ`-periodicity implies the coordinatewise `1`-periodicity of `KAM.Torus.IsPeriodicOn`. -/
theorem IsZPeriodicOn.isPeriodicOn {F : Type*} {u : (Fin n → ℂ) → F} {r : ℝ}
    (hu : IsZPeriodicOn u r) : IsPeriodicOn u r := by
  intro i z hz
  have h := hu z hz (Pi.single i 1)
  have hcast : (fun j => ((Pi.single i (1 : ℤ) : Fin n → ℤ) j : ℂ)) = Pi.single i 1 := by
    ext j
    by_cases hji : j = i
    · subst hji; simp
    · simp [hji]
  simpa only [hcast] using h

/-! ### Translation invariance of derivatives -/

/-- If `G (x + c) = G x` for `x` in an open set `𝔅`, then `DG (z + c) = DG z` for `z ∈ 𝔅`. -/
theorem fderiv_add_eq_of_translate {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    [NormedAddCommGroup F] [NormedSpace ℂ F] {G : E → F} {𝔅 : Set E} (h𝔅 : IsOpen 𝔅) {c : E}
    (hG : ∀ z ∈ 𝔅, G (z + c) = G z) {z : E} (hz : z ∈ 𝔅) :
    fderiv ℂ G (z + c) = fderiv ℂ G z := by
  have h : (fun x => G (x + c)) =ᶠ[nhds z] G :=
    Filter.eventually_of_mem (h𝔅.mem_nhds hz) hG
  rw [← fderiv_comp_add_right (f := G) c (x := z)]
  exact h.fderiv_eq

/-- For a primary torus `K` on the open strip `T_ρ`: `DK(θ + k) = DK(θ)` for `θ ∈ T_ρ`. -/
theorem fderiv_primary_periodic {ρ : ℝ} {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : IsPrimaryOnStrip K ρ) {θ : Fin n → ℂ} (hθ : θ ∈ complexStrip n ρ) (k : Fin n → ℤ) :
    fderiv ℂ K (θ + fun i => (k i : ℂ)) = fderiv ℂ K θ := by
  have h : (fun x => K (x + fun i => (k i : ℂ))) =ᶠ[nhds θ]
      fun x => K x + (fun i => (k i : ℂ), (0 : Fin n → ℂ)) :=
    Filter.eventually_of_mem ((isOpen_complexStrip n ρ).mem_nhds hθ) fun x hx => hK x hx k
  rw [← fderiv_comp_add_right (f := K) (fun i => (k i : ℂ)) (x := θ), h.fderiv_eq,
    fderiv_add_const]

/-- `z + (ι k, 0) = (z.1 + ι k, z.2)`. -/
theorem add_intCast_fst (z : (Fin n → ℂ) × (Fin n → ℂ)) (k : Fin n → ℤ) :
    z + (fun i => (k i : ℂ), (0 : Fin n → ℂ)) = (z.1 + fun i => (k i : ℂ), z.2) :=
  Prod.ext rfl (add_zero _)

/-! ### Step `step:p4:tr-inverse` -/

/-- Blueprint `bp:p4:torsion-regular` (a), step `step:p4:tr-inverse`. For `K` holomorphic on `T_ρ`
with `det G_K ≠ 0` there, the Lean inverse `G_K(θ)⁻¹` is the inverse of `G_K(θ)`, and
`θ ↦ G_K(θ)⁻¹` is holomorphic on `T_ρ` with `∂_ω (G_K⁻¹) = -G_K⁻¹ (∂_ω G_K) G_K⁻¹`. -/
theorem gramMatrix_inverse_regular {ρ : ℝ} {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hK : DifferentiableOn ℂ K (complexStrip n ρ))
    (hdet : ∀ θ ∈ complexStrip n ρ, (gramMatrix K θ).det ≠ 0) (ω : Fin n → ℝ) :
    (∀ θ ∈ complexStrip n ρ,
      gramMatrix K θ * (gramMatrix K θ)⁻¹ = 1 ∧ (gramMatrix K θ)⁻¹ * gramMatrix K θ = 1) ∧
    DifferentiableOn ℂ (fun θ => (gramMatrix K θ)⁻¹) (complexStrip n ρ) ∧
    ∀ θ ∈ complexStrip n ρ,
      fderiv ℂ (fun θ' => (gramMatrix K θ')⁻¹) θ (fun l => (ω l : ℂ)) =
        -((gramMatrix K θ)⁻¹ * fderiv ℂ (gramMatrix K) θ (fun l => (ω l : ℂ)) *
          (gramMatrix K θ)⁻¹) := by
  have hG := differentiableOn_gramMatrix hK
  have hinv := holomorphic_inverse (isOpen_complexStrip n ρ) hG hdet
  exact ⟨fun θ hθ => ⟨gramMatrix_mul_inv K ((isUnit_iff_ne_zero).2 (hdet θ hθ)),
    inv_gramMatrix_mul K ((isUnit_iff_ne_zero).2 (hdet θ hθ))⟩, hinv.1,
    fun θ hθ => hinv.2 θ hθ _⟩

/-! ### Step `step:p4:tr-torsion` -/

section Frame

variable {ρ : ℝ} {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}

/-- Blueprint `bp:p4:torsion-regular` (b), step `step:p4:tr-torsion`. The normal frame
`N = Ω₀ L G_K⁻¹` is holomorphic on `T_ρ`, and the derivative term of the frozen torsion (the
`fderiv` of the column `θ' ↦ normalFrame K θ' j` along `ω`) is the column `j` of the directional
derivative `∂_ω N`. -/
theorem normalFrame_regular (hK : DifferentiableOn ℂ K (complexStrip n ρ))
    (hdet : ∀ θ ∈ complexStrip n ρ, (gramMatrix K θ).det ≠ 0) (ω : Fin n → ℝ) :
    DifferentiableOn ℂ (normalMat K) (complexStrip n ρ) ∧
    ∀ θ ∈ complexStrip n ρ, ∀ j : Fin n,
      sumVec n (fderiv ℂ (fun θ' => normalFrame K θ' j) θ (fun l => (ω l : ℂ))) =
        fun s => fderiv ℂ (normalMat K) θ (fun l => (ω l : ℂ)) s j := by
  have hN := differentiableOn_normalMat hK fun θ hθ => (isUnit_iff_ne_zero).2 (hdet θ hθ)
  exact ⟨hN, fun θ hθ j => sumVec_fderiv_normalFrame
    (hN.differentiableAt ((isOpen_complexStrip n ρ).mem_nhds hθ)) j _⟩

/-- The entries of the matrix of an endomorphism of `ℂⁿ × ℂⁿ`, through `sumVec`. -/
theorem sqMat_apply_entry (U : ((Fin n → ℂ) × (Fin n → ℂ)) →L[ℂ] (Fin n → ℂ) × (Fin n → ℂ))
    (s t : Fin n ⊕ Fin n) :
    sqMat U s t = sumVec n (U ((sumVec n).symm (Pi.single t 1))) s := by
  have h := congrFun (sqMat_mulVec U ((sumVec n).symm (Pi.single t 1))) s
  simpa [Matrix.mulVec_single_one] using h

/-- Blueprint `bp:p4:torsion-regular`, step `step:p4:tr-torsion`: `A = DX_H ∘ K` is holomorphic on
`T_ρ` when `H` is holomorphic on an open set `𝔅` containing `K(T_ρ)`. -/
theorem differentiableOn_linMat {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))} (h𝔅 : IsOpen 𝔅)
    {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hH : DifferentiableOn ℂ H 𝔅)
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (hKB : ∀ θ ∈ complexStrip n ρ, K θ ∈ 𝔅) :
    DifferentiableOn ℂ (linMat H K) (complexStrip n ρ) := by
  have hXD : DifferentiableOn ℂ (fderiv ℂ (hamiltonianVectorFieldℂ H)) 𝔅 :=
    differentiableOn_fderiv_of_isOpen h𝔅 (differentiableOn_hamiltonianVectorField h𝔅 hH)
  have hcomp : DifferentiableOn ℂ (fun θ => fderiv ℂ (hamiltonianVectorFieldℂ H) (K θ))
      (complexStrip n ρ) := hXD.comp hK hKB
  rw [differentiableOn_matrix_iff_entries]
  intro s t
  simp only [linMat, sqMat_apply_entry]
  have h1 := hcomp.clm_apply (differentiableOn_const ((sumVec n).symm (Pi.single t 1)))
  have h2 := (sumVecIso n).differentiable.comp_differentiableOn h1
  exact (differentiableOn_pi.1 h2) s

/-- Blueprint `bp:p4:torsion-regular` (c), step `step:p4:tr-torsion`. Let `H` be holomorphic on an
open set `𝔅`, `K` holomorphic on `T_ρ` with `K(T_ρ) ⊆ 𝔅` and `det G_K ≠ 0` on `T_ρ`, `ω ∈ ℝⁿ`.
On `T_ρ` the frozen torsion is `T = Nᵀ Ω₀ X_N`, with `X_N = DX_H(K) N - ∂_ω N`
(`KAM.Torus.normalFieldMat`, whose definition is exactly this); `T` is holomorphic on `T_ρ`, so
`⟨T⟩` (the frozen `torsionAverage`) is the integral over the real unit cube of a continuous
function. -/
theorem torsion_regular_of_isOpen {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))} (h𝔅 : IsOpen 𝔅)
    {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} (hH : DifferentiableOn ℂ H 𝔅) (hρ : 0 < ρ)
    (hK : DifferentiableOn ℂ K (complexStrip n ρ)) (hKB : ∀ θ ∈ complexStrip n ρ, K θ ∈ 𝔅)
    (hdet : ∀ θ ∈ complexStrip n ρ, (gramMatrix K θ).det ≠ 0) (ω : Fin n → ℝ) :
    (∀ θ ∈ complexStrip n ρ, normalFieldMat H K ω θ =
        linMat H K θ * normalMat K θ - fderiv ℂ (normalMat K) θ (fun l => (ω l : ℂ))) ∧
    (∀ θ ∈ complexStrip n ρ,
      torsion H K ω θ = (normalMat K θ)ᵀ * omegaZeroMatrix n * normalFieldMat H K ω θ) ∧
    DifferentiableOn ℂ (torsion H K ω) (complexStrip n ρ) ∧
    Continuous (fun x : Fin n → ℝ => torsion H K ω (fun i => (x i : ℂ))) ∧
    torsionAverage H K ω = avg (torsion H K ω) := by
  have hN := (normalFrame_regular hK hdet ω).1
  have hform : ∀ θ ∈ complexStrip n ρ,
      torsion H K ω θ = (normalMat K θ)ᵀ * omegaZeroMatrix n * normalFieldMat H K ω θ :=
    fun θ hθ => torsion_eq_mat H K ω
      (hN.differentiableAt ((isOpen_complexStrip n ρ).mem_nhds hθ))
  have hdN : DifferentiableOn ℂ (fderiv ℂ (normalMat K)) (complexStrip n ρ) :=
    (holomorphic_regularity_of_finiteDimensional (isOpen_complexStrip n ρ) hN).1
  have hXN : DifferentiableOn ℂ (normalFieldMat H K ω) (complexStrip n ρ) :=
    ((differentiableOn_linMat h𝔅 hH hK hKB).matrix_mul hN).sub
      (hdN.clm_apply (differentiableOn_const _))
  have hT : DifferentiableOn ℂ (torsion H K ω) (complexStrip n ρ) :=
    (((hN.matrix_transpose).matrix_mul (differentiableOn_const _)).matrix_mul hXN).congr hform
  have hTc : Continuous (fun x : Fin n → ℝ => torsion H K ω (fun i => (x i : ℂ))) :=
    hT.continuousOn.comp_continuous
      (continuous_pi fun j => Complex.continuous_ofReal.comp (continuous_apply j))
      fun x => ofReal_mem_complexStrip hρ x
  exact ⟨fun _ _ => rfl, hform, hT, hTc, torsionAverage_eq_avg H K ω hTc⟩

end Frame

/-! ### Step `step:p4:tr-periodic` -/

section Periodic

variable {ρ : ℝ} {K : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
  {𝔅 : Set ((Fin n → ℂ) × (Fin n → ℂ))} {H : (Fin n → ℂ) × (Fin n → ℂ) → ℂ}

/-- If `H` is `ℤⁿ`-periodic in `θ` on the open set `𝔅`, then so are `DH`, `X_H` and `DX_H`, in the
sense `G (z + (k, 0)) = G z` for `z ∈ 𝔅`; here the derivative statements are for `fderiv`. -/
theorem hamiltonian_periodic (h𝔅 : IsOpen 𝔅)
    (hper : ∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, H (z.1 + (fun i => (k i : ℂ)), z.2) = H z)
    {z : (Fin n → ℂ) × (Fin n → ℂ)} (hz : z ∈ 𝔅) (k : Fin n → ℤ) :
    hamiltonianVectorFieldℂ H (z + (fun i => (k i : ℂ), (0 : Fin n → ℂ))) =
        hamiltonianVectorFieldℂ H z ∧
      fderiv ℂ (hamiltonianVectorFieldℂ H) (z + (fun i => (k i : ℂ), (0 : Fin n → ℂ))) =
        fderiv ℂ (hamiltonianVectorFieldℂ H) z := by
  have hH : ∀ w ∈ 𝔅, fderiv ℂ H (w + (fun i => (k i : ℂ), (0 : Fin n → ℂ))) = fderiv ℂ H w :=
    fun w hw => fderiv_add_eq_of_translate h𝔅 (fun x hx => by
      rw [add_intCast_fst]; exact hper x hx k) hw
  have hX : ∀ w ∈ 𝔅, hamiltonianVectorFieldℂ H (w + (fun i => (k i : ℂ), (0 : Fin n → ℂ))) =
      hamiltonianVectorFieldℂ H w := fun w hw => by
    simp only [hamiltonianVectorFieldℂ_eq_hamJ]
    rw [hH w hw]
  exact ⟨hX z hz, fderiv_add_eq_of_translate h𝔅 hX hz⟩

/-- Blueprint `bp:p4:torsion-regular` (d), step `step:p4:tr-periodic`. Let `K` be primary on
`T_ρ`, with `K(T_ρ) ⊆ 𝔅` and `det G_K ≠ 0` on `T_ρ`, and `H` holomorphic on the open set `𝔅` and
`ℤⁿ`-periodic in `θ` there. Then the angle displacement `u(θ) = K₁(θ) - θ`, `v(θ) = K₂(θ)`,
`L = DK` (as a linear map and as a matrix), `G_K`, `N` and the torsion `T` are `ℤⁿ`-periodic
on `T_ρ`. -/
theorem periodic_regular (h𝔅 : IsOpen 𝔅) (hH : DifferentiableOn ℂ H 𝔅)
    (hper : ∀ z ∈ 𝔅, ∀ k : Fin n → ℤ, H (z.1 + (fun i => (k i : ℂ)), z.2) = H z)
    (hρ : 0 < ρ) (hK : DifferentiableOn ℂ K (complexStrip n ρ))
    (hprim : IsPrimaryOnStrip K ρ) (hKB : ∀ θ ∈ complexStrip n ρ, K θ ∈ 𝔅)
    (hdet : ∀ θ ∈ complexStrip n ρ, (gramMatrix K θ).det ≠ 0) (ω : Fin n → ℝ) :
    IsZPeriodicOn (angleDisplacement K) ρ ∧ IsZPeriodicOn (fun θ => (K θ).2) ρ ∧
    IsZPeriodicOn (fderiv ℂ K) ρ ∧ IsZPeriodicOn (tangentMat K) ρ ∧
    IsZPeriodicOn (gramMatrix K) ρ ∧ IsZPeriodicOn (normalMat K) ρ ∧
    IsZPeriodicOn (torsion H K ω) ρ := by
  have hL : IsZPeriodicOn (fderiv ℂ K) ρ := fun θ hθ k => fderiv_primary_periodic hprim hθ k
  have hLm : IsZPeriodicOn (tangentMat K) ρ := fun θ hθ k => by
    simp only [tangentMat, hL θ hθ k]
  have hG : IsZPeriodicOn (gramMatrix K) ρ := fun θ hθ k => by
    funext i j
    simp only [gramMatrix, hL θ hθ k]
  have hN : IsZPeriodicOn (normalMat K) ρ := fun θ hθ k => by
    simp only [normalMat, hLm θ hθ k, hG θ hθ k]
  refine ⟨fun θ hθ k => ?_, fun θ hθ k => ?_, hL, hLm, hG, hN, fun θ hθ k => ?_⟩
  · have h := hprim θ hθ k
    ext i
    simp [angleDisplacement, h]
  · simp [hprim θ hθ k]
  · have hθk : θ + (fun i => (k i : ℂ)) ∈ complexStrip n ρ := add_intCast_mem_complexStrip hθ k
    obtain ⟨-, hform, -, -, -⟩ := torsion_regular_of_isOpen h𝔅 hH hρ hK hKB hdet ω
    rw [hform θ hθ, hform _ hθk]
    have hdN : fderiv ℂ (normalMat K) (θ + fun i => (k i : ℂ)) = fderiv ℂ (normalMat K) θ :=
      fderiv_add_eq_of_translate (isOpen_complexStrip n ρ) (fun x hx => hN x hx k) hθ
    have hKk := hprim θ hθ k
    have hX := (hamiltonian_periodic h𝔅 hper (hKB θ hθ) k).2
    have hlin : linMat H K (θ + fun i => (k i : ℂ)) = linMat H K θ := by
      simp only [linMat, hKk, hX]
    simp only [normalFieldMat, hN θ hθ k, hlin, hdN]

end Periodic

end KAM.Head

end
