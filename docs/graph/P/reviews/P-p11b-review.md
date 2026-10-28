# P-p11b topology review

Reviewer: **sol-review-P-m**. Marker: **rev-P-m**. Date: 2026-10-28.

Verdict: **FAIL** — 46 node PASS, 17 node FAIL; all 87 coverage items PASS. All 63 nodes and all 87 coverage items were reviewed against the pinned Part 11b, its suppliers and the current SPEC (including writer rulings). The report changes no packet or blueprint. Topology status is distinct from mathematical proof closure.

## Findings

**Packages and direct uses.** Several proof steps use section data without a direct edge: the complex notation and beta_0/beta_1 of sec-set, the bracket convention, the N_0/quartic/rotation setting of sec-bnf, delta_pi of beta-def, and the spectral projection identities. The replacements add only the actual missing uses. Transitive paths through a supplying lemma do not satisfy SPEC's package rule. At L97, pj-cons also puts the A/B identities being established into SOURCE_HYPOTHESES; the replacement instead records the available rational formulas and reduction.

**Conditional N imports.** At L148, continuation is a criterion for an existing maximal solution with uniform data, not an existence theorem. At L161 and L175 the cited N lemmas inherit the complex-domain and field-smallness setting of N Part 5 flow. Part 11b supplies real analytic coefficient families and real flow bounds but no matching complex-domain construction. Preserve the printed assertions and expose these applicability bridges as SOURCE_GAP; do not silently add their conclusions or the complex hypotheses as premises. No new external is introduced.

**Angle lift at L217.** `stepP:p11b:bt-rot#lift` **PASS**, as an explicitly exposed SOURCE_GAP for the stated analytic real-angle lift. Part 9 n2 (L197, proof L202) gives a global analytic SO(2) frame: w=(q_12,sigma_1-q_11), w nonzero because q_12>0, followed by normalization and J. Thus there is no missing global rotation theorem for n=2, and simple connectedness is unnecessary for the rotation itself. That does not make the asserted covering-space/real-angle argument a proved input. Part 11b L217 explicitly asserts this lift and cites local-analytic/diagonalize, rather than taking the explicit frame as a replacement proof. Retain the faithfully disclosed gap; do not substitute a new proof or claim that p9:n2 itself states a real-valued angle. The parent bt-rot and its coverage mapping pass.

**Patch, L261.** The sentence beginning “Moreover Part 10's frequency data … can be taken on the same patch” is an asserted conclusion with an explicit supplying theorem, not an administrative forward pointer. Part 10 interface L247 explicitly allows additional analytic functions not identically zero; Part 11b torsion supplies precisely this premise for det(beta-hat). The simultaneous existential choice can therefore use that theorem. The fact that Part 12 does not need R-nondegeneracy is irrelevant to extraction of this full corollary. Add the direct edge and remove the unsupported theorem-as-hypothesis. The supplier is currently absent from the P-p10 node packet; the writer must restore its closure (see the separate owning-slice handoff below).

## Node decisions

