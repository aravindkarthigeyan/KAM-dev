# P-p8 slice topology review

Reviewer: `sol-review-P-j`. Marker: `rev-P-j`. Verdict: **FAIL**.

HEAD at report time: `0892ad4f5353dda0b9637f3076736a3b5ebe90ae` (the shared checkout advanced during review; exact reviewed file hashes are below). Source-only review; no Lean proof-status claim.

The complete Part 8 source (L1–256), both slice packets, REVIEW-BRIEF and SPEC (including writer rulings) were read. Cited statements in Parts 0, 1, 6, 7, track I Part 7 and track K Part 1 were checked at their source locators. The named frozen definitions `assemble`, `secularAverage`, `HasSecularBirkhoffForm` and `symplecticForm` were read, with manifest identity fields only.

55 nodes reviewed: **27 FAIL**, **28 PASS**. All **86 coverage items PASS**. Most failures are missing mandatory direct package/data links; the other failures concern external content, a source guard, source-domain scope and consumer locators.

## Findings

1. **Packages and section data.** SPEC requires direct links even when data occur only by symbol. The failing rows below identify uses of `conv#data`, `laplace-def`, `coeffs`, `product-def` and the holomorphic chart domain. Existing transitive paths do not replace these links.
2. **Fubini.** L27 includes Fubini, omitted from `e-diff`'s conclusion. Pair separation at L103/L104/L160 and successive averaging at L163 consume that external input directly.
3. **Identity interface and locators.** L165/L168 apply (I1)/(I2), the conclusions of `bpP:p8:identities`; the two step nodes establish coefficient comparisons. Retarget those applications to the lemma. This also gives the presently unconsumed lemma a path to the roots. The scale and constant-term edges must point to the actual consumers, L164/L169.
4. **Source contracts.** `same-jets#transfer` must carry the oscillator-tube inclusion from L202, rather than assume the average identity as an extra input. `sy-f` must restrict its action to a common linear orthogonal map. The quartic records must retain the separated-domain inequalities and exact change of variables.

Proof-step fields mentioning an earlier result are read as the local proof context supplied by their listed dependencies, not as new assumptions of the parent theorem. The transfer replacement removes the particularly misleading conclusion-shaped premise and restores its missing genuine source guard.

## Node verdicts

All spans below are in `blueprint-P/parts/p8-secular-form.tex`. The statement and proof spans were both re-read.

