# P-p8 delta topology review

**Verdict: FAIL.** Reviewer: `sol-delta-P-j`. Marker: `delta-P-j`.

Scope: exactly the 27 nodes still TOPOLOGY_STATUS: PROPOSED and 59 items still COVERAGE_STATUS: PROPOSED (86 records). The prior reviewer is `sol-review-P-j` and extractor `sonnet-extract-P-p8`, both distinct from this reviewer. Non-PROPOSED records were read only as source context and prerequisite interfaces.

Read DELTA-BRIEF.md and REVIEW-BRIEF.md, SPEC.md and its rulings, and P-p8-review.md. Re-read the complete Part 8 L1-L256, including every proposed statement/proof and EDGE-use locator. Out-of-slice source checks: Part 6 split L62-L67; Part 7 kepler L69-L81, regular-kepler L99-L108, poincare-def L119-L129, o-facts L131-L133, poincare L138-L148, po-del L151-L155, holomorphic L166-L170, product-def L190-L192 and product-chart L194-L203; I Part 7 x-hol L32-L34 and orbit-identities L181-L190; Part 0 symplectic/assembly/average/Birkhoff transcriptions and their relevant frozen definition files. No implementation or provider file was read, and no Lean command was run.

## Remaining failures

**D1 — missing coupling condition.** In same-jets#jets, SOURCE_CONCLUSION says simply “(b) same secular equations”. The source at L201 explicitly says “For mu=eps”. The two chart equations carry separate factors mu and eps (Part 7 L202); equality of the secular jets alone does not identify those factors. The parent same-jets correctly preserves this restriction, but its step supplier must do so too. Change only SOURCE_CONCLUSION to retain the condition on branch (b).

**D2 — missing composition conclusion.** same-jets#transfer is the supplier for clause (c) of its parent, including the explicit identity after a parameter-dependent slow symplectic change at L202. It already records chi in SOURCE_HYPOTHESES, and the proof at L206 ends “chi acts on (xi,eta) only”, but its conclusion stops at the uncomposed Birkhoff transfer. Restore S_mov o chi-S_fix o chi=delta(Lambda) in SOURCE_CONCLUSION. Existing identification/data dependencies supply it; no new premise or edge is needed.

## Proposed nodes

