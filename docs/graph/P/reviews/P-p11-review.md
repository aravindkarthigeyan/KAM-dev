# P-p11 slice topology review

Reviewer: `sol-review-P-v`. Marker: `rev-P-v`. Verdict: **FAIL**.

HEAD at report: `4508821a8446130662b3efc449981289f66e839e`. Source-only review; no Lean proof-completion claim.

Reviewed all **63 existing nodes**: **33 FAIL**, **30 PASS**; all **85 existing coverage items**. Added two required external NODE blocks (`e4`, `e5`) and five individual external coverage ITEMs, retaining the writer-ruled e1-e3 exclusions. Only this report is edited.

## Scope and evidence

Read REVIEW-BRIEF in full and the current SPEC, including the P-FIXED revision and the final Part 11 external ruling. P-FIXED is a current seventh root, so no Part 11 result is excluded on the obsolete deferral ground. Read the entire Part 11 source L1-273, the node/coverage packets, the directly cited supplier statements (including imported K/N statements at their owning blueprint locators), and the source of the added Weierstrass input. Read the named frozen definition bodies (Phase, fixedHamiltonian, circularPoint, circularTube, IsPhysicalTorus, IsDiophantine and symplecticForm) and manifest identities only. No implementation, provider, Lean theorem proof body or manifest state was used.

## Main findings

1. **Required external inputs.** e4/e5 are missing. The replacements add their complete contracts and the nine requested consumer links. The external-paragraph coverage is stale and the individual external labels need dispositions.
2. **Alias exactness.** e3 is an actual Heine-Cantor alias. N C.1 is a first-derivative bound, whereas e2 also states all-order coefficient estimates; the affected consumers now also cite K holomorphic-analytic(a), which actually states the coefficient bound. The e1 alias is a substantive direction mismatch: K Part 1 L296-L312 starts with a holomorphic function and derives analyticity/restriction. It does not assert real-analytic complexification or the identity theorem requested at L16/L75. The binding EXCLUDED classification is kept; hc-rot exposes a SOURCE_GAP rather than inventing another external or silently enlarging the import.
3. **A second unrepresented bridge.** hc-mean invokes an order-four radial Schwarz estimate at L83. The cited N first-derivative Cauchy statement does not supply it. The replacement retains the source output and exposes the precise unavailable input. pa-series also needs the already imported Weierstrass contract for its explicit holomorphic-limit use.
4. **Direct uses and source fields.** Missing weighted-norm, fast-parameter, product-chart, coefficient and higher-Cauchy dependencies are restored only at their actual consumers. The two-planet data package is removed from the general-n physical setting: L42 only refers to its index notation. The generic polar-average lemma uses Theta^(1), not the epsilon-specific shell package. Material domain guards and quantitative displacement statements are restored, and the B2 ratio transcription is corrected.

## The requested direction and supplied-bridge checks

- **kam-input / wrapper: PASS direction.** The input is a cited theorem package depending on the 11a providers; wrapper and wr-kam consume it. The L25 mention of its eventual wrapper use is a forward pointer and supplies no reverse edge. The provider statements match the squared amount, period-one primary maps, fixed-data lower budget and displacement power used here.
- **wr-nu / wr-tube: PASS direction.** wr-nu chooses a small threshold satisfying requirements listed later; it does not use the later existence or tube-inclusion conclusion. wr-tube consumes that threshold and the KAM action bounds. Its edge to wr-nu is valid; restoring wr-nu -> wr-tube would create the source-order cycle through wr-kam. The actual small-power estimates are now directly connected to e4.
- **ab-der / ab-prod: PASS direction.** L126 is a forward reference specifying where the derivative estimates will be used. Products consumes the derivative bounds at L127; the reverse dependency is absent, correctly. The missing local weighted-norm links are separate failures.
- **aniso-avg supplied bridge: acceptable source modelling after non-use-edge correction.** This is a new blueprint proof by replay of Part 2, not a verbatim application of its isotropic statement. L140 gives the replacement block bracket and field estimates, identifies the arbitrary-norm flow API, names oi-transfer for the other proof transfers, fixes every blockwise loss and the common radius ratio, and retains the divisor condition on all V. L141 treats both first-step cases and the quadratic g-bound. The cited oi-transfer itself explains which proofs use only the bracket/field geometry. Thus L143 records a paper gap for which the blueprint gives a bridge, not an additional unproved source result. N bracket and vf-bound are expressly replaced, so their non-use edges are deleted. The other proof-replay dependencies are retained. The wording that all these N statements are literally arbitrary-norm statements is inaccurate (only flow is); it is not used to waive the R1-R3 proof adaptation. This review does not certify a future Lean implementation of the replay.

## Node verdicts

All spans below refer to `blueprint-P/parts/p11-cp09-preparation.tex`; both statement and proof/EDGE spans were re-read.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p11:kam-input | FAIL | L24-L38 | The A2 derivative bound quantifies c on the Euclidean unit sphere, omitted from the current field. |
| bpP:p11:norm-dict | PASS | L46-L48 / L49-L51 | Statement, direct uses and locators match. |
| stepP:p11:nd | PASS | L50-L50 | Statement, direct uses and locators match. |
| bpP:p11:select | PASS | L53-L55 / L56-L60 | Statement, direct uses and locators match. |
| stepP:p11:sel-hyp | PASS | L57-L57 | Statement, direct uses and locators match. |
| stepP:p11:sel-gam | PASS | L58-L58 | Statement, direct uses and locators match. |
| stepP:p11:sel-int | PASS | L59-L59 | Statement, direct uses and locators match. |
| bpP:p11:holo-chart | FAIL | L63-L73 / L74-L84 | Missing direct bpP:p7:product-def use at L67: the product chart Psi^(n) and its domain O_n. Missing direct bpP:p8:coeffs use at L71: the secular constant C_0 and coefficient matrix Q_h. The complex rotation carrier, its two operator bounds, T_1 and O_c are substantive statement data at L67 and must be retained. |
| stepP:p11:hc-rot | FAIL | L75-L75 | The cited K statement goes from holomorphic maps to analytic maps/restrictions; it does not supply real-to-complex extension or persistence of identities. Do not turn simplicity, obtained from the good patch, into an extra assumption of the complexification step. |
| stepP:p11:hc-lift | PASS | L76-L78 | Statement, direct uses and locators match. |
| stepP:p11:hc-strip | FAIL | L79-L79 | Missing direct I:bpI:p7:x-hol use at L79: the principal inverse square root is holomorphic where Re s_ij>0. |
| stepP:p11:hc-F | PASS | L80-L80 | Statement, direct uses and locators match. |
| stepP:p11:hc-id | FAIL | L81-L81 | Missing direct bpP:p11:sec-A#data use at L81: the working Hamiltonian h tilde(J)=h(J/2pi). Missing direct bpP:p7:product-def use at L81: the product chart Psi^(n) and its domain O_n. |
| stepP:p11:hc-lat | FAIL | L82-L82 | Missing direct bpP:p7:product-def use at L82: the product chart Psi^(n) and its domain O_n. |
| stepP:p11:hc-mean | FAIL | L83-L83 | Missing direct bpP:p11:sec-conv#data use at L83: the weighted Fourier norm and its parameterwise convention are used explicitly. Missing direct bpP:p8:coeffs use at L83: the secular constant C_0 and coefficient matrix Q_h. The radial Schwarz step at L83 must be exposed instead of being silently attributed to a first-derivative Cauchy estimate. |
| bpP:p11:total-chart | PASS | L86-L88 / L89-L92 | Statement, direct uses and locators match. |
| stepP:p11:tc-polar | PASS | L90-L90 | Statement, direct uses and locators match. |
| stepP:p11:tc-lat | PASS | L91-L91 | Statement, direct uses and locators match. |
| bpP:p11:avg-fast | FAIL | L102-L108 / L109-L114 | Record the quantitative displacement clauses of L107, rather than only the words displacement bounds. |
| stepP:p11:af-apply | PASS | L110-L110 | Statement, direct uses and locators match. |
| stepP:p11:af-o1 | PASS | L111-L111 | Statement, direct uses and locators match. |
| stepP:p11:af-o2 | FAIL | L112-L112 | Missing direct bpP:p11:e4 use at L112: the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate. |
| stepP:p11:af-concl | FAIL | L113-L113 | Missing direct bpP:p11:sec-conv#data use at L113: the weighted Fourier norm and its parameterwise convention are used explicitly. |
| bpP:p11:aniso-bracket | FAIL | L120-L124 / L125-L128 | The field clause needs its stated holomorphic phi and finite norm; rho_* must be defined. The particular blockwise scaled norm is part of the field estimate consumed by the proof replay. |
| stepP:p11:ab-der | FAIL | L126-L126 | Missing direct bpP:p11:sec-conv#data use at L126: the weighted Fourier norm and its parameterwise convention are used explicitly. |
| stepP:p11:ab-prod | FAIL | L127-L127 | Missing direct bpP:p11:sec-conv#data use at L127: the weighted Fourier norm and its parameterwise convention are used explicitly. |
| bpP:p11:aniso-avg | PASS | L130-L138 / L139-L142 | The named proof replay supplies the rectangular bridge; no additional premise or opaque dependency is inserted. See the dedicated analysis above. |
| stepP:p11:aa-same | FAIL | L140-L140 | Missing direct bpP:p11:sec-conv#data use at L140: the weighted Fourier norm and its parameterwise convention are used explicitly. R1 explicitly replaces the old isotropic bracket estimate; it is not an additional prerequisite. R2 explicitly replaces the old isotropic field bound by aniso-bracket; it is not an additional prerequisite. |
| stepP:p11:aa-quad | FAIL | L141-L141 | Missing direct bpP:p11:sec-conv#data use at L141: the weighted Fourier norm and its parameterwise convention are used explicitly. |
| bpP:p11:polar-avg | FAIL | L155-L163 / L164-L168 | The generic polar-average lemma uses the formula Theta^(1), not the epsilon-dependent averaging shell. Missing direct bpP:p11:total-chart use at L159: Pi is the generic polar formula Theta^(1). |
| stepP:p11:pa-taylor | FAIL | L165-L165 | Missing direct K:bp:p1:holomorphic-analytic use at L165: part (a) supplies the polydisc Taylor-coefficient bound and hence the multi-index Cauchy bounds. |
| stepP:p11:pa-mono | FAIL | L166-L166 | Missing direct bpP:p11:e5 use at L166: the parity of trigonometric moments and/or termwise integration of the uniformly convergent Taylor series. The generic polar-average lemma uses the formula Theta^(1), not the epsilon-dependent averaging shell. Missing direct bpP:p11:total-chart use at L166: the explicit componentwise polar formula Theta^(1). |
| stepP:p11:pa-series | FAIL | L167-L167 | Missing direct bpP:p11:e5 use at L167: the parity of trigonometric moments and/or termwise integration of the uniformly convergent Taylor series. Missing direct I:bpI:p7:x-weier use at L167: normal convergence of holomorphic partial sums gives holomorphy of A G. |
| bpP:p11:avg-slow | FAIL | L170-L179 / L180-L185 | Restore the derivative-domain guard at L173 and the distinct displacement powers at L177, which later consumers use. |
| stepP:p11:as-osc | FAIL | L181-L181 | Missing direct bpP:p11:sec-conv#data use at L181: the weighted Fourier norm and its parameterwise convention are used explicitly. Missing direct K:bp:p1:holomorphic-analytic use at L181: part (a) supplies the polydisc Taylor-coefficient bound and hence the multi-index Cauchy bounds. |
| stepP:p11:as-nr | FAIL | L182-L182 | Missing direct bpP:p11:e4 use at L182: the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate. Missing direct bpP:p11:sec-C#data use at L182: s_1, D_1 prime or alpha_1 from the fast-averaging parameter package is used by name. |
| stepP:p11:as-b2 | FAIL | L183-L183 | Missing direct bpP:p11:e4 use at L183: the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate. The existing field accidentally identifies the ratio with the denominator; L183 states the denominator formula, then estimates the ratio. |
| stepP:p11:as-concl | PASS | L184-L184 | Statement, direct uses and locators match. |
| bpP:p11:prepared | FAIL | L196-L204 / L205-L212 | The J-derivative closeness at L201 is asserted only on the stated real J/rho range; the current field omits that range. |
| stepP:p11:pr-basic | FAIL | L206-L206 | Missing direct bpP:p11:sec-C#data use at L206: s_1, D_1 prime or alpha_1 from the fast-averaging parameter package is used by name. |
| stepP:p11:pr-a | FAIL | L207-L207 | Missing direct bpP:p11:sec-conv#data use at L207: the weighted Fourier norm and its parameterwise convention are used explicitly. |
| stepP:p11:pr-in | FAIL | L208-L208 | Missing direct K:bp:p1:holomorphic-analytic use at L208: part (a) supplies the polydisc Taylor-coefficient bound and hence the multi-index Cauchy bounds. |
| stepP:p11:pr-b | FAIL | L209-L209 | Missing direct bpP:p11:e4 use at L209: the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate. Missing direct N:bpN:p4:general-cauchy use at L209: the additional rho-derivative of Z hat is estimated on a fixed-radius Cauchy disc. |
| stepP:p11:pr-c | PASS | L210-L210 | Statement, direct uses and locators match. |
| stepP:p11:pr-d | FAIL | L211-L211 | Missing direct bpP:p11:e4 use at L211: the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate. |
| bpP:p11:amount | PASS | L214-L217 / L218-L222 | Statement, direct uses and locators match. |
| stepP:p11:am-norm | PASS | L219-L219 | Statement, direct uses and locators match. |
| stepP:p11:am-dir | PASS | L220-L220 | Statement, direct uses and locators match. |
| stepP:p11:am-scale | PASS | L221-L221 | Statement, direct uses and locators match. |
| bpP:p11:forward-tube | FAIL | L230-L232 / L233-L235 | Missing direct bpP:p7:product-def use at L231: the product chart Psi^(n) and its domain O_n. |
| bpP:p11:wrapper | PASS | L237-L241 / L247-L254 | Statement, direct uses and locators match. |
| bpP:p11:data-star | PASS | L243-L245 | Statement, direct uses and locators match. |
| stepP:p11:wr-nu | FAIL | L248-L248 | Missing direct bpP:p11:e4 use at L248: the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate. |
| stepP:p11:wr-kam | PASS | L249-L249 | Statement, direct uses and locators match. |
| stepP:p11:wr-chain | PASS | L250-L250 | Statement, direct uses and locators match. |
| stepP:p11:wr-tor | PASS | L251-L251 | Statement, direct uses and locators match. |
| stepP:p11:wr-meas | PASS | L252-L252 | Statement, direct uses and locators match. |
| stepP:p11:wr-tube | FAIL | L253-L253 | Missing direct bpP:p11:e4 use at L253: the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate. Missing direct bpP:p11:sec-C#data use at L253: s_1, D_1 prime or alpha_1 from the fast-averaging parameter package is used by name. |
| bpP:p11:sec-conv#data | PASS | L10-L12 | Statement, direct uses and locators match. |
| bpP:p11:sec-A#data | FAIL | L42-L44 | L42 cites the Part 12 index shift as notation only. Its n=2 physical package is not a prerequisite of the general-n setting. |
| bpP:p11:sec-C#data | PASS | L96-L100 | Statement, direct uses and locators match. |
| bpP:p11:sec-D#data | PASS | L145-L153 | Statement, direct uses and locators match. |
| bpP:p11:sec-E#data | PASS | L189-L194 | Statement, direct uses and locators match. |
| bpP:p11:e4 | FAIL | L19 | Missing required external NODE; complete addition below. |
| bpP:p11:e5 | FAIL | L20 | Missing required external NODE; complete addition below. |

