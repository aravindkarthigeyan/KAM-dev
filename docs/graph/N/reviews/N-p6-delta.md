# N-p6 delta topology review

Reviewer: sol-delta-N-d. Marker: delta-N-d.

Verdict: FAIL. Audited all 24 PROPOSED nodes and 55 PROPOSED coverage items: 3 node FAILs and 0 coverage FAILs. The prior slice reviewer is sol-review-N-d; this is an independent delta review.

The audit re-read the raw slice and every PROPOSED record's statement, proof and EDGE spans, compared the prior slice review's requested repair with the merged packet, and checked direct uses, package data, conditional applications, statement fields, constants, locators, coverage and imports under SPEC. This is a source-topology review, not a proof-status or Lean review. No Lean command was run and no implementation file was read.

Cross-part statement checks: Part 1 L22–26, L35–39, L112–118; Part 3 maximality, uniqueness, exit, periodic continuation, Hamiltonian regularity, energy and periodicity; Part 4 domains, weighted norms, coefficients, B.1, B.3, B.4 and projections; Part 5 setting, transform, composition/integral and canonical-map package; imported K Part 1 L75–78, L227–236, L1047–1051 and L1073–1079. Import applicability was checked at the consumers, without widening the imported contracts. Frozen interfaces were consulted only as identities/interfaces. These slices own no frozen anchors.

CORPUS.sha256 and IMPORTS.sha256 both match the current files. No PROPOSED node in either slice contains a route edge added as “alternative derivation offered by the proof (route)” or the mechanical quantifier text “inherits the fixed data and quantifiers of the enclosing proof; no new binders”. The case splits are branches of one proof, not alternative derivations needing route nodes. Earlier proof arguments explicitly replayed by the source are checked as argument reuse with the local hypotheses.

## PROPOSED nodes

| ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpN:p6:lipschitz | FAIL | L42–45; L46–48; L47–47; L43–43 | The added domain edge repairs the original FAIL. The retained Hessian-conversion edge is inapplicable: Part 1 L112–118 assumes HasComplexHessianBound on a centred ball and concludes a Euclidean operator bound, whereas L43 uses an entrywise bound on arbitrary V_rD to bound the max-norm operator. Drop that edge; the latter estimate is routine row-sum algebra, below the node threshold. |
| stepN:p6:hom-def | PASS | L72–72 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:hom-norm | FAIL | L74–74 | The setting edge repairs the original FAIL, but the explicitly quantified I in V_rD and the supremum over V_rD still require the direct domains package edge (SPEC package rule). |
| stepN:p6:hom-eq | PASS | L76–76 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:hom-real | PASS | L78–78 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:bg-term | PASS | L87–87 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:bg-sum | PASS | L88–88 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:it-map | PASS | L112–112 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:it-taylor | PASS | L114–115; L114–114 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:it-decomp | PASS | L117–119; L117–117; L119–119 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:it-integrand | PASS | L121–122; L121–121 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:it-terms | PASS | L124–124 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:it-real | PASS | L126–126 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| bpN:p6:iterative-direct | PASS | L129–134; L135–138; L136–136; L137–137; L132–132; L130–131; L130–130 | The omitted iterative-special clause is restored; direct packages now match the statement. |
| stepN:p6:dir-use | PASS | L136–136 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| bpN:p6:normal-form | PASS | L157–174; L175–209; L178–178; L180–180; L186–186; L191–191; L200–200; L204–204; L208–208; L158–158; L158–159; L162–162; L160–160; L176–176 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:nf-first | PASS | L178–178 | Future-application edge removed; iteration data and packages are linked at the hypothesis check. |
| stepN:p6:nf-case | PASS | L180–184; L180–180; L184–184 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:nf-N | PASS | L186–189; L186–186; L186–188 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:nf-induct | PASS | L191–198; L197–197; L191–191; L194–194; L192–193; L192–192; L195–197; L193–193 | Iteration data and norm monotonicity are linked; nf-case use is correctly located at L192. |
| stepN:p6:nf-concl | PASS | L200–202; L200–200; L201–201; L202–202 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:nf-disp | PASS | L204–206; L204–204; L205–206; L206–206; L205–205 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| stepN:p6:nf-real | PASS | L208–208 | The replacement resolves the recorded FAIL; source fields and direct package/result uses agree with the cited text. |
| bpN:p6:normal-form#data | FAIL | L176–176 | The new node correctly makes the iteration prescription conditional and avoids a parent/step cycle. It omits the opening normalization identities at its own L176 locator and the direct packages bpN:p6#data and bpN:p6:setting whose constants and h it fixes/uses. |

