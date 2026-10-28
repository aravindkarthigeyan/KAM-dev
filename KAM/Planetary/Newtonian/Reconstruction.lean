/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Planetary.Newtonian.Models
public import KAM.Planetary.Newtonian.Barycentric
public import KAM.Frozen.Planetary.Defs.IsNewtonSolution
public import KAM.Frozen.Planetary.Defs.IsNewtonSolutionOn
public import KAM.Frozen.Planetary.Defs.IsFixedSolution
public import KAM.Frozen.Planetary.Defs.IsPhysicalTorus
public import KAM.Frozen.Planetary.Defs.IsMovingSolutionOn

/-!
# Reconstruction of Newton solutions

Blueprint P, Part 6 (`bpP:p6:reconstruction`, `bpP:p6:units`, `bpP:p6:reconstruction-fixed`,
`bpP:p6:orbit-transfer`): an orbit of the moving-Sun Hamiltonian, read through the frozen
barycentric maps, solves Newton's equations with the actual masses (pointwise in time, on an
arbitrary set `J` of times); an orbit of the fixed-Sun Hamiltonian solves the fixed-centre
equations; the frozen torus predicate (clause (viii)) transfers both statements to the orbits
`t ↦ K (φ + t • w)` of an invariant torus.
-/

public section

open scoped BigOperators

namespace KAM.Planetary

open KAM KAM.Kepler

section Reconstruction

variable {n : ℕ} {m0 μ : ℝ} {m : Fin n → ℝ}

/-! ### Index bookkeeping and the Hamilton fields in body blocks -/

private theorem sum_filter_ne_zero {E : Type*} [AddCommMonoid E] (F : Fin (n + 1) → E) :
    ∑ l ∈ Finset.univ.filter (fun l => l ≠ 0), F l = ∑ j : Fin n, F j.succ := by
  rw [Finset.sum_filter, Fin.sum_univ_succ]
  simp

private theorem sum_filter_ne_succ {E : Type*} [AddCommMonoid E] (F : Fin (n + 1) → E)
    (i : Fin n) :
    ∑ l ∈ Finset.univ.filter (fun l => l ≠ i.succ), F l =
      F 0 + ∑ j ∈ Finset.univ.filter (fun j => j ≠ i), F j.succ := by
  have h0 : (0 : Fin (n + 1)) ≠ i.succ := (Fin.succ_ne_zero i).symm
  rw [Finset.sum_filter, Finset.sum_filter, Fin.sum_univ_succ]
  simp [h0, Fin.succ_inj]

/-- Position block of the moving Hamilton field. -/
private theorem hvf_moving_pos (G m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) {z : Phase (n * 2)}
    (hz : NoCollision z.1) (i : Fin n) :
    bodyVector (hamiltonianVectorField (movingHamiltonian G m0 m μ) z).1 i =
      (1 / m i) • bodyVector z.2 i + (μ / m0) • ∑ j, bodyVector z.2 j := by
  ext c
  have h := (hamiltonianVectorField_moving G m0 m μ hz i c).1
  show (hamiltonianVectorField (movingHamiltonian G m0 m μ) z).1 (finProdFinEquiv (i, c)) = _
  rw [h]
  simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, Finset.sum_apply]
  ring

/-- Momentum block of the moving Hamilton field. -/
private theorem hvf_moving_mom (G m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) {z : Phase (n * 2)}
    (hz : NoCollision z.1) (i : Fin n) :
    bodyVector (hamiltonianVectorField (movingHamiltonian G m0 m μ) z).2 i =
      -(G * m0 * m i) • gKernel (fun j => bodyVector z.1 j) i +
        (μ * G * m i) • fKernel m (fun j => bodyVector z.1 j) i := by
  ext c
  exact (hamiltonianVectorField_moving G m0 m μ hz i c).2

/-- Position block of the fixed Hamilton field. -/
private theorem hvf_fixed_pos (G m0 : ℝ) (m : Fin n → ℝ) (ε : ℝ) {z : Phase (n * 2)}
    (hz : NoCollision z.1) (i : Fin n) :
    bodyVector (hamiltonianVectorField (fixedHamiltonian G m0 m ε) z).1 i =
      (1 / m i) • bodyVector z.2 i := by
  ext c
  have h := (hamiltonianVectorField_fixed G m0 m ε hz i c).1
  show (hamiltonianVectorField (fixedHamiltonian G m0 m ε) z).1 (finProdFinEquiv (i, c)) = _
  rw [h]
  simp only [Pi.smul_apply, smul_eq_mul]
  ring