| Node ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpP:p8:e-param | PASS | L26-L26 | Source fields and direct uses match. |
| bpP:p8:e-diff | FAIL | L27-L27 | L27 explicitly includes Fubini; the record drops this consumed part of the external input. |
| bpP:p8:e-taylor | PASS | L28-L28 | Source fields and direct uses match. |
| bpP:p8:e-weyl | PASS | L29-L29 | Source fields and direct uses match. |
| bpP:p8:e-poch | PASS | L30-L30 | Source fields and direct uses match. |
| bpP:p8:conv#data | PASS | L17-L22 | Source fields and direct uses match. |
| bpP:p8:rho | FAIL | L33-L35 | Missing direct bpP:p7:holomorphic use: the holomorphic chart domain in which N(rho) is asserted to lie. |
| bpP:p8:perturbation-analytic | PASS | L39-L46 / L47-L52 | Source fields and direct uses match. |
| stepP:p8:pa-circ | PASS | L48-L48 | Source fields and direct uses match. |
| stepP:p8:pa-unif | PASS | L49-L49 | Source fields and direct uses match. |
| stepP:p8:pa-hol | FAIL | L50-L50 | Missing direct bpP:p8:conv#data use: hat f_fix, hat f_mov, and N(rho_*). |
| stepP:p8:pa-avg | PASS | L51-L51 | Source fields and direct uses match. |
| bpP:p8:symmetries | FAIL | L58-L66 / L67-L73 | EDGE for bpP:p8:conv#data must locate the use in this consumer at L59. |
| stepP:p8:sy-1 | PASS | L69-L69 | Source fields and direct uses match. |
| stepP:p8:sy-2 | PASS | L70-L70 | Source fields and direct uses match. |
| stepP:p8:sy-3 | PASS | L71-L71 | Source fields and direct uses match. |
| stepP:p8:sy-f | FAIL | L72-L72 | The parent statement L65 restricts R to O(2); arbitrary affine isometries acting on momenta are not allowed. Restrict the claimed invariance to the linear orthogonal action actually stated at L65. |
| bpP:p8:evenness | PASS | L75-L80 / L81-L85 | Faithful transcription; domain-scope concern is separated below. |
| stepP:p8:ev-inv | PASS | L82-L82 | Source fields and direct uses match. |
| stepP:p8:ev-tay | FAIL | L83-L83 | Missing direct bpP:p8:conv#data use: the secular function S and its Taylor expansion in the slow coordinates. |
| stepP:p8:ev-quad | FAIL | L84-L84 | Missing direct bpP:p8:conv#data use: the slow coordinates xi, eta of the secular quadratic part. |
| bpP:p8:lemma64 | PASS | L89-L99 / L100-L106 | Source fields and direct uses match. |
| stepP:p8:l64-a | PASS | L101-L101 | Source fields and direct uses match. |
| stepP:p8:l64-b | PASS | L102-L102 | Source fields and direct uses match. |
| stepP:p8:l64-c | FAIL | L103-L103 | Missing direct bpP:p8:e-diff use: Fubini on the product angle intervals to reduce or separate the torus average. |
| stepP:p8:l64-d | FAIL | L104-L104 | Missing direct bpP:p7:product-def use: planetwise independence reduces the full torus integral to the single lambda_i integral. Missing direct bpP:p8:e-diff use: Fubini on the product angle intervals to reduce or separate the torus average. |
| stepP:p8:l64-e | PASS | L105-L105 | Source fields and direct uses match. |
| bpP:p8:laplace-def | PASS | L110-L114 | Source fields and direct uses match. |
| bpP:p8:laplace | PASS | L116-L120 / L121-L124 | Source fields and direct uses match. |
| stepP:p8:la-exp | PASS | L122-L122 | Source fields and direct uses match. |
| stepP:p8:la-conv | FAIL | L123-L123 | Missing direct bpP:p8:laplace-def use: the Laplace coefficients b_s^(k) used in the statement or computation. |
| bpP:p8:identities | FAIL | L129-L135 / L136-L140 | Source fields match; reachability is restored by the qf-diag/qf-cross replacements below. |
| stepP:p8:id-1 | FAIL | L138-L138 | Missing direct bpP:p8:laplace-def use: the Laplace coefficients b_s^(k) used in the statement or computation. EDGE for bpP:p8:e-poch must locate the use in this consumer at L138. |
| stepP:p8:id-2 | FAIL | L139-L139 | Missing direct bpP:p8:laplace-def use: the Laplace coefficients b_s^(k) used in the statement or computation. EDGE for bpP:p8:e-poch must locate the use in this consumer at L139. |
| bpP:p8:coeffs | PASS | L144-L150 | Source fields and direct uses match. |
| bpP:p8:quadratic-form | PASS | L152-L158 / L159-L171 | Source fields and direct uses match. |
| stepP:p8:qf-pair | FAIL | L160-L160 | Missing direct bpP:p7:product-def use: each planet position depends only on its own fast angle and slow block. Missing direct bpP:p8:e-diff use: Fubini on the product angle intervals to reduce or separate the torus average. |
| stepP:p8:qf-scale | PASS | L161-L161 | Source fields and direct uses match. |
| stepP:p8:qf-c0 | FAIL | L162-L162 | Missing direct bpP:p8:conv#data use: u_i, the axes a_i=a_i(Lambda_i), and the circular value of the secular pair average. Missing direct bpP:p8:laplace-def use: the Laplace coefficients b_s^(k) used in the statement or computation. |
| stepP:p8:qf-diag | FAIL | L163-L165 | Missing direct bpP:p8:conv#data use: u_i=(xi_i,eta_i), Gamma_i, a_i(Lambda_i), and the normalized angle averages. Missing direct bpP:p8:laplace-def use: the Laplace coefficients b_s^(k) used in the statement or computation. Missing direct bpP:p8:e-diff use: Fubini on the product angle intervals to reduce or separate the torus average. EDGE for stepP:p8:qf-scale must locate the use in this consumer at L164. The proof invokes the identity of bpP:p8:identities, whereas stepP:p8:id-1 only compares its series coefficients; use the lemma that states the identity. |
| stepP:p8:qf-cross | FAIL | L166-L168 | Missing direct bpP:p8:conv#data use: u_i, Gamma_i and the normalized averages in the slow chart coordinates. The proof invokes the identity of bpP:p8:identities, whereas stepP:p8:id-2 only compares its series coefficients; use the lemma that states the identity. |
| stepP:p8:qf-assembly | FAIL | L169-L169 | Missing direct bpP:p8:conv#data use: S_fix, u_i, and N_R(rho_*) with a=a(Lambda). EDGE for stepP:p8:qf-c0 must locate the use in this consumer at L169. |
| stepP:p8:qf-diag2 | FAIL | L170-L170 | Missing direct bpP:p8:conv#data use: the slow-coordinate order and Gamma_j=(xi_j^2+eta_j^2)/2. |
| bpP:p8:identification | PASS | L182-L189 / L190-L194 | Source fields and direct uses match. |
| stepP:p8:id-diff | FAIL | L191-L191 | Missing direct bpP:p8:conv#data use: hat f_mov=f_mov o Psi and hat f_fix=f_fix o Psi. |
| stepP:p8:id-avg | PASS | L192-L192 | Source fields and direct uses match. |
| stepP:p8:id-int | FAIL | L193-L193 | Missing direct bpP:p8:conv#data use: the Bochner averages S_fix, S_mov and the domain N_R(rho_*). |
| bpP:p8:same-jets | PASS | L196-L204 / L205-L207 | Source fields and direct uses match. |
| bpP:p8:same-jets#jets | FAIL | L206-L206 | Missing direct bpP:p8:conv#data use: S_fix, S_mov, the slow variables and N_R(rho_*). Missing direct bpP:p8:coeffs use: C_0 and Q_h in the common quadratic form. |
| bpP:p8:same-jets#transfer | FAIL | L206-L206 | The applying step omits the explicit tube guard of L202; the average identity is a dependency conclusion, not an additional independent premise. |
| bpP:p8:quartic | FAIL | L216-L229 / L230-L235 | The statement field must specify the separated domain rather than an undefined D, and retain the exact conversion and all-alpha Taylor-coefficient scope at L221. |
| stepP:p8:q4-str | FAIL | L231-L231 | Missing direct bpP:p8:conv#data use: S_fix, u_i and N_R(rho_*) for the quartic Taylor part. |
| stepP:p8:q4-a | FAIL | L232-L232 | Missing direct bpP:p8:conv#data use: the secular slow variables u_i=(xi_i,eta_i) and their actions Lambda_i in the conversion. The step is conditional on the separated domain D of L221, whose defining inequalities were omitted. |
| stepP:p8:q4-b | FAIL | L233-L233 | Missing direct bpP:p8:conv#data use: u_i=(xi_i,eta_i) and Gamma_i=¦u_i¦^2/2 in the exact expression for E. |
| stepP:p8:q4-c | PASS | L234-L234 | Source fields and direct uses match. |

## Coverage

| Failing coverage item | Reason |
|---|---|
| None | All 86 dispositions checked. |

all other coverage items PASS

The chart/average/polydisc data paragraphs map to `conv#data`; the rotation/reflection paragraph L56 is pure notation mapped to its consuming statements. Nested displays are covered by their enclosing result records. The unmarked proof at L206 is covered by `same-jets#jets` and `same-jets#transfer`. The two paper-source gaps are mapped to the blueprint replacement computations; unchecked mixed quartic coefficients remain explicit forward obligations for Part 11b. `no76`, `factor-half`/`dictionary`, `use11` and `cp11-check` are administrative/comparison material, not mathematical prerequisites: corpus searches show only pointers, convention explanations, provenance or numerical comparison. No extra external node or imported ownership change is needed.

## Replacements for slice P-p8

Apply only the following blocks to P-p8. These preserve all fields not implicated above, including author, reviewer/status, contract and planning metadata. No replacement for another slice is requested.

### bpP:p8:e-diff

```text
NODE: bpP:p8:e-diff
KIND: external
TITLE: Differentiation under the integral:
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:e-diff@L27-L27
PROOF_SOURCE: -
CONTRACT_ID: bpP:p8:e-diff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi is C^k in w' with derivatives jointly continuous on [0,2pi]^n x U; 2pi-periodic continuous functions for the translation clause
SOURCE_QUANTIFIERS: k, U, phi, multi-index alpha with ¦alpha¦<=k
SOURCE_CONCLUSION: d^alpha <phi> = <d^alpha phi> for ¦alpha¦<=k; translation invariance of the integral of a 2pi-periodic continuous function; Fubini on products of intervals
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: external (Fubini on products of intervals; translation invariance of the period integral)
```

