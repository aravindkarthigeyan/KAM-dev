# P-p9 delta topology review

Reviewer: `sol-delta-P-k`. Marker: `delta-P-k`. Verdict: **FAIL**.

HEAD at review: `9415aec0ff2ff12402d6556302a5ce5406aeb353`. Source topology only; no Lean proof-status conclusion.

The live packet contains **33 PROPOSED nodes and 73 PROPOSED coverage items**, rather than the 32 records named in the assignment. I reviewed exactly that live PROPOSED set: **28 node PASS, 5 node FAIL; all 73 coverage PASS**. The extra dictionary node is the deletion requested in the previous review but still present in the packet. Other coverage items already marked REVIEWED were not reopened.

Read DELTA-BRIEF and applied REVIEW-BRIEF and the current SPEC, including its writer rulings. Checked the previous P-p9 review findings and replacement blocks, Part 9 source and every proposed-node EDGE use site, and the cited supplier statements in Parts 0, 1, 7 and 8. The reviewer differs from `sol-review-P-k` and `sonnet-extract-P-p9`; no packet, source or SPEC was edited.

## Fix verification

- The real-coefficient restriction of `e-fts` matches L22. The rewritten step premises now retain their original source settings; derived branches, projections, negativity and average identities are supplied by dependencies rather than assumed independently. The writer-filled quantifiers of `la-so`, `lift-form`, `lift-concl` and `d-d` introduce no new premise.
- The added norm, local-definition, coefficient and polydisc links have actual uses at their consumer locators, except for the remaining omissions listed below. No added edge was rejected merely because its fact could also be obtained transitively.
- `gs-c` correctly places the continuity alternatives in ROUTES. Both route EDGE lines locate the explicit alternative at L183. `#roots-route` exposes the unavailable general continuity-of-roots contract in its SOURCE_GAP note. `#analytic-route` uses local analytic branches on the simple-spectrum good locus; compactness and finite K_4 give a uniform positive lower bound without a global eigenvector frame. Both routes PASS.
- `good` restores scaling invariance and the quantitative compact-set clause. `n2` restores the distinction between equality of zero sets and the higher resonance multiplicities of Phi_4. The Part 8 input edges of `good-set` provide the physical premises of the asserted diagonalize application.
- The period-one versus 2 pi mismatch at L143/L152 is faithfully exposed in `d-d` and `diagonalize`; those SOURCE_GAP notes are not grounds for a topology FAIL. The sourcegap inventory at L146 concerns the different, successfully supplied angle-correction bridge.

## Proposed node verdicts

All source spans below refer to `blueprint-P/parts/p9-secular-spectrum.tex`; statement and proof spans include the checked EDGE sites.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p9:e-fts | PASS | L22-L22 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:l75 | PASS | L77-L77 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:l74-red | PASS | L87-L87 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:l74-ibp | PASS | L88-L88 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:p73-dom | PASS | L100-L100 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:p73-had | PASS | L101-L101 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:p73-cong | PASS | L102-L102 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:la-ev | PASS | L111-L111 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:la-adj | PASS | L112-L112 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:la-vec | PASS | L113-L113 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:la-so | PASS | L114-L114 | Prior finding resolved; source contract, direct uses and locators match. |
| bpP:p9:lift | PASS | L117-L122 / L123-L132 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:lift-bij | PASS | L124-L124 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:lift-anti | PASS | L125-L125 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:lift-form | PASS | L126-L129 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:lift-mc | FAIL | L130-L130 | The differentiation of Omega_l uses its defining formula Omega_l=varrho^T partial_l varrho, introduced at L124; the current path through other results is only transitive. |
| stepP:p9:lift-concl | PASS | L131-L131 | Prior finding resolved; source contract, direct uses and locators match. |
| bpP:p9:diagonalize | FAIL | L134-L147 / L148-L153 | L141 restricts the secular expansion to rotated points in N_R(rho_*). SOURCE_CONCLUSION(b) drops that guard and therefore states the local expansion without its domain restriction. |
| stepP:p9:d-a | PASS | L149-L149 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:d-b | FAIL | L150-L150 | The displayed expansion uses C_0, defined by the secular coefficient package; the current path through other results is only transitive. |
| stepP:p9:d-c | FAIL | L151-L151 | The frozen dictionary identifies P_0=C_0(+delta), using C_0 from the secular coefficient package; the current path through other results is only transitive. |
| stepP:p9:d-d | PASS | L152-L152 | Original conditional source claim retained; unmatched period-one transport premise is explicitly exposed as SOURCE_GAP. |
| bpP:p9:dict | FAIL | L155-L160 | The prior deletion has not been applied: this PROPOSED node remains in the packet despite its EXCLUDED coverage. It has no incoming DEPS/ROUTES edge and no root path; remove the node, as already required by P-p9-review.md. |
| bpP:p9:good | PASS | L164-L171 | Prior finding resolved; source contract, direct uses and locators match. |
| bpP:p9:good-set | PASS | L173-L179 / L180-L184 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:gs-a | PASS | L181-L181 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:gs-b | PASS | L182-L182 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:gs-c | PASS | L183-L183 | The alternative inputs are separated into ROUTES, each with one consumer EDGE; the common identity-theorem dependencies remain conjunctive. |
| bpP:p9:n2 | PASS | L193-L200 / L201-L204 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:n2-mat | PASS | L202-L202 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:n2-res | PASS | L203-L203 | Prior finding resolved; source contract, direct uses and locators match. |
| stepP:p9:gs-c#roots-route | PASS | L183-L183 | Faithful source alternative with explicit SOURCE_GAP for continuity of roots; no conclusion-shaped premise. |
| stepP:p9:gs-c#analytic-route | PASS | L183-L183 | Local analytic branches supply continuity on the good locus; no global frame or ordering hypothesis added. |

