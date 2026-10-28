# P-p10 topology review

Reviewer: `sol-review-P-l`
Marker: `rev-P-l`

**Verdict: FAIL.** The intended narrow P-PLANAR route retains generic and good-point correctly. However, the claimed P-FIXED-only pruning is incompatible with the full statement currently retained in P-p11b. This review preserves source contracts rather than silently dropping an unused conjunct.

## Scope and rulings

Read the current REVIEW-BRIEF and SPEC, including the 2026-10-28 writer ruling: the Part 7 averaging/change-of-variables and polar lattice results remain excluded. None is needed by the repairs here. P-FIXED remains a deferred root; restoring a helper used by a retained theorem does not add that root. Part 10 matches its pinned SHA256: a76d868e361ef824a7e4c546719811da97a0d14bba1fd686b3eb61c32ea57124. No Lean execution or implementation inspection was performed.

## Findings

P10G-01 — invalid closure pruning. Part 12 L70 and L124 uses bpP:p11b:patch. Its packet retains the entire L261 conclusion, including: “Moreover Part~10’s frequency data (Theorem … interface) can be taken on the same patch”. This is an assertion of the corollary, not a comparison, provenance or an instruction to a future writer. The same sentence explicitly identifies interface as its supplier. The existing NOTE that the clause is “not used by P-PLANAR” does not authorize retaining its conclusion without its dependency. SPEC contains no ruling allowing clause-level projection of this corollary. The missing direct edge belongs to P-p11b (separate replacement below); its closure restores 33 of the 38 excluded labelled records, plus two consumed section-data records and the omitted second proof-step label on L52. The five exclusions that remain valid are f-spec (alias), noncont, n2-check, scaling and consumers (commentary/comparisons).

The small route itself remains correct: p12:data/pg-sets -> p11b:patch -> p11b:torsion -> to-id -> p10:generic and p10:good-point. The additional restoration is forced by the *full recorded contract* of patch. If the writer instead wants a graph containing only its first clauses, that requires an explicit source/graph projection ruling and a separately named contract; the current SPEC does not supply it. No such weakening is made here.

P10G-02 — unsupported unconditional specialization. generic L33 states the Phi_4 specialization without assuming Phi_4 is nonzero. The packet NOTE says a later consumer supplies that fact. That does not prove the specialization as recorded. Add the direct good-point edge; the general finite-product theorem remains unchanged. gen-zero must use the general e-id external: p9:good-set(c), which treats Phi_4 only, is not a theorem about arbitrary analytic g.

P10G-03 — missing direct packages and quantifier drift. Several retained steps omit the actual axes/action, coefficient, Laplace or Euclidean-norm packages they use. conv#data states negativity and identifies fast frequencies while omitting their direct suppliers. peel chooses C after a_1 despite the requirement that C be uniform in that variable; its quantifiers must put C before the universal a_1.

P10G-04 — restored input contracts. f-id adds the all-jets-vanish Taylor implication, and f-fts states the symmetric-polynomial theorem over R[X]. The current p9 externals state identity on an open set and symmetric polynomials over R, respectively. Retain these approved Part 10 external extensions when their consumers return; do not strengthen the p9 imports. f-spec remains an alias. Definitions never depend on later theorems merely mentioning them: in particular no stability -> interface cycle or index-def -> finite-type existence edge is restored.

## Present-node decisions

| Node | Decision | Source spans re-read; reason |
|---|---|---|
| bpP:p10:conv#data | FAIL | L15-L21; Missing direct edge to bpP:p9:definite: all sorted secular eigenvalues are negative. Missing direct edge to bpP:p8:laplace: analyticity of Q_h cited at L19. Missing direct edge to bpP:p7:product-chart: identification of the fast frequencies with the decoupled Hamiltonian. The note treats a stated fast-frequency identification as a consistency-only mention. |
| bpP:p10:generic | FAIL | L32-L34 / L35-L38; Missing direct edge to bpP:p9:good: Phi_4 in the last sentence is defined by this package. Missing direct edge to bpP:p10:good-point: the unconditional last sentence requires Phi_4 not identically zero. A consumer cannot retroactively supply a missing premise of an unconditional conclusion of generic. |
| stepP:p10:gen-prod | PASS | L36-L36 / L36-L36; Statement, scope, direct uses and locators agree. |
| stepP:p10:gen-zero | FAIL | L37-L37 / L37-L37; good-set(c) concerns the particular function Phi_4 and cannot supply the statement for arbitrary analytic g; the general approved e-id contract suffices. |
| bpP:p10:weyl | PASS | L40-L42 / L43-L46; Statement, scope, direct uses and locators agree. |
| stepP:p10:weyl-mm | FAIL | L44-L44 / L44-L44; Missing direct edge to bpP:p9:conv#data: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. |
| stepP:p10:weyl-pert | FAIL | L45-L45 / L45-L45; Missing direct edge to bpP:p9:conv#data: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. |
| bpP:p10:laplace-bounds | PASS | L57-L61 / L62-L66; Statement, scope, direct uses and locators agree. |
| stepP:p10:lb-series | FAIL | L63-L63 / L63-L63; Missing direct edge to bpP:p8:laplace-def: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. |
| stepP:p10:lb-ratio | PASS | L64-L64 / L64-L64; Statement, scope, direct uses and locators agree. |
| stepP:p10:lb-tail | PASS | L65-L65 / L65-L65; Statement, scope, direct uses and locators agree. |
| bpP:p10:formula69 | FAIL | L68-L73 / L74-L76; Missing direct edge to bpP:p10:conv#data: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. |
| bpP:p10:peel | FAIL | L78-L85 / L86-L89; C must be uniform in a_1; the packet chooses C after a_1 despite its stated independence. |
| stepP:p10:peel-ent | PASS | L87-L87 / L87-L87; Statement, scope, direct uses and locators agree. |
| stepP:p10:peel-bd | PASS | L88-L88 / L88-L88; Statement, scope, direct uses and locators agree. |
| bpP:p10:n2 | PASS | L93-L98 / L99-L103; Statement, scope, direct uses and locators agree. |
| stepP:p10:n2-r | FAIL | L100-L100 / L100-L100; Missing direct edge to bpP:p10:conv#data: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. Missing direct edge to bpP:p8:coeffs: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. |
| stepP:p10:n2-t | FAIL | L101-L101 / L101-L101; Missing direct edge to bpP:p10:conv#data: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. |
| stepP:p10:n2-nr | FAIL | L102-L102 / L102-L102; Missing direct edge to bpP:p10:conv#data: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. Missing direct edge to bpP:p9:good: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. |
| bpP:p10:good-point | PASS | L105-L109 / L110-L120; Statement, scope, direct uses and locators agree. |
| stepP:p10:gp-base | FAIL | L112-L112 / L112-L112; Missing direct edge to bpP:p10:conv#data: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. Missing direct edge to bpP:p9:good: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. |
| stepP:p10:gp-choice | FAIL | L113-L115 / L113-L115; Missing direct edge to bpP:p10:conv#data: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. |
| stepP:p10:gp-loc | FAIL | L116-L116 / L116-L116; Missing direct edge to bpP:p10:conv#data: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. Missing direct edge to bpP:p9:conv#data: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. |
| stepP:p10:gp-nr | FAIL | L117-L119 / L117-L119; Missing direct edge to bpP:p10:conv#data: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. Missing direct edge to bpP:p9:conv#data: uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly. |

## The 38 excluded labelled records

This table audits every exclusion named in the assignment. A FAIL here is a coverage decision; the corresponding restored block and coverage replacement follow.

