/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Planetary.Poincare.Chart
public import KAM.Kepler.Mass

/-!
# The Poincaré chart: Delaunay form, symplecticity, elements, circular torus, means

`bpP:p7:poincare` (b)-(d), (f) and the mean values (`bpP:p7:kepler` (c) transported):

* (b) on `Γ > 0` the chart is the mass/strength Delaunay chart `delaunayMK` in the variables
  `(λ - g, g, Λ, Λ - Γ)` with `(ξ, η) = √(2Γ) e_g`;
* (c) the chart is symplectic of factor one on all of `𝒪` (polar pull-back on `{(ξ, η) ≠ 0}` where
  it factors through the Delaunay chart, then continuity of `fderiv` across `ξ = η = 0`);
* (d) the elements (energy, axis, action, angular momentum, Laplace-Runge-Lenz vector), by one
  algebraic computation valid also at `ξ = η = 0`;
* (f) the circular torus `Γ = 0`;
* the `λ`-means of `1/|q|`, `|p|²`, `|q|`.
-/

@[expose] public noncomputable section

open Set Metric Real Filter Topology
open scoped ContDiff

namespace KAM.Planetary

open KAM KAM.Kepler

section PoincareChart

private theorem sy_planeDot (v w : Fin 2 → ℝ) : planeDot v w = v 0 * w 0 + v 1 * w 1 := by
  simp [planeDot, Fin.sum_univ_two]

private theorem sy_planeSq (v : Fin 2 → ℝ) : planeSq v = v 0 ^ 2 + v 1 ^ 2 := by
  simp [planeSq, Fin.sum_univ_two]

/-- (f): the circular torus `Γ = 0`. -/
theorem poincare_circular {m κ : ℝ} (hm : 0 < m) (hκ : 0 < κ) {lam Λ : ℝ} (hΛ : 0 < Λ) :
    poincare m κ (![lam, 0], ![Λ, 0]) =
      ((Λ ^ 2 / (m ^ 2 * κ)) • (![Real.cos lam, Real.sin lam] : Fin 2 → ℝ),
       (m * √(κ / (Λ ^ 2 / (m ^ 2 * κ)))) • (![-Real.sin lam, Real.cos lam] : Fin 2 → ℝ)) := by
  have hΓ : poincareGamma ((![lam, 0], ![Λ, 0]) : Phase 2) = 0 := by simp [poincareGamma]
  have hK : poincareK ((![lam, 0], ![Λ, 0]) : Phase 2) = 1 := by simp [poincareK, hΓ]
  have hV : poincareV ((![lam, 0], ![Λ, 0]) : Phase 2) = 0 := by
    ext i; fin_cases i <;> simp [poincareV]
  have hF : poincareF ((![lam, 0], ![Λ, 0]) : Phase 2) = lam := by
    simp [poincareF, hV, keplerLong_zero_vec]
  have hs : √(κ / (Λ ^ 2 / (m ^ 2 * κ))) = m * κ / Λ := by
    rw [show κ / (Λ ^ 2 / (m ^ 2 * κ)) = (m * κ / Λ) ^ 2 by field_simp]
    exact Real.sqrt_sq (by positivity)
  rw [hs]
  unfold poincare
  rw [hK, hV, hF]
  refine Prod.ext ?_ ?_
  · ext i; fin_cases i <;> simp [orbitalUnit]
  · ext i; fin_cases i <;> simp [orbitalUnit, keplerJac, quarterTurn, sy_planeDot] <;>
      field_simp <;> simp

end PoincareChart

end KAM.Planetary

end