## Proposed coverage verdicts

Each PROPOSED coverage item has its own row. A valid NODE disposition remains PASS when the referenced node itself needs an edge or statement-field correction.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p9:e-fts | PASS | L22-L22 | Correct source-to-node mapping. |
| bpP:p9:lemma70 | PASS | L29-L32 | Valid source exclusion; no in-scope proof use was found. |
| stepP:p9:l70 | PASS | L34-L34 | Valid source exclusion; no in-scope proof use was found. |
| bpP:p9:lemma71 | PASS | L37-L45 | Valid source exclusion; no in-scope proof use was found. |
| stepP:p9:l71-loc | PASS | L48-L48 | Valid source exclusion; no in-scope proof use was found. |
| stepP:p9:l71-eig | PASS | L49-L49 | Valid source exclusion; no in-scope proof use was found. |
| stepP:p9:l71-ab | PASS | L50-L50 | Valid source exclusion; no in-scope proof use was found. |
| stepP:p9:l71-bij | PASS | L51-L51 | Valid source exclusion; no in-scope proof use was found. |
| stepP:p9:l71-c | PASS | L52-L52 | Valid source exclusion; no in-scope proof use was found. |
| stepP:p9:l71-so | PASS | L53-L53 | Valid source exclusion; no in-scope proof use was found. |
| bpP:p9:cor72 | PASS | L56-L61 | Valid source exclusion; no in-scope proof use was found. |
| stepP:p9:c72-rot | PASS | L63-L63 | Valid source exclusion; no in-scope proof use was found. |
| stepP:p9:c72-split | PASS | L64-L64 | Valid source exclusion; no in-scope proof use was found. |
| stepP:p9:c72-apply | PASS | L65-L65 | Valid source exclusion; no in-scope proof use was found. |
| stepP:p9:l75 | PASS | L77-L77 | Correct source-to-node mapping. |
| stepP:p9:l74-red | PASS | L87-L87 | Correct source-to-node mapping. |
| stepP:p9:l74-ibp | PASS | L88-L88 | Correct source-to-node mapping. |
| stepP:p9:p73-dom | PASS | L100-L100 | Correct source-to-node mapping. |
| stepP:p9:p73-had | PASS | L101-L101 | Correct source-to-node mapping. |
| stepP:p9:p73-cong | PASS | L102-L102 | Correct source-to-node mapping. |
| stepP:p9:la-ev | PASS | L111-L111 | Correct source-to-node mapping. |
| stepP:p9:la-adj | PASS | L112-L112 | Correct source-to-node mapping. |
| stepP:p9:la-vec | PASS | L113-L113 | Correct source-to-node mapping. |
| stepP:p9:la-so | PASS | L114-L114 | Correct source-to-node mapping. |
| bpP:p9:lift | PASS | L117-L122 | Correct source-to-node mapping. |
| stepP:p9:lift-bij | PASS | L124-L124 | Correct source-to-node mapping. |
| stepP:p9:lift-anti | PASS | L125-L125 | Correct source-to-node mapping. |
| stepP:p9:lift-form | PASS | L126-L129 | Correct source-to-node mapping. |
| stepP:p9:lift-mc | PASS | L130-L130 | Correct source-to-node mapping. |
| stepP:p9:lift-concl | PASS | L131-L131 | Correct source-to-node mapping. |
| bpP:p9:diagonalize | PASS | L134-L147 | Correct source-to-node mapping. |
| stepP:p9:d-a | PASS | L149-L149 | Correct source-to-node mapping. |
| stepP:p9:d-b | PASS | L150-L150 | Correct source-to-node mapping. |
| stepP:p9:d-c | PASS | L151-L151 | Correct source-to-node mapping. |
| stepP:p9:d-d | PASS | L152-L152 | Correct source-to-node mapping. |
| bpP:p9:dict | PASS | L155-L160 | Exclusion is correct: Part 10 L192 is a convention restatement in its excluded scaling remark; Part 11 is deferred. Delete the redundant node separately. |
| bpP:p9:good | PASS | L164-L171 | Correct source-to-node mapping. |
| bpP:p9:good-set | PASS | L173-L179 | Correct source-to-node mapping. |
| stepP:p9:gs-a | PASS | L181-L181 | Correct source-to-node mapping. |
| stepP:p9:gs-b | PASS | L182-L182 | Correct source-to-node mapping. |
| stepP:p9:gs-c | PASS | L183-L183 | Correct source-to-node mapping. |
| bpP:p9:top-simple | PASS | L186-L188 | Valid source exclusion; no in-scope proof use was found. |
| stepP:p9:ts-pos | PASS | L190-L190 | Valid source exclusion; no in-scope proof use was found. |
| bpP:p9:n2 | PASS | L193-L200 | Correct source-to-node mapping. |
| stepP:p9:n2-mat | PASS | L202-L202 | Correct source-to-node mapping. |
| stepP:p9:n2-res | PASS | L203-L203 | Correct source-to-node mapping. |
| heading:bpP:p9 | PASS | L1-L1 | Valid source exclusion; no in-scope proof use was found. |
| heading:bpP:p9:conv | PASS | L13-L13 | Valid source exclusion; no in-scope proof use was found. |
| heading:bpP:p9:sec-pert | PASS | L27-L27 | Valid source exclusion; no in-scope proof use was found. |
| heading:bpP:p9:sec-def | PASS | L68-L68 | Valid source exclusion; no in-scope proof use was found. |
| heading:bpP:p9:sec-diag | PASS | L105-L105 | Valid source exclusion; no in-scope proof use was found. |
| heading:bpP:p9:sec-int | PASS | L162-L162 | Valid source exclusion; no in-scope proof use was found. |
| heading:bpP:p9:notes | PASS | L206-L206 | Valid source exclusion; no in-scope proof use was found. |
| p9:sourcegap-L146 | PASS | L146-L146 | Maps the angle-correction gap to lift/d-b; the separately exposed transport-period issue does not invalidate this disposition. |
| p9:source-L31 | PASS | L31-L31 | Valid source exclusion; no in-scope proof use was found. |
| p9:source-L44 | PASS | L44-L44 | Valid source exclusion; no in-scope proof use was found. |
| p9:source-L60 | PASS | L60-L60 | Valid source exclusion; no in-scope proof use was found. |
| p9:source-L74 | PASS | L74-L74 | Valid source exclusion; no in-scope proof use was found. |
| p9:source-L84 | PASS | L84-L84 | Valid source exclusion; no in-scope proof use was found. |
| p9:source-L97 | PASS | L97-L97 | Valid source exclusion; no in-scope proof use was found. |
| p9:source-L121 | PASS | L121-L121 | Valid source exclusion; no in-scope proof use was found. |
| p9:source-L145 | PASS | L145-L145 | Valid source exclusion; no in-scope proof use was found. |
| p9:source-L170 | PASS | L170-L170 | Valid source exclusion; no in-scope proof use was found. |
| p9:prose-L4-L11 | PASS | L4-L11 | Valid source exclusion; no in-scope proof use was found. |
| p9:prose-L15-L16 | PASS | L15-L16 | Correct source-to-node mapping. |
| p9:prose-L18-L19 | PASS | L18-L19 | Valid source exclusion; no in-scope proof use was found. |
| p9:prose-L208-L208 | PASS | L208-L208 | Valid source exclusion; no in-scope proof use was found. |
| p9:prose-L210-L210 | PASS | L210-L210 | Valid source exclusion; no in-scope proof use was found. |
| p9:prose-L212-L212 | PASS | L212-L212 | Valid source exclusion; no in-scope proof use was found. |
| p9:prose-L214-L214 | PASS | L214-L214 | Valid source exclusion; no in-scope proof use was found. |
| p9:prose-L216-L216 | PASS | L216-L216 | Valid source exclusion; no in-scope proof use was found. |
| p9:prose-L218-L218 | PASS | L218-L218 | Valid source exclusion; no in-scope proof use was found. |
| p9:prose-L220-L221 | PASS | L220-L221 | Valid source exclusion; no in-scope proof use was found. |

