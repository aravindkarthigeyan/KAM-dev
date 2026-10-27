# K-p4b: delta3 topology review

Reviewer: `sol-review-d3` (`d3`). Assigned-record verdict: **FAIL**.

I wrote none of the records reviewed here. Scope is the d3 assignment in `packets/delta3-assignments.json`, checked against the current blueprint (including commit `2f355ea`), SPEC change log, the available slice delta2 history and GLOBAL-review findings. This is a source-topology review, with FAIL reserved for material contract, direct-use, locator or coverage errors. It does not certify Lean proofs or the rest of the slice.

Source and conditional-input context re-read: Part 4 L138-L152, L294-L330, L406-L496, L583-L601, L677-L741, L820-L946 and L1009-L1304; Part 1 real-restriction, Lipschitz image and E6/E8/E11 statements. Frozen G1, torus, cover and fundamental-domain declarations were checked as source interfaces only.

| Record ID | Verdict | Source spans re-read | Reason / repair check |
|---|---|---|---|
| `step:p4:normalize-proof` | PASS | `blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L737-L741`; `blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L738-L738`; `blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L738-L741` | APPLY and shift supply the derived closeness; it is no longer assumed as a new premise. SA and the chosen construction are explicit. |
| `bp:p4:lip` | PASS | `blueprint/parts/p4-measure.tex#bp:p4:lip@L876-L882`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L884-L946`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L880-L880`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L885-L885`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L892-L892`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L913-L913`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L929-L929`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L936-L936` | The quantified frequency/strip estimate and data-only A3 scope match; parameters are now located at the actual A3 use. |
| `step:p4:lip-g1` | PASS | `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L892-L911`; `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L893-L893`; `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L897-L897`; `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L898-L901`; `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L900-L903`; `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L897-L905`; `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L895-L895` | Both frequencies lie in Omega_gamma; error control is derived via lip-error. H1, H2-H4, H5 and strict smallness are discharged at L893-L905. |
| `bp:p4:real-torus` | PASS | `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1009-L1021`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1023-L1069`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1010-L1010`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1013-L1014`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1016-L1016`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1020-L1020`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1024-L1024`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1028-L1028`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1035-L1035`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1039-L1039`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1045-L1045`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1052-L1052`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1063-L1063`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1010-L1011` | The added real-restriction edge locates its direct use in defining k_omega; the torus predicate and all cover conclusions match. |
| `step:p4:rt-analytic` | PASS | `blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1024-L1026`; `blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1025-L1026`; `blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1026-L1026` | SA and Omega_gamma membership are retained as source premises; normalize supplies the analytic restriction premises. |
| `step:p4:ml-good` | PASS | `blueprint/parts/p4-measure.tex#step:p4:ml-good@L1123-L1131`; `blueprint/parts/p4-measure.tex#step:p4:ml-good@L1124-L1124`; `blueprint/parts/p4-measure.tex#step:p4:ml-good@L1126-L1126`; `blueprint/parts/p4-measure.tex#step:p4:ml-good@L1129-L1129`; `blueprint/parts/p4-measure.tex#step:p4:ml-good@L1124-L1129`; `blueprint/parts/p4-measure.tex#step:p4:ml-good@L1125-L1129` | The derivative bound remains a dependency, not an assumed estimate; MVT and frequency Lipschitz control give the quarter bound. |
| `step:p4:mm-count` | PASS | `blueprint/parts/p4-measure.tex#step:p4:mm-count@L1179-L1185`; `blueprint/parts/p4-measure.tex#step:p4:mm-count@L1181-L1181`; `blueprint/parts/p4-measure.tex#step:p4:mm-count@L1180-L1185`; `blueprint/parts/p4-measure.tex#step:p4:mm-count@L1180-L1183`; `blueprint/parts/p4-measure.tex#step:p4:mm-count@L1181-L1183`; `blueprint/parts/p4-measure.tex#step:p4:mm-count@L1180-L1180` | Original main-measure data are retained. E11 now supplies product volumes, and complement/extension/bad-set bounds supply the count. |
| `step:p4:hq-cover` | PASS | `blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1297-L1304`; `blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1298-L1298`; `blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1300-L1303`; `blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1303-L1303` | Original HEAD-Q data are retained, without a boundary premise on B. Approximation, transferred HEAD estimate and radius choice give the cover comparison. |
| `step:p4:hq-trivial` | PASS | `blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1271-L1274`; `blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1272-L1273`; `blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1273-L1273` | The fundamental-domain carrier and E11 product volume are explicit; the empty/nonempty branches and volume identity match. |
| `step:p4:head-positive` | PASS | `blueprint/parts/p4-measure.tex#step:p4:head-positive@L1220-L1226`; `blueprint/parts/p4-measure.tex#step:p4:head-positive@L1223-L1223`; `blueprint/parts/p4-measure.tex#step:p4:head-positive@L1221-L1221`; `blueprint/parts/p4-measure.tex#step:p4:head-positive@L1221-L1222` | The parameter and SA locators contain the gamma construction and eta_0 identity; main-measure and cover monotonicity yield the rate. |
| `step:p4:head-zero` | FAIL | `blueprint/parts/p4-measure.tex#step:p4:head-zero@L1228-L1231`; `blueprint/parts/p4-measure.tex#step:p4:head-zero@L1229-L1229`; `blueprint/parts/p4-measure.tex#step:p4:head-zero@L1228-L1228`; `blueprint/parts/p4-measure.tex#step:p4:head-zero@L1229-L1230` | The head-constants EDGE cites L1228, only the step heading. C is used in the equality eta_0=0=C sqrt(0) at L1229 and in the final equality L1231. |
| `step:p4:dy-exhaust` | FAIL | `blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1248-L1254`; `blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1250-L1250` | The ext-measure EDGE cites L1250 (finite collection and closed union), not continuity from below, which is used at L1253-L1254. |
| `step:p4:dy-open` | FAIL | `blueprint/parts/p4-measure.tex#step:p4:dy-open@L1256-L1259`; `blueprint/parts/p4-measure.tex#step:p4:dy-open@L1257-L1257`; `blueprint/parts/p4-measure.tex#step:p4:dy-open@L1258-L1258` | The ext-measure EDGE stops at L1258, before the null-set assertion at L1259. Include L1258-L1259 to locate the use of null box boundaries. |
| `step:p4:ml-mixed` | FAIL | `blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1139`; `blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1137-L1137`; `blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1134-L1136` | The ml-size EDGE cites L1137, which contains the action separation and the (s7) reference. The use |G_0(theta,I)-G_0(theta_prime,J)|<=eta_0 is at L1138. |

