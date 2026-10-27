# N-p6 topology review

Reviewer: sol-review-N-d. Marker: rev-N-d.

Verdict: FAIL. Reviewed the entire raw part, all 39 packet nodes and all 69 coverage items under SPEC. This is a source-topology verdict; no Lean implementation, proof status, build or axiom audit was used. Frozen declarations and manifest identity fields were consulted only for the stated interfaces.

The source-span column names lines in `blueprint-N/parts/p6-normal-form.tex`; both statement and proof spans were re-read, including every EDGE use. Cross-part checks included Part 1 restriction/norm/Hessian/QC statements, Part 3 solution/exit/uniqueness/continuation/energy statements, Part 4 domains/norms/coefficients/Cauchy/projections, Part 5 bracket/flow/transform/canonical statements, and K Part 1 L75-L78, L227-L236, L1047-L1051 and L1073-L1079.

## Node audit

| Node ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| `bpN:p6:ext-numerics` | PASS | L22-L22 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p6:ext-chain` | PASS | L23-L23 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p6:setting` | PASS | L29-L40 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p6:lipschitz` | FAIL | L42-L45; L46-L48 | Missing direct dependencies: `bpN:p4:domains`. |
| `stepN:p6:lip-seg` | PASS | L47-L47 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p6:divisor` | PASS | L50-L53; L54-L56 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p6:div` | PASS | L55-L55 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p6:homological` | PASS | L60-L70; L71-L79 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p6:hom-def` | FAIL | L72-L72 | Missing direct dependencies: `bpN:p6:setting`, `bpN:p4:domains`. |
| `stepN:p6:hom-norm` | FAIL | L74-L74 | Missing direct dependencies: `bpN:p6:setting`. |
| `stepN:p6:hom-eq` | FAIL | L76-L76 | Missing direct dependencies: `bpN:p4:norm`, `bpN:p6:setting`. |
| `stepN:p6:hom-real` | FAIL | L78-L78 | Missing direct dependencies: `bpN:p6:setting`. |
| `bpN:p6:bracket-g` | PASS | L81-L85; L86-L89 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p6:bg-term` | FAIL | L87-L87 | Missing direct dependencies: `bpN:p5:setting`. |
| `stepN:p6:bg-sum` | FAIL | L88-L88 | Missing direct dependencies: `bpN:p4:norm`, `bpN:p5:setting`. |
| `bpN:p6:iterative` | PASS | L93-L108; L109-L127 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p6:it-gen` | PASS | L110-L110 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p6:it-map` | FAIL | L112-L112 | Missing direct dependencies: `bpN:p4:domains`, `bpN:p4:norm`. |
| `stepN:p6:it-taylor` | FAIL | L114-L115 | Missing direct dependencies: `bpN:p4:domains`, `bpN:p4:norm`, `bpN:p6:setting`. |
| `stepN:p6:it-decomp` | FAIL | L117-L119 | Missing direct dependencies: `bpN:p4:domains`, `bpN:p4:norm`. |
| `stepN:p6:it-integrand` | FAIL | L121-L122 | Missing direct dependencies: `bpN:p4:norm`, `bpN:p5:setting`, `bpN:p6#data`. |
| `stepN:p6:it-terms` | FAIL | L124-L124 | Missing direct dependencies: `bpN:p4:norm`, `bpN:p4:domains`, `bpN:p6#data`. |
| `stepN:p6:it-real` | FAIL | L126-L126 | Missing direct dependencies: `bpN:p4:domains`, `bpN:p6:setting`. |
| `bpN:p6:iterative-direct` | FAIL | L129-L134; L135-L138 | The source conclusion at L132 also includes Remark iterative-special; the record silently omits that clause. Missing direct dependencies: `bpN:p4:norm`, `bpN:p5:setting`. |
| `stepN:p6:dir-use` | FAIL | L136-L136 | Missing direct dependencies: `bpN:p4:domains`, `bpN:p6#data`. |
| `stepN:p6:dir-concl` | PASS | L137-L137 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p6:telescope` | PASS | L148-L150; L151-L153 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p6:tel` | PASS | L152-L152 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p6:normal-form` | FAIL | L157-L174; L175-L209 | The reused construction data at L176 has no disposition/node in the packet. Missing direct dependencies: `bpN:p6:normal-form#data`. |
| `stepN:p6:nf-first` | FAIL | L178-L178 | L178 checks the future application's hypotheses; the application occurs at L180. SPEC excludes hypothesis-check-only edges. Remove inapplicable or hypothesis-check-only edges: `bpN:p6:iterative`. Missing direct dependencies: `bpN:p6:normal-form#data`. |
| `stepN:p6:nf-case` | FAIL | L180-L184 | Missing direct dependencies: `bpN:p6:normal-form#data`. Missing direct dependencies: `bpN:p4:norm`, `bpN:p4:domains`, `bpN:p6:setting`. |
| `stepN:p6:nf-N` | FAIL | L186-L189 | Missing direct dependencies: `bpN:p6:normal-form#data`. Missing direct dependencies: `bpN:p4:norm`, `bpN:p4:domains`. |
| `stepN:p6:nf-induct` | FAIL | L191-L198 | Missing direct dependencies: `bpN:p6:normal-form#data`. Missing direct dependencies: `bpN:p4:domains`, `bpN:p4:norm#monotone`. The nf-case edge is located at L191, which contains neither (6.1) nor eps_1<=eps/4; that use is L192. |
| `stepN:p6:nf-concl` | FAIL | L200-L202 | Missing direct dependencies: `bpN:p6:normal-form#data`. Missing direct dependencies: `bpN:p4:domains`, `bpN:p4:norm`, `bpN:p5:setting`. |
| `stepN:p6:nf-disp` | FAIL | L204-L206 | Missing direct dependencies: `bpN:p6:normal-form#data`. |
| `stepN:p6:nf-real` | FAIL | L208-L208 | Missing direct dependencies: `bpN:p6:normal-form#data`. |
| `bpN:p6:nonresonant-case` | PASS | L221-L227; L228-L230 | Statement fields, direct uses and disposition agree with the source. |
| `stepN:p6:nr-triv` | PASS | L229-L229 | Statement fields, direct uses and disposition agree with the source. |
| `bpN:p6#data` | PASS | L11-L16 | Statement fields, direct uses and disposition agree with the source. |