all other coverage items PASS

The exclusions of lemma70/lemma71/cor72 and top-simple, including their proof steps, were checked against the source and corpus references. The retained proofs do not consume them. The Part 10 mentions of cor72 describe its replacement, not an application. Administrative, provenance, heading and notation dispositions have their stated scope.

## P-p9 — replacements

Only the failing fields are changed below. All identity, locator, extractor, reviewer, topology-status and Lean-planning metadata are preserved verbatim.

### P-p9 — stepP:p9:lift-mc

```text
NODE: stepP:p9:lift-mc
KIND: step
TITLE: Maurer--Cartan
STATEMENT_SOURCE: blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:lift-mc@L130-L130
PROOF_SOURCE: blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:lift-mc@L130-L130
CONTRACT_ID: stepP:p9:lift-mc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source premises of bpP:p9:lift: W subset R^n open and varrho:W->SO(n) real analytic, with the explicitly defined Phi_varrho and form dLambda^dlambda+deta^dxi; H_l and Omega_l denote the local definitions of L124; inverse and differential identities are supplied through DEPS
SOURCE_QUANTIFIERS: l,m
SOURCE_CONCLUSION: d_m Omega_l+Omega_m Omega_l=varrho^T d_m d_l varrho is symmetric in (m,l), so the last sum vanishes against dLambda_m^dLambda_l
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p9:lift-anti, stepP:p9:lift-form, stepP:p9:lift-bij
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p9:lift-anti | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:lift-mc@L130-L130 | d_m varrho^T=-Omega_m varrho^T
EDGE: stepP:p9:lift-form | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:lift-mc@L130-L130 | the remaining sum to be killed
EDGE: stepP:p9:lift-bij | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:lift-mc@L130-L130 | The differentiation of Omega_l uses its defining formula Omega_l=varrho^T partial_l varrho, introduced at L124
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p9+sol-review-P-k
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p9 — bpP:p9:diagonalize

```text
NODE: bpP:p9:diagonalize
KIND: theorem
TITLE: Diagonalisation and the frozen Birkhoff data
STATEMENT_SOURCE: blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L134-L147
PROOF_SOURCE: blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L148-L153
CONTRACT_ID: bpP:p9:diagonalize
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation of bpP:p8:perturbation-analytic and bpP:p8:quadratic-form with n>=2; W subset {Lambda: a(Lambda) increasing} open; Q_h(Lambda) has simple spectrum on W; sigma_j, varrho the analytic functions of bpP:p9:local-analytic on W (global labelling if W is connected)
SOURCE_QUANTIFIERS: data of conv#data (Part 8); W; then (xi tilde,eta tilde) with (xi,Lambda,eta)=(varrho xi tilde,Lambda,varrho eta tilde); mu>0
SOURCE_CONCLUSION: (a) xi^T Q_h xi+eta^T Q_h eta=sum sigma_j(xi tilde_j^2+eta tilde_j^2)=sum Omega_j R tilde_j with Omega_j=2 sigma_j<0, R tilde_j=(eta tilde_j^2+xi tilde_j^2)/2; (b) for the matched pairs (S,hat f) the average of hat f o Phi^-1 equals S(Lambda,varrho xi tilde,varrho eta tilde)=C_0+[delta]+sum Omega_j R tilde_j+O(¦(xi tilde,eta tilde)¦^4) locally uniformly in Lambda in W, on the set where (xi,Lambda,eta)=(varrho xi tilde,Lambda,varrho eta tilde) belongs to N_R(rho_*), [delta]=0 (fix) or delta(Lambda) (mov); H^Psi transformed by Phi^-1 is h(Lambda)+mu hat f o Phi^-1; (c) with (I,p,q)=(Lambda,eta tilde,xi tilde), P_0=C_0(+delta), Omega_j(mu,I)=2 sigma_j(a(I)), R_j=(p_j^2+q_j^2)/2 the zeroth and first order terms of HasBirkhoff for P=hat f o Phi^-1 are those of (b); beta and clause (i) not treated; domain condition sqrt n delta_0<=rho_* and ¦Lambda-Lambda*¦_inf<rho_*; (d) Psi o Phi^-1 is a symplectic chart of Part 1 satisfying (Q1)-(Q2) of the torus transport theorem whenever Psi does
CONSTANT_SCOPE: rho_*, a, Q_h as in Part 8; sigma_j, varrho depend on Lambda only (not on mu)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p9:d-a, stepP:p9:d-b, stepP:p9:d-c, stepP:p9:d-d, bpP:p8:perturbation-analytic, bpP:p8:quadratic-form, bpP:p9:local-analytic, bpP:p9:lift, bpP:p8:identification, bpP:p0:birkhoff#HasSecularBirkhoffForm, bpP:p8:conv#data, bpP:p1:chart, bpP:p1:torus-transport, bpP:p9:conv#data, bpP:p8:rho, bpP:p8:coeffs
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p9:d-a | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L149-L149 | proof step (a)
EDGE: stepP:p9:d-b | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L150-L150 | proof step (b)
EDGE: stepP:p9:d-c | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L151-L151 | proof step (c)
EDGE: stepP:p9:d-d | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L152-L152 | proof step (d)
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L135-L135 | situation, rho_*, matched pairs (S,hat f)
EDGE: bpP:p8:quadratic-form | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L135-L135 | situation; Q_h and the expansion of S_fix
EDGE: bpP:p9:local-analytic | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L135-L135 | sigma_j, varrho analytic functions
EDGE: bpP:p9:lift | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L137-L137 | the rotation lift Phi_varrho and (xi tilde,eta tilde)
EDGE: bpP:p8:identification | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L141-L141 | [delta]=delta(Lambda) for mov
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L142-L142 | frozen Omega_j, R_j, P_0 of HasBirkhoff
EDGE: bpP:p8:conv#data | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L142-L142 | dictionary (I,p,q)=(Lambda,eta,xi) and N_R(rho_*)
EDGE: bpP:p1:chart | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L143-L143 | symplectic chart of Part 1
EDGE: bpP:p1:torus-transport | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L143-L143 | lattice compatibility (Q1)-(Q2) and applicability of torus transport
EDGE: bpP:p9:conv#data | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L135-L135 | conventions of Part 9
EDGE: bpP:p8:rho | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L141-L141 | The named secular polydisc constants and rho_* enter the asserted domain.
EDGE: bpP:p8:coeffs | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:diagonalize@L135-L135 | Q_h(a) and its real analytic dependence are the secular coefficients defined here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p9+sol-review-P-k
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: edges deleted: bpP:p8:same-jets (pointer: beta and clause (i) are treated in Part 11b), bpP:p8:factor-half (remark, source provenance). The sourcegap at L146 (angle correction of the rotation) is bridged by bpP:p9:lift and step d-b SOURCE_GAP: L143/L152 assert the lattice compatibility of the period-one torus-transport theorem using 2 pi shifts of the physical chart. Part 1 defines iota_k using integer shifts, whereas this proof checks shifts by 2 pi m. Applying that theorem directly still needs a named period conversion (as in Part 1 period-convert/cyl-pipeline), with its torus and frequency hypotheses. The source supplies the valid 2 pi shift calculation but does not perform this conversion here; no additional premise or conversion proof is inserted by the graph.
```

### P-p9 — stepP:p9:d-b

```text
NODE: stepP:p9:d-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150
PROOF_SOURCE: blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150
CONTRACT_ID: stepP:p9:d-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source premises of bpP:p9:diagonalize: the Part 8 perturbation and quadratic-form setting with n>=2, W open in the increasing-axis action domain, and given analytic sigma_j,varrho on W with Q_h=varrho diag(sigma)varrho^T and simple increasingly labelled spectrum; derived negativity, lift identities and average bounds are supplied through DEPS; (S,hat f) is one of the two matched pairs, and the rotated point lies in N_R(rho_*)
SOURCE_QUANTIFIERS: (S,hat f) matched pair; (xi,Lambda,eta) in N_R(rho_*)
SOURCE_CONCLUSION: average over lambda tilde of hat f o Phi^-1 equals S(Lambda,varrho xi tilde,varrho eta tilde)=C_0+[delta]+sum Omega_j R tilde_j+O(¦(xi tilde,eta tilde)¦^4); H^Psi o Phi^-1=h(Lambda)+mu hat f o Phi^-1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:lift, bpP:p8:perturbation-analytic, bpP:p8:e-diff, bpP:p8:quadratic-form, bpP:p8:identification, stepP:p9:d-a, bpP:p7:product-chart, bpP:p9:conv#data, bpP:p8:rho, bpP:p8:conv#data, bpP:p8:coeffs
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:lift | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150 | explicit inverse with H independent of lambda tilde; Phi preserves Lambda and norms
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150 | (b): hat f continuous and 2pi-periodic
EDGE: bpP:p8:e-diff | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150 | translation invariance of the average of a periodic function
EDGE: bpP:p8:quadratic-form | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150 | S_fix=C_0+quadratic form+O(4)
EDGE: bpP:p8:identification | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150 | S_mov=S_fix+delta
EDGE: stepP:p9:d-a | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150 | quadratic part in the rotated variables
EDGE: bpP:p7:product-chart | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150 | (b),(c): H^Psi=h+mu f o Psi, h depends on Lambda only
EDGE: bpP:p9:conv#data | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150 | The Euclidean norm, orthonormal/orthogonal matrix convention or Sym_n typing used in this source unit is fixed here.
EDGE: bpP:p8:rho | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150 | The named secular polydisc constants and rho_* enter the asserted domain.
EDGE: bpP:p8:conv#data | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150 | The normalized secular average, chart order and dictionary (I,p,q)=(Lambda,eta,xi) are used here.
EDGE: bpP:p8:coeffs | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-b@L150-L150 | The displayed expansion uses C_0, defined by the secular coefficient package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p9+sol-review-P-k
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p9 — stepP:p9:d-c

