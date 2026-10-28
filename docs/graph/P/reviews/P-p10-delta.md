# P-p10 delta topology review

Reviewer: sol-delta-P-aa. Marker: delta-P-aa.

**Verdict: FAIL.** Of 52 PROPOSED nodes, 39 PASS and 13 FAIL. All 80 PROPOSED coverage items PASS.

Scope: every currently PROPOSED P-p10 node and coverage item, including restored P-FIXED scaling. Already REVIEWED records were read only as prerequisites where needed. The prior authors are sol-review-P-l and, for the scaling rewrite, sol-review-P-w. Read DELTA-BRIEF.md, REVIEW-BRIEF.md and current SPEC, including the P-FIXED revision and writer rulings.

Re-read the complete raw Part 10 source L1-275, selected record fields and every EDGE use site; re-read their supplier statements in Parts 1, 7, 8 and 9. Compared each rewrite with its FAIL in P-p10-review.md or PFIXED-restored-review.md. No Lean implementation, provider, proof body or manifest state field was used. P-p10 contains no frozen anchor requiring a declaration/identity replacement.

## Node decisions

All table spans are in blueprint-P/parts/p10-nondegeneracy.tex; statement and proof ranges are listed, and every consumer EDGE range was checked.

| Record | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p10:conv#data | PASS | L15-L21 | All three formerly missing suppliers are attached at L19; negativity, analytic Q_h, frequency normalization and data order agree. |
| bpP:p10:generic | PASS | L32-L34, L35-L38 | Good-point now supplies nonvanishing for the Phi_4 specialization; generic analytic conditions remain premises only for the general family. |
| stepP:p10:gen-zero | PASS | L37-L37 | The general e-id contract supplies the assertion for arbitrary analytic g; the special Phi_4 theorem is no longer misapplied. |
| stepP:p10:weyl-mm | PASS | L44-L44 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:weyl-pert | PASS | L45-L45 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:lb-series | PASS | L63-L63 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| bpP:p10:formula69 | PASS | L68-L73, L74-L76 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| bpP:p10:peel | PASS | L78-L85, L86-L89 | C now precedes the universal a_1 binder and is independent of a_1; the n=2 zero block and all three powers agree. |
| stepP:p10:n2-r | PASS | L100-L100 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:n2-t | PASS | L101-L101 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:n2-nr | PASS | L102-L102 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:gp-base | PASS | L112-L112 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:gp-choice | PASS | L113-L115 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:gp-loc | PASS | L116-L116 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:gp-nr | PASS | L117-L119 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| bpP:p10:f-id | PASS | L25-L25 | The retained external adds the Taylor all-jets-vanish clause; it is not merely an alias of the shorter Part 9 contract. |
| bpP:p10:f-fts | PASS | L26-L26 | The retained external uses coefficient ring R[X], as required by Fc-poly. |
| bpP:p10:f-pol | PASS | L28-L28 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| bpP:p10:f-leib | PASS | L29-L29 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| bpP:p10:sorted-analytic | FAIL | L48-L50, L51-L53 | Wrong use-site locator: bpP:p10:conv#data -> L49. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree. |
| stepP:p10:sa-loc | PASS | L52-L52 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| bpP:p10:good-set | FAIL | L122-L124, L125-L127 | Wrong use-site locators: bpP:p10:conv#data -> L123, bpP:p9:good -> L123. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree. |
| bpP:p10:rnd-def | PASS | L137-L140 | Definition retains nonempty open connected domain and the nonzero relation vector. |
| bpP:p10:Fc-def | FAIL | L142-L146 | Wrong use-site locator: bpP:p10:conv#data -> L144. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree. |
| bpP:p10:Fc-analytic | FAIL | L148-L150, L151-L153 | Wrong use-site locators: bpP:p10:conv#data -> L149, bpP:p10:Fc-def -> L149. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree. |
| stepP:p10:Fc-poly | PASS | L152-L152 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| bpP:p10:F-nonzero | FAIL | L155-L159, L160-L171 | Wrong use-site locators: bpP:p10:conv#data -> L156, bpP:p10:Fc-def -> L156. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree. |
| stepP:p10:F-A | PASS | L162-L162 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:F-B | FAIL | L163-L163 | Missing direct Weyl edge: peel supplies the small matrix norm, while the assertion sigma_l -> 0 in the c_2 != 0 case requires the eigenvalue perturbation estimate (used with Q_hat=0). |
| stepP:p10:F-C | PASS | L164-L170 | The induction, permutation/deleted-coefficient matching, nonzero-factor choice and single-secular-coefficient case have direct suppliers. |
| bpP:p10:rnd | FAIL | L173-L180, L181-L185 | Wrong use-site locators: bpP:p10:conv#data -> L174, bpP:p10:sec-rnd#data -> L176, bpP:p10:rnd-def -> L176, bpP:p10:sorted-analytic -> L176. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree. |
| stepP:p10:rnd-a | PASS | L182-L182 | The relation is a factor of an analytic symmetric product; identity theorem and F-nonzero supply the contradiction without assuming nondegeneracy. |
| stepP:p10:rnd-b | PASS | L183-L183 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:rnd-c | PASS | L184-L184 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| bpP:p10:scaling | FAIL | L191-L193 | The restored index-def locator is corrected to L192 as requested by PFIXED-restored-review.md. Still missing the direct sec-rnd#data edge for the named target map varpi_tilde used in the diagonal-scaling comparison. |
| bpP:p10:finite-type | FAIL | L199-L203, L204-L208 | Wrong use-site locator: bpP:p10:sec-index#data -> L201. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree. |
| stepP:p10:ft-pt | PASS | L205-L205 | The Taylor/identity theorem is used under the finite-type source premises; no vanishing conclusion is assumed. |
| stepP:p10:ft-cover | PASS | L206-L206 | Joint continuity and nonempty compactness give a finite set of orders and one uniform maximum. |
| stepP:p10:ft-min | PASS | L207-L207 | The maximum is continuous and positive on the nonempty compact product, so its attained minimum is positive. |
| bpP:p10:index-def | FAIL | L210-L213 | Wrong use-site locator: bpP:p10:sec-index#data -> L211. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree. |
| bpP:p10:cp09-lemma1 | FAIL | L215-L217, L218-L220 | Wrong use-site locators: bpP:p10:sec-index#data -> L216, bpP:p10:index-def -> L216. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree. |
| bpP:p10:stability | FAIL | L222-L227, L228-L231 | Wrong use-site locators: bpP:p10:sec-index#data -> L223, bpP:p10:index-def -> L225. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree. |
| stepP:p10:st-prod | PASS | L229-L229 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:st-diff | PASS | L230-L230 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| bpP:p10:interface | FAIL | L235-L248, L249-L254 | Wrong use-site locators: bpP:p10:conv#data -> L236, bpP:p10:sec-rnd#data -> L241, bpP:p10:sec-index#data -> L244, bpP:p9:good -> L238, bpP:p9:definite -> L238. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree. |
| stepP:p10:if-a | PASS | L250-L250 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:if-b | PASS | L251-L251 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:if-c | PASS | L252-L252 | The restored statement/step and its package inputs, conditional premises and direct consumer uses agree with the source. |
| stepP:p10:if-d | PASS | L253-L253 | Compact K has positive measure and is nonempty; the sphere is nonempty; index monotonicity supplies the positivity guard. |
| stepP:p10:sa-n2 | PASS | L52-L52 | The separately inventoried label on L52 uses the positive two-planet discriminant. |
| bpP:p10:sec-rnd#data | PASS | L135-L135 | The actual analytic frequency-map data on U_n and its action expression are retained and linked. |
| bpP:p10:sec-index#data | PASS | L197-L197 | The tensor-diagonal norms and polarization bridge match the source conventions. |