## Failing coverage items

| ID | Verdict | Span | Reason |
|---|---|---|---|
| p11:prose-L14-L22 | FAIL | L14-L22 | The reason says the SPEC admits no p11 externals and leaves e4/e5 without nodes; this is superseded by the latest writer ruling. |
| bpP:p11:e1 | FAIL | L16-L16 | Missing individual coverage for the labelled external; add the complete item below. |
| bpP:p11:e2 | FAIL | L17-L17 | Missing individual coverage for the labelled external; add the complete item below. |
| bpP:p11:e3 | FAIL | L18-L18 | Missing individual coverage for the labelled external; add the complete item below. |
| bpP:p11:e4 | FAIL | L19-L19 | Missing individual coverage for the labelled external; add the complete item below. |
| bpP:p11:e5 | FAIL | L20-L20 | Missing individual coverage for the labelled external; add the complete item below. |

all other coverage items PASS

The sourcegap at L143 is correctly mapped to aniso-avg/aa-same/aa-quad. The administrative r-cp-2/displacement remarks and introduction/deviation/consumer paragraphs have no independent proof use. Section data A/C/D/E are present and mapped; the failures above concern their direct consumers, not their inventory.

## Replacements for slice P-p11

### P-p11 — required external nodes

```text
NODE: bpP:p11:e4
KIND: external
TITLE: Logarithmic asymptotics
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:e4@L19-L19
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11:e4
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: epsilon in (0,exp(-1)]; a>0 and b>=0 for the limit
SOURCE_QUANTIFIERS: epsilon; fixed real a>0 and b>=0
SOURCE_CONCLUSION: log(1/epsilon)>=1; epsilon^a (log(1/epsilon))^b tends to 0 as epsilon tends to 0 through positive values
CONSTANT_SCOPE: no chosen constant
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-v
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: Track-P external authorized by the SPEC writer ruling of 2026-10-28 after P-p11 extraction.
```

```text
NODE: bpP:p11:e5
KIND: external
TITLE: Termwise integration and trigonometric moments
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:e5@L20-L20
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11:e5
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a,b are nonnegative integers; for termwise integration a series of integrable functions converges uniformly on the compact integration interval
SOURCE_QUANTIFIERS: a,b in N; uniformly convergent series on the integration interval
SOURCE_CONCLUSION: the integral of the uniformly convergent series is the sum of its termwise integrals; int_0^1 sin(2pi t)^a cos(2pi t)^b dt=0 unless a and b are both even, and its absolute value is at most 1
CONSTANT_SCOPE: no chosen constant
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-v
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: Track-P external authorized by the SPEC writer ruling of 2026-10-28 after P-p11 extraction.
```


### P-p11 — bpP:p11:kam-input

```text
NODE: bpP:p11:kam-input
KIND: definition
TITLE: Quantitative KAM input, in the form in which it is used
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:kam-input@L24-L38
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11:kam-input
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N = 2n and the squared convention rho = 2 of Definition bpP:p11a:index-def; a KAM datum d = (mu, beta, K, theta, s, M, M_0, C_1, tau_D, eps^*) with mu in N_>=1, theta, s in (0,1], C_1 >= 1, M_0 > 0, K in R^N compact with d = diam K, eps^* in (0, meas K), 0 < beta <= min{1, M}, tau_D > max{N mu/2 - 1, N - 1}; H = h(r) + f(theta, r) on T_s x U, U = K + 2 theta, d-admissible (Assumption bpP:p11a:sel-data): holomorphic, f 1-periodic in theta, real, and with omega = grad h (A1) beta_{2,mu}(omega, K) >= beta; (A2) ¦D^k g_2[omega](c, y)¦ <= M (c in S^{N-1}, 1 <= k <= mu + 1, y in K_theta, M >= beta); (A3) ¦D omega¦ <= C_1 on U; (A4) ¦¦omega¦¦^mu_dg <= M_0 on K_theta
SOURCE_QUANTIFIERS: for every d there are gamma > 0 and eps_adm > 0 depending only on d, such that for every d-admissible H with sup¦f¦ <= eps_f <= eps_adm: (K1)-(K6)
SOURCE_CONCLUSION: (K1) a compact H in K with meas H >= meas K - eps^*; (K2) for b in H real analytic K_b : R^N -> R^N x R^N with K_b(theta + k) = K_b(theta) + (k, 0), D K_b injective, K_b^*(dr^dtheta) = 0, injective modulo Z^N, and (gamma, tau_D)-Diophantine w_b with s -> K_b(theta + s w_b) a solution of X_H; (K3) sup¦u_b¦ <= Delta = Delta(eps_f; d); (K4) (b, theta) -> K_b(theta) injective on H x [0,1)^N, image B Borel, meas B >= 2^{-2N} meas H; (K5) lower budget: with all entries but beta fixed there is c_* > 0 with eps_adm >= c_* beta^{B_0}, B_0 = mu(mu + 1) + 2 (for 0 < beta <= min{1, M}); (K6) displacement power: c_D > 0, kappa_D > 0, a_D >= 0 with Delta <= c_D eps_f^{kappa_D} beta^{-a_D} whenever eps_f <= eps_adm and beta in (0, min{1,M}]
CONSTANT_SCOPE: gamma, eps_adm depend only on d (hence on beta through d); c_*, c_D, kappa_D, a_D depend only on the entries of d other than beta; Delta = Delta(eps_f; d)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:weak-kam-quantitative, bpP:p11a:limit-torus, bpP:p11a:displacement, bpP:p11a:evaluation-bilipschitz, bpP:p11a:adm-budget-beta, bpP:p11a:adm-budget, bpP:p11a:budget, bpP:p11a:index-def, bpP:p11a:sel-data, bpP:p11:sec-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:kam-input@L25-L25 | (K1)-(K4) are the quantitative weak KAM theorem
EDGE: bpP:p11a:limit-torus | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:kam-input@L25-L25 | (K2) existence of tori and Diophantine frequencies
EDGE: bpP:p11a:displacement | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:kam-input@L25-L25 | (K3) displacement (and (K6) displacement power)
EDGE: bpP:p11a:evaluation-bilipschitz | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:kam-input@L25-L25 | (K4) injectivity and measure bound
EDGE: bpP:p11a:adm-budget-beta | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:kam-input@L25-L25 | (K5) lower budget Corollary
EDGE: bpP:p11a:adm-budget | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:kam-input@L25-L25 | (K5) equivalently Proposition adm-budget
EDGE: bpP:p11a:budget | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:kam-input@L35-L35 | the monotone minorant eps_adm^flat of File 11a-5, Prop budget (d)
EDGE: bpP:p11a:index-def | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:kam-input@L25-L25 | the amount beta_{2,mu}, rho = 2, N = 2n
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:kam-input@L25-L25 | the notion of d-admissible
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:kam-input@L25-L25 | T_s, polydiscs and the periodic conventions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: a citation with exact interface; the pre-extracted edge to bpP:p11:wrapper is reversed (the wrapper consumes this definition) and deleted here; K6 is stated as a dependency on 11a-4/11a-5 (labels exist; their proofs belong to the 11a slices)
```

