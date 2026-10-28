/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Kepler.Basic
public import KAM.Kepler.Plane
public import KAM.Kepler.Energy
public import KAM.Frozen.Defs.HamiltonianVectorField
public import KAM.Frozen.Planetary.Defs.Phase
public import KAM.Frozen.Planetary.Defs.BodyVector
public import KAM.Frozen.Planetary.Defs.NoCollision
public import KAM.Frozen.Planetary.Defs.MovingHamiltonian
public import KAM.Frozen.Planetary.Defs.FixedHamiltonian

/-!
# Newtonian models: collision-free domain, Kepler/coupling split, force kernels, Hamilton equations

Blueprint P, Part 6 (`bpP:p6:domain`, `bpP:p6:split`, `bpP:p6:action-reaction`,
`bpP:p6:hamilton-eqs`): the collision-free set `W` is open and the frozen moving and fixed
Hamiltonians are real analytic on it; both split as the Kepler part plus a coupling term; the force
kernels satisfy the action-reaction identity; the Hamilton fields have the stated block form.
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff

namespace KAM.Planetary

open KAM KAM.Kepler

section Models

variable {n : ℕ}

/-- `W`: collision-free phase points. -/
def collisionFreeDomain (n : ℕ) : Set (Phase (n * 2)) := {z | NoCollision z.1}

/-- Body-wise assembly of a coordinate vector (inverse of `bodyVector`). -/
def ofBodies {N : ℕ} (Q : Fin N → Fin 2 → ℝ) : Fin (N * 2) → ℝ :=
  fun k => Q (finProdFinEquiv.symm k).1 (finProdFinEquiv.symm k).2
theorem bodyVector_ofBodies {N : ℕ} (Q : Fin N → Fin 2 → ℝ) (i : Fin N) : bodyVector (ofBodies Q) i = Q i := by
  ext k
  simp [bodyVector, ofBodies]
theorem ofBodies_bodyVector {N : ℕ} (q : Fin (N * 2) → ℝ) : ofBodies (fun i => bodyVector q i) = q := by
  ext k
  show q (finProdFinEquiv ((finProdFinEquiv.symm k).1, (finProdFinEquiv.symm k).2)) = q k
  rw [Prod.mk.eta, Equiv.apply_symm_apply]

/-- `H_Kep = Σ_i E_{m_i,κ}(q_i, p_i)` and the two coupling terms of `bpP:p6:split`. -/
def keplerPart (κ : ℝ) (m : Fin n → ℝ) (z : Phase (n * 2)) : ℝ :=
  ∑ i, (planeSq (bodyVector z.2 i) / (2 * m i) - κ * m i / planeLength (bodyVector z.1 i))
def pairPotential (G : ℝ) (m : Fin n → ℝ) (q : Fin (n * 2) → ℝ) : ℝ :=
  ∑ i, ∑ j ∈ Finset.univ.filter (fun j => i < j), G * m i * m j / planeLength (bodyVector q i - bodyVector q j)
def fMov (G m0 : ℝ) (m : Fin n → ℝ) (z : Phase (n * 2)) : ℝ :=
  planeSq (∑ i, bodyVector z.2 i) / (2 * m0) - pairPotential G m z.1
def fFix (G : ℝ) (m : Fin n → ℝ) (z : Phase (n * 2)) : ℝ := -pairPotential G m z.1

/-- Force kernels `g_i`, `f_i` of `bpP:p6:conv` (bodies as a family of plane vectors). -/
def gKernel (q : Fin n → Fin 2 → ℝ) (i : Fin n) : Fin 2 → ℝ := ((planeLength (q i)) ^ 3)⁻¹ • q i
def fKernel (m : Fin n → ℝ) (q : Fin n → Fin 2 → ℝ) (i : Fin n) : Fin 2 → ℝ :=
  ∑ j ∈ Finset.univ.filter (fun j => j ≠ i), (m j / planeLength (q j - q i) ^ 3) • (q j - q i)

/-! ### Linear body maps and calculus of the plane length along them -/

/-- Position block of body `i`, as a continuous linear map. -/
private def posCLM (i : Fin n) : Phase (n * 2) →L[ℝ] (Fin 2 → ℝ) :=
  ContinuousLinearMap.pi fun k =>
    (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin (n * 2) => ℝ) (finProdFinEquiv (i, k))).comp
      (ContinuousLinearMap.fst ℝ (Fin (n * 2) → ℝ) (Fin (n * 2) → ℝ))