## Coverage decisions

One row for each of the 80 PROPOSED coverage items. These are distinct from node verdicts even when IDs coincide.

| Record | Verdict | Span re-read | Disposition check |
|---|---|---|---|
| bpP:p10:f-id | PASS | L25-L25 | Correct mapping to bpP:p10:f-id. |
| bpP:p10:f-fts | PASS | L26-L26 | Correct mapping to bpP:p10:f-fts. |
| bpP:p10:f-pol | PASS | L28-L28 | Correct mapping to bpP:p10:f-pol. |
| bpP:p10:f-leib | PASS | L29-L29 | Correct mapping to bpP:p10:f-leib. |
| bpP:p10:generic | PASS | L32-L34 | Correct mapping to bpP:p10:generic. |
| stepP:p10:gen-zero | PASS | L37-L37 | Correct mapping to stepP:p10:gen-zero. |
| stepP:p10:weyl-mm | PASS | L44-L44 | Correct mapping to stepP:p10:weyl-mm. |
| stepP:p10:weyl-pert | PASS | L45-L45 | Correct mapping to stepP:p10:weyl-pert. |
| bpP:p10:sorted-analytic | PASS | L48-L50 | Correct mapping to bpP:p10:sorted-analytic. |
| stepP:p10:sa-loc | PASS | L52-L52 | Correct mapping to stepP:p10:sa-loc. |
| stepP:p10:lb-series | PASS | L63-L63 | Correct mapping to stepP:p10:lb-series. |
| bpP:p10:formula69 | PASS | L68-L73 | Correct mapping to bpP:p10:formula69. |
| bpP:p10:peel | PASS | L78-L85 | Correct mapping to bpP:p10:peel. |
| stepP:p10:n2-r | PASS | L100-L100 | Correct mapping to stepP:p10:n2-r. |
| stepP:p10:n2-t | PASS | L101-L101 | Correct mapping to stepP:p10:n2-t. |
| stepP:p10:n2-nr | PASS | L102-L102 | Correct mapping to stepP:p10:n2-nr. |
| stepP:p10:gp-base | PASS | L112-L112 | Correct mapping to stepP:p10:gp-base. |
| stepP:p10:gp-choice | PASS | L113-L115 | Correct mapping to stepP:p10:gp-choice. |
| stepP:p10:gp-loc | PASS | L116-L116 | Correct mapping to stepP:p10:gp-loc. |
| stepP:p10:gp-nr | PASS | L117-L119 | Correct mapping to stepP:p10:gp-nr. |
| bpP:p10:good-set | PASS | L122-L124 | Correct mapping to bpP:p10:good-set. |
| bpP:p10:rnd-def | PASS | L137-L140 | Correct mapping to bpP:p10:rnd-def. |
| bpP:p10:Fc-def | PASS | L142-L146 | Correct mapping to bpP:p10:Fc-def. |
| bpP:p10:Fc-analytic | PASS | L148-L150 | Correct mapping to bpP:p10:Fc-analytic. |
| stepP:p10:Fc-poly | PASS | L152-L152 | Correct mapping to stepP:p10:Fc-poly. |
| bpP:p10:F-nonzero | PASS | L155-L159 | Correct mapping to bpP:p10:F-nonzero. |
| stepP:p10:F-A | PASS | L162-L162 | Correct mapping to stepP:p10:F-A. |
| stepP:p10:F-B | PASS | L163-L163 | Correct mapping to stepP:p10:F-B. |
| stepP:p10:F-C | PASS | L164-L170 | Correct mapping to stepP:p10:F-C. |
| bpP:p10:rnd | PASS | L173-L180 | Correct mapping to bpP:p10:rnd. |
| stepP:p10:rnd-a | PASS | L182-L182 | Correct mapping to stepP:p10:rnd-a. |
| stepP:p10:rnd-b | PASS | L183-L183 | Correct mapping to stepP:p10:rnd-b. |
| stepP:p10:rnd-c | PASS | L184-L184 | Correct mapping to stepP:p10:rnd-c. |
| bpP:p10:finite-type | PASS | L199-L203 | Correct mapping to bpP:p10:finite-type. |
| stepP:p10:ft-pt | PASS | L205-L205 | Correct mapping to stepP:p10:ft-pt. |
| stepP:p10:ft-cover | PASS | L206-L206 | Correct mapping to stepP:p10:ft-cover. |
| stepP:p10:ft-min | PASS | L207-L207 | Correct mapping to stepP:p10:ft-min. |
| bpP:p10:index-def | PASS | L210-L213 | Correct mapping to bpP:p10:index-def. |
| bpP:p10:cp09-lemma1 | PASS | L215-L217 | Correct mapping to bpP:p10:cp09-lemma1. |
| bpP:p10:stability | PASS | L222-L227 | Correct mapping to bpP:p10:stability. |
| stepP:p10:st-prod | PASS | L229-L229 | Correct mapping to stepP:p10:st-prod. |
| stepP:p10:st-diff | PASS | L230-L230 | Correct mapping to stepP:p10:st-diff. |
| bpP:p10:interface | PASS | L235-L248 | Correct mapping to bpP:p10:interface. |
| stepP:p10:if-a | PASS | L250-L250 | Correct mapping to stepP:p10:if-a. |
| stepP:p10:if-b | PASS | L251-L251 | Correct mapping to stepP:p10:if-b. |
| stepP:p10:if-c | PASS | L252-L252 | Correct mapping to stepP:p10:if-c. |
| stepP:p10:if-d | PASS | L253-L253 | Correct mapping to stepP:p10:if-d. |
| heading:bpP:p10 | PASS | L1-L1 | Heading; substantive units are separately inventoried. |
| heading:bpP:p10:conv | PASS | L13-L13 | Heading; substantive units are separately inventoried. |
| heading:bpP:p10:sec-asym | PASS | L55-L55 | Heading; substantive units are separately inventoried. |
| heading:bpP:p10:sec-good | PASS | L91-L91 | Heading; substantive units are separately inventoried. |
| heading:bpP:p10:sec-rnd | PASS | L133-L133 | Heading; substantive units are separately inventoried. |
| heading:bpP:p10:sec-index | PASS | L195-L195 | Heading; substantive units are separately inventoried. |
| heading:bpP:p10:sec-interface | PASS | L233-L233 | Heading; substantive units are separately inventoried. |
| heading:bpP:p10:notes | PASS | L260-L260 | Heading; substantive units are separately inventoried. |
| p10:sourcegap-L108 | PASS | L108-L108 | Correct mapping to bpP:p10:good-point, stepP:p10:gp-choice, stepP:p10:gp-loc, stepP:p10:gp-nr. |
| p10:sourcegap-L158 | PASS | L158-L158 | Correct mapping to bpP:p10:F-nonzero, stepP:p10:F-A, stepP:p10:F-B, stepP:p10:F-C. |
| p10:source-L60 | PASS | L60-L60 | Provenance for an internally proved unit, rather than an unproved input. |
| p10:source-L72 | PASS | L72-L72 | Provenance for an internally proved unit, rather than an unproved input. |
| p10:source-L84 | PASS | L84-L84 | Provenance for an internally proved unit, rather than an unproved input. |
| p10:source-L97 | PASS | L97-L97 | Provenance for an internally proved unit, rather than an unproved input. |
| p10:source-L107 | PASS | L107-L107 | Provenance for an internally proved unit, rather than an unproved input. |
| p10:source-L139 | PASS | L139-L139 | Provenance for an internally proved unit, rather than an unproved input. |
| p10:source-L157 | PASS | L157-L157 | Provenance for an internally proved unit, rather than an unproved input. |
| p10:source-L202 | PASS | L202-L202 | Provenance for an internally proved unit, rather than an unproved input. |
| p10:source-L212 | PASS | L212-L212 | Provenance for an internally proved unit, rather than an unproved input. |
| p10:source-L226 | PASS | L226-L226 | Provenance for an internally proved unit, rather than an unproved input. |
| p10:prose-L4-L11 | PASS | L4-L11 | Administrative/outline/list prose; its consumed data or external items are separately recorded. |
| p10:prose-L15-L21 | PASS | L15-L21 | Correct mapping to bpP:p10:conv#data. |
| p10:prose-L23-L24 | PASS | L23-L24 | Administrative/outline/list prose; its consumed data or external items are separately recorded. |
| p10:prose-L135-L135 | PASS | L135-L135 | Correct mapping to bpP:p10:sec-rnd#data. |
| p10:prose-L197-L197 | PASS | L197-L197 | Correct mapping to bpP:p10:sec-index#data. |
| p10:prose-L262-L262 | PASS | L262-L262 | Administrative/outline/list prose; its consumed data or external items are separately recorded. |
| p10:prose-L264-L264 | PASS | L264-L264 | Administrative/outline/list prose; its consumed data or external items are separately recorded. |
| p10:prose-L266-L266 | PASS | L266-L266 | Administrative/outline/list prose; its consumed data or external items are separately recorded. |
| p10:prose-L268-L268 | PASS | L268-L268 | Administrative/outline/list prose; its consumed data or external items are separately recorded. |
| p10:prose-L270-L270 | PASS | L270-L270 | Administrative/outline/list prose; its consumed data or external items are separately recorded. |
| p10:prose-L272-L272 | PASS | L272-L272 | Administrative/outline/list prose; its consumed data or external items are separately recorded. |
| p10:prose-L274-L275 | PASS | L274-L275 | Administrative/outline/list prose; its consumed data or external items are separately recorded. |
| stepP:p10:sa-n2 | PASS | L52-L52 | Correct mapping to stepP:p10:sa-n2. |