```text
NODE: stepP:p9:d-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-c@L151-L151
PROOF_SOURCE: blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-c@L151-L151
CONTRACT_ID: stepP:p9:d-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source premises of bpP:p9:diagonalize: the Part 8 perturbation and quadratic-form setting with n>=2, W open in the increasing-axis action domain, and given analytic sigma_j,varrho on W with Q_h=varrho diag(sigma)varrho^T and simple increasingly labelled spectrum; derived negativity, lift identities and average bounds are supplied through DEPS; delta_0>0 and the oscillator-disc guards and action-neighborhood guard of clause (c)
SOURCE_QUANTIFIERS: delta_0>0 with xi tilde_j^2+eta tilde_j^2<delta_0^2
SOURCE_CONCLUSION: the zeroth and first order terms of HasBirkhoff for P=hat f o Phi^-1 are P_0=C_0(+delta) and Omega_j R_j; (xi,Lambda,eta) in N_R(rho_*) if sqrt n delta_0<=rho_* and ¦Lambda-Lambda*¦_inf<rho_*
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p9:d-a, stepP:p9:d-b, bpP:p0:birkhoff#HasSecularBirkhoffForm, bpP:p9:conv#data, bpP:p8:perturbation-analytic, bpP:p8:rho, bpP:p8:conv#data, bpP:p8:coeffs
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p9:d-a | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-c@L151-L151 | quadratic part
EDGE: stepP:p9:d-b | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-c@L151-L151 | average and expansion
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-c@L151-L151 | terms of HasBirkhoff read off
EDGE: bpP:p9:conv#data | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-c@L151-L151 | norm comparison
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-c@L151-L151 | rho_*, N_R(rho_*)
EDGE: bpP:p8:rho | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-c@L151-L151 | The named secular polydisc constants and rho_* enter the asserted domain.
EDGE: bpP:p8:conv#data | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-c@L151-L151 | The normalized secular average, chart order and dictionary (I,p,q)=(Lambda,eta,xi) are used here.
EDGE: bpP:p8:coeffs | blueprint-P/parts/p9-secular-spectrum.tex#stepP:p9:d-c@L151-L151 | The frozen dictionary identifies P_0=C_0(+delta), using C_0 from the secular coefficient package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p9+sol-review-P-k
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p9 — delete bpP:p9:dict

The failure is the continued existence of an unreachable node, so there is no sound field-only replacement. **Delete the complete NODE block below; do not upsert it.** Its already corrected EXCLUDED coverage item passes and must remain unchanged. This repeats the prior deletion request; it introduces no substitute claim.

```text
NODE: bpP:p9:dict
KIND: claim
TITLE: Dictionary: Fej04r, CP09/CP10, frozen
STATEMENT_SOURCE: blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:dict@L155-L160
PROOF_SOURCE: blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:dict@L155-L160
CONTRACT_ID: bpP:p9:dict
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: frozen Omega_j multiplies R_j=(p_j^2+q_j^2)/2 (Definition birkhoff); S=C_0+sum sigma_j(xi tilde_j^2+eta tilde_j^2); sigma_j eigenvalues of the halved Q_h
SOURCE_QUANTIFIERS: n>=2 (item 4: n=1); j
SOURCE_CONCLUSION: Omega_j=2 sigma_j with sigma_j the eigenvalues of the halved Q_h; Omega is the eigenvalue list of 2 Q_h; all negative; CP10 (8) is insensitive to the overall sign; index and labelling conventions; n=1: Q_h=0, Omega_1=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:diagonalize, bpP:p9:definite, bpP:p8:coeffs, bpP:p0:birkhoff#HasSecularBirkhoffForm
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:diagonalize | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:dict@L156-L156 | S=C_0+sum sigma_j(...)=C_0+sum 2 sigma_j R tilde_j
EDGE: bpP:p9:definite | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:dict@L156-L156 | all eigenvalues negative
EDGE: bpP:p8:coeffs | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:dict@L156-L156 | the halved Q_h of Definition coeffs
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p9-secular-spectrum.tex#bpP:p9:dict@L156-L156 | frozen Omega_j, R_j
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p9
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: kept as claim: Part 10 L192 cites it for the dictionary Omega_j=2 sigma_j; if the P-p10 extractor finds no consumer, exclude it. Edge to bpP:p8:factor-half deleted (provenance/erratum remark)
```

## Source issues retained separately

At Part 9 L143 the text says the composition “satisfies the lattice compatibility (Q1)--(Q2)” of Part 1; L152 proves compatibility for shifts by 2 pi m, whereas Part 1 L94–109 uses integer shifts iota_k and additional torus/frequency hypotheses. The existing SOURCE_GAP notes correctly retain that mismatch without inventing the period conversion. The current review does not repair the blueprint or remove the valid symplectic lift and average calculation. No new pinned-paper erratum is alleged.

## Validation

Read-only structural checker: `P-p9: 42 nodes, 151 edges, 81 coverage items, 0 problems, 0 TODO records (not counted: --structural)`. This confirms schema consistency, not semantic topology correctness. Checked that the proposed replacements keep one EDGE per DEPS/ROUTES entry, use consumer locators, preserve untouched fields, and create no new cycle. A full packet search found no incoming dependency or route to `bpP:p9:dict`. The report contains one verdict row for every live PROPOSED node and coverage item. No Lean or state-changing git command was run.

Reviewed snapshots (SHA-256):

- `blueprint-P/parts/p9-secular-spectrum.tex`: `19271673e246eed9d444a3f370c479aa13685528e306f9addcddc550cc56da54`
- `docs/graph/P/packets/P-p9.nodes.md`: `8c982a2bb89b49cb24eca6d0bad0d2f31257c56e67ae3a3a768e34084919098c`
- `docs/graph/P/packets/P-p9.coverage.md`: `051695aa6394c2072037e7390f0d39ef1b24426753d7a58870431427480db223`
- `docs/graph/P/reviews/P-p9-review.md`: `41e85c95ee9715a1a8aece37b8347d2a2094faead3cc679a4717930abf956331`

READY delta-P-k
