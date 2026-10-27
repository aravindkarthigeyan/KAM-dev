# Track K dependency graph: extraction specification

Fixed before extraction (skill `build-proof-dependency-graph`, Phase 1). Changes to this file are recorded at the
end with a date and reason.

## Roots and anchors
- **Roots:** the five frozen theorem anchors of track K, as node IDs:
  - `bp:p0:head` (`KAM.kam_positive_measure`);
  - `bp:p0:headq` (`KAM.kam_positive_measure_qualitative`);
  - `bp:p0:g1` (`KAM.aposteriori_kam`);
  - `bp:p0:g2` (`KAM.local_uniqueness_flow`);
  - `bp:p0:g3` (`KAM.volume_not_diophantine_le`).
- **Frozen definitions.** The 20 frozen definitions of track K are frozen anchor nodes of `KIND: definition`, one node
  per declaration, with ID `<Part 0 label>#<Lean name>` (ASCII; `ℂ` written `C`), e.g. `bp:p0:domains#complexStrip`.
  A Part 0 definition environment that groups several declarations is covered by all of its declaration nodes.
- **Manifest.** Anchor identity (file, export, anchor ID, contract ID/version, ABI hash) is copied from
  `manifest/frozen-anchors.json` and bound by the linter. It is never edited in the graph.

## Corpus
- The five files `blueprint/parts/p{0,1,2,3,4}-*.tex`, pinned in `docs/graph/K/CORPUS.sha256` (blueprint after the
  consolidation commit `67b8129`).
- **Part 1 is under refute-first review.** Its slices are extracted after the review's fixes land. Any change to a
  pinned file is recorded below with the new hashes, and the affected slices are re-checked.
- Nothing outside the corpus is a graph source. Pinned papers (HL19, GJLV05, CCdlL13, Pos01, …) are provenance
  only, because the blueprint proves everything it uses except the external inputs below.

## Standing assumptions and external inputs
- **STANDING_ASSUMPTIONS: none.** The part-level hypothesis packages are local packages, not global standing
  assumptions:
  - `bp:p2:standing` (data of Part 2);
  - `bp:p3:standing` ((S1)–(S3));
  - the display `bp:p4:SA` of Part 4.

  Each is a `definition` (or `display`) node. A result that assumes a package depends on its node. Every
  application of such a result must show where the package is supplied (an EDGE or a step node at the consumer).
- **External inputs:** exactly the ten items (E1)–(E10) of Part 1 (`bp:p1:ext-*`), as `KIND: external`,
  `LEAN_STATUS: EXTERNAL`.
  - A proof that uses a fact which is neither proved in the blueprint nor one of (E1)–(E10) gets a step node whose
    NOTE begins `SOURCE_GAP:`. Never a silent edge, and never a new external.

## Conventions to watch (the global reviewer checks these across slices)
- **Norms:**
  - `|·|` is the max norm on ℂ^m, with the induced operator norm on matrices;
  - `‖·‖_ρ` is the sup over the strip `T_ρ = {θ ∈ ℂ^n : |Im θ| < ρ}`;
  - the weighted ℓ¹ Fourier norm appears only inside the cohomological equation (decision D12).
- **Periodicity:** 1-periodic in each real direction; averages are over `[0,1]^n`.
- **Diophantine condition:** `|k·ω| ≥ γ |k|₁^{-τ}` for `k ≠ 0` (frozen `KAM.IsDiophantine`). Track `τ ≥ 0`
  versus `τ ≥ n−1`, and `n ≥ 2` where stated.
- **Dimension:** d = n, Case III, A = 0, primary tori, canonical symplectic form `Ω₀` (decision D2).
- **Constants:** every constant's dependence list as stated, e.g. "C₁ depends only on (n, τ, ρ, …)". The source
  fields record exactly the stated dependence.
- **Frozen G1:** G1 has the uniformity bound `γ ≤ γ̄` and the μ/2 margins.
- **HEAD's rate:** `ε^{1/4}`.
- **Lean totality:** `bp:p0:totality` explains how the frozen definitions behave off their source domain. It is
  not a hypothesis.

## Node threshold
- Every labelled result environment and every `\proofstep` is a node. Exclusions get a reason in the coverage.
- Add a further step node (ID `<parent>#<slug>`) only for an unmarked substantive obligation, of the kinds the
  skill lists:
  - a nontrivial estimate or application;
  - a construction;
  - a case split;
  - a witness or parameter choice;
  - a quantifier closure;
  - a carrier change;
  - a reused intermediate claim.
- No nodes for routine algebra.
- A remark is a node only if it states a mathematical fact that a proof uses. Administrative remarks are
  `EXCLUDED`: deviation lists, provenance, Lean notes, applications summaries.
- Equations and hypothesis-item labels (`eq:*`, `bp:p2:A1`, …) map to their enclosing node in the coverage.
- Refine an item label into its own node only if consumers use the item independently and that matters for
  the topology.

## Edges
- Direct uses only, conjunctive.
- A `\ref` that is a forward pointer, a comparison, a provenance remark or a mention of a hypothesis being
  checked is NOT an edge. Example: step `step:p1:coh-vector` says the operator-norm bound "is Lemma
  cohomological-operator". That is a pointer, not a use.
- References from Part 2 to G1, and from Part 3 to G2, are statement references: those parts prove those theorems.
  The pre-extraction already dropped them.
- Every edge has an `EDGE:` line locating the use in the consumer.

## Roles
- **Writer:** `claude-main-orchestrator` (Opus 5.5, session 0e739fce). The only editor of `DEPGRAPH.md` and
  `DEPGRAPH_COVERAGE.md`, which are assembled from the slice packets by `scripts/depgraph_assemble.py`.
- **Extractors:** Sonnet agents, one per slice, tagged `sonnet-extract-<slice>`. Each edits only its own packet
  files `docs/graph/K/packets/<slice>.{nodes,coverage}.md`.
- **Slice reviewers:** GPT-6.1-Sol (Codex, tmux, default tier; decision D21), tagged `sol-review-<slice>`. They are
  distinct from the extractors.
- **Global reviewer:** a fresh GPT-6.1-Sol session, tagged `sol-global-K`, distinct from all of the above.

## Slices
`docs/graph/K/packets/slices.json`:

| Slice | Source range |
|---|---|
| `K-p0` | all of Part 0 |
| `K-p1a` | Part 1, L1–498 |
| `K-p1b` | Part 1, L499–994 |
| `K-p1c` | Part 1, L995–end |
| `K-p2a` | Part 2, L1–602 |
| `K-p2b` | Part 2, L603–end |
| `K-p3` | all of Part 3 |
| `K-p4a` | Part 4, L1–667 |
| `K-p4b` | Part 4, L668–end |

- A node belongs to the slice containing its first line.
- The proofs of `bp:p0:head`, `bp:p0:headq` and `bp:p0:g3` sit in Part 4. Their step nodes belong to `K-p4b` (head,
  headq) and `K-p4a` (g3); the anchor nodes themselves belong to `K-p0`.

## Change log
- 2026-10-27: initial specification.
