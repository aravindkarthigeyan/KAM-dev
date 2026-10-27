/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.ODE.Maximal
public import KAM.ODE.UniformPeriodic

/-!
# Continuation and confinement for maximal solutions

Blueprint N Part 3 (`bpN:p3:gen-continuation`, `gen-continuation-compact`,
`gen-continuation-periodic`, `gen-confinement`).

* `KAM.ODE.gen_continuation`: a maximal solution that stays in a set with uniform data near an end
  of its interval has that end infinite.
* `KAM.ODE.gen_continuation_compact`, `KAM.ODE.gen_continuation_periodic`: compact and
  angle-periodic variants.
* `KAM.ODE.gen_confinement`: a priori confinement on `[-τ, τ]` gives a maximal solution whose
  interval contains `[-τ, τ]` in its interior.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

namespace KAM.ODE

section Continuation

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [ProperSpace E]

omit [NormedSpace ℝ E] [ProperSpace E] in
/-- Uniform data is preserved by reversing the field. -/
private theorem UniformData.neg' {F : E → E} {W Φ : Set E} {δ M : ℝ} {L : ℝ≥0}
    (h : UniformData F W Φ δ M L) : UniformData (fun x => -F x) W Φ δ M L :=
  ⟨h.delta_pos, h.M_nonneg, h.closedBall_subset, fun x hx y hy => by
    rw [norm_neg]; exact h.norm_le x hx y hy,
    fun x hx => (h.lipschitz x hx).neg⟩