all other coverage items PASS

The restored closure is required by the complete retained Part 11b patch/interface contract and is also within the current P-FIXED scope. The two section-data paragraphs and the second labelled proof step on L52 have explicit nodes. Source-gap annotations at L108 and L158 map to the actual blueprint inductions, including the single nonzero secular coefficient case; no missing premise is silently added. The introduction of the external list remains administrative even though its old reason calls f-id/f-fts aliases; their substantive entries are correctly NODE dispositions. Historical notes saying P-FIXED remains deferred do not change the current scope ruling or the recorded mathematics and are left untouched under convergence.

## Conditional premises and source checks

The hierarchical induction uses positive data, negative smaller-system spectrum for n-1>=2, uniform peeling with C independent of a_1, and Weyl on the same Euclidean operator norm. It keeps the k_hat=0 case separate and transfers the finite K_4 margin in the other case. The symmetric product uses the approved R[X] symmetric-polynomial external, then analyticity on the connected axes cone. Case C1 invokes the induction only for nonzero reduced coefficient vectors; Case C2 uses definiteness. No universal cover or unsupported eigenvalue continuation is introduced.

Finite type retains both nonemptiness guards, joint continuity of every partial derivative, and analyticity/nonidentical vanishing for each parameter. Index remains the least positive order with positive amount. Stability retains both the positive original amount and the perturbation inequality, and assumes no nondegeneracy of the perturbed map. The interface transports a compact set of positive measure through the analytic axes/action diffeomorphism, uses the squared-scalar CP09 norm, and keeps index/amount independent of coupling.

