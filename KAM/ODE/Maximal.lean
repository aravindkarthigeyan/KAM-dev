/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.ODE.Existence
public import KAM.ODE.Uniqueness
public import Mathlib.Data.EReal.Basic
public import Mathlib.Topology.Instances.EReal.Lemmas

/-!
# Maximal solutions of an autonomous ODE

Blueprint N Part 3 (`bpN:p3:gen-extend`, `bpN:p3:gen-maximal`).

* `KAM.ODE.eIoo`: the open interval with extended-real endpoints, as a set of reals.
* `KAM.ODE.IsMaximalSolution`: `(Tm, Tp, z)` is the maximal solution through `x₀` at time `0`.
* `KAM.ODE.IsMaximalSolution.neg`: time reversal of a maximal solution.
* `KAM.ODE.gen_extend`: every solution on an interval extends to an open interval.
* `KAM.ODE.gen_maximal`: existence and uniqueness of the maximal solution.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

namespace KAM.ODE

section Maximal

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- The open interval `(a, b)` with extended-real endpoints, as a set of reals. -/
def eIoo (a b : EReal) : Set ℝ := {t | a < (t : EReal) ∧ (t : EReal) < b}

/-- `(Tm, Tp, z)` is *the* maximal solution of `ẋ = F x` in `W` through `x₀` at time `0`
(`bpN:p3:gen-maximal`): a solution on `(Tm, Tp)` such that every solution through `x₀` on an
interval containing `0` lives in `(Tm, Tp)` and equals `z` there. -/
structure IsMaximalSolution (F : E → E) (W : Set E) (x₀ : E) (Tm Tp : EReal) (z : ℝ → E) :
    Prop where
  neg_lt : Tm < 0
  pos_lt : 0 < Tp
  init : z 0 = x₀
  isSolution : IsSolutionIn F W (eIoo Tm Tp) z
  maximal : ∀ (J : Set ℝ) (y : ℝ → E), J.OrdConnected → (0 : ℝ) ∈ J → y 0 = x₀ →
    IsSolutionIn F W J y → J ⊆ eIoo Tm Tp ∧ EqOn y z J

theorem mem_eIoo_iff {a b : EReal} {t : ℝ} :
    t ∈ eIoo a b ↔ a < (t : EReal) ∧ (t : EReal) < b := Iff.rfl

theorem eIoo_bot_top : eIoo ⊥ ⊤ = (univ : Set ℝ) := by
  ext t
  simp only [mem_eIoo_iff, mem_univ, iff_true]
  exact ⟨EReal.bot_lt_coe t, EReal.coe_lt_top t⟩

theorem ordConnected_eIoo (a b : EReal) : (eIoo a b).OrdConnected :=
  ⟨fun _ hx _ hy _ hz =>
    ⟨lt_of_lt_of_le hx.1 (EReal.coe_le_coe_iff.2 hz.1),
      lt_of_le_of_lt (EReal.coe_le_coe_iff.2 hz.2) hy.2⟩⟩

theorem isOpen_eIoo (a b : EReal) : IsOpen (eIoo a b) :=
  (isOpen_lt continuous_const continuous_coe_real_ereal).inter
    (isOpen_lt continuous_coe_real_ereal continuous_const)

theorem IsMaximalSolution.isSolution_of_mem {F : E → E} {W : Set E} {x₀ : E} {Tm Tp : EReal}
    {z : ℝ → E} (h : IsMaximalSolution F W x₀ Tm Tp z) {t : ℝ} (ht : t ∈ eIoo Tm Tp) :
    z t ∈ W ∧ HasDerivAt z (F (z t)) t :=
  h.isSolution t ht

theorem zero_mem_eIoo {F : E → E} {W : Set E} {x₀ : E} {Tm Tp : EReal} {z : ℝ → E}
    (h : IsMaximalSolution F W x₀ Tm Tp z) : (0 : ℝ) ∈ eIoo Tm Tp :=
  ⟨by simpa using h.neg_lt, by simpa using h.pos_lt⟩

