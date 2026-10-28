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
public import KAM.Kepler.Orbit
public import KAM.Kepler.DelaunayChart
public import KAM.Frozen.Iso.Defs.NearCircular
public import KAM.Frozen.Iso.Defs.RadiusSq
public import KAM.Frozen.Planetary.Defs.Phase
public import KAM.Frozen.Planetary.Defs.PlaneCross
public import KAM.Frozen.Planetary.Defs.PlaneLength
public import KAM.Frozen.Planetary.Defs.PlaneSq

/-!
# The near-circular region

Blueprint-I Part 7, node `bpI:p7:near-circular`: the statements about the frozen set
`KAM.Iso.NearCircular`.

* `NearCircularWitness`: the witness conditions of the frozen `NearCircular`, with the witnesses
  `r, a, e` explicit; `nearCircular_witness_unique` says they are determined by the phase point
  (`r = |q|`, `a = elemA z`, `e = elemEcc z`), which is the uniqueness clause of the frozen
  docstring ("the predicate makes no witness choice and uses no defaults").
* `nearCircular_eq`: `NearCircular` is the set of points of the Kepler region `keplerRegion` whose
  semimajor axis and eccentricity lie in the given open intervals.
* `nearCircular_eq_image`: it is the image under the Delaunay map of the corresponding action
  region.
* `isOpen_nearCircular`: it is open.
* `nearCircular_nonempty_iff`: it is nonempty iff some `(L, G)` with `0 < G < L` fits the bounds.
-/

@[expose] public noncomputable section

open Set Metric Real
open scoped ContDiff

namespace KAM.Iso

open KAM KAM.Kepler KAM.Planetary

section Part7NearCircular

/-- The frozen witness conditions of `NearCircular`, with the witnesses explicit (C6: uniqueness
clause). -/
def NearCircularWitness (aMinus aPlus eMinus ePlus : ℝ) (z : Phase 2) (r a e : ℝ) : Prop :=
  0 < r ∧ r ^ 2 = radiusSq z.1 ∧ 0 < a ∧ 0 < e ∧ e < 1 ∧ aMinus < a ∧ a < aPlus ∧ eMinus < e ∧
    e < ePlus ∧
    radiusSq z.2 / 2 - 1 / r = -1 / (2 * a) ∧ 0 < z.1 0 * z.2 1 - z.1 1 * z.2 0 ∧
    (z.1 0 * z.2 1 - z.1 1 * z.2 0) ^ 2 = a * (1 - e ^ 2)

