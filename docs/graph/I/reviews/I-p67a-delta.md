# I-p67a delta topology review

Reviewer: `sol-delta-I-c`. Marker: `delta-I-c`. Verdict: **FAIL** for the assigned proposed records.

Independence: this session previously reviewed I-p5/I-p8 only. The Part 6/7 slice reviewer was sol-review-I-p67; the earlier delta writers of the six Part 1/3 nodes were sol-delta-I-a and sol-delta-I-b. Read DELTA-BRIEF and REVIEW-BRIEF, repository instructions, PLAN, DECISIONS, SPEC including its last ruling, raw statements/proofs at every proposed locator and EDGE use, cited source inputs and previous findings. This report covers 16 PROPOSED nodes and 55 assigned PROPOSED coverage items. Other reviewed records are context only.

The missing Kepler/section/orbit package edges were added correctly, and conversion now retains the positive converted constants and determinant. However, most replacement SOURCE_HYPOTHESES still name earlier proof steps or derived identities. Restore the enclosing source premises while keeping the result dependencies as proof edges. The removal of the false oi-r premise from oi-gam was right; rotational invariance is also justified inside that computation, not an extra source premise. The one-form identity in sy-ext is an output of sy-compare; invertibility remains derived. ch-reg needs the licensed analytic square-root/restriction inputs to justify the regularity previously assumed. Its full chart proof was re-read through L259.

The retargeted he-sol edge correctly names `bpN:p3:newton-reduction` in I-nown. Its restricted case (raw N Part 3 L443-446) applies for every real mu and every set J; it does not impose the unrelated N-body mass/N>=2 data. W_mu and the total formula extension are the same section data. This review checks that consumer application, not the independent audit of the entire I-nown slice.

## Proposed nodes

Spans below include every EDGE use inside the listed proof unit; file prefixes are the source paths in the packet.

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| stepI:p6:kb-hess | FAIL | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L99 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| stepI:p6:kb-entries | FAIL | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L104 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| stepI:p6:kb-det | FAIL | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L107 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| bpI:p6:conversion | PASS | blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L119-L141; blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L142-L155 | Source contract, direct dependencies, packages and the source use locators agree; the earlier finding is resolved. |
| stepI:p6:nd-concl | FAIL | blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| stepI:p7:he-deriv | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L67 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| stepI:p7:he-sol | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| stepI:p7:ke-c | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L134 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| stepI:p7:oi-gam | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-gam@L197-L198 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| stepI:p7:oi-en | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| stepI:p7:oi-d | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| stepI:p7:sy-compare | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| stepI:p7:sy-ext | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L235 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| stepI:p7:sy-field | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |
| stepI:p7:ch-reg | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | Missing direct bpI:p7:x-hol edge: the positive square-root formula for e extends holomorphically locally on C_0. Missing direct K:bp:p1:holomorphic-analytic edge: restrict the local holomorphic square-root formula to real actions to justify real analyticity of e. |
| stepI:p7:ch-diffeo | FAIL | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | Earlier proof results or an identity being proved are still listed as source hypotheses; retain their proof edges and restore source-local premises. Make the inherited local data and quantifiers explicit, without changing their order. |

## Proposed coverage items