| Record | Decision | Source | Reason |
|---|---|---|---|
| bpP:p10:f-id | FAIL | L25-L25 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:f-fts | FAIL | L26-L26 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:f-spec | PASS | L27-L27 | Alias or unconsumed administrative comparison; no retained proof uses its asserted content. |
| bpP:p10:f-pol | FAIL | L28-L28 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:f-leib | FAIL | L29-L29 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:sorted-analytic | FAIL | L48-L50 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:sa-loc | FAIL | L52-L52 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:good-set | FAIL | L122-L124 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:noncont | PASS | L129-L131 | Alias or unconsumed administrative comparison; no retained proof uses its asserted content. |
| bpP:p10:rnd-def | FAIL | L137-L140 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:Fc-def | FAIL | L142-L146 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:Fc-analytic | FAIL | L148-L150 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:Fc-poly | FAIL | L152-L152 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:F-nonzero | FAIL | L155-L159 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:F-A | FAIL | L162-L162 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:F-B | FAIL | L163-L163 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:F-C | FAIL | L164-L170 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:rnd | FAIL | L173-L180 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:rnd-a | FAIL | L182-L182 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:rnd-b | FAIL | L183-L183 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:rnd-c | FAIL | L184-L184 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:n2-check | PASS | L187-L189 | Alias or unconsumed administrative comparison; no retained proof uses its asserted content. |
| bpP:p10:scaling | PASS | L191-L193 | Alias or unconsumed administrative comparison; no retained proof uses its asserted content. |
| bpP:p10:finite-type | FAIL | L199-L203 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:ft-pt | FAIL | L205-L205 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:ft-cover | FAIL | L206-L206 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:ft-min | FAIL | L207-L207 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:index-def | FAIL | L210-L213 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:cp09-lemma1 | FAIL | L215-L217 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:stability | FAIL | L222-L227 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:st-prod | FAIL | L229-L229 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:st-diff | FAIL | L230-L230 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:interface | FAIL | L235-L248 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:if-a | FAIL | L250-L250 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:if-b | FAIL | L251-L251 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:if-c | FAIL | L252-L252 | Required by the full interface closure reached from p11b:patch. |
| stepP:p10:if-d | FAIL | L253-L253 | Required by the full interface closure reached from p11b:patch. |
| bpP:p10:consumers | PASS | L256-L258 | Alias or unconsumed administrative comparison; no retained proof uses its asserted content. |

## Failing coverage items

| Item | Decision | Reason |
|---|---|---|
| bpP:p10:f-id | FAIL | Restore the consumed interface closure. |
| bpP:p10:f-fts | FAIL | Restore the consumed interface closure. |
| bpP:p10:f-pol | FAIL | Restore the consumed interface closure. |
| bpP:p10:f-leib | FAIL | Restore the consumed interface closure. |
| bpP:p10:sorted-analytic | FAIL | Restore the consumed interface closure. |
| stepP:p10:sa-loc | FAIL | Restore the consumed interface closure. |
| bpP:p10:good-set | FAIL | Restore the consumed interface closure. |
| bpP:p10:rnd-def | FAIL | Restore the consumed interface closure. |
| bpP:p10:Fc-def | FAIL | Restore the consumed interface closure. |
| bpP:p10:Fc-analytic | FAIL | Restore the consumed interface closure. |
| stepP:p10:Fc-poly | FAIL | Restore the consumed interface closure. |
| bpP:p10:F-nonzero | FAIL | Restore the consumed interface closure. |
| stepP:p10:F-A | FAIL | Restore the consumed interface closure. |
| stepP:p10:F-B | FAIL | Restore the consumed interface closure. |
| stepP:p10:F-C | FAIL | Restore the consumed interface closure. |
| bpP:p10:rnd | FAIL | Restore the consumed interface closure. |
| stepP:p10:rnd-a | FAIL | Restore the consumed interface closure. |
| stepP:p10:rnd-b | FAIL | Restore the consumed interface closure. |
| stepP:p10:rnd-c | FAIL | Restore the consumed interface closure. |
| bpP:p10:finite-type | FAIL | Restore the consumed interface closure. |
| stepP:p10:ft-pt | FAIL | Restore the consumed interface closure. |
| stepP:p10:ft-cover | FAIL | Restore the consumed interface closure. |
| stepP:p10:ft-min | FAIL | Restore the consumed interface closure. |
| bpP:p10:index-def | FAIL | Restore the consumed interface closure. |
| bpP:p10:cp09-lemma1 | FAIL | Restore the consumed interface closure. |
| bpP:p10:stability | FAIL | Restore the consumed interface closure. |
| stepP:p10:st-prod | FAIL | Restore the consumed interface closure. |
| stepP:p10:st-diff | FAIL | Restore the consumed interface closure. |
| bpP:p10:interface | FAIL | Restore the consumed interface closure. |
| stepP:p10:if-a | FAIL | Restore the consumed interface closure. |
| stepP:p10:if-b | FAIL | Restore the consumed interface closure. |
| stepP:p10:if-c | FAIL | Restore the consumed interface closure. |
| stepP:p10:if-d | FAIL | Restore the consumed interface closure. |
| p10:prose-L135-L135 | FAIL | The restored closure consumes this data/bridge, or invalidates the old external-use description. |
| p10:prose-L197-L197 | FAIL | The restored closure consumes this data/bridge, or invalidates the old external-use description. |
| p10:sourcegap-L158 | FAIL | The restored closure consumes this data/bridge, or invalidates the old external-use description. |
| p10:prose-L270-L270 | FAIL | The restored closure consumes this data/bridge, or invalidates the old external-use description. |
| stepP:p10:sa-n2 (missing inventory item) | FAIL | A separate labelled step on L52 must have its own node and coverage entry. |

all other coverage items PASS

## Replacement fragments for P-p10

Existing blocks change only the identified failing fields. Restored records are new insertions into the current packet, reconstructed against the current source rather than copied with pre-extraction TODOs.

### Existing nodes

```text
NODE: bpP:p10:conv#data
KIND: definition
TITLE: Conventions and data of Part 10 (axes A_n, Lambda(a), nu, sorted sigma, U_n, G_n, norms)
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:conv#data@L15-L21
PROOF_SOURCE: -
CONTRACT_ID: bpP:p10:conv#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=2; G,m0>0, kappa=G m0; m in (0,inf)^n (the data of bpP:p8:conv#data); Q_h(a) of Definition bpP:p8:coeffs; D, K_4, NR_4, Phi_4 of Definition bpP:p9:good; norms of bpP:p9:conv#data
SOURCE_QUANTIFIERS: n, G, m0, m; then a in A_n
SOURCE_CONCLUSION: defines A_n={a: 0<a_1<...<a_n} (open convex cone, connected, planet 1 innermost), Lambda_i(a)=m_i sqrt(kappa a_i) (real analytic diffeomorphism of A_n onto an open set A_n^Lambda, frozen action I=Lambda, real analytic inverse), fast frequencies nu_i(a)=kappa^(1/2) a_i^(-3/2), sorted eigenvalues sigma_1(a)<=...<=sigma_n(a) of Q_h(a) with multiplicity (all sigma_j<0), U_n={a in A_n: D(sigma(a))!=0} and G_n={a in A_n: Phi_4(a)!=0} subset U_n (both open), Euclidean norm ¦x¦, max norm ¦x¦_inf, ¦¦M¦¦<=¦¦M¦¦_F
CONSTANT_SCOPE: none (kappa=G m0; data fixed first)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:conv#data, bpP:p8:coeffs, bpP:p9:good, bpP:p9:conv#data, bpP:p9:definite, bpP:p8:laplace, bpP:p7:product-chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:conv#data@L15-L15 | n, G, m0, kappa, m as in Part 8
EDGE: bpP:p8:coeffs | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:conv#data@L19-L19 | Q_h(a) is the matrix of Definition coeffs
EDGE: bpP:p9:good | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:conv#data@L19-L19 | D, K_4, NR_4, Phi_4 of Definition good; U_n, G_n
EDGE: bpP:p9:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:conv#data@L21-L21 | Euclidean, max and Frobenius norms, comparison of operator and Frobenius norm as in the conventions of Part 9
EDGE: bpP:p9:definite | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:conv#data@L19-L19 | all sorted secular eigenvalues are negative
EDGE: bpP:p8:laplace | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:conv#data@L19-L19 | analyticity of Q_h cited at L19
EDGE: bpP:p7:product-chart | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:conv#data@L19-L19 | identification of the fast frequencies with the decoupled Hamiltonian
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Section data from L15-L21. The negative spectrum and the identification of the fast frequencies have direct suppliers; the product-chart citation identifies the fast frequencies, rather than merely comparing notation. Restored R-nondegeneracy consumers also use these data.
```

