/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import Mathlib
public import KAM.Frozen.Defs.ActionNbhd
public import KAM.Kepler.Basic
public import KAM.Kepler.Energy
public import KAM.Kepler.Orbit
public import KAM.Kepler.KeplerTube
public import KAM.Kepler.OrbitComplex

/-!
# A common complex neighbourhood for the Delaunay chart (`bpI:p7:sec-complex`, `complex-domain`)

For a safe action region `K` (compact, nonempty, inside the cone `0 < G < L`) the constants
`e₋ = kEccMin K`, `e₁ = kEccMax K`, `m_L = kLMin K`, `m_G = kGMin K`, `r_min`, `ρ_max`
(`SafeAction.ecc_bounds`), the principal-branch eccentricity `eccC L G = (1 - G²/L²)^{1/2}`, the
complex neighbourhood `UDelta K δ` and the complex Delaunay map `delaunayC K`.

`ComplexDomainData K δ₁` bundles the conclusions of `bpI:p7:complex-domain` at a radius `δ₁`
(with the quantifier "nearest `(L', G')`" replaced by "every `(L', G') ∈ K` within `δ₁`", error
B1 of the design); `complexDelta K` is the radius selected by classical choice, and
`complex_domain_spec` certifies it.

The proof follows `stepI:p7:cd-uc` and `stepI:p7:cd-branch`: uniform continuity of
`(L, G) ↦ G²/L²` on the closed `δ₀`-thickening of `K` gives `δ₁`; the principal square root of
`1 - G²/L²` is then compared with the real eccentricity `e(L', G') ≥ e₋` through
`|√w - √w'| = |w - w'| / |√w + √w'| ≤ |w - w'| / e₋`.
-/

@[expose] public noncomputable section

open Set Metric Real

namespace KAM.Iso

open KAM KAM.Kepler KAM.Planetary

section Part7Exact

/-- Standing data of `bpI:p7:sec-complex`: a safe action region (`(L, G) = (x 0, x 1)`). -/
structure SafeAction (K : Set (Fin 2 → ℝ)) : Prop where
  isCompact : IsCompact K
  nonempty : K.Nonempty
  sub_cone : ∀ x ∈ K, 0 < x 1 ∧ x 1 < x 0

def kEccMin (K : Set (Fin 2 → ℝ)) : ℝ := sInf ((fun x => eccOf (x 0) (x 1)) '' K)
def kEccMax (K : Set (Fin 2 → ℝ)) : ℝ := sSup ((fun x => eccOf (x 0) (x 1)) '' K)
def kLMin (K : Set (Fin 2 → ℝ)) : ℝ := sInf ((fun x => x 0) '' K)
def kGMin (K : Set (Fin 2 → ℝ)) : ℝ := sInf ((fun x => x 1) '' K)
def kRmin (K : Set (Fin 2 → ℝ)) : ℝ := sInf ((fun x => x 0 ^ 2 * (1 - eccOf (x 0) (x 1))) '' K)
def kRhoMax (K : Set (Fin 2 → ℝ)) : ℝ := sSup ((fun x => x 0 ^ 2 * (1 + eccOf (x 0) (x 1))) '' K)

/-! ### The constants of a safe action region -/

namespace ComplexDomainAux

variable {K : Set (Fin 2 → ℝ)}