Coverage PASS concerns only the disposition; it does not override a node FAIL with the same ID.

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p6:totality | PASS | blueprint-I/parts/p6-kepler.tex#bpI:p6:totality@L50-L53 | administrative Lean-totality remark: only restates that the determinant formula holds for all real kappa, Omega (already the statement of det-formula) and which Lean lemmas are used; no proof consumes it |
| stepI:p6:kb-hess | PASS | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L99 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p6:kb-entries | PASS | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L104 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p6:kb-det | PASS | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L107 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| bpI:p6:conversion | PASS | blueprint-I/parts/p6-kepler.tex#bpI:p6:conversion@L119-L141 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p6:nd-concl | PASS | blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| bpI:p6:uses | PASS | blueprint-I/parts/p6-kepler.tex#bpI:p6:uses@L165-L168 | administrative 'what is used where' summary of consumers; no proof consumes it |
| heading:bpI:p6 | PASS | blueprint-I/parts/p6-kepler.tex#bpI:p6@L1-L1 | section heading; its results are inventoried separately |
| heading:bpI:p6:sec-det | PASS | blueprint-I/parts/p6-kepler.tex#bpI:p6:sec-det@L11-L11 | section heading; its results are inventoried separately |
| heading:bpI:p6:sec-border | PASS | blueprint-I/parts/p6-kepler.tex#bpI:p6:sec-border@L56-L56 | section heading; its results are inventoried separately |
| heading:bpI:p6:sec-convert | PASS | blueprint-I/parts/p6-kepler.tex#bpI:p6:sec-convert@L110-L110 | section heading; its results are inventoried separately |
| p6:source-L18 | PASS | blueprint-I/parts/p6-kepler.tex#source@L18-L18 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p6:source-L41 | PASS | blueprint-I/parts/p6-kepler.tex#source@L41-L41 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p6:source-L66 | PASS | blueprint-I/parts/p6-kepler.tex#source@L66-L66 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p6:source-L86 | PASS | blueprint-I/parts/p6-kepler.tex#source@L86-L86 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p6:source-L116 | PASS | blueprint-I/parts/p6-kepler.tex#source@L116-L116 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p6:source-L139 | PASS | blueprint-I/parts/p6-kepler.tex#source@L139-L139 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p6:prose-L3-L9 | PASS | blueprint-I/parts/p6-kepler.tex#prose@L3-L9 | outline/introduction of Part 6 (pointers to the lemmas and to consumers); the facts relied on are proved in bpI:p6:kepler, conversion, kep-border and nondeg |
| bpI:p7:x-change | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-change@L41-L41 | outside every root closure; cited by track P: used only by Proposition means (step mv-cv), which no track-I root consumes (checked: no reference from Parts 0-3, 5, 8 or from any root-feeding node of Part 7) |
| bpI:p7:x-banach | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-banach@L42-L42 | alias of K:bp:p1:ext-banach and K:bp:p1:ext-mvt (SPEC alias rule); consumers point at the K nodes |
| stepI:p7:he-deriv | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L67 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:he-sol | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| bpI:p7:newton | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:newton@L72-L80 | outside every root closure: Part 7 L78 says Lemma newton is not used by the frozen statements; its only mention in Part 8 is a comparison remark (bpI:p8:rotating L126, not a proof step of I-R3BP) |
| stepI:p7:nw-rot | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nw-rot@L82-L82 | outside every root closure: Part 7 L78 says Lemma newton is not used by the frozen statements; its only mention in Part 8 is a comparison remark (bpI:p8:rotating L126, not a proof step of I-R3BP) |
| stepI:p7:nw-force | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nw-force@L84-L85 | outside every root closure: Part 7 L78 says Lemma newton is not used by the frozen statements; its only mention in Part 8 is a comparison remark (bpI:p8:rotating L126, not a proof step of I-R3BP) |
| stepI:p7:ke-c | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L134 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| bpI:p7:ke-ift | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:ke-ift@L137-L139 | remark 'Alternative route': a comparison that does not claim to replace the contraction argument (it says the contraction is what the uniform bounds need) and is not a route of kepler-eq; no proof consumes it |
| stepI:p7:oi-gam | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-gam@L197-L198 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:oi-en | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:oi-d | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:sy-compare | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:sy-ext | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L235 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:sy-field | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:ch-reg | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| stepI:p7:ch-diffeo | PASS | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| heading:bpI:p7 | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7@L1-L1 | section heading; its results are inventoried separately |
| heading:bpI:p7:sec-ext | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-ext@L18-L18 | section heading; its results are inventoried separately |
| heading:bpI:p7:sec-ham | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-ham@L46-L46 | section heading; its results are inventoried separately |
| heading:bpI:p7:sec-keq | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-keq@L89-L89 | section heading; its results are inventoried separately |
| heading:bpI:p7:sec-orbits | PASS | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-orbits@L142-L142 | section heading; its results are inventoried separately |
| p7:sourcegap-L14 | PASS | blueprint-I/parts/p7-delaunay.tex#sourcegap@L14-L14 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| p7:sourcegap-L113 | PASS | blueprint-I/parts/p7-delaunay.tex#sourcegap@L113-L113 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| p7:source-L12 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L12-L12 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L56 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L56-L56 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L79 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L79-L79 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L112 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L112-L112 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L155 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L155-L155 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L167 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L167-L167 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L173 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L173-L173 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L189 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L189-L189 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L214 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L214-L214 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:source-L243 | PASS | blueprint-I/parts/p7-delaunay.tex#source@L243-L243 | provenance note (source) for a result proved in the blueprint; nothing unproved is relied on (checked against the proof) |
| p7:prose-L3-L10 | PASS | blueprint-I/parts/p7-delaunay.tex#prose@L3-L10 | introduction of Part 7: outline and list of track-P citations; motivation and pointers only |
| p7:prose-L20-L27 | PASS | blueprint-I/parts/p7-delaunay.tex#prose@L20-L27 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |
| p7:prose-L48-L49 | PASS | blueprint-I/parts/p7-delaunay.tex#prose@L48-L49 | Maps the source unit to its actual consumer/owner; node-field verdicts are separate. |

