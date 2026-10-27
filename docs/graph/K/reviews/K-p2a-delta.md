# K-p2a: delta topology review

Reviewer: `sol-review-r4`; assignment key `r4`.

**Verdict: FAIL** for the assigned delta records.

Scope: every listed node and coverage item in delta-assignments.json, checked against the raw statement, proof and each consumer EDGE locator, and against the earlier sol-review-r2 findings. Local PASS certifies the record, not mathematical proof completion or the rest of its prerequisite closure. No Lean, packet, SPEC, frozen file or manifest was changed; no state-changing git command was run.

| Record ID | Type | Verdict | Source spans re-read | Finding / resolution |
|---|---|---|---|---|
| `bp:p2:constants` | node | PASS | L78-L108; L79-L79; L99-L99 | Earlier false lower bound on delta_0 resolved: the >=1 assertion is restricted to the constants through L97; delta_0 is in (0,1]. Dependence and order of definition preserved. |
| `bp:p2:averages` | node | PASS | L158-L167; L169-L180; L170-L170; L175-L175; L163-L163 | Earlier strip locator resolved at L163. The unbounded holomorphic case remains valid and the continuous real-torus case retains its integrability and norm conclusion. |
| `step:p2:avg-deriv` | node | PASS | L175-L179; L176-L178; L178-L179 | Earlier route/conjunction and added-regularity failures resolved: DEPS is empty; ROUTES lists two alternatives; C1 is derived in the real route. |
| `step:p2:coh-apriori` | node | FAIL | L207-L211; L209-L209; L210-L210; L211-L211; L208-L208 | The earlier missing regularity edge is fixed, but the record still states only hypotheses on u. Its use of cohomological-operator at L210 also requires the fixed gamma>0, tau>=0 and Diophantine omega from Part 2 standing data (L56-L65). Neither the source-hypothesis fields nor a direct package edge retain these conditions. The averages edge supplies mean zero, not nonresonance. |
| `bp:p2:objects` | node | PASS | L270-L293; L271-L271; L275-L275; L276-L276 | Earlier omegaZero locator resolved at L276. Determinant and continuity guards remain scoped to the second group and average respectively. |
| `step:p2:per-compose` | node | PASS | L342-L346; L343-L343; L344-L344 | Earlier overstatement resolved: determinant guard restored only for inverse-dependent objects, and conclusion restricted to the source list. Standing package and per-dk inputs are direct. |
| `step:p2:per-real` | node | FAIL | L348-L354; L350-L350; L352-L352; L354-L354; L349-L349; L353-L353 | The earlier determinant guard is fixed, but the replacement now explicitly assumes the standing data of Part 2 while omitting bp:p2:standing from DEPS. SPEC requires that package edge. The proof consumes reality of h and the real frequency at L350-L354, in addition to the conditional real-inverse input. |
| `bp:p2:frame-basic` | node | PASS | L382-L398; L400-L425; L401-L401; L408-L408; L414-L414; L418-L418; L383-L383; L386-L386; L388-L388; L383-L384 | Earlier missing package edge resolved at L383-L384. A2-A4, optional A6, and the conditional frequency/loss hypotheses retain their source scopes. |
| `step:p2:fb-holo` | node | FAIL | L401-L406; L402-L402; L403-L403; L404-L404; L402-L405 | The earlier holomorphic-regularity edge is fixed, but the record lists only K and A2/A4. Its application of the conditional Hamiltonian lemma at L402-L403 still needs the local Part 2 package, especially holomorphic h on the open ambient domain. Restore the inherited package in source fields and add its direct edge; no new theorem premise is needed. |
| `bp:p2:exactness` | node | PASS | L515-L523; L525-L547; L526-L526; L534-L534; L538-L538; L543-L543; L516-L516; L518-L518 | Earlier missing package edge resolved at L516. Neither reality nor determinant invertibility is assumed for the two principal averages; the eta_N reading retains its guard. |
| `step:p2:ex-avg-eta` | node | PASS | L543-L546; L544-L544; L545-L545; L546-L546 | Earlier determinant-guard failure resolved: the eta_N conclusion is conditional. Periodicity, the average identities, the gradient identity and object definitions have direct suppliers. |
| `step:p2:avg-deriv#real-route` | node | PASS | L176-L178; L176-L177; L178-L178 | Correct KIND route, ROUTE_FOR ownership and direct dependencies: holomorphic regularity supplies the C1 real restriction, and averages-real supplies zero averages. |
| `step:p2:avg-deriv#bounded-route` | node | PASS | L178-L179; L179-L179 | Correct alternative route and ownership: periodic-bounded supplies boundedness on T_{r/2}, then averages applies on that strip. The average still uses the same real cube. |
| `step:p2:avg-deriv` | coverage | PASS | L175-L179 | Earlier route/conjunction and added-regularity failures resolved: DEPS is empty; ROUTES lists two alternatives; C1 is derived in the real route. |
| `step:p2:avg-deriv#real-route` | coverage | PASS | L176-L178 | Correct KIND route, ROUTE_FOR ownership and direct dependencies: holomorphic regularity supplies the C1 real restriction, and averages-real supplies zero averages. |
| `step:p2:avg-deriv#bounded-route` | coverage | PASS | L178-L179 | Correct alternative route and ownership: periodic-bounded supplies boundedness on T_{r/2}, then averages applies on that strip. The average still uses the same real cube. |

