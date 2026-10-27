# Track N additions (D22): approval packet — N-PARTIAL-CONVEX only

Prepared by the I/N/P sub-orchestrator (D23), 27 October 2026, for the owner's line-by-line approval. Nothing here is
frozen yet. On approval each declaration is frozen in its own file under `KAM/Frozen/Nekhoroshev/` (the theorem with
body `sorry`, state `DRAFT_SORRY`), hashed in `manifest/frozen-anchors.json`, as for D20.

## What is proposed

**N-PARTIAL-CONVEX** (`partialConvex_nekhoroshev`): the stopped properly-degenerate Nekhoroshev theorem,
Nekhoroshev 1977 Theorem 4.4 (p. 30) with Remarks 4.5.A–B, specialized to Hamiltonians h(I) + μP(I, φ, z) that are
convex only in the n ≥ 2 fast actions, with an arbitrary slow domain. Conclusion (stopped form): along any solution
on [0, t] whose slow variables stay in the eroded slow domain up to t, the fast-action drift is ≤ μ^b/2 for
t ≤ min(C, μ⁻¹·exp(μ^(−a))), with the source's exponents a = 2/(6n²−3n+14), b = 3a/2 (n = 2: a = 1/16, b = 3/32).
The hypotheses (convexity of the fast part, complex Hessian bound, analyticity and size of P) are on an enlarged fast
domain G′ ⊇ G + (real ρ-ball); the threshold μ₀ is chosen after h and the complex bound (no uniformity over h is
claimed: the F-N1 lesson). This is the bridge from track N to track P: track P's `amdConfinement` takes exactly this
stopped estimate as its dynamical input (its packet is `docs/tracks/P/REVIEW-additions.md`).

Seven new supporting definitions: `complexifyPhase`, `innerCore`, `partialComplexDomain`, `HasDefiniteFastPart`,
`IsPartialPerturbation`, `partialTimeExponent`, `partialDriftExponent`. They reuse the frozen track-N and track-P
definitions (`IsSolutionOn`, `degenerateHamiltonian`, `slow`, `fast`, `fastShift`, …).

**Deferred, not in this packet:** N-AVERAGING (`averaging_mean`, `averaging_most`, with `HasAveragingFrequencyRank`,
`averagingError`). Only a transcription of Arnold–Kozlov–Neishtadt (3rd ed.) §6.1.9 p. 243 is pinned; the primary
pages and the proof they rely on have been requested from the owner (audit F-NADD-2/3).

## Audit trail

| Step | Result |
|---|---|
| Independent statement audit v0.3 (GPT-6.1-Sol high), `AUDIT-additions-v0.3.md` | No dynamical counterexample. F-NADD-1 (major): the naive import of Nek77 Thm 4.4 fails at the boundary of G (steepness is defined on G-intersected spheres; a Lean-checked wedge example `no_uniform_transverse_spheres`). F-NADD-2/3: averaging source incomplete. F-NADD-4: P must build a larger domain with collars (no N change). |
| Revision v0.4 | Hypotheses moved to the enlarged fast domain G′; the convex specialization of the source proof documented as proof work (no steepness premise, no `sInf ∅` junk); closed imaginary bounds and the zero-slow-pair case re-transcribed from the PDF; averaging deferred. |
| Independent delta audit v0.4 (GPT-6.1-Sol medium), `AUDIT-additions-v0.4-delta.md` | Wedge refutation replayed against the new formulation; every changed line accounted for; N-to-P interface with P v0.4 has no signature mismatch. **READY FOR OWNER** for N-PARTIAL-CONVEX and its seven definitions. |

Draft file: `.drafts/N/Additions.lean` v0.4, sha256 `ebef5cbca47162d83c5481726408bd4c2977375526c3579d0c791dbd1b80af4d` (elaborates against Mathlib v4.35.0 with only theorem-body
`sorry` warnings). The text below is that file with the deferred averaging declarations removed.

## Owner questions, with recommendations

1. **Accept this explicit convex proof specialization, rather than a purported verbatim black-box import
   with unproved global steepness?** Recommend yes after independent review of the endpoint lemma and
   its exact use in §§7–10. The G′ collar alone is not a proof of steepness at every centre of G′.
2. **Approve the fixed-h, complex-bound inputs on G′ and the unchanged stopped conclusion?** Recommend yes.
   Require the larger-domain/collar and chart lemmas in P before using this theorem there. Keep the source
   exponents and period-2π convention.
3. **Defer both averaging candidates?** Recommend yes, as directed by this revision task. They remain visible
   with unchanged types, but neither is an approval candidate until the full primary source and relied-on
   proof are pinned. The exact acquisition list and candidate original papers are in sources.md.