```text
NODE: bpP:p10:generic
KIND: lemma
TITLE: Finitely many analytic conditions
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:generic@L32-L34
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:generic@L35-L38
CONTRACT_ID: bpP:p10:generic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: O subset R^N open and connected; g_1,...,g_r: O -> R real analytic and not identically zero (r>=1); for the last sentence: g_1=Phi_4 and g_2,...,g_r real analytic functions of the axes (for instance the torsion determinant of Part 11b) not identically zero on A_n
SOURCE_QUANTIFIERS: N, O, r, g_1..g_r (any analytic nonvanishing-identically family); the last sentence for n>=2 and the data (G,m0,m) of the conventions
SOURCE_CONCLUSION: g=g_1...g_r is not identically zero and {g!=0} is open, dense in O and of full Lebesgue measure in O; in particular the set of a in A_n where Phi_4 and all further g_j are nonzero is open, dense and of full measure in A_n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p10:gen-prod, stepP:p10:gen-zero, bpP:p10:conv#data, bpP:p9:good-set, bpP:p9:good, bpP:p10:good-point
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p10:gen-prod | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:generic@L36-L36 | proof step: product of nonzero analytic functions is nonzero
EDGE: stepP:p10:gen-zero | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:generic@L37-L37 | proof step: zero set closed, empty interior, null
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:generic@L33-L33 | A_n and Phi_4 of the conventions in the last sentence
EDGE: bpP:p9:good-set | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:generic@L33-L33 | Phi_4 is real analytic on A_n (part (a)), needed to apply the lemma with g_1=Phi_4
EDGE: bpP:p9:good | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:generic@L33-L33 | Phi_4 in the last sentence is defined by this package
EDGE: bpP:p10:good-point | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:generic@L33-L33 | the unconditional last sentence requires Phi_4 not identically zero
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The general finite-product assertion has the printed nonzero-function premises. The last sentence specializes to Phi_4 without assuming its nonvanishing; good-point supplies that fact within this result, independently of any later consumer.
```