The route model was checked independently: the parent has no conjunctive DEPS, owns both ROUTES, and each KIND route names the parent in ROUTE_FOR. The real route derives regularity from holomorphy; the bounded route invokes periodic boundedness on a strictly smaller positive strip. Both conclusions are the same zero-average derivative statement over the real unit cube.

Additional source context re-read: Part 2 L56-L108, L158-L211, L214-L258, L270-L355, L382-L425, L515-L547; Part 1 L193-L213 (real inverse), L215-L225, L392-L395, L505-L517, L634-L687, L875-L885 and L959-L991. In particular, the conditional applications in the three failed records do not acquire their missing local package merely by listing the conditional theorem as a dependency.

Complete replacement blocks (review proposals only):

```text
NODE: step:p2:coh-apriori
KIND: step
TITLE: The a-priori bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L207-L211
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L207-L211
CONTRACT_ID: step:p2:coh-apriori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the local standing data of Part 2 (bp:p2:standing, L56-L65); u:T_r->C^{pxq} holomorphic 1-periodic, avg u=0, |d_omega u|<=H on T_r
SOURCE_QUANTIFIERS: standing data fixed first; for all such u; 0<delta<r
SOURCE_CONCLUSION: |u|<=Gamma_delta H on T_{r-delta}
CONSTANT_SCOPE: c(n,tau)<=c_R
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:averages, bp:p1:cohomological-operator, bp:p2:constants, bp:p1:holomorphic-regularity, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L209-L209 | avg d_omega u=0
EDGE: bp:p1:cohomological-operator | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L210-L210 | a-priori bound for periodic solutions of Du omega=g
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L211-L211 | c(n,tau)<=c_R, Gamma_delta
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L208-L208 | g=d_omega u is holomorphic since derivatives of holomorphic maps are holomorphic
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L208-L211 | the local package supplies gamma>0 and Diophantine omega with tau>=n-1>=0 for the cohomological application
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r2+sol-review-r4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:per-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L348-L354
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L348-L354
CONTRACT_ID: step:p2:per-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2; K holomorphic and primary on T_r, K(T_r) subset B(frak), K real on reals; det G!=0 on T_r for the inverse-dependent second group and avg T
SOURCE_QUANTIFIERS: real x
SOURCE_CONCLUSION: all listed objects are real at real points and avg T is real
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p1:real-inverse, bp:p2:averages, bp:p0:stripdata#IsRealOnReals, bp:p2:objects, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L350-L350 | X_h, DX_h real at real points
EDGE: bp:p1:real-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L352-L352 | inverse of real invertible matrix is real
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L354-L354 | avg of real function is real
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L349-L349 | K real on reals
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L353-L353 | definitions of the objects
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L350-L354 | the local package supplies h real at real points and real omega used by the reality argument
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r2+sol-review-r4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p2:fb-holo
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406
CONTRACT_ID: step:p2:fb-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the local standing data of Part 2 (bp:p2:standing, L56-L65); K holomorphic on T_r with (A2),(A4)
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
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r2+sol-review-r4
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```


Checks: `sha256sum -c docs/graph/K/CORPUS.sha256` returned five `OK` lines for Parts 0-4. Every assigned record has exactly one row. Each failed node has exactly one complete replacement, preserving NOT_STARTED / dash Lean fields. No source erratum or deviation was introduced; remaining findings concern graph scope and conditional-premise bookkeeping.

Reviewed packet fingerprints:

- `docs/graph/K/packets/K-p2a.nodes.md`: `68dd108f8d7c6ad3cf2e31883996647ab2a207fdd40a041b389e231d56332bac`
- `docs/graph/K/packets/K-p2a.coverage.md`: `501248b4d5dc2a0e27845f2d82ceeb46efd71c0c9589a16c9fa3a25809df2b40`

Report validation: assignment-row completeness, one complete block per FAIL, replacement DEPS/EDGE agreement, initialized Lean fields, source-range bounds and unchanged reviewed packet fingerprints all PASS.
