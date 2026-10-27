/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib.Topology.MetricSpace.Lipschitz
public import Mathlib.Analysis.Normed.Group.Constructions
public import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Tactic.Linarith

/-!
# McShane extension (blueprint Part 1)

Blueprint `bp:p1:mcshane` with its steps `step:p1:mc-component`, `step:p1:mc-components` and
`step:p1:mc-clamp`. A map into `ℝ^d` (max norm) that is `Λ`-Lipschitz on a subset of a metric
space extends to a `Λ`-Lipschitz map on the whole space, and the extension can be clamped to a
given sup bound `β ≥ 0`. Lipschitz bounds are stated as inequalities
`‖Φ x - Φ y‖ ≤ Λ * dist x y`, with the constant `Λ` kept exactly.
-/

@[expose] public section

open Set
open scoped NNReal

namespace KAM

variable {X : Type*} [PseudoMetricSpace X] {S : Set X}

/-- Blueprint `step:p1:mc-component`. A real function that is `Λ`-Lipschitz on `S` has a
`Λ`-Lipschitz extension to `X` (Mathlib: `LipschitzOnWith.extend_real`; the extension is
`x ↦ inf_{y ∈ S} (φ y + Λ * dist x y)`). -/
theorem mcshane_component {Λ : ℝ} (hΛ : 0 ≤ Λ) {φ : X → ℝ}
    (hφ : ∀ x ∈ S, ∀ y ∈ S, |φ x - φ y| ≤ Λ * dist x y) :
    ∃ U : X → ℝ, (∀ x y, |U x - U y| ≤ Λ * dist x y) ∧ ∀ x ∈ S, U x = φ x := by
  lift Λ to ℝ≥0 using hΛ
  have hL : LipschitzOnWith Λ φ S :=
    LipschitzOnWith.of_dist_le_mul fun x hx y hy => by
      simpa only [Real.dist_eq] using hφ x hx y hy
  obtain ⟨U, hU, hUφ⟩ := hL.extend_real
  exact ⟨U, fun x y => by simpa only [Real.dist_eq] using hU.dist_le_mul x y,
    fun x hx => (hUφ hx).symm⟩

/-- Blueprint `step:p1:mc-components`. In the max norm a map into `ℝ^d` is `Λ`-Lipschitz exactly
when each component is, so the componentwise extensions give a `Λ`-Lipschitz extension. -/
theorem mcshane_components {d : ℕ} {Λ : ℝ} (hΛ : 0 ≤ Λ) {φ : X → Fin d → ℝ}
    (hφ : ∀ x ∈ S, ∀ y ∈ S, ‖φ x - φ y‖ ≤ Λ * dist x y) :
    ∃ U : X → Fin d → ℝ, (∀ x y, ‖U x - U y‖ ≤ Λ * dist x y) ∧ ∀ x ∈ S, U x = φ x := by
  have hcomp : ∀ j : Fin d, ∃ U : X → ℝ, (∀ x y, |U x - U y| ≤ Λ * dist x y) ∧
      ∀ x ∈ S, U x = φ x j := by
    intro j
    refine mcshane_component hΛ fun x hx y hy => ?_
    have h := (norm_le_pi_norm (φ x - φ y) j).trans (hφ x hx y hy)
    simpa using h
  choose U hU hUφ using hcomp
  refine ⟨fun x j => U j x, fun x y => ?_, fun x hx => funext fun j => hUφ j x hx⟩
  refine (pi_norm_le_iff_of_nonneg (mul_nonneg hΛ dist_nonneg)).2 fun j => ?_
  simpa using hU j x y

/-- Clamping to `[-β, β]` is `1`-Lipschitz. -/
theorem abs_clamp_sub_clamp_le (β s t : ℝ) :
    |max (-β) (min β s) - max (-β) (min β t)| ≤ |s - t| := by
  have h : LipschitzWith 1 fun r : ℝ => max (-β) (min β r) :=
    LipschitzWith.id.const_min β |>.const_max (-β)
  simpa [Real.dist_eq] using h.dist_le_mul s t

/-- Blueprint `step:p1:mc-clamp`. Clamping an extension `U` to `[-β, β]` in each coordinate keeps
it `Λ`-Lipschitz and an extension of `φ` (because `|φ| ≤ β` on `S`), and gives `|Φ| ≤ β`. -/
theorem mcshane_clamp {d : ℕ} {Λ β : ℝ} (hβ : 0 ≤ β) {φ U : X → Fin d → ℝ}
    (hU : ∀ x y, ‖U x - U y‖ ≤ Λ * dist x y) (hUφ : ∀ x ∈ S, U x = φ x)
    (hφβ : ∀ x ∈ S, ‖φ x‖ ≤ β) :
    ∃ Φ : X → Fin d → ℝ, (∀ x y, ‖Φ x - Φ y‖ ≤ Λ * dist x y) ∧ (∀ x ∈ S, Φ x = φ x) ∧
      ∀ x, ‖Φ x‖ ≤ β := by
  refine ⟨fun x j => max (-β) (min β (U x j)), fun x y => ?_, fun x hx => ?_, fun x => ?_⟩
  · refine (pi_norm_le_iff_of_nonneg ((norm_nonneg _).trans (hU x y))).2 fun j => ?_
    have h1 : ‖U x j - U y j‖ ≤ Λ * dist x y :=
      (norm_le_pi_norm (U x - U y) j).trans (hU x y)
    rw [Real.norm_eq_abs] at h1 ⊢
    exact (abs_clamp_sub_clamp_le β _ _).trans h1
  · funext j
    have h1 : |φ x j| ≤ β := (norm_le_pi_norm (φ x) j).trans (hφβ x hx)
    rw [abs_le] at h1
    simp only [← hUφ x hx] at h1 ⊢
    rw [min_eq_right h1.2, max_eq_right h1.1]
  · refine (pi_norm_le_iff_of_nonneg hβ).2 fun j => ?_
    rw [Real.norm_eq_abs, abs_le]
    exact ⟨le_max_left _ _, max_le (by linarith) (min_le_left _ _)⟩

