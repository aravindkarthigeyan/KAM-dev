# P-p11a45 second delta topology review

Reviewer: sol-delta-P-bb. Marker: delta-P-bb.

**Verdict: FAIL — 10 node PASS, 11 node FAIL (8 outstanding deletions, 3 dependency repairs); all 7 coverage items PASS.**

Read DELTA-BRIEF.md, REVIEW-BRIEF.md, current SPEC including the P-FIXED revision and writer rulings, and P-p11a45-delta.md (sol-delta-P-ad). Scope is exactly the 21 remaining PROPOSED nodes and 7 PROPOSED coverage items. Previously REVIEWED records serve only as prerequisites. No frozen anchor belongs to this slice.

Re-read the selected statement/proof/EDGE spans and enclosing premises in Files 11a-4 and 11a-5, and the cited prerequisite statements in Files 11a-1/11a-2/11a-3 and track K Part 1. In particular checked numerical versus Hamiltonian premises, positive epsilon versus the zero branch, fixed constant dependencies, shared-parameter compositions, collar estimates, original-coordinate family definitions and the seven-root closure. Accurate wording is retained under convergence.

## Node verdicts

11a4 means blueprint-P/parts/p11a4-limit-family.tex; 11a5 means blueprint-P/parts/p11a5-quantitative-theorem.tex. All current EDGE consumer spans were reread.

| Record | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p11a:composition | PASS | 11a4 L66-L75, 11a4 L76-L84 | The corrected section-data locator L69-72 now contains the actual composition formula; the shared parameter, domain and componentwise bounds agree. |
| stepP:p11a:pl4-terms | PASS | 11a4 L90-L92 | The non-direct schedule-props edge is gone. Exported-sums(E1) supplies Q_j; schedule and schedule-consts supply the remaining formulas and g_4. |
| bpP:p11a:limit-map | PASS | 11a4 L100-L108, 11a4 L109-L117 | The corrected section-data locator L101-103 contains Phi^(nu)_b. Uniform convergence, derivative convergence, periodic defect and max-norm bound agree. |
| stepP:p11a:lt-field | PASS | 11a4 L135-L135 | The unused original-coordinate family-data edge is removed. The zero-section field calculation uses the stage remainder, schedule and Cauchy estimates only. |
| bpP:p11a:displacement-power | PASS | 11a4 L180-L184, 11a4 L185-L187 | The section-data locator now points to the actual family/defect use at L182. The simultaneous lower budget, fixed-data order and beta/epsilon powers are preserved. |
| stepP:p11a:eb-meas | PASS | 11a4 L229-L229 | The added original-coordinate family-data edge supplies the evaluation map. The measure bounds and Borel conclusion match the source; the known factor-order typo is not repeated in the record. |
| stepP:p11a:eb-cpt | PASS | 11a4 L231-L231 | The added family-data edge supplies the compact/saturated evaluation images; compactness and equivariance have direct suppliers. |
| stepP:p11a:qb-comp | FAIL | 11a5 L48-L48 | The numerical hypotheses now correctly omit Hamiltonian/positive-perturbation premises. Still missing the direct schedule-consts edge: varpi is used explicitly in the comparison of the second minimum branch. |
| stepP:p11a:qb-mono | FAIL | 11a5 L50-L50 | The numerical hypotheses now correctly omit Hamiltonian/positive-perturbation premises. Still missing the direct schedule-consts edge: A_0 occurs in the displayed s T-bar expression and C_Q in the second lambda-flat branch. Also missing the explicitly cited gamma-inverse input for the coefficient factorization/dependence used in monotonicity. |
| stepP:p11a:qb-poly | FAIL | 11a5 L52-L52 | The numerical hypotheses now correctly omit Hamiltonian/positive-perturbation premises. Still missing the direct schedule-consts edge: A_0 is used explicitly in the logarithmic cutoff bound and its data-only constant. |
| stepP:p11a:qb-beta | PASS | 11a5 L54-L54 | The numerical-only input and beta rate specialization resolve the prior excess hypotheses; c_* remains independent of beta. |
| bpP:p11a:zero-case | PASS | 11a5 L61-L63, 11a5 L64-L68 | The corrected input-package use site is L62, and no positive-radius situation is imposed. The explicit swap/image has position-action order and zero defect. |
| bpP:p11a:weak-kam-quantitative | PASS | 11a5 L72-L91, 11a5 L92-L110 | The corrected input-package locator L73-80 contains the actual data and A1-A4. Gamma/threshold precede h,f; the zero branch, K1-K6 and full numerical budget remain sourced. |
| bpP:p11a:physical-interface | FAIL | 11a5 L116-L125, 11a5 L126-L135 | DELETE the complete node: outside every current root closure; the previous AD5 deletion remains unapplied. Every incoming edge is internal to the same eight-node unused component. |
| stepP:p11a:pi-zero | FAIL | 11a5 L127-L127 | DELETE the complete node: outside every current root closure; the previous AD5 deletion remains unapplied. Every incoming edge is internal to the same eight-node unused component. |
| stepP:p11a:pi-a | FAIL | 11a5 L128-L128 | DELETE the complete node: outside every current root closure; the previous AD5 deletion remains unapplied. Every incoming edge is internal to the same eight-node unused component. |
| stepP:p11a:pi-b | FAIL | 11a5 L130-L130 | DELETE the complete node: outside every current root closure; the previous AD5 deletion remains unapplied. Every incoming edge is internal to the same eight-node unused component. |
| stepP:p11a:pi-c | FAIL | 11a5 L132-L132 | DELETE the complete node: outside every current root closure; the previous AD5 deletion remains unapplied. Every incoming edge is internal to the same eight-node unused component. |
| stepP:p11a:pi-c-uniq | FAIL | 11a5 L132-L132 | DELETE the complete node: outside every current root closure; the previous AD5 deletion remains unapplied. Every incoming edge is internal to the same eight-node unused component. |
| stepP:p11a:pi-d | FAIL | 11a5 L134-L134 | DELETE the complete node: outside every current root closure; the previous AD5 deletion remains unapplied. Every incoming edge is internal to the same eight-node unused component. |
| bpP:p11a:sec-q-phys#data | FAIL | 11a5 L117-L117 | DELETE the complete node: outside every current root closure; the previous AD5 deletion remains unapplied. Every incoming edge is internal to the same eight-node unused component. |

