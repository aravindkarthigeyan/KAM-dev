/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.ODE.Basic
public import KAM.Kepler.Plane
public import KAM.Frozen.Planetary.Defs.IsNewtonSolution
public import KAM.Frozen.Planetary.Defs.IsFixedSolution
public import KAM.Frozen.Iso.Defs.IsRestrictedSolutionOn
public import KAM.Frozen.Iso.Defs.CollisionFree
public import KAM.Frozen.Iso.Defs.RestrictedVectorField
public import KAM.Frozen.Iso.Defs.Radius

/-!
# Newtonian domains, fields and regions

Blueprint N Part 3 (`bpN:p3:newton-reduction`, `bpN:p3:newton-continuation`): the total
fields `newtonField`, `fixedField`, `restrictedField` on the collision-free open sets
`newtonDomain`, `fixedDomain`, `restrictedDomain`, and the regions `newtonRegion`,
`fixedRegion`, `restrictedRegion` bounded away from collisions with bounded velocities.

The plane-length helpers are in `KAM.Kepler.Plane` and are not redeclared here.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

namespace KAM.ODE

section Newton

/-- `W_N`: positive mutual distances. -/
def newtonDomain (N : ℕ) : Set ((Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :=
  {x | ∀ i j, i ≠ j → 0 < KAM.Planetary.planeLength (x.1 j - x.1 i)}

/-- `F_N(q, v) = (v, (∑_{j ≠ i} G m_j ℓ⁻³ (q_j - q_i))_i)`. -/
def newtonField (N : ℕ) (G : ℝ) (mass : Fin N → ℝ)
    (x : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :
    (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ) :=
  (x.2, fun i => ∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
    (G * mass j / KAM.Planetary.planeLength (x.1 j - x.1 i) ^ 3) • (x.1 j - x.1 i))

/-- `W_N' = W_N ∩ {ℓ(q_i) > 0}`. -/
def fixedDomain (N : ℕ) : Set ((Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :=
  newtonDomain N ∩ {x | ∀ i, 0 < KAM.Planetary.planeLength (x.1 i)}

/-- The fixed-center field `F'`. -/
def fixedField (N : ℕ) (G m₀ : ℝ) (m : Fin N → ℝ) (eps : ℝ)
    (x : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :
    (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ) :=
  (x.2, fun i => (-G * m₀ / KAM.Planetary.planeLength (x.1 i) ^ 3) • x.1 i +
    eps • ∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
      (G * m j / KAM.Planetary.planeLength (x.1 j - x.1 i) ^ 3) • (x.1 j - x.1 i))

/-- `W_μ`: the collision-free set of the restricted problem. -/
def restrictedDomain (μ : ℝ) : Set ((Fin 2 → ℝ) × (Fin 2 → ℝ)) :=
  {z | KAM.Iso.CollisionFree μ z}

/-- The total extension `F_μ` of `restrictedVectorField μ`, by the same formula. -/
def restrictedField (μ : ℝ) (z : (Fin 2 → ℝ) × (Fin 2 → ℝ)) : (Fin 2 → ℝ) × (Fin 2 → ℝ) :=
  (![z.2 0 + z.1 1, z.2 1 - z.1 0],
    ![z.2 1, -z.2 0] -
      ((1 - μ) / KAM.Iso.radius (z.1 - KAM.Iso.primary₁ μ) ^ 3) • (z.1 - KAM.Iso.primary₁ μ) -
      (μ / KAM.Iso.radius (z.1 - KAM.Iso.primary₂ μ) ^ 3) • (z.1 - KAM.Iso.primary₂ μ))

/-- On `W_μ`, `F_μ` is the frozen `restrictedVectorField`. -/
theorem restrictedField_eq (μ : ℝ)
    (z : {z : (Fin 2 → ℝ) × (Fin 2 → ℝ) // KAM.Iso.CollisionFree μ z}) :
    restrictedField μ z.val = KAM.Iso.restrictedVectorField μ z := rfl

/-- The region `Φ_{ρ, V̄}` of `bpN:p3:newton-continuation` (Newton field). -/
def newtonRegion (N : ℕ) (ρ Vbar : ℝ) : Set ((Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :=
  {x | (∀ i j, i ≠ j → ρ ≤ KAM.Planetary.planeLength (x.1 j - x.1 i)) ∧ ‖x.2‖ ≤ Vbar}

/-- The region of `bpN:p3:newton-continuation` for the fixed-center field. -/
def fixedRegion (N : ℕ) (ρ Vbar : ℝ) : Set ((Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :=
  newtonRegion N ρ Vbar ∩ {x | ∀ i, ρ ≤ KAM.Planetary.planeLength (x.1 i)}

/-- The region of `bpN:p3:newton-continuation` for the restricted field. -/
def restrictedRegion (μ ρ Vbar : ℝ) : Set ((Fin 2 → ℝ) × (Fin 2 → ℝ)) :=
  {z | ρ ≤ KAM.Iso.radius (z.1 - KAM.Iso.primary₁ μ) ∧
    ρ ≤ KAM.Iso.radius (z.1 - KAM.Iso.primary₂ μ) ∧ ‖z.1‖ ≤ Vbar ∧ ‖z.2‖ ≤ Vbar}

end Newton

end KAM.ODE
