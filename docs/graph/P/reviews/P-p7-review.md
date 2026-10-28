# P-p7 topology review

Reviewer: `sol-review-P-i`. Marker: `rev-P-i`. Verdict: **FAIL**.

Snapshot: initial HEAD `80b3da9fe0467f3cd18537c057bab0971bb1aac8`. Read REVIEW-BRIEF and SPEC including the writer ruling in full; read all 295 raw Part 7 lines, all 49 node blocks, all 87 coverage items, the cited Part 0/1/6 and I/K source statements, and the owning-I exclusions. This is source topology, not Lean proof status. No implementation/provider Lean, Lean execution, or state-changing git was used.

## Findings

F1: several steps promote derived proof ingredients to hypotheses; po-bij even assumes its bijectivity/diffeomorphism conclusion. Restore the enclosing mathematical premises and obtain prior facts through DEPS.

F2: missing direct package/definition uses include the positive mass/strength and physical-length conventions, product data, exterior calculus in the pull-back calculations, and the decoupling substituted into pc-share. Frozen tags in kepler-data/poincare-def are comparisons, not definitions in terms of those exports: keep the deleted d25 back-edges absent.

F3: P7 L158 offers two scalar circular derivations. Model them as routes beneath a scalar circular step. The separate circular LRL calculation at L159 still directly consumes po-circ.

F4: same-chart is outside root closure: no packet consumes it and P14a L339 is Deviations prose, not a mathematical use. Retain d25: P14a L162-L168 genuinely recalls its physical element identities, consumed at L195, even though the incomplete P14a2 packet currently omits that edge. A separate cross-slice repair is supplied below.

F5: restore weakened/underspecified source fields: the complex Jacobian bound, rescaled general-strength LRL expression and inverse, product Hamilton equations, model quantifiers and the tube parameter order.

F6: explicitly expose two source-contract attachments: pc-share cites a C-infinity result as real analyticity; ho-hol cites a global-strip real-restriction lemma on a bounded complex neighbourhood. The needed elementary facts may be true; their exact cited contracts do not supply those uses. Replacements mark SOURCE_GAP without adding either fact as a premise. A faithfully exposed gap may pass a later topology review.

## Track-I ownership judgment

**All three candidates are genuine uses.** Scaling is used at P7 L64 (energy and mass dictionary); means at L88 (all three mean values); circular at L76/L88 (the endpoint G=L) and as an offered derivation at L158. Read the literal I statements at L311-L318, L290-L296, L303-L306. The applications use positive m,kappa, L=Lambda/m>0 and distinguish G<L from the separately supplied G=L endpoint. They are not provenance pointers.

The published I coverage EXCLUDES all three as outside I root closure; the P-imports placeholders still have TODO source fields. Under SPEC, the writer must promote them to P-owned extracted/reviewed records in P-xown, pin their I source/proofs, and retarget consumers consistently. Do not prune the actual uses or interpret placeholder imports as certified inputs. This review judges P-p7 consumption, not those unfinished writer-owned records.

The writer exclusions of average, av-cov, e-cov and the deferred lattice unit are upheld. Part 14b calls its average/d25 references comparisons; Parts 1/12 mention lattice to explain why full-lattice transport does not apply to the Cartesian cylinder. The av-mean label belongs to the excluded average proof.

## Node verdicts

All spans below are in Part 7. Every existing statement/proof/EDGE span and each added use site was reread. P-p7 has no frozen anchor nodes; its frozen tags refer to definition anchors owned by P-p0/P-p14b.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p7:e-ift | PASS | L37-L38 | Statement, direct uses and locators agree. |
| bpP:p7:e-dense | PASS | L42-L42 | Statement, direct uses and locators agree. |
| bpP:p7:e-comp | PASS | L44-L44 | Statement, direct uses and locators agree. |
| bpP:p7:kepler-data | PASS | L49-L58, L49-L49, L54-L54 | Statement, direct uses and locators agree. |
| bpP:p7:range | PASS | L60-L62, L63-L67, L64-L64, L65-L65, L61-L61 | Statement, direct uses and locators agree. |
| stepP:p7:rg-scale | FAIL | L64-L64 | Missing direct input bpP:p7:conv#data (L64). |
| stepP:p7:rg-lagrange | FAIL | L65-L66, L65-L65 | Derived results are listed as hypotheses; restore the enclosing source premises. |
| bpP:p7:kepler | PASS | L69-L81, L82-L90, L85-L85, L86-L86, L87-L87, L88-L88, L89-L89, L70-L70, L74-L74, L76-L76, L83-L83 | Statement, direct uses and locators agree. |
| stepP:p7:ke-chart | FAIL | L85-L85 | Derived results are listed as hypotheses; restore the enclosing source premises. Wrong quantifier carrier (arbitrary target points). Missing direct input bpP:p7:conv#data (L85). |
| stepP:p7:ke-form | FAIL | L86-L86 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:conv#data (L86). Missing direct input I:bpI:p7:x-forms (L86). |
| stepP:p7:ke-b | FAIL | L87-L87 | Missing direct input bpP:p7:conv#data (L87). |
| stepP:p7:ke-c | FAIL | L88-L88 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:conv#data (L88). |
| stepP:p7:ke-d | FAIL | L89-L89 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:conv#data (L89). |
| bpP:p7:regular-kepler | FAIL | L99-L108, L109-L115, L110-L110, L111-L111, L112-L112, L113-L113, L114-L114, L105-L105 | Missing direct input bpP:p7:conv#data (L100). Restore the stated quantitative complex Jacobian bound and clause (c) binders. |
| stepP:p7:rk-mono | FAIL | L110-L110 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:conv#data (L110). |
| stepP:p7:rk-an | FAIL | L111-L111 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:conv#data (L111). |
| stepP:p7:rk-contr | PASS | L112-L112 | Statement, direct uses and locators agree. |
| stepP:p7:rk-hol | FAIL | L113-L113 | Derived results are listed as hypotheses; restore the enclosing source premises. |
| stepP:p7:rk-rel | FAIL | L114-L114 | Missing direct input bpP:p7:conv#data (L114). |
| bpP:p7:poincare-def | PASS | L119-L129, L122-L122, L120-L120 | Statement, direct uses and locators agree. |
| bpP:p7:o-facts | FAIL | L131-L133, L134-L136, L131-L131, L132-L132 | Missing direct input bpP:p7:conv#data (L132). |
| bpP:p7:poincare | FAIL | L138-L148, L149-L164, L150-L150, L151-L151, L156-L156, L157-L157, L158-L158, L160-L160, L163-L163, L139-L139, L143-L143, L144-L144, L146-L146 | Record the general-strength rescaling of the LRL vector and the asserted inverse. |
| stepP:p7:po-an | FAIL | L150-L150 | Derived results are listed as hypotheses; restore the enclosing source premises. |
| stepP:p7:po-del | FAIL | L151-L155, L151-L151, L153-L153, L155-L155 | Missing direct input bpP:p7:conv#data (L151). |
| stepP:p7:po-symp | FAIL | L156-L156 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input I:bpI:p7:x-forms (L156). Missing direct input bpP:p7:poincare-def (L156). |
| stepP:p7:po-dense | FAIL | L157-L157 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:poincare-def (L157). |
| stepP:p7:po-el | FAIL | L158-L159, L158-L158, L159-L159 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:conv#data (L158). The two scalar circular derivations are alternatives, not conjunctive prerequisites. |
| stepP:p7:po-bij | FAIL | L160-L162, L160-L160, L161-L161, L162-L162 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:conv#data (L160). |
| stepP:p7:po-circ | FAIL | L163-L163 | Missing direct input bpP:p7:conv#data (L163). |
| bpP:p7:holomorphic | PASS | L166-L170, L171-L174, L172-L172, L173-L173, L169-L169 | Statement, direct uses and locators agree. |
| stepP:p7:ho-size | PASS | L172-L172 | Statement, direct uses and locators agree. |
| stepP:p7:ho-hol | FAIL | L173-L173 | Derived results are listed as hypotheses; restore the enclosing source premises. The K citation has a global strip hypothesis, not the open-neighbourhood domain used here. |
| bpP:p7:product-def | PASS | L190-L192, L191-L191, L190-L190 | Statement, direct uses and locators agree. |
| bpP:p7:product-chart | FAIL | L194-L203, L204-L209, L205-L205, L206-L206, L207-L207, L208-L208, L196-L196, L197-L197, L198-L198, L200-L200 | Clause (d) names the equations without recording them or their domain. |
| stepP:p7:pc-prod | FAIL | L205-L205 | Derived results are listed as hypotheses; restore the enclosing source premises. |
| stepP:p7:pc-dec | FAIL | L206-L206 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:sec-product#data (L206). |
| stepP:p7:pc-share | FAIL | L207-L207 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:sec-product#data (L207). Missing direct input bpP:p7:product-def (L207). Missing direct input stepP:p7:pc-dec (L207). The cited C-infinity result does not supply the claimed analytic bridge. |
| stepP:p7:pc-eq | FAIL | L208-L208 | Derived results are listed as hypotheses; restore the enclosing source premises. An arbitrary G does not obey the claimed model equations. |
| bpP:p7:same-chart | FAIL | L211-L213, L212-L212 | DELETE node: no mathematical consumer; no packet DEPS names it, and the only external citation is P14a L339 in Deviations. |
| bpP:p7:tube | FAIL | L215-L217, L218-L221, L219-L219, L220-L220, L216-L216 | Missing direct input bpP:p7:sec-product#data (L216). Conclusion parameters delta and eta are incorrectly outer hypotheses. |
| stepP:p7:tu-circ | FAIL | L219-L219 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:sec-product#data (L219). |
| stepP:p7:tu-cont | FAIL | L220-L220 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:sec-product#data (L220). |
| bpP:p7:d25 | PASS | L247-L258, L259-L264, L260-L260, L261-L261, L262-L262, L263-L263, L250-L250, L251-L251, L253-L253, L248-L248, L252-L252, L255-L255 | Statement, direct uses and locators agree. |
| stepP:p7:d25-ab | FAIL | L260-L260 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:product-def (L260). |
| stepP:p7:d25-c | FAIL | L261-L261 | Missing direct input bpP:p7:product-def (L261). Missing direct input bpP:p14:sb-defs#ellipsePhase (L261). |
| stepP:p7:d25-d | FAIL | L262-L262 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p0:d25-cross#planeCross (L262). |
| stepP:p7:d25-e | FAIL | L263-L263 | Derived results are listed as hypotheses; restore the enclosing source premises. Missing direct input bpP:p7:product-def (L263). |
| bpP:p7:conv#data | FAIL | L27-L33, L27-L27, L28-L28, L32-L32, L33-L33 | Missing direct input bpP:p0:oscaction#oscillatorAction (L29). Missing direct input bpP:p14:sb-conv#quarterTurn (L32). |
| bpP:p7:sec-product#data | PASS | L188-L188 | Statement, direct uses and locators agree. |