### P-p11 — bpP:p11:holo-chart

```text
NODE: bpP:p11:holo-chart
KIND: proposition
TITLE: Holomorphic secular form near the base point
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L63-L73
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L74-L84
CONTRACT_ID: bpP:p11:holo-chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: J_0, gamma_0, tau_0 as in Lemma select; the data of bpP:p11:sec-A#data
SOURCE_QUANTIFIERS: exists r_C in (0,1], sigma_F in (0,1/4], r_z in (0,1], M_F, L, B_rho, B_rho prime >= 1 and F depending only on the data and J_0; J = D(J_0, 2 r_C), z = (x, y) in C^2n
SOURCE_CONCLUSION: (a) F holomorphic on T_{2 sigma_F} x J x B_{r_z}, 1-periodic, real, ¦F¦ <= M_F/coth(pi sigma_F)^n, hence wn(F) <= M_F; omega, Omega tilde holomorphic on J with ¦D^j varpi_J¦ <= L (j <= mu bar+1); (b) the extension varrho:D(Lambda_0,r_C/pi)->O(n,C), Lambda_0=J_0/(2pi), is holomorphic, real with values in SO(n) on the real locus, with norm(varrho)<=B_varrho and norm(varrho^T partial_{Lambda_l}varrho)<=B_varrho_prime there for each l; T_1(theta,J,x,y)=(2pi theta,J/(2pi),x,y); O_c is the real domain J in D(J_0,2r_C), norm(z)<r_z; Psi_c = Psi^(n) o Phi_rho^{-1} o T_1 is a symplectic 1-chart on O_c with values in the collision-free domain and H_fix(Psi_c(theta, J, z)) = h tilde(J) + eps F(theta, J, z) for all real eps; symplectic form dJ^dtheta + dy^dx; (c) Psi_c satisfies (Q1)-(Q2) of bpP:p1:torus-transport for iota_k = ((k,0),0), sigma_k = 0; (d) F_0 = theta-average is holomorphic on J x B_{r_z} and F_0 = C(J) + sum Omega_j(J)(x_j^2 + y_j^2)/2 + R_4, ¦R_4¦ <= M_F(¦z¦/r_z)^4, C(J) = C_0(a(J/2pi)), Omega_j = 2 pi Omega tilde_j
CONSTANT_SCOPE: all constants depend only on the data and J_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:hc-rot, stepP:p11:hc-lift, stepP:p11:hc-strip, stepP:p11:hc-F, stepP:p11:hc-id, stepP:p11:hc-lat, stepP:p11:hc-mean, bpP:p11:select, bpP:p11:sec-A#data, bpP:p11:sec-conv#data, bpP:p7:product-chart, bpP:p9:lift, bpP:p9:local-analytic, bpP:p6:domain, bpP:p0:hamsymp#symplecticForm, bpP:p0:fixham#fixedHamiltonian, bpP:p1:torus-transport, bpP:p7:product-def, bpP:p8:coeffs
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:hc-rot | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L75-L75 | proof step
EDGE: stepP:p11:hc-lift | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L76-L76 | proof step
EDGE: stepP:p11:hc-strip | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L79-L79 | proof step
EDGE: stepP:p11:hc-F | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L80-L80 | proof step
EDGE: stepP:p11:hc-id | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L81-L81 | proof step
EDGE: stepP:p11:hc-lat | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L82-L82 | proof step
EDGE: stepP:p11:hc-mean | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L83-L83 | proof step
EDGE: bpP:p11:select | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L64-L64 | J_0, gamma_0, tau_0
EDGE: bpP:p11:sec-A#data | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L64-L64 | the data, Lambda_0, rho_*, the patch
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L66-L66 | the weighted norm wn(F)
EDGE: bpP:p7:product-chart | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L67-L67 | the chart Psi^(n)
EDGE: bpP:p9:lift | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L67-L67 | the rotation chart Phi_rho
EDGE: bpP:p9:local-analytic | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L67-L67 | the analytic rotation rho diagonalising Q_h
EDGE: bpP:p6:domain | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L67-L67 | the collision-free domain
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L67-L67 | the frozen symplectic form
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L67-L67 | H_fix
EDGE: bpP:p1:torus-transport | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L68-L68 | (Q1)-(Q2)
EDGE: bpP:p7:product-def | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L67-L67 | the product chart Psi^(n) and its domain O_n
EDGE: bpP:p8:coeffs | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:holo-chart@L71-L71 | the secular constant C_0 and coefficient matrix Q_h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the reference to bpP:p8:same-jets (L71, both models give this form) is a comparison and deleted; the reference to Lemma bpP:p11:total-chart (L68) is a forward pointer and deleted
```

### P-p11 — stepP:p11:hc-rot

```text
NODE: stepP:p11:hc-rot
KIND: step
TITLE: Rotation and its extension
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-rot@L75-L75
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-rot@L75-L75
CONTRACT_ID: stepP:p11:hc-rot
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed physical data and selected J_0 of holo-chart (L64); the good patch and real analytic simple-spectrum setting are supplied by interface and select through DEPS
SOURCE_QUANTIFIERS: Lambda_0 = J_0/2pi
SOURCE_CONCLUSION: sigma_j, rho real analytic on D_R(Lambda_0, t_1), rho extends holomorphically to D(Lambda_0, t_2) with values in O(n, C) (SO(n) at real points); r_C <= min{pi t_2/2, pi rho_*/8}; B_rho = sup ¦rho¦, B_rho prime = max_l sup ¦rho^T d_l rho¦ on D(Lambda_0, r_C/pi), enlarged to >= 1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:interface, bpP:p9:local-analytic, bpP:p11:select, bpP:p11:sec-A#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:interface | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-rot@L75-L75 | simple spectrum of Q_h (a)
EDGE: bpP:p9:local-analytic | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-rot@L75-L75 | real analytic rotation
EDGE: bpP:p11:select | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-rot@L75-L75 | J_0 in K_J
EDGE: bpP:p11:sec-A#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-rot@L75-L75 | Lambda_0, rho_*
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L75 invokes e1 for holomorphic complexification of the real analytic rotation and for persistence of rho^T rho=1 and det rho=1 on the complex polydisc. The writer classifies e1 as an excluded alias of K:bp:p1:holomorphic-analytic, but that source statement (K Part 1 L296-L312) only starts with a holomorphic map and proves analyticity and real restriction. It does not state the reverse extension or the identity theorem. No such premise or new admitted external is inserted here. The claimed output remains the source output; an exact supporting source input is required.
```

### P-p11 — stepP:p11:hc-strip

```text
NODE: stepP:p11:hc-strip
KIND: step
TITLE: Strip extension of $\hat f_{\rm fix}$
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-strip@L79-L79
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-strip@L79-L79
CONTRACT_ID: stepP:p11:hc-strip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Part 8 holomorphy of f^_fix in w prime in N(rho_*) for real lambda; the data
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: exists sigma prime in (0,1/4] with Re s_ij >= (1/4)(a_j - a_i)^2 for ¦Im lambda¦ <= 2 pi sigma prime and w prime in N(rho_*/2); on this set f^_fix = -G sum m_i m_j s_ij^{-1/2} (principal root) is holomorphic and bounded by c(m, G, a)
CONSTANT_SCOPE: sigma prime depends on rho_* and the data, not on r_z
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:perturbation-analytic, bpP:p7:holomorphic, bpP:p12:f-unif, bpP:p11:sec-A#data, I:bpI:p7:x-hol
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-strip@L79-L79 | holomorphy of f^_fix for real lambda and Re s_ij >= (1/2)(a_j - a_i)^2 (a),(b)
EDGE: bpP:p7:holomorphic | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-strip@L79-L79 | holomorphy and periodicity of s_ij in the strip
EDGE: bpP:p12:f-unif | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-strip@L79-L79 | (e3) uniform continuity on a compact set
EDGE: bpP:p11:sec-A#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-strip@L79-L79 | rho_*, the ordered axes a_i
EDGE: I:bpI:p7:x-hol | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-strip@L79-L79 | the principal inverse square root is holomorphic where Re s_ij>0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:hc-id

```text
NODE: stepP:p11:hc-id
KIND: step
TITLE: (b) Identity and chart
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-id@L81-L81
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-id@L81-L81
CONTRACT_ID: stepP:p11:hc-id
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hc-F; Part 7 chart and Part 9 rotation
SOURCE_QUANTIFIERS: real points of O_c
SOURCE_CONCLUSION: Psi_c maps real points into Psi^(n)(N_R(rho_*) x R^n) in W; H_fix o Psi^(n) = h + eps f^_fix, Phi_rho preserves Lambda, T_1: J -> Lambda = J/2pi, so H_fix(Psi_c) = h tilde(J) + eps F; Psi_c is symplectic and real analytic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:perturbation-analytic, bpP:p7:product-chart, bpP:p9:lift, bpP:p1:typical, bpP:p1:hol-chart, stepP:p11:hc-F, bpP:p0:fixham#fixedHamiltonian, bpP:p11:sec-A#data, bpP:p7:product-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-id@L81-L81 | image in W (a)
EDGE: bpP:p7:product-chart | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-id@L81-L81 | H_fix o Psi = h + eps f^_fix (c) and symplecticity (a)
EDGE: bpP:p9:lift | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-id@L81-L81 | Phi_rho preserves Lambda and is symplectic
EDGE: bpP:p1:typical | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-id@L81-L81 | Remark (3): composition of charts
EDGE: bpP:p1:hol-chart | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-id@L81-L81 | analytic chart from analytic data
EDGE: stepP:p11:hc-F | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-id@L81-L81 | F is real analytic
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-id@L81-L81 | H_fix
EDGE: bpP:p11:sec-A#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-id@L81-L81 | the working Hamiltonian h tilde(J)=h(J/2pi)
EDGE: bpP:p7:product-def | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-id@L81-L81 | the product chart Psi^(n) and its domain O_n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:hc-lat

