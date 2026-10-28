/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.ODE.Lipschitz
public import KAM.ODE.NewtonDefs

/-!
# Uniform data of the Newtonian fields

Blueprint N Part 3 (`stepN:p3:nc-data`): the regions `newtonRegion`, `fixedRegion`,
`restrictedRegion` have uniform data with `δ = ρ / 8`.

The analytic core is the elementary global lemma `lipschitzOnWith_inv3_smul`; derivative bounds
are never used.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal

namespace KAM.ODE

open KAM.Planetary KAM.Kepler

section Core

/-- The real inequality behind `lipschitzOnWith_inv3_smul`. -/
private theorem inv_cube_sub_mul_le {r a b : ℝ} (hr : 0 < r) (hrb : r ≤ b) (hba : b ≤ a) :
    ((b ^ 3)⁻¹ - (a ^ 3)⁻¹) * b ≤ 3 * (r ^ 3)⁻¹ * (a - b) := by
  have hb : 0 < b := hr.trans_le hrb
  have ha : 0 < a := hb.trans_le hba
  have h1 : a ^ 3 - b ^ 3 ≤ 3 * a ^ 2 * (a - b) := by
    nlinarith [mul_nonneg (sub_nonneg.2 hba)
      (mul_nonneg (sub_nonneg.2 hba) (by positivity : 0 ≤ 2 * a + b))]
  have h2 : r ^ 3 ≤ a * b ^ 2 := by
    calc r ^ 3 ≤ b ^ 3 := pow_le_pow_left₀ hr.le hrb 3
      _ = b * b ^ 2 := by ring
      _ ≤ a * b ^ 2 := by gcongr
  have e : ((b ^ 3)⁻¹ - (a ^ 3)⁻¹) * b = (a ^ 3 - b ^ 3) / (a ^ 3 * b ^ 2) := by
    field_simp
  have e2 : 3 * (r ^ 3)⁻¹ * (a - b) = 3 * (a - b) / r ^ 3 := by field_simp
  rw [e, e2, div_le_div_iff₀ (by positivity) (by positivity)]
  have h3 : (a ^ 3 - b ^ 3) * r ^ 3 ≤ 3 * a ^ 2 * (a - b) * (a * b ^ 2) :=
    mul_le_mul h1 h2 (by positivity) (by nlinarith [sub_nonneg.2 hba, sq_nonneg a])
  nlinarith [h3]