/-- An order-connected set of reals with no least and no greatest element is open. -/
theorem isOpen_of_ordConnected_of_no_endpoints {S : Set ℝ} (hS : S.OrdConnected)
    (hlo : ∀ t ∈ S, ∃ s ∈ S, s < t) (hhi : ∀ t ∈ S, ∃ s ∈ S, t < s) : IsOpen S := by
  rw [isOpen_iff_mem_nhds]
  intro t ht
  obtain ⟨a, ha, hat⟩ := hlo t ht
  obtain ⟨b, hb, htb⟩ := hhi t ht
  exact Filter.mem_of_superset (Ioo_mem_nhds hat htb)
    (Ioo_subset_Icc_self.trans (hS.out ha hb))

/-- Extension to the right: `J₁ ⊇ J` has no greatest element, and every point added lies
above `J`. -/
private theorem extend_right [ProperSpace E] {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) {J : Set ℝ} (hJ : J.OrdConnected) {y : ℝ → E}
    (h : IsSolutionIn F W J y) :
    ∃ (J₁ : Set ℝ) (y₁ : ℝ → E), J₁.OrdConnected ∧ J ⊆ J₁ ∧ EqOn y₁ y J ∧
      IsSolutionIn F W J₁ y₁ ∧ (∀ t ∈ J₁, ∃ s ∈ J₁, t < s) ∧
      (∀ t ∈ J₁, t ∉ J → ∀ s ∈ J, s < t) := by
  classical
  by_cases hb : ∃ b, IsGreatest J b
  · obtain ⟨b, hbJ, hbmax⟩ := hb
    obtain ⟨ε, hε, α, hα0, hα⟩ := (gen_local hW hF).1 (y b) (h b hbJ).1 b
    have hbα : b ∈ Ioo (b - ε) (b + ε) := ⟨by linarith, by linarith⟩
    obtain ⟨y₁, hy₁⟩ : ∃ y₁ : ℝ → E, y₁ = fun s => if s ≤ b then y s else α s := ⟨_, rfl⟩
    have hle : ∀ s, s ≤ b → y₁ s = y s := fun s hs => by simp [hy₁, hs]
    have hgt : ∀ s, b < s → y₁ s = α s := fun s hs => by simp [hy₁, not_le.2 hs]
    refine ⟨J ∪ Ioo b (b + ε), y₁, ?_, subset_union_left, fun t ht => hle t (hbmax ht), ?_, ?_, ?_⟩
    · refine ⟨fun x hx z hz w hw => ?_⟩
      rcases hx with hx | hx <;> rcases hz with hz | hz
      · exact Or.inl (hJ.out hx hz hw)
      · by_cases hwb : w ≤ b
        · exact Or.inl (hJ.out hx hbJ ⟨hw.1, hwb⟩)
        · exact Or.inr ⟨lt_of_not_ge hwb, lt_of_le_of_lt hw.2 hz.2⟩
      · exact absurd (lt_of_lt_of_le hx.1 (hw.1.trans (hw.2.trans (hbmax hz)))) (lt_irrefl b)
      · exact Or.inr ⟨lt_of_lt_of_le hx.1 hw.1, lt_of_le_of_lt hw.2 hz.2⟩
    · rintro t (htJ | htI)
      · rcases (hbmax htJ).lt_or_eq with hlt | heq
        · have e : y₁ =ᶠ[nhds t] y :=
            Filter.eventually_of_mem (Iio_mem_nhds hlt) fun s hs => hle s (le_of_lt hs)
          refine ⟨by rw [hle t hlt.le]; exact (h t htJ).1, ?_⟩
          rw [hle t hlt.le]
          exact (h t htJ).2.congr_of_eventuallyEq e
        · subst heq
          refine ⟨by rw [hle t le_rfl]; exact (h t htJ).1, ?_⟩
          rw [hle t le_rfl]
          have h1 : HasDerivWithinAt y₁ (F (y t)) (Iic t) t :=
            (h t htJ).2.hasDerivWithinAt.congr (fun s hs => hle s hs) (hle t le_rfl)
          have h2 : HasDerivWithinAt y₁ (F (y t)) (Ici t) t := by
            have := (hα t hbα).2.hasDerivWithinAt (s := Ici t)
            rw [hα0] at this
            refine this.congr (fun s hs => ?_) (by rw [hle t le_rfl, hα0])
            rcases hs.eq_or_lt with hst | hst
            · rw [← hst, hle t le_rfl, hα0]
            · exact hgt s hst
          have := h1.union h2
          rw [Iic_union_Ici, hasDerivWithinAt_univ] at this
          exact this
      · have e : y₁ =ᶠ[nhds t] α :=
          Filter.eventually_of_mem (Ioi_mem_nhds htI.1) fun s hs => hgt s hs
        have hts : t ∈ Ioo (b - ε) (b + ε) := ⟨by linarith [htI.1], htI.2⟩
        refine ⟨by rw [hgt t htI.1]; exact (hα t hts).1, ?_⟩
        rw [hgt t htI.1]
        exact (hα t hts).2.congr_of_eventuallyEq e
    · rintro t (htJ | htI)
      · exact ⟨b + ε / 2, Or.inr ⟨by linarith, by linarith⟩,
          lt_of_le_of_lt (hbmax htJ) (by linarith)⟩
      · exact ⟨(t + (b + ε)) / 2, Or.inr ⟨by linarith [htI.1], by linarith [htI.2]⟩,
          by linarith [htI.2]⟩
    · rintro t (ht | ht) hn s hs
      · exact absurd ht hn
      · exact lt_of_le_of_lt (hbmax hs) ht.1
  · refine ⟨J, y, hJ, subset_rfl, fun _ _ => rfl, h, ?_, fun t ht hn => absurd ht hn⟩
    intro t ht
    by_contra hcon
    push Not at hcon
    exact hb ⟨t, ht, fun s hs => hcon s hs⟩

