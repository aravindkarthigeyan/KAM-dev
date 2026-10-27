/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Frozen.Defs.ComplexStrip
public import KAM.Frozen.Defs.RealHamiltonian
public import KAM.Strip.HigherCauchy

/-!
# Shrunken domains and basic constants of HEAD

Blueprint Part 4, `bp:p4:data` (Definition "Shrunken domains and basic constants"). For the data
`s₀, r₀ > 0`, `B ⊆ ℝⁿ`, and the witnesses `L_h`, `C_B` of HEAD:

* `KAM.Head.Lplus L_h = L₊ = max (L_h, 1)` and `KAM.Head.CBplus C_B = C_B⁺ = max (C_B, 0)`;
* `KAM.Head.stripWidth s₀ = s = min (s₀, 1)`, `KAM.Head.deltaStar s₀ r₀ = δ_* = ¼ min (s, r₀)` and
  `KAM.Head.muParam s₀ r₀ = μ = ½ δ_*`;
* `KAM.Head.domainD s₀ r₀ B = 𝔇 = T_{s/2} × B_{r₀/2}` and
  `KAM.Head.domainD' s₀ r₀ B = 𝔇' = T_{3s/4} × B_{3r₀/4}`;
* `KAM.Head.cauchyConst m j = c(m,j)`, the constants of Lemma `bp:p1:cauchy-open` (`1, 4, 32` for
  `j = 1, 2, 3`, independent of `m`, as proved in `KAM/Strip/Cauchy.lean` and
  `KAM/Strip/HigherCauchy.lean`), and `KAM.Head.cbar n = c̄ = max {1, c(n,j), c(2n,j) : j = 1,2,3}`,
  which equals `32` (`KAM.Head.cbar_eq`);
* `KAM.Head.unperturbedTorus I_* θ = K⁰_{I_*}(θ) = (θ, ι I_*)`;
* `KAM.Head.hbold h f = 𝐡`, `𝐡(θ, I) = h(I) + f(θ, I)`, with
  `KAM.Head.realHamiltonian_eq_re_hbold`: the frozen real Hamiltonian is `Re 𝐡(ι z)`.

The blueprint's notes after the definition are `KAM.Head.deltaStar_le_quarter`,
`KAM.Head.muParam_le_eighth` and `KAM.Head.domainD_subset_domainD'`, `KAM.Head.domainD'_subset`.
-/

@[expose] public noncomputable section

namespace KAM.Head

/-- Blueprint `bp:p4:data`: `L₊ = max (L_h, 1)`. -/
def Lplus (L_h : ℝ) : ℝ := max L_h 1

/-- Blueprint `bp:p4:data`: `C_B⁺ = max (C_B, 0)`. -/
def CBplus (C_B : ℝ) : ℝ := max C_B 0

/-- Blueprint `bp:p4:data`: `s = min (s₀, 1)`. -/
def stripWidth (s₀ : ℝ) : ℝ := min s₀ 1

/-- Blueprint `bp:p4:data`: `δ_* = ¼ min (s, r₀)`. -/
def deltaStar (s₀ r₀ : ℝ) : ℝ := 1 / 4 * min (stripWidth s₀) r₀

/-- Blueprint `bp:p4:data`: `μ = ½ δ_*`. -/
def muParam (s₀ r₀ : ℝ) : ℝ := 1 / 2 * deltaStar s₀ r₀

/-- Blueprint `bp:p4:data`: `𝔇 = T_{s/2} × B_{r₀/2}`. -/
def domainD (n : ℕ) (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) : Set ((Fin n → ℂ) × (Fin n → ℂ)) :=
  complexStrip n (stripWidth s₀ / 2) ×ˢ actionNbhd B (r₀ / 2)

/-- Blueprint `bp:p4:data`: `𝔇' = T_{3s/4} × B_{3r₀/4}`. -/
def domainD' (n : ℕ) (s₀ r₀ : ℝ) (B : Set (Fin n → ℝ)) : Set ((Fin n → ℂ) × (Fin n → ℂ)) :=
  complexStrip n (3 * stripWidth s₀ / 4) ×ˢ actionNbhd B (3 * r₀ / 4)

