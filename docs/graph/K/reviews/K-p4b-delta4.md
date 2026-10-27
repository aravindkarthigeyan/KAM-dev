# K-p4b: delta4 topology review

Assigned-record verdict: **FAIL**.

Reviewer: `sol-review-d4` (`d4`); I wrote none of the reviewed records. Scope: only the records assigned under `d4` in `packets/delta4-assignments.json`, checked against the current blueprint and the corresponding delta3 findings. FAIL is reserved for material direct-use, source-contract, locator or coverage errors. This is a source-topology review, not proof certification.

| Record ID | Verdict | Source spans re-read | Reason / delta3 repair check |
|---|---|---|---|
| node `step:p4:head-zero` | FAIL | Part 4 L406–443, L1142–1149, L1202–1231 | The repaired head-constants locator contains C, but the main-measure edge still points only to L1229. The theorem application and its inequality are at L1230. Replace that edge locator with L1230–1231; the premises, quantification, conclusion and other edges pass. |
| node `step:p4:dy-exhaust` | PASS | Part 4 L1241–1254; Part 1 L98–107 | The E11 edge now contains continuity from below at L1253–1254. The finite increasing closed-cube exhaustion and eventual measure bound match the source, with no added premise or constant dependence. |
| node `step:p4:dy-open` | PASS | Part 4 L1241–1259; Part 1 L98–107 | The dy-exhaust edge supplies the selected cubes and measure bound. The corrected E11 span L1258–1259 contains the null-boundary assertion. The construction and conclusion match. |
| node `step:p4:ml-mixed` | PASS | Part 4 L438–463, L1102–1139 | The size edge now points to L1138, where the bound is used. The other edges locate (s7), the good/boundary action definitions and SA. The distance Lipschitz argument is proved inline, and the mixed and two-boundary conclusions match. |

Complete replacement block (proposal only):

```text
NODE: step:p4:head-zero
KIND: step
TITLE: Vanishing perturbation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-zero@L1228-L1231
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-zero@L1228-L1231
CONTRACT_ID: step:p4:head-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B nonempty; eps=0
SOURCE_QUANTIFIERS: gamma in (0,1]
SOURCE_CONCLUSION: (SA) holds for every gamma, eta_0=0, so meas(F_B minus kamCover(0))<=C_meas gamma for all gamma, hence =0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:main-measure, bp:p4:parameters, step:p4:head-constants, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:main-measure | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1230-L1231 | measure bound for each gamma in (0,1]
EDGE: step:p4:head-constants | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1229-L1231 | constant C
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1229-L1230 | use c_*>0 and eta_0=A_0 epsilon gamma^-2 at epsilon=0
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1229-L1230 | epsilon=0 supplies (SA) for every gamma in (0,1], before applying main-measure
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d3
REVIEWER: sol-review-d4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Accounting: 4 assigned records; 3 PASS; 1 FAIL. No other coverage items assigned.

Checks: `sha256sum -c docs/graph/K/CORPUS.sha256` returned `OK` for all five parts. Assigned-row accounting, locator bounds, DEPS/EDGE equality for assigned nodes, and `git diff --check` for the four report paths passed. Only the four delta4 review reports were written. No packets, blueprint, SPEC, frozen files or manifest were edited; no state-changing git or Lean command was run. Lean builds and `#print axioms` are inapplicable: no Lean modules or results were changed, and the review brief prohibits running Lean. No implementation or provider files were read.

Uncertainties / deviations: findings are limited to these assigned records. No mathematical deviation is introduced.