```text
NODE: stepP:p11:hc-lat
KIND: step
TITLE: (c) Lattice
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-lat@L82-L82
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-lat@L82-L82
CONTRACT_ID: stepP:p11:hc-lat
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi^(n), Phi_rho, T_1 as in the Proposition
SOURCE_QUANTIFIERS: k in Z^n
SOURCE_CONCLUSION: T_1(theta + k, .) = T_1 + (2 pi k, 0, 0, 0); Phi_rho^{-1} commutes with lambda-shifts; Psi^(n) is invariant under 2 pi Z^n-shifts of lambda with injectivity modulo them; T_1, Phi_rho injective: Psi_c satisfies (Q1)-(Q2) with sigma_k = 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:product-chart, bpP:p9:diagonalize, bpP:p9:lift, bpP:p7:product-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:product-chart | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-lat@L82-L82 | periodicity and injectivity modulo shifts (a)
EDGE: bpP:p9:diagonalize | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-lat@L82-L82 | the lattice statement (d)
EDGE: bpP:p9:lift | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-lat@L82-L82 | Phi_rho^{-1} commutes with shifts
EDGE: bpP:p7:product-def | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-lat@L82-L82 | the product chart Psi^(n) and its domain O_n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:hc-mean

```text
NODE: stepP:p11:hc-mean
KIND: step
TITLE: (d) Mean
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-mean@L83-L83
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-mean@L83-L83
CONTRACT_ID: stepP:p11:hc-mean
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hc-F, hc-rot; Part 9 diagonalisation
SOURCE_QUANTIFIERS: z in B_{r_z}
SOURCE_CONCLUSION: F_0 = theta-average of F is holomorphic, equals S_fix(Lambda, rho x, rho y) = C_0 + sum Omega_j R_j + O(¦(x,y)¦^4) and R_4 = F_0 - C - sum Omega_j R_j has vanishing jet to order 3, so ¦R_4¦ <= sup¦R_4¦ (¦z¦/r_z)^4 (Schwarz lemma on lines), enlarging M_F
CONSTANT_SCOPE: M_F enlarged depending on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p4:coefficients, bpP:p9:diagonalize, bpP:p8:evenness, stepP:p11:hc-F, N:bpN:p4:general-cauchy, stepP:p11:hc-rot, bpP:p11:sec-conv#data, bpP:p8:coeffs
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p4:coefficients | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-mean@L83-L83 | the zero Fourier coefficient is holomorphic in the other variables
EDGE: bpP:p9:diagonalize | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-mean@L83-L83 | S_fix(Lambda, rho x, rho y) in the normal form (b)
EDGE: bpP:p8:evenness | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-mean@L83-L83 | even in (xi, eta), no linear term
EDGE: stepP:p11:hc-F | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-mean@L83-L83 | F
EDGE: N:bpN:p4:general-cauchy | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-mean@L83-L83 | Cauchy on B_{r_z}
EDGE: stepP:p11:hc-rot | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-mean@L83-L83 | rho
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-mean@L83-L83 | the weighted Fourier norm and its parameterwise convention are used explicitly
EDGE: bpP:p8:coeffs | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:hc-mean@L83-L83 | the secular constant C_0 and coefficient matrix Q_h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L83 invokes the higher-order Schwarz estimate on complex lines (a holomorphic function with vanishing jet through degree 3 is bounded by its domain supremum times (norm(z)/r_z)^4). The linked N:bpN:p4:general-cauchy is a first-derivative estimate and does not state this radial Schwarz lemma. No admitted input in this slice or its listed dependencies supplies it. The quadratic identity and vanishing-jet inputs are represented; the final bound retains the asserted source conclusion.
```

### P-p11 — bpP:p11:avg-fast

```text
NODE: bpP:p11:avg-fast
KIND: proposition
TITLE: Fast averaging with the secular pairs as spectators
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-fast@L102-L108
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-fast@L109-L114
CONTRACT_ID: bpP:p11:avg-fast
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bpP:p11:sec-C#data; Proposition holo-chart: F, M_F, sigma_F, L
SOURCE_QUANTIFIERS: 0 < eps <= eps_1 with eps_1 in (0,1) depending only on the data
SOURCE_CONCLUSION: (S1) 2^12 (1+n) K_1 eps M_F sigma_F <= alpha_1 d_1 holds and there is a holomorphic injective real symplectic Phi^1_eps : D_1 prime -> D_1 with H o Phi^1 = h tilde + eps G + f_1, H = h tilde + eps F, G = F_0 + eps g bar holomorphic real, sup¦eps g bar¦ <= eta_1(eps) = 400 (1+n) eps M_F^2/(2 pi alpha_1 d_1), wn(f_1) <= (eps M_F)^{nu_1}, and 2pi alpha_1 sigma_F norm(J-J prime)<=3 eps M_F, 2pi alpha_1 s_1 norm(theta-theta prime)<=9 eps M_F, 2pi alpha_1 r_z norm(z-z prime)<=9 eps M_F; eta_1(eps) <= c eps (log 1/eps)^{2 tau_0+1}
CONSTANT_SCOPE: eps_1 and c depend only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:af-apply, stepP:p11:af-o1, stepP:p11:af-o2, stepP:p11:af-concl, bpP:p11:sec-C#data, bpP:p11:holo-chart, bpP:p11:sec-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:af-apply | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-fast@L110-L110 | proof step
EDGE: stepP:p11:af-o1 | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-fast@L111-L111 | proof step
EDGE: stepP:p11:af-o2 | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-fast@L112-L112 | proof step
EDGE: stepP:p11:af-concl | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-fast@L113-L113 | proof step
EDGE: bpP:p11:sec-C#data | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-fast@L103-L103 | K_1, alpha_1, s_1, d_1, D_1, D_1 prime
EDGE: bpP:p11:holo-chart | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-fast@L104-L104 | F, F_0, M_F, sigma_F
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-fast@L106-L106 | the weighted norm of f_1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:af-o2

```text
NODE: stepP:p11:af-o2
KIND: step
TITLE: (O2) is (S1)
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-o2@L112-L112
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-o2@L112-L112
CONTRACT_ID: stepP:p11:af-o2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: polynomial dependence of K_1, alpha_1^{-1}, d_1^{-1} on log(1/eps)
SOURCE_QUANTIFIERS: eps small
SOURCE_CONCLUSION: (O2) is (S1): K_1 eps M_F sigma_F/(alpha_1 d_1) -> 0 (by the elementary (e4)), eps_1 the largest value with (S1) and kappa_1 >= 6 for all smaller eps
CONSTANT_SCOPE: eps_1 depends only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11:sec-C#data, bpP:p11:holo-chart, bpP:p11:e4
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11:sec-C#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-o2@L112-L112 | K_1, alpha_1, d_1
EDGE: bpP:p11:holo-chart | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-o2@L112-L112 | M_F, sigma_F
EDGE: bpP:p11:e4 | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-o2@L112-L112 | the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Uses the writer-authorized logarithmic asymptotic external bpP:p11:e4; no elementary input is left unrepresented.
```

### P-p11 — stepP:p11:af-concl

```text
NODE: stepP:p11:af-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-concl@L113-L113
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-concl@L113-L113
CONTRACT_ID: stepP:p11:af-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Part 2 conclusion; af-apply, af-o1, af-o2
SOURCE_QUANTIFIERS: data of bpP:p11:sec-C#data
SOURCE_CONCLUSION: Phi^1_eps and H o Phi^1 = h tilde + g + f_*, g independent of theta, ¦¦g - f^_0¦¦ <= 400 b E^2/(alpha-bar d); put eps^2 g bar = g - eps F_0, f_1 = f_*, ¦¦f_*¦¦ <= e^{-kappa_1/6} E = (eps M_F)^{nu_1}; displacement bounds; the sup bound for eps g bar is sup-weighted (a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:osc-averaging, stepP:p11:af-apply, stepP:p11:af-o1, stepP:p11:af-o2, N:bpN:p4:sup-weighted, bpP:p11:sec-C#data, bpP:p11:sec-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:osc-averaging | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-concl@L113-L113 | conclusion of the proposition
EDGE: stepP:p11:af-apply | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-concl@L113-L113 | application
EDGE: stepP:p11:af-o1 | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-concl@L113-L113 | hypothesis (O1)
EDGE: stepP:p11:af-o2 | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-concl@L113-L113 | hypothesis (O2)
EDGE: N:bpN:p4:sup-weighted | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-concl@L113-L113 | sup bound from weighted norm (a)
EDGE: bpP:p11:sec-C#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-concl@L113-L113 | alpha-bar = 2 pi alpha_1, s_1
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:af-concl@L113-L113 | the weighted Fourier norm and its parameterwise convention are used explicitly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — bpP:p11:aniso-bracket

```text
NODE: bpP:p11:aniso-bracket
KIND: lemma
TITLE: Blockwise bracket and field estimates
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:aniso-bracket@L120-L124
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:aniso-bracket@L125-L128
CONTRACT_ID: bpP:p11:aniso-bracket
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n = n_1 + n_2; radii r^0_(j) >= r_(j) > rho_(j) > 0; V^0 > V > V - rho products of polydiscs; 0 < sigma < s <= s_0; u holomorphic on T_{s_0} x V^0, w on T_s x V with finite weighted norms; rho_*:=min_j rho_(j); for the field clause phi is holomorphic on T_s x V with finite weighted norm
SOURCE_QUANTIFIERS: blocks j = 1, 2
SOURCE_CONCLUSION: the bracket estimate ¦¦{u, w}¦¦_{V-rho, s-sigma} <= (nu_theta + nu_I)/(e rho_* sigma) ¦¦u¦¦ ¦¦w¦¦ with nu_theta = sigma/(s_0 - s + sigma), nu_I = rho_*/min_j(r^0_(j) - r_(j) + rho_(j)) <= 1, and the vector field estimate nu(X_phi) <= ¦¦phi¦¦/(rho_* sigma) for nu(a,b)=max{norm(a)/sigma, max_j norm(b_(j))/rho_(j)}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:ab-der, stepP:p11:ab-prod, bpP:p11:sec-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:ab-der | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:aniso-bracket@L126-L126 | proof step
EDGE: stepP:p11:ab-prod | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:aniso-bracket@L127-L127 | proof step
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:aniso-bracket@L121-L121 | the weighted norm
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:ab-der

```text
NODE: stepP:p11:ab-der
KIND: step
TITLE: Coordinate derivatives
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:ab-der@L126-L126
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:ab-der@L126-L126
CONTRACT_ID: stepP:p11:ab-der
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Cauchy estimates at fixed parameter; the setting of the Lemma
SOURCE_QUANTIFIERS: I in V - rho
SOURCE_CONCLUSION: sum_i ¦¦d_{theta_i} u¦¦_{s-sigma} <= ¦¦u¦¦_{s_0}/(e(s_0 - s + sigma)); max_i ¦d_{I_i} w¦ <= ¦¦w¦¦/rho_*; for u the action Cauchy disc has radius >= r^0_(j) - r_(j) + rho_(j)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p4:cauchy, bpP:p11:sec-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p4:cauchy | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:ab-der@L126-L126 | angular and action Cauchy estimates (a),(b)
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:ab-der@L126-L126 | the weighted Fourier norm and its parameterwise convention are used explicitly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the pre-extracted edge to stepP:p11:ab-prod is reversed (ab-prod uses these derivative bounds; ab-der only points to it)
```

