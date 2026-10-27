# Track I global review — round 2

Reviewer: **sol-global-I**. Marker: **global-I-2**.

**Verdict: FAIL.** G01–G06 are resolved as source-modelling findings. G07 remains: the strict `--check` invocation reports an empty/stale generated dashboard in addition to the two permitted global-review placeholders. No new mathematical or topology defect was introduced by the reviewed changes. The remaining dashboard failure prevents the requested round-2 acceptance; it does not undo acceptance of the 13 corrected records.

## Scope and verification

Reviewed assembly: **e86dfb0**, also the checkout HEAD at verification. Compared every effective node and the complete coverage manifest against the round-1 assembly **18df827**, the 13 Appendix A/B replacements in `GLOBAL-review.md`, their current packets, the SPEC revision, and `GLOBAL-delta.md`. Re-read the source spans relevant to the diagnoses and constant correction. No scheduled blueprint fix or future AMEND is included in this verdict.

Exactly **13 node records** changed. All match the round-1 proposals except EXTRACTOR/REVIEWER/topology-review metadata, and each is now REVIEWED by **sol-delta-I-global**, distinct from the replacement author. All **445 assembled node records** match their current packet records, including their complete EDGE lists. Coverage changes are reviewer metadata only: no disposition, source locator, exclusion reason or coverage mapping changed.

Across every node, DEPS, ROUTES, ROUTE_FOR, statement/proof locators, source hypotheses, source quantifiers and constant scopes are unchanged. The only changed mathematical conclusion is the intended extended-torsion constant correction. The graph header changes only the external policy to authorize the two specified P imports. All source pin checks pass.

## Finding-by-finding disposition

| Round-1 finding | Round-2 result | Current evidence and assessment |
|---|---|---|
| **G01: ordinary-torsion premise in no-A5 closure** | **PASS — diagnosis recorded** | `docs/graph/I/DEPGRAPH.md:2437` now begins `NOTE: SOURCE_GAP:` and names both stronger K geometry-step contracts, their A5 premise, and the bridge's inability to supply it. Hypotheses and edges were preserved; the possible direct local calculation is not silently substituted as a paid route. Source: `blueprint-I/parts/p1-iso-linear.tex:509–535`. |
| **G02: generic holomorphy versus uniform frame premises** | **PASS — diagnosis recorded** | `DEPGRAPH.md:1180` now explicitly records the missing uniform ball margin and global DK/Gram-inverse bounds required by the current `fb-holo` import. The local pointwise assumptions and the stronger imported contract remain unchanged. Source: I Part 1 :125–128 and K Part 2 :382–406. |
| **G03: radius-one versus half-radius Neumann contract** | **PASS — diagnosis recorded** | `DEPGRAPH.md:2338` now records the `<1`/`≤1/2` mismatch and scopes it to the sufficient-condition branch. It does not change the source threshold or assume the missing criterion. Source: I Part 1 :498–503 and K Part 1 :177–181. |
| **G04: extended-torsion constant** | **PASS — corrected** | `DEPGRAPH.md:3566` uses `2 m^2 C_DeltaScriptT d/delta^2` in conclusion (e), and the constants EDGE at :3576 uses the same symbol. This agrees with `blueprint-I/parts/p2-iso-iteration.tex:78` and :238. The larger constant retains the moving-frequency and energy-row costs. |
| **G05: unauthorized P boundary** | **PASS — policy reconciled** | `docs/graph/I/SPEC.md:149–153` authorizes exactly `P:bpP:p0:fixedsol#IsFixedSolution` and `P:bpP:p0:newton#IsNewtonSolution`, with pending P ownership. The assembled EXTERNAL_POLICY at `DEPGRAPH.md:8` now names both authorized imports. Their notes at :13274 and :13300 retain pending P ownership and empty frozen identities. Their only direct consumers are the two authorized I-owned bookkeeping nodes, `bpN:p3:newton-reduction` and `stepN:p3:nr-pair`. No additional P import was added. |
| **G06: premature N ownership** | **PASS — pending status recorded** | All nine NOTE fields at `DEPGRAPH.md:13040–13248` now begin `IMPORTED (pending N graph)`, deny certified retention, and require checking the assembled N closure or resolving I ownership if excluded. All mathematical fields and import-leaf schemas are unchanged. Neither the N nor P assembled graph exists at verification; the checker correctly reports all eleven imports OWNER-PENDING. |
| **G07: dashboard and global metadata** | **FAIL — dashboard still empty/stale** | `DEPGRAPH.md:13513–13514` contains adjacent BEGIN/END generated-dashboard markers with no content between them. The strict linter still reports `generated dashboard is stale`. The placeholders at :12–13 are permitted by this assignment; the dashboard diagnostic is not. |

G01–G03 are resolved **as omitted diagnoses**, not as mathematical premise-discharge obligations. Their future append-only repairs must be independently reviewed against the then-current source and graph. Seven explicit SOURCE_GAP notes are now present: the three newly recorded diagnoses and the four previously recorded gaps. No gap became an external input, standing assumption or conclusion-shaped source premise.

## Remaining finding and exact remedy