All assigned coverage items PASS. The excluded newton, means, circular, scaling and x-change units feed no track-I root: I-R3BP uses pointwise orbit identities, near-circular/chart, exact-ham/period-one, transfer and the safe-shell argument; none uses their mean/inertial/general-strength conclusions. The only extra newton mention is the excluded rotating-frame remark in Part 8 L125-127. The I-owned bpN:p3:newton-reduction is a distinct restricted-predicate result, not the excluded bpI:p7:newton. The ke-ift comparison does not offer a replacement for the contraction proof with its uniform bounds. Source-gap notes at L14/L113 map to the blueprint Kepler/chart bridges; provenance and administrative remarks remain excluded.

## Complete replacement blocks

These proposals preserve PROPOSED status and require another reviewer. No packet is edited by this report.

```text
NODE: stepI:p6:kb-hess
KIND: step
TITLE: Derivative of the frequency map
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L99
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L99
CONTRACT_ID: stepI:p6:kb-hess
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: kappa,Omega in R; I in R^2 with I_1>0; h=h_{kappa,Omega} of Definition kep-ham
SOURCE_QUANTIFIERS: For every kappa,Omega in R and every real I with I_1>0
SOURCE_CONCLUSION: D(frequencyMap h)(I) = Dg(I), first row (-3kappa I_1^-4, 0), second row 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p6:kb-grad, bpI:p0:realham#frequencyMap, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p6:kb-grad | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L98 | frequencyMap h = g on the open set V, so derivatives agree
EDGE: bpI:p0:realham#frequencyMap | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L98 | frequencyMap h
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-hess@L98-L99 | h or h~ is the Hamiltonian fixed by the Kepler package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p6:kb-entries
KIND: step
TITLE: Entries of the bordered matrix
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L104
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L104
CONTRACT_ID: stepI:p6:kb-entries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: kappa,Omega in R; I in R^2 with I_1>0; h=h_{kappa,Omega} of Definition kep-ham; epsilon is the fixed bijection Fin 3 equiv Fin 2 plus Unit used in the enclosing statement
SOURCE_QUANTIFIERS: For every kappa,Omega in R and every real I with I_1>0
SOURCE_CONCLUSION: entries of borderedHessian h I: Dg(I) block, border entries g(I)_a, corner 0; these coincide with the entries of K_{kappa,Omega}(I_1); so borderedHessian h I = reindex_eps K_{kappa,Omega}(I_1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:bordered#borderedHessian, stepI:p6:kb-hess, stepI:p6:kb-grad, bpI:p0:keplerborder#keplerBorder, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L101 | definition of the bordered Hessian: block, border and corner entries
EDGE: stepI:p6:kb-hess | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L102-L102 | the Hessian block Dg(I)
EDGE: stepI:p6:kb-grad | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L102-L102 | the border entries g(I)_a
EDGE: bpI:p0:keplerborder#keplerBorder | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L103-L103 | entrywise comparison with keplerBorder at L = I_1
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-entries@L101-L104 | h or h~ is the Hamiltonian fixed by the Kepler package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p6:kb-det
KIND: step
TITLE: Determinant
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L107
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L107
CONTRACT_ID: stepI:p6:kb-det
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: kappa,Omega in R; I in R^2 with I_1>0; h=h_{kappa,Omega} of Definition kep-ham; epsilon is that same index bijection
SOURCE_QUANTIFIERS: For every kappa,Omega in R and every real I with I_1>0
SOURCE_CONCLUSION: det borderedHessian h I = det K_{kappa,Omega}(I_1) = 3 kappa Omega^2 / I_1^4
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p6:kb-entries, bpI:p6:det-formula, bpI:p0:bordered#borderedHessian, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p6:kb-entries | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L106 | borderedHessian h I = reindex K
EDGE: bpI:p6:det-formula | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L107-L107 | value of det K at L = I_1 > 0
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L106 | determinant of the frozen bordered Hessian
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p6-kepler.tex#stepI:p6:kb-det@L106-L107 | h or h~ is the Hamiltonian fixed by the Kepler package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p6:nd-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162
PROOF_SOURCE: blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162
CONTRACT_ID: stepI:p6:nd-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: kappa=Omega=1, h_tilde=h_{(2 pi)^2,1/(2 pi)}; B subset {I in R^2:I_1>0}, 0<r_0<=inf_B I_1/2, as in the enclosing nondegeneracy corollary
SOURCE_QUANTIFIERS: With kappa=Omega=1 fixed, for every B,r_0 satisfying the enclosing corollary, and every real I in B_{r_0} for the determinant assertion
SOURCE_CONCLUSION: h~ holomorphic on B_{r_0}, real at real I, and det borderedHessian h~ I = 3/I_1^4 > 0 for real I in B_{r_0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:conversion, bpI:p6:kep-border, stepI:p6:nd-domain, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:conversion | blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162 | (b),(d) with kappa = Omega = 1
EDGE: bpI:p6:kep-border | blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162 | bordered Hessian determinant
EDGE: stepI:p6:nd-domain | blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162 | I_1 != 0 (and > 0 for real I) on B_{r_0}
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p6-kepler.tex#stepI:p6:nd-concl@L162-L162 | h or h~ is the Hamiltonian fixed by the Kepler package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:he-deriv
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L67
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L67
CONTRACT_ID: stepI:p7:he-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: mu in R; z=(q,p) in the collision-free set W_mu of L48-49; r_j=rad(q-primary_j(mu))
SOURCE_QUANTIFIERS: For every mu in R and every z in W_mu
SOURCE_CONCLUSION: (d_p H, -d_q H) = ((p_0+q_1, p_1-q_0), (p_1,-p_0) - (1-mu)(q-a_1)/r_1^3 - mu (q-a_2)/r_2^3) = V_mu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:he-smooth, bpI:p0:restricted#restrictedHamiltonian, bpI:p0:primaries#primary1, bpI:p0:primaries#primary2, bpI:p0:restricted#restrictedVectorField, bpI:p7:sec-ham#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:he-smooth | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L61 | differentiability of H^R3_mu on W_mu
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L61 | the Hamiltonian differentiated
EDGE: bpI:p0:primaries#primary1 | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L61 | a_1(mu)
EDGE: bpI:p0:primaries#primary2 | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L61 | a_2(mu)
EDGE: bpI:p0:restricted#restrictedVectorField | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L67-L67 | the display of V_mu in Definition restricted
EDGE: bpI:p7:sec-ham#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-deriv@L61-L67 | r_j and W_mu are fixed in the section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:he-sol
KIND: step
TITLE: Solution predicates
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69
CONTRACT_ID: stepI:p7:he-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: mu in R; J subset R; z:R->R^2 x R^2; W_mu and the restricted Hamiltonian/field are the section data of L48-49
SOURCE_QUANTIFIERS: For every mu in R, J subset R and z:R->R^2 x R^2; equivalence at every t in J
SOURCE_CONCLUSION: the clauses of RSol_mu are z(t) in W_mu and z'(t) = V_mu(z(t)) = X_H(z(t)); the reduction to IsSolIn is the cited N result
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:primaries#CollisionFree, bpI:p0:restricted#IsRestrictedSolutionOn, bpI:p0:restricted#restrictedVectorField, stepI:p7:he-deriv, bpN:p3:newton-reduction, bpI:p7:sec-ham#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | first clause of RSol_mu is collision-freeness
EDGE: bpI:p0:restricted#IsRestrictedSolutionOn | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | RSol_mu
EDGE: bpI:p0:restricted#restrictedVectorField | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | V_mu
EDGE: stepI:p7:he-deriv | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | V_mu = X_H
EDGE: bpN:p3:newton-reduction | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | reduction to IsSolIn
EDGE: bpI:p7:sec-ham#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:he-sol@L69-L69 | r_j and W_mu are fixed in the section data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:ke-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L134
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L134
CONTRACT_ID: stepI:p7:ke-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: For the real-line assertion ell in R and e in (-1,1); for comparison with the complex branch 0<e_1<1 and (ell,e) a real point of P(e_1), with constants defined in L94-100
SOURCE_QUANTIFIERS: For every ell in R and e in (-1,1) there exists exactly one real u_R(ell,e); for each e choose e_1 with |e|<e_1<1 to compare the analytic branch; assertions on u_R hold on R x (-1,1)
SOURCE_CONCLUSION: phi(u) = ell + e sin u is a |e|-contraction of R with a unique real fixed point u_R(ell,e); u = u_R at real points of P; u_R real-analytic on R x (-1,1), d_ell u_R > 0, u_R(.,e) an increasing diffeomorphism of R, u_R(0,e) = 0, u_R(2pi,e) = 2pi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:ke-contr, stepI:p7:ke-hol, K:bp:p1:holomorphic-analytic, stepI:p7:ke-b, K:bp:p1:ext-banach, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:ke-contr | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L133 | uniqueness in S gives u = u_R at real points of P
EDGE: stepI:p7:ke-hol | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L134-L134 | u_R is the restriction of a holomorphic function
EDGE: K:bp:p1:holomorphic-analytic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L134-L134 | holomorphic implies real-analytic
EDGE: stepI:p7:ke-b | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L134-L134 | d_ell u_R = 1/(1 - e cos u_R)
EDGE: K:bp:p1:ext-banach | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L133 | the complete nonempty real line carries the contraction with constant abs(e) < 1
EDGE: K:bp:p1:ext-mvt | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-c@L133-L133 | abs(e cos u) <= abs(e) bounds the derivative on the convex real line
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:oi-gam
KIND: step
TITLE: Angular momentum, radial momentum
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-gam@L197-L198
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-gam@L197-L198
CONTRACT_ID: stepI:p7:oi-gam
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (ell,g,L,G) in D_R=R^2 x C_0 with 0<G<L; e=e(L,G), k=G/L, (q,p)=Q(ell,g,L,G), u,c,s,D as in the orbit-map definitions
SOURCE_QUANTIFIERS: For every (ell,g,L,G) in D_R, with the orbit quantities fixed as in the enclosing proposition
SOURCE_CONCLUSION: Gamma = X P_Y - Y P_X = L k = G and q.p = X P_X + Y P_Y = L e s
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-gam@L197-L197 | X, Y, P_X, P_Y
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:oi-en
KIND: step
TITLE: Energy
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200
CONTRACT_ID: stepI:p7:oi-en
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (ell,g,L,G) in D_R=R^2 x C_0 with 0<G<L; e=e(L,G), k=G/L, (q,p)=Q(ell,g,L,G), u,c,s,D as in the orbit-map definitions
SOURCE_QUANTIFIERS: For every (ell,g,L,G) in D_R, with the orbit quantities fixed as in the enclosing proposition
SOURCE_CONCLUSION: E = (1/2)|p|^2 - 1/r = -1/(2L^2); Q(ell,g,L,G) lies in C with elements L, G, L^2, e
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:oi-r, bpI:p7:elements, bpI:p7:orbit-maps, stepI:p7:oi-gam
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:oi-r | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200 | r and ¦p¦^2
EDGE: bpI:p7:elements | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200 | membership in C (G > 0, G^2 < L^2 = -1/(2E)) and the elements
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200 | p and q of the orbit map
EDGE: stepI:p7:oi-gam | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-en@L200-L200 | Gamma(q,p) = G is needed for the strict angular-momentum inequality and recovery of the elements
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:oi-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202
CONTRACT_ID: stepI:p7:oi-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (ell,g,L,G) in D_R=R^2 x C_0 with 0<G<L; e=e(L,G), k=G/L, (q,p)=Q(ell,g,L,G), u,c,s,D as in the orbit-map definitions
SOURCE_QUANTIFIERS: For every (ell,g,L,G) in D_R, with the orbit quantities fixed as in the enclosing proposition
SOURCE_CONCLUSION: L^2 e c = L^2 - r and (L e s)^2 = -G^2 + 2r - r^2/L^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:oi-r, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:oi-r | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202 | r = L^2 (1 - e c)
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:oi-d@L202-L202 | the calculation uses the Delaunay orbit map or its element formulas
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:sy-compare
KIND: step
TITLE: Comparison with $L\,d\ell$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232
CONTRACT_ID: stepI:p7:sy-compare
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (ell,g,L,G) in D_R=R^2 x C_0 with 0<G<L; e=e(L,G), k=G/L, (q,p)=Q(ell,g,L,G), u,c,s,D as in the orbit-map definitions; the one-form calculation is on D_R, F=2Le sin u
SOURCE_QUANTIFIERS: For every (ell,g,L,G) in D_R, with the orbit quantities fixed as in the enclosing proposition
SOURCE_CONCLUSION: pi.dxi - L dell = dF with F = 2 L e s; Q^*(sum p_i dq_i) = L dell + G dg + dF
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sy-g, stepI:p7:sy-coord, bpI:p7:kepler-eq, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sy-g | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232 | p.dq = pi.dxi + G dg
EDGE: stepI:p7:sy-coord | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232 | pi.dxi
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232 | ell = u - e sin u relates dell to du, de
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-compare@L232-L232 | the calculation uses the Delaunay orbit map or its element formulas
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:sy-ext
KIND: step
TITLE: Exterior derivative
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L235
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L235
CONTRACT_ID: stepI:p7:sy-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Q is the Delaunay map on D_R as fixed in the symplectic proposition; F=2Le sin u; no one-form identity or invertibility is assumed as a source premise
SOURCE_QUANTIFIERS: For every (ell,g,L,G) in D_R, with the orbit quantities fixed as in the enclosing proposition
SOURCE_CONCLUSION: Q^*(sum dp_i wedge dq_i) = dL wedge dell + dG wedge dg, i.e. D Q^T J D Q = J, det D Q != 0, D Q J D Q^T = J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sy-compare, bpI:p7:x-forms, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sy-compare | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L234 | Q^*(sum p_i dq_i) = L dell + G dg + dF
EDGE: bpI:p7:x-forms | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L234 | d^2 = 0, pull-back commutes with d, form determined by values on vectors
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-ext@L234-L235 | the calculation uses the Delaunay orbit map or its element formulas
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:sy-field
KIND: step
TITLE: Hamiltonian fields
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237
CONTRACT_ID: stepI:p7:sy-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Q is the Delaunay map on D_R; H is C^1 on the stated open domain for composition with Q; the curve assertion concerns C^1 curves w with values in D_R
SOURCE_QUANTIFIERS: For every C^1 H on the stated open domain and every point of D_R; then for every C^1 curve w in that domain
SOURCE_CONCLUSION: D Q X_{H o Q} = X_H o Q; for C^1 curves w' = X_{H o Q}(w) iff d/dt Q(w) = X_H(Q(w))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sy-ext, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sy-ext | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237 | D Q J D Q^T = J
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sy-field@L237-L237 | the calculation uses the Delaunay orbit map or its element formulas
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:ch-reg
KIND: step
TITLE: Regularity
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246
CONTRACT_ID: stepI:p7:ch-reg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (ell,g,L,G) in D_R, so 0 < G < L and 1-G^2/L^2 > 0; e(L,G) = sqrt(1-G^2/L^2)
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: Q is real-analytic on D_R; D Q invertible; Q(D_R) subset C
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:kepler-eq, bpI:p7:orbit-maps, bpI:p7:symplectic, bpI:p7:orbit-identities, bpI:p7:x-hol, K:bp:p1:holomorphic-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | (c): u_R real-analytic
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | Q built from u_R, e(L,G), R(g)
EDGE: bpI:p7:symplectic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | invertibility of D Q
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | (c): Q(D_R) subset C
EDGE: bpI:p7:x-hol | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | the positive square-root formula for e extends holomorphically locally on C_0
EDGE: K:bp:p1:holomorphic-analytic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-reg@L246-L246 | restrict the local holomorphic square-root formula to real actions to justify real analyticity of e
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p7:ch-diffeo
KIND: step
TITLE: Quotient diffeomorphism
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258
CONTRACT_ID: stepI:p7:ch-diffeo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Q is the Delaunay map D_R -> C defined from the orbit formulas; no regularity, injectivity, surjectivity or periodicity conclusion is an added premise
SOURCE_QUANTIFIERS: On D_R, for all ell,g,L,G and all integer translates in ell,g; the induced map from (R/(2 pi Z))^2 x C_0 to C is the same quotient map as in the chart theorem
SOURCE_CONCLUSION: Q is 2pi-periodic in ell, g; the quotient map is a bijective local diffeomorphism, hence a real-analytic diffeomorphism onto C
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:kepler-eq, stepI:p7:ch-reg, stepI:p7:ch-inj, stepI:p7:ch-surj3, bpI:p7:x-ift, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | (b): periodicity of u
EDGE: stepI:p7:ch-reg | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | local diffeomorphism
EDGE: stepI:p7:ch-inj | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | injectivity modulo 2pi
EDGE: stepI:p7:ch-surj3 | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | surjectivity
EDGE: bpI:p7:x-ift | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | bijective local real-analytic diffeomorphism is a diffeomorphism
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:ch-diffeo@L258-L258 | the calculation uses the Delaunay orbit map or its element formulas
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p67a+sol-review-I-p67
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```