## PROPOSED coverage items

| ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpN:p6:lipschitz | PASS | L42–45 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:hom-def | PASS | L72–72 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:hom-norm | PASS | L74–74 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:hom-eq | PASS | L76–76 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:hom-real | PASS | L78–78 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:bg-term | PASS | L87–87 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:bg-sum | PASS | L88–88 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:it-map | PASS | L112–112 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:it-taylor | PASS | L114–115 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:it-decomp | PASS | L117–119 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:it-integrand | PASS | L121–122 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:it-terms | PASS | L124–124 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:it-real | PASS | L126–126 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p6:iterative-direct | PASS | L129–134 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:dir-use | PASS | L136–136 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p6:iterative-special | PASS | L140–144 | Exclusion confirmed against references and the root consumers; no retained root application is omitted. |
| bpN:p6:normal-form | PASS | L157–174 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:nf-first | PASS | L178–178 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:nf-case | PASS | L180–184 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:nf-N | PASS | L186–189 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:nf-induct | PASS | L191–198 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:nf-concl | PASS | L200–202 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:nf-disp | PASS | L204–206 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| stepN:p6:nf-real | PASS | L208–208 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| bpN:p6:action-displacement | PASS | L211–214 | Exclusion confirmed against references and the root consumers; no retained root application is omitted. |
| bpN:p6:deviations | PASS | L234–243 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| bpN:p6:consumers | PASS | L245–247 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p6 | PASS | L1–1 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p6:s-ext | PASS | L20–20 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p6:s-setting | PASS | L27–27 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p6:s-hom | PASS | L58–58 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p6:s-iter | PASS | L91–91 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p6:s-comp | PASS | L146–146 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p6:s-nfl | PASS | L155–155 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p6:s-nonres | PASS | L219–219 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| heading:bpN:p6:s-dev | PASS | L232–232 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| p6:sourcegap-L173 | PASS | L173–173 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| p6:sourcegap-L226 | PASS | L226–226 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| p6:sourcegap-L239 | PASS | L239–239 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| p6:sourcegap-L240 | PASS | L240–240 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| p6:source-L39 | PASS | L39–39 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p6:source-L44 | PASS | L44–44 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p6:source-L52 | PASS | L52–52 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p6:source-L69 | PASS | L69–69 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p6:source-L84 | PASS | L84–84 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p6:source-L107 | PASS | L107–107 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p6:source-L133 | PASS | L133–133 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p6:source-L173 | PASS | L173–173 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p6:source-L213 | PASS | L213–213 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p6:source-L225 | PASS | L225–225 | Provenance exclusion is correct; no proof dependency is extracted from the source citation. |
| p6:prose-L8-L9 | PASS | L8–9 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| p6:prose-L11-L16 | PASS | L11–16 | Correct node mapping; any node-field repair above leaves this disposition intact. |
| p6:prose-L18-L18 | PASS | L18–18 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| p6:prose-L24-L25 | PASS | L24–25 | The stated notation, pointer, heading or administrative exclusion matches the raw span and its consumers. |
| p6:prose-L176-L176 | PASS | L176–176 | Correct node mapping; any node-field repair above leaves this disposition intact. |

## Minimal replacement blocks