## Coverage audit

| Coverage item | Verdict | Source | Reason |
|---|---|---|---|
| `p6:prose-L176-L176` | FAIL | Part 6 L176 | Missing inventory/disposition for the reused iteration data; add the item and data node below. |

All other coverage items PASS. The exclusions of action-displacement and iterative-special were checked with a reference search over all blueprint-N parts: only the excluded consumer summary uses action-displacement; iterative-special is an unconsumed statement clause/pointer for the track-N proof route. Part 11b L106-L110 uses iterative-direct and re-establishes the extended homological equation; no provenance edge to track P is needed.

## Replacement fragments

These are complete database blocks. Unchanged source fields are retained; additions record direct uses at the consumer and do not add source premises. Rewritten nodes require a different delta reviewer.

```text
NODE: bpN:p6:lipschitz
KIND: lemma
TITLE: Lipschitz bound from the Hessian
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L42-L45
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L46-L48
CONTRACT_ID: bpN:p6:lipschitz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega=∂_I h holomorphic on V_rD; operator norm of Domega=∂_I^2 h (max norm on both sides) <= L on V_rD
SOURCE_QUANTIFIERS: D, r, h, L
SOURCE_CONCLUSION: (N2) holds with this L; in particular L=nM_C if every entry of the Hessian has modulus <= M_C
CONSTANT_SCOPE: L is the operator-norm bound on V_rD; M_C a bound on Hessian entries
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:lip-seg, bpN:p6:setting, bpN:p1:hessian-convert, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:lip-seg | blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L47-L47 | proof step
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L43-L43 | conclusion is condition (N2) of the setting
EDGE: bpN:p1:hessian-convert | blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L43-L43 | the entrywise bound M_C gives the operator-norm bound L=nM_C
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L43-L43 | V_rD is the domain of the Hessian and frequency bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:hom-def
KIND: step
TITLE: Well defined and holomorphic
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72
CONTRACT_ID: stepN:p6:hom-def
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: statement of homological; Lemma divisor gives |k·omega|>=alpha/q on V_rD
SOURCE_QUANTIFIERS: k in Z_K\Lambda
SOURCE_CONCLUSION: phihat_k=fhat_k/(2πi k·omega) is holomorphic on V_rD; Z_K∩Lambda and Z_K\Lambda finite; phi, xi are finite sums a_k(I)chi_k(theta) with finite norm so lie in O(r,s); xi=P_Lambda T_K f=P_{Lambda∩Z_K} f
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:divisor, bpN:p4:coefficients, bpN:p4:projections, bpN:p4:norm, bpN:p6#data, bpN:p6:setting, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:divisor | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72 | nonvanishing of k·omega with modulus >= alpha/q
EDGE: bpN:p4:coefficients | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72 | (a) holomorphy of coefficients, (c) finite sums with finite weighted sup lie in O(r,s)
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72 | xi=P_Lambda T_K f=P_{Lambda∩Z_K} f
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72 | membership in O(r,s) and finiteness of the weighted sup
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72 | Z_K
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72 | the frequency omega or the decomposition of g is used directly
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72 | V_rD or D_{r,s} (including shrunken widths) is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:hom-norm
KIND: step
TITLE: Norms
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74
CONTRACT_ID: stepN:p6:hom-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: statement of homological; phi, xi as constructed in hom-def
SOURCE_QUANTIFIERS: I in V_rD; k in Z_K\Lambda
SOURCE_CONCLUSION: |phihat_k(I)|<=q/(2πalpha)|fhat_k(I)|; summing with weights e^{2π|k|_1 s} and sup over I gives |phi|_{r,s}<=q delta/abar; |xi|_{r,s}, |T_K f|_{r,s}<=delta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:divisor, bpN:p4:projections, stepN:p6:hom-def, bpN:p4:norm, bpN:p6#data, bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:divisor | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | divisor bound ¦k·omega¦>=alpha/q
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | norm bounds for xi and T_K f
EDGE: stepN:p6:hom-def | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | phi is the finite sum of hom-def with coefficients phihat_k
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | weighted norm sum_k ¦.¦e^{2π¦k¦_1 s}
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | q, abar
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | the frequency omega or the decomposition of g is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:hom-eq
KIND: step
TITLE: The equation
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-eq@L76-L76
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-eq@L76-L76
CONTRACT_ID: stepN:p6:hom-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: statement of homological; phi, xi as in hom-def; h independent of theta
SOURCE_QUANTIFIERS: k in Z^n
SOURCE_CONCLUSION: {phi,h}=sum_j ∂_{theta_j}phi omega_j has coefficients 2πi(k·omega)phihat_k=fhat_k for k in Z_K\Lambda and 0 otherwise; adding xihat_k gives the coefficients of T_K f; coefficients determine the function, hence {phi,h}+xi=T_K f
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:coefficients, bpN:p5:setting, stepN:p6:hom-def, bpN:p6#data, bpN:p4:norm, bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:coefficients | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-eq@L76-L76 | (b) coefficients of ∂_theta phi, (d) coefficients determine the function
EDGE: bpN:p5:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-eq@L76-L76 | bracket {phi,h} for theta-independent h
EDGE: stepN:p6:hom-def | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-eq@L76-L76 | phi, xi finite sums in O(r,s) with the stated coefficients
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-eq@L76-L76 | Z_K
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-eq@L76-L76 | O(r,s), Fourier coefficients or weighted norms are used directly
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-eq@L76-L76 | the frequency omega or the decomposition of g is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:hom-real
KIND: step
TITLE: Reality
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-real@L78-L78
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-real@L78-L78
CONTRACT_ID: stepN:p6:hom-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lambda=-Lambda; f real on real points; omega(I) real for real I in V_rD
SOURCE_QUANTIFIERS: real I; k with k, -k not in Lambda
SOURCE_CONCLUSION: conj(fhat_k)=fhat_{-k}; conj(phihat_k)=phihat_{-k}; Z_K\Lambda symmetric; a finite sum with conj(a_k)=a_{-k} is real at real theta; same for xi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:norm, stepN:p6:hom-def, bpN:p6#data, bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-real@L78-L78 | Fourier coefficient as an integral in theta (conjugate the integral)
EDGE: stepN:p6:hom-def | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-real@L78-L78 | phihat_k=fhat_k/(2πi k·omega) and xi=P_{Lambda∩Z_K} f are finite sums
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-real@L78-L78 | Z_K symmetric
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-real@L78-L78 | the frequency omega or the decomposition of g is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:bg-term
KIND: step
TITLE: One term
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-term@L87-L87
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-term@L87-L87
CONTRACT_ID: stepN:p6:bg-term
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi, g_j as in bracket-g; admissible: r-rho<r_j, s-sigma<s_j
SOURCE_QUANTIFIERS: one term g_j
SOURCE_CONCLUSION: |{g_j,phi}|_{r-rho,s-sigma}<=(2/(e rho sigma))·(1/2)(rho/(r_j-r+rho)+sigma/(s_j-s+sigma))|g_j|_{r_j,s_j}|phi|_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:bracket, bpN:p6:setting, bpN:p4:norm, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:bracket | blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-term@L87-L87 | bracket estimate with (u,v;r0,s0)->(g_j,phi;r_j,s_j)
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-term@L87-L87 | weight (1/2)(rho/(r_j-r+rho)+sigma/(s_j-s+sigma)) of the term in ¦g¦_*
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-term@L87-L87 | norms ¦g_j¦_{r_j,s_j}, ¦phi¦_{r,s}
EDGE: bpN:p5:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-term@L87-L87 | the Poisson bracket and its bilinearity/sign are used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:bg-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-sum@L88-L88
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-sum@L88-L88
CONTRACT_ID: stepN:p6:bg-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: terms of bg-term; bilinearity of the bracket; triangle inequality
SOURCE_QUANTIFIERS: sum over j in J
SOURCE_CONCLUSION: |{g,phi}|<=(2/(e rho sigma))|g|_*|phi|; and 2/e<=2 numerically (e>2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:ext-numerics, bpN:p6:setting, stepN:p6:bg-term, bpN:p4:norm, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-sum@L88-L88 | e>2 for the last inequality
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-sum@L88-L88 | sum over j of the weighted terms is ¦g¦_*
EDGE: stepN:p6:bg-term | blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-sum@L88-L88 | estimate of each term
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-sum@L88-L88 | O(r,s), Fourier coefficients or weighted norms are used directly
EDGE: bpN:p5:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:bg-sum@L88-L88 | the Poisson bracket and its bilinearity/sign are used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:it-map
KIND: step
TITLE: Items (a), (b)
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-map@L112-L112
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-map@L112-L112
CONTRACT_ID: stepN:p6:it-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: statement of iterative; eps<=1/2 from it-gen; rho<r/2, sigma<s/2
SOURCE_QUANTIFIERS: Phi=X^1_phi
SOURCE_CONCLUSION: items (a) and (b) of the Iterative Lemma: domains, canonical, periodic, injective, displacement bounds nu(Phi-id)<=u, |Phi_theta-theta|<=q delta/(abar rho), |Phi_I-I|<=q delta/(e abar sigma), |DPhi-1|_nu<=2u
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:canonical-map, stepN:p6:it-gen, bpN:p5:setting, bpN:p6#data, bpN:p4:domains, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:canonical-map | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-map@L112-L112 | items (a)-(e) with eps<=1/2
EDGE: stepN:p6:it-gen | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-map@L112-L112 | ¦phi¦<=q delta/abar and eps<=u<=1/4
EDGE: bpN:p5:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-map@L112-L112 | scaled norm nu_{rho,sigma}
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-map@L112-L112 | q, abar
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-map@L112-L112 | V_rD or D_{r,s} (including shrunken widths) is used directly
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-map@L112-L112 | O(r,s), Fourier coefficients or weighted norms are used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:it-taylor
KIND: step
TITLE: Taylor identity
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L115
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L115
CONTRACT_ID: stepN:p6:it-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: statement of iterative; homological equation; eta<=1/2
SOURCE_QUANTIFIERS: f0=g+T_K f; w={h,phi}; t in [0,1]
SOURCE_CONCLUSION: f0 in O(r-rho,s-sigma) of finite norm; w=-{phi,h}=xi-T_K f has finite norm; on D_{r-2rho,s-2sigma}: (h+f0)∘Phi=h+w+f0+R with R=int_0^1 {(1-t)w+f0,phi}∘X^t_phi dt, h+w+f0=h+g+xi=h+g_+, (1-t)w+f0=g+f_t with f_t=(1-t)xi+t T_K f
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:homological, bpN:p5:setting, bpN:p5:transform, stepN:p6:it-gen, bpN:p4:norm#monotone, bpN:p4:projections, bpN:p4:domains, bpN:p4:norm, bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:homological | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L114 | (a) {phi,h}+xi=T_K f
EDGE: bpN:p5:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L114 | antisymmetry and definition of the bracket
EDGE: bpN:p5:transform | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L114 | Taylor/transform identity with data (r-rho,s-sigma;r,s), admissible since eta<=1/2
EDGE: stepN:p6:it-gen | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L114 | eta<=1/2
EDGE: bpN:p4:norm#monotone | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L114 | ¦g¦_{r,s}<=sum¦g_j¦ and monotonicity give finite norm of f0 on O(r-rho,s-sigma)
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L114 | T_K f in O(r,s) with finite norm
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L114 | V_rD or D_{r,s} (including shrunken widths) is used directly
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L114 | O(r,s), Fourier coefficients or weighted norms are used directly
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-taylor@L114-L114 | the frequency omega or the decomposition of g is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:it-decomp
KIND: step
TITLE: Decomposition of $H\circ\Phi$
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-decomp@L117-L119
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-decomp@L117-L119
CONTRACT_ID: stepN:p6:it-decomp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: it-taylor identity; f-T_K f in O(r,s)
SOURCE_QUANTIFIERS: f_+
SOURCE_CONCLUSION: H∘Phi=h+g_++f_+ on D_{r-2rho,s-2sigma} with f_+:=R+(f-T_K f)∘Phi, both terms holomorphic and periodic so f_+ in O(r-2rho,s-2sigma) once the norm is finite; this is (c), and |g_+-g|=|xi|<=delta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:it-taylor, bpN:p5:composition, bpN:p5:composition-integral, bpN:p4:projections, bpN:p4:domains, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:it-taylor | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-decomp@L117-L117 | identity (h+f0)∘Phi=h+g_++R
EDGE: bpN:p5:composition | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-decomp@L119-L119 | (ii): holomorphy and periodicity of compositions
EDGE: bpN:p5:composition-integral | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-decomp@L119-L119 | holomorphy and periodicity of the integral remainder R
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-decomp@L117-L117 | f-T_K f in O(r,s)
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-decomp@L117-L117 | V_rD or D_{r,s} (including shrunken widths) is used directly
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-decomp@L117-L117 | O(r,s), Fourier coefficients or weighted norms are used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:it-integrand
KIND: step
TITLE: The integrand
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L122
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L122
CONTRACT_ID: stepN:p6:it-integrand
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: it-taylor; bracket-g; f_t affine in t
SOURCE_QUANTIFIERS: v_t={g+f_t,phi}
SOURCE_CONCLUSION: v_t in O(r-rho,s-sigma) affine in t, (t,z)->v_t(z) and Dv_t continuous; |v_t|_{r-rho,s-sigma}<=(2/(e rho sigma))(|g|_*+delta)|phi|_{r,s}<=(2q/(e abar rho sigma))(|g|_*+delta)delta=:V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:bracket-g, bpN:p4:bracket, stepN:p6:it-taylor, stepN:p6:it-gen, bpN:p6:setting, bpN:p4:norm, bpN:p5:setting, bpN:p6#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:bracket-g | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L121 | bracket with the decomposed g
EDGE: bpN:p4:bracket | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L121 | single-term decomposition f_t with ¦f_t¦<=delta
EDGE: stepN:p6:it-taylor | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L121 | f_t=(1-t)xi+t T_K f and the form of the integrand
EDGE: stepN:p6:it-gen | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L121 | ¦phi¦_{r,s}<=q delta/abar
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L121 | ¦g¦_* with the added term f_t of weight 1
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L121 | O(r,s), Fourier coefficients or weighted norms are used directly
EDGE: bpN:p5:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L121 | the Poisson bracket and its bilinearity/sign are used directly
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-integrand@L121-L121 | Z_K, q or abar is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:it-terms
KIND: step
TITLE: The two terms
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124
CONTRACT_ID: stepN:p6:it-terms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: it-taylor, it-integrand, it-gen; Lemma p4:projections
SOURCE_QUANTIFIERS: R, (f-T_K f)∘Phi
SOURCE_CONCLUSION: |R|_{r-2rho,s-2sigma}<=(1-eta)^{-1}V; |f-T_K f|_{r-rho,s-sigma}<=e^{-2πK sigma}delta and |(f-T_K f)∘Phi|<=(1-eta)^{-1}e^{-2πK sigma}delta; adding and (1-eta)^{-1}<=(1-2q delta/(abar rho sigma))^{-1} gives (d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:composition-integral, stepN:p6:it-taylor, stepN:p6:it-integrand, stepN:p6:it-gen, bpN:p4:projections, bpN:p4:norm#monotone, bpN:p5:composition, bpN:p4:norm, bpN:p4:domains, bpN:p6#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:composition-integral | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | bound for R with the data of it-taylor
EDGE: stepN:p6:it-taylor | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | data and the integral formula for R
EDGE: stepN:p6:it-integrand | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | the bound V
EDGE: stepN:p6:it-gen | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | eta<=2q delta/(abar rho sigma)
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | ¦f-T_K f¦_{r,s-sigma}<=e^{-2πK sigma}¦f¦_{r,s}
EDGE: bpN:p4:norm#monotone | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | monotonicity ¦.¦_{r-rho,s-sigma}<=¦.¦_{r,s-sigma}
EDGE: bpN:p5:composition | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | (ii): norm of a composition (f-T_K f)∘Phi
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | O(r,s), Fourier coefficients or weighted norms are used directly
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | V_rD or D_{r,s} (including shrunken widths) is used directly
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-terms@L124-L124 | Z_K, q or abar is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:it-real
KIND: step
TITLE: Reality
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-real@L126-L126
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-real@L126-L126
CONTRACT_ID: stepN:p6:it-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lambda=-Lambda; h,g,f real on real points
SOURCE_QUANTIFIERS: real points
SOURCE_CONCLUSION: omega real at real points; phi, xi real (homological (c)); Phi preserves real points; g_+=g+xi real and f_+=H∘Phi-h-g_+ real on real points of D_{r-2rho,s-2sigma}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:homological, bpN:p5:canonical-map, stepN:p6:it-decomp, bpN:p4:domains, bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:homological | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-real@L126-L126 | (c) reality of phi, xi
EDGE: bpN:p5:canonical-map | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-real@L126-L126 | (b) Phi preserves real points
EDGE: stepN:p6:it-decomp | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-real@L126-L126 | f_+=H∘Phi-h-g_+ from the decomposition
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-real@L126-L126 | V_rD or D_{r,s} (including shrunken widths) is used directly
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:it-real@L126-L126 | the frequency omega or the decomposition of g is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:dir-use
KIND: step
TITLE: Where the old hypotheses enter
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136
CONTRACT_ID: stepN:p6:dir-use
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: statement of iterative-direct; proofs of homological and iterative
SOURCE_QUANTIFIERS: where (N1), (N2), KLr<=alpha/p enter
SOURCE_CONCLUSION: in hom-def and hom-norm the old hypotheses are used only through Lemma divisor, i.e. the bound |k·omega|>=alpha/q on V_rD for k in Z_K\Lambda; it-gen..it-real use only the conclusions of the homological equation, Parts 4 and 5, and holomorphy/reality of h on V_rD; (N-dir) is exactly that bound
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:homological, bpN:p6:iterative, bpN:p6:setting, bpN:p6:divisor, stepN:p6:hom-def, stepN:p6:hom-norm, stepN:p6:it-gen, stepN:p6:it-real, bpN:p4:domains, bpN:p6#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:homological | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | proof being re-read
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | proof being re-read
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | hypotheses (N1), (N2) whose use is localised
EDGE: bpN:p6:divisor | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | the only place the old hypotheses enter
EDGE: stepN:p6:hom-def | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | uses divisor
EDGE: stepN:p6:hom-norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | uses divisor
EDGE: stepN:p6:it-gen | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | uses only conclusions of the homological equation
EDGE: stepN:p6:it-real | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | uses reality of omega from h real
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | V_rD or D_{r,s} (including shrunken widths) is used directly
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:dir-use@L136-L136 | Z_K, q or abar is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p6:iterative-direct
KIND: corollary
TITLE: Iterative Lemma, direct divisor form
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L129-L134
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L135-L138
CONTRACT_ID: bpN:p6:iterative-direct
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D subset C^n; r>0; K>=0; alpha>0; Lambda subset Z^n; p>1, q=p/(p-1); h holomorphic on V_rD with omega=∂_I h; hypothesis (N-dir): |k·omega(I)|>=alpha/q for all I in V_rD, k in Z_K\Lambda (in place of (N1), (N2), KLr<=alpha/p); the other hypotheses of the homological equation and the Iterative Lemma on s, rho, sigma, g, f, delta
SOURCE_QUANTIFIERS: D; r; K; alpha; Lambda; p; h; then s, rho, sigma, g, f
SOURCE_CONCLUSION: Proposition homological, Theorem iterative (all of (a)-(e), with the same constants and hypotheses on s,rho,sigma,g,f,delta), and Remark iterative-special hold verbatim under (N-dir). The special-case remark is excluded from this graph by the ownership/root-closure ruling, but is part of the source conclusion.
CONSTANT_SCOPE: as in the Iterative Lemma; L does not occur
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:dir-use, stepN:p6:dir-concl, bpN:p6:homological, bpN:p6:iterative, bpN:p6:setting, bpN:p6#data, bpN:p4:domains, bpN:p4:norm, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:dir-use | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L136-L136 | proof step
EDGE: stepN:p6:dir-concl | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L137-L137 | proof step
EDGE: bpN:p6:homological | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L132-L132 | conclusion: the homological equation under (N-dir)
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L132-L132 | conclusion: the Iterative Lemma under (N-dir)
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L132-L132 | g as in the setting, ¦g¦_*
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L130-L131 | Z_K, p, q
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L130-L130 | V_rD
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L132-L132 | the unchanged conclusions use O(r,s) and weighted norms
EDGE: bpN:p5:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-direct@L132-L132 | the unchanged conclusions use the bracket, J and the scaled norm
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: used by Part 11 (bpN:p11:hom, "with Corollary iterative-direct"): inside the N-PARTIAL-CONVEX closure; dropped candidate edges: Remark iterative-special (claimed to hold verbatim, not consumed) and P:bpP:p2:direct (provenance)
```