Spans below are in blueprint-P/parts/p8-secular-form.tex; all listed EDGE-use spans were re-read as well as the statement/proof spans.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p8:e-diff | PASS | L27-L27 | Fubini is restored alongside differentiation and period-translation invariance; matches L27. |
| bpP:p8:rho | PASS | L33-L35; L34-L34 | The holomorphic-domain dependency is direct at L34; rho_* is named here, not proved here, so no cyclic edge is needed. |
| stepP:p8:pa-hol | PASS | L50-L50 | Holomorphic principal inverse square root, separation, chart and physical split all have direct suppliers; conv#data addition is appropriate. |
| bpP:p8:symmetries | PASS | L58-L66; L67-L73; L69-L69; L70-L70; L71-L71; L72-L72; L65-L65; L59-L59 | The data locator now points to the actual chart use at L59; S1-S3 and the common O(2) action agree with the source. |
| stepP:p8:sy-f | PASS | L72-L72 | Common linear orthogonal R and independent overall signs match the parent L65; arbitrary affine translations of momenta are not asserted. |
| stepP:p8:ev-tay | PASS | L83-L83 | Direct secular-data link is present; the analytic invariant Taylor structure agrees with L83. |
| stepP:p8:ev-quad | PASS | L84-L84 | Direct slow-coordinate data link is present; the reflection and pi/2 rotation give B=0, C=A as stated. |
| stepP:p8:l64-c | PASS | L103-L103 | Fubini directly separates the continuous planetwise factors; the single-period averages are supplied by l64-b. |
| stepP:p8:l64-d | PASS | L104-L104 | Both product independence and Fubini are directly linked; the noncircular and circular mean-value clauses have their suppliers. |
| stepP:p8:la-conv | PASS | L123-L123 | Laplace-definition link is direct; growth, positivity and convergence match the series computation. |
| bpP:p8:identities | PASS | L129-L135; L136-L140; L138-L138; L139-L139; L137-L137; L130-L130 | The two source identities and their coefficient proofs match; qf-diag/qf-cross now consume this lemma directly. |
| stepP:p8:id-1 | PASS | L138-L138 | Definition, convergent series and Pochhammer relations are linked at the actual coefficient comparison. |
| stepP:p8:id-2 | PASS | L139-L139 | Definition, series and Pochhammer links match both the q=0 case and the q>=1 comparison. |
| stepP:p8:qf-pair | PASS | L160-L160 | Product independence and Fubini are direct uses; pairwise invariant structure and analytic setting are supplied. |
| stepP:p8:qf-c0 | PASS | L162-L162 | Circular value, radial average, Laplace definition and secular data are directly linked at L162. |
| stepP:p8:qf-diag | PASS | L163-L165; L163-L163; L164-L164; L165-L165 | I1 is supplied by identities; scale and Laplace uses now locate L164/L165; Fubini and physical data are directly linked. |
| stepP:p8:qf-cross | PASS | L166-L168; L166-L166; L168-L168 | I2 is supplied by identities, not merely its coefficient-comparison step; the mixed-variation, Fourier and data links match. |
| stepP:p8:qf-assembly | PASS | L169-L169 | Constant-term edge now locates L169; coefficient/data links and the analytic remainder suppliers agree. |
| stepP:p8:qf-diag2 | PASS | L170-L170 | Slow-coordinate dictionary and frozen symplectic form are direct uses; Omega=2 sigma is preserved. |
| stepP:p8:id-diff | PASS | L191-L191 | The composed perturbations have the required data link; split, continuity and planetwise product uses are direct. |
| stepP:p8:id-int | PASS | L193-L193 | The common analytic domain and Bochner-average data are linked; integrability is transferred using the continuous difference. |
| bpP:p8:same-jets#jets | FAIL | L196-L207; L206-L206 | D1: the same-equations conclusion drops the explicit mu=eps restriction of clause (b), L201. |
| bpP:p8:same-jets#transfer | FAIL | L196-L207; L206-L206 | D2: omits the composition identity S_mov o chi-S_fix o chi=delta(Lambda), explicitly stated at L202 and proved at L206; the parent same-jets record consumes this step for that clause. |
| bpP:p8:quartic | PASS | L216-L229; L230-L235; L231-L231; L232-L232; L233-L233; L234-L234; L217-L217; L221-L221 | Separated D, exact v-to-u conversion, all-alpha Taylor scope and explicit mixed-coefficient forward obligations are preserved. |
| stepP:p8:q4-str | PASS | L231-L231 | Invariant quartic structure is supplied by evenness, analyticity, pair decomposition, Weyl and the secular data. |
| stepP:p8:q4-a | PASS | L232-L232 | D retains the strict separation inequality; prefactor, exact conversion and Taylor corrections agree with L221/L232. |
| stepP:p8:q4-b | PASS | L233-L233 | Secular data and the diagonal radial computation are direct; the h^(4)/64-h''/16 coefficient agrees with L233. |

