# K-p4a: delta3 topology review

Reviewer: `sol-review-d3` (`d3`). Assigned-record verdict: **FAIL**.

I wrote none of the records reviewed here. Scope is the d3 assignment in `packets/delta3-assignments.json`, checked against the current blueprint (including commit `2f355ea`), SPEC change log, the available slice delta2 history and GLOBAL-review findings. This is a source-topology review, with FAIL reserved for material contract, direct-use, locator or coverage errors. It does not certify Lean proofs or the rest of the slice.

Source and conditional-input context re-read: Part 4 L84-L101, L138-L163, L183-L222 and L518-L544; Part 1 L112-L191, L1071-L1105 and E6/E11.

| Record ID | Verdict | Source spans re-read | Reason / repair check |
|---|---|---|---|
| `step:p4:db-vectorfield` | PASS | `blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L210-L222`; `blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L211-L215`; `blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L219-L219`; `blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L211-L218`; `blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L216-L218` | The Cauchy estimate is a dependency, not an extra premise; the corrected formula locator contains J applied to D phi. |
| `bp:p4:matrix-norms` | PASS | `blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L518-L533`; `blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L535-L544`; `blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L536-L536`; `blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L528-L528`; `blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L530-L530`; `blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L525-L525` | The conditional unperturbed-lemma edge is removed; L0,N0 are typing data and their norms are computed directly. Clauses (i)-(v) match. |
| `step:p4:mn-rowsum` | PASS | `blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L536-L543`; `blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L541-L541`; `blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L537-L539`; `blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L542-L543` | The unperturbed reference is a notation pointer. The actual proof directly uses Part 1 operator/matrix norms, the frozen symplectic formula and E6. |
| `step:p4:slab-fubini` | FAIL | `blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L95-L101`; `blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L101-L101`; `blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L95-L95` | The ext-measure EDGE cites L95, only the proof-step heading. The measurable-set Fubini/product-measure use is at L96-L101, explicitly L99-L100. |

Complete proposed replacement for `step:p4:slab-fubini` (report proposal only):

```text
NODE: step:p4:slab-fubini
KIND: step
TITLE: Fubini in the coordinate $\omega_i$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L95-L101
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L95-L101
CONTRACT_ID: step:p4:slab-fubini
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: dominant coordinate i with |k|_1<=n|k_i|; R,a>0
SOURCE_QUANTIFIERS: fixed other coordinates omega' in [-R,R]^{n-1}
SOURCE_CONCLUSION: each section in omega_i has length <= 2a/|k_i|, so by Fubini the slab has measure <= (2R)^{n-1} 2a/|k_i| <= 2n(2R)^{n-1}a/|k|_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:slab-coordinate, bp:p1:ext-measure
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:slab-coordinate | blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L101-L101 | dominant coordinate bound
EDGE: bp:p1:ext-measure | blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L96-L101 | Tonelli for the indicator of a measurable set (E11)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: repaired F1: uses Tonelli for the indicator of a measurable set (E11); formerly a source gap before (E11) was listed
```

Source concern for handoff: Part 4 L96 says “The slab is open, hence measurable.” The set in L87 is intersected with the closed cube and need not be open in R^n. It is measurable as the intersection of a closed cube with an open linear slab. The graph correctly records the measure bound; no source edit or graph hypothesis is introduced here. No pinned-paper erratum is claimed.

Accounting: 4 distinct assigned nodes; 3 PASS; 1 FAIL. No coverage items assigned.

Checks: `sha256sum -c docs/graph/K/CORPUS.sha256` returned `OK` for Parts 0-4. Report row accounting, replacement completeness, DEPS/EDGE equality and locator bounds were checked mechanically; `git diff --check` for the report paths returned exit 0. Only this review report was written for this slice. No packets, SPEC, blueprint, frozen files or manifest were edited; no state-changing git or Lean command was run. Source lint, targeted Lean builds and `#print axioms` are inapplicable to this report-only task under the review brief. No Lean result was created. No implementation/provider modules were read.

Uncertainties / deviations: verdicts are limited to the assigned records. No mathematical or frozen-statement change is proposed. Existing descriptive wording is not treated as a failure.