```text
NODE: stepP:p10:gen-zero
KIND: step
TITLE: Zero set
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gen-zero@L37-L37
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gen-zero@L37-L37
CONTRACT_ID: stepP:p10:gen-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g not identically zero real analytic on connected open O
SOURCE_QUANTIFIERS: g, O
SOURCE_CONCLUSION: the zero set of g is closed with empty interior and null, so {g!=0} is open, dense and of full measure
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:e-id
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:e-id | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gen-zero@L37-L37 | identity theorem: zero set closed with empty interior and measure zero
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p10:weyl-mm
KIND: step
TITLE: Min--max
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:weyl-mm@L44-L44
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:weyl-mm@L44-L44
CONTRACT_ID: stepP:p10:weyl-mm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M in Sym_n with sorted eigenvalues lambda_1<=...<=lambda_n and an orthonormal eigenbasis v_1..v_n
SOURCE_QUANTIFIERS: n, M, l
SOURCE_CONCLUSION: lambda_l(M)=min over l-dimensional V of max over unit x in V of x^T M x (upper bound via span(v_1..v_l), lower bound via the intersection of V with span(v_l..v_n))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:e-spec, bpP:p9:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:e-spec | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:weyl-mm@L44-L44 | spectral theorem: orthonormal eigenbasis of the symmetric matrix
EDGE: bpP:p9:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:weyl-mm@L44-L44 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p10:weyl-pert
KIND: step
TITLE: Perturbation
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:weyl-pert@L45-L45
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:weyl-pert@L45-L45
CONTRACT_ID: stepP:p10:weyl-pert
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A, E in Sym_n; unit x; min-max formula of the previous step
SOURCE_QUANTIFIERS: n; A, E; x
SOURCE_CONCLUSION: ¦x^T(A+E)x-x^T A x¦<=¦¦E¦¦ for unit x, so the min-max values of A+E and A differ by at most ¦¦E¦¦
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p10:weyl-mm, bpP:p9:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p10:weyl-mm | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:weyl-pert@L45-L45 | the min-max formula for both A and A+E
EDGE: bpP:p9:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:weyl-pert@L45-L45 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p10:lb-series
KIND: step
TITLE: Series
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:lb-series@L63-L63
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:lb-series@L63-L63
CONTRACT_ID: stepP:p10:lb-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma bpP:p8:laplace series for b_s^(k) with s=3/2, k in {1,2}, alpha in [0,1/2]
SOURCE_QUANTIFIERS: k, alpha
SOURCE_CONCLUSION: b_{3/2}^{(k)}(alpha)=sum_{q>=0} T_q with T_q=(3/2)_{q+k}(3/2)_q/((q+k)! q!) alpha^(2q+k)>=0 and T_0=t_k alpha^k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:laplace, bpP:p8:laplace-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:laplace | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:lb-series@L63-L63 | series expansion of b_s^(k) with nonnegative terms
EDGE: bpP:p8:laplace-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:lb-series@L63-L63 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p10:formula69
KIND: corollary
TITLE: Formula 69 with remainders
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:formula69@L68-L73
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:formula69@L74-L76
CONTRACT_ID: bpP:p10:formula69
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: i<j; alpha=a_i/a_j<=1/2; fraktur a_ij, fraktur b_ij of Definition bpP:p8:coeffs
SOURCE_QUANTIFIERS: i<j; the axes a_i<a_j with a_i/a_j<=1/2
SOURCE_CONCLUSION: a_ij=(3/8) G m_i m_j alpha^2/a_j (1+theta), b_ij=(15/32) G m_i m_j alpha^3/a_j (1+theta2) with 0<=theta,theta2<=4 alpha^2; in particular a_ij<=(3/4) G m_i m_j a_i^2 a_j^(-3) and b_ij<=(15/16) G m_i m_j a_i^3 a_j^(-4)
CONSTANT_SCOPE: theta, theta2 in [0,4 alpha^2]; no constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:coeffs, bpP:p10:laplace-bounds, bpP:p10:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:coeffs | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:formula69@L75-L75 | a_ij=G m_i m_j a_i b_{3/2}^(1)(alpha)/(4 a_j^2) and b_ij likewise with b^(2)
EDGE: bpP:p10:laplace-bounds | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:formula69@L75-L75 | insert the bounds for b_{3/2}^(1), b_{3/2}^(2) and 1+4 alpha^2<=2
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:formula69@L68-L73 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p10:n2-r
KIND: step
TITLE: Exact trace--determinant ratio
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-r@L100-L100
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-r@L100-L100
CONTRACT_ID: stepP:p10:n2-r
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Corollary bpP:p9:n2: tr=-a(Lambda_1+Lambda_2)/(Lambda_1 Lambda_2), det=(a^2-b^2)/(Lambda_1 Lambda_2)>0; 0<b<a from Lemma bpP:p9:l74
SOURCE_QUANTIFIERS: a in A_2
SOURCE_CONCLUSION: r=a^2 (Lambda_1+Lambda_2)^2/(Lambda_1 Lambda_2 (a^2-b^2)), the displayed formula; (b/a)^2 in (0,1) so the second factor exceeds 1 and (Lambda_1+Lambda_2)^2/(Lambda_1 Lambda_2)>Lambda_2/Lambda_1+2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:n2, bpP:p9:l74, bpP:p10:conv#data, bpP:p8:coeffs
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:n2 | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-r@L100-L100 | trace and determinant of Q_h for n=2
EDGE: bpP:p9:l74 | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-r@L100-L100 | 0<b<a from b_{3/2}^(2)<b_{3/2}^(1)
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-r@L100-L100 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
EDGE: bpP:p8:coeffs | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-r@L100-L100 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p10:n2-t
KIND: step
TITLE: $t$ versus $r$
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-t@L101-L101
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-t@L101-L101
CONTRACT_ID: stepP:p10:n2-t
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: sigma_1<sigma_2<0 (Corollary bpP:p9:n2); tr=sigma_1+sigma_2, det=sigma_1 sigma_2
SOURCE_QUANTIFIERS: a in A_2
SOURCE_CONCLUSION: t>1 and r=t+1/t+2; since 1/t<1, t>r-3
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:n2, bpP:p10:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:n2 | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-t@L101-L101 | sigma_1<sigma_2<0 so t>1
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-t@L101-L101 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p10:n2-nr
KIND: step
TITLE: Non-resonance
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-nr@L102-L102
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-nr@L102-L102
CONTRACT_ID: stepP:p10:n2-nr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a_2/a_1>=16 m_1^2/m_2^2 so Lambda_2/Lambda_1>=4; NR_4 iff t not in {2,3} (Corollary bpP:p9:n2); t+1/t in {5/2,10/3} at these values
SOURCE_QUANTIFIERS: a in A_2 with a_2/a_1>=16 m_1^2/m_2^2
SOURCE_CONCLUSION: t+1/t=r-2>Lambda_2/Lambda_1>=4, so t not in {2,3}, hence NR_4(sigma(a))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:n2, stepP:p10:n2-r, stepP:p10:n2-t, bpP:p10:conv#data, bpP:p9:good
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:n2 | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-nr@L102-L102 | NR_4 iff t not in {2,3}
EDGE: stepP:p10:n2-r | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-nr@L102-L102 | r>Lambda_2/Lambda_1+2
EDGE: stepP:p10:n2-t | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-nr@L102-L102 | r=t+1/t+2
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-nr@L102-L102 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
EDGE: bpP:p9:good | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:n2-nr@L102-L102 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p10:gp-base
KIND: step
TITLE: $n=2$
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-base@L112-L112
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-base@L112-L112
CONTRACT_ID: stepP:p10:gp-base
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=2; epsilon in (0,1); m_1, m_2>0
SOURCE_QUANTIFIERS: epsilon; then a_1
SOURCE_CONCLUSION: a_2=1 and a_1<min{epsilon, m_2^2/(16 m_1^2)} gives a_1/a_2<epsilon and NR_4(sigma(a)) by Proposition n2
CONSTANT_SCOPE: a_1 depends on epsilon, m_1, m_2
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:n2, bpP:p10:conv#data, bpP:p9:good
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:n2 | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-base@L112-L112 | a_2/a_1>=16 m_1^2/m_2^2 gives NR_4 and Phi_4!=0
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-base@L112-L112 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
EDGE: bpP:p9:good | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-base@L112-L112 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p10:gp-choice
KIND: step
TITLE: Step $n-1\to n$, $n\ge3$: the chosen point
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-choice@L113-L115
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-choice@L113-L115
CONTRACT_ID: stepP:p10:gp-choice
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=3; induction hypothesis for the system (G,m0,(m_2..m_n)): a_hat in A_{n-1} with a_j/a_{j+1}<epsilon (2<=j<n) and NR_4(delta) for the sorted eigenvalues delta of Q_hat(a_hat)
SOURCE_QUANTIFIERS: epsilon; a_hat; then a_1
SOURCE_CONCLUSION: all delta_l<0 (Proposition definite for n-1>=2); kappa_0:=min{¦k_hat.delta¦: k_hat in Z^(n-1), 0<¦k_hat¦_1<=4}>0; a=(a_1,a_hat) with a_1<=min{1,a_2/2}, a_1<epsilon a_2 and 4 ¦¦E¦¦<kappa_0 where E is the matrix of Lemma peel (¦¦E¦¦<=C a_1^(3/2)->0)
CONSTANT_SCOPE: a_1 depends on (a_hat, epsilon, kappa_0, C), hence on (G, m0, m, epsilon)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:definite, bpP:p9:good, bpP:p10:peel, bpP:p10:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:definite | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-choice@L113-L113 | all eigenvalues delta_l of Q_hat negative (n-1>=2)
EDGE: bpP:p9:good | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-choice@L114-L114 | K_4 and NR_4(delta) for the (n-1)-planet system give kappa_0>0
EDGE: bpP:p10:peel | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-choice@L115-L115 | E=Q_h(a)-D with ¦¦E¦¦<=C a_1^(3/2); Q_hat and D
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-choice@L113-L115 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p10:gp-loc
KIND: step
TITLE: Location of the eigenvalues
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-loc@L116-L116
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-loc@L116-L116
CONTRACT_ID: stepP:p10:gp-loc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the point a of the choice step; sorted spectrum of D=0 (+) Q_hat is delta_1<=...<=delta_{n-1}<0 followed by 0
SOURCE_QUANTIFIERS: a as chosen; l in {1..n}
SOURCE_CONCLUSION: ¦sigma_l(a)-delta_l¦<=¦¦E¦¦ (l<=n-1), ¦sigma_n(a)¦<=¦¦E¦¦ and sigma_n(a)<0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:weyl, bpP:p9:definite, stepP:p10:gp-choice, bpP:p10:peel, bpP:p10:conv#data, bpP:p9:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:weyl | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-loc@L116-L116 | Weyl inequality for A=D, A+E=Q_h(a)
EDGE: bpP:p9:definite | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-loc@L116-L116 | sigma_n(a)<0 for the n-planet system
EDGE: stepP:p10:gp-choice | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-loc@L116-L116 | delta_l<0, the chosen a_1 and E
EDGE: bpP:p10:peel | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-loc@L116-L116 | D=0 (+) Q_hat and E=Q_h(a)-D
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-loc@L116-L116 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
EDGE: bpP:p9:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-loc@L116-L116 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p10:gp-nr
KIND: step
TITLE: No resonance
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-nr@L117-L119
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-nr@L117-L119
CONTRACT_ID: stepP:p10:gp-nr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: eigenvalue location of the previous step; k=(k_hat,k_n) in K_4; kappa_0 and 4 ¦¦E¦¦<kappa_0
SOURCE_QUANTIFIERS: a as chosen; k in K_4
SOURCE_CONCLUSION: k.sigma!=0 for all k in K_4 (including e_j-e_l, so sigma has distinct entries); hence NR_4(sigma(a)) and a_1/a_2<epsilon
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p10:gp-loc, stepP:p10:gp-choice, bpP:p9:good, bpP:p10:conv#data, bpP:p9:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p10:gp-loc | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-nr@L117-L117 | sigma_n<0, ¦sigma_l-delta_l¦<=¦¦E¦¦ and ¦sigma_n¦<=¦¦E¦¦
EDGE: stepP:p10:gp-choice | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-nr@L117-L117 | kappa_0 and the bound 4 ¦¦E¦¦<kappa_0
EDGE: bpP:p9:good | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-nr@L117-L117 | K_4 and NR_4
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-nr@L117-L119 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
EDGE: bpP:p9:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:gp-nr@L117-L119 | uses the axes/actions/sorted-spectrum, coefficient, Laplace or Euclidean-norm package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p10:peel
KIND: lemma
TITLE: Peeling the innermost planet
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:peel@L78-L85
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:peel@L86-L89
CONTRACT_ID: bpP:p10:peel
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=2; a_hat=(a_2..a_n) with 0<a_2<...<a_n and a=(a_1,a_hat) in A_n with 0<a_1<=min{1,a_2/2}; Q_hat(a_hat) in Sym_{n-1} the matrix Q_h of the (n-1)-planet system with the same G, m0, masses (m_2..m_n) and axes a_hat if n>=3, Q_hat:=(0) if n=2; D=0 (+) Q_hat(a_hat); E:=Q_h(a)-D
SOURCE_QUANTIFIERS: fix n, G, m0, m and a_hat; then there exists C depending only on those data such that for every a_1 in (0,min{1,a_2/2}] the displayed bounds hold
SOURCE_CONCLUSION: ¦¦E¦¦<=¦¦E¦¦_F<=C a_1^(3/2); E_jk=0 for j!=k, j,k>=2; ¦E_11¦<=(3G/(4 sqrt kappa)) a_1^(3/2) sum_{k>=2} m_k a_k^(-3); ¦E_jj¦<=(3 G m_1/(4 sqrt kappa)) a_1^2 a_j^(-7/2) (j>=2); ¦E_1k¦<=(15 G sqrt(m_1 m_k)/(16 sqrt kappa)) a_1^(11/4) a_k^(-17/4) (k>=2)
CONSTANT_SCOPE: C depends on (G, m0, m, a_hat) but not on a_1
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p10:peel-ent, stepP:p10:peel-bd, bpP:p10:conv#data, bpP:p8:coeffs, bpP:p9:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p10:peel-ent | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:peel@L87-L87 | proof step: entries of Q_h(a) versus Q_hat
EDGE: stepP:p10:peel-bd | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:peel@L88-L88 | proof step: bounds
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:peel@L79-L79 | A_n, kappa, Lambda_i, sorted data and Q_h(a)
EDGE: bpP:p8:coeffs | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:peel@L79-L79 | Q_h of Definition coeffs for the n-planet and the (n-1)-planet system
EDGE: bpP:p9:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:peel@L80-L80 | operator and Frobenius norms of E
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### Restored nodes and missing section data

```text
NODE: bpP:p10:f-id
KIND: external
TITLE: Identity theorem and integral domain
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:f-id@L25-L25
PROOF_SOURCE: -
CONTRACT_ID: bpP:p10:f-id
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: real analytic f on connected open O; for the Taylor clause all derivatives of f vanish at a point
SOURCE_QUANTIFIERS: O, f and the indicated point
SOURCE_CONCLUSION: identity theorem on a nonempty open subset; if every derivative vanishes at a point, f vanishes on a ball, hence identically on O
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred. Adds the all-derivatives-vanish Taylor clause to p9:e-id; not merely an alias.
```

```text
NODE: bpP:p10:f-fts
KIND: external
TITLE: bpP:p10:f-fts
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:f-fts@L26-L26
PROOF_SOURCE: -
CONTRACT_ID: bpP:p10:f-fts
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a symmetric polynomial in sigma_1,...,sigma_n over R[X]
SOURCE_QUANTIFIERS: n and the polynomial
SOURCE_CONCLUSION: it is a polynomial in the elementary symmetric polynomials with coefficients in R[X]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred. Coefficient ring R[X], whereas p9:e-fts is stated over R; do not silently strengthen that external.
```

```text
NODE: bpP:p10:f-pol
KIND: external
TITLE: Polarization
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:f-pol@L28-L28
PROOF_SOURCE: -
CONTRACT_ID: bpP:p10:f-pol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T a symmetric nu-linear form on R^N
SOURCE_QUANTIFIERS: N, nu, T
SOURCE_CONCLUSION: T=0 iff a -> T(a,...,a) is zero iff max over Euclidean unit a of abs(T(a,...,a))=0; the displayed polarization identity holds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: bpP:p10:f-leib
KIND: external
TITLE: bpP:p10:f-leib
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:f-leib@L29-L29
PROOF_SOURCE: -
CONTRACT_ID: bpP:p10:f-leib
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f,g differentiable through order nu with symmetric tensor derivatives
SOURCE_QUANTIFIERS: nu, y and the repeated direction a
SOURCE_CONCLUSION: d^nu(fg)(y)(a^nu)=sum_{k=0}^nu binom(nu,k) d^k f(y)(a^k) d^(nu-k) g(y)(a^(nu-k))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

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
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sorted-analytic@L51-L51 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:sa-loc | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sorted-analytic@L52-L52 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:sa-n2 | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sorted-analytic@L52-L52 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:sa-loc
KIND: step
TITLE: Local branches
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:sa-loc@L52-L52
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:sa-loc@L52-L52
CONTRACT_ID: stepP:p10:sa-loc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a^0 in U_n, so Q_h(a^0) has simple spectrum
SOURCE_QUANTIFIERS: a^0; then a local ball
SOURCE_CONCLUSION: local analytic ordered branches from p9 local-analytic equal the sorted eigenvalues, proving their analyticity
CONSTANT_SCOPE: local ball depends on a^0 and the fixed data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p8:coeffs, bpP:p9:local-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:sa-loc@L52-L52 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p8:coeffs | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:sa-loc@L52-L52 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:local-analytic | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:sa-loc@L52-L52 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

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
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L125-L125 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:good | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L125-L125 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:good-point | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L126-L126 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:good-set | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L126-L126 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:local-analytic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L123-L123 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: bpP:p10:rnd-def
KIND: definition
TITLE: R\"ussmann nondegeneracy
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd-def@L137-L140
PROOF_SOURCE: -
CONTRACT_ID: bpP:p10:rnd-def
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega:B->R^m real analytic; B nonempty, open and connected in R^N
SOURCE_QUANTIFIERS: N,m,B,omega
SOURCE_CONCLUSION: defines R-nondegenerate: for every nonzero c, <c,omega> is not identically zero on B
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

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
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-def@L142-L142 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

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
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-analytic@L151-L151 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:Fc-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-analytic@L151-L151 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:Fc-poly | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-analytic@L152-L152 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:Fc-poly
KIND: step
TITLE: Polynomial in the characteristic coefficients
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:Fc-poly@L152-L152
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:Fc-poly@L152-L152
CONTRACT_ID: stepP:p10:Fc-poly
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: c fixed; the permutation product defining F_c
SOURCE_QUANTIFIERS: data,c; form the symmetric polynomial P(X;sigma)
SOURCE_CONCLUSION: P is a polynomial Pi in X and the elementary symmetric polynomials; F_c(a)=Pi(x(a);e_1(sigma(a)),...,e_n(sigma(a))) with x=sum c_prime_i nu_i, and characteristic coefficients are analytic polynomials in Q_h, so F_c is real analytic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:Fc-def, bpP:p10:f-fts, bpP:p9:e-spec, bpP:p8:coeffs, bpP:p8:e-taylor
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:Fc-poly@L152-L152 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:Fc-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:Fc-poly@L152-L152 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:f-fts | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:Fc-poly@L152-L152 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:e-spec | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:Fc-poly@L152-L152 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p8:coeffs | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:Fc-poly@L152-L152 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p8:e-taylor | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:Fc-poly@L152-L152 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

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
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L160-L160 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:Fc-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L160-L160 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:peel | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L161-L161 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:weyl | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L161-L161 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:F-A | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L162-L162 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:F-B | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L163-L163 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:F-C | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L164-L164 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:F-A
KIND: step
TITLE: Case A: $c'_1\ne0$ (every $n\ge2$)
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-A@L162-L162
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-A@L162-L162
CONTRACT_ID: stepP:p10:F-A
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: induction proof of F-nonzero; c_prime_1!=0; a_hat fixed and a_1 decreases to zero
SOURCE_QUANTIFIERS: data,c,a_hat; all sufficiently small positive a_1
SOURCE_CONCLUSION: nu_1 -> infinity while every other term stays bounded; each L_{c,pi} has magnitude tending to infinity and F_c!=0 for small a_1
CONSTANT_SCOPE: small a_1 depends on the fixed data,c,a_hat
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:Fc-def, bpP:p10:peel, bpP:p10:weyl
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-A@L162-L162 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:Fc-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-A@L162-L162 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:peel | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-A@L162-L162 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:weyl | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-A@L162-L162 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

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
DEPS: bpP:p10:conv#data, bpP:p10:Fc-def, bpP:p9:n2, bpP:p10:n2, bpP:p10:peel
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:Fc-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:n2 | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:n2 | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:peel | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:F-C
KIND: step
TITLE: Case C: $c'_1=0$, $n\ge3$
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-C@L164-L170
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-C@L164-L170
CONTRACT_ID: stepP:p10:F-C
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=3, c_prime_1=0, c!=0; induction hypothesis for every smaller-system nonzero coefficient vector
SOURCE_QUANTIFIERS: data,c; choose a_hat, then small a_1
SOURCE_CONCLUSION: sigma_l -> delta_l (l<n), sigma_n ->0; product limit is product_d F_{c^(d)} of the smaller system, where c^(d)=((c_prime_2,...,c_prime_n); the entries of c_doubleprime with entry d deleted); the factors are matched by d=pi^(-1)(n) and pi_doubleprime=pi composed with the increasing enumeration of {1,...,n} minus {d}. If every c^(d)!=0, Fc-analytic, generic and induction give a_hat with nonzero limit. If some c^(d)=0 then c has a single nonzero secular coefficient and every factor is nonzero by definiteness
CONSTANT_SCOPE: a_hat and small a_1 depend on data,c
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:Fc-def, bpP:p10:peel, bpP:p10:weyl, bpP:p10:Fc-analytic, bpP:p10:generic, bpP:p9:definite
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-C@L164-L164 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:Fc-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-C@L164-L164 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:peel | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-C@L164-L164 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:weyl | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-C@L164-L164 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:Fc-analytic | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-C@L169-L169 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:generic | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-C@L169-L169 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:definite | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-C@L170-L170 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

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
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L181-L181 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sec-rnd#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L181-L181 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:rnd-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L181-L181 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sorted-analytic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L181-L181 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:rnd-a | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L182-L182 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:rnd-b | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L183-L183 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:rnd-c | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L184-L184 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:rnd-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-a@L182-L182
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-a@L182-L182
CONTRACT_ID: stepP:p10:rnd-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P nonempty open connected in U_n; assume a nonzero relation c on P for the contradiction
SOURCE_QUANTIFIERS: data,P; arbitrary nonzero c
SOURCE_CONCLUSION: replace c by (c_prime,2 c_Omega); the relation is a factor of F_c, forcing F_c zero on P then on A_n, contradicting F-nonzero; action change preserves connectedness and identical vanishing
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:sec-rnd#data, bpP:p10:rnd-def, bpP:p10:Fc-def, bpP:p10:Fc-analytic, bpP:p9:e-id, bpP:p10:F-nonzero
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-a@L182-L182 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sec-rnd#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-a@L182-L182 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:rnd-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-a@L182-L182 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:Fc-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-a@L182-L182 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:Fc-analytic | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-a@L182-L182 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:e-id | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-a@L182-L182 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:F-nonzero | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-a@L182-L182 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:rnd-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-b@L183-L183
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-b@L183-L183
CONTRACT_ID: stepP:p10:rnd-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a putative relation sum c_i sqrt(kappa) a_i^(-3/2)=0 on an open set
SOURCE_QUANTIFIERS: data; arbitrary coefficient vector c
SOURCE_CONCLUSION: differentiating in each a_i gives -(3/2)c_i sqrt(kappa) a_i^(-5/2)=0, hence c=0; fast frequency R-nondegeneracy follows
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:rnd-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-b@L183-L183 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:rnd-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-b@L183-L183 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:rnd-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-c@L184-L184
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-c@L184-L184
CONTRACT_ID: stepP:p10:rnd-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: component relabelling or positive diagonal rescaling of a frequency map
SOURCE_QUANTIFIERS: any such relabelling and scaling
SOURCE_CONCLUSION: the induced map on relation vectors sends a nonzero vector to a nonzero vector, preserving R-nondegeneracy
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:rnd-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:rnd-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-c@L184-L184 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

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
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:finite-type@L204-L204 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:ft-pt | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:finite-type@L205-L205 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:ft-cover | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:finite-type@L206-L206 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:ft-min | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:finite-type@L207-L207 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:ft-pt
KIND: step
TITLE: Pointwise
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-pt@L205-L205
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-pt@L205-L205
CONTRACT_ID: stepP:p10:ft-pt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the finite-type premises; a point (c_0,y_0) in C x K
SOURCE_QUANTIFIERS: each point; then some order nu_0
SOURCE_CONCLUSION: some abs(d^nu_0 g(c_0,y_0))>0; otherwise all derivatives vanish and analytic identity forces g(c_0,.) identically zero
CONSTANT_SCOPE: nu_0 may depend on c_0,y_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:sec-index#data, bpP:p10:f-id
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-pt@L205-L205 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:f-id | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-pt@L205-L205 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:ft-cover
KIND: step
TITLE: Open cover
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-cover@L206-L206
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-cover@L206-L206
CONTRACT_ID: stepP:p10:ft-cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: jointly continuous partial derivatives and the pointwise positive derivative; C x K compact nonempty
SOURCE_QUANTIFIERS: cover C x K; choose finite subcover and mu_0
SOURCE_CONCLUSION: positivity persists on a neighborhood of each point; finitely many derivative orders nu_i suffice, with mu_0=max_i nu_i
CONSTANT_SCOPE: mu_0 depends on g,C,K
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:sec-index#data, stepP:p10:ft-pt
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-cover@L206-L206 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:ft-pt | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-cover@L206-L206 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:ft-min
KIND: step
TITLE: Minimum
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-min@L207-L207
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-min@L207-L207
CONTRACT_ID: stepP:p10:ft-min
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the finite subcover order mu_0; nonempty compact C x K
SOURCE_QUANTIFIERS: define M(c,y); then beta
SOURCE_CONCLUSION: M=max_{nu<=mu_0} abs(d^nu g) is continuous and positive on C x K; attained minimum beta is strictly positive
CONSTANT_SCOPE: beta depends on g,C,K and mu_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:sec-index#data, stepP:p10:ft-cover
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-min@L207-L207 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:ft-cover | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-min@L207-L207 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

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
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:index-def@L210-L210 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

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
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:cp09-lemma1@L218-L218 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:index-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:cp09-lemma1@L218-L218 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:finite-type | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:cp09-lemma1@L216-L216 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:generic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:cp09-lemma1@L216-L216 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

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
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:stability@L228-L228 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:index-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:stability@L228-L228 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:st-prod | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:stability@L229-L229 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:st-diff | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:stability@L230-L230 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:st-prod
KIND: step
TITLE: Product rule
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:st-prod@L229-L229
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:st-prod@L229-L229
CONTRACT_ID: stepP:p10:st-prod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f=<c,omega>, f_tilde=<c,omega_tilde>; Euclidean unit c; definitions of M and theta
SOURCE_QUANTIFIERS: all y in K, k<=mu, unit direction a
SOURCE_CONCLUSION: abs(d^k f(y)(a^k))<=M, abs(d^k(f_tilde-f)(y)(a^k))<=theta, abs(d^k(f_tilde+f)(y)(a^k))<=2M+theta
CONSTANT_SCOPE: M,theta as in stability
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:sec-index#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:st-prod@L229-L229 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:st-diff
KIND: step
TITLE: Difference
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:st-diff@L230-L230
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:st-diff@L230-L230
CONTRACT_ID: stepP:p10:st-diff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the product identity f_tilde^2-f^2=(f_tilde-f)(f_tilde+f) and bounds of st-prod
SOURCE_QUANTIFIERS: all nu<=mu,unit a; then maxima and minima
SOURCE_CONCLUSION: Leibniz gives abs(d^nu(f_tilde^2-f^2)(a^nu))<=2^nu theta(2M+theta); taking maxima over directions and orders and minima over c,y yields the stability inequality
CONSTANT_SCOPE: same M,theta,mu
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:sec-index#data, bpP:p10:index-def, bpP:p10:f-leib, stepP:p10:st-prod
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:st-diff@L230-L230 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:index-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:st-diff@L230-L230 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:f-leib | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:st-diff@L230-L230 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:st-prod | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:st-diff@L230-L230 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

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
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L249-L249 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sec-rnd#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L249-L249 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L249-L249 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:rnd-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L242-L242 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:index-def | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L253-L253 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:good | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L249-L249 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sorted-analytic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L238-L238 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:local-analytic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L238-L238 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:diagonalize | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L238-L238 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:definite | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L249-L249 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:rnd | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L242-L242 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:stability | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L245-L245 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:generic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L247-L247 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:if-a | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L250-L250 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:if-b | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L251-L251 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:if-c | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L252-L252 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:if-d | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L253-L253 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:if-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-a@L250-L250
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-a@L250-L250
CONTRACT_ID: stepP:p10:if-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the initial data of interface
SOURCE_QUANTIFIERS: data; choose a_0,r_0
SOURCE_CONCLUSION: the good-patch part (a) follows from good-set
CONSTANT_SCOPE: patch depends on data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p9:good, bpP:p10:good-set
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-a@L250-L250 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:good | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-a@L250-L250 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:good-set | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-a@L250-L250 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:if-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-b@L251-L251
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-b@L251-L251
CONTRACT_ID: stepP:p10:if-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the good compact K_a of interface; finite K_4
SOURCE_QUANTIFIERS: a in K_a and k in K_4; then alpha_4
SOURCE_CONCLUSION: a -> min_k abs(k.2sigma(a)) is continuous and positive on G_n; compactness gives a positive minimum
CONSTANT_SCOPE: alpha_4 depends on fixed compact patch
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p9:good, bpP:p10:weyl, bpP:p9:good-set
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-b@L251-L251 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:good | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-b@L251-L251 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:weyl | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-b@L251-L251 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:good-set | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-b@L251-L251 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:if-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-c@L252-L252
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-c@L252-L252
CONTRACT_ID: stepP:p10:if-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B a max-norm ball inside U_n; K_a its inner closed cube; the axes/action analytic diffeomorphism
SOURCE_QUANTIFIERS: given patch B,K_a
SOURCE_CONCLUSION: B^Lambda is open connected, K=Lambda(K_a) compact of positive measure; rnd with P=B gives R-nondegeneracy
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:sec-rnd#data, bpP:p10:rnd-def, bpP:p10:rnd
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-c@L252-L252 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sec-rnd#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-c@L252-L252 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:rnd-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-c@L252-L252 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:rnd | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-c@L252-L252 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:if-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-d@L253-L253
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-d@L253-L253
CONTRACT_ID: stepP:p10:if-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the action patch and map from (c); K compact of positive measure, hence nonempty; unit sphere S^(2n-1) nonempty
SOURCE_QUANTIFIERS: fixed data and patch; then index mu_0,beta>0; all mu>=mu_0
SOURCE_CONCLUSION: cp09-lemma1 supplies squared-scalar finite type; index-def gives beta_mu>=beta_mu_0>0; constants are independent of coupling because the frequency data depend only on actions
CONSTANT_SCOPE: index and amount depend only on n,G,m0,m,a_0,r_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:sec-rnd#data, bpP:p10:sec-index#data, bpP:p10:index-def, stepP:p10:if-c, bpP:p10:cp09-lemma1, bpP:p10:finite-type
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-d@L253-L253 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sec-rnd#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-d@L253-L253 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sec-index#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-d@L253-L253 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:index-def | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-d@L253-L253 | directly used statement data or proof ingredient described in the source fields
EDGE: stepP:p10:if-c | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-d@L253-L253 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:cp09-lemma1 | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-d@L253-L253 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:finite-type | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-d@L253-L253 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Restored because the full retained p11b:patch contract invokes interface; P-FIXED remains deferred.
```

```text
NODE: stepP:p10:sa-n2
KIND: step
TITLE: n=2: the simple-spectrum locus
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:sa-n2@L52-L52
PROOF_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:sa-n2@L52-L52
CONTRACT_ID: stepP:p10:sa-n2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=2 and the positive planetary data
SOURCE_QUANTIFIERS: all a in A_2
SOURCE_CONCLUSION: the discriminant is positive everywhere on A_2, so U_2=A_2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p9:n2
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:sa-n2@L52-L52 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p9:n2 | blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:sa-n2@L52-L52 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: A second labelled proof step occurs on the same physical line as sa-loc; preserve both labels.
```

```text
NODE: bpP:p10:sec-rnd#data
KIND: definition
TITLE: The frequency map varpi and its action expression
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sec-rnd@L135-L135
PROOF_SOURCE: -
CONTRACT_ID: bpP:p10:sec-rnd#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Part 10 data; a in U_n
SOURCE_QUANTIFIERS: data; all a in U_n and Lambda in Lambda(U_n)
SOURCE_CONCLUSION: varpi=(nu_1,...,nu_n,2sigma_1,...,2sigma_n) is real analytic on U_n; varpi_tilde=varpi composed with a(Lambda) on Lambda(U_n)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:conv#data, bpP:p10:sorted-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:conv#data | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sec-rnd#data@L135-L135 | directly used statement data or proof ingredient described in the source fields
EDGE: bpP:p10:sorted-analytic | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sec-rnd#data@L135-L135 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p10:sec-index#data
KIND: definition
TITLE: Symmetric tensor derivatives and diagonal norms
STATEMENT_SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sec-index@L197-L197
PROOF_SOURCE: -
CONTRACT_ID: bpP:p10:sec-index#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g is C^nu on an open B subset R^N; vector-valued omega for the last clause
SOURCE_QUANTIFIERS: B,N,nu,g (and omega); y in B
SOURCE_CONCLUSION: d^nu g is the symmetric nu-linear derivative; its norm here is max over Euclidean unit a of abs(d^nu g(y)(a,...,a)), with nu=0 giving abs(g(y)); this vanishes iff all order-nu partial derivatives vanish. Vector norm uses max over unit a of the Euclidean norm of d^nu omega(y)(a^nu)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p10:f-pol
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p10:f-pol | blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sec-index#data@L197-L197 | directly used statement data or proof ingredient described in the source fields
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### Coverage replacements and missing labelled item