Spans are in `blueprint-P/parts/p11b-planar-torsion.tex`; each row includes the statement/proof and the consumer EDGE spans were checked there. External supplier statements were also re-read at their packet locators, including all six N imports.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p11b:e-ode | PASS | L20-L20 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:e-ca | PASS | L23-L23 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:sec-set#data | PASS | L14-L16 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:orbit | PASS | L28-L36; L37-L41 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:or-kep | PASS | L38-L38 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:or-pos | PASS | L39-L39 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:or-an | PASS | L40-L40 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:laplace-red | PASS | L43-L56; L57-L62 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:lr-1 | PASS | L58-L58 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:lr-2 | PASS | L59-L59 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:lr-3 | PASS | L60-L60 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:lr-red | PASS | L61-L61 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:pair-jet | PASS | L64-L91; L92-L98 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:pj-formal | PASS | L93-L93 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:pj-bin | FAIL | L94-L94 | Missing direct section-data edge to bpP:p11b:sec-set#data. |
| stepP:p11b:pj-avg | FAIL | L95-L95 | Missing direct section-data edge to bpP:p11b:sec-set#data. |
| stepP:p11b:pj-red | FAIL | L96-L96 | Missing direct section-data edge to bpP:p11b:sec-set#data. |
| stepP:p11b:pj-cons | FAIL | L97-L97 | SOURCE_HYPOTHESES assumes the two identities the step is establishing. |
| bpP:p11b:quartic-explicit | PASS | L100-L109; L110-L116 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:qe-conv | PASS | L111-L113 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:qe-an | PASS | L114-L114 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:qe-c12 | PASS | L115-L115 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:sec-bnf#data | PASS | L120-L124 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:char | FAIL | L126-L128; L129-L132 | Missing direct section-data edge to bpP:p11b:sec-set#data. |
| stepP:p11b:ch-mon | PASS | L130-L130 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:ch-bra | PASS | L131-L131 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:homological | FAIL | L134-L138; L139-L142 | Missing direct section-data edge to bpP:p11b:sec-set#data. |
| stepP:p11b:ho-def | PASS | L140-L140 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:ho-eq | FAIL | L141-L141 | Missing direct section-data edges (see replacements). |
| bpP:p11b:flow | PASS | L144-L146; L147-L150 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:fl-bd | FAIL | L148-L148 | Continuation import presupposes a maximal solution and uniform data; local existence/maximal-solution supply is not represented. |
| stepP:p11b:fl-an | PASS | L149-L149 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:lie | PASS | L152-L159; L160-L164 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:li-tay | FAIL | L161-L161 | N flow/Taylor imports require a holomorphic-domain and small-field bridge absent from the source/edges. |
| stepP:p11b:li-ord | FAIL | L162-L162 | Missing direct section-data edges (see replacements). |
| stepP:p11b:li-sum | FAIL | L163-L163 | Missing direct section-data edge to bpP:p11b:sec-bnf#data. |
| bpP:p11b:lift-map | PASS | L166-L172; L173-L176 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:lm-ham | PASS | L174-L174 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:lm-prop | FAIL | L175-L175 | N symplectic/canonical imports have complex-domain and small-field hypotheses not supplied for this full phase-space flow. |
| bpP:p11b:sec-beta#data | PASS | L180-L182 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:beta-def | PASS | L184-L192 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:beta-formula | PASS | L194-L197; L198-L203 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:bf-gram | FAIL | L199-L201 | Missing direct beta-def edge for delta_pi and section-data edge for R_j. |
| stepP:p11b:bf-avg | PASS | L202-L202 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:birkhoff-form | FAIL | L205-L215; L216-L222 | Missing direct section-data edge to bpP:p11b:sec-bnf#data. |
| stepP:p11b:bt-rot | PASS | L217-L217 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:bt-rot#lift | PASS | L217-L217 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:bt-K | PASS | L218-L218 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:bt-nf | FAIL | L219-L219 | Missing direct beta-def package edge for the displayed beta-hat coefficients. |
| stepP:p11b:bt-avg | PASS | L220-L220 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:bt-frozen | PASS | L221-L221 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:remain | PASS | L224-L226 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:asymptotics | PASS | L230-L238; L239-L248 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:as-in | PASS | L240-L242 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:as-pi | PASS | L243-L243 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:as-c | PASS | L244-L245 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:as-ent | FAIL | L246-L246 | Missing direct spectral-projection data edge for the pi identities. |
| stepP:p11b:as-det | PASS | L247-L247 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:torsion | PASS | L250-L253; L254-L258 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:to-an | PASS | L255-L255 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:to-pt | PASS | L256-L256 | Source fields, direct dependencies and locators agree. |
| stepP:p11b:to-id | PASS | L257-L257 | Source fields, direct dependencies and locators agree. |
| bpP:p11b:patch | FAIL | L260-L262; L263-L265 | The last sentence applies p10:interface; it is not a pointer. Also remove the consumed birkhoff-form theorem from SOURCE_HYPOTHESES. |

## Coverage decisions

No coverage item of P-p11b fails. The e-id/e-jet aliases, the mapped three section-data paragraphs, the consumed remain remark, the angle-lift mapping and the numerical/provenance exclusions are appropriate. The patch remains mapped to its full corollary node; its missing supplier is a node-edge defect.

all other coverage items PASS

## Replacement blocks

### P-p11b — stepP:p11b:pj-bin

```text
NODE: stepP:p11b:pj-bin
KIND: step
TITLE: Binomial expansion
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-bin@L94-L94
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-bin@L94-L94
CONTRACT_ID: stepP:p11b:pj-bin
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the formal setting of the previous step; s=1+alpha^2-2 alpha cos(lambda_1-lambda_2)>0, D=conj(alpha X_1-X_2) d+(alpha X_1-X_2) d-bar+d d-bar with d=alpha delta_1-delta_2
SOURCE_QUANTIFIERS: formal degree d<=4
SOURCE_CONCLUSION: ¦z_1-z_2¦^(-1)=sum_{l=0}^4 binom(-1/2,l) s^(-1/2-l) D^l modulo degree 5; the degree-d coefficient is sum_{l<=d} s^(-1/2-l) L_{d,l}(X_1,X_2;alpha) with L_{d,l} a Laurent polynomial in X_1, X_2 with coefficients polynomial in alpha and in the monomials of zeta_i, zeta_i-bar
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:orbit, stepP:p11b:pj-formal, bpP:p11b:sec-set#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:orbit | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-bin@L94-L94 | delta_i are Laurent polynomials in X_i at each degree
EDGE: stepP:p11b:pj-formal | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-bin@L94-L94 | the formal reduction
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-bin@L94-L94 | Uses X_i=e^{i lambda_i} and the complex orbit notation of the section data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — stepP:p11b:pj-avg

```text
NODE: stepP:p11b:pj-avg
KIND: step
TITLE: Averaging rule
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-avg@L95-L95
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-avg@L95-L95
CONTRACT_ID: stepP:p11b:pj-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: s depends on lambda_1-lambda_2 only; X_1^p X_2^r=e^{ip(lambda_1-lambda_2)} e^{i(p+r) lambda_2}
SOURCE_QUANTIFIERS: p, r in Z; s>0
SOURCE_CONCLUSION: the average of X_1^p X_2^r s^(-s) is delta_{p+r,0} b_s^(¦p¦)(alpha) (the lambda_2 integral kills the monomial unless p+r=0; (2pi)^(-1) int e^{ip theta} s^(-s) d theta=b_s^(¦p¦))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:laplace-def, bpP:p11b:sec-set#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:laplace-def | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-avg@L95-L95 | (2pi)^(-1) int e^{ip theta} (1+alpha^2-2 alpha cos theta)^(-s) d theta=b_s^(¦p¦)
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-avg@L95-L95 | Uses X_i=e^{i lambda_i} and the angle/complex-variable convention directly.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — stepP:p11b:pj-red