/-- Blueprint `bp:p4:data`: the constants `c(m, j)` of Lemma `bp:p1:cauchy-open`, with
`D^j f(z)` bounded by `c(m,j) A δ⁻ʲ` for `j = 1, 2, 3`: they are `1, 4, 32`, independent of `m`
(see `KAM.norm_fderiv_le_of_closedBall`, `KAM.norm_iteratedFDeriv_two_le_of_closedBall`,
`KAM.norm_iteratedFDeriv_three_le_of_closedBall`). -/
def cauchyConst (_m j : ℕ) : ℝ :=
  match j with
  | 1 => 1
  | 2 => 4
  | _ => 32

/-- The constants `c(m, j)` are those of the Cauchy estimates of `KAM/Strip` (Lemma
`bp:p1:cauchy-open`): for `f` holomorphic on an open `U ⊆ ℂᵐ` with `‖f‖ ≤ A` on `U` and the closed
polydisc of radius `δ` around `z` inside `U`, `‖D^j f(z)‖ ≤ c(m,j) A δ⁻ʲ` for `j = 1, 2, 3`. -/
theorem norm_iteratedFDeriv_le_cauchyConst {m : ℕ} {U : Set (Fin m → ℂ)} (hU : IsOpen U)
    {f : (Fin m → ℂ) → ℂ} (hf : DifferentiableOn ℂ f U) {z : Fin m → ℂ} {δ A : ℝ} (hδ : 0 < δ)
    (hz : Metric.closedBall z δ ⊆ U) (hA : ∀ w ∈ U, ‖f w‖ ≤ A) {j : ℕ}
    (hj : j ∈ ({1, 2, 3} : Set ℕ)) :
    ‖iteratedFDeriv ℂ j f z‖ ≤ cauchyConst m j * A / δ ^ j := by
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hj
  rcases hj with rfl | rfl | rfl
  · rw [norm_iteratedFDeriv_one]
    simpa [cauchyConst] using norm_fderiv_le_of_closedBall hU hf hδ hz hA
  · simpa [cauchyConst] using norm_iteratedFDeriv_two_le_of_closedBall hU hf hδ hz
      (fun w hw => hA w (hz hw))
  · simpa [cauchyConst] using norm_iteratedFDeriv_three_le_of_closedBall hU hf hδ hz
      (fun w hw => hA w (hz hw))

/-- Blueprint `bp:p4:data`: `c̄ = max {1, c(n,j), c(2n,j) : j = 1, 2, 3}`. -/
def cbar (n : ℕ) : ℝ :=
  sSup ({1} ∪ (fun j => cauchyConst n j) '' {1, 2, 3} ∪
    (fun j => cauchyConst (2 * n) j) '' {1, 2, 3})

/-- Blueprint `bp:p4:data`: the unperturbed torus at `I_*`, `K⁰_{I_*}(θ) = (θ, ι I_*)`. -/
def unperturbedTorus {n : ℕ} (I : Fin n → ℝ) (θ : Fin n → ℂ) : (Fin n → ℂ) × (Fin n → ℂ) :=
  (θ, fun i => (I i : ℂ))