**G07, minor severity but blocking this round's requested validation gate.** Evidence: `docs/graph/I/DEPGRAPH.md:13513–13514`; strict linter output below. The generated region is empty, not merely a report still listing four gaps instead of seven. Read-only `--report` succeeds and produces the expected nonempty dashboard, including **seven** source gaps and an empty topology-review queue.

No node block or EDGE correction is needed for G07. The writer should regenerate the generated region using the repository linter, then rerun the identical strict check:

```sh
python3 scripts/proof_depgraph.py --db docs/graph/I/DEPGRAPH.md --manifest docs/graph/I/DEPGRAPH_COVERAGE.md --source-root . --write-dashboard
python3 scripts/proof_depgraph.py --db docs/graph/I/DEPGRAPH.md --manifest docs/graph/I/DEPGRAPH_COVERAGE.md --source-root . --require-reviewed --require-complete-coverage --require-initial-lean-status --require-all-reachable --check
```

These are proposed writer commands, **not executed mutations** in this review. This assignment authorizes only the review file; I did not modify the graph, generated region or acceptance fields. I do not supply a PASS `GLOBAL_REVIEW_REF` line while the extra diagnostic remains.

## Regression checks

- **Roots and frozen identities:** all four root records are unchanged from the independently reconstructed round-1 statements. All 34 manifest identity tuples (path, export, anchor ID, contract ID/version and ABI hash) still match; all 411 non-anchors have empty FROZEN_* fields. No Lean or manifest-state inspection was used.
- **Topology:** 445 nodes, 1,924 edges, four routes; unchanged DEPS/ROUTES closures of 143 / 294 / 8 / 441 nodes for I-G1 / I-HEAD / I-KEPLER / I-R3BP. Their union is all 445 nodes; unreachable nodes: **none**. No node or route was added or removed. Changing a NOTE to SOURCE_GAP changes the reported obligation boundary, not dependency reachability.
- **Coverage:** 667 items, 194 exclusions; no semantic coverage change or new uncovered node. No newly introduced missing package edge, reversed edge or locator regression was found.
- **Imports:** 59 present and 59 referenced; zero missing, zero unreferenced. All 48 K imports retain the same owning IDs. The nine N and two authorized P imports remain conditional on future owning-graph retention, as their notes now say.
- **Sources:** all nine CORPUS pin entries and all seven IMPORTS pin entries match. No blueprint amendment removing a gap is present in this reviewed snapshot. No new blueprint defect, paper erratum or mathematical deviation was introduced by these changes. The round-1 source-defect list remains applicable.

The four roots therefore retain their round-1 statement-correspondence PASS. I-KEPLER has no recorded source gap; the other root closures retain their explicitly recorded obligations. Acceptance of the source model with recorded gaps would not certify unconditional mathematical closure or Lean proof status. The only remaining round-2 acceptance defect is G07's generated-dashboard failure.

## Check receipts

```text
python3 scripts/proof_depgraph.py --db docs/graph/I/DEPGRAPH.md --manifest docs/graph/I/DEPGRAPH_COVERAGE.md --source-root . --require-reviewed --require-complete-coverage --require-initial-lean-status --require-all-reachable --check
exit 1:
docs/graph/I/DEPGRAPH.md:12: review gate: missing or placeholder GLOBAL_REVIEWER
docs/graph/I/DEPGRAPH.md:13: review gate: missing or placeholder GLOBAL_REVIEW_REF
docs/graph/I/DEPGRAPH.md: generated dashboard is stale; run --write-dashboard

python3 scripts/proof_depgraph.py --db docs/graph/I/DEPGRAPH.md --manifest docs/graph/I/DEPGRAPH_COVERAGE.md --source-root . --report
exit 0: nonempty deterministic dashboard; 445 nodes, 1924 edges,
34 anchors, 4 routes, 7 explicit gaps, 667 coverage items, 194 exclusions;
no topology-review queue, uncovered node or unreachable node.

python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_imports.py docs/graph/I/packets
exit 0:
I-imports: 59 imported nodes present, 59 referenced, 0 missing, 0 unreferenced
OWNER-PENDING for all 9 N imports and both P imports; owning graphs absent.

sha256sum -c docs/graph/I/CORPUS.sha256
all 9 entries OK.

sha256sum -c docs/graph/I/IMPORTS.sha256
all 7 entries OK.

Independent read-only comparisons:
13 intended changed nodes; complete replacement fields/EDGE lists match proposals
apart from review/attribution metadata; all 13 have sol-delta-I-global review;
all 445 assembled nodes match packets; only reviewer metadata changed in coverage;
all 34 anchor identities match; all 411 non-anchor frozen identities empty;
root-union unreachable IDs: [].
```

No Lean build, source linter that scans implementations, axiom printout, proof-body inspection or state-changing git command was run. No Lean module was changed; axiom assessment is outside this review.

## Unresolved items

- Regenerate the dashboard and verify that the strict check leaves only GLOBAL_REVIEWER/REF diagnostics before requesting PASS acceptance.
- The seven recorded source obligations, future blueprint AMENDs and eventual N/P owning-graph retention checks remain mathematical/cross-graph follow-up work. Their explicit presence is accepted modelling and is not the reason for this round's FAIL.

Only file written: `docs/graph/I/reviews/GLOBAL-review-2.md`.

READY graph-global-I-2