### P-p11 — stepP:p11:ab-prod

```text
NODE: stepP:p11:ab-prod
KIND: step
TITLE: Products
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:ab-prod@L127-L127
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:ab-prod@L127-L127
CONTRACT_ID: stepP:p11:ab-prod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: derivative bounds of step ab-der; algebra property at fixed I
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: ¦¦{u, w}¦¦ <= (sum ¦¦d_theta u¦¦) max ¦d_I w¦ + max ¦d_I u¦ (sum ¦¦d_theta w¦¦) <= ¦¦u¦¦¦¦w¦¦/e (1/((s_0 - s + sigma) rho_*) + 1/(min_j(...) sigma)); and the field bound by ¦¦phi¦¦/(rho_* sigma)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p4:algebra, stepP:p11:ab-der, bpP:p11:sec-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p4:algebra | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:ab-prod@L127-L127 | algebra property of the weighted norm
EDGE: stepP:p11:ab-der | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:ab-prod@L127-L127 | the derivative estimates
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:ab-prod@L127-L127 | the weighted Fourier norm and its parameterwise convention are used explicitly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:aa-same

```text
NODE: stepP:p11:aa-same
KIND: step
TITLE: The proof of Part 2, with the named replacements
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140
CONTRACT_ID: stepP:p11:aa-same
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Proposition p2:nfb and its proof ingredients; Lemma aniso-bracket
SOURCE_QUANTIFIERS: data of Lemma aniso-avg
SOURCE_CONCLUSION: the proof of Proposition p2:nfb goes through with the replacements (R1) bracket by aniso-bracket, (R2) the N-estimates by the same statements for the scaled norm nu, (R3) alpha-bar rho sigma by alpha-bar rho_* sigma with blockwise losses (step 0: rho_(j),0 = r_(j)/8, sigma_0 = s/6; steps i >= 1: rho_(j) = r_(j)/(8N prime)); the inductive inequalities and displacement bounds are unchanged with r -> r_*
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:nfb, bpP:p2:direct, bpP:p2:split, bpP:p11:aniso-bracket, bpP:p2:osc-iter, stepP:p2:oi-transfer, stepP:p2:nfb-ind, stepP:p2:nfb-disp, N:bpN:p5:flow, N:bpN:p5:composition, N:bpN:p5:transform, N:bpN:p5:canonical-map, N:bpN:p6:homological, N:bpN:p6:iterative, N:bpN:p6:telescope, N:bpN:p6:setting, bpP:p11:sec-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:nfb | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | the proof replayed
EDGE: bpP:p2:direct | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | ingredient
EDGE: bpP:p2:split | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | ingredient: homological solution bounds
EDGE: bpP:p11:aniso-bracket | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | replacement (R1)
EDGE: bpP:p2:osc-iter | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | the list of changes (R2) as in Lemma osc-iter
EDGE: stepP:p2:oi-transfer | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | transfer to a scaled norm
EDGE: stepP:p2:nfb-ind | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | inductive inequalities
EDGE: stepP:p2:nfb-disp | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | displacements
EDGE: N:bpN:p5:flow | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | (R2) replaced
EDGE: N:bpN:p5:composition | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | (R2) replaced
EDGE: N:bpN:p5:transform | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | (R2) replaced
EDGE: N:bpN:p5:canonical-map | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | (R2) replaced
EDGE: N:bpN:p6:homological | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | ingredient
EDGE: N:bpN:p6:iterative | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | ingredient
EDGE: N:bpN:p6:telescope | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | ingredient
EDGE: N:bpN:p6:setting | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | weights of the norm
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-same@L140-L140 | the weighted Fourier norm and its parameterwise convention are used explicitly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The anisotropic result is proved here by replaying the cited proofs with R1-R3, not by instantiating their isotropic statements verbatim. Only flow is literally stated for an arbitrary complex norm; the other geometry is transferred using aniso-bracket and the named oi-transfer argument. The replaced isotropic bracket and field estimates have no dependency edges.
```

### P-p11 — stepP:p11:aa-quad

```text
NODE: stepP:p11:aa-quad
KIND: step
TITLE: The quadratic bound for $g$
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-quad@L141-L141
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-quad@L141-L141
CONTRACT_ID: stepP:p11:aa-quad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Case A of step nfb-first with y_0 = 48 E/(alpha-bar_2 r_* s); aa-same
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: eps_1 = ¦¦f_1¦¦ <= (8/7)(1 + 2/e) y_0 E <= 96 E^2/(alpha-bar_2 r_* s) and ¦¦g - g_0¦¦ <= (4/3) eps_1 <= 128 E^2/(alpha-bar_2 r_* s); in Case B g = f^_0; hence wn(g - f^_0) <= 130 E^2/(alpha-bar_2 r_* s)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p2:nfb-first, stepP:p2:nfb-concl, stepP:p11:aa-same, bpP:p11:sec-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p2:nfb-first | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-quad@L141-L141 | Case A of Part 2
EDGE: stepP:p2:nfb-concl | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-quad@L141-L141 | conclusion step of Part 2
EDGE: stepP:p11:aa-same | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-quad@L141-L141 | the initial losses y_0 of the modified proof
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:aa-quad@L141-L141 | the weighted Fourier norm and its parameterwise convention are used explicitly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — bpP:p11:polar-avg

```text
NODE: bpP:p11:polar-avg
KIND: lemma
TITLE: Polar average
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:polar-avg@L155-L163
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:polar-avg@L164-L168
CONTRACT_ID: bpP:p11:polar-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < r <= 1, S > 0, D open in C^n, G : D x B_r -> C holomorphic with ¦G¦ <= S; Pi = Theta^(1) of the polar shell
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: exists holomorphic AG on D x D(0, pi r^2/4) with (a) ¦AG¦ <= 2^{2n} S; (b) for real zeta, Re rho tilde_j > 0, ¦rho tilde_j¦ < pi r^2/4: int G(J, Pi(zeta, rho tilde)) dzeta = AG(J, rho tilde); (c) if Taylor coefficients of degree < k vanish then ¦AG¦ <= 2^{2n} S (4¦rho tilde¦/(pi r^2))^{ceil(k/2)}; (d) A linear, A(C) = C, A((x_j^2 + y_j^2)/2) = rho tilde_j/2 pi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:pa-taylor, stepP:p11:pa-mono, stepP:p11:pa-series, bpP:p11:total-chart
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:pa-taylor | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:polar-avg@L165-L165 | proof step
EDGE: stepP:p11:pa-mono | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:polar-avg@L166-L166 | proof step
EDGE: stepP:p11:pa-series | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:polar-avg@L167-L167 | proof step
EDGE: bpP:p11:total-chart | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:polar-avg@L159-L159 | Pi is the generic polar formula Theta^(1)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:pa-taylor

```text
NODE: stepP:p11:pa-taylor
KIND: step
TITLE: Taylor series
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-taylor@L165-L165
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-taylor@L165-L165
CONTRACT_ID: stepP:p11:pa-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G(J,z) = sum c_ab(J) x^a y^b on B_r
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: ¦c_ab(J)¦ <= S r^{-¦a¦-¦b¦} and sum ¦c_ab¦ (r/2)^{¦a¦+¦b¦} <= 2^{2n} S
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p4:general-cauchy, K:bp:p1:holomorphic-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p4:general-cauchy | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-taylor@L165-L165 | Cauchy estimates (e2) for Taylor coefficients
EDGE: K:bp:p1:holomorphic-analytic | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-taylor@L165-L165 | part (a) supplies the polydisc Taylor-coefficient bound and hence the multi-index Cauchy bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:pa-mono

```text
NODE: stepP:p11:pa-mono
KIND: step
TITLE: Averaging a monomial
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-mono@L166-L166
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-mono@L166-L166
CONTRACT_ID: stepP:p11:pa-mono
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: real zeta, ¦rho tilde_j¦ < pi r^2/4
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: x^a y^b o Pi = prod (rho tilde_j/pi)^{(a_j+b_j)/2} sin^{a_j} cos^{b_j}(2 pi zeta_j); its zeta-integral is 0 unless all a_j, b_j are even, then prod m_j (rho tilde_j/pi)^{kappa_j}, ¦m_j¦ <= 1, a polynomial in rho tilde
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11:e5, bpP:p11:total-chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11:e5 | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-mono@L166-L166 | the parity of trigonometric moments and/or termwise integration of the uniformly convergent Taylor series
EDGE: bpP:p11:total-chart | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-mono@L166-L166 | the explicit componentwise polar formula Theta^(1)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The elementary integration input is bpP:p11:e5, admitted by the current SPEC.
```

### P-p11 — stepP:p11:pa-series

```text
NODE: stepP:p11:pa-series
KIND: step
TITLE: The series
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-series@L167-L167
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-series@L167-L167
CONTRACT_ID: stepP:p11:pa-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Taylor series and monomial averages (steps pa-taylor, pa-mono)
SOURCE_QUANTIFIERS: ¦rho tilde_j¦ < pi r^2/4
SOURCE_CONCLUSION: AG := sum_{a,b even} c_ab m_ab pi^{-¦kappa¦} rho tilde^kappa converges normally, is holomorphic with (a); (b) by termwise integration; (c) only ¦a¦+¦b¦ >= k occurs; (d) is immediate
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:pa-taylor, stepP:p11:pa-mono, bpP:p11:e5, I:bpI:p7:x-weier
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:pa-taylor | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-series@L167-L167 | summability of the coefficients
EDGE: stepP:p11:pa-mono | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-series@L167-L167 | the averaged monomials
EDGE: bpP:p11:e5 | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-series@L167-L167 | the parity of trigonometric moments and/or termwise integration of the uniformly convergent Taylor series
EDGE: I:bpI:p7:x-weier | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pa-series@L167-L167 | normal convergence of holomorphic partial sums gives holomorphy of A G
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The elementary integration input is bpP:p11:e5, admitted by the current SPEC.
```

### P-p11 — bpP:p11:avg-slow