13 existing nodes PASS; 36 FAIL, including one deletion. Three new step/route records require a different reviewer.

## Coverage failures

| ID | Verdict | Evidence / repair |
|---|---|---|
| bpP:p7:same-chart | FAIL | DELETE node: no mathematical consumer; no packet DEPS names it, and the only external citation is P14a L339 in Deviations. |
| stepP:p7:av-cov | FAIL | The Means proofstep is now labelled av-mean; its separate inventory entry is missing. |
| stepP:p7:av-mean | FAIL | Missing inventory record for the labelled Means proofstep at L273; exclude with average under the writer ruling. |

all other coverage items PASS

The sourcegap-L183 mapping to po-an, po-dense and po-bij correctly represents the blueprint repair of the pinned-paper gap.

## P-p7 replacements

Delete the entire NODE block bpP:p7:same-chart; its replacement ITEM below records the exclusion. ITEM replacement does not delete a NODE automatically, so the writer must perform that explicit deletion. Other replacements preserve all fields not identified as failing.

```text
NODE: stepP:p7:rg-scale
KIND: step
TITLE: Scaling to strength one
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-scale@L64-L64
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-scale@L64-L64
CONTRACT_ID: stepP:p7:rg-scale
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (Q,P)=S_{m,kappa}^{-1}(q,p)=(kappa q,p/(m kappa))
SOURCE_QUANTIFIERS: (q,p) in K_{m,kappa}
SOURCE_CONCLUSION: E_1(Q,P)=E_{m,kappa}(q,p)/(m kappa^2), cr(Q,P)=C/m, L:=Lambda/m=sqrt(-1/(2E_1(Q,P)))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:scaling, bpP:p7:kepler-data, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: I:bpI:p7:scaling | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-scale@L64-L64 | dictionary E_kappa o S_kappa=kappa^2 E_1 and E_{m,kappa}=m E_kappa(q,p/m)
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-scale@L64-L64 | E_{m,kappa}, S_{m,kappa}, Lambda
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-scale@L64-L64 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:rg-lagrange
KIND: step
TITLE: Lagrange identity
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-lagrange@L65-L66
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-lagrange@L65-L66
CONTRACT_ID: stepP:p7:rg-lagrange
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:range; (q,p) in K_{m,kappa}; Q,P,L are scaled variables. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: (q,p) in K_{m,kappa}
SOURCE_CONCLUSION: cr(Q,P)^2<=L^2 with equality iff Q.P=0 and l(Q)=L^2, hence C<=Lambda with equality iff circular
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:rg-scale, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:rg-scale | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-lagrange@L65-L65 | 1/2 l(P)^2=E_1+1/r and L=sqrt(-1/(2E_1))
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-lagrange@L65-L65 | cr and l
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:ke-chart
KIND: step
TITLE: (a) Chart
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-chart@L85-L85
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-chart@L85-L85
CONTRACT_ID: stepP:p7:ke-chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:kepler. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: fixed positive m,kappa; the entire chart on D^m, modulo 2pi in ell and g
SOURCE_CONCLUSION: Q_{m,kappa} is a real-analytic diffeomorphism of (R/2piZ)^2 x {Lambda>C>0} onto K*_{m,kappa}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:rg-scale, I:bpI:p7:chart, I:bpI:p7:elements, bpP:p7:kepler-data, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:rg-scale | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-chart@L85-L85 | E_{m,kappa}=m kappa^2 E_1, cr(q,p)=m cr(Q,P), Lambda=m L
EDGE: I:bpI:p7:chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-chart@L85-L85 | Q^I induces a real-analytic diffeomorphism onto C
EDGE: I:bpI:p7:elements | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-chart@L85-L85 | the region C={E_1<0,cr>0,cr<L} and its elements
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-chart@L85-L85 | K*_{m,kappa}, S_{m,kappa}, Q_{m,kappa}
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-chart@L85-L85 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:ke-form
KIND: step
TITLE: (a) The form
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-form@L86-L86
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-form@L86-L86
CONTRACT_ID: stepP:p7:ke-form
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:kepler. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: (ell,g,Lambda,C) in D^m
SOURCE_CONCLUSION: Q_{m,kappa}^*(sum dp^dq)=dLambda^dell+dC^dg
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:symplectic, bpP:p7:kepler-data, bpP:p7:conv#data, I:bpI:p7:x-forms
ROUTES: -
ROUTE_FOR: -
EDGE: I:bpI:p7:symplectic | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-form@L86-L86 | (Q^I)^*(sum dq^dp)=dell^dL+dg^dG
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-form@L86-L86 | S_{m,kappa}
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-form@L86-L86 | uses the positive mass/strength, physical-length or rotation conventions of the package
EDGE: I:bpI:p7:x-forms | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-form@L86-L86 | pull-back, composition and exterior-form calculus used in this calculation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:ke-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-b@L87-L87
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-b@L87-L87
CONTRACT_ID: stepP:p7:ke-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (Q,P)=Q^I(ell,g,L,G), (q,p)=S_{m,kappa}(Q,P), L=Lambda/m, G=C/m
SOURCE_QUANTIFIERS: (ell,g,Lambda,C) in D^m
SOURCE_CONCLUSION: l(q)=a(1-e cos u), q=a((cos u-e)e_g+sqrt(1-e^2) sin u J_0 e_g), cr=C, E=-kappa^2m^3/(2Lambda^2), a=Lambda^2/(m^2 kappa) agrees with Definition kepler-data
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:orbit-identities, I:bpI:p7:orbit-maps, stepP:p7:rg-scale, bpP:p7:kepler-data, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: I:bpI:p7:orbit-identities | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-b@L87-L87 | l(Q)=L^2(1-e cos u), E_1=-1/(2L^2), cr(Q,P)=G
EDGE: I:bpI:p7:orbit-maps | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-b@L87-L87 | Q=R(g)(X,Y)
EDGE: stepP:p7:rg-scale | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-b@L87-L87 | E_{m,kappa}=m kappa^2 E_1, scaling
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-b@L87-L87 | a, E, S_{m,kappa}
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-b@L87-L87 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:ke-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88
CONTRACT_ID: stepP:p7:ke-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:kepler; clause (c): Lambda>0, 0<C<=Lambda, g in R. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: Lambda>0, 0<C<=Lambda, g
SOURCE_CONCLUSION: mean values 1/a, m^2 kappa/a, a(1+e^2/2) of 1/l(q), l(p)^2, l(q)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:means, I:bpI:p7:circular, stepP:p7:ke-b, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: I:bpI:p7:means | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88 | mean values for strength one
EDGE: I:bpI:p7:circular | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88 | circular case C=Lambda
EDGE: stepP:p7:ke-b | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88 | a=L^2/kappa and the scaling of step (b)
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:ke-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89
CONTRACT_ID: stepP:p7:ke-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:kepler. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: (ell,g,Lambda,C) in D^m
SOURCE_CONCLUSION: E o Q=h_m(Lambda); h_m'=kappa^2m^3/Lambda^3=sqrt(kappa)a^{-3/2}; Hamilton equations of h_m in (ell,g;Lambda,C) are ell'=h_m', g'=Lambda'=C'=0 and transport to the Kepler flow
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:ke-b, stepP:p7:ke-form, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p1:chart-field, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:ke-b | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | value of E o Q
EDGE: stepP:p7:ke-form | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | symplectic with factor one in (ell,g;Lambda,C)
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | Hamilton equations X_H=(d_pH,-d_qH)
EDGE: bpP:p1:chart-field | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | transport of the equations by the chart
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p7:regular-kepler
KIND: proposition
TITLE: Regular Kepler equation
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L99-L108
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L109-L115
CONTRACT_ID: bpP:p7:regular-kepler
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v in R^2, F in R; Phi(F,v)=F-v_0 sin F+v_1 cos F; J(F,v)=d_F Phi=1-v.(cos F,sin F); (b) N_0={(lambda,v) in CxC^2: ¦Im lambda¦<1/4, ¦v_0¦+¦v_1¦<1/4}, S={F in C: ¦Im F¦<=1}
SOURCE_QUANTIFIERS: (a) all real v with l(v)<1 and real lambda; (b) all complex (lambda,v) in N_0; (c) all real lambda,g and e in (0,1), v=e e_g
SOURCE_CONCLUSION: (a) for l(v)<1: J>=1-l(v)>0, F -> Phi(F,v) a real-analytic increasing bijection of R with Phi(F+2pi)=Phi+2pi; unique real F(lambda,v) with Phi=lambda, real analytic, F(lambda+2pi,v)=F+2pi, F(lambda,0)=lambda, d_lambda F=1/J, d_{v_0}F=sin F/J, d_{v_1}F=-cos F/J; (b) unique holomorphic F:N_0->S with Phi(F(lambda,v),v)=lambda, ¦J¦>=1-(1/4)cosh(1)>3/5, same formulas, F real at real points and equal to (a); (c) for v=e e_g, e in (0,1): F(lambda,v)=g+u_R(lambda-g,e)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:rk-mono, stepP:p7:rk-an, stepP:p7:rk-contr, stepP:p7:rk-hol, stepP:p7:rk-rel, I:bpI:p7:kepler-eq, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:rk-mono | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L110-L110 | proof step (a) Monotonicity
EDGE: stepP:p7:rk-an | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L111-L111 | proof step (a) Analyticity
EDGE: stepP:p7:rk-contr | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L112-L112 | proof step (b) Contraction
EDGE: stepP:p7:rk-hol | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L113-L113 | proof step (b) Holomorphy
EDGE: stepP:p7:rk-rel | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L114-L114 | proof step (c) Relation
EDGE: I:bpI:p7:kepler-eq | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L105-L105 | u_R of Kepler equation in (c)
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L100-L100 | uses the physical length or rotation notation fixed by this package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:rk-mono
KIND: step
TITLE: (a) Monotonicity
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-mono@L110-L110
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-mono@L110-L110
CONTRACT_ID: stepP:p7:rk-mono
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:regular-kepler; real v with l(v)<1. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: v with l(v)<1; F in R
SOURCE_CONCLUSION: J>=1-l(v)>0; Phi(.,v) strictly increasing bijection of R; Phi(F+2pi,v)=Phi+2pi; Phi(F,0)=F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-mono@L110-L110 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:rk-an
KIND: step
TITLE: (a) Analyticity
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-an@L111-L111
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-an@L111-L111
CONTRACT_ID: stepP:p7:rk-an
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:regular-kepler; real (lambda,v) with l(v)<1. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: (lambda_0,v_0) with l(v_0)<1
SOURCE_CONCLUSION: F is real analytic; J d_lambda F=1, J d_{v_0}F=sin F, J d_{v_1}F=-cos F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:e-ift, stepP:p7:rk-mono, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:e-ift | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-an@L111-L111 | real-analytic implicit function theorem
EDGE: stepP:p7:rk-mono | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-an@L111-L111 | J>0 and uniqueness of the global solution
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-an@L111-L111 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:rk-hol
KIND: step
TITLE: (b) Holomorphy, real points
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-hol@L113-L113
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-hol@L113-L113
CONTRACT_ID: stepP:p7:rk-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:regular-kepler; complex (lambda,v) in N_0. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: (lambda,v) in N_0
SOURCE_CONCLUSION: F is holomorphic on N_0; real at real points and equal to the real solution; ¦J¦>3/5; derivative formulas hold
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:rk-contr, K:bp:p1:ext-banach, I:bpI:p7:x-hol, I:bpI:p7:x-weier, stepP:p7:rk-mono, stepP:p7:rk-an
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:rk-contr | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-hol@L113-L113 | contraction and fixed point
EDGE: K:bp:p1:ext-banach | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-hol@L113-L113 | uniform geometric convergence of the Banach iteration
EDGE: I:bpI:p7:x-hol | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-hol@L113-L113 | holomorphic calculus
EDGE: I:bpI:p7:x-weier | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-hol@L113-L113 | locally uniform limit of holomorphic functions is holomorphic
EDGE: stepP:p7:rk-mono | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-hol@L113-L113 | uniqueness of the real solution of (a)
EDGE: stepP:p7:rk-an | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-hol@L113-L113 | same implicit differentiation as in (a)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:rk-rel
KIND: step
TITLE: (c) Relation
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-rel@L114-L114
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-rel@L114-L114
CONTRACT_ID: stepP:p7:rk-rel
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v=e e_g, e in (0,1); F'=g+u_R(lambda-g,e)
SOURCE_QUANTIFIERS: lambda, e, g
SOURCE_CONCLUSION: F(lambda,v)=g+u_R(lambda-g,e)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:kepler-eq, stepP:p7:rk-mono, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: I:bpI:p7:kepler-eq | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-rel@L114-L114 | u_R solves u-e sin u=ell
EDGE: stepP:p7:rk-mono | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-rel@L114-L114 | uniqueness of the solution in (a)
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-rel@L114-L114 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p7:o-facts
KIND: lemma
TITLE: Elementary facts on $\mathcal O$
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:o-facts@L131-L133
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:o-facts@L134-L136
CONTRACT_ID: bpP:p7:o-facts
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (lambda,xi,Lambda,eta) in O; (xi,eta)=rho e_g with rho=sqrt(2Gamma) for (xi,eta)!=0
SOURCE_QUANTIFIERS: points of O
SOURCE_CONCLUSION: Gamma>=0, 0<k<=1, l(v)^2=1-k^2 (so l(v)<1 and F defined, real analytic); J>=1-l(v)>0; radicand of v positive; v.c=e cos(F-g), l(v)=e with e=sqrt(1-k^2); for (xi,eta)!=0: v=e e_g and Gamma=Lambda-C with C=Lambda k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:poincare-def, bpP:p7:regular-kepler, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:o-facts@L131-L131 | O, k, v, F, J
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:o-facts@L132-L132 | F defined and real analytic; J>=1-l(v); v.c
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:o-facts@L132-L132 | uses the physical length or rotation notation fixed by this package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p7:poincare
KIND: theorem
TITLE: Poincar\'e chart, analytic through $e=0$
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L138-L148
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L149-L164
CONTRACT_ID: bpP:p7:poincare
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi=Psi_{m,kappa}:O->R^2xR^2 as in Definition poincare-def
SOURCE_QUANTIFIERS: m, kappa; then points of O
SOURCE_CONCLUSION: (a) Psi real analytic on O including xi=eta=0, 2pi-periodic in lambda; (b) for (xi,eta)=rho e_g, rho>0: Psi=Q_{m,kappa}(lambda-g,g,Lambda,Lambda-Gamma), F=g+u; (c) Omega(D Psi u,D Psi w)=Omega(u,w) on all of O, Psi^*Omega_cart=dLambda^dlambda+deta^dxi, Psi a 1-chart on O, D Psi invertible; (d) Psi(O) subset K_{m,kappa}; E=-kappa^2m^3/(2Lambda^2), a=Lambda^2/(m^2 kappa), action Lambda, cr=Lambda-Gamma=Lambda k, kappa^{-1}[(l(p)^2/m^2-kappa/l(q))q-(q.p/m^2)p] = v; (e) Psi:O->K_{m,kappa} onto, Psi(w')=Psi(w) iff (xi,Lambda,eta) equal and lambda'-lambda in 2piZ; induced map O/(2piZ x {0})->K_{m,kappa} a real-analytic diffeomorphism with inverse Lambda=m sqrt(kappa a), Gamma=Lambda-cr(q,p), v the rescaled LRL expression, (xi,eta)=v/s with s=sqrt((1-Gamma/(2Lambda))/Lambda), c=(k Id+vv^T/(1+k))^{-1}(q/a+v), F=arg c and lambda=Phi(F,v) modulo 2pi; (f) at xi=eta=0: v=0, k=1, F=lambda, q=a(cos lambda,sin lambda), p=m sqrt(kappa/a)(-sin lambda,cos lambda), the circular point for Lambda=m sqrt(kappa a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-an, stepP:p7:po-del, stepP:p7:po-symp, stepP:p7:po-dense, stepP:p7:po-el, stepP:p7:po-bij, stepP:p7:po-circ, bpP:p7:poincare-def, bpP:p1:chart, bpP:p7:kepler-data, bpP:p0:circular#circularPoint, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:po-an | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L150-L150 | proof step (a)
EDGE: stepP:p7:po-del | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L151-L151 | proof step (b) Delaunay
EDGE: stepP:p7:po-symp | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L156-L156 | proof step (c) on Gamma>0
EDGE: stepP:p7:po-dense | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L157-L157 | proof step (c) all of O
EDGE: stepP:p7:po-el | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L158-L158 | proof step (d)
EDGE: stepP:p7:po-bij | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L160-L160 | proof step (e)
EDGE: stepP:p7:po-circ | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L163-L163 | proof step (f)
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L139-L139 | Psi
EDGE: bpP:p1:chart | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L143-L143 | 1-chart in the sense of Definition chart
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L144-L144 | K_{m,kappa}, E, a, action, Q_{m,kappa}
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L146-L146 | (f): the circular point
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L143-L143 | Omega_cart, Omega_chart
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:po-an
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150
CONTRACT_ID: stepP:p7:po-an
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:poincare. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: points of O
SOURCE_CONCLUSION: Psi real analytic on O including xi=eta=0 and 2pi-periodic in lambda
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:o-facts, bpP:p7:regular-kepler, bpP:p7:poincare-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:o-facts | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150 | positive radicand, l(v)<1, Lambda J>0
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150 | F real analytic and F(lambda+2pi,v)=F+2pi
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150 | q,p as rational expressions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:po-del
KIND: step
TITLE: (b) Delaunay on $\Gamma>0$
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L155
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L155
CONTRACT_ID: stepP:p7:po-del
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (xi,eta)=rho e_g, rho>0; l=lambda-g, C=Lambda-Gamma=Lambda k, L=Lambda/m, G=C/m
SOURCE_QUANTIFIERS: lambda, g, Lambda, rho>0
SOURCE_CONCLUSION: Psi(lambda,xi,Lambda,eta)=Q_{m,kappa}(lambda-g,g,Lambda,Lambda-Gamma), with F=g+u, u=u_R(lambda-g,e)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:o-facts, bpP:p7:regular-kepler, bpP:p7:kepler, I:bpI:p7:orbit-maps, bpP:p7:poincare-def, bpP:p7:kepler-data, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:o-facts | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L151 | v=e e_g, e=sqrt(1-k^2)
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L151 | (c): F=g+u_R
EDGE: bpP:p7:kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L153-L153 | (b): position of the Kepler orbit
EDGE: I:bpI:p7:orbit-maps | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L155-L155 | P=R(g)(-sin u,k cos u)/(L J)
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L151 | q, p formulas
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L155-L155 | S_{m,kappa}, Q_{m,kappa}
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L151 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:po-symp
KIND: step
TITLE: (c) Symplecticity on $\{\Gamma>0\}$
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-symp@L156-L156
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-symp@L156-L156
CONTRACT_ID: stepP:p7:po-symp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:poincare; w in O with Gamma>0; a local argument branch is constructed. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: points of A
SOURCE_CONCLUSION: Psi^*Omega_cart=dLambda^dlambda+deta^dxi on A
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-del, bpP:p7:kepler, bpP:p7:conv#data, I:bpI:p7:x-forms, bpP:p7:poincare-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:po-del | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-symp@L156-L156 | Psi=Q_{m,kappa} o T on A
EDGE: bpP:p7:kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-symp@L156-L156 | (a): Q^*(sum dp^dq)=dLambda^dell+dC^dg
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-symp@L156-L156 | Omega_cart, d eta^d xi
EDGE: I:bpI:p7:x-forms | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-symp@L156-L156 | pull-back, composition and exterior-form calculus used in this calculation
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-symp@L156-L156 | uses the domain O and Gamma=(xi^2+eta^2)/2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:po-dense
KIND: step
TITLE: (c) All of $\mathcal O$
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157
CONTRACT_ID: stepP:p7:po-dense
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:poincare. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: points of O
SOURCE_CONCLUSION: D Psi^T M_0 D Psi=M_0 on all of O, i.e. Psi is a 1-chart on O and D Psi is invertible
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-symp, stepP:p7:po-an, I:bpI:p7:x-forms, bpP:p1:omega-algebra, bpP:p7:e-dense, bpP:p1:chart, bpP:p7:conv#data, bpP:p7:poincare-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:po-symp | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | identity on the dense set A
EDGE: stepP:p7:po-an | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | Psi is C^1 (analytic) on O
EDGE: I:bpI:p7:x-forms | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | exterior calculus: form identity iff matrix identity
EDGE: bpP:p1:omega-algebra | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | (b) invertibility and (c) form identity for the linear map
EDGE: bpP:p7:e-dense | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | continuous identity on a dense subset
EDGE: bpP:p1:chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | chart property with c=1
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | frozen order (lambda,xi;Lambda,eta)
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | uses the domain O and Gamma=(xi^2+eta^2)/2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:po-el
KIND: step
TITLE: (d) Elements
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L159
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L159
CONTRACT_ID: stepP:p7:po-el
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:poincare. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: points of O
SOURCE_CONCLUSION: Psi(O) subset K_{m,kappa}; E=-kappa^2m^3/(2Lambda^2); a=Lambda^2/(m^2 kappa); action Lambda; cr=Lambda k; LRL vector=v
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-del, bpP:p7:kepler, stepP:p7:ke-b, stepP:p7:po-el#circular, I:bpI:p7:orbit-identities, stepP:p7:po-circ, bpP:p7:kepler-data, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:po-del | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | Psi=Q_{m,kappa} o (...) on A
EDGE: bpP:p7:kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | (b): l(q)=a(1-e cos u), E, cr
EDGE: stepP:p7:ke-b | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | scaling S_{m,kappa} used at the circular points
EDGE: stepP:p7:po-el#circular | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | scalar circular identities from either explicitly offered derivation
EDGE: I:bpI:p7:orbit-identities | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | orbit identities for P^2, 1/l(Q), Q.P in the orbit frame
EDGE: stepP:p7:po-circ | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L159-L159 | values at xi=eta=0
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | K_{m,kappa}, a, action
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:po-bij
KIND: step
TITLE: (e) Bijectivity
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L162
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L162
CONTRACT_ID: stepP:p7:po-bij
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:poincare; w,wprime in O for injectivity; target (q,p) in K for surjectivity. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: w,w' in O; (q,p) in K_{m,kappa}
SOURCE_CONCLUSION: Psi:O->K_{m,kappa} onto; Psi(w')=Psi(w) iff (xi,Lambda,eta) equal and lambda'-lambda in 2piZ; quotient diffeomorphism with the inverse formulas
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-el, stepP:p7:po-circ, stepP:p7:po-del, bpP:p7:kepler, I:bpI:p7:chart, bpP:p7:range, stepP:p7:rg-scale, stepP:p7:rg-lagrange, stepP:p7:po-dense, stepP:p7:po-an, bpP:p7:e-ift, bpP:p7:o-facts, bpP:p7:regular-kepler, bpP:p7:kepler-data, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:po-el | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | Lambda, Gamma are functions of (q,p) via (d)
EDGE: stepP:p7:po-circ | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | Psi at Gamma=0 by (f)
EDGE: stepP:p7:po-del | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | (ell,g) as in (b)
EDGE: bpP:p7:kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | (a) injectivity transported by Q_{m,kappa}
EDGE: I:bpI:p7:chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | injectivity modulo 2pi of Q^I
EDGE: bpP:p7:range | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L161-L161 | Gamma in [0,Lambda)
EDGE: stepP:p7:rg-scale | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L161-L161 | scaling to strength one
EDGE: stepP:p7:rg-lagrange | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L161-L161 | equality case of the Lagrange identity
EDGE: stepP:p7:po-dense | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L162-L162 | D Psi invertible by (c)
EDGE: stepP:p7:po-an | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L162-L162 | Psi is real analytic
EDGE: bpP:p7:e-ift | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L162-L162 | bijective analytic local diffeomorphism is a diffeomorphism
EDGE: bpP:p7:o-facts | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | (xi,eta)=rho e_g, Gamma=Lambda-C
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L162-L162 | lambda=Phi(F,v) in the inverse
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L161-L161 | K_{m,kappa}
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:po-circ
KIND: step
TITLE: (f) Circular points
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-circ@L163-L163
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-circ@L163-L163
CONTRACT_ID: stepP:p7:po-circ
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Gamma=0
SOURCE_QUANTIFIERS: lambda, Lambda>0
SOURCE_CONCLUSION: v=0, k=1, F=lambda, J=1, q=a(cos lambda,sin lambda), p=m sqrt(kappa/a)J_0 c (the circular point)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:regular-kepler, bpP:p0:circular#circularPoint, bpP:p7:poincare-def, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-circ@L163-L163 | F(lambda,0)=lambda
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-circ@L163-L163 | compare with the circular point
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-circ@L163-L163 | q, p formulas
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-circ@L163-L163 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:ho-hol
KIND: step
TITLE: Holomorphy, reality, periodicity
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173
CONTRACT_ID: stepP:p7:ho-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:holomorphic; Lambda^o>0, points in N(Lambda^o). Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: points of N(Lambda^o)
SOURCE_CONCLUSION: Psi holomorphic, 2pi-periodic in lambda, real at real points with real points in O; D Psi^T M_0 D Psi=M_0 at real points
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:ho-size, I:bpI:p7:x-hol, stepP:p7:po-an, bpP:p7:poincare, K:bp:p1:real-restriction
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:ho-size | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | sizes and holomorphy of the ingredients
EDGE: I:bpI:p7:x-hol | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | holomorphic calculus
EDGE: stepP:p7:po-an | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | periodicity as in Step (a)
EDGE: bpP:p7:poincare | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | (c): the real matrix identity
EDGE: K:bp:p1:real-restriction | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | complex derivative restricts to the real one
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L173 applies real derivative restriction on N(Lambda^o), while K:bp:p1:real-restriction is stated for a function on a full torus strip T_rho. N is bounded in Lambda,xi,eta, so that hypothesis is not supplied. The needed local open-domain restriction fact is true but is not the literal cited theorem: supply its local version or a valid localization, without adding it as an assumed premise. The other holomorphy/reality/periodicity and real symplectic-identity dependencies remain as recorded.
```