4. **Record the source typo and proof-specialization deviation?** Recommend E-N-ADD-1 as a CANDIDATE
   erratum with the audit's independent confirmation of the printed text; record the explicit §10.6
   specialization as a deviation, not as a silently repaired printed theorem. The orchestrator owns the ledger.

## Exact Lean of the packet (v0.4, the approval candidates byte-for-byte)

```lean
/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticIntegrable
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticPerturbation
public import KAM.Frozen.Nekhoroshev.Defs.IsSolutionOn
public import KAM.Frozen.Planetary.Defs.DegenerateHamiltonian
public import KAM.Frozen.Planetary.Defs.Slow
public import KAM.Frozen.Planetary.Defs.FastShift
public import Mathlib.MeasureTheory.Integral.Lebesgue.Basic

/-!
# Track N additions, D22: draft v0.4

Unapproved statement drafts, not providers. Nekhoroshev 1977, Theorem 4.4 and
Remarks 4.5.A--B; Arnold--Kozlov--Neishtadt (2006), Theorem 6.11 and Corollary 6.1.
See docs/tracks/N/{statement,sources,notes}.md for the convex proof specialization.
Both averaging theorems are DEFERRED from the approval packet (F-NADD-2/3).

1. Never use set_option maxHeartbeats (or any heartbeat-budget override). A
   default-heartbeat elaboration failure is a design signal to refactor or split the proof,
   not something to mask with a larger budget.
2. No Lean file may exceed 1500 lines of code.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped BigOperators ENNReal

namespace KAM.Nekhoroshev

/-- Coordinatewise real-to-complex inclusion of canonical phase space; no choices. -/
def complexifyPhase {n : ℕ} (z : KAM.Planetary.Phase n) :
    (Fin n → ℂ) × (Fin n → ℂ) :=
  (fun i => (z.1 i : ℂ), fun i => (z.2 i : ℂ))

/-- Closed maximum-norm erosion, a stronger margin than the Euclidean erosion
of Nekhoroshev §4.2, p. 29. Used only with a positive radius. -/
def innerCore {E : Type*} [NormedAddCommGroup E] (U : Set E) (d : ℝ) : Set E :=
  {x | x ∈ U ∧ Metric.closedBall x d ⊆ U}

/-- Nekhoroshev §4.3.A, p. 29: complex tube over arbitrary fast/slow real domains.
Canonical order is (fast angles, slow positions; fast actions, slow momenta). -/
def partialComplexDomain {n k : ℕ} (G : Set (Fin n → ℝ))
    (D : Set (KAM.Planetary.Phase k)) (ρ : ℝ) :
    Set ((Fin (n + k) → ℂ) × (Fin (n + k) → ℂ)) :=
  {z | KAM.Planetary.fast (fun i => (z.2 i).re) ∈ G ∧
    (KAM.Planetary.slow (fun i => (z.1 i).re),
      KAM.Planetary.slow (fun i => (z.2 i).re)) ∈ D ∧
    z.1 ∈ KAM.complexStrip (n + k) ρ ∧ z.2 ∈ KAM.complexStrip (n + k) ρ}

/-- Definite fast Hessian, allowing a single global convex or concave sign, and
nonvanishing frequency, on a real enlargement. This specializes the index-one
steep class in Nekhoroshev §1.18 and §4.1. All real derivatives are guarded. -/
def HasDefiniteFastPart {n : ℕ} (G : Set (Fin n → ℝ)) (ρ g m : ℝ)
    (h : (Fin n → ℂ) → ℂ) : Prop :=
  let U := {I : Fin n → ℝ | (fun i => (I i : ℂ)) ∈ KAM.actionNbhd G ρ}
  0 < g ∧ 0 < m ∧ ContDiffOn ℝ 3 (realPart h) U ∧
    (∃ σ : ℝ, (σ = 1 ∨ σ = -1) ∧ ∀ I ∈ U,
      g ≤ ‖KAM.frequencyMap h I‖ ∧ ∀ v : Fin n → ℝ,
        m * (∑ i, (v i) ^ 2) ≤ σ * (fderiv ℝ (fderiv ℝ (realPart h)) I v v))

/-- Analytic, real, fast-angle-periodic perturbations of norm at most one.
The slow coordinates need not be periodic. Nekhoroshev §4.3 and Remark 4.5.A. -/
def IsPartialPerturbation {n k : ℕ} (G : Set (Fin n → ℝ))
    (D : Set (KAM.Planetary.Phase k)) (ρ : ℝ)
    (P : (Fin (n + k) → ℂ) × (Fin (n + k) → ℂ) → ℂ) : Prop :=
  DifferentiableOn ℂ P (partialComplexDomain G D ρ) ∧
    (∀ z ∈ partialComplexDomain G D ρ, ‖P z‖ ≤ 1) ∧
    (∀ z : KAM.Planetary.Phase (n + k),
      complexifyPhase z ∈ partialComplexDomain G D ρ → (P (complexifyPhase z)).im = 0) ∧
    (∀ z ∈ partialComplexDomain G D ρ, ∀ ℓ : Fin n → ℤ,
      P (z + complexifyPhase (KAM.Planetary.fastShift (b := k) ℓ)) = P z)

/-- Source exponent a, Nekhoroshev (4.1), (4.5), with every steepness index one.
The theorem uses n ≥ 2; the denominator is positive there. -/
def partialTimeExponent (n : ℕ) : ℝ := 2 / (6 * (n : ℝ) ^ 2 - 3 * n + 14)

/-- Source exponent b, Nekhoroshev (4.4), with every steepness index one. -/
def partialDriftExponent (n : ℕ) : ℝ := 3 / (6 * (n : ℝ) ^ 2 - 3 * n + 14)

/-- N-PARTIAL-CONVEX. Fixed h, complex Hessian bound and domains precede the
threshold, which is uniform in the normalized perturbation and supplied interval.
The slow-domain condition is tested only through the queried time, never assumed
through the exponential window. Source: Nekhoroshev 1977, Theorem 4.4, p. 30.
The enlarged source tube contains the working domain with a fixed collar.
Use the definite-Hessian proof of Lemma 10.6, then the printed proof of Theorem 4.4;
do not assert literal global source steepness at boundary centres. See notes.md. -/
theorem partialConvex_nekhoroshev
    {n k : ℕ} (hn : 2 ≤ n) (hk : 1 ≤ k)
    (G G' : Set (Fin n → ℝ)) (D : Set (KAM.Planetary.Phase k))
    (hG : IsOpen G) (hGc : Convex ℝ G)
    (hG' : IsOpen G') (hGc' : Convex ℝ G') (hD : IsOpen D)
    (ρ g m Mcomplex : ℝ) (hρ : 0 < ρ) (hMc : 0 < Mcomplex)
    (hcollar : ∀ I ∈ G, Metric.closedBall I ρ ⊆ G')
    (h : (Fin n → ℂ) → ℂ)
    (hhol : DifferentiableOn ℂ h (KAM.actionNbhd G' ρ))
    (hC2 : ContDiffOn ℂ 2 h (KAM.actionNbhd G' ρ))
    (hreal : ∀ I : Fin n → ℝ,
      (fun i => (I i : ℂ)) ∈ KAM.actionNbhd G' ρ → (h (fun i => (I i : ℂ))).im = 0)
    (hHess : ∀ z ∈ KAM.actionNbhd G' ρ, ‖fderiv ℂ (fderiv ℂ h) z‖ ≤ Mcomplex)
    (hdef : HasDefiniteFastPart G' ρ g m h) :
    ∃ μ₀ : ℝ, 0 < μ₀ ∧ ∀ μ : ℝ, 0 < μ → μ < μ₀ →
      ∀ P : (Fin (n + k) → ℂ) × (Fin (n + k) → ℂ) → ℂ,
      IsPartialPerturbation G' D ρ P → ∀ C : ℝ, 0 < C →
      ∀ z : ℝ → KAM.Planetary.Phase (n + k),
      IsSolutionOn
        (KAM.Planetary.degenerateHamiltonian (realPart h)
          (fun _ w => (P (complexifyPhase w)).re) μ)
        {I | KAM.Planetary.fast (b := k) I ∈ G} (Set.Icc 0 C) z →
      KAM.Planetary.fast (b := k) (z 0).2 ∈ innerCore G (μ ^ partialDriftExponent n) →
      ∀ t ∈ Set.Icc 0
        (min C (μ⁻¹ * Real.exp (μ ^ (-partialTimeExponent n)))),
      (∀ u ∈ Set.Icc 0 t,
        (KAM.Planetary.slow (a := n) (z u).1, KAM.Planetary.slow (a := n) (z u).2)
          ∈ innerCore D (μ ^ partialDriftExponent n)) →
      ‖KAM.Planetary.fast (b := k) (z t).2 - KAM.Planetary.fast (b := k) (z 0).2‖
        ≤ μ ^ partialDriftExponent n / 2 := by
  sorry

end KAM.Nekhoroshev

end
```