```text
NODE: bpP:p11:avg-slow
KIND: proposition
TITLE: Polar normalisation and slow averaging
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-slow@L170-L179
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-slow@L180-L185
CONTRACT_ID: bpP:p11:avg-slow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: nu_2 >= 1; bpP:p11:sec-D#data; V_2 = D(J_0, s_2) x D_{rho tilde}, n_1 = n_2 = n, angles (theta, zeta), s = sigma_3
SOURCE_QUANTIFIERS: 0 < eps <= eps_2 in (0, eps_1] with c_2 >= 1 depending only on the data and nu_2
SOURCE_CONCLUSION: (a) wn(f_2) <= E_2 = c_2 eps^{5/2}(log 1/eps)^{2 tau_0+1} and G hat_0 = C + sum Omega tilde_j rho tilde_j + Z hat with Z hat holomorphic on D(J_0, s_1/2) x D(0, pi r_z^2/16), for every J-multi-index alpha, ¦d_J^alpha d_rho Z hat¦ <= c_2(eps + eta_1) alpha! (4/s_1)^¦alpha¦ on D(J_0,s_1/4) x D_rho tilde; (b) (B1) with alpha_(1), alpha_(2), K_2 and (B2) E_2 <= alpha_(2) pi eps/(128 K_2); (c) Lemma aniso-avg gives Psi_2 with (H o Phi^1 o Theta hat) o Psi_2 = h_0 + g_2 + f_3, ¦g_2¦ <= c_2 eps^3 (log)^{5 tau_0+2}, wn(f_3) <= eps^{nu_2} E_2; (d) norm(rho tilde-rho tilde prime)<=c_2 eps^(3/2) (log(1/eps))^(3 tau_0+1), norm(J-J prime)<=c_2 eps^(5/2) (log(1/eps))^(3 tau_0+1), and norm(theta-theta prime), norm(zeta-zeta prime)<=c_2 eps^(1/2) (log(1/eps))^(3 tau_0+1)
CONSTANT_SCOPE: eps_2, c_2 depend only on the data and nu_2
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:as-osc, stepP:p11:as-nr, stepP:p11:as-b2, stepP:p11:as-concl, bpP:p11:aniso-avg, bpP:p11:avg-fast, bpP:p11:sec-D#data, bpP:p11:sec-conv#data, bpP:p11:sec-C#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:as-osc | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-slow@L181-L181 | proof step
EDGE: stepP:p11:as-nr | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-slow@L182-L182 | proof step
EDGE: stepP:p11:as-b2 | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-slow@L183-L183 | proof step
EDGE: stepP:p11:as-concl | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-slow@L184-L184 | proof step
EDGE: bpP:p11:aniso-avg | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-slow@L175-L175 | Lemma applies to (h_0, f_2)
EDGE: bpP:p11:avg-fast | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-slow@L173-L173 | eta_1(eps) in (a)
EDGE: bpP:p11:sec-D#data | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-slow@L171-L171 | Pi, f_2, h_0, K_2, alpha_(i), s_2
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-slow@L173-L173 | the weighted norm
EDGE: bpP:p11:sec-C#data | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:avg-slow@L173-L173 | s_1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:as-osc

```text
NODE: stepP:p11:as-osc
KIND: step
TITLE: (a) Size of $\hat G-\hat G_0$ and $\hat Z$
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-osc@L181-L181
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-osc@L181-L181
CONTRACT_ID: stepP:p11:as-osc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G = C + sum Omega_j R_j + R_4 + eps g bar on D(J_0, s_1/2) x B_{r_z/2}; polar average lemma
SOURCE_QUANTIFIERS: eps <= eps_2
SOURCE_CONCLUSION: Z hat := A(R_4 + eps g bar) holomorphic, G hat_0 = C + sum Omega tilde_j rho tilde_j + Z hat on D_rho tilde; derivative bounds of Z hat; sup(G hat - G hat_0) <= c(eps^2 + eta_1 sqrt eps); wn(f_2) <= c_2 eps^{5/2}(log 1/eps)^{2 tau_0+1}
CONSTANT_SCOPE: c_2 depends on n, M_F, r_z, sigma_F
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11:polar-avg, bpP:p11:holo-chart, bpP:p11:avg-fast, K:bp:p1:ext-mvt, N:bpN:p4:sup-weighted, N:bpN:p4:general-cauchy, bpP:p11:sec-D#data, bpP:p11:sec-C#data, bpP:p11:sec-conv#data, K:bp:p1:holomorphic-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11:polar-avg | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-osc@L181-L181 | A applied to R_4 + eps g bar with r = r_z/2 (a)-(d)
EDGE: bpP:p11:holo-chart | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-osc@L181-L181 | R_4 bound (d), Omega_j/2 pi = Omega tilde_j
EDGE: bpP:p11:avg-fast | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-osc@L181-L181 | eta_1 bound for eps g bar and f_1
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-osc@L181-L181 | mean value estimate in z
EDGE: N:bpN:p4:sup-weighted | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-osc@L181-L181 | passing from sup to the weighted norm
EDGE: N:bpN:p4:general-cauchy | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-osc@L181-L181 | Cauchy estimates (e2) in rho tilde and J
EDGE: bpP:p11:sec-D#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-osc@L181-L181 | Pi on P_eps, f_2
EDGE: bpP:p11:sec-C#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-osc@L181-L181 | s_1
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-osc@L181-L181 | the weighted Fourier norm and its parameterwise convention are used explicitly
EDGE: K:bp:p1:holomorphic-analytic | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-osc@L181-L181 | part (a) supplies the polydisc Taylor-coefficient bound and hence the multi-index Cauchy bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:as-nr

```text
NODE: stepP:p11:as-nr
KIND: step
TITLE: (b) Non-resonance on $V_2$
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-nr@L182-L182
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-nr@L182-L182
CONTRACT_ID: stepP:p11:as-nr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: as-osc: bounds of d_J G hat_0 and d_rho Z hat; Lemma select
SOURCE_QUANTIFIERS: J in D(J_0, s_2), ¦k_i¦_1 <= K_2
SOURCE_CONCLUSION: (B1) on V_2: pure slow case ¦k.d h_0¦ >= eps(delta_0 - delta_0/8 - delta_0/8) >= alpha_(2), case k_1 != 0 ¦k.d h_0¦ >= delta_0/2 >= alpha_(1); alpha_(2) <= alpha_(1), with delta_0 = gamma_0 K_2^{-tau_0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:as-osc, bpP:p11:select, N:bpN:p4:general-cauchy, bpP:p11:holo-chart, bpP:p11:sec-D#data, bpP:p11:e4, bpP:p11:sec-C#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:as-osc | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-nr@L182-L182 | bounds of d_{rho tilde} Z hat and d_J G hat_0
EDGE: bpP:p11:select | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-nr@L182-L182 | Diophantine bounds of omega(J_0), Omega tilde(J_0)
EDGE: N:bpN:p4:general-cauchy | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-nr@L182-L182 | Cauchy estimate (e2) on radius s_1/4
EDGE: bpP:p11:holo-chart | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-nr@L182-L182 | L bounds varpi_J
EDGE: bpP:p11:sec-D#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-nr@L182-L182 | K_2, alpha_(i), s_2, V_2, h_0
EDGE: bpP:p11:e4 | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-nr@L182-L182 | the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate
EDGE: bpP:p11:sec-C#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-nr@L182-L182 | s_1, D_1 prime or alpha_1 from the fast-averaging parameter package is used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Uses the writer-authorized logarithmic asymptotic external bpP:p11:e4; no elementary input is left unrepresented.
```

### P-p11 — stepP:p11:as-b2

```text
NODE: stepP:p11:as-b2
KIND: step
TITLE: (B2)
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-b2@L183-L183
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-b2@L183-L183
CONTRACT_ID: stepP:p11:as-b2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E_2 of step as-osc; alpha_(2), K_2
SOURCE_QUANTIFIERS: eps <= eps_2
SOURCE_CONCLUSION: (B2): E_2 <= alpha_(2) pi eps/(128 K_2): alpha_(2) pi eps/(128 K_2) = (pi gamma_0/512) eps^2 K_2^{-tau_0-1}, and the ratio of E_2 to this quantity is eps^{1/2} times a power of log; kappa = 2 pi K_2 sigma_3 = 6 nu_2 log(1/eps) >= 6
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:as-osc, bpP:p11:sec-D#data, bpP:p11:e4
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:as-osc | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-b2@L183-L183 | the bound E_2
EDGE: bpP:p11:sec-D#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-b2@L183-L183 | alpha_(2), K_2, sigma_3
EDGE: bpP:p11:e4 | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:as-b2@L183-L183 | the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Uses the writer-authorized logarithmic asymptotic external bpP:p11:e4; no elementary input is left unrepresented.
```

### P-p11 — bpP:p11:prepared

```text
NODE: bpP:p11:prepared
KIND: proposition
TITLE: The prepared system
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:prepared@L196-L204
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:prepared@L205-L212
CONTRACT_ID: bpP:p11:prepared
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bpP:p11:sec-E#data; Q = 5 tau_0 + 2 + (tau_0 + 1)(mu bar + 1), ell = log(1/eps)
SOURCE_QUANTIFIERS: 0 < eps <= eps_3 in (0, eps_2], c_3 >= 1 depending only on the data and nu_2; 5 eps <= s_2; theta_eps := c_3 eps ell^Q <= 1
SOURCE_CONCLUSION: N_eps, P_eps holomorphic on E, 1-periodic in the angles, real, N_eps depends on (r, rho prime) only, H_2 o A_eps = eps H hat_eps; (a) sup¦P_eps¦ <= eps_f(eps) = c_3 eps^{nu_2+3/2} ell^{2 tau_0+1}; (b) ¦omega hat_eps¦ <= C_1 := 2L+1 and ¦D^2 N_eps¦ <= C_1 on K_eps + 3 theta; (c) for real J with norm(J-J_0)<s_2/4 and rho tilde_j in eps(2pi+(-5/4,5/4)), J-derivatives: ¦d_J^alpha(omega hat^(i) - varpi^(i))¦ <= theta_eps for ¦alpha¦ <= mu bar, in the derivative norm of Definition index-def c(n, mu bar) theta_eps; (d) ¦D^k g_2[omega hat_eps](c, y)¦ <= M_* := 2^{mu bar+1}(2L+1)^2 for k <= mu bar + 1 on K_eps + theta, and ¦¦omega hat_eps¦¦^{mu bar}_dg <= M_0^* := c(n, mu bar)(2L+1) >= 1, independent of eps
CONSTANT_SCOPE: eps_3, c_3 depend on the data and nu_2; M_*, M_0^*, C_1 depend on L only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:pr-basic, stepP:p11:pr-a, stepP:p11:pr-in, stepP:p11:pr-b, stepP:p11:pr-c, stepP:p11:pr-d, bpP:p11:sec-E#data, bpP:p11a:index-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:pr-basic | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:prepared@L206-L206 | proof step
EDGE: stepP:p11:pr-a | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:prepared@L207-L207 | proof step
EDGE: stepP:p11:pr-in | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:prepared@L208-L208 | proof step
EDGE: stepP:p11:pr-b | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:prepared@L209-L209 | proof step
EDGE: stepP:p11:pr-c | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:prepared@L210-L210 | proof step
EDGE: stepP:p11:pr-d | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:prepared@L211-L211 | proof step
EDGE: bpP:p11:sec-E#data | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:prepared@L197-L197 | N_eps, P_eps, A_eps, K_eps, H hat_eps
EDGE: bpP:p11a:index-def | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:prepared@L201-L201 | derivative norm and amount of Definition index-def
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:pr-basic

```text
NODE: stepP:p11:pr-basic
KIND: step
TITLE: Holomorphy, reality, periodicity
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-basic@L206-L206
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-basic@L206-L206
CONTRACT_ID: stepP:p11:pr-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Phi^1_eps, Theta hat, Psi_2 real holomorphic with lattice properties; domain table
SOURCE_QUANTIFIERS: eps <= eps_3
SOURCE_CONCLUSION: H_2 o A_eps = H o (Phi^1 o Theta hat o Psi_2 o A_eps), domain chain A_eps(E) in T_{sigma_3/6} x V_2/2, Psi_2 maps into T_{sigma_3} x V_2, Theta hat into T_{sigma_F/6} x D(J_0, s_2) x B_{r_z/4} in D_1 prime; N_eps, P_eps are holomorphic real functions
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11:avg-slow, bpP:p11:avg-fast, bpP:p11:total-chart, bpP:p11:sec-E#data, bpP:p11:sec-D#data, bpP:p11:sec-C#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11:avg-slow | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-basic@L206-L206 | Psi_2, V_2, domain bounds and Pi(P_eps) in B_{r_z/4}
EDGE: bpP:p11:avg-fast | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-basic@L206-L206 | Phi^1_eps and D_1 prime
EDGE: bpP:p11:total-chart | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-basic@L206-L206 | Theta hat lattice properties
EDGE: bpP:p11:sec-E#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-basic@L206-L206 | A_eps and the domain table
EDGE: bpP:p11:sec-D#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-basic@L206-L206 | sigma_3, s_2, P_eps
EDGE: bpP:p11:sec-C#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-basic@L206-L206 | s_1, D_1 prime or alpha_1 from the fast-averaging parameter package is used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:pr-a