```text
NODE: bpP:p7:product-chart
KIND: theorem
TITLE: Product Poincar\'e chart
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L194-L203
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L204-L209
CONTRACT_ID: bpP:p7:product-chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: sec-product#data; Definition product-def
SOURCE_QUANTIFIERS: n, G, m0, m; then w in O_n (mu, eps arbitrary in (c))
SOURCE_CONCLUSION: (a) Psi^(n) is a real-analytic 1-chart on O_n (c=1), O_n and Psi^(n) invariant under ((2pi k,0),0), Psi^(n)(w')=Psi^(n)(w) iff w'=w+((2pi k,0),0), onto K^(n), real-analytic diffeomorphism O_n/{(2pi k,0,0,0)}->K^(n); (b) H_Kep o Psi^(n)=h(Lambda), h independent of lambda,xi,eta and of any coupling, d h/d Lambda_i=nu_i=kappa^2m_i^3/Lambda_i^3, d^2h/d Lambda_i^2=-3kappa^2m_i^3/Lambda_i^4!=0, h analytic on {Lambda_i>0}; (c) H_mov^Psi=h+mu f_mov o Psi, H_fix^Psi=h+eps f_fix o Psi on O_n, hat f real analytic on Psi^{-1}(W) and independent of mu, eps, D Psi X_{H^Psi}=X_H o Psi, orbits transfer; (d) on Psi^{-1}(W): dot lambda_i=nu_i+mu partial_{Lambda_i}hat f_mov, dot Lambda_i=-mu partial_{lambda_i}hat f_mov, dot xi_i=mu partial_{eta_i}hat f_mov, dot eta_i=-mu partial_{xi_i}hat f_mov; replace mu hat f_mov by eps hat f_fix for the fixed model
CONSTANT_SCOPE: none (hat f does not depend on mu, eps)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:pc-prod, stepP:p7:pc-dec, stepP:p7:pc-share, stepP:p7:pc-eq, bpP:p7:product-def, bpP:p7:sec-product#data, bpP:p1:chart, bpP:p6:split, bpP:p6:domain, bpP:p1:chart-field, bpP:p1:chart-orbit, bpP:p0:movham#movingHamiltonian, bpP:p0:fixham#fixedHamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:pc-prod | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L205-L205 | proof step Product structure
EDGE: stepP:p7:pc-dec | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L206-L206 | proof step Decoupling
EDGE: stepP:p7:pc-share | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L207-L207 | proof step Shared chart
EDGE: stepP:p7:pc-eq | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L208-L208 | proof step (d)
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L196-L196 | Psi^(n), O_n, K^(n), h
EDGE: bpP:p7:sec-product#data | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L196-L196 | coordinates w
EDGE: bpP:p1:chart | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L196-L196 | 1-chart (Definition chart, c=1)
EDGE: bpP:p6:split | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L197-L197 | H_Kep, f_mov, f_fix of Lemma split
EDGE: bpP:p6:domain | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L198-L198 | W is open
EDGE: bpP:p1:chart-field | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L200-L200 | D Psi X_{H^Psi}=X_H o Psi
EDGE: bpP:p1:chart-orbit | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L200-L200 | orbits transfer
EDGE: bpP:p0:movham#movingHamiltonian | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L200-L200 | H_mov
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L200-L200 | H_fix
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:pc-prod
KIND: step
TITLE: Product structure
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-prod@L205-L205
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-prod@L205-L205
CONTRACT_ID: stepP:p7:pc-prod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:product-chart. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: w in O_n
SOURCE_CONCLUSION: D Psi^(n) block diagonal and symplectic; analyticity, lattice invariance, bijectivity, diffeomorphism and openness of O_n blockwise
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:poincare, bpP:p7:product-def, bpP:p0:hamsymp#symplecticForm, bpP:p0:body#bodyVector, bpP:p7:sec-product#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:poincare | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-prod@L205-L205 | blockwise (a),(c),(e)
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-prod@L205-L205 | blocks of Psi^(n)
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-prod@L205-L205 | Omega=sum dz_2^dz_1
EDGE: bpP:p0:body#bodyVector | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-prod@L205-L205 | finProdFinEquiv index bookkeeping
EDGE: bpP:p7:sec-product#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-prod@L205-L205 | positions lambda_i,xi_i
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:pc-dec
KIND: step
TITLE: Decoupling
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-dec@L206-L206
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-dec@L206-L206
CONTRACT_ID: stepP:p7:pc-dec
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:product-chart. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: w in O_n
SOURCE_CONCLUSION: H_Kep o Psi^(n)=h(Lambda) and the derivatives of h
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:kepler-part, bpP:p6:split, bpP:p7:poincare, bpP:p7:product-def, bpP:p7:sec-product#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:kepler-part | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-dec@L206-L206 | each summand of H_Kep is E_{m_i,kappa}
EDGE: bpP:p6:split | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-dec@L206-L206 | H_Kep of Lemma split
EDGE: bpP:p7:poincare | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-dec@L206-L206 | (d): E_{m_i,kappa} o Psi=-kappa^2m_i^3/(2Lambda_i^2)
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-dec@L206-L206 | h
EDGE: bpP:p7:sec-product#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-dec@L206-L206 | uses the fixed product data and coordinate/body dictionary
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:pc-share
KIND: step
TITLE: Shared chart
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207
CONTRACT_ID: stepP:p7:pc-share
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:product-chart; mu,eps arbitrary; on O_n for splitting, Psi^{-1}(W) for analytic/field claims. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: w in O_n; mu, eps
SOURCE_CONCLUSION: H^Psi_mov=h+mu f_mov o Psi, H^Psi_fix=h+eps f_fix o Psi; hat f analytic on the open set Psi^{-1}(W) and independent of mu, eps; field statements
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:split, bpP:p6:domain, bpP:p1:ext-comp, stepP:p7:pc-prod, bpP:p1:chart-field, bpP:p1:chart-orbit, bpP:p0:movham#movingHamiltonian, bpP:p0:fixham#fixedHamiltonian, bpP:p7:sec-product#data, bpP:p7:product-def, stepP:p7:pc-dec
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:split | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | H=H_Kep+mu f
EDGE: bpP:p6:domain | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | W open and reduced Hamiltonians smooth on W; the analytic bridge is exposed in NOTE
EDGE: bpP:p1:ext-comp | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | composition of analytic maps is analytic
EDGE: stepP:p7:pc-prod | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | Psi^(n) analytic, continuous
EDGE: bpP:p1:chart-field | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | field statement
EDGE: bpP:p1:chart-orbit | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | orbit statement
EDGE: bpP:p0:movham#movingHamiltonian | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | H_mov
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | H_fix
EDGE: bpP:p7:sec-product#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | uses the fixed product data and coordinate/body dictionary
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | uses Psi^(n), O_n and h
EDGE: stepP:p7:pc-dec | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | substitutes H_Kep composed with Psi^(n)=h into the splitting
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L207 asserts that the proof of bpP:p6:domain also gives real analyticity of f_mov,f_fix on W. Its statement/proof L54-L60 supply C-infinity using smooth square-root/reciprocal facts. A real-analytic positive-root/reciprocal argument for the explicit perturbations is needed before analytic composition; do not assume that missing regularity as a hypothesis. The splitting, openness and smooth field transport remain sourced as recorded.
```

