# I-p1 delta topology review

Reviewer: `sol-delta-I-c`. Marker: `delta-I-c`. Verdict: **PASS** for the assigned proposed records.

Independence: this session previously reviewed I-p5/I-p8 only. The Part 6/7 slice reviewer was sol-review-I-p67; the earlier delta writers of the six Part 1/3 nodes were sol-delta-I-a and sol-delta-I-b. Read DELTA-BRIEF and REVIEW-BRIEF, repository instructions, PLAN, DECISIONS, SPEC including its last ruling, raw statements/proofs at every proposed locator and EDGE use, cited source inputs and previous findings. This report covers 2 PROPOSED nodes and 0 assigned PROPOSED coverage items. Other reviewed records are context only.

Both delta-a repairs are accepted. Read Part 1 L30-46, L509-536 and all referenced K statement/proof spans: constants L78-108, matrix L122-139, cohomological L186-198, frame-basic L382-398, frame-identities L441-463, exactness L515-523 and geometry steps L567-580. The K standing prose L67-69 explicitly permits tau>=0 and n>=1 below, so the common-data bridge does not import a stronger tau restriction. The geometry premises give holomorphic primary K, the frame bounds, invertible Gram, domain inclusion and the error estimate; no torsion-average invertibility is needed. The new C_red/m and C_Omega/kappa edges are direct symbol uses. The new geo-red-to-geo-sym edge supplies the exact derivative RHS needed by cohomological(b). No extra conclusion-shaped premise was introduced.

## Proposed nodes

Spans below include every EDGE use inside the listed proof unit; file prefixes are the source paths in the packet.

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| stepI:p1:geo-red | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L531-L533 | The two new constant definitions are supplied directly by K:bp:p2:constants at L533; geo-de provides DE and the existing K frame/identity estimates need no torsion inverse. |
| stepI:p1:geo-sym | PASS | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L534-L535 | The new geo-red edge supplies the directional derivative bound for cohomological(b), and the new constants edge fixes m,C_Omega,kappa. Zero average, periodicity and strip loss delta<r-delta are supplied. |

No coverage records are assigned in this second delta; no previously reviewed coverage status is changed.

No replacement blocks are needed.

## Checks, provenance and limits

Both current `sha256sum -c docs/graph/I/CORPUS.sha256` and `sha256sum -c docs/graph/I/IMPORTS.sha256` passed every file. The former now includes the I-owned N source; the latter is re-pinned after the K Part 1 locator shift. Old import-drift warnings are closed for this snapshot. The last SPEC ruling retargets gen-invariant/gen-barrier/newton-reduction to ordinary bpN:p3:* nodes in I-nown; no obsolete N: form is used by the reviewed consumer. No generic writer fill "inherits the fixed data and quantifiers of the enclosing proof; no new binders" occurs in any of the four assigned packets. The broader "as in the enclosing result" fields were checked against the enclosing statements and expanded where replaced.

No new mathematical repair, source deviation or frozen-statement defect is asserted. No implementation module/provider/proof body is inspected, no Lean/build/axiom/source-lint command is run, and no state-changing git command is run. Only the four requested review reports are written. PASS is source topology, not theorem closure.

Input packet SHA-256 at review:

- `I-p1.nodes.md`: `976239b8bf0c49e4a15a9a5b5b000f25aac4cb5e1a0851971a2367ff10413514`.
- `I-p1.coverage.md`: `6e0818b7ce7f62907bdcba66959e036dc3b8c0562a38d0bad50b2a634c78025e`.

Final validation:

- `python3 scripts/depgraph_apply_review.py docs/graph/I/packets I-p1 docs/graph/I/reviews/I-p1-delta2.md sol-delta-I-c --dry-run`: `I-p1: 0 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 2 PASS nodes`. The applier counts PASS rows from both node and coverage tables; unique node counts are given in the scope/table.
- Independent report checks: exactly 2 assigned proposed-node rows and 0 assigned proposed-coverage rows; every FAIL has a complete replacement; all required fields, locator bounds, unique DEPS/ROUTES and matching EDGE records pass; all dependency IDs resolve.
- Combined in-memory overlay of all four reports: acyclic, no dangling dependencies, all 41 assigned nodes remain reachable from a frozen root. No graph files were written for this check.
- Input node/coverage SHA-256 values still match the review snapshot. Report whitespace passes; `git diff --check` returned no output. Concurrent changes in other agents' files were left untouched.