## Coverage verdicts

| Record | Verdict | Span re-read | Reason |
|---|---|---|---|
| bpP:p11a:physical-interface | PASS | 11a5 L116-L125 | Correct EXCLUDED disposition: this statement/step is outside all seven root closures, with only internal component consumers. |
| stepP:p11a:pi-zero | PASS | 11a5 L127-L127 | Correct EXCLUDED disposition: this statement/step is outside all seven root closures, with only internal component consumers. |
| stepP:p11a:pi-a | PASS | 11a5 L128-L128 | Correct EXCLUDED disposition: this statement/step is outside all seven root closures, with only internal component consumers. |
| stepP:p11a:pi-b | PASS | 11a5 L130-L130 | Correct EXCLUDED disposition: this statement/step is outside all seven root closures, with only internal component consumers. |
| stepP:p11a:pi-c | PASS | 11a5 L132-L132 | Correct EXCLUDED disposition: this statement/step is outside all seven root closures, with only internal component consumers. |
| stepP:p11a:pi-d | PASS | 11a5 L134-L134 | Correct EXCLUDED disposition: this statement/step is outside all seven root closures, with only internal component consumers. |
| p11a5:prose-L157-L157 | PASS | 11a5 L157-L157 | Correct EXCLUDED disposition for the administrative external-fact list; it is not an input to a root. |

all other coverage items PASS

## Reachability and deletion handling

Independent traversal from the seven current roots reaches none of the eight nodes marked DELETE in the table. A scan of every packet finds no incoming dependency or route from outside that component. Raw-source search finds only Part 13 L200 (administrative Forward references) as an out-of-file physical-interface citation. Part 11 consumes the quantitative theorem, not this companion. The existing seven coverage exclusions are therefore correct. The pi-c-uniq writer ruling governs its SOURCE_GAP representation if it returns; it grants no root-use exception.

Deletion instructions appear only in the node table. There are no bare NODE deletion stubs and no fenced replacement blocks for deleted nodes. The writer must remove the eight complete node records together.

## Suspected blueprint defects and limits

