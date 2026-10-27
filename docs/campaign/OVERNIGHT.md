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
