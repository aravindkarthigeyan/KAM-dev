/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Kepler.Plane
public import KAM.Planetary.Newtonian.Barycentric
public import KAM.Planetary.Newtonian.Reconstruction
public import KAM.Frozen.Planetary.Defs.CircularPoint
public import KAM.Frozen.Planetary.Defs.CircularTube
public import KAM.Frozen.Planetary.Defs.PairBounds

/-!
# The circular tube: constants, geometry, Newton and fixed-Sun solutions inside it

Blueprint P, Part 6 (`bpP:p6:tube-constants`, `bpP:p6:tube-geometry` (a)-(e),
`bpP:p6:newton-in-tube`): the typing data `AxisData` (a lower bound `γ` of the axes and their gaps,
an upper bound `A` of the axes), the canonical choices `axisGap`, `axisMax`, the tube constants
`ζ_* = min {η, γ/6}`, `d = γ/2`, `D = 2A + γ`; the geometry of the frozen `circularTube` (monotone in
the radius, Euclidean closeness with the factor `√2`, distances, the pair bounds `d ≤ ℓ ≤ D` and
hence no collision, and their `μ`-independent form for the barycentric and the fixed-Sun
configurations); and the two consequences for orbits staying in the tube: a moving-Sun orbit gives
a Newton solution (`newton_in_tube`) and a fixed-Sun orbit gives the fixed-Sun equations
(`fixed_in_tube`), each with the pair bounds along the orbit.
-/

@[expose] public noncomputable section

open Real

namespace KAM.Planetary

open KAM KAM.Kepler

section Tube

variable {n : ℕ}

/-- Typing data of `bpP:p6:tube-constants`: `γ` is a lower bound of the axes and their gaps, `A` an upper
bound of the axes. Hypotheses, not conclusions; `axisData_canonical` supplies them. -/
structure AxisData (a : Fin n → ℝ) (γ A : ℝ) : Prop where
  gap_pos : 0 < γ
  le_axis : ∀ i, γ ≤ a i
  le_diff : ∀ i j, i ≠ j → γ ≤ |a i - a j|
  axis_le : ∀ i, a i ≤ A

def axisMax (a : Fin n → ℝ) : ℝ := ⨆ i, a i
def axisGap (a : Fin n → ℝ) : ℝ :=
  sInf ({x | ∃ i, x = a i} ∪ {x | ∃ i j, i ≠ j ∧ x = |a i - a j|})

theorem axisData_canonical (hn : 0 < n) {a : Fin n → ℝ} (ha : ∀ i, 0 < a i)
    (hinj : Function.Injective a) :
    AxisData a (axisGap a) (axisMax a) := by
  set S : Set ℝ := {x | ∃ i, x = a i} ∪ {x | ∃ i j, i ≠ j ∧ x = |a i - a j|} with hS
  have hfin : S.Finite := by
    refine Set.Finite.union ?_ ?_
    · exact (Set.finite_range a).subset fun x ⟨i, hi⟩ => ⟨i, hi.symm⟩
    · exact (Set.finite_range fun p : Fin n × Fin n => |a p.1 - a p.2|).subset
        fun x ⟨i, j, _, hx⟩ => ⟨(i, j), hx.symm⟩
  have hne : S.Nonempty := ⟨a ⟨0, hn⟩, Or.inl ⟨_, rfl⟩⟩
  have hmem : sInf S ∈ S := hne.csInf_mem hfin
  have hbdd : BddBelow S := hfin.bddBelow
  have hpos : ∀ x ∈ S, 0 < x := by
    rintro x (⟨i, rfl⟩ | ⟨i, j, hij, rfl⟩)
    · exact ha i
    · exact abs_pos.mpr (sub_ne_zero.mpr fun h => hij (hinj h))
  refine ⟨hpos _ hmem, fun i => csInf_le hbdd (Or.inl ⟨i, rfl⟩),
    fun i j hij => csInf_le hbdd (Or.inr ⟨i, j, hij, rfl⟩), fun i => ?_⟩
  exact le_ciSup (Set.finite_range a).bddAbove i

/-- `ζ_* = min {η, γ/6}`, `d = γ/2`, `D = 2A + γ`. -/
def tubeRadius (η γ : ℝ) : ℝ := min η (γ / 6)
def tubeD (γ : ℝ) : ℝ := γ / 2
def tubeBigD (γ A : ℝ) : ℝ := 2 * A + γ