Only the failing fields/edges below change. All other lines, including provenance and status metadata, are copied verbatim from the current packet.

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
DEPS: stepN:p6:lip-seg, bpN:p6:setting, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p6:lip-seg | blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L47-L47 | proof step
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L43-L43 | conclusion is condition (N2) of the setting
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#bpN:p6:lipschitz@L43-L43 | V_rD is the domain of the Hessian and frequency bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6+sol-review-N-d
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
DEPS: bpN:p6:divisor, bpN:p4:projections, stepN:p6:hom-def, bpN:p4:norm, bpN:p6#data, bpN:p6:setting, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p6:divisor | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | divisor bound ¦k·omega¦>=alpha/q
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | norm bounds for xi and T_K f
EDGE: stepN:p6:hom-def | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | phi is the finite sum of hom-def with coefficients phihat_k
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | weighted norm sum_k ¦.¦e^{2π¦k¦_1 s}
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | q, abar
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | the frequency omega or the decomposition of g is used directly
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74 | I ranges over V_rD and the weighted bound is obtained by its supremum on that action domain
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p6+sol-review-N-d
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
SOURCE_CONCLUSION: fixes abar=2πalpha, kappa=2πKs; abar s=alpha kappa/K and K>=3/(πs); fixes V_i=D_{r_i,s_i}, f_0=f, g_{-1}=0, H_i=h+g_{i-1}+f_i; an admissible Iterative-Lemma step produces Phi_i:V_{i+1}->V_i, g_i=g_{i-1}+P_Lambda T_K f_i and f_{i+1}, r_{i+1}=r_i-2rho_i, s_{i+1}=s_i-2sigma_i; eps_i=|f_i|_{V_i}, eps_0=eps; Phi_i maps V_{i+1} into D_{r_i-3rho_i/2,s_i-3sigma_i/2} and is injective on V_{i+1}
CONSTANT_SCOPE: indexing and definitions only; no admissibility asserted
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:domains, bpN:p4:norm, bpN:p4:projections, bpN:p6:iterative, bpN:p6#data, bpN:p6:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:domains | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L176-L176 | V_i and the shrunken domains
EDGE: bpN:p4:norm | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L176-L176 | eps_i=¦f_i¦_{V_i}
EDGE: bpN:p4:projections | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L176-L176 | g_i uses P_Lambda T_K f_i
EDGE: bpN:p6:iterative | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L176-L176 | specifies the output of an admissible step, without claiming its hypotheses
EDGE: bpN:p6#data | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L176-L176 | abar and kappa are the Part-6 normalization data, used in the opening identities
EDGE: bpN:p6:setting | blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L176-L176 | the inherited Normal Form data fixes h and the resonant setting for H_i=h+g_{i-1}+f_i
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-N-d
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section/construction data used without references throughout the normal-form proof; separated from the parent to avoid a parent/step cycle.
```

## Suspected blueprint defects

- Part 6 L43 cites “Lemma hessian-convert” for the max-norm operator conclusion on arbitrary V_rD. Part 1 L112–118 has different domain premises and a Euclidean conclusion. The routine row-sum estimate proves the displayed implication, but that citation does not supply it as stated. This is the citation mismatch behind the node FAIL above.

- Part 6 L186 writes “κ≥12 ln2 N>8N” before separating N=0. The strict second inequality is false for N=0. Read it only in the later N≥1 branch, or use a non-strict inequality before the split. The record faithfully exposes the source calculation; this is not an additional topology FAIL.

## Validation

Source pins match. Every initially PROPOSED node and coverage item appears once in its respective audit table. Every FAIL has one complete replacement block; replacements change only the identified failing fields. Review-application parser `--dry-run`: 3 replaced, 0 added, 0 coverage items, 0 unresolved FAILs. Independent row/block checks PASS: exact PROPOSED-record inventory, one block per FAIL, and only the permitted failing fields changed. `git diff --check` on the two review paths produced no output (exit 0). No packets, SPEC, manifests or Lean files were edited.
