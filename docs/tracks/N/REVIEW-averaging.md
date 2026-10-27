# Track N additions (D22): approval packet — N-AVERAGING

Prepared by the I/N/P sub-orchestrator (D23), 27 October 2026, for the owner's line-by-line approval. Nothing here is
frozen yet. On approval each declaration is frozen in its own file under `KAM/Frozen/Nekhoroshev/` (theorems with body
`sorry`, state `DRAFT_SORRY`), hashed in `manifest/frozen-anchors.json`, as for D20 and D25.

## What is proposed

**N-AVERAGING**, the second D22 milestone of track N, deferred at D25 until the primary source was pinned. Averaging
for most initial conditions, Arnold–Kozlov–Neishtadt, *Mathematical Aspects of Classical and Celestial Mechanics*, 3rd
ed. (AKN06, owner-supplied), §6.1.9, Theorem 6.11 and Corollary 6.1, printed p. 243, corroborated by Neishtadt's
original paper (Nei76, Dokl. Akad. Nauk SSSR 226(6) (1976) 1295–1298):
- `averaging_mean`: for an analytic nearly integrable Hamiltonian system satisfying the frequency-rank condition
  (`HasAveragingFrequencyRank`: the full/projective rank alternatives of Thm 6.11), the phase-space integral over
  initial data of the maximal deviation (`averagingError`) between the exact and averaged action motions up to time
  1/ε is O(√ε) (AKN (6.27));
- `averaging_most`: outside a set of initial data of absolute measure ≤ c·√ε/κ (with a visible collar η), the exact
  solution exists up to time 1/ε and stays within κ of the averaged one (AKN (6.28), Nei76 Thm 2 (8)).

Constants are chosen for the fixed system (no uniformity over h, f claimed). Measures are absolute phase volumes.

## Audit trail

| Step | Result |
|---|---|
| Statement audit v0.3 (`AUDIT-additions-v0.3.md`) | F-NADD-2 (primary source not pinned), F-NADD-3 (the "most initial conditions" existence deduction) left the averaging theorems unapprovable; F-NADD-7/8 (measure quantifiers, `sSup` guards) passed. |
| Delta audit v0.4 (`AUDIT-additions-v0.4-delta.md`) | Averaging deferred from the D25 packet. |
| Owner supplies AKN06 (pinned on main 3396f00); reviser re-transcribes from the primary pages and Nei76 | Draft v0.5, new module `.drafts/N/Averaging.lean`. |
| Independent statement audit v0.5 (GPT-6.1-Sol medium), `AUDIT-averaging-v0.5.md` | All four declarations APPROVABLE. F-NADD-2 and F-NADD-3 closed at the primary-source and proof-route level; F-NADD-7/8 still pass. The source-proof gap E-NAVG-NEI-17 (Nei76 p. 1298 (17) interchanges sup and integral) is repaired by a direct integral-of-maximum proof that does not change the statements. **READY FOR OWNER.** |

Draft: `.drafts/N/Averaging.lean` v0.5, 116 lines, sha256 `6b8bf1941fd1c30f3d8ca1e81b304873d31959eae85809b52f39c9e6e132ff62`; elaborates against Mathlib v4.35.0 with only the
two theorem-body `sorry` warnings. The provider proofs (rank-to-volume estimates, Fourier envelopes, flow theory,
measurable stopping) remain to be done, as for every frozen theorem.

## Declaration inventory (all new)

| Declaration | Kind |
|---|---|
| `HasAveragingFrequencyRank` | def |
| `averagingError` | def |
| `averaging_mean` | theorem |
| `averaging_most` | theorem |

## Owner questions, with recommendations

1. **Approve this analytic Hamiltonian specialization and fixed-system constant order?** Recommend yes after
   the v0.5 independent audit; it is a conservative source class and avoids an unsupported uniform-in-h/f claim.
2. **Retain both mean/κ and actual-existence candidates?** Recommend yes. The original quantitative paper
   explicitly treats exiting data. Keep their distinct names and the visible η collar; do not turn the
   supplied-family premise into an existence premise for the most-data theorem.