theorem tubeRadius_pos {η γ : ℝ} (hη : 0 < η) (hγ : 0 < γ) : 0 < tubeRadius η γ :=
  lt_min hη (by positivity)

theorem tubeD_lt_tubeBigD {a : Fin n → ℝ} {γ A : ℝ} (h : AxisData a γ A) (hn : 0 < n) :
    tubeD γ < tubeBigD γ A := by
  have hA : γ ≤ A := (h.le_axis ⟨0, hn⟩).trans (h.axis_le ⟨0, hn⟩)
  have hγ := h.gap_pos
  unfold tubeD tubeBigD
  linarith

/-! ### Helpers -/

/-- The unit vector `(cos θ, sin θ)` has Euclidean length one. -/
private theorem planeLength_cos_sin (θ : ℝ) :
    planeLength (![Real.cos θ, Real.sin θ] : Fin 2 → ℝ) = 1 := by
  unfold planeLength planeSq
  simp [Fin.sum_univ_two, Real.cos_sq_add_sin_sq]

/-- The length of a positive multiple of the unit vector `(cos θ, sin θ)`. -/
private theorem planeLength_smul_cos_sin {r : ℝ} (hr : 0 < r) (θ : ℝ) :
    planeLength (r • (![Real.cos θ, Real.sin θ] : Fin 2 → ℝ)) = r := by
  rw [planeLength_smul, planeLength_cos_sin, abs_of_pos hr, mul_one]

/-- The body block of the first component of a circular point. -/
private theorem bodyVector_circularPoint_fst (G m0 : ℝ) (m a : Fin n → ℝ) (φ : Fin n → ℝ)
    (i : Fin n) :
    bodyVector (circularPoint G m0 m a φ).1 i =
      a i • (![Real.cos (2 * π * φ i), Real.sin (2 * π * φ i)] : Fin 2 → ℝ) := by
  ext k
  simp only [bodyVector, circularPoint, Equiv.symm_apply_apply, Pi.smul_apply, smul_eq_mul]

/-- A body block of a difference is bounded by the sup norm of the difference. -/
private theorem norm_bodyVector_sub_le (u v : Fin (n * 2) → ℝ) (i : Fin n) :
    ‖bodyVector u i - bodyVector v i‖ ≤ ‖u - v‖ := by
  refine (pi_norm_le_iff_of_nonneg (norm_nonneg _)).mpr fun k => ?_
  exact norm_le_pi_norm (u - v) (finProdFinEquiv (i, k))

/-- The slack function: lengths of the difference of two bounded vectors. -/
private theorem planeLength_sub_sub_le (x y u v : Fin 2 → ℝ) :
    planeLength ((x - u) - (y - v)) ≤ planeLength (x - u) + planeLength (y - v) := by
  rw [sub_eq_add_neg, ← planeLength_neg (y - v)]
  exact planeLength_add_le _ _

private theorem sqrt_two_le : √2 ≤ 3 / 2 := by
  rw [Real.sqrt_le_left (by norm_num)]
  norm_num

/-! ### `bpP:p6:tube-geometry` -/

/-- `bpP:p6:tube-geometry` (a): monotone in the radius (and `U_ζ ⊆ U_η` for `ζ ≤ η`). -/
theorem circularTube_mono {G m0 : ℝ} {m a : Fin n → ℝ} {ζ ζ' : ℝ} (h : ζ ≤ ζ') :
    circularTube G m0 m a ζ ⊆ circularTube G m0 m a ζ' := by
  rintro z ⟨φ, hφ⟩
  exact ⟨φ, lt_of_lt_of_le hφ h⟩

/-- (b): Euclidean closeness with the factor `√2`. -/
theorem circularTube_euclidean {G m0 : ℝ} {m a : Fin n → ℝ} {ζ : ℝ} {z : Phase (n * 2)}
    (hz : z ∈ circularTube G m0 m a ζ) :
    ∃ φ : Fin n → ℝ, ∀ i, planeLength (bodyVector z.1 i -
        a i • (![Real.cos (2 * π * φ i), Real.sin (2 * π * φ i)] : Fin 2 → ℝ)) < √2 * ζ := by
  obtain ⟨φ, hφ⟩ := hz
  refine ⟨φ, fun i => ?_⟩
  have h1 : ‖bodyVector z.1 i - bodyVector (circularPoint G m0 m a φ).1 i‖ < ζ :=
    lt_of_le_of_lt ((norm_bodyVector_sub_le _ _ i).trans (norm_fst_le (z - circularPoint G m0 m a φ)))
      hφ
  rw [bodyVector_circularPoint_fst] at h1
  calc planeLength _ ≤ √2 * ‖bodyVector z.1 i -
        a i • (![Real.cos (2 * π * φ i), Real.sin (2 * π * φ i)] : Fin 2 → ℝ)‖ :=
        planeLength_le_sqrt_two_mul_norm _
    _ < √2 * ζ := mul_lt_mul_of_pos_left h1 (by positivity)