/-- The witnesses of a near-circular point are the physical elements: `r = |q|`, `E = -1/(2a)`,
`a = elemA z`, `e = elemEcc z`. -/
private theorem witness_spec {aMinus aPlus eMinus ePlus : ℝ} {z : Phase 2} {r a e : ℝ}
    (h : NearCircularWitness aMinus aPlus eMinus ePlus z r a e) :
    r = planeLength z.1 ∧ kE z = -1 / (2 * a) ∧ a = elemA z ∧ e = elemEcc z := by
  obtain ⟨hr, hr2, ha, he0, he1, -, -, -, -, hE, hcr, hcr2⟩ := h
  have hr' : r = planeLength z.1 := by
    have : r ^ 2 = planeSq z.1 := hr2
    unfold planeLength
    rw [← this]
    exact (Real.sqrt_sq hr.le).symm
  have hkE : kE z = -1 / (2 * a) := by
    unfold kE
    rw [← hr']
    exact hE
  have hcr2' : planeCross z.1 z.2 ^ 2 = a * (1 - e ^ 2) := hcr2
  refine ⟨hr', hkE, ?_, ?_⟩
  · unfold elemA
    rw [hkE]
    field_simp
  · unfold elemEcc
    rw [hkE]
    have : 1 + 2 * (-1 / (2 * a)) * planeCross z.1 z.2 ^ 2 = e ^ 2 := by
      rw [hcr2']
      field_simp
      ring
    rw [this]
    exact (Real.sqrt_sq he0.le).symm

theorem nearCircular_witness_unique {aMinus aPlus eMinus ePlus : ℝ} {z : Phase 2}
    {r a e r' a' e' : ℝ}
    (h : NearCircularWitness aMinus aPlus eMinus ePlus z r a e)
    (h' : NearCircularWitness aMinus aPlus eMinus ePlus z r' a' e') :
    r = r' ∧ a = a' ∧ e = e' ∧ r = planeLength z.1 ∧ a = elemA z ∧ e = elemEcc z := by
  obtain ⟨h1, -, h3, h4⟩ := witness_spec h
  obtain ⟨h1', -, h3', h4'⟩ := witness_spec h'
  exact ⟨h1.trans h1'.symm, h3.trans h3'.symm, h4.trans h4'.symm, h1, h3, h4⟩

private theorem elemA_eq (z : Phase 2) : elemA z = -1 / (2 * kE z) := by
  unfold elemA; ring

/-- Membership in the frozen set is the existence of a (then unique) witness triple. -/
private theorem mem_nearCircular_iff {aMinus aPlus eMinus ePlus : ℝ} {z : Phase 2} :
    z ∈ NearCircular aMinus aPlus eMinus ePlus ↔
      ∃ r a e : ℝ, NearCircularWitness aMinus aPlus eMinus ePlus z r a e := Iff.rfl

/-- `bpI:p7:near-circular` (`NearCircular` is the frozen set). -/
theorem nearCircular_eq (aMinus aPlus eMinus ePlus : ℝ) :
    NearCircular aMinus aPlus eMinus ePlus =
      {z | z ∈ keplerRegion ∧ aMinus < elemA z ∧ elemA z < aPlus ∧ eMinus < elemEcc z ∧
        elemEcc z < ePlus} := by
  ext z
  rw [mem_nearCircular_iff]
  constructor
  · rintro ⟨r, a, e, hw⟩
    obtain ⟨hr', hkE, ha', he'⟩ := witness_spec hw
    obtain ⟨hr, hr2, ha, he0, he1, h1, h2, h3, h4, hE, hcr, hcr2⟩ := hw
    have hcr' : 0 < planeCross z.1 z.2 := hcr
    have hcr2' : planeCross z.1 z.2 ^ 2 = a * (1 - e ^ 2) := hcr2
    refine ⟨⟨?_, ?_, hcr', ?_⟩, ?_, ?_, ?_, ?_⟩
    · rw [← hr']; exact hr
    · rw [hkE]; exact div_neg_of_neg_of_pos (by norm_num) (by positivity)
    · rw [hkE, hcr2']
      have : -1 / (2 * (-1 / (2 * a))) = a := by field_simp
      rw [this]
      nlinarith [mul_pos ha (pow_pos he0 2)]
    · rw [← ha']; exact h1
    · rw [← ha']; exact h2
    · rw [← he']; exact h3
    · rw [← he']; exact h4
  · rintro ⟨⟨hr, hE, hcr, hGE⟩, h1, h2, h3, h4⟩
    have hE0 : kE z ≠ 0 := hE.ne
    have hA : elemA z = -1 / (2 * kE z) := elemA_eq z
    have hG2 : 0 < planeCross z.1 z.2 ^ 2 := by positivity
    have ha : 0 < elemA z := by rw [hA]; exact div_pos_of_neg_of_neg (by norm_num) (by linarith)
    have hs : 0 < 1 + 2 * kE z * planeCross z.1 z.2 ^ 2 := by
      have := (lt_div_iff_of_neg (by linarith : 2 * kE z < 0)).mp hGE
      linarith
    have he0 : 0 < elemEcc z := Real.sqrt_pos.mpr hs
    have he1 : elemEcc z < 1 := by
      unfold elemEcc
      rw [Real.sqrt_lt' one_pos]
      nlinarith
    have hesq : elemEcc z ^ 2 = 1 + 2 * kE z * planeCross z.1 z.2 ^ 2 := Real.sq_sqrt hs.le
    refine ⟨planeLength z.1, elemA z, elemEcc z, hr, ?_, ha, he0, he1, h1, h2, h3, h4, ?_, hcr, ?_⟩
    · exact (planeLength_sq z.1)
    · show kE z = -1 / (2 * elemA z)
      rw [hA]
      field_simp
    · show planeCross z.1 z.2 ^ 2 = elemA z * (1 - elemEcc z ^ 2)
      rw [hesq, hA]
      field_simp
      ring

theorem nearCircular_eq_image (aMinus aPlus eMinus ePlus : ℝ) :
    NearCircular aMinus aPlus eMinus ePlus =
      delaunay '' {w | w ∈ deDom ∧ aMinus < w.2 0 ^ 2 ∧ w.2 0 ^ 2 < aPlus ∧
        eMinus < eccOf (w.2 0) (w.2 1) ∧ eccOf (w.2 0) (w.2 1) < ePlus} := by
  rw [nearCircular_eq]
  ext z
  constructor
  · rintro ⟨hz, h1, h2, h3, h4⟩
    obtain ⟨w, hw, rfl⟩ := keplerRegion_subset_image hz
    obtain ⟨-, -, hA, hEc⟩ := delaunay_elements hw
    rw [hA] at h1 h2
    rw [hEc] at h3 h4
    exact ⟨w, ⟨hw, h1, h2, h3, h4⟩, rfl⟩
  · rintro ⟨w, ⟨hw, h1, h2, h3, h4⟩, rfl⟩
    obtain ⟨-, -, hA, hEc⟩ := delaunay_elements hw
    refine ⟨delaunay_mem_region hw, ?_, ?_, ?_, ?_⟩
    · rw [hA]; exact h1
    · rw [hA]; exact h2
    · rw [hEc]; exact h3
    · rw [hEc]; exact h4

private theorem continuous_planeSq' : Continuous planeSq := by
  have : planeSq = fun w : Fin 2 → ℝ => ∑ k, w k ^ 2 := rfl
  rw [this]; fun_prop

private theorem continuous_planeLength' : Continuous planeLength :=
  Real.continuous_sqrt.comp continuous_planeSq'

private theorem continuous_planeCross' :
    Continuous (fun z : Phase 2 => planeCross z.1 z.2) := by
  unfold planeCross; fun_prop

private theorem continuousOn_kE' : ContinuousOn kE keplerRegion := by
  unfold kE
  refine ContinuousOn.sub ?_ ?_
  · exact ((continuous_planeSq'.comp continuous_snd).div_const 2).continuousOn
  · refine ContinuousOn.div continuousOn_const
      (continuous_planeLength'.comp continuous_fst).continuousOn ?_
    intro z hz; exact hz.1.ne'

private theorem continuousOn_elemA : ContinuousOn elemA keplerRegion := by
  unfold elemA
  refine ContinuousOn.div continuousOn_const (continuousOn_const.mul continuousOn_kE') ?_
  intro z hz
  have := hz.2.1
  intro h
  linarith

private theorem continuousOn_elemEcc : ContinuousOn elemEcc keplerRegion := by
  unfold elemEcc
  refine Real.continuous_sqrt.comp_continuousOn ?_
  exact continuousOn_const.add
    ((continuousOn_const.mul continuousOn_kE').mul (continuous_planeCross'.pow 2).continuousOn)

theorem isOpen_nearCircular (aMinus aPlus eMinus ePlus : ℝ) :
    IsOpen (NearCircular aMinus aPlus eMinus ePlus) := by
  have hF : ContinuousOn (fun z : Phase 2 => (elemA z, elemEcc z)) keplerRegion :=
    continuousOn_elemA.prodMk continuousOn_elemEcc
  have hT : IsOpen (Ioo aMinus aPlus ×ˢ Ioo eMinus ePlus) := isOpen_Ioo.prod isOpen_Ioo
  have := hF.isOpen_inter_preimage isOpen_keplerRegion hT
  convert this using 1
  rw [nearCircular_eq]
  ext z
  simp only [mem_ofPred_eq, mem_inter_iff, mem_preimage, mem_prod, mem_Ioo]
  tauto

theorem nearCircular_nonempty_iff (aMinus aPlus eMinus ePlus : ℝ) :
    (NearCircular aMinus aPlus eMinus ePlus).Nonempty ↔
      ∃ L G : ℝ, 0 < G ∧ G < L ∧ aMinus < L ^ 2 ∧ L ^ 2 < aPlus ∧ eMinus < eccOf L G ∧
        eccOf L G < ePlus := by
  rw [nearCircular_eq_image]
  constructor
  · rintro ⟨z, w, ⟨⟨hG, hGL⟩, h1, h2, h3, h4⟩, -⟩
    exact ⟨w.2 0, w.2 1, hG, hGL, h1, h2, h3, h4⟩
  · rintro ⟨L, G, hG, hGL, h1, h2, h3, h4⟩
    refine ⟨delaunay (![0, 0], ![L, G]), (![0, 0], ![L, G]), ⟨⟨?_, ?_⟩, ?_, ?_, ?_, ?_⟩, rfl⟩
    · simpa using hG
    · simpa using hGL
    · simpa using h1
    · simpa using h2
    · simpa using h3
    · simpa using h4

end Part7NearCircular

end KAM.Iso

end