### bpP:p8:rho

```text
NODE: bpP:p8:rho
KIND: definition
TITLE: Secular polydisc constants
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:rho@L33-L35
PROOF_SOURCE: -
CONTRACT_ID: bpP:p8:rho
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p8:conv#data (n>=1; G,m0>0, kappa=G m0; m in (0,inf)^n; chart Psi=Psi^(n) with hat f_fix, hat f_mov; axes a*; N(rho))
SOURCE_QUANTIFIERS: data of conv#data; then rho_0 explicit; rho_* in (0,rho_0) fixed by bpP:p8:perturbation-analytic
SOURCE_CONCLUSION: defines rho_0=min_i min{Lambda_i*/2, sqrt(Lambda_i*)/16}, so that N(rho), rho<rho_0, lies in the domain of Prop holomorphic; rho_* is named as the constant of the proposition
CONSTANT_SCOPE: rho_0 depends only on Lambda* (hence on m,kappa,a*); rho_* depends only on (m,kappa,a*)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:conv#data, bpP:p7:holomorphic
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#bpP:p8:rho@L34-L34 | Lambda_i*, N(rho) and the data n, m, kappa, a*
EDGE: bpP:p7:holomorphic | blueprint-P/parts/p8-secular-form.tex#bpP:p8:rho@L34-L34 | the holomorphic chart domain in which N(rho) is asserted to lie
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: rho_* is only named here (its existence is the content of bpP:p8:perturbation-analytic); no edge to that proposition (would be a cycle). The statement that N(rho), rho<rho_0, lies in the domain of Prop holomorphic is consumed at stepP:p8:pa-unif, which cites the proposition
```

### stepP:p8:pa-hol

```text
NODE: stepP:p8:pa-hol
KIND: step
TITLE: Holomorphy of $\hat f$
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-hol@L50-L50
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-hol@L50-L50
CONTRACT_ID: stepP:p8:pa-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Re s_ij>=(a_j*-a_i*)^2/2 on N(rho_*) (Step pa-unif); principal s^(-1/2) holomorphic on Re s>0; Psi holomorphic
SOURCE_QUANTIFIERS: real lambda; w' in N(rho_*); i<j
SOURCE_CONCLUSION: (b): hat f_fix=-G sum m_i m_j s_ij^(-1/2) and hat f_mov are holomorphic in w', jointly continuous, 2pi-periodic, real at real points, equal to f_fix o Psi resp. f_mov o Psi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:x-hol, stepP:p8:pa-unif, bpP:p6:split, bpP:p7:holomorphic, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: I:bpI:p7:x-hol | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-hol@L50-L50 | principal s^(-1/2) holomorphic on Re s>0 and composition
EDGE: stepP:p8:pa-unif | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-hol@L50-L50 | Re s_ij>0 on N(rho_*)
EDGE: bpP:p6:split | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-hol@L50-L50 | formula equals f_fix o Psi; f_mov-f_fix=¦P¦^2/(2 m0)
EDGE: bpP:p7:holomorphic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-hol@L50-L50 | p^(i) holomorphic, Psi real at real points
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:pa-hol@L50-L50 | hat f_fix, hat f_mov, and N(rho_*)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: retargeted from bpP:p7:e-hol (excluded as alias in P-p7) to I:bpI:p7:x-hol; the Weierstrass part (I:bpI:p7:x-weier) is not used
```

### bpP:p8:symmetries