```text
NODE: stepP:p7:pc-eq
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208
CONTRACT_ID: stepP:p7:pc-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:product-chart; the model Hamiltonian H_mov^Psi or H_fix^Psi, on Psi^{-1}(W). Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: fixed section data, arbitrary mu,eps, w in Psi^{-1}(W), i<n; G is H_mov^Psi=h+mu hat f_mov or H_fix^Psi=h+eps hat f_fix
SOURCE_CONCLUSION: Hamilton equations in the chart: lambda_i'=nu_i+d_{Lambda_i}(mu f), Lambda_i'=-mu d_{lambda_i}f, xi_i'=mu d_{eta_i}f, eta_i'=-mu d_{xi_i}f
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:hamsymp#hamiltonianVectorField, stepP:p7:pc-dec, stepP:p7:pc-share, bpP:p7:sec-product#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208 | definition of X_G
EDGE: stepP:p7:pc-dec | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208 | nu_i=d h/d Lambda_i
EDGE: stepP:p7:pc-share | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208 | H^Psi=h+mu hat f
EDGE: bpP:p7:sec-product#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208 | z_1=(lambda,xi), z_2=(Lambda,eta)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p7:tube
KIND: lemma
TITLE: The tube in chart coordinates
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:tube@L215-L217
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:tube@L218-L221
CONTRACT_ID: bpP:p7:tube
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: fixed product data n>=1, G,m0>0, positive m_i, kappa=Gm0; a_i>0 and Lambda_i^*=m_i sqrt(kappa a_i); U_eta denotes the circular tube
SOURCE_QUANTIFIERS: fixed n,G,m0,m,a; for every delta>0 there exists eta_delta>0; for every eta in (0,eta_delta] the inclusion and all preimage bounds hold; the circular identity holds for every phi in R^n
SOURCE_CONCLUSION: U_eta subset K^(n); every w in O_n with Psi^(n)(w) in U_eta satisfies ¦Lambda_i-Lambda_i^*¦<delta and (xi_i^2+eta_i^2)/2<delta for all i; circ(phi)=Psi^(n)((2pi phi,0),(Lambda^*,0))
CONSTANT_SCOPE: eta_delta depends on delta (and on a, m, kappa)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:tu-circ, stepP:p7:tu-cont, bpP:p0:circular#circularPoint, bpP:p0:circular#circularTube, bpP:p7:product-def, bpP:p7:sec-product#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:tu-circ | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:tube@L219-L219 | proof step Circular points
EDGE: stepP:p7:tu-cont | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:tube@L220-L220 | proof step Continuity of the elements
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:tube@L216-L216 | circ(phi)
EDGE: bpP:p0:circular#circularTube | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:tube@L216-L216 | U_eta
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:tube@L216-L216 | O_n, Psi^(n), K^(n)
EDGE: bpP:p7:sec-product#data | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:tube@L216-L216 | uses the product data n,G,m0,m and kappa=Gm0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:tu-circ
KIND: step
TITLE: Circular points
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-circ@L219-L219
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-circ@L219-L219
CONTRACT_ID: stepP:p7:tu-circ
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:tube; a_i>0, Lambda_i^*=m_i sqrt(kappa a_i), phi in R^n. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: phi in R^n
SOURCE_CONCLUSION: Psi^(n)((2pi phi,0),(Lambda^*,0))=circ(phi)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:poincare, bpP:p0:circular#circularPoint, bpP:p7:product-def, bpP:p7:sec-product#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:poincare | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-circ@L219-L219 | (f) circular points
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-circ@L219-L219 | circ(phi)
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-circ@L219-L219 | Psi^(n)
EDGE: bpP:p7:sec-product#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-circ@L219-L219 | uses the fixed product data and coordinate/body dictionary
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:tu-cont
KIND: step
TITLE: Continuity of the elements
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220
CONTRACT_ID: stepP:p7:tu-cont
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:tube; a_i>0, delta>0. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: delta>0
SOURCE_CONCLUSION: there is eta_delta>0 with U_eta subset V_delta subset K^(n) for eta<=eta_delta; preimages have ¦Lambda_i-Lambda_i^*¦<delta and Gamma_i<delta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:poincare, stepP:p7:tu-circ, bpP:p7:e-comp, bpP:p0:circular#circularTube, bpP:p0:circular#circularPoint, bpP:p7:product-def, bpP:p7:kepler-data, bpP:p7:sec-product#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:poincare | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220 | (d): elements of a preimage equal Lambda_i(z), Gamma_i(z)
EDGE: stepP:p7:tu-circ | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220 | T lies in V_delta: Lambda_i=Lambda_i^*, Gamma_i=0
EDGE: bpP:p7:e-comp | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220 | neighbourhood form for compact K inside open V
EDGE: bpP:p0:circular#circularTube | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220 | the neighbourhood set is U_eta
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220 | torus T of circular points
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220 | K^(n)
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220 | E_{m_i,kappa}, cr, Lambda_i(z), Gamma_i(z)
EDGE: bpP:p7:sec-product#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220 | uses the fixed product data and coordinate/body dictionary
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:d25-ab
KIND: step
TITLE: (a),(b)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260
CONTRACT_ID: stepP:p7:d25-ab
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:d25. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: w in O_2; i<2
SOURCE_CONCLUSION: the Lean definitions are Gamma=R(eta,xi), k=1-Gamma/Lambda, v=sqrt((1-Gamma/(2Lambda))/Lambda)(xi,eta), Phi(F,v), J=1-v.(cos F,sin F), a=(Lambda/m)^2; hence (a),(b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:o-facts, bpP:p7:regular-kepler, bpP:p7:poincare-def, bpP:p14:sb-conv#secularGamma, bpP:p14:sb-conv#secularRoot, bpP:p14:sb-conv#secularEccVector, bpP:p14:sb-conv#secularAxis, bpP:p14:sb-defs#longitudeJacobian, bpP:p0:plane#planeDot, bpP:p14:sb-conv#orbitalUnit, bpP:p7:product-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:o-facts | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | k in (0,1], l(v)^2=1-k^2
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | (a): bijection, Jacobian, F analytic
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | v, k, Phi
EDGE: bpP:p14:sb-conv#secularGamma | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | secularGamma
EDGE: bpP:p14:sb-conv#secularRoot | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | secularRoot
EDGE: bpP:p14:sb-conv#secularEccVector | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | secularEccVector
EDGE: bpP:p14:sb-conv#secularAxis | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | secularAxis
EDGE: bpP:p14:sb-defs#longitudeJacobian | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | longitudeJacobian
EDGE: bpP:p0:plane#planeDot | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | planeDot
EDGE: bpP:p14:sb-conv#orbitalUnit | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | orbitalUnit
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | uses the O_2 domain and product-chart notation in the statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:d25-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261
CONTRACT_ID: stepP:p7:d25-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ellipsePosition=a(kc-v+(v.c)/(1+k)v), ellipseMomentum=m^2/(Lambda J)(J_0c-(v.c)/(1+k)J_0v), c=orbitalUnit F
SOURCE_QUANTIFIERS: w in O_2; i<2; F in R
SOURCE_CONCLUSION: the Lean ellipse position and momentum are the q,p of Definition poincare-def with kappa=1 and arbitrary F; at F=F_i(w) they equal Psi; for arbitrary F they equal Psi(Phi(F,v_i),xi_i,Lambda_i,eta_i)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:poincare-def, stepP:p7:d25-ab, bpP:p7:regular-kepler, bpP:p14:sb-defs#ellipsePosition, bpP:p14:sb-defs#ellipseMomentum, bpP:p14:sb-defs#longitudeJacobian, bpP:p14:sb-conv#orbitalUnit, bpP:p7:product-def, bpP:p14:sb-defs#ellipsePhase
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261 | q, p formulas
EDGE: stepP:p7:d25-ab | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261 | identification of v, k, J, a
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261 | uniqueness F=F(lambda',v_i)
EDGE: bpP:p14:sb-defs#ellipsePosition | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261 | ellipsePosition
EDGE: bpP:p14:sb-defs#ellipseMomentum | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261 | ellipseMomentum
EDGE: bpP:p14:sb-defs#longitudeJacobian | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261 | longitudeJacobian
EDGE: bpP:p14:sb-conv#orbitalUnit | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261 | orbitalUnit
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261 | uses the O_2 domain and product-chart notation in the statement
EDGE: bpP:p14:sb-defs#ellipsePhase | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261 | assembles the component identities into the ellipsePhase identity of clause (c)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:d25-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262
CONTRACT_ID: stepP:p7:d25-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:d25; z=Psi^(2)(w) for the forward assertions; ProgradeElliptic(m,z) for the converse. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: w in O_2; i<2; z=Psi^(2)(w)
SOURCE_CONCLUSION: ProgradeElliptic m z with the stated values of keplerEnergy, keplerAxis, keplerAction, planeCross, keplerEccVector; converse and uniqueness modulo lambda->lambda+2pi k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:poincare, bpP:p7:product-chart, stepP:p7:d25-ab, bpP:p0:d25-prograde#ProgradeElliptic, bpP:p0:d25-kepler#keplerEnergy, bpP:p0:d25-kepler#keplerAxis, bpP:p0:d25-kepler#keplerAction, bpP:p0:d25-kepler#keplerEccVector, bpP:p0:plane#planeLength, bpP:p7:product-def, bpP:p0:d25-cross#planeCross
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:poincare | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | (d): Psi(w) in K_{m_i,1}, E, a, action, LRL=v
EDGE: bpP:p7:product-chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | (a): converse and uniqueness
EDGE: stepP:p7:d25-ab | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | Gamma_i, a_i
EDGE: bpP:p0:d25-prograde#ProgradeElliptic | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | ProgradeElliptic
EDGE: bpP:p0:d25-kepler#keplerEnergy | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | keplerEnergy
EDGE: bpP:p0:d25-kepler#keplerAxis | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | keplerAxis
EDGE: bpP:p0:d25-kepler#keplerAction | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | keplerAction
EDGE: bpP:p0:d25-kepler#keplerEccVector | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | keplerEccVector
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | planeLength>0
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | Psi^(2), K^(2)
EDGE: bpP:p0:d25-cross#planeCross | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | the physical angular-momentum identity uses the planar cross product
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepP:p7:d25-e
KIND: step
TITLE: (e)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263
CONTRACT_ID: stepP:p7:d25-e
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:d25; Gamma_i>0. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: w in O_2 with Gamma_i>0
SOURCE_CONCLUSION: (xi_i,eta_i)=rho_i e_{g_i}, F_i=g_i+u_i, lambda_i=ell_i+g_i
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-del, bpP:p7:regular-kepler, bpP:p7:product-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:po-del | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263 | Delaunay correspondence on Gamma>0
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263 | (c): F=g+u_R
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263 | uses the O_2 domain and product-chart notation in the statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpP:p7:conv#data
KIND: definition
TITLE: Conventions of Part 7 (m, kappa, l, angles, Omega, J_0, R(g), e_g, cr, Q^I)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L27-L33
PROOF_SOURCE: -
CONTRACT_ID: bpP:p7:conv#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m>0 the planet mass; kappa=G m0>0 the strength of the centre; l the planar length (Definition bpP:p0:plane); angles lambda, ell, g, F in radians (period 2pi); phase point z=(z_1,z_2) positions first, Omega=sum dz_{2,i}^dz_{1,i} (Definition bpP:p0:hamsymp); Poincare coordinates (lambda,xi;Lambda,eta) with positions (lambda,xi) and momenta (Lambda,eta)
SOURCE_QUANTIFIERS: m, kappa (fixed in the part; kappa=G m0 with G, m0 the data of Part 6); then points of R^2 x R^2
SOURCE_CONCLUSION: defines J_0 v=(-v_1,v_0) (quarterTurn), R(g) the rotation by g, e_g=(cos g,sin g), cr(q,p)=q_0p_1-q_1p_0 (planeCross), Omega_chart=dLambda^dlambda+deta^dxi, Gamma=(xi^2+eta^2)/2, and the track-I Delaunay map Q^I(ell,g,L,G) (strength one, unit mass) with (Q^I)^*(sum dq_i^dp_i)=dell^dL+dg^dG
CONSTANT_SCOPE: m and kappa are fixed positive data; kappa=G m0 depends on G, m0 only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:plane#planeLength, bpP:p0:hamsymp#symplecticForm, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p0:d25-cross#planeCross, I:bpI:p7:orbit-maps, I:bpI:p7:symplectic, bpP:p0:oscaction#oscillatorAction, bpP:p14:sb-conv#quarterTurn
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L27-L27 | l is planeLength
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L28-L28 | frozen sign convention Omega=sum dz_2^dz_1
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L28-L28 | positions first convention of X_H
EDGE: bpP:p0:d25-cross#planeCross | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L32-L32 | cr is planeCross
EDGE: I:bpI:p7:orbit-maps | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L33-L33 | Delaunay map Q^I
EDGE: I:bpI:p7:symplectic | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L33-L33 | (Q^I)^*(sum dq^dp)=dell^dL+dg^dG
EDGE: bpP:p0:oscaction#oscillatorAction | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L29-L29 | Gamma=R(eta,xi) explicitly identifies the oscillator action
EDGE: bpP:p14:sb-conv#quarterTurn | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L32-L32 | J_0 v=(-v_1,v_0) explicitly identifies quarterTurn
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: created from p7:prose-L27-L33 (SPEC section data); consumers: nearly every statement of Part 7
```

