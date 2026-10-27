/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.ODE.Uniqueness

/-!
# First exit, invariant sets and barriers

Blueprint N Part 3 (`bpN:p3:gen-exit`, `gen-invariant`, `gen-barrier`).

* `KAM.ODE.exitSet`, `KAM.ODE.gen_exit`: first exit of a continuous path from an open set.
* `KAM.ODE.IsInvariantSet`, `isInvariantSet_equilibria`, `isInvariantSet_union`.
* `KAM.ODE.gen_barrier`: a solution cannot leave `V` through an invariant barrier.
-/

@[expose] public noncomputable section

open Set Metric
open scoped NNReal ContDiff

namespace KAM.ODE

section Exit

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- The exit set `A = {t ∈ J | t ≥ 0, z t ∉ V}` of `bpN:p3:gen-exit`. -/
def exitSet (J : Set ℝ) (z : ℝ → E) (V : Set E) : Set ℝ := {t | t ∈ J ∧ 0 ≤ t ∧ z t ∉ V}

/-- `bpN:p3:gen-exit` (forward time; backwards, apply it to `fun t => z (-t)` on `Neg.neg ⁻¹' J`).
Only continuity of `z` on `J` is used, so it is stated for `ContinuousOn`. -/
theorem gen_exit {J : Set ℝ} (hJ : J.OrdConnected) (h0 : (0 : ℝ) ∈ J) {z : ℝ → E}
    (hz : ContinuousOn z J) {V : Set E} (hV : IsOpen V) (hz0 : z 0 ∈ V) :
    ((exitSet J z V = ∅) ∧ ∀ t ∈ J, 0 ≤ t → z t ∈ V) ∨
    ((exitSet J z V).Nonempty ∧ ∃ t_star : ℝ, IsLeast (exitSet J z V) t_star ∧ 0 < t_star ∧
      t_star ∈ J ∧ (∀ t ∈ Ico 0 t_star, z t ∈ V) ∧ z t_star ∈ frontier V ∧
      t_star = sSup {t : ℝ | t ∈ J ∧ 0 ≤ t ∧ z '' Icc 0 t ⊆ V}) := by
  by_cases hA : (exitSet J z V).Nonempty
  swap
  · left
    refine ⟨not_nonempty_iff_eq_empty.1 hA, fun t ht ht0 => ?_⟩
    by_contra hzt
    exact hA ⟨t, ht, ht0, hzt⟩
  right
  refine ⟨hA, ?_⟩
  obtain ⟨a, haJ, ha0, haV⟩ := hA
  have hsub : Icc 0 a ⊆ J := hJ.out h0 haJ
  have hclosed : IsClosed (exitSet J z V ∩ Icc 0 a) := by
    have h2 := (hz.mono hsub).preimage_isClosed_of_isClosed isClosed_Icc hV.isClosed_compl
    have : exitSet J z V ∩ Icc 0 a = Icc 0 a ∩ z ⁻¹' Vᶜ := by
      ext u
      simp only [exitSet, mem_inter_iff, Set.mem_ofPred_eq, mem_Icc, mem_preimage, mem_compl_iff]
      constructor
      · rintro ⟨⟨_, _, h3⟩, h4⟩; exact ⟨h4, h3⟩
      · rintro ⟨h4, h3⟩; exact ⟨⟨hsub h4, h4.1, h3⟩, h4⟩
    rw [this]; exact h2
  have hcpt : IsCompact (exitSet J z V ∩ Icc 0 a) :=
    IsCompact.of_isClosed_subset isCompact_Icc hclosed inter_subset_right
  obtain ⟨ts, hts, hleast⟩ := hcpt.exists_isLeast ⟨a, ⟨haJ, ha0, haV⟩, ha0, le_rfl⟩
  have hleastA : IsLeast (exitSet J z V) ts := by
    refine ⟨hts.1, fun u hu => ?_⟩
    by_cases hua : u ≤ a
    · exact hleast ⟨hu, hu.2.1, hua⟩
    · exact hts.2.2.trans (le_of_not_ge hua)
  obtain ⟨htsJ, hts0, htsV⟩ := hleastA.1
  have hpos : 0 < ts := lt_of_le_of_ne hts0 (fun h => htsV (h ▸ hz0))
  have hbelow : ∀ t ∈ Ico 0 ts, z t ∈ V := by
    intro t ht
    by_contra hzt
    have htJ : t ∈ J := hJ.out h0 htsJ ⟨ht.1, ht.2.le⟩
    exact absurd (hleastA.2 ⟨htJ, ht.1, hzt⟩) (not_le.2 ht.2)
  have hfront : z ts ∈ frontier V := by
    rw [hV.frontier_eq]
    refine ⟨?_, htsV⟩
    have hcw : ContinuousWithinAt z (Ico 0 ts) ts :=
      (hz.mono (hJ.out h0 htsJ) ts ⟨hts0, le_rfl⟩).mono Ico_subset_Icc_self
    have hcl : ts ∈ closure (Ico 0 ts) := by rw [closure_Ico hpos.ne]; exact ⟨hts0, le_rfl⟩
    have := hcw.mem_closure_image hcl
    exact closure_mono (by rintro _ ⟨t, ht, rfl⟩; exact hbelow t ht) this
  refine ⟨ts, hleastA, hpos, htsJ, hbelow, hfront, ?_⟩
  set B := {t : ℝ | t ∈ J ∧ 0 ≤ t ∧ z '' Icc 0 t ⊆ V} with hB
  have hBmem : ∀ t, t < ts → 0 ≤ t → t ∈ B := fun t ht ht0 =>
    ⟨hJ.out h0 htsJ ⟨ht0, ht.le⟩ |> fun h => h, ht0, by
      rintro _ ⟨s, hs, rfl⟩; exact hbelow s ⟨hs.1, hs.2.trans_lt ht⟩⟩
  have hBle : ∀ t ∈ B, t < ts := by
    intro t ht
    by_contra hge
    have := ht.2.2 ⟨ts, ⟨hts0, not_lt.1 hge⟩, rfl⟩
    exact htsV this
  have h0B : (0 : ℝ) ∈ B := ⟨h0, le_rfl, by
    rintro _ ⟨s, hs, rfl⟩; rw [le_antisymm hs.2 hs.1]; exact hz0⟩
  have hbdd : BddAbove B := ⟨ts, fun t ht => (hBle t ht).le⟩
  apply le_antisymm
  · by_contra hlt
    have hlt' := not_le.1 hlt
    have hs0 : 0 ≤ sSup B := le_csSup hbdd h0B
    have hm : (sSup B + ts) / 2 ∈ B := hBmem _ (by linarith) (by linarith)
    have := le_csSup hbdd hm
    linarith
  · exact csSup_le ⟨0, h0B⟩ (fun t ht => (hBle t ht).le)

