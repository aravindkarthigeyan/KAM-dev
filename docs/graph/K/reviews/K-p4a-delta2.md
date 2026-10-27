# K-p4a: delta2 topology review

Reviewer: `sol-review-d2` (d2). Verdict for the assigned records: **FAIL**.

Scope: exactly the d2 nodes in `delta2-assignments.json`. I wrote none of the packet records under review. Earlier delta findings were checked against the current packets and the raw pinned blueprint. Verdicts concern source topology, not proof closure or the entire slice.

Re-read source/conditional-input context: Part 4 L138-L330, L406-L466; Part 1 L215-L224, L462-L467 and L1054-L1096; Part 0 L40-L71. The frozen G1/G2 constant order was checked against their declarations. Each row also includes every original EDGE consumer span.

| Record ID | Verdict | Source spans re-read | Finding / repair check |
|---|---|---|---|
| `bp:p4:data` | PASS | `blueprint/parts/p4-measure.tex#bp:p4:data@L138-L163`; `blueprint/parts/p4-measure.tex#bp:p4:data@L160-L160`; `blueprint/parts/p4-measure.tex#bp:p4:data@L151-L152`; `blueprint/parts/p4-measure.tex#bp:p4:data@L157-L158`; `blueprint/parts/p4-measure.tex#bp:p4:data@L158-L158` | PASS: the expanded range contains the hbold/realHamiltonian identification; constants remain independent of f and epsilon and all four definition/constant edges are direct. |
| `step:p4:db-vectorfield` | FAIL | `blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L210-L222`; `blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L211-L211`; `blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L219-L219`; `blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L211-L218`; `blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L216-L218` | The new regularity edge is correct. SOURCE_HYPOTHESES still assumes the Cauchy bounds proved in db-cauchy, while the original HEAD/derivative-bounds data supply them. Keep those bounds only as a dependency. The frozen-formula EDGE at L211 alone stops before the displayed formula/name at L212. |
| `bp:p4:freq-map` | PASS | `blueprint/parts/p4-measure.tex#bp:p4:freq-map@L225-L237`; `blueprint/parts/p4-measure.tex#bp:p4:freq-map@L239-L272`; `blueprint/parts/p4-measure.tex#bp:p4:freq-map@L240-L240`; `blueprint/parts/p4-measure.tex#bp:p4:freq-map@L244-L244`; `blueprint/parts/p4-measure.tex#bp:p4:freq-map@L254-L254`; `blueprint/parts/p4-measure.tex#bp:p4:freq-map@L262-L262`; `blueprint/parts/p4-measure.tex#bp:p4:freq-map@L267-L267`; `blueprint/parts/p4-measure.tex#bp:p4:freq-map@L226-L226`; `blueprint/parts/p4-measure.tex#bp:p4:freq-map@L226-L235` | PASS: the revised fields preserve the distinct U, B_{r0/2} and B domains of clauses (ii)-(v); the data edge supplies delta_* without assuming derivative estimates. |
| `bp:p4:smallness` | PASS | `blueprint/parts/p4-measure.tex#bp:p4:smallness@L445-L456`; `blueprint/parts/p4-measure.tex#bp:p4:smallness@L458-L466`; `blueprint/parts/p4-measure.tex#bp:p4:smallness@L459-L459` | PASS: all seven displayed inequalities, including both eta_* scales and the final min(gamma,1)/2 bound, are now retained under the explicit SA edge. |

Accounting: 4 assigned nodes; 1 FAIL; 3 PASS. No coverage items are assigned to d2. The corresponding inventory entries were checked for node disposition; this does not claim a review of unassigned coverage.

Complete proposed replacement blocks follow. They are review proposals only; packets are unchanged.

```text
NODE: step:p4:db-vectorfield
KIND: step
TITLE: From $D\pfh$ to $X_\pfh$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L210-L222
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L210-L222
CONTRACT_ID: step:p4:db-vectorfield
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed HEAD data and perturbation hypotheses of Part 4 L138-L152, with domains and constants defined in bp:p4:data and derivative-bounds L184-L185; for the general identity phi is holomorphic on an open subset of C^n x C^n; additionally epsilon<=1 only for specialization (d) with phi=hbold
SOURCE_QUANTIFIERS: the general holomorphic phi; specialize to phi=f for (c), and to phi=hbold with epsilon<=1 for (d)
SOURCE_CONCLUSION: X_phi=J D phi with |X_phi|<=|D phi|, |DX_phi|<=|D^2 phi|, |D^2 X_phi|<=|D^3 phi|; completes (c) and gives (d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#hamiltonianVectorFieldC, step:p4:db-cauchy, bp:p1:hamiltonian-real, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L211-L215 | the frozen complex vector-field formula identifies X_phi with the continuous linear map J applied to D phi
EDGE: step:p4:db-cauchy | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L219-L219 | Cauchy bounds on D^j f and D^j h~
EDGE: bp:p1:hamiltonian-real | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L211-L218 | Missing direct use of the vector-field formula cited at L213
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L216-L218 | Missing direct use establishing holomorphy of derivatives
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r2
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Validation: all five pinned corpus SHA-256 checks PASS. Assignment-row coverage, one complete replacement per FAIL, DEPS/EDGE equality, and locator bounds were mechanically checked. No Lean command, build, source lint, implementation/provider read, state-changing git command, packet edit, frozen edit or manifest edit was performed. The review brief confines this task to reports and forbids Lean execution.

Uncertainties / errata / deviations: no pinned paper was used as an authority beyond the blueprint corpus, and no new pinned-paper erratum is claimed. Findings are graph-record defects; existing SOURCE_GAP notes are preserved. No source mathematics or frozen statement was changed.

Reviewed packet SHA-256: `10924901cb4c2422c011bf3e572aa42d2326216441e6229b242b9d39e1b1bb53`.

Final check receipt: `K-p4a: 4 rows, 1 complete FAIL replacements; DEPS/EDGE, targets, planning fields and locator bounds PASS`. Global accounting: `39/39 assigned node rows PASS accounting`. `sha256sum -c docs/graph/K/CORPUS.sha256`: Parts 0–4 each `OK`. All 64 fingerprinted inputs unchanged. `git diff --check -- <the five delta2 report paths>`: exit 0, no output. No Lean results were created, so `#print axioms` is not applicable.