## Suspected blueprint defects

No new suspected blueprint defect is asserted. The already recorded Fej04r induction gaps and block-asymptotic errata remain source provenance; the blueprint supplies its own inductions and the three distinct error powers. This delta changes graph use-site locators and two direct dependencies only.

## Replacement blocks

### P-p10 — bpP:p10:sorted-analytic

Wrong use-site locator: bpP:p10:conv#data -> L49. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree.

```text
NODE: bpP:p10:sorted-analytic
KIND: lemma
TITLE: Sorted eigenvalues are analytic where the spectrum is simple
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sorted-analytic@L48-L50
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sorted-analytic@L51-L53
CONTRACT_ID: bpP:p10:sorted-analytic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Part 10 data and U_n, the simple-spectrum locus
SOURCE_QUANTIFIERS: data fixed; all a in U_n
SOURCE_CONCLUSION: the sorted sigma_1<...<sigma_n are real analytic on U_n; U_2=A_2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, stepP:p10:sa-loc, stepP:p10:sa-n2
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sorted-analytic@L49-L49 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:sa-loc | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sorted-analytic@L52-L52 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:sa-n2 | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sorted-analytic@L52-L52 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

### P-p10 — bpP:p10:good-set

Wrong use-site locators: bpP:p10:conv#data -> L123, bpP:p9:good -> L123. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree.

```text
NODE: bpP:p10:good-set
KIND: corollary
TITLE: The good set; good patches
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L122-L124
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L125-L127
CONTRACT_ID: bpP:p10:good-set
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=2 and all positive Part 10 data
SOURCE_QUANTIFIERS: data; every a* in A_n and eta>0; then a_0 and r_0>0
SOURCE_CONCLUSION: G_n={Phi_4!=0} is open, dense and full measure in A_n; eigenvalues are simple and locally analytic, Omega=2 sigma is NR_4 uniformly on compacts; closed B_inf(a_0,2r_0) lies in G_n cap B_inf(a*,eta)
CONSTANT_SCOPE: a_0,r_0 depend on the fixed data,a*,eta
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p9:good, bpP:p10:good-point, bpP:p9:good-set, bpP:p9:local-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L123-L123 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:good | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L123-L123 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:good-point | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L126-L126 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:good-set | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L126-L126 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:local-analytic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L123-L123 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