```text
NODE: stepP:p11:pr-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-a@L207-L207
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-a@L207-L207
CONTRACT_ID: stepP:p11:pr-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Proposition avg-slow (c): wn(f_3) <= eps^{nu_2} E_2
SOURCE_QUANTIFIERS: eps <= eps_3
SOURCE_CONCLUSION: sup¦P_eps¦ <= eps^{-1} sup¦f_3¦ <= eps^{nu_2 + 3/2} c_2 ell^{2 tau_0+1} = eps_f(eps)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11:avg-slow, N:bpN:p4:sup-weighted, bpP:p11:sec-E#data, bpP:p11:sec-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11:avg-slow | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-a@L207-L207 | bound for f_3 and E_2
EDGE: N:bpN:p4:sup-weighted | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-a@L207-L207 | sup <= weighted norm (a)
EDGE: bpP:p11:sec-E#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-a@L207-L207 | P_eps = f_3 o A_eps/eps
EDGE: bpP:p11:sec-conv#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-a@L207-L207 | the weighted Fourier norm and its parameterwise convention are used explicitly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:pr-in

```text
NODE: stepP:p11:pr-in
KIND: step
TITLE: Derivative inputs
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208
CONTRACT_ID: stepP:p11:pr-in
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Proposition avg-slow (a),(c) bounds for Z hat, g_2; s_1, s_2 >= c ell^{-(tau_0+1)}
SOURCE_QUANTIFIERS: eps <= eps_3, ¦alpha¦ <= mu bar
SOURCE_CONCLUSION: (i) ¦d_J^beta G hat_0¦ <= c M_F beta! (4/s_1)^¦beta¦; (ii) ¦d_J^alpha d_rho Z hat¦ <= c eps ell^{2 tau_0+1+(tau_0+1)¦alpha¦}; (iii) ¦d_J^alpha d_rho^gamma g_2¦ <= c alpha! gamma! eps^{3-¦gamma¦} ell^{5 tau_0+2+(tau_0+1)¦alpha¦}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:as-osc, bpP:p11:avg-slow, N:bpN:p4:general-cauchy, bpP:p11:sec-C#data, bpP:p11:sec-D#data, bpP:p11:sec-E#data, K:bp:p1:holomorphic-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:as-osc | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | the bound for Z hat and its derivatives
EDGE: bpP:p11:avg-slow | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | sup bound of g_2 on V_2/2 and (a)
EDGE: N:bpN:p4:general-cauchy | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | Cauchy estimates (e2) with radii s_2/4, eps/4
EDGE: bpP:p11:sec-C#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | s_1 from eq par1
EDGE: bpP:p11:sec-D#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | s_2 from eq par2
EDGE: bpP:p11:sec-E#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | the domain table (the Cauchy discs fit)
EDGE: K:bp:p1:holomorphic-analytic | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-in@L208-L208 | part (a) supplies the polydisc Taylor-coefficient bound and hence the multi-index Cauchy bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — stepP:p11:pr-b

```text
NODE: stepP:p11:pr-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-b@L209-L209
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-b@L209-L209
CONTRACT_ID: stepP:p11:pr-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: pr-in; Prop holo-chart (a)
SOURCE_QUANTIFIERS: eps <= eps_3
SOURCE_CONCLUSION: ¦omega hat_eps¦ <= 2L+1 and the Hessian entries of N_eps are <= c eps^a ell^b with a >= 1, so ¦D^2 N_eps¦ <= 1 <= C_1
CONSTANT_SCOPE: C_1 = 2L+1 depends on L only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:pr-in, bpP:p11:holo-chart, bpP:p11:sec-E#data, bpP:p11:e4, N:bpN:p4:general-cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:pr-in | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-b@L209-L209 | derivative inputs
EDGE: bpP:p11:holo-chart | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-b@L209-L209 | bounds of omega, Omega tilde (a)
EDGE: bpP:p11:sec-E#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-b@L209-L209 | N_eps and omega hat_eps
EDGE: bpP:p11:e4 | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-b@L209-L209 | the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate
EDGE: N:bpN:p4:general-cauchy | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-b@L209-L209 | the additional rho-derivative of Z hat is estimated on a fixed-radius Cauchy disc
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Uses the writer-authorized logarithmic asymptotic external bpP:p11:e4; no elementary input is left unrepresented.
```

### P-p11 — stepP:p11:pr-d

```text
NODE: stepP:p11:pr-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-d@L211-L211
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-d@L211-L211
CONTRACT_ID: stepP:p11:pr-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma M-bound; pr-in; Prop holo-chart (a)
SOURCE_QUANTIFIERS: k <= mu bar + 1 on K_eps + theta
SOURCE_CONCLUSION: ¦D^k g_2[omega hat_eps]¦ <= 2^k M_1^2 with M_1 = ¦¦omega hat_eps¦¦^{mu bar+1}_op <= 2L+1; the main terms have norm <= L, other terms <= c eps ell^b <= 1; the diagonal norm is bounded by c(n, mu bar) times the max-norm operator norm: M_*, M_0^*
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:M-bound, bpP:p11:holo-chart, stepP:p11:pr-in, bpP:p11a:index-def, bpP:p11:sec-E#data, bpP:p11:e4
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:M-bound | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-d@L211-L211 | the bound 2^k M_1^2
EDGE: bpP:p11:holo-chart | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-d@L211-L211 | norm L of the main terms (a)
EDGE: stepP:p11:pr-in | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-d@L211-L211 | bounds of the remaining terms
EDGE: bpP:p11a:index-def | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-d@L211-L211 | the diagonal norm of Definition index-def
EDGE: bpP:p11:sec-E#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-d@L211-L211 | omega hat_eps
EDGE: bpP:p11:e4 | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:pr-d@L211-L211 | the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Uses the writer-authorized logarithmic asymptotic external bpP:p11:e4; no elementary input is left unrepresented.
```

### P-p11 — bpP:p11:forward-tube

```text
NODE: bpP:p11:forward-tube
KIND: lemma
TITLE: Forward tube for $n$ planets
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L230-L232
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L233-L235
CONTRACT_ID: bpP:p11:forward-tube
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a_i > 0, Lambda_i^* = m_i sqrt(kappa a_i), zeta > 0; n planets
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: there is delta_zeta in (0, (1/4) min Lambda_i^*], depending only on (G, m0, m, a, zeta), such that every w in R^{4n} with ¦Lambda_i - Lambda_i^*¦ <= delta_zeta and Gamma_i(w) <= delta_zeta lies in O_n and ¦Psi^(n)(w) - circ(lambda/2pi)¦ < zeta; in particular Psi^(n)(w) in U_zeta
CONSTANT_SCOPE: delta_zeta depends only on (G, m0, m, a, zeta)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p12:ft-cpt, stepP:p12:ft-uc, stepP:p12:ft-cmp, bpP:p7:tube, bpP:p7:product-chart, bpP:p12:f-unif, bpP:p0:circular#circularPoint, bpP:p0:circular#circularTube, bpP:p7:product-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p12:ft-cpt | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L234-L234 | Steps ft-cpt to ft-cmp of the 2-planet lemma, replayed with n planets (compact set Q_0)
EDGE: stepP:p12:ft-uc | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L234-L234 | replayed (uniform continuity)
EDGE: stepP:p12:ft-cmp | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L234-L234 | replayed (comparison)
EDGE: bpP:p7:tube | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L234-L234 | Psi^(n)(w_0) = circ(lambda/2pi)
EDGE: bpP:p7:product-chart | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L231-L231 | O_n and Psi^(n)
EDGE: bpP:p12:f-unif | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L234-L234 | (e3) uniform continuity of Psi^(n) on a compact set
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L231-L231 | circ
EDGE: bpP:p0:circular#circularTube | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L231-L231 | U_zeta
EDGE: bpP:p7:product-def | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:forward-tube@L231-L231 | the product chart Psi^(n) and its domain O_n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the lemma bpP:p12:forward-tube is stated for two planets and replayed step by step (steps are the edges)
```

### P-p11 — stepP:p11:wr-nu

```text
NODE: stepP:p11:wr-nu
KIND: step
TITLE: Choice of $\nu_2$ and $\varepsilon_0$
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-nu@L248-L248
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-nu@L248-L248
CONTRACT_ID: stepP:p11:wr-nu
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition kam-input (K5),(K6) for d_*: c_*, c_D, kappa_D, a_D, B_0 = mu bar(mu bar + 1) + 2; Prop prepared (a); Remark data-star
SOURCE_QUANTIFIERS: nu_2 fixed before eps and independent of the constants of Steps C-E
SOURCE_CONCLUSION: nu_2 := max{(mu bar + 2) B_0 + 2, ((mu bar + 2) a_D + 1)/kappa_D + 2}; eps_f(eps) <= eps_adm(d_eps) (eps_adm >= c_* (beta_J/2)^{B_0} eps^{(mu bar+2)B_0} >= c prime eps^{nu_2-2}) and Delta <= c_D eps_f^{kappa_D} beta_eps^{-a_D} <= c double prime eps^{1+2 kappa_D} ell^c <= 1/2, hence there is eps_0 <= eps_3 (depending on the data, nu_2 and these constants) with eps_f <= eps_adm, Delta <= 1/2 and the tube inequalities of step wr-tube for all eps in (0, eps_0)
CONSTANT_SCOPE: nu_2 depends on no eps and no constant of Steps C-E; eps_0 on the data, nu_2, c_*, c_D, kappa_D, a_D
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11:kam-input, bpP:p11:prepared, bpP:p11:data-star, bpP:p11:e4
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11:kam-input | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-nu@L248-L248 | (K5) the lower budget and (K6) displacement power with the constants c_*, c_D, kappa_D, a_D
EDGE: bpP:p11:prepared | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-nu@L248-L248 | eps_f(eps) of (a)
EDGE: bpP:p11:data-star | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-nu@L248-L248 | eps_adm(d_eps) >= c_* beta_eps^{B_0}, beta_eps
EDGE: bpP:p11:e4 | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-nu@L248-L248 | the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The forward reference to the tube inequalities lists threshold requirements, not a use of the later tube conclusion. wr-tube consumes the threshold and KAM displacement supplied here. Logarithmic asymptotics are bpP:p11:e4.
```