Repeated assignment IDs (`head-positive`, `head-zero`, `hq-trivial`) denote the same records and are reviewed once each.

Complete proposed replacement for `step:p4:head-zero` (report proposal only):

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
EDGE: bp:p4:main-measure | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1229-L1229 | measure bound for each gamma in (0,1]
EDGE: step:p4:head-constants | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1229-L1231 | constant C
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1229-L1230 | use c_*>0 and eta_0=A_0 epsilon gamma^-2 at epsilon=0
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1229-L1230 | epsilon=0 supplies (SA) for every gamma in (0,1], before applying main-measure
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-global-K
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Complete proposed replacement for `step:p4:dy-exhaust` (report proposal only):

```text
NODE: step:p4:dy-exhaust
KIND: step
TITLE: Dyadic exhaustion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1248-L1254
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1248-L1254
CONTRACT_ID: step:p4:dy-exhaust
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B open bounded; eta>0
SOURCE_QUANTIFIERS: j in N
SOURCE_CONCLUSION: for each j, D_j is the finite collection of generation-j closed dyadic cubes contained in B, and E_j=union D_j is closed; E_j subset E_(j+1), union_j E_j=B, and meas(B minus E_j)<=eta for some j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-measure | blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1253-L1254 | continuity of Lebesgue measure from below (E11)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: repaired F1: uses continuity of Lebesgue measure from below (E11); formerly a source gap before (E11) was listed
```

Complete proposed replacement for `step:p4:dy-open` (report proposal only):

```text
NODE: step:p4:dy-open
KIND: step
TITLE: The open set
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-open@L1256-L1259
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-open@L1256-L1259
CONTRACT_ID: step:p4:dy-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E_j from dyadic exhaustion with meas(B minus E_j)<=eta
SOURCE_QUANTIFIERS: j
SOURCE_CONCLUSION: B'=union of interiors of the N cubes of D_j is open, B' in B, meas(B minus B')<=eta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:dy-exhaust, bp:p1:ext-measure
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:dy-exhaust | blueprint/parts/p4-measure.tex#step:p4:dy-open@L1257-L1257 | cubes D_j and E_j with measure bound
EDGE: bp:p1:ext-measure | blueprint/parts/p4-measure.tex#step:p4:dy-open@L1258-L1259 | null boundaries of boxes (E11)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: repaired F1: uses null boundaries of boxes (E11); formerly a source gap before (E11) was listed
```

Complete proposed replacement for `step:p4:ml-mixed` (report proposal only):

```text
NODE: step:p4:ml-mixed
KIND: step
TITLE: A good action and a boundary action
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1139
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1139
CONTRACT_ID: step:p4:ml-mixed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); I in A_gamma, J in Z; theta,theta_prime in R^n; G_0 as defined in good-actions
SOURCE_QUANTIFIERS: I in A_gamma, J in Z
SOURCE_CONCLUSION: |G_0(theta,I)-G_0(theta',J)|<=(1/2)|(theta,I)-(theta',J)|; two boundary actions give 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:smallness, step:p4:ml-size, bp:p4:good-actions, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1137-L1137 | (s7): eta_0<=gamma/2
EDGE: step:p4:ml-size | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1138-L1138 | /G_0/<=eta_0
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1134-L1136 | A_gamma, Z, G_0
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1139 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: repaired F1: the 1-Lipschitz property of infDist(.,B^c) is now proved inline in the step
```

Accounting: 14 distinct assigned nodes; 10 PASS; 4 FAIL. No coverage items assigned.

Checks: `sha256sum -c docs/graph/K/CORPUS.sha256` returned `OK` for Parts 0-4. Report row accounting, replacement completeness, DEPS/EDGE equality and locator bounds were checked mechanically; `git diff --check` for the report paths returned exit 0. Only this review report was written for this slice. No packets, SPEC, blueprint, frozen files or manifest were edited; no state-changing git or Lean command was run. Source lint, targeted Lean builds and `#print axioms` are inapplicable to this report-only task under the review brief. No Lean result was created. No implementation/provider modules were read.

Uncertainties / deviations: verdicts are limited to the assigned records. No mathematical or frozen-statement change is proposed. Existing descriptive wording is not treated as a failure.