### P-p10 — bpP:p10:Fc-def

Wrong use-site locator: bpP:p10:conv#data -> L144. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree.

```text
NODE: bpP:p10:Fc-def
KIND: definition
TITLE: Symmetric product of the relation forms
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-def@L142-L146
PROOF_SOURCE: -
CONTRACT_ID: bpP:p10:Fc-def
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Part 10 axes and sorted sigma; c=(c_prime,c_doubleprime) in R^n x R^n
SOURCE_QUANTIFIERS: data; c; pi in S_n; a in A_n
SOURCE_CONCLUSION: L_{c,pi}=sum_i c_prime_i nu_i+sum_j c_doubleprime_j sigma_{pi(j)}; F_c=product_{pi in S_n} L_{c,pi}, invariant under rearranging the eigenvalues
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-def@L144-L144 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

### P-p10 — bpP:p10:Fc-analytic

Wrong use-site locators: bpP:p10:conv#data -> L149, bpP:p10:Fc-def -> L149. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree.

```text
NODE: bpP:p10:Fc-analytic
KIND: proposition
TITLE: $F_c$ is real analytic on all of $\mathcal A_n$
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-analytic@L148-L150
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-analytic@L151-L153
CONTRACT_ID: bpP:p10:Fc-analytic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F_c and L_{c,pi} of Fc-def
SOURCE_QUANTIFIERS: data and c; then all a in A_n
SOURCE_CONCLUSION: F_c is real analytic on all A_n; on U_n, L_{c,id}=<c,(nu,sigma)> is one factor
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:Fc-def, stepP:p10:Fc-poly
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-analytic@L149-L149 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:Fc-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-analytic@L149-L149 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:Fc-poly | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-analytic@L152-L152 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

### P-p10 — bpP:p10:F-nonzero

Wrong use-site locators: bpP:p10:conv#data -> L156, bpP:p10:Fc-def -> L156. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree.