## Proposed coverage items

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p8:e-diff | PASS | L27-L27 | Source unit maps to the named existing node(s); disposition remains correct. |
| bpP:p8:rho | PASS | L33-L35 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:pa-hol | PASS | L50-L50 | Source unit maps to the named existing node(s); disposition remains correct. |
| bpP:p8:symmetries | PASS | L58-L66 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:sy-f | PASS | L72-L72 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:ev-tay | PASS | L83-L83 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:ev-quad | PASS | L84-L84 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:l64-c | PASS | L103-L103 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:l64-d | PASS | L104-L104 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:la-conv | PASS | L123-L123 | Source unit maps to the named existing node(s); disposition remains correct. |
| bpP:p8:no76 | PASS | L125-L127 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| bpP:p8:identities | PASS | L129-L135 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:id-1 | PASS | L138-L138 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:id-2 | PASS | L139-L139 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:qf-pair | PASS | L160-L160 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:qf-c0 | PASS | L162-L162 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:qf-diag | PASS | L163-L165 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:qf-cross | PASS | L166-L168 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:qf-assembly | PASS | L169-L169 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:qf-diag2 | PASS | L170-L170 | Source unit maps to the named existing node(s); disposition remains correct. |
| bpP:p8:factor-half | PASS | L173-L178 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| stepP:p8:id-diff | PASS | L191-L191 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:id-int | PASS | L193-L193 | Source unit maps to the named existing node(s); disposition remains correct. |
| bpP:p8:use11 | PASS | L208-L210 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| bpP:p8:quartic | PASS | L216-L229 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:q4-str | PASS | L231-L231 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:q4-a | PASS | L232-L232 | Source unit maps to the named existing node(s); disposition remains correct. |
| stepP:p8:q4-b | PASS | L233-L233 | Source unit maps to the named existing node(s); disposition remains correct. |
| bpP:p8:cp11-check | PASS | L237-L239 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| heading:bpP:p8 | PASS | L1-L1 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| heading:bpP:p8:conv | PASS | L15-L15 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| heading:bpP:p8:sec-an | PASS | L37-L37 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| heading:bpP:p8:sec-sym | PASS | L54-L54 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| heading:bpP:p8:sec-64 | PASS | L87-L87 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| heading:bpP:p8:sec-lap | PASS | L108-L108 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| heading:bpP:p8:sec-quad | PASS | L142-L142 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| heading:bpP:p8:sec-ident | PASS | L180-L180 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| heading:bpP:p8:sec-quartic | PASS | L212-L212 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| heading:bpP:p8:notes | PASS | L241-L241 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:sourcegap-L157 | PASS | L157-L157 | Source unit maps to the named existing node(s); disposition remains correct. |
| p8:sourcegap-L228 | PASS | L228-L228 | Source unit maps to the named existing node(s); disposition remains correct. |
| p8:source-L98 | PASS | L98-L98 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:source-L113 | PASS | L113-L113 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:source-L156 | PASS | L156-L156 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:source-L188 | PASS | L188-L188 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:source-L227 | PASS | L227-L227 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:prose-L4-L13 | PASS | L4-L13 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:prose-L17-L19 | PASS | L17-L19 | Source unit maps to the named existing node(s); disposition remains correct. |
| p8:prose-L21-L22 | PASS | L21-L22 | Source unit maps to the named existing node(s); disposition remains correct. |
| p8:prose-L24-L25 | PASS | L24-L25 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:prose-L56-L56 | PASS | L56-L56 | Source unit maps to the named existing node(s); disposition remains correct. |
| p8:prose-L214-L214 | PASS | L214-L214 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:prose-L243-L243 | PASS | L243-L243 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:prose-L245-L245 | PASS | L245-L245 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:prose-L247-L247 | PASS | L247-L247 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:prose-L249-L249 | PASS | L249-L249 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:prose-L251-L251 | PASS | L251-L251 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:prose-L253-L253 | PASS | L253-L253 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |
| p8:prose-L255-L256 | PASS | L255-L256 | Valid heading, provenance, notation, administrative or comparison exclusion; no consumed input is hidden. |

## Prior repairs, packages, imports and convergence

The prior package repairs pass: the affected secular computations link conv#data directly; Laplace computations link laplace-def; C_0/Q_h consumers link coeffs where used; Fubini/planet independence have direct e-diff/product-def suppliers. The rho node uses the holomorphic chart domain without introducing a backward edge to the proposition that constructs rho_*. The corrected consumer locators at L59, L138/L139, L164, L165/L168 and L169 point to the stated uses. qf-diag and qf-cross use the full identities lemma; no dependency runs backward from that lemma to its consumers.