/-- (c): distances. -/
theorem circularTube_distances {G m0 : ℝ} {m a : Fin n → ℝ} {ζ : ℝ} {z : Phase (n * 2)}
    (hz : z ∈ circularTube G m0 m a ζ) (ha : ∀ i, 0 < a i) :
    (∀ i, a i - √2 * ζ < planeLength (bodyVector z.1 i) ∧
      planeLength (bodyVector z.1 i) < a i + √2 * ζ) ∧
    (∀ i j, i ≠ j → |a i - a j| - 2 * √2 * ζ < planeLength (bodyVector z.1 j - bodyVector z.1 i) ∧
      planeLength (bodyVector z.1 j - bodyVector z.1 i) < a i + a j + 2 * √2 * ζ) := by
  obtain ⟨φ, hφ⟩ := circularTube_euclidean hz
  set c : Fin n → Fin 2 → ℝ := fun i =>
    a i • (![Real.cos (2 * π * φ i), Real.sin (2 * π * φ i)] : Fin 2 → ℝ) with hc
  have hcl : ∀ i, planeLength (c i) = a i := fun i => planeLength_smul_cos_sin (ha i) _
  have he : ∀ i, planeLength (bodyVector z.1 i - c i) < √2 * ζ := hφ
  refine ⟨fun i => ?_, fun i j _ => ?_⟩
  · have h := abs_planeLength_sub_le (bodyVector z.1 i) (c i)
    rw [hcl] at h
    have h2 := lt_of_le_of_lt h (he i)
    rw [abs_lt] at h2
    constructor <;> linarith [h2.1, h2.2]
  · -- the centres
    have hB := abs_planeLength_sub_le (c j) (c i)
    rw [hcl, hcl] at hB
    have hB1 : |a j - a i| ≤ planeLength (c j - c i) := hB
    have hB2 : planeLength (c j - c i) ≤ a i + a j := by
      have := planeLength_add_le (c j) (-c i)
      rw [← sub_eq_add_neg, planeLength_neg, hcl, hcl] at this
      linarith
    -- the errors
    have hE : planeLength ((bodyVector z.1 j - c j) - (bodyVector z.1 i - c i)) < 2 * √2 * ζ := by
      have := planeLength_sub_sub_le (bodyVector z.1 j) (bodyVector z.1 i) (c j) (c i)
      linarith [he i, he j]
    have hdiff : (bodyVector z.1 j - bodyVector z.1 i) - (c j - c i) =
        (bodyVector z.1 j - c j) - (bodyVector z.1 i - c i) := by abel
    have hA := abs_planeLength_sub_le (bodyVector z.1 j - bodyVector z.1 i) (c j - c i)
    rw [hdiff] at hA
    have hA' := lt_of_le_of_lt hA hE
    rw [abs_lt] at hA'
    rw [abs_sub_comm (a i) (a j)]
    constructor <;> linarith [hA'.1, hA'.2]