/-- Blueprint `bp:p1:mcshane`. A map from a subset `S` of a metric space to `ℝ^d` (max norm) with
`‖φ x - φ y‖ ≤ Λ * dist x y` on `S` and `Λ ≥ 0` extends to a map `Φ` on the whole space with the
same bound; and for `β ≥ 0` with `‖φ‖ ≤ β` on `S` the extension can be chosen with `‖Φ‖ ≤ β`. -/
theorem mcshane {d : ℕ} {Λ : ℝ} (hΛ : 0 ≤ Λ) {φ : X → Fin d → ℝ}
    (hφ : ∀ x ∈ S, ∀ y ∈ S, ‖φ x - φ y‖ ≤ Λ * dist x y) :
    (∃ Φ : X → Fin d → ℝ, (∀ x y, ‖Φ x - Φ y‖ ≤ Λ * dist x y) ∧ ∀ x ∈ S, Φ x = φ x) ∧
      ∀ β : ℝ, 0 ≤ β → (∀ x ∈ S, ‖φ x‖ ≤ β) →
        ∃ Φ : X → Fin d → ℝ, (∀ x y, ‖Φ x - Φ y‖ ≤ Λ * dist x y) ∧ (∀ x ∈ S, Φ x = φ x) ∧
          ∀ x, ‖Φ x‖ ≤ β := by
  obtain ⟨U, hU, hUφ⟩ := mcshane_components hΛ hφ
  exact ⟨⟨U, hU, hUφ⟩, fun β hβ hφβ => mcshane_clamp hβ hU hUφ hφβ⟩

/-- Blueprint `bp:p1:mcshane` with target `ℝⁿ × ℝⁿ` (max norm of the two components), the
identification of `ℝ^(2n)` with `ℝⁿ × ℝⁿ` of `bp:p1:lip-image-product`: the extension is built
from the extensions of the two components. -/
theorem mcshane_prod {n : ℕ} {Λ : ℝ} (hΛ : 0 ≤ Λ) {φ : X → (Fin n → ℝ) × (Fin n → ℝ)}
    (hφ : ∀ x ∈ S, ∀ y ∈ S, ‖φ x - φ y‖ ≤ Λ * dist x y) :
    (∃ Φ : X → (Fin n → ℝ) × (Fin n → ℝ), (∀ x y, ‖Φ x - Φ y‖ ≤ Λ * dist x y) ∧
        ∀ x ∈ S, Φ x = φ x) ∧
      ∀ β : ℝ, 0 ≤ β → (∀ x ∈ S, ‖φ x‖ ≤ β) →
        ∃ Φ : X → (Fin n → ℝ) × (Fin n → ℝ), (∀ x y, ‖Φ x - Φ y‖ ≤ Λ * dist x y) ∧
          (∀ x ∈ S, Φ x = φ x) ∧ ∀ x, ‖Φ x‖ ≤ β := by
  have h1 : ∀ x ∈ S, ∀ y ∈ S, ‖(φ x).1 - (φ y).1‖ ≤ Λ * dist x y := fun x hx y hy =>
    (norm_fst_le (φ x - φ y)).trans (hφ x hx y hy)
  have h2 : ∀ x ∈ S, ∀ y ∈ S, ‖(φ x).2 - (φ y).2‖ ≤ Λ * dist x y := fun x hx y hy =>
    (norm_snd_le (φ x - φ y)).trans (hφ x hx y hy)
  have hLip : ∀ Φ₁ Φ₂ : X → Fin n → ℝ, (∀ x y, ‖Φ₁ x - Φ₁ y‖ ≤ Λ * dist x y) →
      (∀ x y, ‖Φ₂ x - Φ₂ y‖ ≤ Λ * dist x y) →
      ∀ x y, ‖(Φ₁ x, Φ₂ x) - (Φ₁ y, Φ₂ y)‖ ≤ Λ * dist x y := fun Φ₁ Φ₂ g₁ g₂ x y => by
    rw [Prod.norm_def]
    exact max_le (g₁ x y) (g₂ x y)
  refine ⟨?_, fun β hβ hφβ => ?_⟩
  · obtain ⟨Φ₁, g₁, e₁⟩ := (mcshane hΛ h1).1
    obtain ⟨Φ₂, g₂, e₂⟩ := (mcshane hΛ h2).1
    refine ⟨fun x => (Φ₁ x, Φ₂ x), hLip Φ₁ Φ₂ g₁ g₂, fun x hx => ?_⟩
    exact Prod.ext (e₁ x hx) (e₂ x hx)
  · obtain ⟨Φ₁, g₁, e₁, b₁⟩ := (mcshane hΛ h1).2 β hβ fun x hx =>
      (norm_fst_le (φ x)).trans (hφβ x hx)
    obtain ⟨Φ₂, g₂, e₂, b₂⟩ := (mcshane hΛ h2).2 β hβ fun x hx =>
      (norm_snd_le (φ x)).trans (hφβ x hx)
    refine ⟨fun x => (Φ₁ x, Φ₂ x), hLip Φ₁ Φ₂ g₁ g₂, fun x hx => Prod.ext (e₁ x hx) (e₂ x hx),
      fun x => ?_⟩
    rw [Prod.norm_def]
    exact max_le (b₁ x) (b₂ x)

end KAM