3. **Adopt the explicit maximum-error proof repair and record E-NAVG-NEI-17?** Recommend yes as a candidate
   source-proof gap plus a declared formalization deviation, with independent review of the Fourier envelopes
   before proof-route sign-off. The printed equality is not a valid automatic interchange.
4. **Freeze now or audit first?** Recommend a fresh audit of this exact new module and proof plan, then
   exact-text approval. D25 did not approve these averaging statements. No change to frozen partial stability
   is proposed, and no observed-mass or all-time physical stability result follows from averaging alone.

## Errata and deviations recorded on approval

- E-NAVG-NEI-17 (candidate source-proof gap): Nei76 p. 1298 (17) prints sup_t z(t) = ∫_{U′} h, an invalid
  interchange of a time supremum and an initial-data integral; repaired by the direct integral-of-maximum argument.
- Deviation: the analytic Hamiltonian specialization of AKN's smooth setting, with fixed-system constants.

## Exact Lean (v0.5, byte-for-byte)

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
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
public import Mathlib.MeasureTheory.Measure.Prod
public import Mathlib.MeasureTheory.Integral.IntegrableOn
public import Mathlib.MeasureTheory.Integral.Lebesgue.Basic

/-!
# N-AVERAGING draft v0.5, primary-source revision

AKN06 (third edition), pp.3, 207--209, 217--218, 242--244; Neishtadt 1976,
pp.1295--1298. New unapproved statements, independent of the partial theorem.
The maximum-in-time estimate needs the explicit proof repair in notes.md:
Neishtadt's printed equation (17) interchanges a supremum and an integral.

1. Never use set_option maxHeartbeats (or any heartbeat-budget override). A
   default-heartbeat elaboration failure is a design signal to refactor or split the proof,
   not something to mask with a larger budget.
2. No Lean file may exceed 1500 lines of code.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped ENNReal

namespace KAM.Nekhoroshev

/-- The two global rank alternatives in AKN Theorem 6.11, p. 243.
The augmented map is surjective exactly when the nonzero frequency has projective
rank n-1. There is no chart choice or division by a frequency component.
The source projective rank is intrinsic. Neishtadt 1976 p.1296 uses a chart
with a nonzero first component; the coordinate-free rank estimate in notes.md
explains that translation. Analytic hypotheses guard the derivatives here. -/
def HasAveragingFrequencyRank {n : ℕ} (U : Set (Fin n → ℝ))
    (h : (Fin n → ℂ) → ℂ) : Prop :=
  (∀ I ∈ U, Function.Surjective (fderiv ℝ (KAM.frequencyMap h) I)) ∨
    (∀ I ∈ U, KAM.frequencyMap h I ≠ 0 ∧
      Function.Surjective (fun v : (Fin n → ℝ) × ℝ =>
        fderiv ℝ (KAM.frequencyMap h) I v.1 + v.2 • KAM.frequencyMap h I))

/-- Supremum error from the constant averaged action, AKN (6.27).
Used with ε>0 and genuine solutions on [0,1/ε] in a bounded action domain;
these hypotheses make the image nonempty and bounded above. -/
def averagingError {n : ℕ} (ε : ℝ)
    (Φ : ((Fin n → ℝ) × (Fin n → ℝ)) → ℝ → ((Fin n → ℝ) × (Fin n → ℝ)))
    (x : ((Fin n → ℝ) × (Fin n → ℝ))) : ℝ :=
  sSup ((fun t => ‖(Φ x t).2 - x.2‖) '' Set.Icc 0 (1 / ε))