```text
NODE: bpP:p10:F-nonzero
KIND: theorem
TITLE: $F_c\not\equiv0$ for $c\ne0$
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L155-L159
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L160-L171
CONTRACT_ID: bpP:p10:F-nonzero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=2, G,m0>0, all masses positive, c in R^(2n) nonzero
SOURCE_QUANTIFIERS: for all data and every nonzero c
SOURCE_CONCLUSION: F_c is not identically zero on A_n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:Fc-def, bpP:p10:peel, bpP:p10:weyl, stepP:p10:F-A, stepP:p10:F-B, stepP:p10:F-C
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L156-L156 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:Fc-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L156-L156 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:peel | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L161-L161 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:weyl | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L161-L161 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:F-A | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L162-L162 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:F-B | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L163-L163 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:F-C | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L164-L164 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

### P-p10 — stepP:p10:F-B

Missing direct Weyl edge: peel supplies the small matrix norm, while the assertion sigma_l -> 0 in the c_2 != 0 case requires the eigenvalue perturbation estimate (used with Q_hat=0).

```text
NODE: stepP:p10:F-B
KIND: step
TITLE: Case B: $c'_1=0$, $n=2$
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163
CONTRACT_ID: stepP:p10:F-B
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: c_prime_1=0, n=2, c!=0; a_2 fixed
SOURCE_QUANTIFIERS: data,c,a_2; then sufficiently small a_1>0
SOURCE_CONCLUSION: write c=(0,c2;c3,c4); s=sigma_2/sigma_1 ->0. If c2!=0, both factors tend to c2 nu_2!=0; otherwise their displayed sigma_1 multiples are nonzero, including c3=0 or c4=0. Thus F_c!=0 for small a_1
CONSTANT_SCOPE: small a_1 depends on fixed data,c,a_2
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:Fc-def, bpP:p9:n2, bpP:p10:n2, bpP:p10:peel, bpP:p10:weyl
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:Fc-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:n2 | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:n2 | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:peel | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:weyl | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163 | with n=2, peel gives Q_h -> 0 in operator norm and Weyl gives every sigma_l -> 0, used when c_2 != 0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

### P-p10 — bpP:p10:rnd

Wrong use-site locators: bpP:p10:conv#data -> L174, bpP:p10:sec-rnd#data -> L176, bpP:p10:rnd-def -> L176, bpP:p10:sorted-analytic -> L176. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree.

```text
NODE: bpP:p10:rnd
KIND: theorem
TITLE: R-nondegeneracy of the planetary frequency data
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L173-L180
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L181-L185
CONTRACT_ID: bpP:p10:rnd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=2; P subset U_n nonempty, open and connected
SOURCE_QUANTIFIERS: data and P
SOURCE_CONCLUSION: varpi restricted to P is real analytic and R-nondegenerate, equivalently its real analytic action expression on the nonempty open connected Lambda(P); nu alone is R-nondegenerate; the same holds for (nu,Omega) with Omega_j=2 sigma_{pi(j)} under any labelling and any positive component rescaling
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:sec-rnd#data, bpP:p10:rnd-def, bpP:p10:sorted-analytic, stepP:p10:rnd-a, stepP:p10:rnd-b, stepP:p10:rnd-c
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L174-L174 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sec-rnd#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L176-L176 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:rnd-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L176-L176 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sorted-analytic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L176-L176 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:rnd-a | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L182-L182 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:rnd-b | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L183-L183 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:rnd-c | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L184-L184 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

### P-p10 — bpP:p10:scaling

The restored index-def locator is corrected to L192 as requested by PFIXED-restored-review.md. Still missing the direct sec-rnd#data edge for the named target map varpi_tilde used in the diagonal-scaling comparison.

```text
NODE: bpP:p10:scaling
KIND: claim
TITLE: Scalings
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L191-L193
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L191-L193
CONTRACT_ID: bpP:p10:scaling
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the frozen fast frequency is w = omega/2 pi for the period-one parametrisation (Part 1); the secular frequency enters through Omega_j = 2 sigma_j with the chart R_j = (p_j^2 + q_j^2)/2 (Remark bpP:p9:dict); all of these differ from varpi tilde by a positive diagonal matrix
SOURCE_QUANTIFIERS: none beyond the setting of Part 10
SOURCE_CONCLUSION: R-nondegeneracy of varpi tilde is unchanged by the positive diagonal rescaling (it maps c to a nonzero c, bpP:p10:rnd (c)); the index is unchanged and the amount changes by a factor between the squares of the smallest and largest diagonal entries
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:dict, bpP:p10:rnd, bpP:p1:period-convert, bpP:p10:index-def, bpP:p10:sec-rnd#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:dict | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L192-L192 | Omega_j = 2 sigma_j with R_j = (p_j^2 + q_j^2)/2
EDGE: bpP:p10:rnd | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L192-L192 | invariance of R-nondegeneracy under positive diagonal matrices (c)
EDGE: bpP:p1:period-convert | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L192-L192 | the frozen frequency w = omega/2 pi (Part 1)
EDGE: bpP:p10:index-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L192-L192 | index and amount
EDGE: bpP:p10:sec-rnd#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:scaling@L192-L192 | the target frequency map varpi_tilde is the action expression defined by the R-nondegeneracy section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: writer-pfixed-revision+sol-review-P-w
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: restored by the P-FIXED revision (was EXCLUDED as P-FIXED-only); consumer stepP:p11:nd (Part 11 L50: R-nondegeneracy invariant under positive diagonal rescaling and affine change of variable); source fields filled by sonnet-extract-pfixed
```

### P-p10 — bpP:p10:finite-type

Wrong use-site locator: bpP:p10:sec-index#data -> L201. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree.

```text
NODE: bpP:p10:finite-type
KIND: lemma
TITLE: Finite type on a compact set; CP09 Lemma~1 = Rus01 Lemma~18.2
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:finite-type@L199-L203
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:finite-type@L204-L208
CONTRACT_ID: bpP:p10:finite-type
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B open connected, K subset B compact nonempty, C compact nonempty metric; g(c,.) real analytic and not identically zero for every c; all y partial derivatives jointly continuous
SOURCE_QUANTIFIERS: B,K,C,g; then exists mu_0 in N and beta>0; for all (c,y) in C x K
SOURCE_CONCLUSION: max_{0<=nu<=mu_0} abs(d_y^nu g(c,y))>=beta
CONSTANT_SCOPE: mu_0,beta depend on g,C,K and not on c,y
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:sec-index#data, stepP:p10:ft-pt, stepP:p10:ft-cover, stepP:p10:ft-min
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:finite-type@L201-L201 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:ft-pt | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:finite-type@L205-L205 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:ft-cover | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:finite-type@L206-L206 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:ft-min | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:finite-type@L207-L207 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