/-- Helper for the left end: reversing time swaps the roles of the two ends. -/
private theorem extend_open [ProperSpace E] {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) {J : Set ℝ} (hJ : J.OrdConnected) (hne : J.Nonempty) {y : ℝ → E}
    (h : IsSolutionIn F W J y) :
    ∃ (J₂ : Set ℝ) (y₂ : ℝ → E), IsOpen J₂ ∧ J₂.OrdConnected ∧ J ⊆ J₂ ∧ EqOn y₂ y J ∧
      IsSolutionIn F W J₂ y₂ := by
  obtain ⟨J₁, y₁, hJ₁, hJJ₁, hey₁, hs₁, hgr₁, -⟩ := extend_right hW hF hJ h
  have hJ₁' : (Neg.neg ⁻¹' J₁).OrdConnected := hJ₁.preimage_anti (fun a b h => neg_le_neg h)
  have hs₁' : IsSolutionIn (fun x => -F x) W (Neg.neg ⁻¹' J₁) (fun t => y₁ (-t)) :=
    gen_symmetry_neg hs₁
  obtain ⟨J₂', y₂', hJ₂', hJ₁J₂', hey₂, hs₂', hlo₂', hadd₂'⟩ :=
    extend_right (F := fun x => -F x) hW hF.neg hJ₁' hs₁'
  have hs₂ : IsSolutionIn F W (Neg.neg ⁻¹' J₂') (fun t => y₂' (-t)) := by
    have := gen_symmetry_neg hs₂'
    simpa only [neg_neg] using this
  have hmem : ∀ {S : Set ℝ} {t : ℝ}, t ∈ Neg.neg ⁻¹' S ↔ -t ∈ S := Iff.rfl
  have hJJ₂ : J₁ ⊆ Neg.neg ⁻¹' J₂' := fun t ht =>
    hJ₁J₂' (hmem.2 (by rw [neg_neg]; exact ht))
  have hJ₂ : (Neg.neg ⁻¹' J₂').OrdConnected := hJ₂'.preimage_anti (fun a b h => neg_le_neg h)
  have hJJ₁ne : J₁.Nonempty := hne.mono hJJ₁
  refine ⟨Neg.neg ⁻¹' J₂', fun t => y₂' (-t), ?_, hJ₂, hJJ₁.trans hJJ₂, ?_, hs₂⟩
  · refine isOpen_of_ordConnected_of_no_endpoints hJ₂ ?_ ?_
    · intro t ht
      obtain ⟨s', hs', hlt⟩ := hlo₂' (-t) (hmem.1 ht)
      exact ⟨-s', hmem.2 (by rw [neg_neg]; exact hs'), by linarith⟩
    · intro t ht
      by_cases ht1 : t ∈ J₁
      · obtain ⟨s, hs, hlt⟩ := hgr₁ t ht1
        exact ⟨s, hJJ₂ hs, hlt⟩
      · obtain ⟨s0, hs0⟩ := hJJ₁ne
        have hn : -t ∉ Neg.neg ⁻¹' J₁ := fun hh => ht1 (by simpa using hh)
        have := hadd₂' (-t) (hmem.1 ht) hn (-s0) (hmem.2 (by rw [neg_neg]; exact hs0))
        exact ⟨s0, hJJ₂ hs0, by linarith⟩
  · intro t ht
    have h1 : -t ∈ Neg.neg ⁻¹' J₁ := hmem.2 (by rw [neg_neg]; exact hJJ₁ ht)
    have := hey₂ h1
    simp only [neg_neg] at this ⊢
    rw [this, hey₁ ht]

