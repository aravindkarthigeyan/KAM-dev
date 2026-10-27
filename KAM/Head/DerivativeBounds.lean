/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Head.Data
public import KAM.Head.HBounded
public import KAM.Head.HamiltonianField
public import KAM.Strip.Bridges

/-!
# Derivative bounds

Blueprint Part 4, `bp:p4:derivative-bounds`, with the steps `step:p4:db-polydisc`,
`step:p4:db-cauchy` and `step:p4:db-vectorfield`. The data of HEAD is `0 < s₀`, `0 < r₀`, a
bounded `B ⊆ ℝⁿ`, `h` holomorphic on `B_{r₀}` (`actionNbhd B r₀`) and `f` holomorphic on
`D(s₀, r₀) = T_{s₀} × B_{r₀}` with `‖f‖ ≤ ε` there (periodicity and reality of `h`, `f` are not
needed for the bounds). The constants are `H_j = c̄ M_h δ_*^{-j}`, `F_j = c̄ δ_*^{-j}` and
`M = c̄ (M_h + 1) δ_*^{-3}` (`KAM.Head.derivConstH`, `KAM.Head.derivConstF`,
`KAM.Head.derivConstM`), with `M_h = KAM.Head.hBound h B r₀` and `c̄ = KAM.Head.cbar n`.

* `step:p4:db-polydisc`: `KAM.Head.closedBall_subset_domainD'` and
  `KAM.Head.closedBall_subset_actionNbhd_three_quarters`, the two claims of (a).
* `step:p4:db-cauchy`: `KAM.Head.norm_iteratedFDeriv_le_cbar` (the Cauchy estimates of
  `bp:p1:cauchy-open` on any finite-dimensional complex domain, with the constants `c̄`),
  `KAM.Head.norm_iteratedFDeriv_h_le` (b), `KAM.Head.norm_iteratedFDeriv_f_le` (c) and
  `KAM.Head.norm_iteratedFDeriv_hbold_le` (`|D^j 𝐡| ≤ c̄ (M_h + ε) δ_*^{-j}` on `𝔇`).
* `step:p4:db-vectorfield`: `KAM.Head.hamiltonianVectorField_bounds` (in
  `KAM/Head/HamiltonianField.lean`) completes (c) and gives (d).
* `KAM.Head.derivative_bounds` is `bp:p4:derivative-bounds`, parts (a)–(d).
-/

@[expose] public noncomputable section

open Metric

namespace KAM.Head

variable {n : ℕ}

/-! ### The constants -/

/-- Blueprint `bp:p4:derivative-bounds`: `H_j = c̄ M_h δ_*^{-j}`, here with `M_h` as an
argument (the HEAD value is `KAM.Head.hBound h B r₀`). -/
def derivConstH (n : ℕ) (s₀ r₀ Mh : ℝ) (j : ℕ) : ℝ :=
  cbar n * Mh * (deltaStar s₀ r₀)⁻¹ ^ j

/-- Blueprint `bp:p4:derivative-bounds`: `F_j = c̄ δ_*^{-j}`. -/
def derivConstF (n : ℕ) (s₀ r₀ : ℝ) (j : ℕ) : ℝ :=
  cbar n * (deltaStar s₀ r₀)⁻¹ ^ j

/-- Blueprint `bp:p4:derivative-bounds`: `M = c̄ (M_h + 1) δ_*^{-3}`. -/
def derivConstM (n : ℕ) (s₀ r₀ Mh : ℝ) : ℝ :=
  cbar n * (Mh + 1) * (deltaStar s₀ r₀)⁻¹ ^ 3

/-! ### Openness of the domains -/

/-- `B_r = actionNbhd B r` is open: a union of open balls around the points `ι J`, `J ∈ B`. -/
theorem isOpen_actionNbhd (B : Set (Fin n → ℝ)) (r : ℝ) : IsOpen (actionNbhd B r) := by
  have : actionNbhd B r = ⋃ J ∈ B, ball (fun i => (J i : ℂ)) r := by
    ext I
    simp only [actionNbhd, Set.mem_ofPred_eq, Set.mem_iUnion, mem_ball, dist_eq_norm,
      exists_prop]
  rw [this]
  exact isOpen_biUnion fun J _ => isOpen_ball