The Birkhoff transfer repair correctly restores the oscillator-disc inclusion in N_R(rho_*) and removes the average identity as an independent new assumption: identification supplies it. The literal frozen average, integrability clause and expansion were checked. The quartic repairs retain 0<alpha<1, the small eccentricities, strict inner-apocentre/outer-pericentre separation, exact square-root conversion, factor -G m_i m_j/a_j, and all-alpha local Taylor scope; no uniform nonseparated domain is substituted. Mixed coefficients c_3,...,c_6 remain explicit forward obligations rather than silently imported CP11 formulas.

Step hypothesis fields listing prior computed facts are read as the local context furnished by their DEPS, as in the original review; they are not promoted to assumptions of the enclosing results. No generic inherits-quantifiers insertion or mechanically added alternative-route EDGE occurs in these 27 pending nodes. All ordinary valid records pass without stylistic rewrites.

The two used I imports have matching source statements and existing IDs in docs/graph/I/DEPGRAPH.md. Principal inverse square root is covered by x-hol. orbit-identities supplies the radial identity at qf-diag; the mean-anomaly Jacobian mentioned in the same rationale comes from differentiating the Kepler equation in the massed Kepler context, not an additional conclusion of orbit-identities. The edge still has a genuine direct radial-identity use, so no topology rewrite is needed.

Coverage checks retain the data paragraphs as conv#data mappings, rotation/reflection notation as mapped consumers, and each substantive labelled/proof unit as its named node. Paper source gaps map to the blueprint computations, with mixed quartic coefficients explicitly deferred. Searches of the corpus confirm that no76, factor-half/dictionary, use11 and cp11-check are pointers, conventions, provenance or comparisons rather than hidden proof inputs; Part 9/10 convention/provenance references and Part 11b numerical comparisons do not change these dispositions. All 59 proposed coverage items PASS.

## Suspected blueprint defects and limitations

The earlier rotation-domain concern at L22/L76 remains: the coordinate polydisc is not invariant under arbitrary planar rotations (xi_i=eta_i=0.9 rho can rotate outside it). This is not a new failure in the proposed records: symmetry of a total average and local invariance of the analytic germ must be distinguished; no unstated domain premise is added here. At L72 “any isometry R” must be read in the linear orthogonal sense of the parent L65; the repaired sy-f now does so. Existing paper errata at L173-L178/L237-L239/L247 remain source-reported provenance; the PDFs were not independently re-audited in this delta review. No new mathematical repair or deviation is introduced.

## Complete replacements

Only SOURCE_CONCLUSION changes in each block; every other field remains verbatim.

### P-p8 — bpP:p8:same-jets#jets

```text
NODE: bpP:p8:same-jets#jets
KIND: step
TITLE: All-order equality of the jets; same quadratic form; same equations
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#jets@L206-L206
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#jets@L206-L206
CONTRACT_ID: bpP:p8:same-jets#jets
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: delta does not depend on (xi,eta); Thm identification; Thm quadratic-form; Thm product-chart (d)
SOURCE_QUANTIFIERS: alpha!=0; (xi,Lambda,eta) in N_R(rho_*)
SOURCE_CONCLUSION: all (xi,eta)-derivatives of order >=1 of S_mov-S_fix vanish; (a) same quadratic form Q_h and constant C_0+delta; (b) for mu=eps, same secular equations, frequencies differ by mu d_Lambda delta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:identification, bpP:p8:quadratic-form, bpP:p7:product-chart, bpP:p8:perturbation-analytic, bpP:p8:conv#data, bpP:p8:coeffs
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:identification | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#jets@L206-L206 | S_mov=S_fix+delta(Lambda) with delta independent of (xi,eta)
EDGE: bpP:p8:quadratic-form | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#jets@L206-L206 | (a): the quadratic form Q_h
EDGE: bpP:p7:product-chart | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#jets@L206-L206 | (d): Hamilton equations in the chart
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#jets@L206-L206 | S_fix, S_mov analytic so derivatives exist
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#jets@L206-L206 | S_fix, S_mov, the slow variables and N_R(rho_*)
EDGE: bpP:p8:coeffs | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#jets@L206-L206 | C_0 and Q_h in the common quadratic form
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8+sol-review-P-j
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: added step: the all-order equality and (a),(b) are consumed by Parts 11b/12; proof paragraph L206
```