```text
ITEM: bpP:p10:f-id
KIND: external
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:f-id@L25-L25
DISPOSITION: NODE bpP:p10:f-id
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:f-fts
KIND: external
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:f-fts@L26-L26
DISPOSITION: NODE bpP:p10:f-fts
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:f-pol
KIND: external
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:f-pol@L28-L28
DISPOSITION: NODE bpP:p10:f-pol
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:f-leib
KIND: external
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:f-leib@L29-L29
DISPOSITION: NODE bpP:p10:f-leib
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:sorted-analytic
KIND: lemma
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:sorted-analytic@L48-L50
DISPOSITION: NODE bpP:p10:sorted-analytic
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:sa-loc
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:sa-loc@L52-L52
DISPOSITION: NODE stepP:p10:sa-loc
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:good-set
KIND: corollary
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:good-set@L122-L124
DISPOSITION: NODE bpP:p10:good-set
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:rnd-def
KIND: definition
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd-def@L137-L140
DISPOSITION: NODE bpP:p10:rnd-def
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:Fc-def
KIND: definition
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-def@L142-L146
DISPOSITION: NODE bpP:p10:Fc-def
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:Fc-analytic
KIND: proposition
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:Fc-analytic@L148-L150
DISPOSITION: NODE bpP:p10:Fc-analytic
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:Fc-poly
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:Fc-poly@L152-L152
DISPOSITION: NODE stepP:p10:Fc-poly
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:F-nonzero
KIND: theorem
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:F-nonzero@L155-L159
DISPOSITION: NODE bpP:p10:F-nonzero
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:F-A
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-A@L162-L162
DISPOSITION: NODE stepP:p10:F-A
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:F-B
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-B@L163-L163
DISPOSITION: NODE stepP:p10:F-B
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:F-C
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:F-C@L164-L170
DISPOSITION: NODE stepP:p10:F-C
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:rnd
KIND: theorem
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:rnd@L173-L180
DISPOSITION: NODE bpP:p10:rnd
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:rnd-a
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-a@L182-L182
DISPOSITION: NODE stepP:p10:rnd-a
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:rnd-b
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-b@L183-L183
DISPOSITION: NODE stepP:p10:rnd-b
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:rnd-c
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:rnd-c@L184-L184
DISPOSITION: NODE stepP:p10:rnd-c
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:finite-type
KIND: lemma
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:finite-type@L199-L203
DISPOSITION: NODE bpP:p10:finite-type
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:ft-pt
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-pt@L205-L205
DISPOSITION: NODE stepP:p10:ft-pt
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:ft-cover
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-cover@L206-L206
DISPOSITION: NODE stepP:p10:ft-cover
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:ft-min
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:ft-min@L207-L207
DISPOSITION: NODE stepP:p10:ft-min
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:index-def
KIND: definition
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:index-def@L210-L213
DISPOSITION: NODE bpP:p10:index-def
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:cp09-lemma1
KIND: corollary
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:cp09-lemma1@L215-L217
DISPOSITION: NODE bpP:p10:cp09-lemma1
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:stability
KIND: lemma
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:stability@L222-L227
DISPOSITION: NODE bpP:p10:stability
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:st-prod
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:st-prod@L229-L229
DISPOSITION: NODE stepP:p10:st-prod
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:st-diff
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:st-diff@L230-L230
DISPOSITION: NODE stepP:p10:st-diff
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: bpP:p10:interface
KIND: theorem
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#bpP:p10:interface@L235-L248
DISPOSITION: NODE bpP:p10:interface
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:if-a
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-a@L250-L250
DISPOSITION: NODE stepP:p10:if-a
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:if-b
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-b@L251-L251
DISPOSITION: NODE stepP:p10:if-b
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:if-c
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-c@L252-L252
DISPOSITION: NODE stepP:p10:if-c
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:if-d
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:if-d@L253-L253
DISPOSITION: NODE stepP:p10:if-d
REASON: required by the complete retained bpP:p11b:patch statement through bpP:p10:interface; the P-FIXED-only exclusion is invalid for that full contract
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: p10:prose-L135-L135
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#prose@L135-L135
DISPOSITION: NODE bpP:p10:sec-rnd#data
REASON: consumed frequency-map section data; direct dependencies are required from the restored R-nondegeneracy and interface records
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: p10:prose-L197-L197
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#prose@L197-L197
DISPOSITION: NODE bpP:p10:sec-index#data
REASON: consumed tensor-derivative and norm definitions for the restored finite-type, index and stability records
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: p10:sourcegap-L158
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#sourcegap@L158-L158
DISPOSITION: NODE bpP:p10:F-nonzero, stepP:p10:F-A, stepP:p10:F-B, stepP:p10:F-C
REASON: the source gap in Fej04r is supplied by the restored symmetric-product induction, including the single-secular-coefficient subcase
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: p10:prose-L270-L270
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#prose@L270-L270
DISPOSITION: EXCLUDED
REASON: external-facts pointer; the restored closure uses the separately retained f-id/f-fts extensions, f-pol/f-leib, p9:e-spec/e-id/local-analytic and p8:e-taylor; the list itself is administrative
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p10
REVIEWER: -
```