/-- One-sided estimate: for `ℓ w' ≤ ℓ w`, both `≥ r`. -/
private theorem inv3_smul_sub_le {r : ℝ} (hr : 0 < r) {w w' : Fin 2 → ℝ}
    (hw : r ≤ planeLength w) (hw' : r ≤ planeLength w') (hle : planeLength w' ≤ planeLength w) :
    ‖(planeLength w ^ 3)⁻¹ • w - (planeLength w' ^ 3)⁻¹ • w'‖ ≤
      (r ^ 3)⁻¹ * (1 + 3 * √2) * ‖w - w'‖ := by
  set a := planeLength w with ha
  set b := planeLength w' with hb
  have hb0 : 0 < b := hr.trans_le hw'
  have ha0 : 0 < a := hb0.trans_le hle
  have hdec : (a ^ 3)⁻¹ • w - (b ^ 3)⁻¹ • w' =
      (a ^ 3)⁻¹ • (w - w') + ((a ^ 3)⁻¹ - (b ^ 3)⁻¹) • w' := by
    rw [smul_sub, sub_smul]; abel
  have hr3 : (a ^ 3)⁻¹ ≤ (r ^ 3)⁻¹ := by
    apply inv_anti₀ (by positivity)
    exact pow_le_pow_left₀ hr.le hw 3
  have hab : a - b ≤ √2 * ‖w - w'‖ :=
    (le_abs_self _).trans ((abs_planeLength_sub_le w w').trans (planeLength_le_sqrt_two_mul_norm _))
  have hn : ‖w'‖ ≤ b := norm_le_planeLength w'
  have t1 : ‖(a ^ 3)⁻¹ • (w - w')‖ ≤ (r ^ 3)⁻¹ * ‖w - w'‖ := by
    rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
    gcongr
  have hsub : 0 ≤ (b ^ 3)⁻¹ - (a ^ 3)⁻¹ := by
    rw [sub_nonneg]
    apply inv_anti₀ (by positivity)
    exact pow_le_pow_left₀ hb0.le hle 3
  have t2 : ‖((a ^ 3)⁻¹ - (b ^ 3)⁻¹) • w'‖ ≤ (r ^ 3)⁻¹ * (3 * √2) * ‖w - w'‖ := by
    rw [norm_smul, Real.norm_eq_abs, ← abs_neg, neg_sub, abs_of_nonneg hsub]
    calc ((b ^ 3)⁻¹ - (a ^ 3)⁻¹) * ‖w'‖ ≤ ((b ^ 3)⁻¹ - (a ^ 3)⁻¹) * b := by gcongr
      _ ≤ 3 * (r ^ 3)⁻¹ * (a - b) := inv_cube_sub_mul_le hr hw' hle
      _ ≤ 3 * (r ^ 3)⁻¹ * (√2 * ‖w - w'‖) := by gcongr
      _ = (r ^ 3)⁻¹ * (3 * √2) * ‖w - w'‖ := by ring
  rw [hdec]
  calc _ ≤ _ := norm_add_le _ _
    _ ≤ (r ^ 3)⁻¹ * ‖w - w'‖ + (r ^ 3)⁻¹ * (3 * √2) * ‖w - w'‖ := add_le_add t1 t2
    _ = _ := by ring

/-- Helper (the analytic core of `newton_uniform_data`): `w ↦ ℓ(w)⁻³ w` is Lipschitz on
`{ℓ ≥ r}`, globally (no convexity): split `g w - g w'` with `w'` the shorter vector. -/
theorem lipschitzOnWith_inv3_smul {r : ℝ} (hr : 0 < r) :
    ∃ L : ℝ≥0, LipschitzOnWith L (fun w : Fin 2 → ℝ => (KAM.Planetary.planeLength w ^ 3)⁻¹ • w)
      {w | r ≤ KAM.Planetary.planeLength w} := by
  refine ⟨((r ^ 3)⁻¹ * (1 + 3 * √2)).toNNReal, ?_⟩
  have hC : 0 ≤ (r ^ 3)⁻¹ * (1 + 3 * √2) := by positivity
  refine LipschitzOnWith.of_dist_le_mul fun w hw w' hw' => ?_
  rw [Real.coe_toNNReal _ hC, dist_eq_norm, dist_eq_norm]
  rcases le_total (planeLength w') (planeLength w) with h | h
  · exact inv3_smul_sub_le hr hw hw' h
  · rw [norm_sub_rev, norm_sub_rev w]
    exact inv3_smul_sub_le hr hw' hw h

end Core

section Terms

/-- The Lipschitz constant of `w ↦ ℓ(w)⁻³ w` on `{ℓ ≥ r}`. -/
private def Lg (r : ℝ) : ℝ := (r ^ 3)⁻¹ * (1 + 3 * √2)

private theorem Lg_nonneg (r : ℝ) (hr : 0 < r) : 0 ≤ Lg r := by unfold Lg; positivity

private theorem inv3_smul_norm_sub_le {r : ℝ} (hr : 0 < r) {w w' : Fin 2 → ℝ}
    (hw : r ≤ planeLength w) (hw' : r ≤ planeLength w') :
    ‖(planeLength w ^ 3)⁻¹ • w - (planeLength w' ^ 3)⁻¹ • w'‖ ≤ Lg r * ‖w - w'‖ := by
  rcases le_total (planeLength w') (planeLength w) with h | h
  · exact inv3_smul_sub_le hr hw hw' h
  · rw [norm_sub_rev, norm_sub_rev w]
    exact inv3_smul_sub_le hr hw' hw h

/-- A single Newtonian term is Lipschitz away from the collision. -/
private theorem term_sub_le {r : ℝ} (hr : 0 < r) (c : ℝ) {w w' : Fin 2 → ℝ}
    (hw : r ≤ planeLength w) (hw' : r ≤ planeLength w') :
    ‖(c / planeLength w ^ 3) • w - (c / planeLength w' ^ 3) • w'‖ ≤ |c| * Lg r * ‖w - w'‖ := by
  have e : ∀ v : Fin 2 → ℝ, (c / planeLength v ^ 3) • v = c • ((planeLength v ^ 3)⁻¹ • v) := by
    intro v; rw [div_eq_mul_inv, mul_smul]
  rw [e, e, ← smul_sub, norm_smul, Real.norm_eq_abs, mul_assoc]
  gcongr
  exact inv3_smul_norm_sub_le hr hw hw'

/-- A single Newtonian term is bounded away from the collision. -/
private theorem term_norm_le {r : ℝ} (hr : 0 < r) (c : ℝ) {w : Fin 2 → ℝ}
    (hw : r ≤ planeLength w) : ‖(c / planeLength w ^ 3) • w‖ ≤ |c| * (r ^ 2)⁻¹ := by
  have hl : 0 < planeLength w := hr.trans_le hw
  rw [norm_smul, Real.norm_eq_abs, abs_div, abs_of_pos (by positivity : 0 < planeLength w ^ 3)]
  have h1 : ‖w‖ ≤ planeLength w := norm_le_planeLength w
  calc |c| / planeLength w ^ 3 * ‖w‖ ≤ |c| / planeLength w ^ 3 * planeLength w := by gcongr
    _ = |c| * (planeLength w ^ 2)⁻¹ := by field_simp
    _ ≤ |c| * (r ^ 2)⁻¹ := by
      gcongr

/-- If `ℓ a ≥ ρ` and `‖a - b‖ ≤ ρ / 4` then `ℓ b ≥ ρ / 2`. -/
private theorem len_half_of_close {ρ : ℝ} {a b : Fin 2 → ℝ}
    (ha : ρ ≤ planeLength a) (hd : ‖a - b‖ ≤ ρ / 4) : ρ / 2 ≤ planeLength b := by
  have h1 := abs_planeLength_sub_le a b
  have h2 := planeLength_le_sqrt_two_mul_norm (a - b)
  have h3 : √2 ≤ 2 := by
    rw [Real.sqrt_le_left (by norm_num)]; norm_num
  have h4 : √2 * ‖a - b‖ ≤ 2 * (ρ / 4) := by
    calc √2 * ‖a - b‖ ≤ 2 * ‖a - b‖ := by gcongr
      _ ≤ 2 * (ρ / 4) := by gcongr
  have := (abs_le.mp h1).2
  linarith

/-- The pairwise Newtonian sum. -/
private def pairSum {N : ℕ} (c : Fin N → ℝ) (q : Fin N → Fin 2 → ℝ) (i : Fin N) : Fin 2 → ℝ :=
  ∑ j ∈ Finset.univ.filter (fun j => j ≠ i), (c j / planeLength (q j - q i) ^ 3) • (q j - q i)

private theorem pairSum_sub_le {N : ℕ} {r : ℝ} (hr : 0 < r) (c : Fin N → ℝ)
    {q q' : Fin N → Fin 2 → ℝ} (hq : ∀ i j, i ≠ j → r ≤ planeLength (q j - q i))
    (hq' : ∀ i j, i ≠ j → r ≤ planeLength (q' j - q' i)) (i : Fin N) :
    ‖pairSum c q i - pairSum c q' i‖ ≤ (∑ j, |c j|) * Lg r * (2 * ‖q - q'‖) := by
  unfold pairSum
  rw [← Finset.sum_sub_distrib]
  have hterm : ∀ j ∈ Finset.univ.filter (fun j => j ≠ i),
      ‖(c j / planeLength (q j - q i) ^ 3) • (q j - q i) -
        (c j / planeLength (q' j - q' i) ^ 3) • (q' j - q' i)‖ ≤
      |c j| * Lg r * (2 * ‖q - q'‖) := by
    intro j hj
    have hji : j ≠ i := (Finset.mem_filter.1 hj).2
    refine (term_sub_le hr (c j) (hq i j hji.symm) (hq' i j hji.symm)).trans ?_
    have hd : ‖(q j - q i) - (q' j - q' i)‖ ≤ 2 * ‖q - q'‖ := by
      have e : (q j - q i) - (q' j - q' i) = (q - q') j - (q - q') i := by
        simp only [Pi.sub_apply]; abel
      rw [e]
      have a1 := norm_le_pi_norm (q - q') j
      have a2 := norm_le_pi_norm (q - q') i
      calc _ ≤ ‖(q - q') j‖ + ‖(q - q') i‖ := norm_sub_le _ _
        _ ≤ 2 * ‖q - q'‖ := by linarith
    have := Lg_nonneg r hr
    gcongr
  refine (norm_sum_le_of_le _ hterm).trans ?_
  rw [← Finset.sum_mul, ← Finset.sum_mul]
  have hnn : 0 ≤ Lg r * (2 * ‖q - q'‖) := by have := Lg_nonneg r hr; positivity
  calc (∑ j ∈ Finset.univ.filter (fun j => j ≠ i), |c j|) * Lg r * (2 * ‖q - q'‖)
      = (∑ j ∈ Finset.univ.filter (fun j => j ≠ i), |c j|) * (Lg r * (2 * ‖q - q'‖)) := by ring
    _ ≤ (∑ j, |c j|) * (Lg r * (2 * ‖q - q'‖)) := by
      gcongr
      exact Finset.filter_subset (fun j => j ≠ i) _
    _ = _ := by ring

private theorem pairSum_norm_le {N : ℕ} {r : ℝ} (hr : 0 < r) (c : Fin N → ℝ)
    {q : Fin N → Fin 2 → ℝ} (hq : ∀ i j, i ≠ j → r ≤ planeLength (q j - q i)) (i : Fin N) :
    ‖pairSum c q i‖ ≤ (∑ j, |c j|) * (r ^ 2)⁻¹ := by
  unfold pairSum
  have hterm : ∀ j ∈ Finset.univ.filter (fun j => j ≠ i),
      ‖(c j / planeLength (q j - q i) ^ 3) • (q j - q i)‖ ≤ |c j| * (r ^ 2)⁻¹ := by
    intro j hj
    exact term_norm_le hr (c j) (hq i j (Finset.mem_filter.1 hj).2.symm)
  refine (norm_sum_le_of_le _ hterm).trans ?_
  rw [← Finset.sum_mul]
  gcongr
  exact Finset.filter_subset (fun j => j ≠ i) _

end Terms

section Assemble

variable {X : Type*} [NormedAddCommGroup X]

private theorem uniformData_of_aux {F : X → X} {W Φ S : Set X} {δ Lr M : ℝ} (hδ : 0 < δ)
    (hball : ∀ x ∈ Φ, closedBall x δ ⊆ S) (hSW : S ⊆ W) (hL : 0 ≤ Lr) (hM : 0 ≤ M)
    (hlip : ∀ y ∈ S, ∀ y' ∈ S, ‖F y - F y'‖ ≤ Lr * ‖y - y'‖)
    (hbd : ∀ x ∈ Φ, ∀ y ∈ closedBall x δ, ‖F y‖ ≤ M) :
    UniformData F W Φ δ M Lr.toNNReal where
  delta_pos := hδ
  M_nonneg := hM
  closedBall_subset x hx := (hball x hx).trans hSW
  norm_le := hbd
  lipschitz x hx := by
    refine LipschitzOnWith.of_dist_le_mul fun y hy y' hy' => ?_
    rw [Real.coe_toNNReal _ hL, dist_eq_norm, dist_eq_norm]
    exact hlip y (hball x hx hy) y' (hball x hx hy')

end Assemble

section Newton

variable {N : ℕ}

private theorem norm_fst_sub_le' {A B : Type*} [NormedAddCommGroup A] [NormedAddCommGroup B]
    (x y : A × B) : ‖x.1 - y.1‖ ≤ ‖x - y‖ := norm_fst_le (x - y)

private theorem norm_snd_sub_le' {A B : Type*} [NormedAddCommGroup A] [NormedAddCommGroup B]
    (x y : A × B) : ‖x.2 - y.2‖ ≤ ‖x - y‖ := norm_snd_le (x - y)

private theorem pair_diff_le {q q' : Fin N → Fin 2 → ℝ} {d : ℝ} (h : ‖q - q'‖ ≤ d) (i j : Fin N) :
    ‖(q j - q i) - (q' j - q' i)‖ ≤ 2 * d := by
  have e : (q j - q i) - (q' j - q' i) = (q - q') j - (q - q') i := by
    simp only [Pi.sub_apply]; abel
  rw [e]
  have a1 := norm_le_pi_norm (q - q') j
  have a2 := norm_le_pi_norm (q - q') i
  calc _ ≤ ‖(q - q') j‖ + ‖(q - q') i‖ := norm_sub_le _ _
    _ ≤ 2 * d := by linarith

/-- The set of configurations with all mutual distances `≥ ρ / 2`. -/
private def pairSet (N : ℕ) (ρ : ℝ) : Set ((Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :=
  {y | ∀ i j, i ≠ j → ρ / 2 ≤ planeLength (y.1 j - y.1 i)}

private theorem ball_sub_pairSet {ρ Vbar : ℝ} {x : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)}
    (hx : x ∈ newtonRegion N ρ Vbar) : closedBall x (ρ / 8) ⊆ pairSet N ρ := by
  intro y hy i j hij
  have hxy : ‖y - x‖ ≤ ρ / 8 := mem_closedBall_iff_norm.1 hy
  refine len_half_of_close (hx.1 i j hij) ?_
  have := pair_diff_le (q := x.1) (q' := y.1) (d := ρ / 8)
    (by rw [norm_sub_rev]; exact (norm_fst_sub_le' y x).trans hxy) i j
  linarith

private theorem pairSet_sub_domain {ρ : ℝ} (hρ : 0 < ρ) : pairSet N ρ ⊆ newtonDomain N :=
  fun _ hy i j hij => (half_pos hρ).trans_le (hy i j hij)

private theorem pairSet_lip {ρ : ℝ} (hρ : 0 < ρ) (c : Fin N → ℝ)
    {y y' : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)} (hy : y ∈ pairSet N ρ)
    (hy' : y' ∈ pairSet N ρ) (i : Fin N) :
    ‖pairSum c y.1 i - pairSum c y'.1 i‖ ≤ (∑ j, |c j|) * Lg (ρ / 2) * (2 * ‖y - y'‖) := by
  refine (pairSum_sub_le (half_pos hρ) c hy hy' i).trans ?_
  have := Lg_nonneg (ρ / 2) (half_pos hρ)
  have h := norm_fst_sub_le' y y'
  gcongr

/-- `stepN:p3:nc-data` (Newton): `Φ_{ρ,V̄}` has uniform data with `δ = ρ / 8`. Helper; the three
corollaries follow from it, `gen_continuation` and `newton_reduction`. -/
theorem newton_uniform_data (N : ℕ) (G : ℝ) (mass : Fin N → ℝ) {ρ : ℝ} (hρ : 0 < ρ) (Vbar : ℝ) :
    ∃ (M : ℝ) (L : ℝ≥0), UniformData (newtonField N G mass) (newtonDomain N)
      (newtonRegion N ρ Vbar) (ρ / 8) M L := by
  set c : Fin N → ℝ := fun j => G * mass j with hc
  have hLg := Lg_nonneg (ρ / 2) (half_pos hρ)
  have hS : 0 ≤ ∑ j, |c j| := Finset.sum_nonneg fun j _ => abs_nonneg _
  have hF : ∀ y : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ),
      newtonField N G mass y = (y.2, fun i => pairSum c y.1 i) := fun y => rfl
  refine ⟨|Vbar| + ρ / 8 + (∑ j, |c j|) * ((ρ / 2) ^ 2)⁻¹,
    (1 + (∑ j, |c j|) * Lg (ρ / 2) * 2).toNNReal,
    uniformData_of_aux (S := pairSet N ρ) (by positivity) (fun x hx => ball_sub_pairSet hx)
      (pairSet_sub_domain hρ) (by positivity) (by positivity) ?_ ?_⟩
  · intro y hy y' hy'
    have e : newtonField N G mass y - newtonField N G mass y' =
        (y.2 - y'.2, fun i => pairSum c y.1 i - pairSum c y'.1 i) := by
      rw [hF, hF]; rfl
    rw [e, Prod.norm_def]
    have hD := norm_nonneg (y - y')
    refine max_le ((norm_snd_sub_le' y y').trans
      (by nlinarith [mul_nonneg hS (mul_nonneg hLg hD)])) ?_
    rw [pi_norm_le_iff_of_nonneg (by positivity)]
    intro i
    refine (pairSet_lip hρ c hy hy' i).trans (by nlinarith [mul_nonneg hS (mul_nonneg hLg hD)])
  · intro x hx y hy
    have hyS := ball_sub_pairSet hx hy
    have hxy : ‖y - x‖ ≤ ρ / 8 := mem_closedBall_iff_norm.1 hy
    rw [hF, Prod.norm_def]
    have h2 : ‖y.2‖ ≤ |Vbar| + ρ / 8 := by
      have := norm_snd_sub_le' y x
      have h3 : ‖y.2‖ ≤ ‖x.2‖ + ‖y.2 - x.2‖ := by
        simpa using norm_add_le x.2 (y.2 - x.2)
      linarith [hx.2, le_abs_self Vbar]
    have hB : 0 ≤ (∑ j, |c j|) * ((ρ / 2) ^ 2)⁻¹ := by positivity
    refine max_le (by dsimp only; linarith) ?_
    rw [pi_norm_le_iff_of_nonneg (by positivity)]
    intro i
    refine (pairSum_norm_le (half_pos hρ) c hyS i).trans (by linarith [abs_nonneg Vbar])

end Newton

section Fixed

variable {N : ℕ}

/-- Configurations with all mutual distances and all distances to the center `≥ ρ / 2`. -/
private def fixedSet (N : ℕ) (ρ : ℝ) : Set ((Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)) :=
  pairSet N ρ ∩ {y | ∀ i, ρ / 2 ≤ planeLength (y.1 i)}

private theorem ball_sub_fixedSet {ρ Vbar : ℝ} (hρ : 0 < ρ)
    {x : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ)} (hx : x ∈ fixedRegion N ρ Vbar) :
    closedBall x (ρ / 8) ⊆ fixedSet N ρ := by
  intro y hy
  refine ⟨ball_sub_pairSet hx.1 hy, fun i => ?_⟩
  have hxy : ‖y - x‖ ≤ ρ / 8 := mem_closedBall_iff_norm.1 hy
  refine len_half_of_close (hx.2 i) ?_
  have h1 := norm_le_pi_norm (x.1 - y.1) i
  have h2 : ‖x.1 - y.1‖ ≤ ρ / 8 := by
    rw [norm_sub_rev]; exact (norm_fst_sub_le' y x).trans hxy
  simp only [Pi.sub_apply] at h1
  linarith

private theorem fixedSet_sub_domain {ρ : ℝ} (hρ : 0 < ρ) : fixedSet N ρ ⊆ fixedDomain N :=
  fun _ hy => ⟨pairSet_sub_domain hρ hy.1, fun i => (half_pos hρ).trans_le (hy.2 i)⟩

theorem fixed_uniform_data (N : ℕ) (G m₀ : ℝ) (m : Fin N → ℝ) (eps : ℝ) {ρ : ℝ} (hρ : 0 < ρ)
    (Vbar : ℝ) :
    ∃ (M : ℝ) (L : ℝ≥0), UniformData (fixedField N G m₀ m eps) (fixedDomain N)
      (fixedRegion N ρ Vbar) (ρ / 8) M L := by
  set c : Fin N → ℝ := fun j => G * m j with hc
  have hr : 0 < ρ / 2 := half_pos hρ
  have hLg := Lg_nonneg (ρ / 2) hr
  have hS : 0 ≤ ∑ j, |c j| := Finset.sum_nonneg fun j _ => abs_nonneg _
  have hF : ∀ y : (Fin N → Fin 2 → ℝ) × (Fin N → Fin 2 → ℝ),
      fixedField N G m₀ m eps y = (y.2, fun i => (-G * m₀ / planeLength (y.1 i) ^ 3) • y.1 i +
        eps • pairSum c y.1 i) := fun y => rfl
  refine ⟨|Vbar| + ρ / 8 + |-G * m₀| * ((ρ / 2) ^ 2)⁻¹ +
      |eps| * ((∑ j, |c j|) * ((ρ / 2) ^ 2)⁻¹),
    (1 + |-G * m₀| * Lg (ρ / 2) + |eps| * ((∑ j, |c j|) * Lg (ρ / 2) * 2)).toNNReal,
    uniformData_of_aux (S := fixedSet N ρ) (by positivity) (fun x hx => ball_sub_fixedSet hρ hx)
      (fixedSet_sub_domain hρ) (by positivity) (by positivity) ?_ ?_⟩
  · intro y hy y' hy'
    have e : fixedField N G m₀ m eps y - fixedField N G m₀ m eps y' =
        (y.2 - y'.2, fun i => ((-G * m₀ / planeLength (y.1 i) ^ 3) • y.1 i -
          (-G * m₀ / planeLength (y'.1 i) ^ 3) • y'.1 i) +
          eps • (pairSum c y.1 i - pairSum c y'.1 i)) := by
      rw [hF, hF]
      refine Prod.ext rfl (funext fun i => ?_)
      simp only [Prod.snd_sub, Pi.sub_apply, smul_sub]; abel
    rw [e, Prod.norm_def]
    have hD := norm_nonneg (y - y')
    have h1 : 0 ≤ |-G * m₀| * Lg (ρ / 2) * ‖y - y'‖ := by positivity
    have h2 : 0 ≤ |eps| * ((∑ j, |c j|) * Lg (ρ / 2) * 2) * ‖y - y'‖ := by positivity
    refine max_le ((norm_snd_sub_le' y y').trans (by nlinarith)) ?_
    rw [pi_norm_le_iff_of_nonneg (by positivity)]
    intro i
    have a1 := term_sub_le hr (-G * m₀) (hy.2 i) (hy'.2 i)
    have a2 : ‖y.1 i - y'.1 i‖ ≤ ‖y - y'‖ :=
      (norm_le_pi_norm (y.1 - y'.1) i).trans (norm_fst_sub_le' y y')
    have a3 := pairSet_lip hρ c hy.1 hy'.1 i
    have a4 : ‖eps • (pairSum c y.1 i - pairSum c y'.1 i)‖ ≤
        |eps| * ((∑ j, |c j|) * Lg (ρ / 2) * (2 * ‖y - y'‖)) := by
      rw [norm_smul, Real.norm_eq_abs]; gcongr
    refine (norm_add_le _ _).trans ?_
    have a5 : |-G * m₀| * Lg (ρ / 2) * ‖y.1 i - y'.1 i‖ ≤ |-G * m₀| * Lg (ρ / 2) * ‖y - y'‖ := by
      gcongr
    nlinarith
  · intro x hx y hy
    have hyS := ball_sub_fixedSet hρ hx hy
    have hxy : ‖y - x‖ ≤ ρ / 8 := mem_closedBall_iff_norm.1 hy
    rw [hF, Prod.norm_def]
    have h2 : ‖y.2‖ ≤ |Vbar| + ρ / 8 := by
      have := norm_snd_sub_le' y x
      have h3 : ‖y.2‖ ≤ ‖x.2‖ + ‖y.2 - x.2‖ := by
        simpa using norm_add_le x.2 (y.2 - x.2)
      linarith [hx.1.2, le_abs_self Vbar]
    have hB : 0 ≤ |-G * m₀| * ((ρ / 2) ^ 2)⁻¹ := by positivity
    have hB' : 0 ≤ |eps| * ((∑ j, |c j|) * ((ρ / 2) ^ 2)⁻¹) := by positivity
    refine max_le (by dsimp only; linarith) ?_
    rw [pi_norm_le_iff_of_nonneg (by positivity)]
    intro i
    have a1 := term_norm_le hr (-G * m₀) (hyS.2 i)
    have a2 : ‖eps • pairSum c y.1 i‖ ≤ |eps| * ((∑ j, |c j|) * ((ρ / 2) ^ 2)⁻¹) := by
      rw [norm_smul, Real.norm_eq_abs]
      gcongr
      exact pairSum_norm_le hr c hyS.1 i
    refine (norm_add_le _ _).trans ?_
    linarith [abs_nonneg Vbar]

end Fixed

section Restricted

private theorem coord_le (v : Fin 2 → ℝ) (k : Fin 2) : |v k| ≤ ‖v‖ := by
  simpa using norm_le_pi_norm v k

private theorem norm_vec2_le {a b C : ℝ} (hC : 0 ≤ C) (ha : |a| ≤ C) (hb : |b| ≤ C) :
    ‖(![a, b] : Fin 2 → ℝ)‖ ≤ C := by
  rw [pi_norm_le_iff_of_nonneg hC, Fin.forall_fin_two]
  exact ⟨by simpa using ha, by simpa using hb⟩

private theorem vec2_sub (a b a' b' : ℝ) :
    (![a, b] : Fin 2 → ℝ) - ![a', b'] = ![a - a', b - b'] := by
  ext i; fin_cases i <;> simp

/-- Configurations of the restricted problem at distance `≥ ρ / 2` from both primaries. -/
private def restrictedSet (μ ρ : ℝ) : Set ((Fin 2 → ℝ) × (Fin 2 → ℝ)) :=
  {z | ρ / 2 ≤ planeLength (z.1 - KAM.Iso.primary₁ μ) ∧
    ρ / 2 ≤ planeLength (z.1 - KAM.Iso.primary₂ μ)}

private theorem ball_sub_restrictedSet {μ ρ Vbar : ℝ} (hρ : 0 < ρ)
    {x : (Fin 2 → ℝ) × (Fin 2 → ℝ)} (hx : x ∈ restrictedRegion μ ρ Vbar) :
    closedBall x (ρ / 8) ⊆ restrictedSet μ ρ := by
  intro y hy
  have hxy : ‖y - x‖ ≤ ρ / 8 := mem_closedBall_iff_norm.1 hy
  have h2 : ‖(x.1 - KAM.Iso.primary₁ μ) - (y.1 - KAM.Iso.primary₁ μ)‖ ≤ ρ / 4 := by
    rw [sub_sub_sub_cancel_right, norm_sub_rev]; linarith [norm_fst_sub_le' y x]
  have h3 : ‖(x.1 - KAM.Iso.primary₂ μ) - (y.1 - KAM.Iso.primary₂ μ)‖ ≤ ρ / 4 := by
    rw [sub_sub_sub_cancel_right, norm_sub_rev]; linarith [norm_fst_sub_le' y x]
  have hx1 : ρ ≤ planeLength (x.1 - KAM.Iso.primary₁ μ) := hx.1
  have hx2 : ρ ≤ planeLength (x.1 - KAM.Iso.primary₂ μ) := hx.2.1
  exact ⟨len_half_of_close hx1 h2, len_half_of_close hx2 h3⟩

private theorem restrictedSet_sub_domain {μ ρ : ℝ} (hρ : 0 < ρ) :
    restrictedSet μ ρ ⊆ restrictedDomain μ :=
  fun _ hy => ⟨(half_pos hρ).trans_le hy.1, (half_pos hρ).trans_le hy.2⟩

private theorem restrictedField_eq' (μ : ℝ) (z : (Fin 2 → ℝ) × (Fin 2 → ℝ)) :
    restrictedField μ z = (![z.2 0 + z.1 1, z.2 1 - z.1 0],
      ![z.2 1, -z.2 0] -
        (((1 - μ) / planeLength (z.1 - KAM.Iso.primary₁ μ) ^ 3) • (z.1 - KAM.Iso.primary₁ μ)) -
        ((μ / planeLength (z.1 - KAM.Iso.primary₂ μ) ^ 3) • (z.1 - KAM.Iso.primary₂ μ))) := rfl

theorem restricted_uniform_data (μ : ℝ) {ρ : ℝ} (hρ : 0 < ρ) (Vbar : ℝ) :
    ∃ (M : ℝ) (L : ℝ≥0), UniformData (restrictedField μ) (restrictedDomain μ)
      (restrictedRegion μ ρ Vbar) (ρ / 8) M L := by
  have hr : 0 < ρ / 2 := half_pos hρ
  have hLg := Lg_nonneg (ρ / 2) hr
  set K : ℝ := |1 - μ| + |μ| with hK
  have hK0 : 0 ≤ K := by positivity
  refine ⟨2 * (|Vbar| + ρ / 8) + K * ((ρ / 2) ^ 2)⁻¹, (2 + K * Lg (ρ / 2)).toNNReal,
    uniformData_of_aux (S := restrictedSet μ ρ) (by positivity)
      (fun x hx => ball_sub_restrictedSet hρ hx) (restrictedSet_sub_domain hρ)
      (by positivity) (by positivity) ?_ ?_⟩
  · intro z hz z' hz'
    have hD := norm_nonneg (z - z')
    have hf := norm_fst_sub_le' z z'
    have hs := norm_snd_sub_le' z z'
    have f1 : ∀ k, |z.1 k - z'.1 k| ≤ ‖z - z'‖ := fun k => by
      have := coord_le (z.1 - z'.1) k; simp only [Pi.sub_apply] at this; linarith
    have f2 : ∀ k, |z.2 k - z'.2 k| ≤ ‖z - z'‖ := fun k => by
      have := coord_le (z.2 - z'.2) k; simp only [Pi.sub_apply] at this; linarith
    have e : restrictedField μ z - restrictedField μ z' =
        (![z.2 0 + z.1 1, z.2 1 - z.1 0] - ![z'.2 0 + z'.1 1, z'.2 1 - z'.1 0],
         (![z.2 1, -z.2 0] - ![z'.2 1, -z'.2 0]) -
          (((1 - μ) / planeLength (z.1 - KAM.Iso.primary₁ μ) ^ 3) • (z.1 - KAM.Iso.primary₁ μ) -
            ((1 - μ) / planeLength (z'.1 - KAM.Iso.primary₁ μ) ^ 3) • (z'.1 - KAM.Iso.primary₁ μ)) -
          (((μ) / planeLength (z.1 - KAM.Iso.primary₂ μ) ^ 3) • (z.1 - KAM.Iso.primary₂ μ) -
            (μ / planeLength (z'.1 - KAM.Iso.primary₂ μ) ^ 3) •
              (z'.1 - KAM.Iso.primary₂ μ))) := by
      rw [restrictedField_eq', restrictedField_eq']
      refine Prod.ext rfl ?_
      simp only [Prod.snd_sub]; abel
    rw [e, Prod.norm_def]
    have t1 := term_sub_le hr (1 - μ) hz.1 hz'.1
    have t2 := term_sub_le hr μ hz.2 hz'.2
    rw [sub_sub_sub_cancel_right] at t1 t2
    have u1 : |1 - μ| * Lg (ρ / 2) * ‖z.1 - z'.1‖ ≤ |1 - μ| * Lg (ρ / 2) * ‖z - z'‖ := by gcongr
    have u2 : |μ| * Lg (ρ / 2) * ‖z.1 - z'.1‖ ≤ |μ| * Lg (ρ / 2) * ‖z - z'‖ := by gcongr
    have hB : ‖(![z.2 1, -z.2 0] - ![z'.2 1, -z'.2 0] : Fin 2 → ℝ)‖ ≤ ‖z - z'‖ := by
      rw [vec2_sub]
      refine norm_vec2_le hD (f2 1) ?_
      have := f2 0
      rwa [show -z.2 0 - -z'.2 0 = -(z.2 0 - z'.2 0) by ring, abs_neg]
    refine max_le ?_ ?_
    · dsimp only
      rw [vec2_sub]
      refine (norm_vec2_le (C := 2 * ‖z - z'‖) (by positivity) ?_ ?_).trans
        (by nlinarith [mul_nonneg hK0 (mul_nonneg hLg hD)])
      · have a := f2 0; have b := f1 1
        rw [abs_le] at *
        constructor <;> nlinarith [a.1, a.2, b.1, b.2]
      · have a := f2 1; have b := f1 0
        rw [abs_le] at *
        constructor <;> nlinarith [a.1, a.2, b.1, b.2]
    · dsimp only
      refine (norm_sub_le _ _).trans ?_
      refine (add_le_add ((norm_sub_le _ _).trans (add_le_add hB t1)) t2).trans ?_
      have : K * Lg (ρ / 2) * ‖z - z'‖ =
          |1 - μ| * Lg (ρ / 2) * ‖z - z'‖ + |μ| * Lg (ρ / 2) * ‖z - z'‖ := by rw [hK]; ring
      nlinarith [mul_nonneg hK0 (mul_nonneg hLg hD)]
  · intro x hx z hz
    have hzS := ball_sub_restrictedSet hρ hx hz
    have hxz : ‖z - x‖ ≤ ρ / 8 := mem_closedBall_iff_norm.1 hz
    have hP1 : ‖z.1‖ ≤ |Vbar| + ρ / 8 := by
      have h3 : ‖z.1‖ ≤ ‖x.1‖ + ‖z.1 - x.1‖ := by simpa using norm_add_le x.1 (z.1 - x.1)
      linarith [hx.2.2.1, le_abs_self Vbar, norm_fst_sub_le' z x]
    have hP2 : ‖z.2‖ ≤ |Vbar| + ρ / 8 := by
      have h3 : ‖z.2‖ ≤ ‖x.2‖ + ‖z.2 - x.2‖ := by simpa using norm_add_le x.2 (z.2 - x.2)
      linarith [hx.2.2.2, le_abs_self Vbar, norm_snd_sub_le' z x]
    have hP : 0 ≤ |Vbar| + ρ / 8 := by positivity
    have c1 : ∀ k, |z.1 k| ≤ |Vbar| + ρ / 8 := fun k => (coord_le z.1 k).trans hP1
    have c2 : ∀ k, |z.2 k| ≤ |Vbar| + ρ / 8 := fun k => (coord_le z.2 k).trans hP2
    rw [restrictedField_eq', Prod.norm_def]
    have t1 := term_norm_le hr (1 - μ) hzS.1
    have t2 := term_norm_le hr μ hzS.2
    have hKM : 0 ≤ K * ((ρ / 2) ^ 2)⁻¹ := by positivity
    have hB : ‖(![z.2 1, -z.2 0] : Fin 2 → ℝ)‖ ≤ |Vbar| + ρ / 8 :=
      norm_vec2_le hP (c2 1) (by rw [abs_neg]; exact c2 0)
    refine max_le ?_ ?_
    · refine (norm_vec2_le (C := 2 * (|Vbar| + ρ / 8)) (by positivity) ?_ ?_).trans (by linarith)
      · calc _ ≤ |z.2 0| + |z.1 1| := abs_add_le _ _
          _ ≤ 2 * (|Vbar| + ρ / 8) := by linarith [c1 1, c2 0]
      · calc _ ≤ |z.2 1| + |z.1 0| := abs_sub _ _
          _ ≤ 2 * (|Vbar| + ρ / 8) := by linarith [c1 0, c2 1]
    · refine (norm_sub_le _ _).trans
        ((add_le_add ((norm_sub_le _ _).trans (add_le_add hB t1)) t2).trans ?_)
      have : K * ((ρ / 2) ^ 2)⁻¹ = |1 - μ| * ((ρ / 2) ^ 2)⁻¹ + |μ| * ((ρ / 2) ^ 2)⁻¹ := by
        rw [hK]; ring
      linarith

end Restricted

end KAM.ODE