### P-p10 — bpP:p10:index-def

Wrong use-site locator: bpP:p10:sec-index#data -> L211. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree.

```text
NODE: bpP:p10:index-def
KIND: definition
TITLE: Index and amount
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:index-def@L210-L213
PROOF_SOURCE: -
CONTRACT_ID: bpP:p10:index-def
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K,C compact nonempty; all derivatives of g exist and are jointly continuous; no nondegeneracy assumed
SOURCE_QUANTIFIERS: each mu in N; index only when some beta_mu>0
SOURCE_CONCLUSION: beta_mu=min_{C x K} max_{nu<=mu} abs(d^nu g)>=0 is nondecreasing; when defined, index is the least positive integer mu with beta_mu>0 and amount beta=beta_index. For C=S^(m-1), m>=1 and g=<c,omega>^2 write beta_mu(omega,K)
CONSTANT_SCOPE: depends on g,C,K; only positive integers define the index
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:sec-index#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:index-def@L211-L211 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

### P-p10 — bpP:p10:cp09-lemma1

Wrong use-site locators: bpP:p10:sec-index#data -> L216, bpP:p10:index-def -> L216. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree.

```text
NODE: bpP:p10:cp09-lemma1
KIND: corollary
TITLE: CP09 Lemma 1 for an R-nondegenerate map
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:cp09-lemma1@L215-L217
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:cp09-lemma1@L218-L220
CONTRACT_ID: bpP:p10:cp09-lemma1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega:B->R^m real analytic R-nondegenerate, K subset B compact nonempty, m>=1; product variant has real analytic R-nondegenerate f_l
SOURCE_QUANTIFIERS: omega,K; then index mu_0 and beta>0; all unit c and y in K
SOURCE_CONCLUSION: g=<c,omega>^2 satisfies finite-type with max_{nu<=mu_0} abs(d^nu g)>=beta; same for product_l <c_l,f_l> on the product of spheres and the unsquared convention
CONSTANT_SCOPE: index and amount depend on omega,K; analogous dependence for products
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:rnd-def, bpP:p10:sec-index#data, bpP:p10:index-def, bpP:p10:finite-type, bpP:p10:generic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:rnd-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:cp09-lemma1@L216-L216 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:cp09-lemma1@L216-L216 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:index-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:cp09-lemma1@L216-L216 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:finite-type | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:cp09-lemma1@L216-L216 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:generic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:cp09-lemma1@L216-L216 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

### P-p10 — bpP:p10:stability

Wrong use-site locators: bpP:p10:sec-index#data -> L223, bpP:p10:index-def -> L225. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree.

