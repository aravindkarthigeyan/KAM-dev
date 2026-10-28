# Overnight log (2026-10-27 to 28): decisions taken without the owner (D29)

Each entry: the time, the decision, the alternatives, the reason, and how to reverse it.

- **21:00. Claimed I-STRIP-3 (the cohomological equation on strips) for an orchestrator Sonnet prover.**
  - Why: it was unclaimed on the board, and Zohar's last commit was at 19:47. It gates waves 5–8 of the G1/G2
    design.
  - Reversal: if Zohar has his own version, his takes precedence; we compare in the morning and keep the better one.
- **21:00. Started a Lean design for Part 4 (HEAD, HEAD-Q),** as for Parts 2/3. It is an Opus architect plus a
  GPT-6.1-Sol signature audit.
  - Part 4 lemmas that apply G1 or G2 wait for those seals, because quarantine forbids importing DRAFT_SORRY anchors.

- **21:20. Split `KAM/Uniq/Standing.lean` out of the design's package P3-1 as P3-0, to start G2 early.**
  - Only the packaging changes; no signature changes.
  - Reversal: none needed.
- **21:45. Overlapping packages to keep the critical path busy.** P2-5, P2-6, P2-10 and P2-7 were started on the
  branches of their predecessors while those were still in audit.
  - Landing order is enforced: a predecessor lands only after its audit passes.
  - If an audit forces a proof change, dependents re-merge; signatures are fixed by the audited design.
  - P2-7 proves exactness and the cohomology-free geometry steps now, and holds the `geometry` assembly for
    I-STRIP-3.
- **22:05. I-STRIP-3 collision resolved in Zohar's favour.** Zohar landed his own I-STRIP-3 (43a8dd5) at about the
  time of our overnight claim. It is built on our design §2.4 interface (`cohSolution`, `cohConst`), so his file is
  kept unchanged.
  - Our prover's branch `k/strip3` is kept, unmerged, for reference.
  - Its non-overlapping parts are ported onto Zohar's names as I-STRIP-3b:
    - the operator-norm node `bp:p1:cohomological-operator`;
    - the real C¹ form of `fourier-basic` (a);
    - the Appendix A corollary `KAM.Apost.cohomological`.
  - Reversal: none needed.
- **22:10. Part 4 Lean design adopted, subject to its signature audit.** One design decision is for the owner to
  confirm: G1, G2 and G3 enter Part 4 through a premise `GValid`.
  - Its fields are verbatim copies of the frozen G1/G2 bodies at the blueprint's parameter tuples, plus G3's
    conclusion. Part 4 lemmas are conditional helpers on `GValid`. Only the HEAD and HEAD-Q providers discharge it
    (`exists_gValid`) from the sealed G1/G2/G3, so the providers are unconditional.
  - Why: the rule "only provider files import frozen theorems" and the 1500-line cap rule out putting about 2,800
    lines of G1/G2-using proofs in one provider file. The premise also lets Part 4 be proved now, before the G1/G2
    seals.
  - Alternative: allow ordinary modules to import SEALED frozen theorems, and wait for the seals.
  - Reversal: switch to that rule after the seals. The `GValid` lemmas then specialize trivially.

### 22:45: track K decisions since 22:10 (orchestrator, Opus)
- **P3-1 `lagrangian` route substitution.** Ω_K = 0 is derived from the operator a-priori bound (item (b) of
  `KAM.Apost.cohomological`, with H = 0), not from "uniqueness with g = 0". The audit (D1) confirms it is valid.
  Graph step `step:p3:lagrangian-unique` is marked BYPASSED (D27).
- **`diffMap` placement.** The Appendix A def `KAM.Uniq.diffMap` lives in `Uniq/Phase.lean` (P3-2), because `phase`
  is stated with it. The design listed it under `Uniq/Difference`. `Difference` now imports `Phase`; there is no
  duplicate.
- **`coh_unique_zero` placement.** It lives in `Head/CohUnique.lean` (P4-0), not in `Head/Lagrangian.lean`. P4-8
  imports it.
- **Part 4 adapters (P4-0).**
  - The design's expected forms of the landed I-P4B lemmas are proved under new names: `derivative_bounds_design`,
    `torsion_regular_design`, `shift_design` and `mixed_difference_design`. Constant identities link
    `Hconst`/`Fconst`/`Mconst` to `derivConstH/F/M`.
  - No landed name was changed.
  - The four `bp:p4:*` nodes keep the I-P4B references plus the adapters.
- **Recommended follow-up (not done).** Generalize `KAM.holomorphic_inverse` from `Fin p` to any `Fintype` index.
  P3-3 hit a unification timeout on `Fin n ⊕ Fin n` and added a local helper,
  `KAM.Uniq.DiffAux.differentiableOn_inv_of_isUnit_det`.
