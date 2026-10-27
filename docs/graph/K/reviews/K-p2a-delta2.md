# K-p2a: delta2 topology review

Reviewer: `sol-review-d2` (d2). Verdict for the assigned records: **FAIL**.

Scope: exactly the d2 nodes in `delta2-assignments.json`. I wrote none of the packet records under review. Earlier delta findings were checked against the current packets and the raw pinned blueprint. Verdicts concern source topology, not proof closure or the entire slice.

Re-read source/conditional-input context: Part 2 L56-L108, L158-L211, L215-L258, L270-L355 and L382-L406; Part 1 L193-L224, L392-L395, L634-L687, L875-L885 and L959-L991; Part 0 L91-L101. Each row also includes every original EDGE consumer span.

| Record ID | Verdict | Source spans re-read | Finding / repair check |
|---|---|---|---|
| `step:p2:coh-apriori` | PASS | `blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L207-L211`; `blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L209-L209`; `blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L210-L210`; `blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L211-L211`; `blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L208-L208`; `blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L208-L211` | PASS: the new standing-package edge supplies the positive Diophantine frequency; regularity, zero average, operator-norm bound and c_R comparison agree with L193-L211. |
| `step:p2:per-real` | PASS | `blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L348-L354`; `blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L350-L350`; `blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L352-L352`; `blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L354-L354`; `blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L349-L349`; `blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L353-L353`; `blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L350-L354` | PASS: the new package edge supplies real h and real omega; the inverse-dependent determinant guard remains scoped correctly. |
| `step:p2:fb-holo` | FAIL | `blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406`; `blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L402-L402`; `blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L403-L403`; `blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L404-L404`; `blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L402-L405` | The added standing-package edge resolves the delta finding. However the inherited frame-basic premises are A2-A4 at Part 2 L383-L384; SOURCE_HYPOTHESES drops stated A3. Its redundancy for this holomorphy subargument does not authorize weakening the source-premise field. |

Accounting: 3 assigned nodes; 1 FAIL; 2 PASS. No coverage items are assigned to d2. The corresponding inventory entries were checked for node disposition; this does not claim a review of unassigned coverage.

Complete proposed replacement blocks follow. They are review proposals only; packets are unchanged.

```text
NODE: step:p2:fb-holo
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406
CONTRACT_ID: step:p2:fb-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the local standing data of Part 2 (bp:p2:standing, L56-L65); K holomorphic on T_r with (A2)-(A4), as stated in frame-basic at L383-L384; primary and real are not required
SOURCE_QUANTIFIERS: standing data fixed first; theta in T_r
SOURCE_CONCLUSION: all listed objects holomorphic on T_r; B symmetric; T continuous on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p2:admissible, bp:p1:holomorphic-inverse, bp:p2:objects, bp:p1:holomorphic-regularity, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L402-L402 | X_h, DX_h holomorphic on B(frak)
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L403-L403 | (A4): det G != 0
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L404-L404 | inverse of a holomorphic invertible matrix is holomorphic
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L404-L404 | definitions of N,P,X_N,T,E_sym,Q,eta
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L402-L405 | DK and d_omega N are holomorphic derivatives; K is holomorphic by hypothesis
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L402-L405 | the local package supplies the open ambient domain and holomorphic h for the Hamiltonian regularity application
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r4
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Validation: all five pinned corpus SHA-256 checks PASS. Assignment-row coverage, one complete replacement per FAIL, DEPS/EDGE equality, and locator bounds were mechanically checked. No Lean command, build, source lint, implementation/provider read, state-changing git command, packet edit, frozen edit or manifest edit was performed. The review brief confines this task to reports and forbids Lean execution.

Uncertainties / errata / deviations: no pinned paper was used as an authority beyond the blueprint corpus, and no new pinned-paper erratum is claimed. Findings are graph-record defects; existing SOURCE_GAP notes are preserved. No source mathematics or frozen statement was changed.

Reviewed packet SHA-256: `eb25c22ef3285ac3fadaee5edd5fc0efaed5750b5940babb47a40ceefc2ecf5a`.

Final check receipt: `K-p2a: 3 rows, 1 complete FAIL replacements; DEPS/EDGE, targets, planning fields and locator bounds PASS`. Global accounting: `39/39 assigned node rows PASS accounting`. `sha256sum -c docs/graph/K/CORPUS.sha256`: Parts 0–4 each `OK`. All 64 fingerprinted inputs unchanged. `git diff --check -- <the five delta2 report paths>`: exit 0, no output. No Lean results were created, so `#print axioms` is not applicable.