```text
ITEM: stepP:p10:sa-n2
KIND: proof-region
SOURCE: blueprint-P/parts/p10-nondegeneracy.tex#stepP:p10:sa-n2@L52-L52
DISPOSITION: NODE stepP:p10:sa-n2
REASON: second labelled proof step on L52, omitted from the mechanical inventory
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-l
REVIEWER: -
```

## For slice P-p11b

| Node | Decision | Source | Reason |
|---|---|---|---|
| bpP:p11b:patch | FAIL | L260-L265, especially L261 | The full recorded Moreover conclusion directly invokes interface; the existing note drops that dependency because a later consumer uses fewer clauses. |

Apply this block only to P-p11b. All source-statement fields are preserved.

```text
NODE: bpP:p11b:patch
KIND: corollary
TITLE: Patches near every axis vector
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L260-L262
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L263-L265
CONTRACT_ID: bpP:p11b:patch
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=2; a* in A_2; eta>0
SOURCE_QUANTIFIERS: a* in A_2, eta>0; then a_0, r_0
SOURCE_CONCLUSION: there are a_0 in A_2 and r_0>0 with closed B_inf(a_0,2 r_0) subset B_inf(a*,eta) cap {Phi_4!=0} cap {det beta-hat!=0}; then B:=min over closed B_inf(a_0,r_0) of ¦det beta-hat¦>0, beta-hat is symmetric and Theorem birkhoff-form applies with K_a=closed B_inf(a_0,r_0), O_a=B_inf(a_0,2 r_0) (a cube: simply connected); moreover Part 10 frequency data (Theorem bpP:p10:interface) can be taken on the same patch
CONSTANT_SCOPE: a_0, r_0 depend on (G, m0, m, a*, eta)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:torsion, bpP:p11b:birkhoff-form, bpP:p11b:beta-def, bpP:p9:good, bpP:p11b:sec-set#data, bpP:p10:interface, bpP:p10:interface
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:torsion | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L264-L264 | {Phi_4 det beta-hat!=0} open and dense
EDGE: bpP:p11b:birkhoff-form | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L261-L261 | theorem applies with K_a, O_a
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L261-L261 | beta-hat symmetric, det beta-hat
EDGE: bpP:p9:good | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L261-L261 | {Phi_4!=0}
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L260-L260 | A_2
EDGE: bpP:p10:interface | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L260-L262 | The last sentence takes the Part 10 frequency data on this same patch, using the extra analytic nonvanishing condition det beta-hat != 0.
EDGE: bpP:p10:interface | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L261-L261 | the Moreover clause takes the Part 10 frequency data on the same patch using the final sentence of interface
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b+sol-review-P-m
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The last sentence is part of the retained source conclusion and explicitly invokes interface. Part 12 uses only the good-patch clauses, but that does not erase a direct dependency of this full corollary. Keep the full source statement and the direct edge; no P-FIXED theorem is thereby added as a root.
```