```text
NODE: stepP:p7:po-el#circular
KIND: step
TITLE: Scalar circular endpoint identities
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
CONTRACT_ID: stepP:p7:po-el#circular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m,kappa>0; w=(lambda,0,Lambda,0) in O; q,p=Psi_{m,kappa}(w)
SOURCE_QUANTIFIERS: fixed m,kappa>0; every real lambda and Lambda>0
SOURCE_CONCLUSION: q!=0, E_{m,kappa}(q,p)=-kappa^2 m^3/(2Lambda^2), cr(q,p)=Lambda>0, a(q,p)=Lambda^2/(m^2 kappa), and the physical action is Lambda
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: stepP:p7:po-el#circular-scaled, stepP:p7:po-el#circular-direct
ROUTE_FOR: -
EDGE: stepP:p7:po-el#circular-scaled | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | alternative scalar circular derivation explicitly offered at this line
EDGE: stepP:p7:po-el#circular-direct | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | alternative scalar circular derivation explicitly offered at this line
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: covers only the scalar circular identities; the parent separately treats the LRL identity at L158-L159
```

```text
NODE: stepP:p7:po-el#circular-scaled
KIND: route
TITLE: Circular scalars from the scaled track-I endpoint
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
CONTRACT_ID: stepP:p7:po-el#circular-scaled
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m,kappa>0; w=(lambda,0,Lambda,0) in O; q,p=Psi_{m,kappa}(w)
SOURCE_QUANTIFIERS: fixed m,kappa>0; every real lambda and Lambda>0
SOURCE_CONCLUSION: q!=0, E_{m,kappa}(q,p)=-kappa^2 m^3/(2Lambda^2), cr(q,p)=Lambda>0, a(q,p)=Lambda^2/(m^2 kappa), and the physical action is Lambda
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: I:bpI:p7:circular, bpP:p7:kepler-data, bpP:p7:poincare-def, bpP:p7:regular-kepler, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: stepP:p7:po-el#circular
EDGE: I:bpI:p7:circular | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | e=0 scalar endpoint identities
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | the defining scale S_m,kappa and E,C,a,action formulas transport the circular endpoint by direct algebra
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | chart formulas at the circular point
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | F(lambda,0)=lambda
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | positive mass/strength and physical element conventions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: covers only the scalar circular identities; the parent separately treats the LRL identity at L158-L159
```