- **Overlapping packages.** These started from branches still in audit, with landing order kept strict:
  - P3-2 and P3-3 from P3-1;
  - P3-4 from P3-3;
  - P3-5 from P3-4;
  - P2-9 from P2-8b;
  - P2-12 from P2-9;
  - P4-1, P4-3 and P4-Q from P4-0;
  - P4-2 from P4-1.

### 23:00: P4-8 step mapping (orchestrator, Opus)
- The P4-8 audit failed the graph step `step:p4:lag-regular` only. The step claims boundedness of Λ on T_ρ and of
  u, v, Du on T_{ρ/2}, and the wrapper `KAM.Head.lagrangeMat_regular` exports only holomorphy and periodicity.
- The main theorem `KAM.Head.lagrangian` passed. Its route applies `coh_unique_zero` directly on T_ρ, which needs
  none of those bounds.
- **Ruling:** the step is marked BYPASSED (D27, route substitution), and the package landed. The Appendix A
  signature is unchanged.
- **Alternative for the owner:** a separately named full-regularity theorem could be added later if the bound
  clauses are wanted for their own sake.

### 23:30: G2 and G1 sealed (orchestrator, Opus)
- **G2 sealed (c9dec45).** `KAM.local_uniqueness_flow` has the body
  `by exact KAM.Provider.local_uniqueness_flow hn hτ hρ hM hσK hσB hσT hμ`.
  - Provider package: P3-5. Its audit passed, including the exact-type probe.
  - Checks: axioms are standard only; leanchecker exits 0.
- **G1 sealed (f4cdc0d).** `KAM.aposteriori_kam` has the body
  `by exact KAM.Provider.aposteriori_kam … hγbar`.
  - Provider package: P2-14. Its audit passed with notes, including the exact-type probe.
  - Checks: axioms are standard only; leanchecker exits 0.
- **All three G theorems are now sealed.** Only HEAD and HEAD-Q remain open.
  - P4-S1 (`exists_gValid` plus the HEAD provider) has started.
  - It is the only place where the `GValid` premise is discharged from the sealed anchors, as the Part 4 design
    intended.
- **P4-9 audit F1 (major, step mapping only).** `step:p4:rt-small` needed the full derivative bound exported.
  - This was fixed rather than bypassed: the prover added `rt_small_full` and `rt_small_normDisp`.
  - A delta audit is running.

### 23:50: graph K amendments and a source tension (orchestrator, Opus)
- **44 append-only AMEND records** (`docs/graph/K/AMENDMENTS.md`) now state the Part 1 standing convention in
  SOURCE_HYPOTHESES (p1-analysis.tex L37–39: positive widths; n ≥ 1 wherever a strip occurs).
  - Trigger: track N's global review (finding G1).
  - The first 5 were drafted by me and approved by an independent Sol reviewer.
  - The other 39 were found by that reviewer's full scan. I checked them mechanically: each new field is the
    standing prefix plus the old field verbatim.
  - No mathematical change.
- **For the owner (not amended): source tension S1.**
  - The convention says every strip in a statement has positive width.
  - But `bp:p1:periodic-bounded` (L518) quantifies "for every ρ' < ρ", and `step:p1:pb-compact` (L523) treats
    ρ' ≤ 0 (an empty strip).
  - Both nodes are left unamended until you rule. Options: keep the ρ' ≤ 0 branch as an explicit exception to the
    convention, or restrict to 0 < ρ' < ρ.
  - Details: `docs/graph/K/reviews/AMEND-n-ge-1-review.md`, section S1.
- **Retro audit (running) of Zohar's Fourier and summation layer.** `KAM/Strip/FourierBasic.lean` and
  `FourierSeries.lean` never had a dedicated package audit, so their 9 graph nodes stay unmarked until it passes.
  The bookkeeping pass flagged `step:p1:sum-bound` as partial: uniform convergence of the partial sums is not stated.

### 23:55: HEAD sealed (orchestrator, Opus)
- **HEAD sealed (e4ca720).** `KAM.kam_positive_measure` has the body
  `by exact KAM.Provider.kam_positive_measure hn hτ hs₀ hr₀ hB_open hB_bdd hB_layer hh hh_real h_nondeg`.
  - The provider discharges the Part 4 `GValid` premise from the sealed G1, G2 and G3 anchors
    (`KAM.Provider.exists_gValid`), then applies `KAM.Head.head_of_gValid`.
  - Audits: P4-12 PASS; P4-S1 PASS, including the exact-type probe.
  - Checks: axioms are standard only; leanchecker exits 0.
- **Next:** P4-S2, the HEAD-Q provider, is running. After its audit, HEAD-Q is sealed, and every frozen theorem of
  track K is then proved.

### 00:15: HEAD-Q sealed; track K complete (orchestrator, Opus)
- **HEAD-Q sealed.** `KAM.kam_positive_measure_qualitative` has the body `by exact
  KAM.Provider.kam_positive_measure_qualitative …`.
  - Audit: P4-S2 PASS, including the exact-type probe.
  - Checks: axioms are standard only; leanchecker exits 0.