### P-p11 — stepP:p11:wr-tube

```text
NODE: stepP:p11:wr-tube
KIND: step
TITLE: Inclusion in the tube
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253
PROOF_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253
CONTRACT_ID: stepP:p11:wr-tube
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: wr-kam (actions of tori); eps <= eps_0 from wr-nu
SOURCE_QUANTIFIERS: (theta, r, zeta, rho prime) in A
SOURCE_CONCLUSION: after Psi_2: rho tilde_j in eps[2 pi - 2, 2 pi + 2], ¦J - J_0¦ <= 2 eps; x_j^2 + y_j^2 < 3 eps; Phi^1 moves J by <= c eps ell^{tau_0} and z by <= c eps ell^{tau_0} = o(sqrt eps); (xi, eta) = rho(x, y) with rho in SO(n) real orthogonal, sum(xi^2 + eta^2) <= 4 n eps, Gamma_i <= 2 n eps, ¦Lambda - Lambda^*¦ <= delta_*/8 + c eps ell^{tau_0} <= delta_*; Lemma forward-tube applies: Xi_eps(...) in U_zeta_* in U_eta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11:wr-kam, stepP:p11:wr-nu, stepP:p11:wr-chain, bpP:p11:avg-slow, bpP:p11:avg-fast, bpP:p9:lift, bpP:p11:forward-tube, bpP:p6:tube-geometry, bpP:p11:sec-A#data, bpP:p11:sec-D#data, bpP:p11:e4, bpP:p11:sec-C#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11:wr-kam | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253 | actions ¦r¦, ¦rho prime¦ <= 1
EDGE: stepP:p11:wr-nu | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253 | eps <= eps_0 and the arithmetic of the threshold
EDGE: stepP:p11:wr-chain | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253 | Xi_eps
EDGE: bpP:p11:avg-slow | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253 | displacements of Psi_2 (d)
EDGE: bpP:p11:avg-fast | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253 | displacements of Phi^1_eps
EDGE: bpP:p9:lift | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253 | rho(Lambda) in SO(n): Euclidean norm of (xi, eta) preserved
EDGE: bpP:p11:forward-tube | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253 | Lemma forward-tube with zeta = zeta_*
EDGE: bpP:p6:tube-geometry | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253 | (a) U_zeta_* in U_eta
EDGE: bpP:p11:sec-A#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253 | delta_*, Lambda^* and the patch
EDGE: bpP:p11:sec-D#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253 | Pi and x^2 + y^2 = rho tilde/pi
EDGE: bpP:p11:e4 | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253 | the positive-power versus logarithm limit supplies the small-epsilon threshold or little-o estimate
EDGE: bpP:p11:sec-C#data | blueprint-P/parts/p11-cp09-preparation.tex#stepP:p11:wr-tube@L253-L253 | s_1, D_1 prime or alpha_1 from the fast-averaging parameter package is used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Uses the writer-authorized logarithmic asymptotic external bpP:p11:e4; no elementary input is left unrepresented.
```

### P-p11 — bpP:p11:sec-A#data

```text
NODE: bpP:p11:sec-A#data
KIND: definition
TITLE: Section data of Step A: fixed data, patch, working variable J, varpi_J
STATEMENT_SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:sec-A#data@L42-L44
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11:sec-A#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 2; G, m0 > 0, kappa = G m0; m_i > 0; 0 < a_1 < ... < a_n; eta > 0 (the data of bpP:p0:fixed, Lean index shift as in Part 12); zeta_*, d, D of bpP:p6:tube-constants; rho_* of bpP:p8:perturbation-analytic; delta_* the constant of the forward tube lemma for zeta = zeta_*
SOURCE_QUANTIFIERS: data first; then the patch a_0, r_0, K_a (with the prescribed neighbourhood of a so small that ¦Lambda(a prime) - Lambda^*¦_inf < min{rho_*, delta_*}/8), K_Lambda, index mu bar >= 1 and amount beta bar > 0 of varpi tilde = (nu, Omega); then the working variable J = 2 pi Lambda
SOURCE_CONCLUSION: defines: Lambda_i^* = m_i sqrt(kappa a_i); the patch a_0, r_0, K_a, K_Lambda = Lambda(K_a); mu bar and beta bar (squared convention); h tilde(J) = h(J/2pi), omega(J) = grad h tilde = nu(J/2pi)/2pi, Omega tilde(J) = Omega(J/2pi)/2pi with Omega_j = 2 sigma_j and Omega tilde_j < 0, varpi_J = (omega, Omega tilde) on 2 pi B^Lambda, K_J = 2 pi K_Lambda
CONSTANT_SCOPE: mu bar, beta bar, the patch depend only on the data; delta_* on (G, m0, m, a, zeta_*)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:conv#data, bpP:p6:tube-constants, bpP:p8:perturbation-analytic, bpP:p11:forward-tube, bpP:p10:interface, bpP:p9:dict
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:conv#data | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:sec-A#data@L42-L42 | n, G, m0, m_i of Part 6
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:sec-A#data@L42-L42 | zeta_*, d, D
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:sec-A#data@L42-L42 | rho_*
EDGE: bpP:p11:forward-tube | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:sec-A#data@L42-L42 | delta_* (restated for n planets; the constant of the lemma for zeta_*)
EDGE: bpP:p10:interface | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:sec-A#data@L42-L42 | the patch, index mu bar and amount beta bar (d)
EDGE: bpP:p9:dict | blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:sec-A#data@L44-L44 | Omega_j = 2 sigma_j
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11 — external coverage and paragraph mapping

```text
ITEM: bpP:p11:e1
KIND: external
SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:e1@L16-L16
DISPOSITION: EXCLUDED
REASON: alias of K:bp:p1:holomorphic-analytic by the binding writer ruling. This classification is retained, but the cited source has the opposite direction; the unsupported complexification/identity use is exposed as SOURCE_GAP in stepP:p11:hc-rot, not accepted as supplied by that alias.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-v
REVIEWER: -
```

```text
ITEM: bpP:p11:e2
KIND: external
SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:e2@L17-L17
DISPOSITION: EXCLUDED
REASON: alias of N:bpN:p4:general-cauchy by the writer ruling. That node supplies the first-derivative estimate; the additional Taylor-coefficient and higher multi-index content at pa-taylor/as-osc/pr-in is supplied through K:bp:p1:holomorphic-analytic(a), not silently attributed to N C.1.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-v
REVIEWER: -
```

```text
ITEM: bpP:p11:e3
KIND: external
SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:e3@L18-L18
DISPOSITION: EXCLUDED
REASON: alias of bpP:p12:f-unif (Heine-Cantor); its actual consumers hc-strip and forward-tube already depend on that node.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-v
REVIEWER: -
```

```text
ITEM: bpP:p11:e4
KIND: external
SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:e4@L19-L19
DISPOSITION: NODE bpP:p11:e4
REASON: labelled track-P external authorized by the latest P-p11 SPEC writer ruling; linked directly from every named consumer
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-v
REVIEWER: -
```

```text
ITEM: bpP:p11:e5
KIND: external
SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#bpP:p11:e5@L20-L20
DISPOSITION: NODE bpP:p11:e5
REASON: labelled track-P external authorized by the latest P-p11 SPEC writer ruling; linked directly from every named consumer
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-v
REVIEWER: -
```

```text
ITEM: p11:prose-L14-L22
KIND: proof-region
SOURCE: blueprint-P/parts/p11-cp09-preparation.tex#prose@L14-L22
DISPOSITION: NODE bpP:p11:e4, bpP:p11:e5
REASON: External-fact paragraph: e1-e3 have their own EXCLUDED alias coverage items under the writer ruling, with the e1 direction mismatch exposed in hc-rot; e4/e5 have external NODE records and individual coverage. Higher Taylor/Cauchy content is separately linked to K:bp:p1:holomorphic-analytic(a).
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11
REVIEWER: -
```

## Suspected blueprint defects / owner questions

- **L16/L75, e1 attribution.** The phrase “By (e1) varrho extends holomorphically” is not furnished by the designated K lemma, which assumes a holomorphic map at its first line. Persistence of rho^T rho=1 and det rho=1 likewise needs the stated identity principle. Supply exact source contracts for those two facts, or a visible derivation; do not add them as hypotheses of holo-chart. The graph replacement only exposes the missing input while honoring the ruling that e1 is excluded.
- **L17 versus N Part 4 L171-174.** e2 states multi-index bounds and coefficient summability; N C.1 states only norm(DG)<=M/R. K Part 1 L299-306 supplies the actual coefficient estimate and permits the required higher Cauchy estimates. The graph now records these additional direct uses without changing the ruled e2 exclusion.
- **L83, order-four Schwarz.** “Schwarz lemma on polydiscs applied on the lines z=t z_0” is an explicit mathematical ingredient. Its precise order-four conclusion is not in the linked first-derivative Cauchy statement; it remains visible in hc-mean as SOURCE_GAP.
- **L140, arbitrary scaled norms.** The sentence “these results are stated for an arbitrary scaled norm” overstates the written N contracts of vf-bound/composition/transform/canonical-map. N flow L45 is general-norm; the other results need the stated proof replay with the block bracket and field estimates. L140 and oi-transfer provide that replay route, so this is an attribution correction, not a newly alleged failure of the rectangular mathematics.
- Existing CP09 errata at L266 are provenance; no pinned-paper erratum was independently re-audited or newly alleged here.

## Validation

The original structural checker returned `P-p11: 63 nodes, 325 edges, 85 coverage items, 0 problems, 0 TODO records (not counted: --structural)`. All 63 existing nodes have a source-verdict row, and all 85 original coverage dispositions were inspected. The proposed blocks preserve fields unrelated to each finding, including all frozen identity fields and existing metadata. One EDGE per DEPS/ROUTES entry, target existence, consumer line bounds, root reachability and absence of cycles through P-p11 were checked on the proposed graph. Packets, SPEC and blueprint remain unchanged. No Lean or state-changing git command was run.

Snapshot SHA-256:

- `blueprint-P/parts/p11-cp09-preparation.tex`: `4c0e2dfefb50b1e06581e069a55846d25e0e4697a8826514ac699bbb83efb41f`
- `docs/graph/P/packets/P-p11.nodes.md`: `28785a43c1539435ceae3b4680e5a2738c2d1c98b47895a6c06e5c050e6479e6`
- `docs/graph/P/packets/P-p11.coverage.md`: `29a2562e33b68c7a9940105cb3c626bc4c5f7d382ab6befdd5b69b6ffaf6a61a`
- `docs/graph/P/SPEC.md`: `46c1cf323866edc519123794aae8b00a0c479619e3041fe9dec3d1de777b53bf`

READY rev-P-v