/-- (d): `d ≤ ℓ ≤ D`, hence no collision. -/
theorem circularTube_pair_bounds {G m0 : ℝ} {m a : Fin n → ℝ} {γ A ζ : ℝ} (h : AxisData a γ A)
    (hζ : 0 < ζ) (hζ' : ζ ≤ γ / 6) {z : Phase (n * 2)} (hz : z ∈ circularTube G m0 m a ζ) :
    (∀ i, tubeD γ ≤ planeLength (bodyVector z.1 i) ∧ planeLength (bodyVector z.1 i) ≤ tubeBigD γ A) ∧
    (∀ i j, i ≠ j → tubeD γ ≤ planeLength (bodyVector z.1 j - bodyVector z.1 i) ∧
      planeLength (bodyVector z.1 j - bodyVector z.1 i) ≤ tubeBigD γ A) ∧ NoCollision z.1 := by
  have hγ := h.gap_pos
  have ha : ∀ i, 0 < a i := fun i => lt_of_lt_of_le hγ (h.le_axis i)
  obtain ⟨hs, hp⟩ := circularTube_distances hz ha
  have hsζ : √2 * ζ ≤ γ / 4 := by
    calc √2 * ζ ≤ (3 / 2) * ζ := mul_le_mul_of_nonneg_right sqrt_two_le hζ.le
      _ ≤ γ / 4 := by linarith
  have hs' : ∀ i, tubeD γ ≤ planeLength (bodyVector z.1 i) ∧
      planeLength (bodyVector z.1 i) ≤ tubeBigD γ A := by
    intro i
    have h1 := h.le_axis i
    have h2 := h.axis_le i
    have hs_i := hs i
    unfold tubeD tubeBigD
    constructor <;> linarith [hs_i.1, hs_i.2]
  have hp' : ∀ i j, i ≠ j → tubeD γ ≤ planeLength (bodyVector z.1 j - bodyVector z.1 i) ∧
      planeLength (bodyVector z.1 j - bodyVector z.1 i) ≤ tubeBigD γ A := by
    intro i j hij
    have h1 := h.le_axis i
    have h2 := h.axis_le i
    have h3 := h.le_axis j
    have h4 := h.axis_le j
    have h5 := h.le_diff i j hij
    have hp_ij := hp i j hij
    unfold tubeD tubeBigD
    constructor <;> linarith [hp_ij.1, hp_ij.2]
  refine ⟨hs', hp', fun i => ?_, fun i j hij => ?_⟩
  · exact lt_of_lt_of_le (by unfold tubeD; linarith) (hs' i).1
  · rw [planeLength_sub_comm]
    exact lt_of_lt_of_le (by unfold tubeD; linarith) (hp' i j hij).1

/-- The pair bounds of a configuration with the Sun first: it suffices to bound the Sun-planet
distances and the planet-planet distances (in one direction). -/
private theorem pairBounds_of_succ {d D : ℝ} {Q : Fin (n + 1) → Fin 2 → ℝ}
    (h0 : ∀ j : Fin n, d ≤ planeLength (Q j.succ - Q 0) ∧ planeLength (Q j.succ - Q 0) ≤ D)
    (hs : ∀ i j : Fin n, i ≠ j →
      d ≤ planeLength (Q j.succ - Q i.succ) ∧ planeLength (Q j.succ - Q i.succ) ≤ D) :
    PairBounds d D Q := by
  intro i j hij
  rcases Fin.eq_zero_or_eq_succ i with rfl | ⟨i', rfl⟩
  · rcases Fin.eq_zero_or_eq_succ j with rfl | ⟨j', rfl⟩
    · exact absurd rfl hij
    · exact h0 j'
  · rcases Fin.eq_zero_or_eq_succ j with rfl | ⟨j', rfl⟩
    · rw [planeLength_sub_comm]
      exact h0 i'
    · exact hs i' j' fun h => hij (congrArg Fin.succ h)

/-- (e): exact `μ`-independence of the pair bounds for the barycentric and the fixed-Sun configurations. -/
theorem circularTube_pairBounds_barycentric {G m0 μ : ℝ} {m a : Fin n → ℝ} {γ A ζ : ℝ}
    (h : AxisData a γ A)
    (hζ : 0 < ζ) (hζ' : ζ ≤ γ / 6) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ)
    {z : Phase (n * 2)} (hz : z ∈ circularTube G m0 m a ζ) :
    PairBounds (tubeD γ) (tubeBigD γ A) (barycentricPositions m0 m μ z.1) := by
  have _ := hm0
  have _ := hm
  have _ := hμ
  obtain ⟨hs, hp, -⟩ := circularTube_pair_bounds h hζ hζ' hz
  refine pairBounds_of_succ (fun j => ?_) (fun i j hij => ?_)
  · rw [barycentricPositions_succ_sub_zero]
    exact hs j
  · rw [barycentricPositions_succ_sub_succ]
    exact hp i j hij

theorem circularTube_pairBounds_fixed {G m0 : ℝ} {m a : Fin n → ℝ} {γ A ζ : ℝ}
    (h : AxisData a γ A)
    (hζ : 0 < ζ) (hζ' : ζ ≤ γ / 6) {z : Phase (n * 2)} (hz : z ∈ circularTube G m0 m a ζ) :
    PairBounds (tubeD γ) (tubeBigD γ A)
      (Fin.cons (0 : Fin 2 → ℝ) (fun i => bodyVector z.1 i) : Fin (n + 1) → Fin 2 → ℝ) := by
  obtain ⟨hs, hp, -⟩ := circularTube_pair_bounds h hζ hζ' hz
  refine pairBounds_of_succ (fun j => ?_) (fun i j hij => ?_)
  · simpa using hs j
  · simpa using hp i j hij

/-! ### `bpP:p6:newton-in-tube` -/

/-- `bpP:p6:newton-in-tube`, moving Sun, on any set of times (fixed Sun: `fixed_in_tube`). -/
theorem newton_in_tube {G m0 μ : ℝ} {m a : Fin n → ℝ} {γ A ζ : ℝ} (h : AxisData a γ A)
    (hζ : 0 < ζ) (hζ' : ζ ≤ γ / 6)
    (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ) {J : Set ℝ}
    {z : ℝ → Phase (n * 2)}
    (hz : ∀ t ∈ J, z t ∈ circularTube G m0 m a ζ ∧
      HasDerivAt z (hamiltonianVectorField (movingHamiltonian G m0 m μ) (z t)) t) :
    IsNewtonSolutionOn (fun k => G * actualMasses m0 m μ k) J
      (fun t => barycentricPositions m0 m μ (z t).1)
      (fun t => barycentricVelocities m0 m μ (z t).2) ∧
    ∀ t ∈ J, PairBounds (tubeD γ) (tubeBigD γ A) (barycentricPositions m0 m μ (z t).1) :=
  ⟨reconstruction hG hm0 hm hμ fun t ht =>
      ⟨(circularTube_pair_bounds h hζ hζ' (hz t ht).1).2.2, (hz t ht).2⟩,
    fun t ht => circularTube_pairBounds_barycentric h hζ hζ' hm0 hm hμ (hz t ht).1⟩

/-- F4: the fixed-Sun companion of `newton_in_tube` (finite-time equations and pair bounds). -/
theorem fixed_in_tube {G m0 ε : ℝ} {m a : Fin n → ℝ} {γ A ζ : ℝ} (h : AxisData a γ A)
    (hζ : 0 < ζ) (hζ' : ζ ≤ γ / 6)
    (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) {J : Set ℝ} {z : ℝ → Phase (n * 2)}
    (hz : ∀ t ∈ J, z t ∈ circularTube G m0 m a ζ ∧
      HasDerivAt z (hamiltonianVectorField (fixedHamiltonian G m0 m ε) (z t)) t) :
    (∀ t ∈ J, NoCollision (z t).1) ∧
    (∀ t ∈ J, ∀ i, HasDerivAt (fun s => bodyVector (z s).1 i) ((1 / m i) • bodyVector (z t).2 i) t ∧
      HasDerivAt (fun s => (1 / m i) • bodyVector (z s).2 i)
        ((-G * m0 / planeLength (bodyVector (z t).1 i) ^ 3) • bodyVector (z t).1 i +
          ε • ∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
            (G * m j / planeLength (bodyVector (z t).1 j - bodyVector (z t).1 i) ^ 3) •
              (bodyVector (z t).1 j - bodyVector (z t).1 i)) t) ∧
    (∀ t ∈ J, PairBounds (tubeD γ) (tubeBigD γ A)
      (Fin.cons (0 : Fin 2 → ℝ) (fun i => bodyVector (z t).1 i) : Fin (n + 1) → Fin 2 → ℝ)) := by
  have _ := hG
  have hnc : ∀ t ∈ J, NoCollision (z t).1 := fun t ht =>
    (circularTube_pair_bounds h hζ hζ' (hz t ht).1).2.2
  have R := reconstruction_fixed (G := G) (ε := ε) hm0 hm (J := J) (z := z)
    fun t ht => ⟨hnc t ht, (hz t ht).2⟩
  exact ⟨hnc, fun t ht i => ⟨R.2.2.1 t ht i, R.2.2.2 t ht i⟩,
    fun t ht => circularTube_pairBounds_fixed h hζ hζ' (hz t ht).1⟩

end Tube

end KAM.Planetary

end