- **All five track-K frozen theorems are now SEALED:**
  - G3 (`volume_not_diophantine_le`);
  - G2 (`local_uniqueness_flow`);
  - G1 (`aposteriori_kam`);
  - HEAD (`kam_positive_measure`);
  - HEAD-Q (`kam_positive_measure_qualitative`).
- **Graph K:** 430 PROVED, 12 BYPASSED (route substitutions, each with its reason), 11 EXTERNAL, 0 open.
- **Incident:** main did not build for about 6 min (f8cdca0 to 0a81771). My line wrap of the sealed HEAD body had a
  continuation indent below the tactic column. It is fixed; the term and hashes are unchanged.
- **Also landed tonight:** I-STRIP-2b (W-valued Fourier summation and uniform convergence). It closes the retro-audit
  gaps in the co-author's scalar Fourier layer.

## Tracks I, N, P (sub-orchestrator, D23)

- **21:15. No new freezes; packets only.** Nothing is pending owner approval from tracks I/N/P tonight (D25 and D28
  were frozen before D29). Any new exact-text proposal will be prepared as a packet and wait for the morning.
- **21:15. P-PLANAR and P-FIXED (n = 2) route = frozen P-G + recomputed planar torsion** (blueprint-P Parts 8–12),
  not CP09/Rüssmann. Alternatives: CP09 Thm 4 + Rüssmann for both. Reason: pinned, shorter, P-G is needed anyway;
  CP11 (B.6) errors avoided by recomputation. Reversal: none needed (frozen statements unchanged); the Rüssmann route
  (Part 11a) remains for P-FIXED general n.
- **21:15. P-FIXED general n = a maximal-case analytic weak-KAM theorem built from Rus01/Rus05 with recorded repairs**
  (blueprint-P Part 11a, in progress). Alternatives: Féjoz 2004 (proves only C^∞ tori), wait for further sources.
  Reversal: replace Part 11a if a cleaner source appears; frozen statement unaffected.
- **21:15. N-PARTIAL-CONVEX proof = Pöschel-type normal form with slow parameters** (blueprint-N Part 11, accepted
  after three independent review rounds), not Nekhoroshev 1977's own route (its §10 lemma proofs are in the unpinned
  Part II). The proof gives the frozen exponents a, b by monotonicity from a stronger estimate under the frozen slow
  erosion. Reversal: if Nekhoroshev 1979 (Part II) arrives, it can serve as a cross-check; nothing frozen changes.
- **21:15. N-AVERAGING proof route = pointwise drift envelope + Liouville transport** (blueprint-N Part 12, written,
  critical review queued), repairing Neishtadt 1976 (17) (E-NAVG-NEI-17). Reversal: none needed.
- **21:15. Graph ownership across tracks.** Shared track-N results that feed no N root (gen-barrier, gen-invariant,
  newton-reduction, ♯-norm variants, Pöschel Lemma 1, iterative-special) are owned by the importing graph (I or P),
  not by N's graph. Reversal: move nodes between graphs; no mathematical change.
- **21:15. Proof waves before full graph publication, off-frontier only where safe.** The first Lean packages are
  self-contained gates (I-KEPLER, N-QC, N-ZERO) and the shared ODE infrastructure (N Part 3), which need no
  unpublished graph topology; everything else waits for the reviewed graphs.
- **21:30. N-AVERAGING blueprint: all six findings of review 1 adopted as proposed** (inverse flow via y(u)=γ(t+u),
  nonsingular regularizer bounds under total division, coefficient lemma at action width s, three minor fixes). Frozen
  statements unchanged; round-2 check by the same reviewer before graph extraction. Alternatives: none considered
  (the reviewer's fixes are local). Reversal: revert the Part 12 fix commit.
- **21:30. P-FIXED (Part 11a) divisor hand-off: the finite-stage divisor invariant goes into the iteration file 11a-3**
  (review P11A2-01), and 11a-1's (I3) is corrected afterwards to match, rather than pausing 11a-3 to repair 11a-1
  first. Reason: the invariant is an inductive statement, which belongs with the induction; keeps the writer busy.
  Reversal: move the invariant into 11a-1 in the 11a fix round.
- **21:30. First seal candidates: I-KEPLER, N-QC, N-ZERO** (proved on `inp-w1gates`, axioms standard). They will be
  sealed per D26 only after an independent Sol seal audit and a kernel replay, and after telling the main orchestrator.
  Sealing changes only proof bodies (no new freeze), so it is compatible with D29.
- **21:30. Next proof package: a Lean design with exact signatures for the shared ODE layer (blueprint-N Part 3),
  audited by Sol before any prover starts** (K lesson). Alternatives: start provers directly from the blueprint.
  Reversal: none needed.