```text
NODE: stepP:p7:po-el#circular-direct
KIND: route
TITLE: Circular scalars checked directly from clause (f)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
CONTRACT_ID: stepP:p7:po-el#circular-direct
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m,kappa>0; w=(lambda,0,Lambda,0) in O; q,p=Psi_{m,kappa}(w)
SOURCE_QUANTIFIERS: fixed m,kappa>0; every real lambda and Lambda>0
SOURCE_CONCLUSION: q!=0, E_{m,kappa}(q,p)=-kappa^2 m^3/(2Lambda^2), cr(q,p)=Lambda>0, a(q,p)=Lambda^2/(m^2 kappa), and the physical action is Lambda
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-circ, bpP:p7:kepler-data, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: stepP:p7:po-el#circular
EDGE: stepP:p7:po-circ | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | explicit circular q,p formulas
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | definitions of E,C,a and action
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | positive mass/strength and physical element conventions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: covers only the scalar circular identities; the parent separately treats the LRL identity at L158-L159
```

```text
ITEM: bpP:p7:same-chart
KIND: claim
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:same-chart@L211-L213
DISPOSITION: EXCLUDED
REASON: outside every root closure of track P. Check: no packet DEPS consumes this remark; its only citation from another corpus part is P14a L339 in Deviations. Other occurrences are self/provenance/forward-reference prose. The mathematical splitting/shared-chart facts are carried by Part 6 and product-chart.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
```