```text
NODE: stepN:p6:nf-first
KIND: step
TITLE: Step 0: hypotheses of the Iterative Lemma
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-first@L178-L178
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-first@L178-L178
CONTRACT_ID: stepN:p6:nf-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: statement of normal-form; (i), (ii)
SOURCE_QUANTIFIERS: rho_0=r/8, sigma_0=s/6
SOURCE_CONCLUSION: 2rho_0<r, 2sigma_0<s, KLr<=alpha/p; eps<=abar rho_0 sigma_0/(16q); y_0:=q eps/(abar rho_0 sigma_0)<=1/16 so u<=1/4 and the Iterative Lemma applies; kappa/6=2πK sigma_0>=1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:setting, bpN:p6#data, bpN:p6:normal-form#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-first@L178-L178 | KLr<=alpha/p carried by the setting
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-first@L178-L178 | kappa, abar, q
EDGE: bpN:p6:normal-form#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-first@L178-L178 | V_i, f_i, g_i, Phi_i and/or eps_i use the indexing fixed at L176
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p6:normal-form#data
KIND: definition
TITLE: Normal-form iteration indexing
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L176-L176
PROOF_SOURCE: -
CONTRACT_ID: bpN:p6:normal-form#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data of the Normal Form Lemma; conditional iteration prescription (each step must separately be shown admissible)
SOURCE_QUANTIFIERS: stage i and chosen losses rho_i, sigma_i
SOURCE_CONCLUSION: fixes V_i=D_{r_i,s_i}, f_0=f, g_{-1}=0, H_i=h+g_{i-1}+f_i; an admissible Iterative-Lemma step produces Phi_i:V_{i+1}->V_i, g_i=g_{i-1}+P_Lambda T_K f_i and f_{i+1}, r_{i+1}=r_i-2rho_i, s_{i+1}=s_i-2sigma_i; eps_i=|f_i|_{V_i}, eps_0=eps; Phi_i maps V_{i+1} into D_{r_i-3rho_i/2,s_i-3sigma_i/2} and is injective on V_{i+1}
CONSTANT_SCOPE: indexing and definitions only; no admissibility asserted
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:domains, bpN:p4:norm, bpN:p4:projections, bpN:p6:iterative
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L176-L176 | V_i and the shrunken domains
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L176-L176 | eps_i=¦f_i¦_{V_i}
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L176-L176 | g_i uses P_Lambda T_K f_i
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L176-L176 | specifies the output of an admissible step, without claiming its hypotheses
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-N-d
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section/construction data used without references throughout the normal-form proof; separated from the parent to avoid a parent/step cycle.
```

