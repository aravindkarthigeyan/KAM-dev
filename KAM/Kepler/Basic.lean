/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Frozen.Defs.SymplecticForm
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Planetary.Defs.Phase

/-!
# Symplectic bookkeeping and the reindexing `phaseCast`

`IsSymplecticOn c Ψ U` (heterogeneous dimensions), its chain rule, the complexification `phaseToC`,
and the canonical reindexing `phaseCast : Phase d ≃L[ℝ] Phase e` for `d = e` with its API.
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff

namespace KAM.Kepler

open KAM KAM.Planetary

/-- `Ω(DΨ z u, DΨ z v) = c Ω(u, v)` for `z ∈ U`, with the frozen `symplecticForm` on both sides
(heterogeneous dimension, so that `Phase (n + n) → Phase (n * 2)` is covered). -/
def IsSymplecticOn {d e : ℕ} (c : ℝ) (Ψ : Phase d → Phase e) (U : Set (Phase d)) : Prop :=
  ∀ z ∈ U, ∀ u v : Phase d,
    symplecticForm (fderiv ℝ Ψ z u) (fderiv ℝ Ψ z v) = c * symplecticForm u v

/-- Chain rule for `IsSymplecticOn` (differentiability is an explicit hypothesis, since `fderiv`
is total). -/
theorem IsSymplecticOn.comp {d e f : ℕ} {c₁ c₂ : ℝ} {Ψ₁ : Phase d → Phase e}
    {Ψ₂ : Phase e → Phase f}
    {U : Set (Phase d)} {V : Set (Phase e)} (h₁ : IsSymplecticOn c₁ Ψ₁ U)
    (h₂ : IsSymplecticOn c₂ Ψ₂ V)
    (hU : ∀ z ∈ U, DifferentiableAt ℝ Ψ₁ z) (hV : ∀ z ∈ V, DifferentiableAt ℝ Ψ₂ z)
    (hmaps : Set.MapsTo Ψ₁ U V) : IsSymplecticOn (c₂ * c₁) (Ψ₂ ∘ Ψ₁) U := by
  intro z hz u v
  have hd : fderiv ℝ (Ψ₂ ∘ Ψ₁) z = (fderiv ℝ Ψ₂ (Ψ₁ z)).comp (fderiv ℝ Ψ₁ z) :=
    fderiv_comp z (hV _ (hmaps hz)) (hU z hz)
  rw [hd]
  simp only [ContinuousLinearMap.comp_apply]
  rw [h₂ _ (hmaps hz), h₁ z hz, mul_assoc]

/-- Entrywise complexification of a real phase point. -/
def phaseToC {d : ℕ} (z : Phase d) : (Fin d → ℂ) × (Fin d → ℂ) :=
  (fun i => (z.1 i : ℂ), fun i => (z.2 i : ℂ))

/-- Rotation of the plane by the angle `g`. -/
def rot (g : ℝ) (v : Fin 2 → ℝ) : Fin 2 → ℝ :=
  ![Real.cos g * v 0 - Real.sin g * v 1, Real.sin g * v 0 + Real.cos g * v 1]

/-- The unit vector `e_g = R(g) (1, 0)`. -/
def ex (g : ℝ) : Fin 2 → ℝ := ![Real.cos g, Real.sin g]

section PhaseCast

/-- F6: the canonical reindexing `Phase d ≃L[ℝ] Phase e` for `h : d = e` (`Fin.cast` on both
components). -/
def phaseCast {d e : ℕ} (h : d = e) : Phase d ≃L[ℝ] Phase e :=
  (ContinuousLinearEquiv.piCongrLeft ℝ (fun _ : Fin e => ℝ) (finCongr h : Fin d ≃ Fin e)).prodCongr
    (ContinuousLinearEquiv.piCongrLeft ℝ (fun _ : Fin e => ℝ) (finCongr h : Fin d ≃ Fin e))

theorem phaseCast_apply {d e : ℕ} (h : d = e) (z : Phase d) (i : Fin e) :
    (phaseCast h z).1 i = z.1 (Fin.cast h.symm i) ∧
      (phaseCast h z).2 i = z.2 (Fin.cast h.symm i) := by
  subst h
  exact ⟨rfl, rfl⟩

theorem phaseCast_symm {d e : ℕ} (h : d = e) : (phaseCast h).symm = phaseCast h.symm := by
  subst h
  ext z i <;> rfl

theorem phaseCast_symplectic {d e : ℕ} (h : d = e) : IsSymplecticOn 1 (phaseCast h) univ := by
  subst h
  intro z _ u v
  rw [ContinuousLinearEquiv.fderiv, one_mul]
  rfl

theorem phaseCast_hamiltonianVectorField {d e : ℕ} (h : d = e) (H : Phase e → ℝ) (z : Phase d) :
    hamiltonianVectorField (H ∘ phaseCast h) z =
      (phaseCast h).symm (hamiltonianVectorField H (phaseCast h z)) := by
  subst h
  have : (phaseCast rfl : Phase d ≃L[ℝ] Phase d) = ContinuousLinearEquiv.refl ℝ _ := by
    ext z i <;> rfl
  rw [this]
  rfl

theorem phaseCast_volume {d e : ℕ} (h : d = e) (A : Set (Phase d)) :
    MeasureTheory.volume (phaseCast h '' A) = MeasureTheory.volume A := by
  subst h
  have : (phaseCast rfl : Phase d ≃L[ℝ] Phase d) = ContinuousLinearEquiv.refl ℝ _ := by
    ext z i <;> rfl
  rw [this]
  simp

theorem phaseCast_measurableEquiv {d e : ℕ} (h : d = e) {A : Set (Phase d)} (hA : MeasurableSet A) :
    MeasurableSet (phaseCast h '' A) := by
  subst h
  have : (phaseCast rfl : Phase d ≃L[ℝ] Phase d) = ContinuousLinearEquiv.refl ℝ _ := by
    ext z i <;> rfl
  rw [this]
  simpa using hA

/-- `phaseCast` is analytic (it is a continuous linear equivalence). -/
theorem phaseCast_analytic {d e : ℕ} (h : d = e) : AnalyticOnNhd ℝ (phaseCast h) univ := fun z _ =>
  (phaseCast h : Phase d →L[ℝ] Phase e).analyticAt z

end PhaseCast

end KAM.Kepler

end