```text
NODE: bpP:p8:symmetries
KIND: proposition
TITLE: Symmetries of the chart
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L58-L66
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L67-L73
CONTRACT_ID: bpP:p8:symmetries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p8:conv#data (n>=1; G,m0>0, kappa=G m0; m in (0,inf)^n; chart Psi=Psi^(n) with hat f_fix, hat f_mov; axes a*; N(rho)); w in O_n, Psi(w)=(q,p) with blocks q^(i), p^(i); R_theta, sigma=diag(1,-1), 1=(1,...,1)
SOURCE_QUANTIFIERS: n,m,kappa; w in O_n; theta in R
SOURCE_CONCLUSION: (S1) Psi(lambda+pi 1,-xi,Lambda,-eta)=(-q,-p); (S2) Psi(lambda+theta 1,R_theta(xi,eta),Lambda)=(R_theta q^(i),R_theta p^(i)); (S3) Psi(-lambda,xi,Lambda,-eta)=(sigma q^(i),-sigma p^(i)); O_n invariant; f_fix,f_mov satisfy f(-q,-p)=f(q,p)=f(Rq,±Rp), R in O(2) blockwise
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:sy-1, stepP:p8:sy-2, stepP:p8:sy-3, stepP:p8:sy-f, bpP:p6:split, bpP:p7:product-def, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:sy-1 | blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L69-L69 | proof step (S1)
EDGE: stepP:p8:sy-2 | blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L70-L70 | proof step (S2)
EDGE: stepP:p8:sy-3 | blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L71-L71 | proof step (S3)
EDGE: stepP:p8:sy-f | blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L72-L72 | proof step Kepler functions
EDGE: bpP:p6:split | blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L65-L65 | f_fix, f_mov of Lemma split
EDGE: bpP:p7:product-def | blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L59-L59 | Psi^(n), O_n
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#bpP:p8:symmetries@L59-L59 | the standing product chart Psi and physical data; R_theta and sigma are local notation from L56
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:sy-f

```text
NODE: stepP:p8:sy-f
KIND: step
TITLE: The Kepler functions
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:sy-f@L72-L72
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:sy-f@L72-L72
CONTRACT_ID: stepP:p8:sy-f
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f_fix depends on ¦q_i-q_j¦; f_mov-f_fix=¦sum p_i¦^2/(2 m0)
SOURCE_QUANTIFIERS: common orthogonal linear map R in O(2), applied to every planet; independent overall signs on q and p
SOURCE_CONCLUSION: f_fix,f_mov invariant under (q,p)->(±Rq,±' Rp) for a common R in O(2) applied to all planets
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:split
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:split | blueprint-P/parts/p8-secular-form.tex#stepP:p8:sy-f@L72-L72 | f_fix depends on ¦q_i-q_j¦ and f_mov-f_fix=¦P¦^2/(2 m0)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:ev-tay

```text
NODE: stepP:p8:ev-tay
KIND: step
TITLE: Taylor structure
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-tay@L83-L83
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-tay@L83-L83
CONTRACT_ID: stepP:p8:ev-tay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S real analytic in (xi,eta); evenness under (xi,eta)->-(xi,eta); rotation invariance
SOURCE_QUANTIFIERS: S in {S_fix,S_mov}
SOURCE_CONCLUSION: odd-degree Taylor parts vanish; the degree-2d part of an O(2)-invariant analytic function is O(2)-invariant (O(2) linear, preserves homogeneity)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:perturbation-analytic, stepP:p8:ev-inv, bpP:p8:e-taylor, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-tay@L83-L83 | (c): S real analytic in (xi,eta)
EDGE: stepP:p8:ev-inv | blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-tay@L83-L83 | evenness and invariance
EDGE: bpP:p8:e-taylor | blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-tay@L83-L83 | Taylor coefficients, expansion
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-tay@L83-L83 | the secular function S and its Taylor expansion in the slow coordinates
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:ev-quad

```text
NODE: stepP:p8:ev-quad
KIND: step
TITLE: Quadratic part
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-quad@L84-L84
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-quad@L84-L84
CONTRACT_ID: stepP:p8:ev-quad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: degree-two part xi^T A xi+2 xi^T B eta+eta^T C eta; evenness in eta alone; invariance under (xi,eta)->(-eta,xi)
SOURCE_QUANTIFIERS: degree-two part
SOURCE_CONCLUSION: B=0 and C=A
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:ev-inv, stepP:p8:ev-tay, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:ev-inv | blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-quad@L84-L84 | evenness in eta alone and the rotation theta=pi/2
EDGE: stepP:p8:ev-tay | blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-quad@L84-L84 | degree-two part of the Taylor expansion
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:ev-quad@L84-L84 | the slow coordinates xi, eta of the secular quadratic part
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:l64-c

```text
NODE: stepP:p8:l64-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-c@L103-L103
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-c@L103-L103
CONTRACT_ID: stepP:p8:l64-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: p^(j).p^(k) continuous; p^(j) depends on lambda_j only, p^(k) on lambda_k only; step (b)
SOURCE_QUANTIFIERS: j!=k; w in O_n
SOURCE_CONCLUSION: (2pi)^-n int p^(j).p^(k) dlambda=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:l64-b, bpP:p7:product-def, bpP:p7:poincare, bpP:p8:e-diff
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:l64-b | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-c@L103-L103 | both single-period averages vanish
EDGE: bpP:p7:product-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-c@L103-L103 | p^(j) depends only on lambda_j
EDGE: bpP:p7:poincare | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-c@L103-L103 | (a): continuity
EDGE: bpP:p8:e-diff | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-c@L103-L103 | Fubini on the product angle intervals to reduce or separate the torus average
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:l64-d

```text
NODE: stepP:p8:l64-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-d@L104-L104
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-d@L104-L104
CONTRACT_ID: stepP:p8:l64-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Gamma_i>0: p^(i)=Q_{m_i,kappa}(ell,g,Lambda,C), ell=lambda-g; circular case Gamma_i=0
SOURCE_QUANTIFIERS: w in O_n; planet i
SOURCE_CONCLUSION: (2pi)^-n int ¦p^(i)¦^2 dlambda=(2pi)^-1 int ¦p^(i)¦^2 dlambda_i=m_i^2 kappa/a_i=m_i^4 kappa^2/Lambda_i^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-del, bpP:p7:kepler, bpP:p8:conv#data, bpP:p7:product-def, bpP:p8:e-diff
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:po-del | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-d@L104-L104 | p^(i)=Q(ell,g,Lambda,C), ell=lambda-g
EDGE: bpP:p7:kepler | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-d@L104-L104 | (c): mean of ¦p¦^2 over one period equals m^2 kappa/a; circular case of the same item
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-d@L104-L104 | a_i=Lambda_i^2/(m_i^2 kappa)
EDGE: bpP:p7:product-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-d@L104-L104 | planetwise independence reduces the full torus integral to the single lambda_i integral
EDGE: bpP:p8:e-diff | blueprint-P/parts/p8-secular-form.tex#stepP:p8:l64-d@L104-L104 | Fubini on the product angle intervals to reduce or separate the torus average
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:la-conv

```text
NODE: stepP:p8:la-conv
KIND: step
TITLE: Convergence
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:la-conv@L123-L123
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:la-conv@L123-L123
CONTRACT_ID: stepP:p8:la-conv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: coefficient of alpha^(2q+k) is O((q+k+1)^(s-1)(q+1)^(s-1)); all coefficients >=0
SOURCE_QUANTIFIERS: s>0; k>=0
SOURCE_CONCLUSION: radius of convergence >=1; b_s^(k)>0 on (0,1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:e-poch, stepP:p8:la-exp, bpP:p8:laplace-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:e-poch | blueprint-P/parts/p8-secular-form.tex#stepP:p8:la-conv@L123-L123 | (s)_p/p!=O(p^(s-1)), positivity of the Pochhammer symbols
EDGE: stepP:p8:la-exp | blueprint-P/parts/p8-secular-form.tex#stepP:p8:la-conv@L123-L123 | the series coefficients
EDGE: bpP:p8:laplace-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:la-conv@L123-L123 | the Laplace coefficients b_s^(k) used in the statement or computation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p8:identities

```text
NODE: bpP:p8:identities
KIND: lemma
TITLE: Two identities
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:identities@L129-L135
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:identities@L136-L140
CONTRACT_ID: bpP:p8:identities
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: alpha in [0,1); beta=b_{1/2}^(0), b=b_{1/2}^(1)
SOURCE_QUANTIFIERS: alpha in [0,1)
SOURCE_CONCLUSION: (I1) alpha beta''+2 beta'=b_{3/2}^(1); (I2) alpha^2 b''+2 alpha b'-2b=alpha b_{3/2}^(2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:id-1, stepP:p8:id-2, bpP:p8:laplace, bpP:p8:laplace-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:id-1 | blueprint-P/parts/p8-secular-form.tex#bpP:p8:identities@L138-L138 | proof step (I1)
EDGE: stepP:p8:id-2 | blueprint-P/parts/p8-secular-form.tex#bpP:p8:identities@L139-L139 | proof step (I2)
EDGE: bpP:p8:laplace | blueprint-P/parts/p8-secular-form.tex#bpP:p8:identities@L137-L137 | series of Lemma laplace compared coefficientwise
EDGE: bpP:p8:laplace-def | blueprint-P/parts/p8-secular-form.tex#bpP:p8:identities@L130-L130 | the Laplace coefficients b_s^(k) used in the statement or computation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:id-1

```text
NODE: stepP:p8:id-1
KIND: step
TITLE: (I1)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-1@L138-L138
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-1@L138-L138
CONTRACT_ID: stepP:p8:id-1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: beta=sum_q ((1/2)_q/q!)^2 alpha^(2q); (3/2)_p=(2p+1)(1/2)_p, (3/2)_{p-1}=2 (1/2)_p
SOURCE_QUANTIFIERS: alpha in [0,1); q>=1
SOURCE_CONCLUSION: coefficient of alpha^(2q-1) of alpha beta''+2 beta' is 2q(2q+1)((1/2)_q/q!)^2, equal to that of b_{3/2}^(1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:laplace, bpP:p8:e-poch, bpP:p8:laplace-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:laplace | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-1@L138-L138 | series of b_{1/2}^(0) and b_{3/2}^(1)
EDGE: bpP:p8:e-poch | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-1@L138-L138 | the Pochhammer relations used in the coefficient comparison (introduced at L137)
EDGE: bpP:p8:laplace-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-1@L138-L138 | the Laplace coefficients b_s^(k) used in the statement or computation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:id-2

```text
NODE: stepP:p8:id-2
KIND: step
TITLE: (I2)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-2@L139-L139
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-2@L139-L139
CONTRACT_ID: stepP:p8:id-2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: b=sum_q c_q alpha^(2q+1); (alpha^2 d^2+2 alpha d-2) alpha^m=(m+2)(m-1) alpha^m
SOURCE_QUANTIFIERS: alpha in [0,1); q>=0
SOURCE_CONCLUSION: coefficient of alpha^(2q+1) on both sides agree (q=0 both zero; q>=1 equal 2q(2q+3)c_q)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:laplace, bpP:p8:e-poch, bpP:p8:laplace-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:laplace | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-2@L139-L139 | series of b_{1/2}^(1) and b_{3/2}^(2)
EDGE: bpP:p8:e-poch | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-2@L139-L139 | the Pochhammer relations used in the coefficient comparison (introduced at L137)
EDGE: bpP:p8:laplace-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-2@L139-L139 | the Laplace coefficients b_s^(k) used in the statement or computation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:qf-pair

```text
NODE: stepP:p8:qf-pair
KIND: step
TITLE: Pair decomposition
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-pair@L160-L160
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-pair@L160-L160
CONTRACT_ID: stepP:p8:qf-pair
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hat f_fix=sum_{i<j} V_ij, V_ij=-G m_i m_j/¦q^(i)-q^(j)¦ depends on (lambda_i,lambda_j) and (u_i,Lambda_i,u_j,Lambda_j) only
SOURCE_QUANTIFIERS: pairs i<j
SOURCE_CONCLUSION: S_fix=sum S_ij with S_ij=<V_ij> (average over lambda_i,lambda_j by Fubini); Cor evenness applies to each S_ij (n=2 function of (u_i,u_j)); degree-two part A_ij ¦u_i¦^2+A'_ij ¦u_j¦^2+B_ij u_i.u_j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:evenness, bpP:p8:e-weyl, bpP:p8:perturbation-analytic, bpP:p8:conv#data, bpP:p7:product-def, bpP:p8:e-diff
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:evenness | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-pair@L160-L160 | evenness corollary applied to the n=2 function S_ij
EDGE: bpP:p8:e-weyl | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-pair@L160-L160 | quadratic O(2)-invariants of two vectors are spanned by the three dot products
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-pair@L160-L160 | formula hat f_fix=-G sum m_i m_j s_ij^(-1/2) and analyticity
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-pair@L160-L160 | S_fix and averages
EDGE: bpP:p7:product-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-pair@L160-L160 | each planet position depends only on its own fast angle and slow block
EDGE: bpP:p8:e-diff | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-pair@L160-L160 | Fubini on the product angle intervals to reduce or separate the torus average
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:qf-c0

```text
NODE: stepP:p8:qf-c0
KIND: step
TITLE: $C_0$
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-c0@L162-L162
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-c0@L162-L162
CONTRACT_ID: stepP:p8:qf-c0
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u=0: both planets circular (Thm poincare(f)); S_ij(0)=<V_ij>
SOURCE_QUANTIFIERS: pairs i<j
SOURCE_CONCLUSION: S_ij(0)=-G m_i m_j Phi(a_i,a_j)=-G m_i m_j a_j^-1 b_{1/2}^(0)(alpha_ij)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:poincare, stepP:p8:qf-scale, stepP:p8:qf-pair, bpP:p8:conv#data, bpP:p8:laplace-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:poincare | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-c0@L162-L162 | (f): circular orbits at u=0
EDGE: stepP:p8:qf-scale | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-c0@L162-L162 | Phi and b_{1/2}^(0)
EDGE: stepP:p8:qf-pair | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-c0@L162-L162 | S_ij=<V_ij>
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-c0@L162-L162 | u_i, the axes a_i=a_i(Lambda_i), and the circular value of the secular pair average
EDGE: bpP:p8:laplace-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-c0@L162-L162 | the Laplace coefficients b_s^(k) used in the statement or computation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:qf-diag

```text
NODE: stepP:p8:qf-diag
KIND: step
TITLE: Diagonal coefficients
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L165
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L165
CONTRACT_ID: stepP:p8:qf-diag
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u_j=0 (j circular), u_i=(xi_i,eta_i); Prop kepler(b): ¦q^(i)¦=a_i(1-e cos u), d lambda_i=(1-e cos u)du; e^2=¦v_i¦^2=2Gamma_i/Lambda_i-Gamma_i^2/Lambda_i^2=:E; identity (I1)
SOURCE_QUANTIFIERS: i!=j
SOURCE_CONCLUSION: coefficient of ¦u_i¦^2 in S_ij at u_j=0 is -fraktur a_ij/Lambda_i, in both orderings i<j and i>j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:kepler, bpP:p7:o-facts, I:bpI:p7:orbit-identities, bpP:p7:poincare, stepP:p8:qf-scale, stepP:p8:qf-pair, bpP:p8:identities, bpP:p8:e-taylor, bpP:p8:coeffs, bpP:p7:poincare-def, bpP:p8:conv#data, bpP:p8:laplace-def, bpP:p8:e-diff
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:kepler | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L163 | (b): ¦q¦=a(1-e cos u), mean-anomaly relation
EDGE: bpP:p7:o-facts | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L163 | e^2=¦v¦^2=E in terms of Gamma, Lambda
EDGE: I:bpI:p7:orbit-identities | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L163 | d lambda=(1-e cos u)du, r=a(1-e cos u)
EDGE: bpP:p7:poincare | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L163 | (f): circular planet j (u_j=0)
EDGE: stepP:p8:qf-scale | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L164-L164 | Phi(a_i(1-epsilon),a_j) and its radial derivatives in h
EDGE: stepP:p8:qf-pair | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L163 | S_ij=<V_ij>
EDGE: bpP:p8:identities | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L165-L165 | identity (I1) evaluates the radial derivative expression
EDGE: bpP:p8:e-taylor | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L165-L165 | Taylor expansion of h and E=¦u¦^2/Lambda+O(¦u¦^4)
EDGE: bpP:p8:coeffs | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L165-L165 | identification with fraktur a_ij
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L165-L165 | v=(1-Gamma/(2 Lambda))^(1/2) Lambda^(-1/2) u
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L163 | u_i=(xi_i,eta_i), Gamma_i, a_i(Lambda_i), and the normalized angle averages
EDGE: bpP:p8:laplace-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L165-L165 | the Laplace coefficients b_s^(k) used in the statement or computation
EDGE: bpP:p8:e-diff | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag@L163-L163 | Fubini on the product angle intervals to reduce or separate the torus average
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:qf-cross

```text
NODE: stepP:p8:qf-cross
KIND: step
TITLE: Cross coefficient
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L168
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L168
CONTRACT_ID: stepP:p8:qf-cross
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: i<j; B_ij=d_{xi_i}d_{xi_j}<V_ij> at 0; first-order orbit formulas in v with v=(1-Gamma/2Lambda)^(1/2)Lambda^(-1/2)u; B_k=r_j^-1 b_{1/2}^(k)(r_i/r_j) homogeneous of degree -1; identity (I2)
SOURCE_QUANTIFIERS: i<j
SOURCE_CONCLUSION: B_ij=2 fraktur b_ij/sqrt(Lambda_i Lambda_j) (partial_s partial_t <V_ij>=2 fraktur b_ij)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:e-diff, bpP:p7:regular-kepler, bpP:p7:poincare-def, bpP:p8:laplace-def, bpP:p8:identities, stepP:p8:qf-pair, bpP:p8:coeffs, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:e-diff | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L166 | differentiation under the average
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L166 | (a): d_v F=(sin F,-cos F) at v=0, F=lambda, J=1
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L166 | v in terms of u; position formula q=a(kc-v+(v.c)v/(1+k))
EDGE: bpP:p8:laplace-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L166 | Fourier expansion of U in Laplace coefficients B_k
EDGE: bpP:p8:identities | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L168-L168 | identity (I2) evaluates the mixed coefficient
EDGE: stepP:p8:qf-pair | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L166 | V_ij, S_ij=<V_ij>
EDGE: bpP:p8:coeffs | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L168-L168 | identification with fraktur b_ij
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-cross@L166-L166 | u_i, Gamma_i and the normalized averages in the slow chart coordinates
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:qf-assembly

```text
NODE: stepP:p8:qf-assembly
KIND: step
TITLE: Assembly
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169
CONTRACT_ID: stepP:p8:qf-assembly
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: degree-two part of S_fix-C_0 as the sum of the diagonal and cross coefficients; remainder analytic with vanishing jet to order three
SOURCE_QUANTIFIERS: (xi,Lambda,eta) in N_R(rho_*)
SOURCE_CONCLUSION: quadratic part sum_{j,k}(Q_h)_jk(xi_j xi_k+eta_j eta_k), remainder O(¦(xi,eta)¦^4); rho_* shrunk so that a(Lambda) is increasing
CONSTANT_SCOPE: shrinking depends only on continuity of a(Lambda)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:qf-c0, stepP:p8:qf-diag, stepP:p8:qf-cross, stepP:p8:qf-pair, bpP:p8:evenness, bpP:p8:e-taylor, bpP:p8:coeffs, bpP:p8:perturbation-analytic, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:qf-c0 | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169 | the constant C_0 subtracted from S_fix
EDGE: stepP:p8:qf-diag | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169 | diagonal coefficients
EDGE: stepP:p8:qf-cross | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169 | cross coefficient
EDGE: stepP:p8:qf-pair | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169 | sum over pairs
EDGE: bpP:p8:evenness | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169 | vanishing jet up to order three
EDGE: bpP:p8:e-taylor | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169 | O(¦(xi,eta)¦^4) from the vanishing jet of an analytic remainder
EDGE: bpP:p8:coeffs | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169 | Q_h, C_0 definitions
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169 | analyticity on N_R(rho_*)
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-assembly@L169-L169 | S_fix, u_i, and N_R(rho_*) with a=a(Lambda)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:qf-diag2

```text
NODE: stepP:p8:qf-diag2
KIND: step
TITLE: Diagonalisation
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag2@L170-L170
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag2@L170-L170
CONTRACT_ID: stepP:p8:qf-diag2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: varrho in SO(n) with Q_h=varrho diag(sigma) varrho^T; step Assembly
SOURCE_QUANTIFIERS: varrho; (xi,eta)
SOURCE_CONCLUSION: (xi,eta)->(varrho^T xi,varrho^T eta) is symplectic for d eta^ d xi, preserves sum(xi_j^2+eta_j^2); Gamma tilde_j=(tilde xi_j^2+tilde eta_j^2)/2, so quadratic part=sum 2 sigma_j tilde Gamma_j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:qf-assembly, bpP:p8:coeffs, bpP:p0:hamsymp#symplecticForm, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:qf-assembly | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag2@L170-L170 | quadratic part xi^T Q_h xi+eta^T Q_h eta
EDGE: bpP:p8:coeffs | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag2@L170-L170 | Q_h
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag2@L170-L170 | symplectic for the frozen form
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:qf-diag2@L170-L170 | the slow-coordinate order and Gamma_j=(xi_j^2+eta_j^2)/2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:id-diff

```text
NODE: stepP:p8:id-diff
KIND: step
TITLE: Difference
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-diff@L191-L191
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-diff@L191-L191
CONTRACT_ID: stepP:p8:id-diff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f_mov-f_fix=¦P¦^2/(2 m0) identically (Lemma split); p^(i)(lambda_i) continuous
SOURCE_QUANTIFIERS: w' with lambda in O_n
SOURCE_CONCLUSION: hat f_mov-hat f_fix=¦sum p^(i)¦^2/(2 m0) is a polynomial in the continuous p^(i)(lambda_i), hence continuous
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:split, bpP:p7:poincare, bpP:p7:product-def, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:split | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-diff@L191-L191 | f_mov-f_fix=¦P¦^2/(2 m0)
EDGE: bpP:p7:poincare | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-diff@L191-L191 | (a): p^(i) real analytic hence continuous
EDGE: bpP:p7:product-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-diff@L191-L191 | p^(i) depends on lambda_i only
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-diff@L191-L191 | hat f_mov=f_mov o Psi and hat f_fix=f_fix o Psi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:id-int

```text
NODE: stepP:p8:id-int
KIND: step
TITLE: Integrability
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-int@L193-L193
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-int@L193-L193
CONTRACT_ID: stepP:p8:id-int
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bounded continuous functions are integrable on the compact torus; on N_R(rho_*) hat f continuous on the torus
SOURCE_QUANTIFIERS: w'
SOURCE_CONCLUSION: integrability of hat f_fix is equivalent to that of hat f_mov and the averages subtract; on N_R(rho_*) both integrable
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:id-diff, bpP:p8:perturbation-analytic, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:id-diff | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-int@L193-L193 | continuity of the difference
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-int@L193-L193 | (a): hat f continuous on the torus for w' in N_R(rho_*)
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:id-int@L193-L193 | the Bochner averages S_fix, S_mov and the domain N_R(rho_*)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p8:same-jets#jets

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
SOURCE_CONCLUSION: all (xi,eta)-derivatives of order >=1 of S_mov-S_fix vanish; (a) same quadratic form Q_h and constant C_0+delta; (b) same secular equations, frequencies differ by mu d_Lambda delta
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
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: added step: the all-order equality and (a),(b) are consumed by Parts 11b/12; proof paragraph L206
```

### bpP:p8:same-jets#transfer

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
SOURCE_CONCLUSION: HasBirkhoff(P_fix,V,r_0,mu_0,P_0-delta,Omega,beta) and conversely: integrability clause (i) transfers and the expansion clause (ii) with P_0->P_0-delta; Omega, beta unchanged
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
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: added step for the unmarked substantive transfer (c)
```

### bpP:p8:quartic

```text
NODE: bpP:p8:quartic
KIND: proposition
TITLE: Quartic jet
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L216-L229
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L230-L235
CONTRACT_ID: bpP:p8:quartic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=2; Lambda with (xi,Lambda,eta) in N_R(rho_*)-range; v the eccentricity vectors of Definition poincare-def
SOURCE_QUANTIFIERS: n,m,kappa,a*; Lambda; for (a): alpha,v_i,v_j in the domain D
SOURCE_CONCLUSION: degree-four part of S_fix (and S_mov) is Q_4=sum_{i<j}[c1 ¦u_i¦^4+c2 ¦u_j¦^4+c3 ¦u_i¦^2¦u_j¦^2+c4 (u_i.u_j)^2+c5 ¦u_i¦^2 u_i.u_j+c6 ¦u_j¦^2 u_i.u_j] with c_nu(Lambda_i,Lambda_j) real analytic; (a) S_ij=-G m_i m_j a_j^-1 W(alpha_ij;v_i,v_j) with W real analytic on D={(alpha,v_i,v_j): 0<alpha<1, ¦v_i¦,¦v_j¦<1/4, alpha(1+¦v_i¦)<1-¦v_j¦}, independent of m,G,kappa, exact passage v_i=sqrt(1-¦u_i¦^2/(4 Lambda_i)) u_i/sqrt(Lambda_i); if W_2=A ¦v_i¦^2+A' ¦v_j¦^2+B v_i.v_j, then Q_4^(ij)=(-G m_i m_j/a_j)[W_4(u_i/sqrt(Lambda_i),u_j/sqrt(Lambda_j))-A ¦u_i¦^4/(4 Lambda_i^2)-A' ¦u_j¦^4/(4 Lambda_j^2)-(B/8)(u_i.u_j)/sqrt(Lambda_i Lambda_j)(¦u_i¦^2/Lambda_i+¦u_j¦^2/Lambda_j)]; sufficient subdomain ¦v_i¦,¦v_j¦<min(1/4,(1-alpha)/(1+alpha)); Taylor coefficients of W at v=0 real analytic for every alpha in (0,1), with convergence neighbourhood allowed to shrink as alpha->1; (b) c_1,c_2 = -G m_i m_j (h^(4)(0)/64-h''(0)/16)/Lambda^2 with h(eps)=Phi(a(1-eps),a')(1-eps); (c) c_1=m_i m_j r_1^ex(a_i,a_j)/(2 Lambda_i^2), c_2 analogously, with r_1^ex=-h^(4)(0)/32+h''(0)/8 (G=m0=1); explicit c_3..c_6 are forward obligations of Part 11b
CONSTANT_SCOPE: c_nu depend only on (Lambda_i,Lambda_j) (and m,G,kappa); W independent of m,G,kappa
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:q4-str, stepP:p8:q4-a, stepP:p8:q4-b, stepP:p8:q4-c, bpP:p8:same-jets, bpP:p7:poincare-def, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:q4-str | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L231-L231 | proof step Structure
EDGE: stepP:p8:q4-a | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L232-L232 | proof step (a)
EDGE: stepP:p8:q4-b | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L233-L233 | proof step (b)
EDGE: stepP:p8:q4-c | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L234-L234 | proof step (c)
EDGE: bpP:p8:same-jets | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L217-L217 | S_mov has the same degree-four part
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L221-L221 | v of Definition poincare-def
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#bpP:p8:quartic@L217-L217 | data, N_R(rho_*), S_fix
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: edge to bpP:p8:cp11-check deleted (remark comparing CP11 (B.6); no proof consumes it; it depends on this proposition). Edges to evenness/quadratic-form/perturbation-analytic are carried by the steps
```

### stepP:p8:q4-str

```text
NODE: stepP:p8:q4-str
KIND: step
TITLE: Structure
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231
CONTRACT_ID: stepP:p8:q4-str
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Cor evenness; Prop perturbation-analytic; pair decomposition (Step qf-pair)
SOURCE_QUANTIFIERS: (xi,Lambda,eta) in N_R(rho_*)
SOURCE_CONCLUSION: the degree-four part is an O(2)-invariant polynomial analytic in Lambda, a sum over pairs of degree-two polynomials in ¦u_i¦^2,¦u_j¦^2,u_i.u_j: the six listed monomials
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p8:evenness, bpP:p8:perturbation-analytic, stepP:p8:qf-pair, bpP:p8:e-weyl, bpP:p8:e-taylor, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p8:evenness | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231 | even, O(2)-invariant Taylor parts
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231 | joint analyticity (Taylor coefficients analytic in Lambda)
EDGE: stepP:p8:qf-pair | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231 | pair decomposition
EDGE: bpP:p8:e-weyl | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231 | invariants are polynomials in dot products
EDGE: bpP:p8:e-taylor | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231 | Taylor coefficients of a jointly analytic function
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-str@L231-L231 | S_fix, u_i and N_R(rho_*) for the quartic Taylor part
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:q4-a

```text
NODE: stepP:p8:q4-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232
CONTRACT_ID: stepP:p8:q4-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: q^(i)=a_i tilde q(lambda_i,v_i) with tilde q independent of a,m,kappa; D={(alpha,v_i,v_j): 0<alpha<1, ¦v_i¦,¦v_j¦<1/4, alpha(1+¦v_i¦)<1-¦v_j¦} (disjoint ellipses)
SOURCE_QUANTIFIERS: alpha in (0,1); v_i,v_j in D
SOURCE_CONCLUSION: S_ij=-G m_i m_j a_j^-1 W(alpha;v_i,v_j) with W real analytic on D, independent of m,G,kappa; Taylor coefficients at v=0 analytic for all alpha in (0,1); exact passage v_i=sqrt(1-¦u_i¦^2/(4 Lambda_i)) u_i/sqrt(Lambda_i); if W_2=A ¦v_i¦^2+A' ¦v_j¦^2+B v_i.v_j, then Q_4^(ij)=(-G m_i m_j/a_j)[W_4(u_i/sqrt(Lambda_i),u_j/sqrt(Lambda_j))-A ¦u_i¦^4/(4 Lambda_i^2)-A' ¦u_j¦^4/(4 Lambda_j^2)-(B/8)(u_i.u_j)/sqrt(Lambda_i Lambda_j)(¦u_i¦^2/Lambda_i+¦u_j¦^2/Lambda_j)] via the expansion of (1-t)^(1/2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:poincare-def, bpP:p8:perturbation-analytic, stepP:p8:pa-circ, bpP:p8:e-taylor, stepP:p8:qf-pair, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232 | q^(i)=a_i tilde q(lambda_i,v_i), v in terms of u
EDGE: bpP:p8:perturbation-analytic | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232 | the argument of the proposition applies on D (positive lower bound of the distance)
EDGE: stepP:p8:pa-circ | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232 | Taylor coefficients at v=0 are those of the circular case
EDGE: bpP:p8:e-taylor | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232 | Taylor expansion of (1-t)^(1/2), t=¦u¦^2/(4 Lambda)
EDGE: stepP:p8:qf-pair | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232 | V_ij, S_ij
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-a@L232-L232 | the secular slow variables u_i=(xi_i,eta_i) and their actions Lambda_i in the conversion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p8:q4-b

```text
NODE: stepP:p8:q4-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-b@L233-L233
PROOF_SOURCE: blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-b@L233-L233
CONTRACT_ID: stepP:p8:q4-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u_j=0; Step qf-diag computation; E=¦u¦^2/Lambda-¦u¦^4/(4 Lambda^2)
SOURCE_QUANTIFIERS: i!=j
SOURCE_CONCLUSION: coefficient of E^2 is h^(4)(0)/64, so the ¦u¦^4 coefficient is -G m_i m_j (h^(4)/64-h''/16)/Lambda^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p8:qf-diag, bpP:p8:e-taylor, bpP:p8:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p8:qf-diag | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-b@L233-L233 | S_ij at u_j=0 as sum over E^l h^(2l)(0) binomial moments
EDGE: bpP:p8:e-taylor | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-b@L233-L233 | Taylor expansion of h and E in ¦u¦
EDGE: bpP:p8:conv#data | blueprint-P/parts/p8-secular-form.tex#stepP:p8:q4-b@L233-L233 | u_i=(xi_i,eta_i) and Gamma_i=¦u_i¦^2/2 in the exact expression for E
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Suspected blueprint defects and limitations

- **Rotation-domain scope, L22/L76.** L22 defines a coordinate polydisc, whereas L76 states `S(R_theta(xi,eta),Lambda)=S(xi,Lambda,eta)` for points in its real part. That box is not invariant under general plane rotations. For instance, xi_i=eta_i=0.9 rho rotates by pi/4 to a component of magnitude greater than rho. If S is being restricted to this analytic neighbourhood, the statement needs both arguments in the domain, or an invariant smaller slow-variable domain. If the intended S is the globally defined total Bochner average of the total perturbation, state that interpretation explicitly: the global symmetry can still make the identity meaningful outside the analytic box. This is a scope concern already noted by the extractor, not a topology failure or permission to add a source hypothesis. The local Taylor applications only need a germ at zero.
- **Imported orbit identity attribution, L163.** The cited track-I `orbit-identities` statement gives the radial formula, but does not itself state the Jacobian `d lambda=(1-e cos u)du`. The latter follows by differentiating Kepler's equation, which the massed Kepler proposition already names. The existing edge has a genuine radial-formula use; its rationale should be understood with that distinction. No source gap is asserted.
- Existing paper errata and coefficient comparisons at L173–178/L237–239/L247 were checked as provenance in this source-only task, not independently re-audited against PDFs. They do not justify adding edges back from the computations to their comparison remarks.

## Validation

`python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p8 --structural` returned `55 nodes, 195 edges, 86 coverage items, 0 problems, 0 TODO records`. This structural PASS does not discharge the semantic failures above. Replacement blocks were checked for one EDGE per DEPS entry, existing target IDs, consumer-locator bounds, preservation of untouched fields, and absence of new cycles. Packets and blueprint were not edited. No Lean commands or state-changing git commands were run.

Snapshot SHA-256:
- `blueprint-P/parts/p8-secular-form.tex`: `413806b9fcc86156e0b241da85668677b44bf142897c7039940504a50ae1febc`
- `docs/graph/P/packets/P-p8.nodes.md`: `d295dd6a643d33831e8985e87de7e8f3fdd6cc43c3e12788613bdb9d014731d9`
- `docs/graph/P/packets/P-p8.coverage.md`: `a1b91f0267e6dc69a83c7f7ffd54e23a5c7be693bb8f879001397195bbaa4a2d`

READY rev-P-j