```text
NODE: bpN:p6:normal-form
KIND: theorem
TITLE: Normal Form Lemma
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L157-L174
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L175-L209
CONTRACT_ID: bpN:p6:normal-form
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (N1), (N2), K>0, KLr<=alpha/p (p>1, q=p/(p-1)); s>0; H=h+f with f in O(r,s) of finite norm eps=|f|_{r,s}; (i) eps<=(1/(2^7 q))(alpha r/K); (ii) kappa=2πKs>=6; r_*=r/2, s_*=s/6, c=2qK/(alpha r), g_0=P_Lambda T_K f
SOURCE_QUANTIFIERS: (D,r,K,alpha,L,Lambda,h); p; s; f
SOURCE_CONCLUSION: there are a holomorphic injective Psi:D_{r_*,s_*}->D_{r,s} with (DPsi)^T J DPsi=J and Psi(theta+k,I)=Psi(theta,I)+(k,0), and g, f_* in O(r_*,s_*), g a trig. polynomial in theta with frequencies in Lambda∩Z_K (P_Lambda g=g), such that H∘Psi=h+g+f_* on D_{r_*,s_*} and (a) |g-g_0|_{r_*,s_*}<=16c eps^2 (g=g_0 if N=0 or in case B); (b) |f_*|_{r_*,s_*}<=e^{-2πKs/6}eps=e^{-kappa/6}eps; (c) |Pi_I Psi-I|_inf<=qK eps/alpha (=c r eps/2) and |Pi_theta Psi-theta|_inf<=10q eps/(2πalpha r); (d) if Lambda=-Lambda and h,f real on real points then g, f_* real on real points and Psi maps real points to real points
CONSTANT_SCOPE: Psi, g, f_* are constructed from (h,f,K,alpha,L,Lambda,p) and (r,s); r_*, s_*, c depend only on (r,s,K,alpha,q)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p6:nf-first, stepN:p6:nf-case, stepN:p6:nf-N, stepN:p6:nf-induct, stepN:p6:nf-concl, stepN:p6:nf-disp, stepN:p6:nf-real, bpN:p6:setting, bpN:p6#data, bpN:p4:norm, bpN:p4:domains, bpN:p4:projections, bpN:p5:setting, bpN:p6:normal-form#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:nf-first | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L178-L178 | proof step
EDGE: stepN:p6:nf-case | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L180-L180 | proof step
EDGE: stepN:p6:nf-N | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L186-L186 | proof step
EDGE: stepN:p6:nf-induct | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L191-L191 | proof step
EDGE: stepN:p6:nf-concl | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L200-L200 | proof step
EDGE: stepN:p6:nf-disp | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L204-L204 | proof step
EDGE: stepN:p6:nf-real | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L208-L208 | proof step
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L158-L158 | hypotheses (N1), (N2)
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L158-L159 | K, q, kappa=2πKs, abar, Z_K
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L158-L158 | class O(r,s), norm
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L162-L162 | domains D_{r_*,s_*}, D_{r,s}
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L160-L160 | g_0=P_Lambda T_K f
EDGE: bpN:p5:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L162-L162 | J and the symplectic condition
EDGE: bpN:p6:normal-form#data | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L176-L176 | the proof fixes the iteration data used in its steps
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: sourcegap at L173 (Pöschel prints e^{Ks/6} for e^{-Ks/6}) is filled by Case B of nf-case; dropped candidate edges: composition, iterative (source provenance only), deviations (remark)
```