```text
ITEM: stepP:p7:av-cov
KIND: proof-region
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:av-cov@L273-L273
DISPOSITION: EXCLUDED
REASON: proof step of bpP:p7:average, excluded as outside every root closure under the writer ruling. The separately labelled stepP:p7:av-mean at L273 is also inventoried and excluded with this corollary.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7
REVIEWER: -
```

```text
ITEM: stepP:p7:av-mean
KIND: step
SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:av-mean@L273-L273
DISPOSITION: EXCLUDED
REASON: proof step of bpP:p7:average, outside every root closure under the writer ruling. It derives the same excluded mean-value claims from kepler(c) and the circular endpoint. No corpus proof outside that excluded unit consumes this step.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-i
REVIEWER: -
```

## for slice P-p14a2

D25 is a genuine prerequisite of Ch2: P14a L162 names d25(d), L165 states the element identities, L168 records their blockwise extension, and L195 consumes them. The following replacement only adds that missing dependency/EDGE. Other unfinished fields are preserved verbatim and are not reviewed here.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepP:p14:rd-ecc | FAIL | P14a L162-L168, L195 | Missing d25(d) input supplying the invoked Ch2 identities. |

```text
NODE: stepP:p14:rd-ecc
KIND: step
TITLE: Eccentricity and radii
STATEMENT_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:rd-ecc@L190-L190
PROOF_SOURCE: blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:rd-ecc@L190-L190
CONTRACT_ID: stepP:p14:rd-ecc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p14:elements, bpP:p7:d25
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p14:elements | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:rd-ecc@L190-L190 | cited at this line (step; \ref{bpP:p14:elements})
EDGE: bpP:p7:d25 | blueprint-P/parts/p14a-amd-expsafe.tex#stepP:p14:rd-ecc@L195-L195 | Ch2 invokes the physical eccentricity and axis identities recalled from d25(d) at L162-L165, with the componentwise extension stated at L168
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: mechanical-preextract
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Suspected blueprint defects / exact repairs

1. P7 L207 says “whose proof gives analyticity as well as C-infinity”. P6 L54-L60 states/proves C-infinity using smooth square-root/reciprocal facts; smoothness does not imply analyticity. Supply a real-analytic positive-root/reciprocal proof for the explicit perturbations on W before invoking analytic composition.

2. P7 L173 says “the complex derivative restricts to the real one” with the K real-restriction citation. Its literal hypothesis is holomorphy on T_rho, whereas N(Lambda^circ) is bounded in the action/slow coordinates. Supply the general open-domain real-restriction statement or an explicit valid localization. This is an attachment gap, not a counterexample to the local restriction fact.

3. P7 L243-L245 says the frozen D25 definitions are “stated for n=2” and “The same statement holds for every n componentwise”. Some physical Kepler definitions are already generic in n, but the named secular chart definitions take Phase(2+2) explicitly. Clarify that the physical identities extend blockwise, not that those named two-planet exports themselves have generic-n signatures. P14a L168 states the physical extension actually used.

4. P7 L273 labels the Means step av-mean; the old coverage description calls it unlabelled. The report fixes the inventory. The final source consumer list also names lattice/average as if still consumed; the current writer ruling and actual use sites control graph scope.

The source already records the Fej04r/Fej07e sqrt(2) normalization and plus-sine convention in the frozen phase order. Those remain recorded provenance/deviations. No new pinned-paper erratum was independently verified in this source-topology review.

## Validation and snapshot

The read-only structural checker reports **49 nodes, 245 edges, 87 coverage items, 0 problems**. Independent checks confirm DEPS/EDGE pairing, known IDs, separator format and in-bounds source use lines. The source hash matches CORPUS.sha256. Structural validity does not resolve the semantic failures.

| Input | SHA-256 |
|---|---|
| docs/graph/P/REVIEW-BRIEF.md | `85a08dd77f773f2fb7ca26559b1f01816cf8aa3d721068be0b4eacdd3b68c207` |
| docs/graph/P/SPEC.md | `b5bb2666cee32c3d91f6da9cd1474bfe5448e3d9bc96dab3d684059ac0865025` |
| docs/graph/P/packets/P-p7.nodes.md | `beb6439ce50c266a076a71d0bdd5bdbe28051c12dadf1fb4c409ede02897925b` |
| docs/graph/P/packets/P-p7.coverage.md | `3ccd2b723df7fe4e355a6244a7cf362f7ebf0c26ca9e2f433b3cf9afb05df723` |
| blueprint-P/parts/p7-kepler-poincare.tex | `3a10ddf74067a3c7b54184a190710deaba3019c97d2e0d5e9a3773b889cc26ab` |
| docs/graph/P/packets/P-imports.nodes.md | `af36fac8b2c9f27e9de85c7c2f0d70214885f267b02fd9ec28f812b519da5aa6` |

Only this report was written; no packet, blueprint, SPEC, frozen file, manifest, git state or Lean artifact was modified.

Replacement validation: 35 existing P-p7 blocks, three new route/step blocks, three coverage repairs and one explicit deletion. All immutable identity/source-locator/status fields in existing replacements are preserved. An in-memory application restricted to P-p7 yields 51 nodes with exact dependency/route-to-EDGE pairs and no local cycle. All six recorded input hashes were unchanged at final validation. The foreign P-p14a2 section must be split before running the writer apply helper; its replacement is not part of the P-p7 application.

READY rev-P-i