/-- The right end of the continuation statement. -/
private theorem continuation_right {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) {x₀ : E} {Tm Tp : EReal} {z : ℝ → E}
    (hz : IsMaximalSolution F W x₀ Tm Tp z) {Φ : Set E} {δ M : ℝ} {L : ℝ≥0}
    (hΦ : UniformData F W Φ δ M L) {t_star : ℝ} (hts0 : 0 ≤ t_star)
    (hts : (t_star : EReal) < Tp) (hΦz : ∀ t : ℝ, t_star ≤ t → (t : EReal) < Tp → z t ∈ Φ) :
    Tp = ⊤ := by
  by_contra hne
  have hTp0 : (0 : EReal) < Tp := hz.pos_lt
  obtain ⟨T, rfl⟩ : ∃ T : ℝ, Tp = (T : EReal) := by
    induction Tp using EReal.rec with
    | bot => exact absurd hTp0 (by simp)
    | top => exact absurd rfl hne
    | coe a => exact ⟨a, rfl⟩
  have hts' : t_star < T := EReal.coe_lt_coe_iff.1 hts
  set ε : ℝ := δ / max M 1 with hε
  have hε0 : 0 < ε := div_pos hΦ.delta_pos (lt_of_lt_of_le one_pos (le_max_right _ _))
  set t₁ : ℝ := max t_star (T - ε / 2) with ht₁
  have ht₁T : t₁ < T := max_lt hts' (by linarith)
  have ht₁s : t_star ≤ t₁ := le_max_left _ _
  have hTt₁ : T < t₁ + ε := by
    have : T - ε / 2 ≤ t₁ := le_max_right _ _
    linarith
  have hz₁ : z t₁ ∈ Φ := hΦz t₁ ht₁s (EReal.coe_lt_coe_iff.2 ht₁T)
  obtain ⟨α, hα0, -, hα⟩ := gen_uniform_exist hΦ (z t₁) hz₁ t₁
  have hTmt : Tm < (t₁ : EReal) :=
    lt_of_lt_of_le hz.neg_lt (by exact_mod_cast hts0.trans ht₁s)
  obtain ⟨l, hl1, hl2⟩ := EReal.lt_iff_exists_real_btwn.1 hTmt
  have hl2' : l < t₁ := EReal.coe_lt_coe_iff.1 hl2
  set l' : ℝ := max l (t₁ - ε) with hl'
  have hl't₁ : l' < t₁ := max_lt hl2' (by linarith)
  have hsol1 : IsSolutionIn F W (eIoo Tm (T : EReal)) z := hz.isSolution
  have hI2 : IsSolutionIn F W (Ioo l' (t₁ + ε)) α :=
    hα.mono (Ioo_subset_Ioo (by linarith [le_max_right l (t₁ - ε)]) le_rfl)
  have hagree : EqOn z α (eIoo Tm (T : EReal) ∩ Ioo (t₁ - ε) (t₁ + ε)) :=
    gen_uniqueness_inter hW hF (ordConnected_eIoo _ _) ordConnected_Ioo (t₀ := t₁)
      ⟨⟨hTmt, EReal.coe_lt_coe_iff.2 ht₁T⟩, ⟨by linarith, by linarith⟩⟩ hz.isSolution hα
      hα0.symm
  classical
  set y : ℝ → E := fun t => if t < T then z t else α t with hy
  have hyz : EqOn y z (eIoo Tm (T : EReal)) := fun t ht => by
    simp [hy, EReal.coe_lt_coe_iff.1 ht.2]
  have hyα : EqOn y α (Ioo l' (t₁ + ε)) := fun t ht => by
    by_cases htT : t < T
    · have hlt : (l : EReal) < t := EReal.coe_lt_coe_iff.2 (lt_of_le_of_lt (le_max_left _ _) ht.1)
      have : z t = α t := hagree ⟨⟨lt_trans hl1 hlt, EReal.coe_lt_coe_iff.2 htT⟩,
        ⟨lt_of_le_of_lt (le_max_right _ _) ht.1, ht.2⟩⟩
      simp [hy, htT, this]
    · simp [hy, htT]
  have hJ : IsSolutionIn F W (eIoo Tm ((t₁ + ε : ℝ) : EReal)) y := by
    have hu := IsSolutionIn.union_of_isOpen hsol1 hI2 (isOpen_eIoo _ _) isOpen_Ioo hyz hyα
    refine hu.mono (fun t ht => ?_)
    by_cases htT : t < T
    · exact Or.inl ⟨ht.1, EReal.coe_lt_coe_iff.2 htT⟩
    · exact Or.inr ⟨lt_of_lt_of_le hl't₁ (by linarith), EReal.coe_lt_coe_iff.1 ht.2⟩
  have h0 : (0 : ℝ) ∈ eIoo Tm ((t₁ + ε : ℝ) : EReal) :=
    ⟨by simpa using hz.neg_lt, EReal.coe_lt_coe_iff.2 (by linarith [hts0.trans ht₁s])⟩
  have hy0 : y 0 = x₀ := by
    have h0T : (0 : ℝ) < T := by exact_mod_cast hTp0
    simp [hy, h0T, hz.init]
  obtain ⟨hsub, -⟩ := hz.maximal _ y (ordConnected_eIoo _ _) h0 hy0 hJ
  have hs : (T + (t₁ + ε)) / 2 ∈ eIoo Tm ((t₁ + ε : ℝ) : EReal) :=
    ⟨lt_of_lt_of_le hTmt (EReal.coe_le_coe_iff.2 (by linarith)),
      EReal.coe_lt_coe_iff.2 (by linarith)⟩
  have := (hsub hs).2
  have := EReal.coe_lt_coe_iff.1 this
  linarith

/-- `bpN:p3:gen-continuation` (positive form of "there is no `t_*` ..."): if the maximal solution
stays in a set with uniform data near an end of its maximal interval, that end is infinite. -/
theorem gen_continuation {F : E → E} {W : Set E} (hW : IsOpen W) (hF : ContDiffOn ℝ 1 F W)
    {x₀ : E} {Tm Tp : EReal} {z : ℝ → E} (hz : IsMaximalSolution F W x₀ Tm Tp z)
    {Φ : Set E} {δ M : ℝ} {L : ℝ≥0} (hΦ : UniformData F W Φ δ M L) :
    ((∃ t_star : ℝ, 0 ≤ t_star ∧ (t_star : EReal) < Tp ∧
        ∀ t : ℝ, t_star ≤ t → (t : EReal) < Tp → z t ∈ Φ) → Tp = ⊤) ∧
    ((∃ t_star : ℝ, t_star ≤ 0 ∧ Tm < (t_star : EReal) ∧
        ∀ t : ℝ, Tm < (t : EReal) → t ≤ t_star → z t ∈ Φ) → Tm = ⊥) := by
  refine ⟨fun ⟨t_star, h0, h1, h2⟩ => continuation_right hW hF hz hΦ h0 h1 h2, ?_⟩
  rintro ⟨t_star, h0, h1, h2⟩
  have := continuation_right (F := fun x => -F x) hW hF.neg hz.neg hΦ.neg' (t_star := -t_star)
    (by linarith) (by simpa using EReal.neg_lt_neg_iff.2 h1) (fun t ht htT => by
      have hlt : Tm < ((-t : ℝ) : EReal) := by
        have := EReal.neg_lt_neg_iff.2 htT
        simpa [EReal.coe_neg] using this
      exact h2 (-t) hlt (by linarith))
  simpa using this

/-- `bpN:p3:gen-continuation-compact`. -/
theorem gen_continuation_compact {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) {x₀ : E} {Tm Tp : EReal} {z : ℝ → E}
    (hz : IsMaximalSolution F W x₀ Tm Tp z) {K : Set E} (hK : IsCompact K) (hKW : K ⊆ W) :
    ((∃ t_star : ℝ, 0 ≤ t_star ∧ (t_star : EReal) < Tp ∧
        ∀ t : ℝ, t_star ≤ t → (t : EReal) < Tp → z t ∈ K) → Tp = ⊤) ∧
    ((∃ t_star : ℝ, t_star ≤ 0 ∧ Tm < (t_star : EReal) ∧
        ∀ t : ℝ, Tm < (t : EReal) → t ≤ t_star → z t ∈ K) → Tm = ⊥) := by
  obtain ⟨δ, M, L, hU, -, -⟩ := gen_uniform_compact hW hF hK hKW
  exact gen_continuation hW hF hz hU

/-- `bpN:p3:gen-confinement`. The a priori confinement is the blueprint's hypothesis; the
conclusion adds that `z` is the maximal solution and that `[-τ, τ]` is in the interior of its
interval. -/
theorem gen_confinement {F : E → E} {W : Set E} (hW : IsOpen W) (hF : ContDiffOn ℝ 1 F W)
    {x₀ : E} (hx₀ : x₀ ∈ W) {τ : ℝ} (hτ : 0 < τ) {Φ : Set E} {δ M : ℝ} {L : ℝ≥0}
    (hΦ : UniformData F W Φ δ M L)
    (hconf : ∀ (J : Set ℝ) (y : ℝ → E), IsOpen J → J.OrdConnected → (0 : ℝ) ∈ J → y 0 = x₀ →
      IsSolutionIn F W J y → ∀ t ∈ J, |t| ≤ τ → y t ∈ Φ) :
    ∃ (Tm Tp : EReal) (z : ℝ → E), IsMaximalSolution F W x₀ Tm Tp z ∧ Tm < ((-τ : ℝ) : EReal) ∧
      ((τ : ℝ) : EReal) < Tp ∧ IsSolutionIn F W (Icc (-τ) τ) z ∧ (∀ t : ℝ, |t| ≤ τ → z t ∈ Φ) ∧
      ∀ r : ℝ, 0 ≤ r → r ≤ τ → ∀ y : ℝ → E, y 0 = x₀ → IsSolutionIn F W (Icc (-r) r) y →
        EqOn y z (Icc (-r) r) := by
  have _hτ := hτ
  obtain ⟨Tm, Tp, z, hz⟩ := (gen_maximal hW hF hx₀).1
  have hzΦ : ∀ t ∈ eIoo Tm Tp, |t| ≤ τ → z t ∈ Φ := fun t ht hτt =>
    hconf (eIoo Tm Tp) z (isOpen_eIoo _ _) (ordConnected_eIoo _ _) (zero_mem_eIoo hz) hz.init
      hz.isSolution t ht hτt
  have hTp : ((τ : ℝ) : EReal) < Tp := by
    by_contra hle
    rw [not_lt] at hle
    have := (gen_continuation hW hF hz hΦ).1 ⟨0, le_rfl, hz.pos_lt, fun t ht0 htT =>
      hzΦ t ⟨lt_of_lt_of_le hz.neg_lt (by exact_mod_cast ht0), htT⟩
        (by rw [abs_of_nonneg ht0]; exact EReal.coe_le_coe_iff.1 (htT.le.trans hle))⟩
    rw [this] at hle
    exact absurd hle (by simp)
  have hTm : Tm < ((-τ : ℝ) : EReal) := by
    by_contra hle
    rw [not_lt] at hle
    have := (gen_continuation hW hF hz hΦ).2 ⟨0, le_rfl, hz.neg_lt, fun t htT ht0 =>
      hzΦ t ⟨htT, lt_of_le_of_lt (by exact_mod_cast ht0) hz.pos_lt⟩
        (by rw [abs_of_nonpos ht0]; exact neg_le.1 (EReal.coe_le_coe_iff.1 (hle.trans htT.le)))⟩
    rw [this] at hle
    exact absurd hle (by simp)
  have hIcc : Icc (-τ) τ ⊆ eIoo Tm Tp := fun t ht =>
    ⟨lt_of_lt_of_le hTm (EReal.coe_le_coe_iff.2 ht.1),
      lt_of_le_of_lt (EReal.coe_le_coe_iff.2 ht.2) hTp⟩
  refine ⟨Tm, Tp, z, hz, hTm, hTp, hz.isSolution.mono hIcc, fun t ht =>
    hzΦ t (hIcc (abs_le.1 ht)) ht, fun r hr hrτ y hy0 hy => ?_⟩
  exact gen_uniqueness hW hF (ordConnected_Icc) (t₀ := 0) ⟨by linarith, hr⟩ hy
    (hz.isSolution.mono (fun t ht => hIcc ⟨by linarith [ht.1], by linarith [ht.2]⟩))
    (by rw [hy0, hz.init])

end Continuation

section ContinuationPeriodic

variable {n : ℕ}

/-- `bpN:p3:gen-continuation-periodic`: on `ℝⁿ × U`, only the action component needs to stay in a
compact `K ⊆ U`; the angles may be unbounded. -/
theorem gen_continuation_periodic {U : Set (Fin n → ℝ)} (hU : IsOpen U)
    {F : (Fin n → ℝ) × (Fin n → ℝ) → (Fin n → ℝ) × (Fin n → ℝ)}
    (hF : ContDiffOn ℝ 1 F (univ ×ˢ U))
    (hper : ∀ k : Fin n → ℤ, ∀ x ∈ (univ : Set (Fin n → ℝ)) ×ˢ U, F (x + angleShift k) = F x)
    {x₀ : (Fin n → ℝ) × (Fin n → ℝ)} {Tm Tp : EReal} {z : ℝ → (Fin n → ℝ) × (Fin n → ℝ)}
    (hz : IsMaximalSolution F (univ ×ˢ U) x₀ Tm Tp z) {K : Set (Fin n → ℝ)} (hK : IsCompact K)
    (hKU : K ⊆ U) :
    ((∃ t_star : ℝ, 0 ≤ t_star ∧ (t_star : EReal) < Tp ∧
        ∀ t : ℝ, t_star ≤ t → (t : EReal) < Tp → (z t).2 ∈ K) → Tp = ⊤) ∧
    ((∃ t_star : ℝ, t_star ≤ 0 ∧ Tm < (t_star : EReal) ∧
        ∀ t : ℝ, Tm < (t : EReal) → t ≤ t_star → (z t).2 ∈ K) → Tm = ⊥) := by
  obtain ⟨δ, M, L, -, hΦ⟩ := gen_uniform_periodic hU hF hper hK hKU
  have := gen_continuation (isOpen_univ.prod hU) hF hz hΦ
  have hmem : ∀ t, z t ∈ (univ : Set (Fin n → ℝ)) ×ˢ K ↔ (z t).2 ∈ K := fun t => by
    simp [Set.mem_prod]
  simpa only [hmem] using this

end ContinuationPeriodic

end KAM.ODE