```text
NODE: bpP:p10:stability
KIND: lemma
TITLE: Finite-order stability of the amount
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:stability@L222-L227
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:stability@L228-L231
CONTRACT_ID: bpP:p10:stability
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega,omega_tilde:B->R^m real analytic, m>=1; K compact nonempty; mu in N; M=max_{nu<=mu} sup_K abs(d^nu omega), theta=max_{nu<=mu} sup_K abs(d^nu(omega_tilde-omega))
SOURCE_QUANTIFIERS: maps,K,mu; all unit c,y in K,nu<=mu; positivity conclusion additionally assumes beta_mu(omega,K)>0 and 2^mu theta(2M+theta)<=beta_mu/2
SOURCE_CONCLUSION: difference between derivative norms of the two squared scalar products is <=2^nu theta(2M+theta); beta_mu(omega_tilde,K)>=beta_mu(omega,K)-2^mu theta(2M+theta). Under the two additional guards the new amount is >=beta_mu(omega,K)/2>0 with the same order; no nondegeneracy premise on omega_tilde. When the index is defined the positivity guard holds for every mu>=mu_0; for positive integers mu it is equivalent to mu>=mu_0
CONSTANT_SCOPE: all bounds use the displayed maps,K,mu,M,theta
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:sec-index#data, bpP:p10:index-def, stepP:p10:st-prod, stepP:p10:st-diff
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:stability@L223-L223 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:index-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:stability@L225-L225 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:st-prod | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:stability@L229-L229 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:st-diff | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:stability@L230-L230 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

### P-p10 — bpP:p10:interface

Wrong use-site locators: bpP:p10:conv#data -> L236, bpP:p10:sec-rnd#data -> L241, bpP:p10:sec-index#data -> L244, bpP:p9:good -> L238, bpP:p9:definite -> L238. Existing locators point only to a proof delimiter or definition heading; use the actual statement occurrences. Dependencies and source fields otherwise agree.

```text
NODE: bpP:p10:interface
KIND: theorem
TITLE: Good patch with nondegenerate frequency data
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L235-L248
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L249-L254
CONTRACT_ID: bpP:p10:interface
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=2,G,m0>0,m positive,a* in A_n,eta>0; optional extra analytic functions not identically zero on A_n
SOURCE_QUANTIFIERS: data first; then exists a_0,r_0>0, B=B_inf(a_0,2r_0), K_a=closed B_inf(a_0,r_0); then mu_0 and beta>0; all unit c,Lambda in K and orders mu>=mu_0
SOURCE_CONCLUSION: (a) closed outer cube inside G_n cap B_inf(a*,eta), with simple analytic sorted negative spectrum and local rotations; (b) alpha_4=min_{a in K_a,k in K_4} abs(k.2sigma(a))>0; (c) B^Lambda=Lambda(B) open connected, K=Lambda(K_a) compact positive measure and (nu,Omega), Omega=2sigma, real analytic R-nondegenerate; nu alone and the secular vector are also R-nondegenerate, with relabelling and positive component rescalings as in rnd(c); (d) squared-scalar index mu_0, amount beta>0 independent of coupling, beta_mu>=beta for all mu>=mu_0, and stability applies with its positivity guard. The patch can additionally avoid every specified analytic zero set
CONSTANT_SCOPE: a_0,r_0 depend on initial data; mu_0,beta depend only on n,G,m0,m,a_0,r_0, independently of coupling
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:sec-rnd#data, bpP:p10:sec-index#data, bpP:p10:rnd-def, bpP:p10:index-def, bpP:p9:good, bpP:p10:sorted-analytic, bpP:p9:local-analytic, bpP:p9:diagonalize, bpP:p9:definite, bpP:p10:rnd, bpP:p10:stability, bpP:p10:generic, stepP:p10:if-a, stepP:p10:if-b, stepP:p10:if-c, stepP:p10:if-d
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L236-L236 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sec-rnd#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L241-L241 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L244-L244 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:rnd-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L242-L242 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:index-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L253-L253 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:good | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L238-L238 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sorted-analytic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L238-L238 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:local-analytic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L238-L238 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:diagonalize | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L238-L238 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:definite | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L238-L238 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:rnd | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L242-L242 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:stability | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L245-L245 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:generic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L247-L247 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:if-a | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L250-L250 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:if-b | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L251-L251 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:if-c | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L252-L252 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:if-d | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L253-L253 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

## Validation

- Baseline structural checker: `P-p10: 61 nodes, 217 edges, 94 coverage items, 0 problems, 0 TODO records (not counted: --structural)`.
- Final validation PASS: exact scope of 52 node rows and 80 coverage rows; 13 complete replacement blocks; only failing DEPS/EDGE fields changed; dependency/EDGE pairing, prerequisite existence, locator bounds and local acyclicity; unchanged packet hashes, corpus/import hash pins and report whitespace.
- Review-applier dry run: 13 replaced, 0 added, 0 coverage replacements, 0 unresolved FAILs. Its PASS tally counts both node and coverage table rows sharing node IDs; the distinct-node verdict totals are 39 PASS and 13 FAIL. No packet is modified and no state-changing git or Lean command is run.

Packet snapshot SHA-256:

- P-p10.nodes.md: `25234dbea387456b90fc8721d8eb0f252abf4cc4af62156596e91581c2636fe6`.
- P-p10.coverage.md: `802e8b504d79665639bcbc45356e1cb618f3cddd08aa21ac673514ae7a0cc51f`.