/-- Momentum block of body `i`, as a continuous linear map. -/
private def momCLM (i : Fin n) : Phase (n * 2) →L[ℝ] (Fin 2 → ℝ) :=
  ContinuousLinearMap.pi fun k =>
    (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin (n * 2) => ℝ) (finProdFinEquiv (i, k))).comp
      (ContinuousLinearMap.snd ℝ (Fin (n * 2) → ℝ) (Fin (n * 2) → ℝ))

private theorem posCLM_apply (i : Fin n) (z : Phase (n * 2)) : posCLM i z = bodyVector z.1 i := rfl

private theorem momCLM_apply (i : Fin n) (z : Phase (n * 2)) : momCLM i z = bodyVector z.2 i := rfl

/-- The differential of `planeSq` at `v` is `2 v·`; `dotCLM v` is the functional `w ↦ v·w`. -/
private def dotCLM (v : Fin 2 → ℝ) : (Fin 2 → ℝ) →L[ℝ] ℝ :=
  ∑ k, v k • ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) k

private theorem dotCLM_apply (v w : Fin 2 → ℝ) : dotCLM v w = planeDot v w := by
  simp [dotCLM, planeDot]

private theorem hasFDerivAt_planeSq (v : Fin 2 → ℝ) : HasFDerivAt planeSq ((2 : ℝ) • dotCLM v) v := by
  have h := HasFDerivAt.fun_sum (u := Finset.univ) (fun k _ =>
    ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) k).hasFDerivAt (x := v)).pow 2)
  refine h.congr_fderiv ?_
  unfold dotCLM
  rw [Finset.smul_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  ext w
  simp [smul_smul]

private theorem hasFDerivAt_planeSq_comp {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (L : E →L[ℝ] (Fin 2 → ℝ)) (z : E) :
    HasFDerivAt (fun x => planeSq (L x)) (((2 : ℝ) • dotCLM (L z)).comp L) z :=
  (hasFDerivAt_planeSq (L z)).comp z L.hasFDerivAt

private theorem hasFDerivAt_inv_planeLength_comp {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (L : E →L[ℝ] (Fin 2 → ℝ)) {z : E} (hz : L z ≠ 0) :
    HasFDerivAt (fun x => (planeLength (L x))⁻¹)
      ((-((planeLength (L z) ^ 3)⁻¹) • dotCLM (L z)).comp L) z :=
  (hasFDerivAt_inv_planeLength hz).comp z L.hasFDerivAt

private theorem analyticAt_planeSq (v : Fin 2 → ℝ) : AnalyticAt ℝ planeSq v := by
  have h : planeSq = fun w : Fin 2 → ℝ => w 0 ^ 2 + w 1 ^ 2 :=
    funext fun w => by simp [planeSq, Fin.sum_univ_two]
  rw [h]
  have h0 : AnalyticAt ℝ (fun w : Fin 2 → ℝ => w 0) v :=
    (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) 0).analyticAt v
  have h1 : AnalyticAt ℝ (fun w : Fin 2 → ℝ => w 1) v :=
    (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin 2 => ℝ) 1).analyticAt v
  exact (h0.pow 2).add (h1.pow 2)

private theorem analyticAt_planeSq_comp {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (L : E →L[ℝ] (Fin 2 → ℝ)) (z : E) : AnalyticAt ℝ (fun x => planeSq (L x)) z :=
  (analyticAt_planeSq (L z)).comp (L.analyticAt z)

private theorem analyticAt_inv_planeLength_comp {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (L : E →L[ℝ] (Fin 2 → ℝ)) {z : E} (hz : L z ≠ 0) :
    AnalyticAt ℝ (fun x => (planeLength (L x))⁻¹) z :=
  (analyticAt_inv_planeLength hz).comp (L.analyticAt z)


/-! ### Double sums over ordered pairs -/

/-- A symmetric double sum is its diagonal plus twice the sum over ordered pairs `i < j`. -/
private theorem sum_sum_eq_diag_add_two_mul (f : Fin n → Fin n → ℝ) (hf : ∀ i j, f i j = f j i) :
    ∑ i, ∑ j, f i j =
      ∑ i, f i i + 2 * ∑ i, ∑ j ∈ Finset.univ.filter (fun j => i < j), f i j := by
  have hsplit : ∀ i, ∑ j, f i j = f i i + ∑ j, (if i < j then f i j else 0) +
      ∑ j, (if j < i then f i j else 0) := by
    intro i
    have h3 : ∀ j, f i j = (if j = i then f i j else 0) + (if i < j then f i j else 0) +
        (if j < i then f i j else 0) := by
      intro j
      rcases lt_trichotomy i j with h | h | h
      · simp [h, h.ne', not_lt.mpr h.le]
      · subst h; simp
      · simp [h, h.ne, not_lt.mpr h.le]
    calc ∑ j, f i j = ∑ j, ((if j = i then f i j else 0) + (if i < j then f i j else 0) +
          (if j < i then f i j else 0)) := Finset.sum_congr rfl fun j _ => h3 j
      _ = _ := by rw [Finset.sum_add_distrib, Finset.sum_add_distrib]; simp
  have hswap : ∑ i, ∑ j, (if j < i then f i j else 0) = ∑ i, ∑ j, (if i < j then f i j else 0) := by
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
    simp [hf i j]
  simp only [hsplit, Finset.sum_add_distrib, hswap, Finset.sum_filter]
  ring

/-- `|Σ v_i|² = Σ |v_i|² + 2 Σ_{i<j} v_i · v_j`. -/
private theorem planeSq_sum (v : Fin n → Fin 2 → ℝ) :
    planeSq (∑ i, v i) =
      ∑ i, planeSq (v i) +
        2 * ∑ i, ∑ j ∈ Finset.univ.filter (fun j => i < j), planeDot (v i) (v j) := by
  have h : planeSq (∑ i, v i) = ∑ i, ∑ j, planeDot (v i) (v j) := by
    simp only [planeSq, planeDot, Finset.sum_apply, sq, Finset.sum_mul_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Finset.sum_comm]
  rw [h, sum_sum_eq_diag_add_two_mul (fun i j => planeDot (v i) (v j))
    (fun i j => by simp only [planeDot, mul_comm])]
  congr 1
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [planeSq_eq_planeDot]

/-! ### Splitting -/

theorem keplerPart_eq_sum (κ : ℝ) (m : Fin n → ℝ) (z : Phase (n * 2)) :
    keplerPart κ m z = ∑ i, energyMK (m i) κ (bodyVector z.1 i, bodyVector z.2 i) := rfl

/-- `bpP:p6:split`, as total identities (no collision hypothesis). -/
theorem movingHamiltonian_split (G m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (z : Phase (n * 2)) :
    movingHamiltonian G m0 m μ z = keplerPart (G * m0) m z + μ * fMov G m0 m z := by
  unfold movingHamiltonian keplerPart fMov pairPotential
  rw [planeSq_sum (fun i => bodyVector z.2 i)]
  have hK : ∀ i, (1 / m i + μ / m0) * planeSq (bodyVector z.2 i) / 2 -
      G * m0 * m i / planeLength (bodyVector z.1 i) =
      (planeSq (bodyVector z.2 i) / (2 * m i) - G * m0 * m i / planeLength (bodyVector z.1 i)) +
        μ * planeSq (bodyVector z.2 i) / (2 * m0) := fun i => by ring
  have hP : ∑ i, ∑ j ∈ Finset.univ.filter (fun j => i < j),
      (planeDot (bodyVector z.2 i) (bodyVector z.2 j) / m0 -
        G * m i * m j / planeLength (bodyVector z.1 i - bodyVector z.1 j)) =
      (∑ i, ∑ j ∈ Finset.univ.filter (fun j => i < j),
        planeDot (bodyVector z.2 i) (bodyVector z.2 j)) / m0 -
      ∑ i, ∑ j ∈ Finset.univ.filter (fun j => i < j),
        G * m i * m j / planeLength (bodyVector z.1 i - bodyVector z.1 j) := by
    simp only [Finset.sum_sub_distrib, Finset.sum_div]
  have hM : ∑ i, μ * planeSq (bodyVector z.2 i) / (2 * m0) =
      μ * (∑ i, planeSq (bodyVector z.2 i)) / (2 * m0) := by
    rw [Finset.mul_sum, Finset.sum_div]
  simp only [hK, Finset.sum_add_distrib, hP, hM]
  ring

theorem fixedHamiltonian_split (G m0 : ℝ) (m : Fin n → ℝ) (ε : ℝ) (z : Phase (n * 2)) :
    fixedHamiltonian G m0 m ε z = keplerPart (G * m0) m z + ε * fFix G m z := by
  unfold fixedHamiltonian keplerPart fFix pairPotential
  ring

theorem moving_sub_fixed (G m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) (z : Phase (n * 2)) :
    movingHamiltonian G m0 m μ z - fixedHamiltonian G m0 m μ z = μ * (planeSq (∑ i, bodyVector z.2 i) / (2 * m0)) := by
  rw [movingHamiltonian_split, fixedHamiltonian_split]
  unfold fMov fFix
  ring

/-- `bpP:p6:action-reaction`; no collision hypothesis is needed (`ℓ` is even). -/
theorem sum_mass_smul_fKernel (m : Fin n → ℝ) (q : Fin n → Fin 2 → ℝ) : ∑ i, m i • fKernel m q i = 0 := by
  set g : Fin n → Fin n → Fin 2 → ℝ := fun i j => (m i * (m j / planeLength (q j - q i) ^ 3)) • (q j - q i)
    with hg
  have hanti : ∀ i j, g j i = -g i j := by
    intro i j
    simp only [hg]
    rw [planeLength_sub_comm (q i) (q j), ← neg_sub (q j) (q i), smul_neg, neg_inj]
    congr 1
    ring
  have hdiag : ∀ i, g i i = 0 := fun i => by simp [hg]
  have hS : ∑ i, m i • fKernel m q i = ∑ i, ∑ j, g i j := by
    refine Finset.sum_congr rfl fun i _ => ?_
    unfold fKernel
    rw [Finset.smul_sum]
    rw [Finset.sum_filter_of_ne]
    · refine Finset.sum_congr rfl fun j _ => ?_
      simp only [hg, mul_smul]
    · intro j _ hj hji
      exact hj (by subst hji; simp)
  rw [hS]
  have : ∑ i, ∑ j, g i j = -∑ i, ∑ j, g i j := by
    calc ∑ i, ∑ j, g i j = ∑ j, ∑ i, g i j := Finset.sum_comm
      _ = ∑ j, ∑ i, -g j i :=
        Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun i _ => hanti j i
      _ = -∑ i, ∑ j, g i j := by simp [Finset.sum_neg_distrib]
  exact self_eq_neg.mp this


/-! ### The collision-free domain -/

private theorem continuous_planeLength' : Continuous planeLength := by
  unfold planeLength planeSq
  fun_prop

/-- `bpP:p6:domain`: `W` is open; both Hamiltonians are real analytic on `W` (the blueprint states `C^∞`;
analyticity is what `bpP:p7:product-chart` cites, so it is part of this node). -/
theorem isOpen_collisionFreeDomain (n : ℕ) : IsOpen (collisionFreeDomain n) := by
  have hc : ∀ i : Fin n, Continuous fun z : Phase (n * 2) => bodyVector z.1 i := fun i =>
    (posCLM i).continuous
  have h1 : IsOpen {z : Phase (n * 2) | ∀ i, 0 < planeLength (bodyVector z.1 i)} := by
    simp only [Set.ofPred_forall]
    exact isOpen_iInter_of_finite fun i =>
      isOpen_lt continuous_const (continuous_planeLength'.comp (hc i))
  have h2 : IsOpen {z : Phase (n * 2) | ∀ i j, i ≠ j →
      0 < planeLength (bodyVector z.1 i - bodyVector z.1 j)} := by
    simp only [Set.ofPred_forall]
    refine isOpen_iInter_of_finite fun i => isOpen_iInter_of_finite fun j => ?_
    by_cases hij : i = j
    · simp [hij]
    · simp only [hij, ne_eq, not_false_eq_true]
      exact isOpen_iInter_of_finite fun _ => isOpen_lt continuous_const (continuous_planeLength'.comp ((hc i).sub (hc j)))
  exact h1.inter h2

private theorem analyticAt_keplerPart (κ : ℝ) (m : Fin n → ℝ) {z : Phase (n * 2)}
    (hz : ∀ i, 0 < planeLength (bodyVector z.1 i)) : AnalyticAt ℝ (keplerPart κ m) z := by
  show AnalyticAt ℝ (fun z : Phase (n * 2) =>
    ∑ i, (planeSq (bodyVector z.2 i) / (2 * m i) - κ * m i / planeLength (bodyVector z.1 i))) z
  refine Finset.analyticAt_fun_sum _ fun i _ => ?_
  have hs : AnalyticAt ℝ (fun x : Phase (n * 2) => planeSq (momCLM i x)) z :=
    analyticAt_planeSq_comp _ _
  have hi : AnalyticAt ℝ (fun x : Phase (n * 2) => (planeLength (posCLM i x))⁻¹) z :=
    analyticAt_inv_planeLength_comp _ (planeLength_pos_iff.mp (hz i))
  simp only [div_eq_mul_inv]
  exact (hs.mul analyticAt_const).sub (analyticAt_const.mul hi)

private theorem analyticAt_pairPotential (G : ℝ) (m : Fin n → ℝ) {z : Phase (n * 2)}
    (hz : ∀ i j, i ≠ j → 0 < planeLength (bodyVector z.1 i - bodyVector z.1 j)) :
    AnalyticAt ℝ (fun z : Phase (n * 2) => pairPotential G m z.1) z := by
  show AnalyticAt ℝ (fun z : Phase (n * 2) =>
    ∑ i, ∑ j ∈ Finset.univ.filter (fun j => i < j),
      G * m i * m j / planeLength (bodyVector z.1 i - bodyVector z.1 j)) z
  refine Finset.analyticAt_fun_sum _ fun i _ => Finset.analyticAt_fun_sum _ fun j hj => ?_
  have hij : i ≠ j := (Finset.mem_filter.mp hj).2.ne
  have hi : AnalyticAt ℝ (fun x : Phase (n * 2) => (planeLength ((posCLM i - posCLM j) x))⁻¹) z :=
    analyticAt_inv_planeLength_comp _ (planeLength_pos_iff.mp (hz i j hij))
  simp only [div_eq_mul_inv]
  exact analyticAt_const.mul hi

private theorem analyticAt_momSq (z : Phase (n * 2)) :
    AnalyticAt ℝ (fun z : Phase (n * 2) => planeSq (∑ i, bodyVector z.2 i)) z := by
  have := analyticAt_planeSq_comp (∑ i, momCLM i : Phase (n * 2) →L[ℝ] (Fin 2 → ℝ)) z
  simpa [momCLM_apply] using this

theorem analyticOnNhd_fMov (G m0 : ℝ) (m : Fin n → ℝ) : AnalyticOnNhd ℝ (fMov G m0 m) (collisionFreeDomain n) := by
  intro z hz
  show AnalyticAt ℝ (fun z : Phase (n * 2) =>
    planeSq (∑ i, bodyVector z.2 i) / (2 * m0) - pairPotential G m z.1) z
  simp only [div_eq_mul_inv]
  exact ((analyticAt_momSq z).mul analyticAt_const).sub (analyticAt_pairPotential G m hz.2)

theorem analyticOnNhd_fFix (G : ℝ) (m : Fin n → ℝ) : AnalyticOnNhd ℝ (fFix G m) (collisionFreeDomain n) := by
  intro z hz
  exact (analyticAt_pairPotential G m hz.2).neg

theorem analyticOnNhd_movingHamiltonian (G m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) :
    AnalyticOnNhd ℝ (movingHamiltonian G m0 m μ) (collisionFreeDomain n) := by
  intro z hz
  have h : movingHamiltonian G m0 m μ = fun z => keplerPart (G * m0) m z + μ * fMov G m0 m z :=
    funext (movingHamiltonian_split G m0 m μ)
  rw [h]
  exact (analyticAt_keplerPart _ m hz.1).add (analyticAt_const.mul (analyticOnNhd_fMov G m0 m z hz))

theorem analyticOnNhd_fixedHamiltonian (G m0 : ℝ) (m : Fin n → ℝ) (ε : ℝ) :
    AnalyticOnNhd ℝ (fixedHamiltonian G m0 m ε) (collisionFreeDomain n) := by
  intro z hz
  have h : fixedHamiltonian G m0 m ε = fun z => keplerPart (G * m0) m z + ε * fFix G m z :=
    funext (fixedHamiltonian_split G m0 m ε)
  rw [h]
  exact (analyticAt_keplerPart _ m hz.1).add (analyticAt_const.mul (analyticOnNhd_fFix G m z hz))

theorem differentiableAt_movingHamiltonian (G m0 : ℝ) (m : Fin n → ℝ) (μ : ℝ) {z : Phase (n * 2)}
    (hz : NoCollision z.1) : DifferentiableAt ℝ (movingHamiltonian G m0 m μ) z :=
  (analyticOnNhd_movingHamiltonian G m0 m μ z hz).differentiableAt

theorem differentiableAt_fixedHamiltonian (G m0 : ℝ) (m : Fin n → ℝ) (ε : ℝ) {z : Phase (n * 2)}
    (hz : NoCollision z.1) : DifferentiableAt ℝ (fixedHamiltonian G m0 m ε) z :=
  (analyticOnNhd_fixedHamiltonian G m0 m ε z hz).differentiableAt

end Models

end KAM.Planetary

end