```text
NODE: stepP:p11b:pj-red
KIND: step
TITLE: Reduction and extraction
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96
CONTRACT_ID: stepP:p11b:pj-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the degree-d coefficients of the binomial expansion averaged by the averaging rule; every b_s^(k) occurring has s in {1/2..9/2}, k<=8
SOURCE_QUANTIFIERS: degree 0,2,4
SOURCE_CONCLUSION: each b_s^(k) is a rational combination of beta_0, beta_1; the average is a polynomial in zeta_i, zeta_i-bar of degrees 0,2,4 (odd degrees vanish by (S1)), invariant under rotation (S2) and conjugation (S3), spanned by the six listed monomials; reading off coefficients gives A, B, p_1..p_6 (finite exact computation); the series in alpha follow by inserting the Laplace series of beta_0, beta_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:pj-bin, stepP:p11b:pj-avg, bpP:p11b:laplace-red, bpP:p8:symmetries, bpP:p11b:e-ca, bpP:p8:laplace, bpP:p11b:sec-set#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:pj-bin | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96 | the coefficients L_{d,l} to be averaged
EDGE: stepP:p11b:pj-avg | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96 | the averaging rule
EDGE: bpP:p11b:laplace-red | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96 | reduction of every b_s^(k) to beta_0, beta_1
EDGE: bpP:p8:symmetries | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96 | (S1) odd degrees vanish, (S2) rotation invariance, (S3) conjugation invariance
EDGE: bpP:p11b:e-ca | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96 | finite exact computation reading off the coefficients
EDGE: bpP:p8:laplace | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96 | Laplace series of beta_0, beta_1 giving eq:series
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-red@L96-L96 | Uses beta_0, beta_1 and zeta_i of the section data directly.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — bpP:p11b:char

```text
NODE: bpP:p11b:char
KIND: lemma
TITLE: Character decomposition
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:char@L126-L128
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:char@L129-L132
CONTRACT_ID: bpP:p11b:char
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F a quartic family on O (sec-bnf#data) and k in Z^2; F_k(Lambda,z)=(2pi)^(-2) int_{[0,2pi]^2} e^{-i k.theta} F(Lambda,T_theta z) d theta
SOURCE_QUANTIFIERS: F; k in Z^2; Lambda in O, z, phi
SOURCE_CONCLUSION: F_k(Lambda,T_phi z)=e^{i k.phi} F_k(Lambda,z); F_k!=0 only if ¦k¦_1<=4; F=sum_k F_k (finite sum); F_k-bar=F_{-k} for real F; F_k is a polynomial in (z,z-bar) with real-analytic coefficients in Lambda and {F_k,N_0}=i(k.Omega)F_k; in particular <F>:=F_0 is the T^2-average of F and a real quartic family
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:ch-mon, stepP:p11b:ch-bra, bpP:p11b:sec-bnf#data, bpP:p11b:sec-set#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:ch-mon | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:char@L130-L130 | proof step: monomials and orthogonality
EDGE: stepP:p11b:ch-bra | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:char@L131-L131 | proof step: reality and bracket
EDGE: bpP:p11b:sec-bnf#data | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:char@L127-L127 | quartic family, N_0, T_theta
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:char@L126-L128 | The bracket in the conclusion uses the frozen slow-variable sign convention.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — bpP:p11b:homological

```text
NODE: bpP:p11b:homological
KIND: lemma
TITLE: Homological equation
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:homological@L134-L138
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:homological@L139-L142
CONTRACT_ID: bpP:p11b:homological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F a quartic family on O; NR_4(Omega) on O (eq:nr)
SOURCE_QUANTIFIERS: F, O, Omega
SOURCE_CONCLUSION: chi:=sum_{k!=0} F_k/(i(k.Omega)) is a real quartic family (coefficients real analytic on O) and {chi,N_0}=F-<F>, equivalently {N_0,chi}=-(F-<F>)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:ho-def, stepP:p11b:ho-eq, bpP:p11b:char, bpP:p11b:sec-bnf#data, bpP:p11b:sec-set#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:ho-def | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:homological@L140-L140 | proof step: well defined and real
EDGE: stepP:p11b:ho-eq | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:homological@L141-L141 | proof step: the equation
EDGE: bpP:p11b:char | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:homological@L136-L136 | F_k and <F>
EDGE: bpP:p11b:sec-bnf#data | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:homological@L135-L135 | O, Omega, NR_4 and N_0
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:homological@L134-L138 | The two bracket identities use the section bracket and sign convention.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — stepP:p11b:ho-eq

```text
NODE: stepP:p11b:ho-eq
KIND: step
TITLE: Equation
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ho-eq@L141-L141
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ho-eq@L141-L141
CONTRACT_ID: stepP:p11b:ho-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma char: {F_k,N_0}=i(k.Omega)F_k; antisymmetry of the bracket
SOURCE_QUANTIFIERS: Lambda in O
SOURCE_CONCLUSION: {chi,N_0}=sum_{k!=0} i(k.Omega)F_k/(i(k.Omega))=F-F_0; hence {N_0,chi}=-(F-<F>)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:char, stepP:p11b:ho-def, bpP:p11b:sec-set#data, bpP:p11b:sec-bnf#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:char | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ho-eq@L141-L141 | {F_k,N_0}=i(k.Omega)F_k
EDGE: stepP:p11b:ho-def | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ho-eq@L141-L141 | chi well defined
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ho-eq@L141-L141 | Uses the bracket convention in computing the equation and its antisymmetric form.
EDGE: bpP:p11b:sec-bnf#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:ho-eq@L141-L141 | Uses N_0 and Omega in the displayed homological equation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — stepP:p11b:li-ord

```text
NODE: stepP:p11b:li-ord
KIND: step
TITLE: Orders
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-ord@L162-L162
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-ord@L162-L162
CONTRACT_ID: stepP:p11b:li-ord
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: {N_0,chi}=-(F-<F>) (Lemma homological); degrees of F, chi, X_chi; ¦phi^t_chi z¦^2<=2¦z¦^2 (Lemma flow)
SOURCE_QUANTIFIERS: Lambda in K, ¦z¦ small
SOURCE_CONCLUSION: {K,chi}=-(F-<F>)+O(¦z¦^6) ({F,chi} has degree 6, {R,chi}=O(¦z¦^8), {C,chi}=0); {K,chi}=O(¦z¦^4) analytic so {{K,chi},chi}=O(¦z¦^6), and on phi^t_chi(z) it is <=C¦z¦^6
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:homological, bpP:p8:e-taylor, bpP:p11b:flow, bpP:p11b:sec-set#data, bpP:p11b:sec-bnf#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:homological | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-ord@L162-L162 | {N_0,chi}=-(F-<F>)
EDGE: bpP:p8:e-taylor | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-ord@L162-L162 | jet and O(¦z¦^k) estimates of analytic functions (alias of e-jet)
EDGE: bpP:p11b:flow | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-ord@L162-L162 | ¦phi^t_chi z¦^2<=2¦z¦^2 along the flow
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-ord@L162-L162 | Computes slow-variable brackets using the section convention.
EDGE: bpP:p11b:sec-bnf#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-ord@L162-L162 | Uses N_0 and the quartic-family degrees in the bracket order calculation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — stepP:p11b:bf-gram

```text
NODE: stepP:p11b:bf-gram
KIND: step
TITLE: Gram variables
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bf-gram@L199-L201
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bf-gram@L199-L201
CONTRACT_ID: stepP:p11b:bf-gram
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: rho=[[gamma,-s],[s,gamma]]; e_1=(gamma,s); pi_11=gamma^2, pi_22=s^2, pi_12=gamma s; r_j=¦z_j¦^2=2R_j, g=z_1.z_2
SOURCE_QUANTIFIERS: a in A_2; z
SOURCE_CONCLUSION: u_1=gamma z_1-s z_2, u_2=s z_1+gamma z_2, A_1=¦u_1¦^2=pi_11 r_1+pi_22 r_2-2 pi_12 g, A_2=¦u_2¦^2=pi_22 r_1+pi_11 r_2+2 pi_12 g, B=u_1.u_2=pi_12(r_1-r_2)+delta_pi g, and Q_4-tilde=c_1 A_1^2+c_2 A_2^2+c_3 A_1 A_2+c_4 B^2+c_5 A_1 B+c_6 A_2 B is a polynomial in (r_1,r_2,g) of degree <=2 in g
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:sec-beta#data, bpP:p11b:quartic-explicit, bpP:p11b:sec-set#data, bpP:p11b:beta-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:sec-beta#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bf-gram@L199-L199 | pi_11, pi_22, pi_12 and their relations
EDGE: bpP:p11b:quartic-explicit | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bf-gram@L201-L201 | Q_4 in terms of c_nu
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bf-gram@L199-L201 | Uses R_j=(x_j^2+y_j^2)/2 and the slow-variable convention.
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bf-gram@L199-L201 | Uses delta_pi := pi_11-pi_22 in B_dot explicitly.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — stepP:p11b:li-sum

```text
NODE: stepP:p11b:li-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163
CONTRACT_ID: stepP:p11b:li-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K o Y=K+{K,chi}+int...; {K,chi}=-(F-<F>)+O(¦z¦^6); {{K,chi},chi} o phi^t=O(¦z¦^6)
SOURCE_QUANTIFIERS: Lambda in K, ¦z¦<r_2
SOURCE_CONCLUSION: K o Y=C+N_0+F+R-(F-<F>)+O(¦z¦^6)=C+N_0+<F>+O(¦z¦^6); <F> is T_theta-invariant hence a polynomial in ¦z_1¦^2, ¦z_2¦^2 of degree 2 in (R_1,R_2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:li-tay, stepP:p11b:li-ord, bpP:p11b:char, bpP:p11b:sec-bnf#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:li-tay | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163 | the formula for K o Y
EDGE: stepP:p11b:li-ord | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163 | the order bounds
EDGE: bpP:p11b:char | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163 | <F> is the T^2-average, T-invariant
EDGE: bpP:p11b:sec-bnf#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-sum@L163-L163 | Uses T_theta invariance and R_1,R_2 in identifying the averaged polynomial.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — bpP:p11b:birkhoff-form

```text
NODE: bpP:p11b:birkhoff-form
KIND: theorem
TITLE: Secular Birkhoff form, planar
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L205-L215
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L216-L222
CONTRACT_ID: bpP:p11b:birkhoff-form
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=2; G, m0>0; m_1, m_2>0; K_a=closed B_inf(a^0,rho) subset {a in A_2: Phi_4(a)!=0} a closed cube; O_a open with K_a subset O_a subset {Phi_4!=0}, simply connected; Lambda(.) the analytic diffeomorphism a->Lambda; K=Lambda(K_a), O=Lambda(O_a)
SOURCE_QUANTIFIERS: n=2, G, m0, m_1, m_2; then K_a, O_a; then rho (rotation), chi, O prime, r_*, C_*, T; then in (b) Lambda in K, ¦z¦_2<r_*; in (c) V, mu_0, r_0
SOURCE_CONCLUSION: there are an analytic rho: O -> SO(2) diagonalising Q_h, analytic chi (Lemma homological with F=Q_4-tilde, Omega=2 sigma), an open O prime with K subset O prime ⋐ O, constants r_*>0, C_*>0 and the analytic symplectic map T=Phi_rho^(-1) o Phi_chi on T-domain={(lambda,Lambda,z): Lambda in O prime, ¦z¦_2<r_*}, with r_*<=rho_K/sqrt2 and r_*<=min{r_1(closure O prime), r_2}, such that T takes values in the domain of analyticity of f-hat_mov (and f-hat_fix) and, for f-hat in {f_fix, f_mov} and P:=f-hat o T: (a) P real analytic on the domain, 2pi-periodic in lambda, independent of any coupling parameter, H^Psi o T=h(Lambda)+mu P for H^Psi=h+mu f-hat; (b) for Lambda in K, ¦z¦_2<r_*: <P>=P_0(Lambda)+sum_j Omega_j R_j+(1/2) sum beta-hat_ij(a(Lambda)) R_i R_j+Rem, ¦Rem¦<=C_*¦z¦^6, with Omega_j=2 sigma_j(a(Lambda))<0, P_0=C_0(a) (fix) or C_0(a)+delta(Lambda) (mov); (c) with (I,phi,p,q)=(Lambda,lambda,y,x), the frozen HasBirkhoff(P,V,r_0,mu_0,P_0,Omega,beta) of Definition p0:birkhoff holds for V=int K, any mu_0>0, every r_0 in (0,r_*/sqrt2], Omega(mu,I)=2 sigma(a(I)), beta(mu,I)=beta-hat(a(I)) (symmetric), P_0 as above, all independent of mu, P extended as in Part 12
CONSTANT_SCOPE: rho, chi, r_*, C_* depend only on (G, m0, m, K_a)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:bt-rot, stepP:p11b:bt-K, stepP:p11b:bt-nf, stepP:p11b:bt-avg, stepP:p11b:bt-frozen, bpP:p11b:homological, bpP:p11b:lift-map, bpP:p11b:flow, bpP:p11b:lie, bpP:p8:perturbation-analytic, bpP:p8:identification, bpP:p11b:beta-def, bpP:p9:good, bpP:p0:birkhoff#HasSecularBirkhoffForm, bpP:p11b:sec-set#data, bpP:p11b:sec-bnf#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:bt-rot | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L217-L217 | proof step: rotation
EDGE: stepP:p11b:bt-K | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L218-L218 | proof step: the function K
EDGE: stepP:p11b:bt-nf | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L219-L219 | proof step: normal form
EDGE: stepP:p11b:bt-avg | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L220-L220 | proof step: average of P
EDGE: stepP:p11b:bt-frozen | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L221-L221 | proof step: the frozen clauses
EDGE: bpP:p11b:homological | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L206-L206 | chi of Lemma homological with F=Q_4-tilde, Omega=2 sigma
EDGE: bpP:p11b:lift-map | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L206-L206 | T=Phi_rho^(-1) o Phi_chi
EDGE: bpP:p11b:flow | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L206-L206 | r_1(closure O prime)
EDGE: bpP:p11b:lie | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L206-L206 | r_2
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L206-L206 | polydisc domain of analyticity of f-hat
EDGE: bpP:p8:identification | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L211-L211 | delta(Lambda) in P_0 for f-hat_mov
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L210-L210 | beta-hat in (b) and (c)
EDGE: bpP:p9:good | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L206-L206 | Phi_4, the set {Phi_4!=0}
EDGE: bpP:p0:birkhoff#HasSecularBirkhoffForm | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L212-L212 | the frozen HasBirkhoff clauses of (c)
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L206-L206 | A_2, Lambda(.), chart, Q_h, rho, sigma
EDGE: bpP:p11b:sec-bnf#data | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:birkhoff-form@L205-L215 | Uses the quartic family, N_0 and the homological setting with Omega=2 sigma.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — stepP:p11b:bt-nf

```text
NODE: stepP:p11b:bt-nf
KIND: step
TITLE: Normal form
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219
CONTRACT_ID: stepP:p11b:bt-nf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F=Q_4-tilde is a quartic family (coefficients analytic in Lambda through c_nu and rho); Phi_4!=0 on O; K=C_0+N_0+Q_4-tilde+R
SOURCE_QUANTIFIERS: Lambda in K
SOURCE_CONCLUSION: NR_4(Omega) holds on O since Phi_4!=0 (NR_4(sigma) iff NR_4(2 sigma)); Proposition lie gives K o Y=C_0+N_0+<Q_4-tilde>+O(¦z¦^6), and <Q_4-tilde>=(1/2) sum beta-hat_ij R_i R_j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p9:good-set, bpP:p11b:lie, bpP:p11b:beta-formula, stepP:p11b:bt-K, bpP:p11b:quartic-explicit, stepP:p11b:bt-rot, bpP:p11b:sec-bnf#data, bpP:p11b:beta-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p9:good-set | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | Phi_4!=0 iff NR_4(sigma) (part (b))
EDGE: bpP:p11b:lie | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | K o Y=C_0+N_0+<Q_4-tilde>+O(¦z¦^6)
EDGE: bpP:p11b:beta-formula | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | <Q_4-tilde>=(1/2) sum beta-hat_ij R_i R_j
EDGE: stepP:p11b:bt-K | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | K=C_0+N_0+Q_4-tilde+R
EDGE: bpP:p11b:quartic-explicit | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | coefficients c_nu analytic
EDGE: stepP:p11b:bt-rot | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | rho analytic
EDGE: bpP:p11b:sec-bnf#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | NR_4(Omega), quartic family
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:bt-nf@L219-L219 | Uses beta-hat_ij in the normal-form polynomial explicitly.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — stepP:p11b:as-ent

```text
NODE: stepP:p11b:as-ent
KIND: step
TITLE: The entries
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-ent@L246-L246
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-ent@L246-L246
CONTRACT_ID: stepP:p11b:as-ent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition beta-def; bounds pi_12=O(alpha^(5/4)), pi_11 pi_22=pi_12^2=O(alpha^(5/2)), delta_pi^2=1-4 pi_12^2; sizes of c_nu
SOURCE_QUANTIFIERS: alpha small
SOURCE_CONCLUSION: a=c_1+O(alpha^(7/2)), d=c_2+O(alpha^4), b=c_3+O(alpha^(7/2)); relative errors O(alpha^(5/2)), O(alpha^2), O(alpha^2); hence beta-hat_11=8a, beta-hat_12=4b, beta-hat_22=8d give the three limits
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:beta-def, stepP:p11b:as-pi, stepP:p11b:as-c, bpP:p11b:sec-beta#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-ent@L246-L246 | a, d, b and beta-hat in terms of c_nu and pi_ij
EDGE: stepP:p11b:as-pi | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-ent@L246-L246 | bounds on pi_ij
EDGE: stepP:p11b:as-c | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-ent@L246-L246 | sizes of c_nu
EDGE: bpP:p11b:sec-beta#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:as-ent@L246-L246 | Uses pi_11 pi_22=pi_12^2 and the projection identities directly in the error estimates.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11b — stepP:p11b:pj-cons

```text
NODE: stepP:p11b:pj-cons
KIND: step
TITLE: Consistency with Part 8
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-cons@L97-L97
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-cons@L97-L97
CONTRACT_ID: stepP:p11b:pj-cons
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A and B are the displayed rational expressions from pj-red; the Laplace reduction of laplace-red is available
SOURCE_QUANTIFIERS: alpha in (0,1)
SOURCE_CONCLUSION: the displayed A and B equal (1/4)alpha b_{3/2}^(1) and -(1/2)alpha b_{3/2}^(2) identically in alpha by the reduction (finite check); comparison with the quadratic part of Theorem quadratic-form and the multipole test are consistency checks
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11b:pj-red, bpP:p11b:laplace-red, bpP:p11b:e-ca
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11b:pj-red | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-cons@L97-L97 | the closed forms of A, B
EDGE: bpP:p11b:laplace-red | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-cons@L97-L97 | reduction of b_{3/2}^(1), b_{3/2}^(2) to beta_0, beta_1
EDGE: bpP:p11b:e-ca | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:pj-cons@L97-L97 | identities hold identically in alpha by a finite check
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the comparison with Theorem quadratic-form and the multipole expansion are consistency checks (not edges)
```

### P-p11b — stepP:p11b:fl-bd

```text
NODE: stepP:p11b:fl-bd
KIND: step
TITLE: Bound
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:fl-bd@L148-L148
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:fl-bd@L148-L148
CONTRACT_ID: stepP:p11b:fl-bd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X_chi polynomial vector field homogeneous of degree 3 in z with coefficients analytic in Lambda; K compact; u=¦z(t)¦^2
SOURCE_QUANTIFIERS: Lambda in K
SOURCE_CONCLUSION: ¦X_chi¦<=C_1¦z¦^3 on K; u-dot=2 z.X_chi<=2 C_1 u^2 so 1/u(t)>=1/u_0-2 C_1 t; for u_0<=r_1^2:=1/(4 C_1), u(t)<=2 u_0 on [0,1] and the solution cannot blow up
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p3:gen-continuation, bpP:p11b:sec-bnf#data, bpP:p11b:sec-set#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p3:gen-continuation | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:fl-bd@L148-L148 | no blow-up: the solution stays in a compact set up to time one
EDGE: bpP:p11b:sec-bnf#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:fl-bd@L148-L148 | quartic family chi
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:fl-bd@L148-L148 | X_chi of the frozen sign convention
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L148 invokes N:bpN:p3:gen-continuation, which assumes an existing maximal solution of a C^1 field and a set with uniform data (delta,M,L). The polynomial field is C^1 and the displayed bound confines any existing trajectory, but no edge supplies the initial local/maximal solution or the uniform-data reduction on the confining ball. The differential inequality and its printed radius are retained; existence is not added as a source premise.
```

### P-p11b — stepP:p11b:li-tay

```text
NODE: stepP:p11b:li-tay
KIND: step
TITLE: Taylor along the flow
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-tay@L161-L161
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-tay@L161-L161
CONTRACT_ID: stepP:p11b:li-tay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K analytic, t in [0,1], phi^t_chi the flow of chi
SOURCE_QUANTIFIERS: t in [0,1]
SOURCE_CONCLUSION: d/dt K o phi^t_chi={K,chi} o phi^t_chi, hence K o Y=K+{K,chi}+int_0^1(1-t){{K,chi},chi} o phi^t_chi dt
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p5:lie-derivative, N:bpN:p5:taylor, bpP:p11b:flow, bpP:p11b:sec-set#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p5:lie-derivative | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-tay@L161-L161 | derivative of K along the flow is the Lie derivative
EDGE: N:bpN:p5:taylor | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-tay@L161-L161 | Taylor formula with integral remainder along the flow
EDGE: bpP:p11b:flow | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-tay@L161-L161 | flow phi^t_chi exists on [0,1] on the domain
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:li-tay@L161-L161 | bracket {K,chi}=dK(X_chi)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L161 cites N:bpN:p5:lie-derivative and N:bpN:p5:taylor. Those statements inherit a holomorphic Hamiltonian on a complex open domain, a complex norm with field bound epsilon<=1/2 and an initial point in Omega^{1/2}, with the trajectory in the domain of the holomorphic observable. Here K and the Lambda-dependent coefficients are stated real analytic and flow supplies a real time-one map. No complexification, compatible complex domain/norm or small-field verification is supplied. The real chain-rule/integral-Taylor formula is asserted in L161, but its direct real version has no supplying approved input either. The printed real statement is retained without adding those proof obligations as hypotheses.
```

### P-p11b — stepP:p11b:lm-prop

```text
NODE: stepP:p11b:lm-prop
KIND: step
TITLE: Properties
STATEMENT_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175
PROOF_SOURCE: blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175
CONTRACT_ID: stepP:p11b:lm-prop
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma flow on K=closure of O prime; Hamiltonian flows are symplectic; Phi_chi from the previous step; Proposition lift for Phi_rho
SOURCE_QUANTIFIERS: (lambda,Lambda,z) in the domain
SOURCE_CONCLUSION: the flow exists up to time one for every point of the domain (uses O prime ⋐ O); Phi_chi is symplectic and analytic, preserves Lambda and commutes with lambda-translations; T=Phi_rho^(-1) o Phi_chi, a composition of two maps with these properties
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11b:flow, bpP:p11b:e-ode, bpP:p9:lift, N:bpN:p5:symplectic, N:bpN:p5:canonical, stepP:p11b:lm-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:flow | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175 | existence of the flow up to time one on the compact closure of O prime
EDGE: bpP:p11b:e-ode | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175 | analyticity of the flow
EDGE: bpP:p9:lift | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175 | Phi_rho has the same properties
EDGE: N:bpN:p5:symplectic | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175 | Hamiltonian flows are symplectic
EDGE: N:bpN:p5:canonical | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175 | canonical transformation property
EDGE: stepP:p11b:lm-ham | blueprint-P/parts/p11b-planar-torsion.tex#stepP:p11b:lm-prop@L175-L175 | Phi_chi is the time-one map of the Hamiltonian flow
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L175 invokes N:bpN:p5:symplectic and N:bpN:p5:canonical for the full (lambda,Lambda,z) Hamiltonian flow. These imports inherit N:bpN:p5:flow: a holomorphic field on a complex open domain, a chosen complex norm with field bound epsilon<=1/2, and initial points in Omega^{1/2}. The real compact-parameter flow of flow/fl-bd does not state these complex hypotheses; the full field also contains partial_Lambda chi in the angle components. No complexification/domain/smallness bridge or separately approved general real symplectic-flow theorem is supplied here. The asserted symplectic conclusion is retained, with this applicability gap explicit.
```

### P-p11b — bpP:p11b:patch

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
DEPS: bpP:p11b:torsion, bpP:p11b:birkhoff-form, bpP:p11b:beta-def, bpP:p9:good, bpP:p11b:sec-set#data, bpP:p10:interface
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11b:torsion | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L264-L264 | {Phi_4 det beta-hat!=0} open and dense
EDGE: bpP:p11b:birkhoff-form | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L261-L261 | theorem applies with K_a, O_a
EDGE: bpP:p11b:beta-def | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L261-L261 | beta-hat symmetric, det beta-hat
EDGE: bpP:p9:good | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L261-L261 | {Phi_4!=0}
EDGE: bpP:p11b:sec-set#data | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L260-L260 | A_2
EDGE: bpP:p10:interface | blueprint-P/parts/p11b-planar-torsion.tex#bpP:p11b:patch@L260-L262 | The last sentence takes the Part 10 frequency data on this same patch, using the extra analytic nonvanishing condition det beta-hat != 0.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The last sentence at L261 is part of the corollary conclusion and directly invokes bpP:p10:interface. Its supplier and prerequisite closure must be restored in slice P-p10; Part 12 not needing these extra data does not remove a clause of this corollary from its recorded contract. The proof at L264 establishes the basic torsion patch; the simultaneous frequency-data choice uses the final sentence of Part 10 interface with the analytic, not-identically-zero determinant supplied by torsion.
```

## for slice P-p10

The existing EXCLUDED disposition of `bpP:p10:interface` at L235–248 has an incorrect reachability reason: Part 11b patch L261 consumes it in its final asserted clause. Restore this theorem and its actual prerequisite closure, including the labelled if-a/if-b/if-c/if-d steps, and submit the restored records to an independent P-p10 reviewer. This is an owning-slice handoff, not a claim that P-p10 has been fully reviewed here. The P-p11b replacement intentionally names the real supplier rather than inventing an external or marking a proved corpus theorem as SOURCE_GAP. Until P-p10 restores that closure, the new edge has an unresolved graph target.

## Suspected blueprint defects and limits

- L217: “lifts analytically to the angle … (covering S^1 to S^1)” is an unproved analytic lifting assertion; the usual real-angle cover is R to S^1 (or, if sign ambiguity is intended, the double cover must be specified). Part 9's explicit global frame supplies the rotation needed by the theorem. This is a local proof-presentation gap, not evidence that the planar rotation fails to exist.
- L161/L175: the references to N flow/Taylor/symplectic results omit their complex-domain applicability bridge, as detailed above. This is exposed in the replacement notes, without changing source hypotheses.
- L206/L214/L218/L220: the theorem asks for image-domain control on all of O-prime but rho_K is chosen from a finite cover of K. Shrinking O-prime around K could provide uniform control, but the printed choice and its relation to that cover are not spelled out. This is a blueprint-level domain-choice obligation; the node faithfully records the printed contract, so it is not failed merely for that mathematical issue.
- L261/L264: the short proof discusses only the basic torsion patch. The additional frequency clause has a supplying theorem (Part 10 interface's final sentence) and should be included in that argument. It cannot be erased from the graph as a pointer.

No new pinned-paper erratum is asserted. E-P-CP11-2 at L288 is an existing ledger disclosure; numerical evidence at L269–280 is not treated as a proof input. The rational identities remain within SPEC's approved finite-exact-computation policy. The bracket convention agrees with N: {F,G}=dF(X_G), dot x=partial_y G, dot y=-partial_x G; hence {chi,N_0}=F-<F> and {N_0,chi}=-(F-<F>) have the printed signs. The factor 2 in Omega=2 sigma, 2pi angle periods and the oscillator-disc versus Euclidean-radius conversion are retained.

## Validation

The structural packet check reports `63 nodes, 255 edges, 87 coverage items, 0 problems, 0 TODO records (not counted: --structural)`. Both CORPUS.sha256 and IMPORTS.sha256 checks pass. Structural success does not detect the missing direct uses or certify the N applicability bridges. No Lean was run and no implementation/provider file was consulted. No anchor belongs to this slice; frozen identity fields are untouched.

Review-parser dry run: `17 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 46 PASS nodes`. Independent validation confirms exactly one row for each of the 63 current nodes, a complete block for each failure, unchanged non-failing fields, and one correctly formatted EDGE per dependency in every replacement. `git diff --check` is clean; the untracked report was separately checked for trailing whitespace. The writer must still resolve the explicitly reported P-p10 interface target/closure before the assembled graph can pass.