/-- N-AVERAGING-MEAN, analytic Hamiltonian specialization of AKN06 p.243 (6.27)--(6.28).
AKN Theorem 6.11 and Corollary 6.1 for genuine solution families.
The flow premise is only typing/existence on the stated interval;
there is no hypothesis about its error or about an exceptional set.
Constants are chosen after the fixed analytic system and compact initial set,
before ε, the solution family, and κ. Measure is unnormalized phase volume. -/
theorem averaging_mean
    {n : ℕ} (hn : 2 ≤ n) (R s : ℝ) (hR : 0 < R) (hs : 0 < s)
    (h : (Fin n → ℂ) → ℂ) (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (hh : IsAnalyticIntegrable R s h) (hf : IsAnalyticPerturbation R s 1 f)
    (hrank : HasAveragingFrequencyRank (actionBall n R) h)
    (K : Set ((Fin n → ℝ) × (Fin n → ℝ))) (hK : IsCompact K)
    (hKI : ∀ x ∈ K, x.2 ∈ actionBall n (R / 2)) :
    ∃ A ε₀ : ℝ, 0 < A ∧ 0 < ε₀ ∧ ∀ ε : ℝ, 0 < ε → ε ≤ ε₀ →
      ∀ Φ : ((Fin n → ℝ) × (Fin n → ℝ)) → ℝ → ((Fin n → ℝ) × (Fin n → ℝ)),
      (∀ x ∈ K, Φ x 0 = x ∧
        IsSolutionOn (KAM.realHamiltonian h (fun w => (ε : ℂ) * f w))
          (actionBall n R) (Set.Icc 0 (1 / ε)) (Φ x)) →
      IntegrableOn (averagingError ε Φ) K ∧
      (∫⁻ x in K, ENNReal.ofReal (averagingError ε Φ x) ∂volume)
        ≤ ENNReal.ofReal (A * Real.sqrt ε) ∧
      ∀ κ : ℝ, 0 < κ → ∃ E : Set ((Fin n → ℝ) × (Fin n → ℝ)),
        MeasurableSet E ∧ E ⊆ K ∧ volume E ≤ ENNReal.ofReal κ ∧
        ∀ x ∈ K \ E, ∀ t ∈ Set.Icc 0 (1 / ε),
          ‖(Φ x t).2 - x.2‖ ≤ A * Real.sqrt ε / κ := by
  sorry

/-- N-AVERAGING-MOST, derived from AKN06 p.243 and Neishtadt 1976 pp.1295--1298.
Local-domain, actual-solution consequence of AKN (6.28).
Existence and confinement are conclusions on the good data, not premises.
The source smoothness convention is AKN06 p.3 footnote 1; the averaged-orbit
collar is Remark 6.4, pp.217--218. Neishtadt Theorem 2 includes existence
in its good-data definition; notes.md gives the stopped proof plan and corrects
the maximum-error step. No flow or future confinement is assumed here. -/
theorem averaging_most
    {n : ℕ} (hn : 2 ≤ n) (R s : ℝ) (hR : 0 < R) (hs : 0 < s)
    (h : (Fin n → ℂ) → ℂ) (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (hh : IsAnalyticIntegrable R s h) (hf : IsAnalyticPerturbation R s 1 f)
    (hrank : HasAveragingFrequencyRank (actionBall n R) h)
    (K : Set ((Fin n → ℝ) × (Fin n → ℝ))) (hK : IsCompact K)
    (hKI : ∀ x ∈ K, x.2 ∈ actionBall n (R / 2)) :
    ∃ A ε₀ η₀ : ℝ, 0 < A ∧ 0 < ε₀ ∧ 0 < η₀ ∧ η₀ ≤ R / 4 ∧
      ∀ ε : ℝ, 0 < ε → ε ≤ ε₀ → ∀ η : ℝ, 0 < η → η ≤ η₀ →
      ∃ E : Set ((Fin n → ℝ) × (Fin n → ℝ)), MeasurableSet E ∧ E ⊆ K ∧
        volume E ≤ ENNReal.ofReal (A * Real.sqrt ε / η) ∧
        ∀ x ∈ K \ E, ∃ z : ℝ → ((Fin n → ℝ) × (Fin n → ℝ)),
          z 0 = x ∧
          IsSolutionOn (KAM.realHamiltonian h (fun w => (ε : ℂ) * f w))
            (actionBall n R) (Set.Icc 0 (1 / ε)) z ∧
          ∀ t ∈ Set.Icc 0 (1 / ε), ‖(z t).2 - x.2‖ ≤ η := by
  sorry

#print axioms averaging_mean
#print axioms averaging_most

end KAM.Nekhoroshev

end
```
