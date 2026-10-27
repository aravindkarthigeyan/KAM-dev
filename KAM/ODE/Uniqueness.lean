/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.ODE.Lipschitz
public import Mathlib.Analysis.ODE.ExistUnique

/-!
# Uniqueness of solutions of an autonomous ODE

Blueprint N Part 3 (`bpN:p3:gen-uniqueness`).

* `KAM.ODE.gen_uniqueness`: two solutions on an order-connected interval agreeing at one time agree.
* `KAM.ODE.gen_uniqueness_inter`: solutions on `J₁`, `J₂` agree on `J₁ ∩ J₂`.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

namespace KAM.ODE

section Uniqueness

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- Helper: the union of the images of `[a, b]` under two solutions on `J ⊇ [a, b]` is a compact
subset of `W` on which `F` is Lipschitz. -/
private theorem lipschitz_on_images {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) {J : Set ℝ} {y₁ y₂ : ℝ → E} (h₁ : IsSolutionIn F W J y₁)
    (h₂ : IsSolutionIn F W J y₂) {a b : ℝ} (hab : Icc a b ⊆ J) :
    ∃ (K : Set E) (L : ℝ≥0), LipschitzOnWith L F K ∧ (∀ t ∈ Icc a b, y₁ t ∈ K ∧ y₂ t ∈ K) := by
  have hc₁ : IsCompact (y₁ '' Icc a b) :=
    isCompact_Icc.image_of_continuousOn (h₁.continuousOn.mono hab)
  have hc₂ : IsCompact (y₂ '' Icc a b) :=
    isCompact_Icc.image_of_continuousOn (h₂.continuousOn.mono hab)
  have hK : IsCompact (y₁ '' Icc a b ∪ y₂ '' Icc a b) := hc₁.union hc₂
  have hKW : y₁ '' Icc a b ∪ y₂ '' Icc a b ⊆ W := by
    rintro _ (⟨t, ht, rfl⟩ | ⟨t, ht, rfl⟩)
    · exact (h₁ t (hab ht)).1
    · exact (h₂ t (hab ht)).1
  obtain ⟨-, L, hL⟩ := gen_lip hW hF hK hKW
  exact ⟨_, L, hL, fun t ht => ⟨Or.inl ⟨t, ht, rfl⟩, Or.inr ⟨t, ht, rfl⟩⟩⟩

/-- `bpN:p3:gen-uniqueness`: two solutions on an arbitrary interval agreeing at one time agree. -/
theorem gen_uniqueness {F : E → E} {W : Set E} (hW : IsOpen W) (hF : ContDiffOn ℝ 1 F W)
    {J : Set ℝ} (hJ : J.OrdConnected) {t₀ : ℝ} (ht₀ : t₀ ∈ J) {y₁ y₂ : ℝ → E}
    (h₁ : IsSolutionIn F W J y₁) (h₂ : IsSolutionIn F W J y₂) (h : y₁ t₀ = y₂ t₀) :
    EqOn y₁ y₂ J := by
  intro t ht
  rcases le_total t₀ t with hle | hle
  · have hsub : Icc t₀ t ⊆ J := hJ.out ht₀ ht
    obtain ⟨K, L, hL, hK⟩ := lipschitz_on_images hW hF h₁ h₂ hsub
    have := ODE_solution_unique_of_mem_Icc_right (v := fun _ => F) (s := fun _ => K) (K := L)
      (f := y₁) (g := y₂) (a := t₀) (b := t) (fun _ _ => hL)
      (h₁.continuousOn.mono hsub)
      (fun s hs => (h₁ s (hsub ⟨hs.1, hs.2.le⟩)).2.hasDerivWithinAt)
      (fun s hs => (hK s ⟨hs.1, hs.2.le⟩).1)
      (h₂.continuousOn.mono hsub)
      (fun s hs => (h₂ s (hsub ⟨hs.1, hs.2.le⟩)).2.hasDerivWithinAt)
      (fun s hs => (hK s ⟨hs.1, hs.2.le⟩).2) h
    exact this ⟨hle, le_rfl⟩
  · have hsub : Icc t t₀ ⊆ J := hJ.out ht ht₀
    obtain ⟨K, L, hL, hK⟩ := lipschitz_on_images hW hF h₁ h₂ hsub
    have := ODE_solution_unique_of_mem_Icc_left (v := fun _ => F) (s := fun _ => K) (K := L)
      (f := y₁) (g := y₂) (a := t) (b := t₀) (fun _ _ => hL)
      (h₁.continuousOn.mono hsub)
      (fun s hs => (h₁ s (hsub ⟨hs.1.le, hs.2⟩)).2.hasDerivWithinAt)
      (fun s hs => (hK s ⟨hs.1.le, hs.2⟩).1)
      (h₂.continuousOn.mono hsub)
      (fun s hs => (h₂ s (hsub ⟨hs.1.le, hs.2⟩)).2.hasDerivWithinAt)
      (fun s hs => (hK s ⟨hs.1.le, hs.2⟩).2) h
    exact this ⟨le_rfl, hle⟩

/-- `bpN:p3:gen-uniqueness`, "in particular": solutions on `J₁`, `J₂` agree on `J₁ ∩ J₂`. -/
theorem gen_uniqueness_inter {F : E → E} {W : Set E} (hW : IsOpen W) (hF : ContDiffOn ℝ 1 F W)
    {J₁ J₂ : Set ℝ} (hJ₁ : J₁.OrdConnected) (hJ₂ : J₂.OrdConnected) {t₀ : ℝ}
    (ht₀ : t₀ ∈ J₁ ∩ J₂) {y₁ y₂ : ℝ → E} (h₁ : IsSolutionIn F W J₁ y₁)
    (h₂ : IsSolutionIn F W J₂ y₂) (h : y₁ t₀ = y₂ t₀) : EqOn y₁ y₂ (J₁ ∩ J₂) :=
  gen_uniqueness hW hF (hJ₁.inter hJ₂) ht₀ (h₁.mono inter_subset_left)
    (h₂.mono inter_subset_right) h

end Uniqueness

end KAM.ODE