/-- `bpN:p3:gen-extend`. -/
theorem gen_extend [ProperSpace E] {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) {J : Set ℝ} (hJ : J.OrdConnected) (hne : J.Nonempty) {y : ℝ → E}
    (h : IsSolutionIn F W J y) :
    ∃ (J' : Set ℝ) (y' : ℝ → E), IsOpen J' ∧ J'.OrdConnected ∧ J ⊆ J' ∧ EqOn y' y J ∧
      IsSolutionIn F W J' y' :=
  extend_open hW hF hJ hne h

/-- Helper (not a graph node; used by the left end of `gen_continuation`, and by consumers for
backward-in-time arguments): reversal of a maximal solution. -/
theorem IsMaximalSolution.neg {F : E → E} {W : Set E} {x₀ : E} {Tm Tp : EReal} {z : ℝ → E}
    (h : IsMaximalSolution F W x₀ Tm Tp z) :
    IsMaximalSolution (fun x => -F x) W x₀ (-Tp) (-Tm) (fun t => z (-t)) := by
  have key : ∀ a b : EReal, a < b → -b < -a := fun a b hab => EReal.neg_lt_neg_iff.2 hab
  have hset : ∀ t : ℝ, t ∈ eIoo (-Tp) (-Tm) ↔ -t ∈ eIoo Tm Tp := fun t => by
    simp only [mem_eIoo_iff, EReal.coe_neg]
    constructor
    · rintro ⟨h1, h2⟩
      exact ⟨by simpa using key _ _ h2, by simpa using key _ _ h1⟩
    · rintro ⟨h1, h2⟩
      exact ⟨by simpa using key _ _ h2, by simpa using key _ _ h1⟩
  refine ⟨?_, ?_, by simpa using h.init, ?_, ?_⟩
  · simpa using key _ _ h.pos_lt
  · simpa using key _ _ h.neg_lt
  · intro t ht
    have h2 := gen_symmetry_neg (F := F) (W := W) (J := eIoo Tm Tp) h.isSolution
    exact h2 t ((hset t).1 ht)
  · intro J y hJ h0 hy0 hy
    have hJ' : (Neg.neg ⁻¹' J).OrdConnected := hJ.preimage_anti (fun a b h => neg_le_neg h)
    have hy' : IsSolutionIn F W (Neg.neg ⁻¹' J) (fun t => y (-t)) := by
      have := gen_symmetry_neg hy
      simpa only [neg_neg] using this
    obtain ⟨hsub, heq⟩ := h.maximal _ _ hJ' (by simpa using h0) (by simpa using hy0) hy'
    have hm : ∀ t ∈ J, -t ∈ Neg.neg ⁻¹' J := fun t ht => by
      show -(-t) ∈ J
      rwa [neg_neg]
    refine ⟨fun t ht => (hset t).2 (hsub (hm t ht)), fun t ht => ?_⟩
    have := heq (hm t ht)
    simpa using this

/-- Helper: an open order-connected interval through `0` carrying a solution with value `x₀`
at `0`. -/
private structure GoodInterval (F : E → E) (W : Set E) (x₀ : E) (J : Set ℝ) (y : ℝ → E) :
    Prop where
  isOpen : IsOpen J
  ordConnected : J.OrdConnected
  zero_mem : (0 : ℝ) ∈ J
  init : y 0 = x₀
  sol : IsSolutionIn F W J y