/-- Momentum block of the fixed Hamilton field. -/
private theorem hvf_fixed_mom (G m0 : ℝ) (m : Fin n → ℝ) (ε : ℝ) {z : Phase (n * 2)}
    (hz : NoCollision z.1) (i : Fin n) :
    bodyVector (hamiltonianVectorField (fixedHamiltonian G m0 m ε) z).2 i =
      -(G * m0 * m i) • gKernel (fun j => bodyVector z.1 j) i +
        (ε * G * m i) • fKernel m (fun j => bodyVector z.1 j) i := by
  ext c
  exact (hamiltonianVectorField_fixed G m0 m ε hz i c).2

/-- The acceleration `(1 / m_i) b_i` of body `i`, in the form of the frozen force law. -/
private theorem smul_accel (G m0 c : ℝ) (m : Fin n → ℝ) (i : Fin n) (hmi : m i ≠ 0)
    (q : Fin n → Fin 2 → ℝ) :
    (1 / m i) • (-(G * m0 * m i) • gKernel q i + (c * G * m i) • fKernel m q i) =
      (-G * m0 / planeLength (q i) ^ 3) • q i +
        c • ∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
          (G * m j / planeLength (q j - q i) ^ 3) • (q j - q i) := by
  simp only [gKernel, fKernel, smul_add, smul_smul, Finset.smul_sum]
  congr 1
  · congr 1
    field_simp
  · refine Finset.sum_congr rfl fun j _ => ?_
    congr 1
    field_simp

/-! ### The moving Sun: one time at a time -/

/-- Clause (a) of `bpP:p6:reconstruction` at one collision-free configuration. -/
private theorem planeLength_pos_barycentric {q : Fin (n * 2) → ℝ} (hq : NoCollision q)
    (i j : Fin (n + 1)) (hij : i ≠ j) :
    0 < planeLength (barycentricPositions m0 m μ q j - barycentricPositions m0 m μ q i) := by
  induction j using Fin.cases with
  | zero =>
    induction i using Fin.cases with
    | zero => exact absurd rfl hij
    | succ i' =>
      rw [← neg_sub, planeLength_neg, barycentricPositions_succ_sub_zero]
      exact hq.1 i'
  | succ j' =>
    induction i using Fin.cases with
    | zero =>
      rw [barycentricPositions_succ_sub_zero]
      exact hq.1 j'
    | succ i' =>
      rw [barycentricPositions_succ_sub_succ]
      exact hq.2 j' i' (fun h => hij (by rw [h]))