/-- `bpN:p3:gen-invariant`. -/
def IsInvariantSet (F : E → E) (W S : Set E) : Prop :=
  ∀ (J : Set ℝ) (y : ℝ → E), J.OrdConnected → IsSolutionIn F W J y →
    ∀ t₁ ∈ J, y t₁ ∈ S → ∀ t ∈ J, y t ∈ S

/-- Parenthetical claim of `bpN:p3:gen-invariant` (not a graph node): equilibria are invariant. -/
theorem isInvariantSet_equilibria {F : E → E} {W : Set E} (hW : IsOpen W)
    (hF : ContDiffOn ℝ 1 F W) : IsInvariantSet F W {x | F x = 0} := by
  intro J y hJ hy t₁ ht₁ hS t ht
  have hconst : IsSolutionIn F W J (fun _ => y t₁) := fun s _ =>
    ⟨(hy t₁ ht₁).1, by
      have h : F (y t₁) = 0 := hS
      simpa [h] using hasDerivAt_const s (y t₁)⟩
  have := gen_uniqueness hW hF hJ ht₁ hy hconst rfl ht
  rw [this]; exact hS

/-- Parenthetical claim of `bpN:p3:gen-invariant` (not a graph node): unions are invariant. -/
theorem isInvariantSet_union {F : E → E} {W S S' : Set E} (hS : IsInvariantSet F W S)
    (hS' : IsInvariantSet F W S') : IsInvariantSet F W (S ∪ S') := by
  intro J y hJ hy t₁ ht₁ h t ht
  rcases h with h | h
  · exact Or.inl (hS J y hJ hy t₁ ht₁ h t ht)
  · exact Or.inr (hS' J y hJ hy t₁ ht₁ h t ht)

/-- Helper: forward half of the barrier argument, for a continuous path and an arbitrary "no
frontier crossing" hypothesis. -/
private theorem barrier_forward {J : Set ℝ} (hJ : J.OrdConnected) (h0 : (0 : ℝ) ∈ J) {z : ℝ → E}
    (hz : ContinuousOn z J) {V : Set E} (hV : IsOpen V) (hz0 : z 0 ∈ V)
    (hbd : ∀ t ∈ J, 0 ≤ t → z t ∈ frontier V → False) : ∀ t ∈ J, 0 ≤ t → z t ∈ V := by
  rcases gen_exit hJ h0 hz hV hz0 with ⟨-, h⟩ | ⟨-, ts, hleast, -, htsJ, -, hfr, -⟩
  · exact h
  · exact (hbd ts htsJ hleast.1.2.1 hfr).elim

/-- `bpN:p3:gen-barrier`. The blueprint's `C¹` hypothesis is not used and is omitted. -/
theorem gen_barrier {F : E → E} {W : Set E} {J : Set ℝ} (hJ : J.OrdConnected)
    (h0 : (0 : ℝ) ∈ J) {z : ℝ → E} (hz : IsSolutionIn F W J z) {V : Set E} (hV : IsOpen V)
    (hz0 : z 0 ∈ V) {G S : Set E} (hG : z '' J ⊆ G) (hS : IsInvariantSet F W S)
    (hbd : frontier V ∩ G ⊆ S) (hz0S : z 0 ∉ S) : ∀ t ∈ J, z t ∈ V := by
  have hno : ∀ t ∈ J, z t ∈ frontier V → False := fun t ht hfr =>
    hz0S (hS J z hJ hz t ht (hbd ⟨hfr, hG ⟨t, ht, rfl⟩⟩) 0 h0)
  intro t ht
  rcases le_total 0 t with h | h
  · exact barrier_forward hJ h0 hz.continuousOn hV hz0 (fun s hs _ => hno s hs) t ht h
  · have hJ' : (Neg.neg ⁻¹' J).OrdConnected := hJ.preimage_anti (fun a b h => neg_le_neg h)
    have hcont : ContinuousOn (fun s => z (-s)) (Neg.neg ⁻¹' J) :=
      hz.continuousOn.comp continuousOn_neg (fun s hs => hs)
    have := barrier_forward hJ' (by simpa using h0) hcont hV (by simpa using hz0)
      (fun s hs _ => hno (-s) hs) (-t) (by simpa using ht) (by linarith)
    simpa using this

end Exit

end KAM.ODE