## Checks, provenance and limits

Both current `sha256sum -c docs/graph/I/CORPUS.sha256` and `sha256sum -c docs/graph/I/IMPORTS.sha256` passed every file. The former now includes the I-owned N source; the latter is re-pinned after the K Part 1 locator shift. Old import-drift warnings are closed for this snapshot. The last SPEC ruling retargets gen-invariant/gen-barrier/newton-reduction to ordinary bpN:p3:* nodes in I-nown; no obsolete N: form is used by the reviewed consumer. No generic writer fill "inherits the fixed data and quantifiers of the enclosing proof; no new binders" occurs in any of the four assigned packets. The broader "as in the enclosing result" fields were checked against the enclosing statements and expanded where replaced.

Frozen identity evidence only: iso.kepler_bordered_det.v1 / KAM.Iso.kepler_bordered_det / ABI 3c46c0a138ba6567ea3d7a46bfdd0da666047c423b6222bda82f9cb864193cc8; iso.keplerBorder.v1 / ABI 36e9baac00666553c4182571874d115c3f812a3679f898e30ae5679d367d4984. No manifest state or theorem proof body is interpreted.

No new mathematical repair, source deviation or frozen-statement defect is asserted. No implementation module/provider/proof body is inspected, no Lean/build/axiom/source-lint command is run, and no state-changing git command is run. Only the four requested review reports are written. PASS is source topology, not theorem closure.

Input packet SHA-256 at review:

- `I-p67a.nodes.md`: `8623d5e3c1726a06ae379c8e51de1a7388bd6338ce758141380a22643b9eb4e9`.
- `I-p67a.coverage.md`: `f9399d82527fb22bcc8b4e62d8d0888875f0796965253ef70e42086c1b1cd907`.

Final validation:

- `python3 scripts/depgraph_apply_review.py docs/graph/I/packets I-p67a docs/graph/I/reviews/I-p67a-delta.md sol-delta-I-c --dry-run`: `I-p67a: 15 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 2 PASS nodes`. The applier counts PASS rows from both node and coverage tables; unique node counts are given in the scope/table.
- Independent report checks: exactly 16 assigned proposed-node rows and 55 assigned proposed-coverage rows; every FAIL has a complete replacement; all required fields, locator bounds, unique DEPS/ROUTES and matching EDGE records pass; all dependency IDs resolve.
- Combined in-memory overlay of all four reports: acyclic, no dangling dependencies, all 41 assigned nodes remain reachable from a frozen root. No graph files were written for this check.
- Input node/coverage SHA-256 values still match the review snapshot. Report whitespace passes; `git diff --check` returned no output. Concurrent changes in other agents' files were left untouched.