/-- Blueprint `bp:p4:data`: `𝐡(θ, I) = h(I) + f(θ, I)` on `D(s₀, r₀)`. -/
def hbold {n : ℕ} (h : (Fin n → ℂ) → ℂ) (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (z : (Fin n → ℂ) × (Fin n → ℂ)) : ℂ :=
  h z.2 + f z

/-- The frozen real Hamiltonian is `H(z) = Re 𝐡(ι z)` at every real point `z`. -/
theorem realHamiltonian_eq_re_hbold {n : ℕ} (h : (Fin n → ℂ) → ℂ)
    (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ) (z : (Fin n → ℝ) × (Fin n → ℝ)) :
    realHamiltonian h f z = (hbold h f (fun i => (z.1 i : ℂ), fun i => (z.2 i : ℂ))).re := rfl

@[simp] theorem unperturbedTorus_fst {n : ℕ} (I : Fin n → ℝ) (θ : Fin n → ℂ) :
    (unperturbedTorus I θ).1 = θ := rfl

@[simp] theorem unperturbedTorus_snd {n : ℕ} (I : Fin n → ℝ) (θ : Fin n → ℂ) :
    (unperturbedTorus I θ).2 = fun i => (I i : ℂ) := rfl

theorem one_le_Lplus (L_h : ℝ) : 1 ≤ Lplus L_h := le_max_right _ _

theorem le_Lplus (L_h : ℝ) : L_h ≤ Lplus L_h := le_max_left _ _

theorem CBplus_nonneg (C_B : ℝ) : 0 ≤ CBplus C_B := le_max_right _ _

theorem le_CBplus (C_B : ℝ) : C_B ≤ CBplus C_B := le_max_left _ _

theorem stripWidth_pos {s₀ : ℝ} (hs₀ : 0 < s₀) : 0 < stripWidth s₀ := lt_min hs₀ one_pos

theorem stripWidth_le_one (s₀ : ℝ) : stripWidth s₀ ≤ 1 := min_le_right _ _

theorem stripWidth_le (s₀ : ℝ) : stripWidth s₀ ≤ s₀ := min_le_left _ _

theorem deltaStar_pos {s₀ r₀ : ℝ} (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) : 0 < deltaStar s₀ r₀ := by
  unfold deltaStar
  have := lt_min (stripWidth_pos hs₀) hr₀
  positivity

theorem muParam_pos {s₀ r₀ : ℝ} (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) : 0 < muParam s₀ r₀ := by
  unfold muParam
  have := deltaStar_pos hs₀ hr₀
  positivity

/-- `δ_* ≤ ¼`, since `δ_* ≤ ¼ s` and `s ≤ 1`. -/
theorem deltaStar_le_quarter (s₀ r₀ : ℝ) : deltaStar s₀ r₀ ≤ 1 / 4 := by
  unfold deltaStar
  have := (min_le_left (stripWidth s₀) r₀).trans (stripWidth_le_one s₀)
  linarith

/-- `μ ≤ ⅛`. -/
theorem muParam_le_eighth (s₀ r₀ : ℝ) : muParam s₀ r₀ ≤ 1 / 8 := by
  unfold muParam
  linarith [deltaStar_le_quarter s₀ r₀]

theorem complexStrip_mono {n : ℕ} {ρ ρ' : ℝ} (h : ρ ≤ ρ') :
    complexStrip n ρ ⊆ complexStrip n ρ' :=
  fun _ hθ i => (hθ i).trans_le h

theorem actionNbhd_mono {n : ℕ} (B : Set (Fin n → ℝ)) {r r' : ℝ} (h : r ≤ r') :
    actionNbhd B r ⊆ actionNbhd B r' := by
  rintro I ⟨J, hJ, hlt⟩
  exact ⟨J, hJ, hlt.trans_le h⟩

/-- `𝔇 ⊆ 𝔇'`. -/
theorem domainD_subset_domainD' (n : ℕ) {s₀ r₀ : ℝ} (hs₀ : 0 < s₀) (hr₀ : 0 < r₀)
    (B : Set (Fin n → ℝ)) : domainD n s₀ r₀ B ⊆ domainD' n s₀ r₀ B := by
  have hs := stripWidth_pos hs₀
  exact Set.prod_mono (complexStrip_mono (by linarith)) (actionNbhd_mono B (by linarith))

/-- `𝔇' ⊆ D(s₀, r₀) = T_{s₀} × B_{r₀}`, because `s ≤ s₀`. -/
theorem domainD'_subset (n : ℕ) {s₀ r₀ : ℝ} (hs₀ : 0 < s₀) (hr₀ : 0 < r₀) (B : Set (Fin n → ℝ)) :
    domainD' n s₀ r₀ B ⊆ complexStrip n s₀ ×ˢ actionNbhd B r₀ := by
  have hs := stripWidth_pos hs₀
  have hs' := stripWidth_le s₀
  exact Set.prod_mono (complexStrip_mono (by linarith)) (actionNbhd_mono B (by linarith))

/-- `c̄ = 32`: the Cauchy constants are `1, 4, 32` for every `m`. -/
theorem cbar_eq (n : ℕ) : cbar n = 32 := by
  unfold cbar
  refine IsGreatest.csSup_eq ⟨?_, ?_⟩
  · refine Or.inl (Or.inr ⟨3, by simp, ?_⟩)
    simp [cauchyConst]
  · rintro x ((hx | ⟨j, hj, rfl⟩) | ⟨j, hj, rfl⟩)
    · rw [Set.mem_singleton_iff.1 hx]; norm_num
    · simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hj
      rcases hj with rfl | rfl | rfl <;> norm_num [cauchyConst]
    · simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hj
      rcases hj with rfl | rfl | rfl <;> norm_num [cauchyConst]

end KAM.Head

end