### P-p8 — bpP:p8:same-jets#transfer

```text
NODE: bpP:p8:same-jets#transfer
KIND: step
TITLE: Transfer to the frozen Birkhoff form (c)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#transfer@L206-L206
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#transfer@L206-L206
CONTRACT_ID: bpP:p8:same-jets#transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of conv#data; P_mov=hat f_mov and P_fix=hat f_fix with no mu dependence, assembled by (I,p,q)=(Lambda,eta,xi); HasBirkhoff(P_mov,V,r_0,mu_0,P_0,Omega,beta); for every I in V and p,q with p_j^2+q_j^2<r_0^2 for all j, (I,p,q) lies in N_R(rho_*); for the composition clause chi(Lambda;.) is a slow-variable symplectic change acting only on (xi,eta)
SOURCE_QUANTIFIERS: V, r_0, mu_0, P_0, Omega, beta
SOURCE_CONCLUSION: HasBirkhoff(P_fix,V,r_0,mu_0,P_0-delta,Omega,beta) and conversely: integrability clause (i) transfers and the expansion clause (ii) with P_0->P_0-delta; Omega, beta unchanged; for the composition clause, S_mov o chi-S_fix o chi=delta(Lambda)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:identification, bpP:p0:birkhoff#HasSecularBirkhoffForm, bpP:p0:secavg#secularAverage, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:identification | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#transfer@L206-L206 | P_av^mov-P_av^fix=delta(I) on the integrability set
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#transfer@L206-L206 | definition of HasBirkhoff, clauses (i), (ii)
EDGE: bpP:p0:secavg#secularAverage | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#transfer@L206-L206 | frozen average, I=Lambda
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#bpP:p8:same-jets#transfer@L206-L206 | dictionary (I,p,q)=(Lambda,eta,xi)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8+sol-review-P-j
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: added step for the unmarked substantive transfer (c)
```

## Validation

Corpus and import pins verify successfully (`sha256sum -c` exits 0 for both CORPUS.sha256 and IMPORTS.sha256). The structural check reports `P-p8: 55 nodes, 223 edges, 86 coverage items, 0 problems, 0 TODO records (not counted: --structural)`. The scoped verdict is 25 node PASS, 2 node FAIL, 59 coverage PASS.

Reviewed packet/source snapshot SHA-256:

- `docs/graph/P/packets/P-p8.nodes.md`: `5d3e3c3ca9121b2537e8a3f61ba7548437c722e2747a0371d96441cdf2713262`.
- `docs/graph/P/packets/P-p8.coverage.md`: `aacd3e47b3964d4605a1e94ccd69335c3960ac312efea0712900a3302ef25439`.
- `blueprint-P/parts/p8-secular-form.tex`: `413806b9fcc86156e0b241da85668677b44bf142897c7039940504a50ae1febc`.

Read-only replacement dry run: `P-p8: 2 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 50 PASS nodes`. The dry-run tool counts node-ID PASS rows from both tables; the independent table check confirms 25 distinct passing node records. Exact scope checks find all 27 proposed nodes and all 59 proposed coverage items, once each in their respective tables. Both replacement blocks are headed P-p8 and change only SOURCE_CONCLUSION. All 27 proposed nodes have exactly one EDGE per DEPS/ROUTES entry, existing targets, valid line bounds and correct separators. Packet/source hashes remain unchanged. `git diff --check -- docs/graph/P/reviews/P-p8-delta.md` exits 0. Only this report was written; replacements were not applied.