theorem eccOf_pos_lt_one {L G : ℝ} (hG : 0 < G) (hGL : G < L) :
    0 < eccOf L G ∧ eccOf L G < 1 := by
  have hL : 0 < L := hG.trans hGL
  have h1 : G ^ 2 / L ^ 2 < 1 := by
    rw [div_lt_one (by positivity)]; nlinarith
  have h2 : 0 < G ^ 2 / L ^ 2 := by positivity
  unfold eccOf
  constructor
  · exact Real.sqrt_pos.mpr (by linarith)
  · rw [Real.sqrt_lt' one_pos]; nlinarith

theorem eccOf_sq {L G : ℝ} (hG : 0 < G) (hGL : G < L) : eccOf L G ^ 2 = 1 - G ^ 2 / L ^ 2 := by
  have hL : 0 < L := hG.trans hGL
  have h1 : G ^ 2 / L ^ 2 < 1 := by
    rw [div_lt_one (by positivity)]; nlinarith
  exact Real.sq_sqrt (by linarith)

theorem continuousOn_eccFn (hK : SafeAction K) :
    ContinuousOn (fun x : Fin 2 → ℝ => eccOf (x 0) (x 1)) K := by
  unfold eccOf
  refine ContinuousOn.sqrt (continuousOn_const.sub (ContinuousOn.div (by fun_prop)
    (by fun_prop) fun x hx => ?_))
  have h := hK.sub_cone x hx
  exact pow_ne_zero 2 (h.1.trans h.2).ne'

theorem sInf_spec {f : (Fin 2 → ℝ) → ℝ} (hK : SafeAction K) (hf : ContinuousOn f K) :
    (∃ x ∈ K, sInf (f '' K) = f x) ∧ ∀ x ∈ K, sInf (f '' K) ≤ f x := by
  have hc : IsCompact (f '' K) := hK.isCompact.image_of_continuousOn hf
  refine ⟨?_, fun x hx => csInf_le hc.bddBelow (mem_image_of_mem f hx)⟩
  obtain ⟨x, hx, hxe⟩ := hc.sInf_mem (hK.nonempty.image f)
  exact ⟨x, hx, hxe.symm⟩

theorem sSup_spec {f : (Fin 2 → ℝ) → ℝ} (hK : SafeAction K) (hf : ContinuousOn f K) :
    (∃ x ∈ K, sSup (f '' K) = f x) ∧ ∀ x ∈ K, f x ≤ sSup (f '' K) := by
  have hc : IsCompact (f '' K) := hK.isCompact.image_of_continuousOn hf
  refine ⟨?_, fun x hx => le_csSup hc.bddAbove (mem_image_of_mem f hx)⟩
  obtain ⟨x, hx, hxe⟩ := hc.sSup_mem (hK.nonempty.image f)
  exact ⟨x, hx, hxe.symm⟩

theorem pos_x0 (hK : SafeAction K) {x : Fin 2 → ℝ} (hx : x ∈ K) : 0 < x 0 :=
  (hK.sub_cone x hx).1.trans (hK.sub_cone x hx).2

theorem kEccMin_spec (hK : SafeAction K) :
    (∃ x ∈ K, kEccMin K = eccOf (x 0) (x 1)) ∧ ∀ x ∈ K, kEccMin K ≤ eccOf (x 0) (x 1) :=
  sInf_spec hK (continuousOn_eccFn hK)

theorem kEccMax_spec (hK : SafeAction K) :
    (∃ x ∈ K, kEccMax K = eccOf (x 0) (x 1)) ∧ ∀ x ∈ K, eccOf (x 0) (x 1) ≤ kEccMax K :=
  sSup_spec hK (continuousOn_eccFn hK)

theorem kLMin_spec (hK : SafeAction K) :
    (∃ x ∈ K, kLMin K = x 0) ∧ ∀ x ∈ K, kLMin K ≤ x 0 :=
  sInf_spec (f := fun x : Fin 2 → ℝ => x 0) hK (continuous_apply 0).continuousOn

theorem kGMin_spec (hK : SafeAction K) :
    (∃ x ∈ K, kGMin K = x 1) ∧ ∀ x ∈ K, kGMin K ≤ x 1 :=
  sInf_spec (f := fun x : Fin 2 → ℝ => x 1) hK (continuous_apply 1).continuousOn

theorem continuousOn_rminFn (hK : SafeAction K) :
    ContinuousOn (fun x : Fin 2 → ℝ => x 0 ^ 2 * (1 - eccOf (x 0) (x 1))) K :=
  ((continuous_apply 0).pow 2).continuousOn.mul (continuousOn_const.sub (continuousOn_eccFn hK))

theorem continuousOn_rmaxFn (hK : SafeAction K) :
    ContinuousOn (fun x : Fin 2 → ℝ => x 0 ^ 2 * (1 + eccOf (x 0) (x 1))) K :=
  ((continuous_apply 0).pow 2).continuousOn.mul (continuousOn_const.add (continuousOn_eccFn hK))

theorem kEccMin_pos (hK : SafeAction K) : 0 < kEccMin K := by
  obtain ⟨x, hx, hxe⟩ := (kEccMin_spec hK).1
  have h := hK.sub_cone x hx
  rw [hxe]
  exact (eccOf_pos_lt_one h.1 h.2).1

theorem kEccMin_le_kEccMax (hK : SafeAction K) : kEccMin K ≤ kEccMax K := by
  obtain ⟨x, hx⟩ := hK.nonempty
  exact (kEccMin_spec hK).2 x hx |>.trans ((kEccMax_spec hK).2 x hx)

theorem kEccMax_lt_one (hK : SafeAction K) : kEccMax K < 1 := by
  obtain ⟨x, hx, hxe⟩ := (kEccMax_spec hK).1
  have h := hK.sub_cone x hx
  rw [hxe]
  exact (eccOf_pos_lt_one h.1 h.2).2

theorem kLMin_pos (hK : SafeAction K) : 0 < kLMin K := by
  obtain ⟨x, hx, hxe⟩ := (kLMin_spec hK).1
  rw [hxe]
  exact pos_x0 hK hx

theorem kGMin_pos (hK : SafeAction K) : 0 < kGMin K := by
  obtain ⟨x, hx, hxe⟩ := (kGMin_spec hK).1
  rw [hxe]
  exact (hK.sub_cone x hx).1

end ComplexDomainAux

theorem SafeAction.ecc_bounds {K : Set (Fin 2 → ℝ)} (hK : SafeAction K) :
    0 < kEccMin K ∧ kEccMax K < 1 ∧ 0 < kLMin K ∧ 0 < kGMin K ∧ 0 < kRmin K ∧ kRmin K ≤ kRhoMax K := by
  refine ⟨ComplexDomainAux.kEccMin_pos hK, ComplexDomainAux.kEccMax_lt_one hK,
    ComplexDomainAux.kLMin_pos hK, ComplexDomainAux.kGMin_pos hK, ?_, ?_⟩
  · obtain ⟨x, hx, hxe⟩ := (ComplexDomainAux.sInf_spec hK (ComplexDomainAux.continuousOn_rminFn hK)).1
    have h := hK.sub_cone x hx
    have h0 := ComplexDomainAux.pos_x0 hK hx
    have he := (ComplexDomainAux.eccOf_pos_lt_one h.1 h.2).2
    show 0 < sInf ((fun x : Fin 2 → ℝ => x 0 ^ 2 * (1 - eccOf (x 0) (x 1))) '' K)
    rw [hxe]
    exact mul_pos (pow_pos h0 2) (by linarith)
  · obtain ⟨x, hx⟩ := hK.nonempty
    have h := hK.sub_cone x hx
    have hmin := (ComplexDomainAux.sInf_spec hK (ComplexDomainAux.continuousOn_rminFn hK)).2 x hx
    have hmax := (ComplexDomainAux.sSup_spec hK (ComplexDomainAux.continuousOn_rmaxFn hK)).2 x hx
    have he := (ComplexDomainAux.eccOf_pos_lt_one h.1 h.2).1
    have : x 0 ^ 2 * (1 - eccOf (x 0) (x 1)) ≤ x 0 ^ 2 * (1 + eccOf (x 0) (x 1)) :=
      mul_le_mul_of_nonneg_left (by linarith) (sq_nonneg _)
    exact hmin.trans (this.trans hmax)

end Part7Exact

end KAM.Iso

end