/-- `𝔇' = T_{3s/4} × B_{3r₀/4}` is open. -/
theorem isOpen_domainD' (n : ℕ) (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) :
    IsOpen (domainD' n s₀ r₀ B) :=
  (isOpen_complexStrip n _).prod (isOpen_actionNbhd B _)

/-- `𝔇 = T_{s/2} × B_{r₀/2}` is open. -/
theorem isOpen_domainD (n : ℕ) (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) :
    IsOpen (domainD n s₀ r₀ B) :=
  (isOpen_complexStrip n _).prod (isOpen_actionNbhd B _)

/-! ### Step `step:p4:db-polydisc` -/

theorem deltaStar_le_stripWidth_div (s₀ r₀ : ℝ) : deltaStar s₀ r₀ ≤ stripWidth s₀ / 4 := by
  unfold deltaStar
  linarith [min_le_left (stripWidth s₀) r₀]

theorem deltaStar_le_div (s₀ r₀ : ℝ) : deltaStar s₀ r₀ ≤ r₀ / 4 := by
  unfold deltaStar
  linarith [min_le_right (stripWidth s₀) r₀]

/-- Blueprint `step:p4:db-polydisc`, second claim of (a): for `I ∈ B_{r₀/2}` the closed polydisc
of radius `δ_*` around `I` lies in `B_{3r₀/4}`. -/
theorem closedBall_subset_actionNbhd_three_quarters {B : Set (Fin n → ℝ)} (s₀ r₀ : ℝ)
    {I : Fin n → ℂ} (hI : I ∈ actionNbhd B (r₀ / 2)) :
    closedBall I (deltaStar s₀ r₀) ⊆ actionNbhd B (3 * r₀ / 4) := by
  obtain ⟨J, hJ, hlt⟩ := hI
  intro w hw
  refine ⟨J, hJ, ?_⟩
  have h1 : ‖w - I‖ ≤ deltaStar s₀ r₀ := by simpa [dist_eq_norm] using hw
  calc ‖w - fun i => (J i : ℂ)‖ = ‖(w - I) + (I - fun i => (J i : ℂ))‖ := by
        congr 1; abel
    _ ≤ ‖w - I‖ + ‖I - fun i => (J i : ℂ)‖ := norm_add_le _ _
    _ < 3 * r₀ / 4 := by linarith [deltaStar_le_div s₀ r₀]

/-- Blueprint `step:p4:db-polydisc`, first claim of (a): for `z ∈ 𝔇` the closed polydisc of
radius `δ_*` around `z` lies in `𝔇'`. -/
theorem closedBall_subset_domainD' {B : Set (Fin n → ℝ)} (s₀ r₀ : ℝ)
    {z : (Fin n → ℂ) × (Fin n → ℂ)} (hz : z ∈ domainD n s₀ r₀ B) :
    closedBall z (deltaStar s₀ r₀) ⊆ domainD' n s₀ r₀ B := by
  intro w hw
  rw [mem_closedBall, Prod.dist_eq, max_le_iff] at hw
  refine ⟨fun i => ?_, ?_⟩
  · have h1 : ‖w.1 i - z.1 i‖ ≤ deltaStar s₀ r₀ :=
      (norm_le_pi_norm (w.1 - z.1) i).trans (by simpa [dist_eq_norm] using hw.1)
    have h2 : |(w.1 i).im - (z.1 i).im| ≤ deltaStar s₀ r₀ := by
      have := Complex.abs_im_le_norm (w.1 i - z.1 i)
      simpa using this.trans h1
    have h3 := hz.1 i
    have h4 := deltaStar_le_stripWidth_div s₀ r₀
    have h5 : |(w.1 i).im| ≤ |(z.1 i).im| + |(w.1 i).im - (z.1 i).im| := by
      calc |(w.1 i).im| = |(z.1 i).im + ((w.1 i).im - (z.1 i).im)| := by ring_nf
        _ ≤ _ := abs_add_le _ _
    show |(w.1 i).im| < 3 * stripWidth s₀ / 4
    linarith
  · exact (closedBall_subset_actionNbhd_three_quarters (B := B) s₀ r₀ hz.2)
      (by rw [mem_closedBall]; exact hw.2)

/-! ### Step `step:p4:db-cauchy` -/

/-- Blueprint `step:p4:db-cauchy`: the Cauchy estimates of `bp:p1:cauchy-open` with the constant
`c̄` of HEAD (`c̄ = 32`), on any finite-dimensional complex domain: if `f` is holomorphic on the
open set `U` with `‖f‖ ≤ A` there and the closed polydisc of radius `δ` around `z` lies in `U`,
then `‖D^j f(z)‖ ≤ c̄ A δ^{-j}` for `j = 1, 2, 3`. -/
theorem norm_iteratedFDeriv_le_cbar (n : ℕ) {E F : Type*} [NormedAddCommGroup E]
    [NormedSpace ℂ E] [FiniteDimensional ℂ E] [NormedAddCommGroup F] [NormedSpace ℂ F]
    [CompleteSpace F] [SecondCountableTopology F] {U : Set E} (hU : IsOpen U) {f : E → F}
    (hf : DifferentiableOn ℂ f U) {z : E} {δ A : ℝ} (hδ : 0 < δ) (hz : closedBall z δ ⊆ U)
    (hA : ∀ w ∈ U, ‖f w‖ ≤ A) {j : ℕ} (hj : j ∈ ({1, 2, 3} : Set ℕ)) :
    ‖iteratedFDeriv ℂ j f z‖ ≤ cbar n * A * δ⁻¹ ^ j := by
  have hA0 : 0 ≤ A := (norm_nonneg _).trans (hA z (hz (mem_closedBall_self hδ.le)))
  have hball : ∀ w ∈ closedBall z δ, ‖f w‖ ≤ A := fun w hw => hA w (hz hw)
  have hc := cbar_eq n
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hj
  rw [inv_pow, ← div_eq_mul_inv]
  rcases hj with rfl | rfl | rfl
  · rw [norm_iteratedFDeriv_one]
    have := norm_fderiv_le_of_closedBall hU hf hδ hz hA
    rw [pow_one, hc]
    exact this.trans (by gcongr; linarith)
  · have := norm_iteratedFDeriv_two_le_of_closedBall hU hf hδ hz hball
    rw [hc]
    exact this.trans (by gcongr; linarith)
  · have := norm_iteratedFDeriv_three_le_of_closedBall hU hf hδ hz hball
    rw [hc]
    exact this.trans (by gcongr)

section HeadData

variable {s₀ r₀ : ℝ} {B : Set (Fin n → ℝ)} {h : (Fin n → ℂ) → ℂ}
  {f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ} {ε : ℝ}

/-- `𝔇 ⊆ D(s₀, r₀) = T_{s₀} × B_{r₀}`. -/
theorem domainD_subset (n : ℕ) {s₀ r₀ : ℝ} (hs₀ : 0 < s₀) (hr₀ : 0 < r₀)
    (B : Set (Fin n → ℝ)) : domainD n s₀ r₀ B ⊆ complexStrip n s₀ ×ˢ actionNbhd B r₀ :=
  (domainD_subset_domainD' n hs₀ hr₀ B).trans (domainD'_subset n hs₀ hr₀ B)

/-- Blueprint `step:p4:db-cauchy`, (b): `‖D^j h(I)‖ ≤ H_j` for `I ∈ B_{r₀/2}` and `j = 1, 2, 3`.
Here `h` is bounded by `M_h` on `B_{3r₀/4}` (`bp:p4:h-bounded`), and the polydisc of radius
`δ_*` around `I` lies in `B_{3r₀/4}` (`step:p4:db-polydisc`). -/
theorem norm_iteratedFDeriv_h_le (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) (hB : Bornology.IsBounded B)
    (hh : DifferentiableOn ℂ h (actionNbhd B r₀)) {I : Fin n → ℂ}
    (hI : I ∈ actionNbhd B (r₀ / 2)) {j : ℕ} (hj : j ∈ ({1, 2, 3} : Set ℕ)) :
    ‖iteratedFDeriv ℂ j h I‖ ≤ derivConstH n s₀ r₀ (hBound h B r₀) j :=
  norm_iteratedFDeriv_le_cbar n (isOpen_actionNbhd B _)
    (hh.mono (actionNbhd_mono B (by linarith))) (deltaStar_pos hs₀ hr₀)
    (closedBall_subset_actionNbhd_three_quarters s₀ r₀ hI)
    (fun _ hw => norm_le_hBound hB hr₀ hh hw) hj

/-- Blueprint `step:p4:db-cauchy`, (c) for `D^j f`: `‖D^j f(z)‖ ≤ F_j ε` for `z ∈ 𝔇` and
`j = 1, 2, 3`. -/
theorem norm_iteratedFDeriv_f_le (hs₀ : 0 < s₀) (hr₀ : 0 < r₀)
    (hf : DifferentiableOn ℂ f (complexStrip n s₀ ×ˢ actionNbhd B r₀))
    (hε : ∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ‖f z‖ ≤ ε)
    {z : (Fin n → ℂ) × (Fin n → ℂ)} (hz : z ∈ domainD n s₀ r₀ B) {j : ℕ}
    (hj : j ∈ ({1, 2, 3} : Set ℕ)) :
    ‖iteratedFDeriv ℂ j f z‖ ≤ derivConstF n s₀ r₀ j * ε := by
  have hsub := domainD'_subset n hs₀ hr₀ B
  have h := norm_iteratedFDeriv_le_cbar n (isOpen_domainD' n s₀ r₀ B) (hf.mono hsub)
    (deltaStar_pos hs₀ hr₀) (closedBall_subset_domainD' s₀ r₀ hz)
    (fun w hw => hε w (hsub hw)) hj
  unfold derivConstF
  linarith

/-- `𝐡 = h(I) + f(θ, I)` is holomorphic on `𝔇'`. -/
theorem differentiableOn_hbold (hs₀ : 0 < s₀) (hr₀ : 0 < r₀)
    (hh : DifferentiableOn ℂ h (actionNbhd B r₀))
    (hf : DifferentiableOn ℂ f (complexStrip n s₀ ×ˢ actionNbhd B r₀)) :
    DifferentiableOn ℂ (hbold h f) (domainD' n s₀ r₀ B) := by
  have hsub := domainD'_subset n hs₀ hr₀ B
  have h1 : DifferentiableOn ℂ (fun z : (Fin n → ℂ) × (Fin n → ℂ) => h z.2)
      (domainD' n s₀ r₀ B) :=
    hh.comp differentiable_snd.differentiableOn fun z hz => (hsub hz).2
  exact h1.add (hf.mono hsub)

/-- `‖𝐡‖ ≤ M_h + ε` on `𝔇'`. -/
theorem norm_hbold_le (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) (hB : Bornology.IsBounded B)
    (hh : DifferentiableOn ℂ h (actionNbhd B r₀))
    (hε : ∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ‖f z‖ ≤ ε)
    {z : (Fin n → ℂ) × (Fin n → ℂ)} (hz : z ∈ domainD' n s₀ r₀ B) :
    ‖hbold h f z‖ ≤ hBound h B r₀ + ε :=
  (norm_add_le _ _).trans
    (add_le_add (norm_le_hBound hB hr₀ hh hz.2) (hε z (domainD'_subset n hs₀ hr₀ B hz)))

/-- Blueprint `step:p4:db-cauchy`: `‖D^j 𝐡(z)‖ ≤ c̄ (M_h + ε) δ_*^{-j}` for `z ∈ 𝔇` and
`j = 1, 2, 3`. -/
theorem norm_iteratedFDeriv_hbold_le (hs₀ : 0 < s₀) (hr₀ : 0 < r₀)
    (hB : Bornology.IsBounded B) (hh : DifferentiableOn ℂ h (actionNbhd B r₀))
    (hf : DifferentiableOn ℂ f (complexStrip n s₀ ×ˢ actionNbhd B r₀))
    (hε : ∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ‖f z‖ ≤ ε)
    {z : (Fin n → ℂ) × (Fin n → ℂ)} (hz : z ∈ domainD n s₀ r₀ B) {j : ℕ}
    (hj : j ∈ ({1, 2, 3} : Set ℕ)) :
    ‖iteratedFDeriv ℂ j (hbold h f) z‖ ≤ cbar n * (hBound h B r₀ + ε) * (deltaStar s₀ r₀)⁻¹ ^ j :=
  norm_iteratedFDeriv_le_cbar n (isOpen_domainD' n s₀ r₀ B) (differentiableOn_hbold hs₀ hr₀ hh hf)
    (deltaStar_pos hs₀ hr₀) (closedBall_subset_domainD' s₀ r₀ hz)
    (fun _ hw => norm_hbold_le hs₀ hr₀ hB hh hε hw) hj

/-- For `ε ≤ 1` and `j ≤ 3`: `c̄ (M_h + ε) δ_*^{-j} ≤ M`. -/
theorem cbar_mul_le_derivConstM (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) {Mh ε : ℝ} (hMh : 0 ≤ Mh)
    (hε1 : ε ≤ 1) {j : ℕ} (hj : j ≤ 3) :
    cbar n * (Mh + ε) * (deltaStar s₀ r₀)⁻¹ ^ j ≤ derivConstM n s₀ r₀ Mh := by
  have hδ := deltaStar_pos hs₀ hr₀
  have hδ1 : 1 ≤ (deltaStar s₀ r₀)⁻¹ :=
    (one_le_inv₀ hδ).2 ((deltaStar_le_quarter s₀ r₀).trans (by norm_num))
  have hc : 0 ≤ cbar n := by rw [cbar_eq]; norm_num
  unfold derivConstM
  have : (deltaStar s₀ r₀)⁻¹ ^ j ≤ (deltaStar s₀ r₀)⁻¹ ^ 3 := pow_le_pow_right₀ hδ1 hj
  gcongr

/-- Blueprint `bp:p4:derivative-bounds`. Let `s₀, r₀ > 0`, `B ⊆ ℝⁿ` bounded, `h` holomorphic on
`B_{r₀}` and `f` holomorphic on `D(s₀, r₀) = T_{s₀} × B_{r₀}` with `‖f‖ ≤ ε` there. With
`H_j = c̄ M_h δ_*^{-j}`, `F_j = c̄ δ_*^{-j}` and `M = c̄ (M_h + 1) δ_*^{-3}`:

* (a) the closed polydisc of radius `δ_*` around `z ∈ 𝔇` lies in `𝔇'`, and around `I ∈ B_{r₀/2}`
  lies in `B_{3r₀/4}`;
* (b) `‖D^j h(I)‖ ≤ H_j` for `I ∈ B_{r₀/2}` and `j = 1, 2, 3`;
* (c) `‖D^j f(z)‖ ≤ F_j ε` for `z ∈ 𝔇` and `j = 1, 2, 3`, and `‖X_f‖ ≤ F_1 ε`,
  `‖DX_f‖ ≤ F_2 ε` on `𝔇`;
* (d) if `ε ≤ 1`, then on `𝔇`: `‖D𝐡‖, ‖X_𝐡‖, ‖DX_𝐡‖, ‖D²X_𝐡‖ ≤ M`.

Periodicity and reality of `h` and `f` are not needed. -/
theorem derivative_bounds (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) (hB : Bornology.IsBounded B)
    (hh : DifferentiableOn ℂ h (actionNbhd B r₀))
    (hf : DifferentiableOn ℂ f (complexStrip n s₀ ×ˢ actionNbhd B r₀))
    (hε : ∀ z ∈ complexStrip n s₀ ×ˢ actionNbhd B r₀, ‖f z‖ ≤ ε) :
    (∀ z ∈ domainD n s₀ r₀ B, closedBall z (deltaStar s₀ r₀) ⊆ domainD' n s₀ r₀ B) ∧
    (∀ I ∈ actionNbhd B (r₀ / 2),
      closedBall I (deltaStar s₀ r₀) ⊆ actionNbhd B (3 * r₀ / 4)) ∧
    (∀ j ∈ ({1, 2, 3} : Set ℕ), ∀ I ∈ actionNbhd B (r₀ / 2),
      ‖iteratedFDeriv ℂ j h I‖ ≤ derivConstH n s₀ r₀ (hBound h B r₀) j) ∧
    (∀ j ∈ ({1, 2, 3} : Set ℕ), ∀ z ∈ domainD n s₀ r₀ B,
      ‖iteratedFDeriv ℂ j f z‖ ≤ derivConstF n s₀ r₀ j * ε) ∧
    (∀ z ∈ domainD n s₀ r₀ B, ‖hamiltonianVectorFieldℂ f z‖ ≤ derivConstF n s₀ r₀ 1 * ε ∧
      ‖fderiv ℂ (hamiltonianVectorFieldℂ f) z‖ ≤ derivConstF n s₀ r₀ 2 * ε) ∧
    (ε ≤ 1 → ∀ z ∈ domainD n s₀ r₀ B,
      ‖fderiv ℂ (hbold h f) z‖ ≤ derivConstM n s₀ r₀ (hBound h B r₀) ∧
      ‖hamiltonianVectorFieldℂ (hbold h f) z‖ ≤ derivConstM n s₀ r₀ (hBound h B r₀) ∧
      ‖fderiv ℂ (hamiltonianVectorFieldℂ (hbold h f)) z‖ ≤
        derivConstM n s₀ r₀ (hBound h B r₀) ∧
      ‖iteratedFDeriv ℂ 2 (hamiltonianVectorFieldℂ (hbold h f)) z‖ ≤
        derivConstM n s₀ r₀ (hBound h B r₀)) := by
  have hsub := domainD'_subset n hs₀ hr₀ B
  have hD'f : DifferentiableOn ℂ f (domainD' n s₀ r₀ B) := hf.mono hsub
  refine ⟨fun z hz => closedBall_subset_domainD' s₀ r₀ hz,
    fun I hI => closedBall_subset_actionNbhd_three_quarters s₀ r₀ hI,
    fun j hj I hI => norm_iteratedFDeriv_h_le hs₀ hr₀ hB hh hI hj,
    fun j hj z hz => norm_iteratedFDeriv_f_le hs₀ hr₀ hf hε hz hj, fun z hz => ?_,
    fun hε1 z hz => ?_⟩
  · have hzD' := domainD_subset_domainD' n hs₀ hr₀ B hz
    obtain ⟨h1, h2, -⟩ := hamiltonianVectorField_bounds (isOpen_domainD' n s₀ r₀ B) hD'f hzD'
    have c1 := norm_iteratedFDeriv_f_le hs₀ hr₀ hf hε hz (j := 1) (by simp)
    have c2 := norm_iteratedFDeriv_f_le hs₀ hr₀ hf hε hz (j := 2) (by simp)
    rw [norm_iteratedFDeriv_one] at c1
    exact ⟨h1.trans c1, h2.trans c2⟩
  · have hzD' := domainD_subset_domainD' n hs₀ hr₀ B hz
    have hMh := hBound_nonneg h B r₀
    have hhb := differentiableOn_hbold hs₀ hr₀ hh hf
    obtain ⟨h1, h2, h3⟩ := hamiltonianVectorField_bounds (isOpen_domainD' n s₀ r₀ B) hhb hzD'
    have key : ∀ j : ℕ, j ∈ ({1, 2, 3} : Set ℕ) →
        ‖iteratedFDeriv ℂ j (hbold h f) z‖ ≤ derivConstM n s₀ r₀ (hBound h B r₀) :=
      fun j hj => (norm_iteratedFDeriv_hbold_le hs₀ hr₀ hB hh hf hε hz hj).trans
        (cbar_mul_le_derivConstM hs₀ hr₀ hMh hε1 (by simp at hj; omega))
    have k1 := key 1 (by simp)
    have k2 := key 2 (by simp)
    have k3 := key 3 (by simp)
    rw [norm_iteratedFDeriv_one] at k1
    exact ⟨k1, h1.trans k1, h2.trans k2, h3.trans k3⟩

end HeadData

end KAM.Head

end