```text
NODE: stepN:p6:nf-case
KIND: step
TITLE: Step 0: two cases
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L180-L184
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L180-L184
CONTRACT_ID: stepN:p6:nf-case
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: nf-first; Iterative Lemma (d) with g=0, delta=eps
SOURCE_QUANTIFIERS: Case A: e^{-kappa/6}<=y_0; Case B: e^{-kappa/6}>y_0
SOURCE_CONCLUSION: |f_1|<=(1-2y_0)^{-1}((2/e)y_0+e^{-kappa/6})eps, (1-2y_0)^{-1}<=8/7; Case A: eps_1<=(16/7)y_0 eps<=...<=eps/kappa<=eps/4 (6.1); Case B: repeat with losses (r/4,s/3), |f_1|_{r/2,s/3}<=e^{-kappa/6}eps, stop with Psi=Phi_0', g=g_0, f_*=f_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:iterative, stepN:p6:nf-first, bpN:p6:ext-numerics, bpN:p6#data, bpN:p6:normal-form#data, bpN:p4:norm, bpN:p4:domains, bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L180-L184 | (d) with g=0 (¦g¦_*=0), and the repeated application with doubled losses in case B
EDGE: stepN:p6:nf-first | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L180-L180 | y_0<=1/16, hypotheses of the first step
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L180-L184 | 8/7, 2/e<1, 32/31 type numerics, e^{-2kappa/6}<=e^{-1}e^{-kappa/6}
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L180-L180 | kappa, abar
EDGE: bpN:p6:normal-form#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L180-L180 | V_i, f_i, g_i, Phi_i and/or eps_i use the indexing fixed at L176
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L184-L184 | direct use of domains, weighted norms/restriction, the decomposed norm, or the symplectic convention at this stage
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L184-L184 | direct use of domains, weighted norms/restriction, the decomposed norm, or the symplectic convention at this stage
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-case@L180-L180 | the decomposed norm ¦g¦_* is used with g=0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:nf-N
KIND: step
TITLE: Number of steps
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-N@L186-L189
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-N@L186-L189
CONTRACT_ID: stepN:p6:nf-N
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: nf-first, nf-case (6.1)
SOURCE_QUANTIFIERS: N=floor(kappa/(12 ln2)); rho_i, sigma_i, r_i, s_i
SOURCE_CONCLUSION: kappa>=12ln2 N>8N; if N=0 stop with Psi=Phi_0, g=g_0, f_*=f_1, |f_*|<=eps/4<=e^{-kappa/6}eps; for N>=1: rho=r/(8N), sigma=s/(4N), r_{N+1}=r_*, s_{N+1}=s_*, e^{-2πK sigma}<=1/8, rho sigma=rs/(32N^2), (6.2) eps_1<=abar rho sigma/(2^8 q)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:ext-numerics, stepN:p6:nf-case, stepN:p6:nf-first, bpN:p6#data, bpN:p6:normal-form#data, bpN:p4:norm, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-N@L186-L189 | 12 ln2>8, e^{-3ln2}=1/8
EDGE: stepN:p6:nf-case | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-N@L186-L189 | (6.1) eps_1<=eps/kappa<=eps/4
EDGE: stepN:p6:nf-first | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-N@L186-L186 | r_1=3r/4, s_1=2s/3 starting widths
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-N@L186-L188 | kappa=2πKs, abar
EDGE: bpN:p6:normal-form#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-N@L186-L186 | V_i, f_i, g_i, Phi_i and/or eps_i use the indexing fixed at L176
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-N@L186-L186 | direct use of domains, weighted norms/restriction, the decomposed norm, or the symplectic convention at this stage
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-N@L186-L186 | direct use of domains, weighted norms/restriction, the decomposed norm, or the symplectic convention at this stage
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:nf-induct
KIND: step
TITLE: Induction
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L191-L198
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L191-L198
CONTRACT_ID: stepN:p6:nf-induct
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: nf-N: rho, sigma, (6.1), (6.2)
SOURCE_QUANTIFIERS: 1<=i<=N
SOURCE_CONCLUSION: step i admissible and eps_{i+1}<=eps_i/4, so eps_i<=4^{1-i}eps_1 and |g_i-g_{i-1}|<=eps_i; |g_{i-1}|_*<=(1/2)(eps_{i-1}+...+eps_1)+eps/N<=abar rho sigma/(2^4 q); eps_{i+1}<=(128/127)(1/16+1/256+1/8)eps_i<eps_i/4
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:iterative, bpN:p4:projections, bpN:p6:setting, stepN:p6:nf-N, stepN:p6:nf-case, bpN:p6:ext-numerics, bpN:p4:norm, bpN:p6#data, bpN:p6:normal-form#data, bpN:p4:domains, bpN:p4:norm#monotone
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L197-L197 | (d) with delta=eps_i
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L191-L191 | ¦P_Lambda T_K f_i¦<=¦f_i¦
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L194-L194 | ¦g_{i-1}¦_* weights for the decomposition g_0+sum(g_j-g_{j-1})
EDGE: stepN:p6:nf-N | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L192-L193 | rho, sigma, N, r_i, s_i, (6.2)
EDGE: stepN:p6:nf-case | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L192-L192 | (6.1) eps_1<=eps/4
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L195-L197 | sum 4^{1-i}=4/3, 128/127, 2/e<1
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L194-L194 | norms of the terms
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L193-L193 | K, abar, q
EDGE: bpN:p6:normal-form#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L191-L191 | V_i, f_i, g_i, Phi_i and/or eps_i use the indexing fixed at L176
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L194-L194 | direct use of domains, weighted norms/restriction, the decomposed norm, or the symplectic convention at this stage
EDGE: bpN:p4:norm#monotone | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L194-L194 | direct use of domains, weighted norms/restriction, the decomposed norm, or the symplectic convention at this stage
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:nf-concl
KIND: step
TITLE: Conclusion of the construction
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L202
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L202
CONTRACT_ID: stepN:p6:nf-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: nf-induct, nf-N, nf-case; Lemma telescope
SOURCE_QUANTIFIERS: Psi=Phi_0∘...∘Phi_N, g=g_N, f_*=f_{N+1} on V_{N+1}=D_{r_*,s_*}
SOURCE_CONCLUSION: H∘Psi=h+g+f_*; g finite sum of trig polynomials with frequencies in Lambda∩Z_K; Psi symplectic periodic injective; (b) |f_*|<=e^{-kappa/6}eps; (a) |g-g_0|<=(4/3)eps_1<=16c eps^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:telescope, bpN:p6:iterative, stepN:p6:nf-induct, stepN:p6:nf-N, stepN:p6:nf-case, bpN:p4:projections, bpN:p6:ext-numerics, bpN:p6#data, bpN:p6:normal-form#data, bpN:p4:domains, bpN:p4:norm, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:telescope | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L200 | holomorphy, symplecticity and injectivity of the composition
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L200 | (a) periodicity of each Phi_i, (c) H_{i+1}=H_i∘Phi_i
EDGE: stepN:p6:nf-induct | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L202 | eps_i<=4^{1-i}eps_1 and sums
EDGE: stepN:p6:nf-N | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L201-L201 | N+1>kappa/(12 ln2), kappa>8N
EDGE: stepN:p6:nf-case | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L202-L202 | (6.1)
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L200 | g_i-g_{i-1}=P_Lambda T_K f_i trig. polynomials with frequencies in Lambda∩Z_K
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L201-L201 | e^{-(N+1)2ln2}<e^{-kappa/6}
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L202-L202 | abar s=alpha kappa/K
EDGE: bpN:p6:normal-form#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L200 | V_i, f_i, g_i, Phi_i and/or eps_i use the indexing fixed at L176
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L200 | direct use of domains, weighted norms/restriction, the decomposed norm, or the symplectic convention at this stage
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L200 | direct use of domains, weighted norms/restriction, the decomposed norm, or the symplectic convention at this stage
EDGE: bpN:p5:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-concl@L200-L200 | direct use of domains, weighted norms/restriction, the decomposed norm, or the symplectic convention at this stage
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:nf-disp
KIND: step
TITLE: (c) Displacement
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L204-L206
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L204-L206
CONTRACT_ID: stepN:p6:nf-disp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: nf-concl; Iterative Lemma (b)
SOURCE_QUANTIFIERS: Pi_I Psi-I, Pi_theta Psi-theta
SOURCE_CONCLUSION: Case A: |Pi_I Psi-I|_inf<=(q K eps/(e alpha))·1.17<=qK eps/alpha and |Pi_theta Psi-theta|_inf<=10q eps/abar r; Case B: bounds smaller by factor 1/2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:telescope, bpN:p6:iterative, stepN:p6:nf-case, stepN:p6:nf-N, stepN:p6:nf-induct, bpN:p6:ext-numerics, bpN:p6#data, bpN:p6:normal-form#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:telescope | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L204-L204 | displacement of a composition with seminorms ¦Pi_I.¦, ¦Pi_theta.¦
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L204-L204 | (b) per-step displacement bounds
EDGE: stepN:p6:nf-case | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L205-L206 | eps_1<=eps/kappa, case B displacement
EDGE: stepN:p6:nf-N | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L206-L206 | 1/(abar sigma)=4NK/(alpha kappa), N<=kappa/(12 ln2)
EDGE: stepN:p6:nf-induct | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L205-L205 | eps_i bounds
EDGE: bpN:p6:ext-numerics | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L206-L206 | 12 ln2>8 and ln2 numerics
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L206-L206 | kappa, abar
EDGE: bpN:p6:normal-form#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-disp@L204-L204 | V_i, f_i, g_i, Phi_i and/or eps_i use the indexing fixed at L176
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p6:nf-real
KIND: step
TITLE: (d) Reality
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-real@L208-L208
PROOF_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-real@L208-L208
CONTRACT_ID: stepN:p6:nf-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lambda=-Lambda; h,f real on real points
SOURCE_QUANTIFIERS: steps i
SOURCE_CONCLUSION: each step preserves reality (Iterative Lemma (e)); g_i, f_i, H_i real and Phi_i real-point-preserving; compositions preserve real points
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p6:iterative, stepN:p6:nf-concl, bpN:p6:normal-form#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-real@L208-L208 | (e) reality at each step
EDGE: stepN:p6:nf-concl | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-real@L208-L208 | Psi=Phi_0∘...∘Phi_N, g=g_N, f_*=f_{N+1}
EDGE: bpN:p6:normal-form#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-real@L208-L208 | V_i, f_i, g_i, Phi_i and/or eps_i use the indexing fixed at L176
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
ITEM: p6:prose-L176-L176
KIND: proof-region
SOURCE: blueprint-N/parts/p6-normal-form.tex#prose@L176-L176
DISPOSITION: NODE bpN:p6:normal-form#data
REASON: fixes the reused iteration objects, recurrence and eps_i; consumed by the normal-form proof and its labelled steps
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-N-d
REVIEWER: -
```