The prior source observations remain: at 11a4 L229, after defining A in (theta,b) order, the printed exhaustion uses `H x [0,1-1/m]^N` instead of `[0,1-1/m]^N x H`. The source equality needs the factor order corrected; the graph record does not reproduce that equality. At 11a5 L132, Picard-Lindelof uniqueness is named without an authorized literal supplier, as already exposed in the unused pi-c-uniq SOURCE_GAP. Removing the unused component does not close that gap. No new source defect or pinned-paper erratum is asserted.

The beta<=1 condition of the inverse-gamma estimate is not added to the numerical monotonicity step. Its direct citation uses the displayed C_Dio coefficient factorization, not the restricted inverse-gamma bound. Numerical budget hypotheses remain as repaired, and no source field, constant scope or proof premise is changed here.

## Replacement blocks

### P-p11a45 — stepP:p11a:qb-comp

The numerical hypotheses now correctly omit Hamiltonian/positive-perturbation premises. Still missing the direct schedule-consts edge: varpi is used explicitly in the comparison of the second minimum branch.

```text
NODE: stepP:p11a:qb-comp
KIND: step
TITLE: Comparison with File 11a-3
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48
CONTRACT_ID: stepP:p11a:qb-comp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the numerical data frakd of thresholds (11a5 L19-L31): N,mu>=1 integers, rho in {1,2}, tau>=0 with tau>N mu/rho-1; K compact, d=diam_inf K, vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=M, 0<eps*<meas K; gamma,T-bar,t_flat,Xi-bar,theta_max,lambda_flat,eps_adm^flat defined there; no Hamiltonian or perturbation-size premise; frakd' differs only by valid 0<M_0'<=M_0 and its T_0,t_0,Xi,lambda_max are defined by adm-params
SOURCE_QUANTIFIERS: M_0'<=M_0
SOURCE_CONCLUSION: T_0<=T-bar, t_flat<=t_0<=1, C_1 t_0/8>=t_flat/8, Xi<=Xi-bar, T_0^tau<=T-bar^tau, theta_max(M_0)<=theta_max(M_0'), t_flat^mu<=t_0^mu; so each term of lambda_flat is at most the corresponding term of lambda_max, lambda_flat<=lambda_max and eps_adm^flat<=eps_adm^(3)(frakd'); positivity of all ingredients
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:adm-params, bpP:p11a:thresholds, bpP:p11a:schedule-consts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48 | T_0, t_0, Xi, lambda_max, theta_max for frakd'
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48 | T-bar, t_flat, Xi-bar, lambda_flat, eps_adm^flat
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48 | varpi is used explicitly in the comparison of the second minimum branch; these constants are defined by schedule-consts
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-delta-P-ad
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — stepP:p11a:qb-mono

The numerical hypotheses now correctly omit Hamiltonian/positive-perturbation premises. Still missing the direct schedule-consts edge: A_0 occurs in the displayed s T-bar expression and C_Q in the second lambda-flat branch. Also missing the explicitly cited gamma-inverse input for the coefficient factorization/dependence used in monotonicity.

```text
NODE: stepP:p11a:qb-mono
KIND: step
TITLE: Monotonicity
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-mono@L50-L50
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-mono@L50-L50
CONTRACT_ID: stepP:p11a:qb-mono
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the numerical data frakd of thresholds (11a5 L19-L31): N,mu>=1 integers, rho in {1,2}, tau>=0 with tau>N mu/rho-1; K compact, d=diam_inf K, vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=M, 0<eps*<meas K; gamma,T-bar,t_flat,Xi-bar,theta_max,lambda_flat,eps_adm^flat defined there; no Hamiltonian or perturbation-size premise
SOURCE_QUANTIFIERS: data entries varied one at a time, others fixed
SOURCE_CONCLUSION: gamma_*, gamma, gamma T-bar^{-tau-1}, t_flat are nondecreasing in beta,vartheta,eps*,s and nonincreasing in M,d (t_flat nonincreasing in C_1); Xi-bar and the three terms of lambda_flat move accordingly, so lambda_flat and eps_adm^flat have the stated monotonicity (eps_adm^flat nonincreasing in M_0 and C_1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:thresholds, bpP:p11a:schedule-consts, bpP:p11a:gamma-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-mono@L50-L50 | definitions of gamma, T-bar, t_flat, Xi-bar, theta_max, lambda_flat
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-mono@L50-L50 | A_0 occurs in the displayed s T-bar expression and C_Q in the second lambda-flat branch; these constants are defined by schedule-consts
EDGE: bpP:p11a:gamma-inverse | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-mono@L50-L50 | the source explicitly uses gamma-inverse for C_Dio = C-hat beta^(-1-1/mu) and the dependence of C-hat on M,d,vartheta; no beta<=1 inverse estimate is applied
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-delta-P-ad
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — stepP:p11a:qb-poly

The numerical hypotheses now correctly omit Hamiltonian/positive-perturbation premises. Still missing the direct schedule-consts edge: A_0 is used explicitly in the logarithmic cutoff bound and its data-only constant.

```text
NODE: stepP:p11a:qb-poly
KIND: step
TITLE: Polynomial bound, all data
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52
CONTRACT_ID: stepP:p11a:qb-poly
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the numerical data frakd of thresholds (11a5 L19-L31): N,mu>=1 integers, rho in {1,2}, tau>=0 with tau>N mu/rho-1; K compact, d=diam_inf K, vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=M, 0<eps*<meas K; gamma,T-bar,t_flat,Xi-bar,theta_max,lambda_flat,eps_adm^flat defined there; no Hamiltonian or perturbation-size premise; the adm-budget parameter-family hypotheses: c in (0,1], nonnegative a_vartheta,a_s,a_beta,a_*,a_M,a_0,a_C,a_d; for each u in (0,1], valid data satisfy vartheta>=c u^{a_vartheta}, s>=c u^{a_s}, beta>=c u^{a_beta}, eps*>=c u^{a_*}, M<=c^{-1}u^{-a_M}, M_0<=c^{-1}u^{-a_0}, C_1<=c^{-1}u^{-a_C}, d<=c^{-1}u^{-a_d}; D,G,L,J,X,H,B as defined in adm-budget
SOURCE_QUANTIFIERS: u in (0,1], constants depending on (N,mu,rho,tau,c) and a_s
SOURCE_CONCLUSION: gamma>=c_2 u^G, T-bar<=C u^{-L}, gamma T-bar^{-tau-1}>=c_3 u^{G+(tau+1)L}, t_flat>=c_4 u^J, Xi-bar<=C u^{-X}, lambda_flat>=c_11 u^H, hence eps_adm^flat>=c' u^{2H+a_C}
CONSTANT_SCOPE: c' with the same dependence as in Proposition adm-budget
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:adm-budget, stepP:p11a:ab-gamma, stepP:p11a:ab-T0, stepP:p11a:ab-t0, stepP:p11a:ab-lam, bpP:p11a:thresholds, bpP:p11a:schedule-consts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:adm-budget | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | hypotheses, exponents and the structure of the proof
EDGE: stepP:p11a:ab-gamma | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | gamma>=c_2 u^G
EDGE: stepP:p11a:ab-T0 | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | T_0-type bound
EDGE: stepP:p11a:ab-t0 | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | collar and Xi bound
EDGE: stepP:p11a:ab-lam | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | three terms of lambda_max bounded below
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | T-bar, t_flat, Xi-bar, lambda_flat
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | A_0 is used explicitly in the logarithmic cutoff bound and its data-only constant; these constants are defined by schedule-consts
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-delta-P-ad
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Validation

- Baseline structural checker: 75 nodes, 381 edges, 134 coverage items, 0 problems, 0 TODO records (not counted: --structural).
- Final checks PASS: exact scope, dependency/EDGE pairing, prerequisite IDs, locator bounds, unchanged fields and packet hashes, source pins and report whitespace. The in-memory result has 8 deletions and 3 replacements with no surviving dangling reference to a deleted node, and the retained scoped nodes remain reachable.
- Only this report and P-p11a3-delta2.md are written. No packet, source, SPEC, frozen file or manifest edit; no Lean or state-changing git command.

Packet snapshot SHA-256:

- P-p11a45.nodes.md: `9e8e5ca9289e791b5392cfde3adfc1134d2d9e53840342d85fd346358b0f53ac`.
- P-p11a45.coverage.md: `603c6323c30fa88d2cbd597511179f7142f30cd735a82da5d1c02e2eb4012cf6`.