/-- Existence half of `gen_maximal`. -/
private theorem exists_maximal [ProperSpace E] {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) {x₀ : E} (hx₀ : x₀ ∈ W) :
    ∃ (Tm Tp : EReal) (z : ℝ → E), IsMaximalSolution F W x₀ Tm Tp z := by
  classical
  set I : Set ℝ := {t | ∃ (J : Set ℝ) (y : ℝ → E), GoodInterval F W x₀ J y ∧ t ∈ J} with hI
  obtain ⟨ε, hε, α, hα0, hα⟩ := (gen_local hW hF).1 x₀ hx₀ 0
  have h0I : (0 : ℝ) ∈ I :=
    ⟨Ioo (0 - ε) (0 + ε), α, ⟨isOpen_Ioo, ordConnected_Ioo, ⟨by linarith, by linarith⟩, hα0, hα⟩,
      ⟨by linarith, by linarith⟩⟩
  set Tm : EReal := sInf (((↑) : ℝ → EReal) '' I) with hTm
  set Tp : EReal := sSup (((↑) : ℝ → EReal) '' I) with hTp
  have hIlt : ∀ t ∈ I, Tm < (t : EReal) ∧ (t : EReal) < Tp := by
    rintro t ⟨J, y, hg, ht⟩
    obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.1 hg.isOpen t ht
    have hmem : ∀ u, |u - t| < ε → u ∈ I := fun u hu =>
      ⟨J, y, hg, hball (by rw [mem_ball, Real.dist_eq]; exact hu)⟩
    have h1 : t - ε / 2 ∈ I := hmem _ (by rw [abs_lt]; constructor <;> linarith)
    have h2 : t + ε / 2 ∈ I := hmem _ (by rw [abs_lt]; constructor <;> linarith)
    exact ⟨lt_of_le_of_lt (sInf_le (mem_image_of_mem _ h1))
        (EReal.coe_lt_coe_iff.2 (by linarith)),
      lt_of_lt_of_le (EReal.coe_lt_coe_iff.2 (by linarith))
        (le_sSup (mem_image_of_mem _ h2))⟩
  have hIeq : I = eIoo Tm Tp := by
    ext t
    refine ⟨hIlt t, fun ⟨h1, h2⟩ => ?_⟩
    obtain ⟨a, ⟨s, hsI, rfl⟩, hs⟩ := sInf_lt_iff.1 h1
    obtain ⟨a, ⟨u, huI, rfl⟩, hu⟩ := lt_sSup_iff.1 h2
    have hs' : s < t := EReal.coe_lt_coe_iff.1 hs
    have hu' : t < u := EReal.coe_lt_coe_iff.1 hu
    obtain ⟨Js, ys, hgs, hsJ⟩ := hsI
    obtain ⟨Ju, yu, hgu, huJ⟩ := huI
    rcases le_total t 0 with ht0 | ht0
    · exact ⟨Js, ys, hgs, hgs.ordConnected.out hsJ hgs.zero_mem ⟨hs'.le, ht0⟩⟩
    · exact ⟨Ju, yu, hgu, hgu.ordConnected.out hgu.zero_mem huJ ⟨ht0, hu'.le⟩⟩
  let z : ℝ → E := fun t =>
    if h : ∃ (y : ℝ → E) (J : Set ℝ), GoodInterval F W x₀ J y ∧ t ∈ J then Classical.choose h t
    else x₀
  have hz_key : ∀ J y, GoodInterval F W x₀ J y → ∀ t ∈ J, z t = y t := by
    intro J y hg t ht
    have h : ∃ (y : ℝ → E) (J : Set ℝ), GoodInterval F W x₀ J y ∧ t ∈ J := ⟨y, J, hg, ht⟩
    have hz : z t = Classical.choose h t := by simp [z, h]
    obtain ⟨J', hg', ht'⟩ := Classical.choose_spec h
    rw [hz]
    exact (gen_uniqueness_inter hW hF hg.ordConnected hg'.ordConnected (t₀ := 0)
      ⟨hg.zero_mem, hg'.zero_mem⟩ hg.sol hg'.sol (by rw [hg.init, hg'.init]) ⟨ht, ht'⟩).symm
  have hz_sol : IsSolutionIn F W (eIoo Tm Tp) z := by
    intro t ht
    rw [← hIeq] at ht
    obtain ⟨J, y, hg, htJ⟩ := ht
    exact ((isSolutionIn_congr_of_isOpen hg.isOpen (fun s hs => hz_key J y hg s hs)).2 hg.sol) t htJ
  have hz0 : z 0 = x₀ := by
    obtain ⟨J, y, hg, -⟩ := h0I
    exact (hz_key J y hg 0 hg.zero_mem).trans hg.init
  have h0e : (0 : ℝ) ∈ eIoo Tm Tp := hIeq ▸ h0I
  refine ⟨Tm, Tp, z, ⟨by simpa using h0e.1, by simpa using h0e.2, hz0, hz_sol, ?_⟩⟩
  intro J y hJ hJ0 hy0 hy
  obtain ⟨J', y', hJ'o, hJ'c, hJJ', hey, hy'⟩ := gen_extend hW hF hJ ⟨0, hJ0⟩ hy
  have hg : GoodInterval F W x₀ J' y' :=
    ⟨hJ'o, hJ'c, hJJ' hJ0, by rw [hey hJ0, hy0], hy'⟩
  have hsub : J ⊆ eIoo Tm Tp := fun t ht => hIeq ▸ (⟨J', y', hg, hJJ' ht⟩ : t ∈ I)
  refine ⟨hsub, fun t ht => ?_⟩
  rw [hz_key J' y' hg t (hJJ' ht), hey ht]

/-- Two maximal solutions through the same point have the same interval. -/
private theorem eIoo_subset_of_maximal {F : E → E} {W : Set E} {x₀ : E} {Tm Tp Tm' Tp' : EReal}
    {z z' : ℝ → E} (h : IsMaximalSolution F W x₀ Tm Tp z)
    (h' : IsMaximalSolution F W x₀ Tm' Tp' z') :
    eIoo Tm Tp ⊆ eIoo Tm' Tp' ∧ EqOn z z' (eIoo Tm Tp) :=
  h'.maximal _ z (ordConnected_eIoo _ _) (zero_mem_eIoo h) h.init h.isSolution

private theorem left_eq_of_eIoo_subset {Tm Tp Tm' Tp' : EReal} (hTm' : Tm' < 0) (hTp : 0 < Tp)
    (h : eIoo Tm Tp ⊆ eIoo Tm' Tp') : Tm' ≤ Tm := by
  by_contra hlt
  push Not at hlt
  obtain ⟨r, hr1, hr2⟩ := EReal.lt_iff_exists_real_btwn.1 hlt
  have hr : r ∈ eIoo Tm Tp := ⟨hr1, lt_trans hr2 (lt_trans hTm' hTp)⟩
  exact absurd (h hr).1 (not_lt.2 hr2.le)

private theorem right_eq_of_eIoo_subset {Tm Tp Tm' Tp' : EReal} (hTm : Tm < 0) (hTp' : 0 < Tp')
    (h : eIoo Tm Tp ⊆ eIoo Tm' Tp') : Tp ≤ Tp' := by
  by_contra hlt
  push Not at hlt
  obtain ⟨r, hr1, hr2⟩ := EReal.lt_iff_exists_real_btwn.1 hlt
  have hr : r ∈ eIoo Tm Tp := ⟨lt_trans hTm (lt_trans hTp' hr1), hr2⟩
  exact absurd (h hr).2 (not_lt.2 hr1.le)

/-- `bpN:p3:gen-maximal`: existence, and uniqueness of the interval and of `z` on it. -/
theorem gen_maximal [ProperSpace E] {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) {x₀ : E} (hx₀ : x₀ ∈ W) :
    (∃ (Tm Tp : EReal) (z : ℝ → E), IsMaximalSolution F W x₀ Tm Tp z) ∧
    ∀ (Tm Tp Tm' Tp' : EReal) (z z' : ℝ → E), IsMaximalSolution F W x₀ Tm Tp z →
      IsMaximalSolution F W x₀ Tm' Tp' z' → Tm = Tm' ∧ Tp = Tp' ∧ EqOn z z' (eIoo Tm Tp) := by
  refine ⟨exists_maximal hW hF hx₀, fun Tm Tp Tm' Tp' z z' h h' => ?_⟩
  obtain ⟨h1, h2⟩ := eIoo_subset_of_maximal h h'
  obtain ⟨h1', -⟩ := eIoo_subset_of_maximal h' h
  exact ⟨le_antisymm (left_eq_of_eIoo_subset h.neg_lt h'.pos_lt h1')
      (left_eq_of_eIoo_subset h'.neg_lt h.pos_lt h1),
    le_antisymm (right_eq_of_eIoo_subset h.neg_lt h'.pos_lt h1)
      (right_eq_of_eIoo_subset h'.neg_lt h.pos_lt h1'), h2⟩

end Maximal

end KAM.ODE