/-- Clause (b) of `bpP:p6:reconstruction` at one time (Steps `rc-sun`, `rc-planets`). -/
private theorem hasDerivAt_barycentricPositions (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    (hμ : 0 ≤ μ) {G : ℝ} {z : ℝ → Phase (n * 2)} {t : ℝ} (hnc : NoCollision (z t).1)
    (hd : HasDerivAt z (hamiltonianVectorField (movingHamiltonian G m0 m μ) (z t)) t)
    (i : Fin (n + 1)) :
    HasDerivAt (fun s => barycentricPositions m0 m μ (z s).1 i)
      (barycentricVelocities m0 m μ (z t).2 i) t := by
  have hM : 0 ≤ ∑ i, m i := Finset.sum_nonneg fun i _ => (hm i).le
  have hD : m0 + μ * ∑ i, m i ≠ 0 :=
    (add_pos_of_pos_of_nonneg hm0 (mul_nonneg hμ hM)).ne'
  have hbq : ∀ i : Fin n, HasDerivAt (fun s => bodyVector (z s).1 i)
      ((1 / m i) • bodyVector (z t).2 i + (μ / m0) • ∑ j, bodyVector (z t).2 j) t := fun i =>
    ((hasDerivAt_bodyVector hd i).1).congr_deriv (hvf_moving_pos G m0 m μ hnc i)
  have hx0 : HasDerivAt
      (fun s => (-μ / (m0 + μ * ∑ i, m i)) • ∑ i, m i • bodyVector (z s).1 i)
      ((-μ / m0) • ∑ j, bodyVector (z t).2 j) t := by
    have h := (HasDerivAt.fun_sum (u := Finset.univ)
      (fun i _ => (hbq i).const_smul (m i))).const_smul (-μ / (m0 + μ * ∑ i, m i))
    refine h.congr_deriv ?_
    have hs : ∑ i, m i • ((1 / m i) • bodyVector (z t).2 i +
        (μ / m0) • ∑ j, bodyVector (z t).2 j) =
        (1 + (μ / m0) * ∑ i, m i) • ∑ j, bodyVector (z t).2 j := by
      have h1 : ∀ i, m i * (1 / m i) = 1 := fun i => mul_one_div_cancel (hm i).ne'
      simp only [smul_add, smul_smul, Finset.sum_add_distrib, h1, one_smul]
      rw [← Finset.sum_smul, ← Finset.sum_mul, add_smul, one_smul, mul_comm (∑ i, m i)]
    rw [hs, smul_smul]
    congr 1
    field_simp
  induction i using Fin.cases with
  | zero =>
    have hfun : (fun s => barycentricPositions m0 m μ (z s).1 0) =
        fun s => (-μ / (m0 + μ * ∑ i, m i)) • ∑ i, m i • bodyVector (z s).1 i :=
      funext fun s => barycentricPositions_zero m0 m μ (z s).1
    rw [hfun, barycentricVelocities_zero]
    exact hx0
  | succ i =>
    have hfun : (fun s => barycentricPositions m0 m μ (z s).1 i.succ) =
        fun s => (-μ / (m0 + μ * ∑ i, m i)) • ∑ i, m i • bodyVector (z s).1 i +
          bodyVector (z s).1 i := by
      funext s
      simp [barycentricPositions]
    rw [hfun, barycentricVelocities_succ]
    refine (hx0.add (hbq i)).congr_deriv ?_
    module

/-- Clause (c) of `bpP:p6:reconstruction` at one time (Steps `rc-vplanet`, `rc-vsun`). -/
private theorem hasDerivAt_barycentricVelocities (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    {G : ℝ} {z : ℝ → Phase (n * 2)} {t : ℝ} (hnc : NoCollision (z t).1)
    (hd : HasDerivAt z (hamiltonianVectorField (movingHamiltonian G m0 m μ) (z t)) t)
    (i : Fin (n + 1)) :
    HasDerivAt (fun s => barycentricVelocities m0 m μ (z s).2 i)
      (∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
        (G * actualMasses m0 m μ j /
            planeLength (barycentricPositions m0 m μ (z t).1 j -
              barycentricPositions m0 m μ (z t).1 i) ^ 3) •
          (barycentricPositions m0 m μ (z t).1 j - barycentricPositions m0 m μ (z t).1 i)) t := by
  induction i using Fin.cases with
  | zero =>
    have hfun : (fun s => barycentricVelocities m0 m μ (z s).2 0) =
        fun s => (-μ / m0) • ∑ j, bodyVector (z s).2 j :=
      funext fun s => barycentricVelocities_zero m0 m μ (z s).2
    rw [hfun, sum_filter_ne_zero]
    refine ((HasDerivAt.fun_sum (u := Finset.univ)
      (fun j _ => (hasDerivAt_bodyVector hd j).2)).const_smul (-μ / m0)).congr_deriv ?_
    have hf : ∑ j, (μ * G * m j) • fKernel m (fun k => bodyVector (z t).1 k) j = 0 := by
      calc _ = (μ * G) • ∑ j, m j • fKernel m (fun k => bodyVector (z t).1 k) j := by
            rw [Finset.smul_sum]
            exact Finset.sum_congr rfl fun j _ => (smul_smul _ _ _).symm
        _ = 0 := by rw [sum_mass_smul_fKernel, smul_zero]
    simp only [hvf_moving_mom G m0 m μ hnc, Finset.sum_add_distrib, hf, add_zero,
      barycentricPositions_succ_sub_zero, actualMasses, Fin.cons_succ, gKernel,
      Finset.smul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [smul_smul, smul_smul]
    congr 1
    field_simp [hm0.ne']
  | succ i =>
    have hfun : (fun s => barycentricVelocities m0 m μ (z s).2 i.succ) =
        fun s => (1 / m i) • bodyVector (z s).2 i :=
      funext fun s => barycentricVelocities_succ m0 m μ (z s).2 i
    rw [hfun, sum_filter_ne_succ]
    refine ((hasDerivAt_bodyVector hd i).2.const_smul (1 / m i)).congr_deriv ?_
    rw [hvf_moving_mom G m0 m μ hnc i, smul_accel G m0 μ m i (hm i).ne',
      ← neg_sub (barycentricPositions m0 m μ (z t).1 i.succ)
        (barycentricPositions m0 m μ (z t).1 0),
      barycentricPositions_succ_sub_zero, planeLength_neg]
    simp only [barycentricPositions_succ_sub_succ, actualMasses, Fin.cons_zero, Fin.cons_succ,
      Finset.smul_sum, smul_smul, smul_neg, ← neg_smul]
    congr 1
    · congr 1
      ring
    · refine Finset.sum_congr rfl fun j _ => ?_
      congr 1
      ring

/-! ### The propositions -/

/-- `bpP:p6:reconstruction`: moving Sun ⇒ Newton, on any set of times `J`. The mass argument
absorbs `G`. -/
theorem reconstruction {G : ℝ} (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ)
    {J : Set ℝ} {z : ℝ → Phase (n * 2)}
    (hz : ∀ t ∈ J, NoCollision (z t).1 ∧
      HasDerivAt z (hamiltonianVectorField (movingHamiltonian G m0 m μ) (z t)) t) :
    IsNewtonSolutionOn (fun k => G * actualMasses m0 m μ k) J
      (fun t => barycentricPositions m0 m μ (z t).1)
      (fun t => barycentricVelocities m0 m μ (z t).2) := by
  have _ := hG
  exact ⟨fun t ht i j hij => planeLength_pos_barycentric (hz t ht).1 i j hij,
    fun t ht i => hasDerivAt_barycentricPositions hm0 hm hμ (hz t ht).1 (hz t ht).2 i,
    fun t ht i => hasDerivAt_barycentricVelocities hm0 hm (hz t ht).1 (hz t ht).2 i⟩

/-- The all-time frozen predicate (`J = univ`). -/
theorem reconstruction_all_time {G : ℝ} (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    (hμ : 0 ≤ μ) {z : ℝ → Phase (n * 2)}
    (hz : ∀ t, NoCollision (z t).1 ∧
      HasDerivAt z (hamiltonianVectorField (movingHamiltonian G m0 m μ) (z t)) t) :
    IsNewtonSolution G (actualMasses m0 m μ)
      (fun t => barycentricPositions m0 m μ (z t).1)
      (fun t => barycentricVelocities m0 m μ (z t).2) := by
  have h := reconstruction hG hm0 hm hμ (J := Set.univ) (z := z) fun t _ => hz t
  exact ⟨fun t i j hij => h.1 t trivial i j hij, fun t i => h.2.1 t trivial i,
    fun t i => h.2.2 t trivial i⟩

/-- The D25 form (`G = m₀ = 1`): `IsMovingSolutionOn ⇒ IsNewtonSolutionOn (actualMasses 1 m μ)`. -/
theorem isNewtonSolutionOn_of_isMovingSolutionOn (hm : ∀ i, 0 < m i) (hμ : 0 ≤ μ) {J : Set ℝ}
    {z : ℝ → Phase (n * 2)} (hz : IsMovingSolutionOn m μ J z) :
    IsNewtonSolutionOn (actualMasses 1 m μ) J
      (fun t => barycentricPositions 1 m μ (z t).1)
      (fun t => barycentricVelocities 1 m μ (z t).2) := by
  have h := reconstruction (G := 1) (m0 := 1) one_pos one_pos hm hμ (J := J) (z := z)
    fun t ht => ⟨hz.2 t ht, (hz.1 t ht).2.2⟩
  have hmass : (fun k => (1 : ℝ) * actualMasses 1 m μ k) = actualMasses 1 m μ :=
    funext fun k => one_mul _
  rw [hmass] at h
  exact h

/-- `bpP:p6:reconstruction-fixed`. -/
theorem reconstruction_fixed {G ε : ℝ} (hm0 : 0 < m0) (hm : ∀ i, 0 < m i) {J : Set ℝ}
    {z : ℝ → Phase (n * 2)}
    (hz : ∀ t ∈ J, NoCollision (z t).1 ∧
      HasDerivAt z (hamiltonianVectorField (fixedHamiltonian G m0 m ε) (z t)) t) :
    (∀ t ∈ J, ∀ i, 0 < planeLength (bodyVector (z t).1 i)) ∧
    (∀ t ∈ J, ∀ i j, i ≠ j → 0 < planeLength (bodyVector (z t).1 j - bodyVector (z t).1 i)) ∧
    (∀ t ∈ J, ∀ i, HasDerivAt (fun s => bodyVector (z s).1 i)
      ((1 / m i) • bodyVector (z t).2 i) t) ∧
    (∀ t ∈ J, ∀ i, HasDerivAt (fun s => (1 / m i) • bodyVector (z s).2 i)
      ((-G * m0 / planeLength (bodyVector (z t).1 i) ^ 3) • bodyVector (z t).1 i +
        ε • ∑ j ∈ Finset.univ.filter (fun j => j ≠ i),
          (G * m j / planeLength (bodyVector (z t).1 j - bodyVector (z t).1 i) ^ 3) •
            (bodyVector (z t).1 j - bodyVector (z t).1 i)) t) := by
  have _ := hm0
  refine ⟨fun t ht i => (hz t ht).1.1 i, fun t ht i j hij => (hz t ht).1.2 j i hij.symm,
    fun t ht i => ?_, fun t ht i => ?_⟩
  · exact ((hasDerivAt_bodyVector (hz t ht).2 i).1).congr_deriv
      (hvf_fixed_pos G m0 m ε (hz t ht).1 i)
  · refine ((hasDerivAt_bodyVector (hz t ht).2 i).2.const_smul (1 / m i)).congr_deriv ?_
    rw [hvf_fixed_mom G m0 m ε (hz t ht).1 i, smul_accel G m0 ε m i (hm i).ne']

theorem reconstruction_fixed_all_time {G ε : ℝ} (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    {z : ℝ → Phase (n * 2)}
    (hz : ∀ t, NoCollision (z t).1 ∧
      HasDerivAt z (hamiltonianVectorField (fixedHamiltonian G m0 m ε) (z t)) t) :
    IsFixedSolution G m0 m ε (fun t i => bodyVector (z t).1 i)
      (fun t i => (1 / m i) • bodyVector (z t).2 i) := by
  have h := reconstruction_fixed (G := G) (ε := ε) hm0 hm (J := Set.univ) (z := z) fun t _ => hz t
  exact ⟨fun t i => h.1 t trivial i, fun t i j hij => h.2.1 t trivial i j hij,
    fun t i => h.2.2.1 t trivial i, fun t i => h.2.2.2 t trivial i⟩

/-- `bpP:p6:orbit-transfer`: from the frozen torus predicate (clause (viii)) to Newton / fixed
solutions. -/
theorem orbit_transfer_moving {G : ℝ} (hG : 0 < G) (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    (hμ : 0 ≤ μ) {w : Fin (n * 2) → ℝ} {K : (Fin (n * 2) → ℝ) → Phase (n * 2)}
    (hK : IsPhysicalTorus (movingHamiltonian G m0 m μ) w K) (hnc : ∀ φ, NoCollision (K φ).1)
    (φ : Fin (n * 2) → ℝ) :
    IsNewtonSolution G (actualMasses m0 m μ)
      (fun t => barycentricPositions m0 m μ (K (φ + t • w)).1)
      (fun t => barycentricVelocities m0 m μ (K (φ + t • w)).2) := by
  obtain ⟨-, -, -, -, -, -, -, hflow⟩ := hK
  exact reconstruction_all_time hG hm0 hm hμ (z := fun t => K (φ + t • w))
    fun t => ⟨hnc _, hflow φ t⟩

theorem orbit_transfer_fixed {G ε : ℝ} (hm0 : 0 < m0) (hm : ∀ i, 0 < m i)
    {w : Fin (n * 2) → ℝ} {K : (Fin (n * 2) → ℝ) → Phase (n * 2)}
    (hK : IsPhysicalTorus (fixedHamiltonian G m0 m ε) w K) (hnc : ∀ φ, NoCollision (K φ).1)
    (φ : Fin (n * 2) → ℝ) :
    IsFixedSolution G m0 m ε (fun t i => bodyVector (K (φ + t • w)).1 i)
      (fun t i => (1 / m i) • bodyVector (K (φ + t • w)).2 i) := by
  obtain ⟨-, -, -, -, -, -, -, hflow⟩ := hK
  exact reconstruction_fixed_all_time hm0 hm (z := fun t => K (φ + t • w))
    fun t => ⟨hnc _, hflow φ t⟩

end Reconstruction

end KAM.Planetary

end