## Suspected blueprint defects

- Part 6 L186: “kappa >= 12 ln 2 N > 8N”, immediately before the N=0 branch. The strict inequality is false for N=0. The graph's nf-N record faithfully repeats the source, so this is reported as a blueprint defect rather than silently correcting its source fields. The downstream N>=1 uses are separate from this false unqualified display.
- Part 6 L246 says “Part 7 uses ... Corollary action-displacement”. The actual proofs cite Normal Form Lemma (c) directly. This is stale consumer-summary prose; the packet's exclusion correctly describes the proof uses.
- No new pinned-paper erratum is asserted. The sourcegap/deviation prose at L173, L226 and L239-L240 is provenance, including the explicitly rejected attribution at Part 7 L270-L271; no pinned PDF was audited here.

## Checks and limits

Only the two requested review files were written. No state-changing git command, Lean command, build, provider inspection or manifest-state inspection was run. Source labels, statement/proof spans, package uses, conditional premises and ownership exclusions were checked against the raw blueprint. The review-application script is used with --dry-run only to check that every FAIL has a complete replacement. No claim of theorem closure or axioms is made by this topology review.

Validation command: `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_apply_review.py docs/graph/N/packets N-p6 docs/graph/N/reviews/N-p6-review.md sol-review-N-d --dry-run`.

Parser receipt: `N-p6: 23 replaced, 1 added, 1 coverage items, 0 unresolved FAILs, 16 PASS nodes`.