## Verification receipt

All 24 present nodes have a decision (9 PASS, 15 FAIL); all 38 excluded labelled records have a decision (5 PASS, 33 FAIL). The report supplies 15 existing-node replacements, 33 restored labelled nodes, three additional nodes (two section-data packages and sa-n2), 37 coverage replacements and one new coverage item. The P-p11b replacement is isolated in its own section. A virtual assembly of the proposed records has matching DEPS/EDGE inventories, no missing dependency targets and no cycles reachable from patch; every restored/new node is reachable from patch. Existing-node field comparison found changes only to DEPS/EDGE, NOTE and the identified peel quantifier field. The source and packet checks ran without Lean or graph mutation.

## Source checks and suspected defects

Read all of Part 10 (L1-L275), including the excluded proofs, and the used contracts in Parts 7, 8 and 9. Part 10 has no direct K/I/N import in its retained or restored closure: its external prerequisites are track-P source statements. Read the Part 8 Laplace normalization and series, secular coefficients, analytic Taylor external, and section data; Part 9 norms, spectral and identity externals, local analytic decomposition, definite spectrum, Phi_4 and good-set, diagonalization and the n=2 formula; and Part 7 product-chart(b). The ratio and peeling formulas keep the halved Q_h normalization, increasing axes, Euclidean spectral norms, and Omega=2 sigma. The induction hypothesis is local to the n-1 case for all data, not a new theorem premise or self-edge. Both C1 and C2 of the symmetric-product induction are represented in F-C. Finite type and all minima retain the compact/nonempty guards, the positive-integer index convention and the squared scalar convention. Stability retains the beta_mu>0 guard and supplies no new nondegeneracy premise on the perturbed map.

No new pinned-paper erratum is asserted. The source does not have a mathematical gap merely because the L261 Moreover clause is absent from the short proof at L264: it explicitly cites the existing Part 10 interface, whose final sentence allows the extra nonzero torsion condition. The defect is its missing graph dependency and the resulting false P-FIXED-only closure claim. Similarly generic can use the later-labelled good-point without circularity: good-point is proved by the n=2 case and peeling/Weyl and does not depend on generic.

The source ratio notation T_(q+1)/T_q at L64 is formally problematic at alpha=0 in ordinary division notation. The actual needed recurrence T_(q+1)<=2 alpha^2 T_q remains valid there because every term is zero for k=1,2. This is a removable endpoint notation issue, not a reason to alter the faithfully recorded source contract or mark the Laplace estimate unproved.

Only this report was edited. No Lean, lint/build, or state-changing git command was run, in accordance with the review brief.
