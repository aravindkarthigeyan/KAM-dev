# P-p6 delta topology review

**Verdict: FAIL.** Reviewer: `sol-delta-P-h`. Marker: `delta-P-h`.

Reviewed only the live PROPOSED records: 41 nodes and 74 coverage items (115 records). The earlier reviewer is `sol-review-P-h`, distinct from this reviewer; the extractor is `sonnet-extract-P-p6`. Non-PROPOSED records were read only as prerequisite or exclusion context.

Read DELTA-BRIEF.md, REVIEW-BRIEF.md and SPEC.md, including the convergence and ownership rulings, and the earlier P-p6-review.md findings R1-R6. Re-read Part 6 L1-L300, every pending statement/proof and EDGE locator, the Part 0 definition transcriptions used by those edges, Part 1 chart (L46-L49), torus-transport (L94-L108) and liouville-lattice (L201-L206), and I Part 7 scaling (L311-L322). This report changes no packet or Lean file.

## Remaining failures

- **D1 — missing source premises.** Units specializes reconstruction, whose physical hypotheses are positive masses and nonnegative mu (Part 6 L20 and L153-L165). Naming the total frozen predicates does not supply these premises: neither predicate restricts mu or makes the barycentric denominator positive. Restore them in SOURCE_HYPOTHESES. The measure lemma and mp-b also omit the section premise n>=1, needed by the maxima in (a); mp-a and the new a-max node already preserve it. No distinct-axis premise belongs here.
- **D2 — wrong consumer locators.** Six newly added conv#data edges land on an environment heading with no data or mathematical use. Move only those EDGE locators to the actual statement use identified in the table. Their dependency targets and rationales are retained.

## Proposed nodes

All line spans below are in blueprint-P/parts/p6-newtonian-models.tex. Supplier statement spans are identified above; the edge-use locators were also read.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepP:p6:pl-c | PASS | L49-L49 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:dom-open | PASS | L58-L58 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:dom-smooth | PASS | L59-L59 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:sp-alg | PASS | L69-L69 | Prior repair matches the source; fields, direct uses and application premises agree. |
| bpP:p6:kepler-part | FAIL | L71-L73; L72-L72; L71-L71 | D2: conv#data EDGE points only to the remark heading L71; the physical data are used at L72. |
| stepP:p6:he-dir | PASS | L94-L97; L94-L94 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:he-coef | PASS | L98-L98 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:he-fix | PASS | L99-L99 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:he-curve | PASS | L100-L100 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:ba-ab | PASS | L148-L148 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:ba-c | PASS | L149-L149 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:ba-d | PASS | L150-L150 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:rc-coords | PASS | L170-L171; L170-L170; L171-L171 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:rc-a | PASS | L172-L172 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:rc-sun | PASS | L173-L173 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:rc-planets | PASS | L174-L174 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:rc-vplanet | PASS | L175-L175 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:rc-vsun | PASS | L176-L176 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:rc-pack | PASS | L177-L177 | Prior repair matches the source; fields, direct uses and application premises agree. |
| bpP:p6:units | FAIL | L179-L181; L180-L180; L179-L179 | D1: omits the positive physical data and mu>=0 of the reconstruction being specialized; D2: package EDGE points only to heading L179. |
| bpP:p6:reconstruction-fixed | PASS | L183-L189; L190-L192; L191-L191; L184-L184; L186-L186 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:rf-eq | PASS | L191-L191 | Prior repair matches the source; fields, direct uses and application premises agree. |
| bpP:p6:orbit-transfer | FAIL | L194-L202; L203-L206; L204-L204; L205-L205; L197-L197; L200-L200; L198-L198; L199-L199; L194-L194 | D2: conv#data EDGE points only to the corollary heading L194; the physical parameters are used at L197-L200. |
| stepP:p6:ot-curve | PASS | L204-L204 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:ot-apply | PASS | L205-L205 | Prior repair matches the source; fields, direct uses and application premises agree. |
| bpP:p6:tube-constants | FAIL | L210-L216; L212-L212; L210-L210 | D2: conv#data EDGE points only to the definition heading L210; n and the finite nonempty extrema are used at L211-L212. |
| bpP:p6:tube-geometry | FAIL | L218-L228; L229-L235; L230-L230; L231-L231; L232-L232; L233-L233; L234-L234; L219-L219; L222-L222; L225-L225; L226-L226; L218-L218 | D2: conv#data EDGE points only to the lemma heading L218; the physical data occur at L219. |
| stepP:p6:tg-a | PASS | L230-L230 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:tg-b | PASS | L231-L231 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:tg-c | PASS | L232-L232 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:tg-d | PASS | L233-L233 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:tg-e | PASS | L234-L234 | Prior repair matches the source; fields, direct uses and application premises agree. |
| bpP:p6:measure-positive | FAIL | L249-L255; L256-L259; L257-L257; L258-L258; L253-L253; L252-L252; L249-L249 | D1: n>=1 is omitted from the source hypotheses although finite nonempty maxima are used; D2: package EDGE points only to heading L249. |
| stepP:p6:mp-a | PASS | L257-L257 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:mp-b | FAIL | L258-L258 | D1: restore the inherited n>=1 premise of measure-positive and its finite-box supplier (a). |
| stepP:p6:ma-tube | PASS | L275-L275 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:ma-coll | PASS | L276-L276 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:ma-newton | PASS | L277-L277 | Prior repair matches the source; fields, direct uses and application premises agree. |
| stepP:p6:ma-pair | PASS | L278-L278 | Prior repair matches the source; fields, direct uses and application premises agree. |
| bpP:p6:tube-constants#a-max | PASS | L212-L212 | Prior repair matches the source; fields, direct uses and application premises agree. |
| bpP:p6:reconstruction-fixed#real-eps | PASS | L191-L191 | Prior repair matches the source; fields, direct uses and application premises agree. |

## Proposed coverage items

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepP:p6:pl-c | PASS | L49-L49 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:dom-open | PASS | L58-L58 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:dom-smooth | PASS | L59-L59 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:sp-alg | PASS | L69-L69 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| bpP:p6:kepler-part | PASS | L71-L73 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:he-dir | PASS | L94-L97 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:he-coef | PASS | L98-L98 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:he-fix | PASS | L99-L99 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:he-curve | PASS | L100-L100 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| bpP:p6:nbody | PASS | L105-L110 | Exclusion agrees with the source and scoped root closure. |
| bpP:p6:reduction | PASS | L112-L123 | Exclusion agrees with the source and scoped root closure. |
| stepP:p6:re-a | PASS | L125-L127 | Exclusion agrees with the source and scoped root closure. |
| stepP:p6:re-c | PASS | L128-L130 | Exclusion agrees with the source and scoped root closure. |
| bpP:p6:reduction-role | PASS | L132-L134 | Exclusion agrees with the source and scoped root closure. |
| stepP:p6:ba-ab | PASS | L148-L148 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:ba-c | PASS | L149-L149 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:ba-d | PASS | L150-L150 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:rc-coords | PASS | L170-L171 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:rc-a | PASS | L172-L172 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:rc-sun | PASS | L173-L173 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:rc-planets | PASS | L174-L174 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:rc-vplanet | PASS | L175-L175 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:rc-vsun | PASS | L176-L176 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:rc-pack | PASS | L177-L177 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| bpP:p6:units | PASS | L179-L181 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| bpP:p6:reconstruction-fixed | PASS | L183-L189 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:rf-eq | PASS | L191-L191 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| bpP:p6:orbit-transfer | PASS | L194-L202 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:ot-curve | PASS | L204-L204 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:ot-apply | PASS | L205-L205 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| bpP:p6:tube-constants | PASS | L210-L216 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| bpP:p6:tube-geometry | PASS | L218-L228 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:tg-a | PASS | L230-L230 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:tg-b | PASS | L231-L231 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:tg-c | PASS | L232-L232 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:tg-d | PASS | L233-L233 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:tg-e | PASS | L234-L234 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| bpP:p6:vs-I | PASS | L236-L238 | Exclusion agrees with the source and scoped root closure. |
| bpP:p6:measure-positive | PASS | L249-L255 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:mp-a | PASS | L257-L257 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:mp-b | PASS | L258-L258 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| bpP:p6:mp-use | PASS | L260-L262 | Exclusion agrees with the source and scoped root closure. |
| stepP:p6:ma-tube | PASS | L275-L275 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:ma-coll | PASS | L276-L276 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:ma-newton | PASS | L277-L277 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| stepP:p6:ma-pair | PASS | L278-L278 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| bpP:p6:fixkol-assembly | PASS | L281-L283 | Exclusion agrees with the source and scoped root closure. |
| heading:bpP:p6 | PASS | L1-L1 | Exclusion agrees with the source and scoped root closure. |
| heading:bpP:p6:conv | PASS | L18-L18 | Exclusion agrees with the source and scoped root closure. |
| heading:bpP:p6:planar | PASS | L36-L36 | Exclusion agrees with the source and scoped root closure. |
| heading:bpP:p6:models | PASS | L52-L52 | Exclusion agrees with the source and scoped root closure. |
| heading:bpP:p6:derivation | PASS | L103-L103 | Exclusion agrees with the source and scoped root closure. |
| heading:bpP:p6:recon | PASS | L136-L136 | Exclusion agrees with the source and scoped root closure. |
| heading:bpP:p6:tube | PASS | L208-L208 | Exclusion agrees with the source and scoped root closure. |
| heading:bpP:p6:measure | PASS | L247-L247 | Exclusion agrees with the source and scoped root closure. |
| heading:bpP:p6:assembly | PASS | L264-L264 | Exclusion agrees with the source and scoped root closure. |
| heading:bpP:p6:notes | PASS | L285-L285 | Exclusion agrees with the source and scoped root closure. |
| p6:source-L109 | PASS | L109-L109 | Exclusion agrees with the source and scoped root closure. |
| p6:source-L122 | PASS | L122-L122 | Exclusion agrees with the source and scoped root closure. |
| p6:source-L167 | PASS | L167-L167 | Exclusion agrees with the source and scoped root closure. |
| p6:source-L188 | PASS | L188-L188 | Exclusion agrees with the source and scoped root closure. |
| p6:prose-L4-L16 | PASS | L4-L16 | Exclusion agrees with the source and scoped root closure. |
| p6:prose-L20-L24 | PASS | L20-L24 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| p6:prose-L26-L27 | PASS | L26-L27 | Exclusion agrees with the source and scoped root closure. |
| p6:prose-L287-L287 | PASS | L287-L287 | Exclusion agrees with the source and scoped root closure. |
| p6:prose-L289-L289 | PASS | L289-L289 | Exclusion agrees with the source and scoped root closure. |
| p6:prose-L291-L291 | PASS | L291-L291 | Exclusion agrees with the source and scoped root closure. |
| p6:prose-L293-L293 | PASS | L293-L293 | Exclusion agrees with the source and scoped root closure. |
| p6:prose-L295-L295 | PASS | L295-L295 | Exclusion agrees with the source and scoped root closure. |
| p6:prose-L297-L297 | PASS | L297-L297 | Exclusion agrees with the source and scoped root closure. |
| p6:prose-L299-L300 | PASS | L299-L300 | Exclusion agrees with the source and scoped root closure. |
| stepP:p6:re-b | PASS | L125-L127 | Exclusion agrees with the source and scoped root closure. |
| p6:a-max-L212 | PASS | L212-L212 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |
| p6:real-eps-bridge-L191 | PASS | L191-L191 | Mapped source unit and node ID agree; a node-field failure does not invalidate this mapping. |

## Application, ownership and exclusion checks

R1-R3 repairs otherwise pass: direct section-data edges are present; tube steps using the chosen axes/constants link tube-constants; derivative rules at L174-L176 and length/dot definitions at L49 are linked; ot-curve checks the premises and ot-apply applies reconstruction; mp-a does not use the reverse triangle inequality. No mechanically added alternative route or generic inherits-quantifiers text occurs among these pending nodes.

R4 passes as an honest SOURCE_GAP: L184 says eps is real, whereas the cited Hamilton equations inherit eps>=0 from L20. The new real-eps node records precisely that extension and rf-eq consumes it. No mathematics is supplied here. The whole orbit-transfer record retains both conditional branches; its moving branch has live consumers. Retaining its fixed supplier is consistent with this unsplit representation despite the deferred P-FIXED root.

R5 passes for the a-max projection and the absence of distinctness in the measure lemma. Positivity, the max/physical-length factor sqrt2, the chart factor c^{2n}, full lattice invariance, the Borel conditional, arbitrary time sets, and the axis-only choice of d,D are preserved. The missing n premise is the limited D1 failure above.

Kepler-part now targets the ordinary P-owned bpI:p7:scaling node in P-xown, not an I import excluded by its owner. Its mass dictionary is read at I Part 7 L317 and used at P Part 6 L72. Units explicitly rejects N newton-reduction as unnecessary; vs-I explicitly rejects collision-exclusion/min-distance. Neither supplies a dependency.

R6 passes: re-b is inventoried separately even though it starts on the same physical line L125 as re-a. The reduction/nbody family has no live consumer in the scoped corpus: corpus searches find only its local proof, introduction, administrative explanation and pointers. The live reconstruction uses Hamilton equations directly. fixkol-assembly is cited only by deferred Parts 11/13. Headings, provenance, outlines and notes have valid exclusions; L20-L24 maps to conv#data. New a-max and real-eps coverage items map to the new nodes.

## Suspected blueprint defects

The previously disclosed real-eps scope mismatch remains at L184/L191 versus L20/L82-L92 ("eps in R" versus the inherited nonnegative scope); it is faithfully exposed, not a topology failure. A further normalization typo is visible at Part 6 L165: "for G=1 it is ... actualMasses 1 m mu". The surrounding proposition still allows arbitrary m0>0; setting only G=1 does not set m0=1. The D25 specialization needs both G=m0=1, as stated correctly at L160 and in units L180. This report does not alter the blueprint or the non-PROPOSED reconstruction record.

## Complete replacements

Only failing SOURCE_HYPOTHESES fields and the six failing EDGE locators change. All other lines, including identities, status and author metadata, remain verbatim.

### P-p6 — bpP:p6:kepler-part

```text
NODE: bpP:p6:kepler-part
KIND: claim
TITLE: Kepler part; mass dictionary
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:kepler-part@L71-L73
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:kepler-part@L71-L73
CONTRACT_ID: bpP:p6:kepler-part
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); split; k=G m0
SOURCE_QUANTIFIERS: fixed data; planet index i<n
SOURCE_CONCLUSION: H_mov and H_fix share the unperturbed part H_Kep (perturbations mu f_mov, eps f_fix with f independent of the coupling); each summand of H_Kep is m_i E_k(q_i,p_i/m_i) with k=G m0 (notation of bpI:p7:scaling), which supplies the Kepler orbit, the action m_i sqrt(k a) and the mean values used in Part 7; H_Kep keeps the planet mass m_i, not the reduced mass
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:split, bpI:p7:scaling, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:split | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:kepler-part@L72-L72 | the splitting H=H_Kep+mu f
EDGE: bpI:p7:scaling | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:kepler-part@L72-L72 | mass dictionary of the Kepler energy E_k used to rewrite each summand of H_Kep
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:kepler-part@L72-L72 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6+sol-review-P-h
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark kept: its stated facts (H_Kep = sum m_i E_{k}, planet mass not reduced mass) are consumed by Part 7 stepP:p7:pc-dec and bpP:p7:same-chart and by Part 8 stepP:p8:l64-a. CROSS-OWNERSHIP CANDIDATE: bpI:p7:scaling is a genuine use (mass dictionary).
```

### P-p6 — bpP:p6:units

```text
NODE: bpP:p6:units
KIND: claim
TITLE: Units and the D25 predicates
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:units@L179-L181
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:units@L179-L181
CONTRACT_ID: bpP:p6:units
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Part 6 physical data n>=1, G,m0>0, m_i>0, mu>=0; G=m0=1 for the D25 specialization; the frozen predicates IsMovingSolutionOn (G=m0=1) and IsNewtonSolutionOn (G=1 in the force formula, arbitrary mass array)
SOURCE_QUANTIFIERS: J subset R; m, mu; z
SOURCE_CONCLUSION: general-G application of Proposition reconstruction uses the mass array G*M_k; if z satisfies IsMovingSolutionOn m mu J then IsNewtonSolutionOn (actualMasses 1 m mu) J Q V for Q=barycentricPositions 1 m mu q, V=barycentricVelocities 1 m mu p; J need not be open or connected
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:reconstruction, bpP:p0:d25-movsol#IsMovingSolutionOn, bpP:p0:d25-newton#IsNewtonSolutionOn, bpP:p0:barycentric#actualMasses, bpP:p0:barycentric#barycentricPositions, bpP:p0:barycentric#barycentricVelocities, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:reconstruction | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:units@L180-L180 | the proposition whose normalised application is stated
EDGE: bpP:p0:d25-movsol#IsMovingSolutionOn | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:units@L180-L180 | IsMovingSolutionOn fixes G=m0=1
EDGE: bpP:p0:d25-newton#IsNewtonSolutionOn | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:units@L180-L180 | IsNewtonSolutionOn absorbs G into the mass array
EDGE: bpP:p0:barycentric#actualMasses | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:units@L180-L180 | actualMasses 1 m mu
EDGE: bpP:p0:barycentric#barycentricPositions | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:units@L180-L180 | barycentricPositions 1 m mu
EDGE: bpP:p0:barycentric#barycentricVelocities | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:units@L180-L180 | barycentricVelocities 1 m mu
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:units@L180-L180 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6+sol-review-P-h
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark kept: consumed by Part 14a stepP:p14:amd-b. Its mention of N:bpN:p3:newton-reduction ("covers only the all-time predicates ... is not needed here") is a does-not-apply comparison and is not an edge.
```

### P-p6 — bpP:p6:orbit-transfer

```text
NODE: bpP:p6:orbit-transfer
KIND: corollary
TITLE: Orbit transfer for tori
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L194-L202
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L203-L206
CONTRACT_ID: bpP:p6:orbit-transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0 unless otherwise stated); d=2n; K:R^d->Ph_{2n}; w in R^d; (a) IsPhysTorus(H_mov,w,K) and NoColl(K(phi)_1) for all phi; (b) IsPhysTorus(H_fix,w,K) and NoColl(K(phi)_1) for all phi; Q=barycentricPositions m0 m mu, V=barycentricVelocities m0 m mu
SOURCE_QUANTIFIERS: n, K, w; then every phi
SOURCE_CONCLUSION: (a) for every phi, IsNewtonSolution G (actualMasses m0 m mu) (t -> Q(K(phi+tw)_1)) (t -> V(K(phi+tw)_2)); (b) IsFixedSolution G m0 m eps (t -> body(K(phi+tw)_1)) (t -> (1/m_i)body(K(phi+tw)_2)) for all phi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:ot-curve, stepP:p6:ot-apply, bpP:p0:phystorus#IsPhysicalTorus, bpP:p0:movham#movingHamiltonian, bpP:p0:fixham#fixedHamiltonian, bpP:p0:nocoll#NoCollision, bpP:p0:newton#IsNewtonSolution, bpP:p0:fixedsol#IsFixedSolution, bpP:p0:barycentric#actualMasses, bpP:p0:barycentric#barycentricPositions, bpP:p0:barycentric#barycentricVelocities, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:ot-curve | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L204-L204 | proof step The curve
EDGE: stepP:p6:ot-apply | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L205-L205 | proof step Apply
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L197-L197 | IsPhysTorus hypothesis
EDGE: bpP:p0:movham#movingHamiltonian | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L197-L197 | H_mov
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L200-L200 | H_fix
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L197-L197 | NoColl hypothesis
EDGE: bpP:p0:newton#IsNewtonSolution | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L198-L198 | conclusion (a)
EDGE: bpP:p0:fixedsol#IsFixedSolution | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L200-L200 | conclusion (b)
EDGE: bpP:p0:barycentric#actualMasses | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L198-L198 | actualMasses
EDGE: bpP:p0:barycentric#barycentricPositions | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L199-L199 | Q
EDGE: bpP:p0:barycentric#barycentricVelocities | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L199-L199 | V
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L197-L200 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6+sol-review-P-h
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p6 — bpP:p6:tube-constants

```text
NODE: bpP:p6:tube-constants
KIND: definition
TITLE: Axis constants; tube radius; $d$, $D$
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-constants@L210-L216
PROOF_SOURCE: -
CONTRACT_ID: bpP:p6:tube-constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1 as fixed by bpP:p6:conv#data; a in R^n with a_i>0 pairwise distinct (n=2: 0<a_0<a_1); eta>0
SOURCE_QUANTIFIERS: n; a; eta (then the constants a_max, gamma_a, zeta_*, d, D)
SOURCE_CONCLUSION: defines a_max=max a_i, gamma_a=min{min a_i, min_{i!=j}¦a_i-a_j¦}>0 (pair minimum omitted for n=1), zeta_*=min{eta,gamma_a/6}, d=gamma_a/2, D=2a_max+gamma_a; then 0<d<D
CONSTANT_SCOPE: d, D depend only on a (not on eta, G, m0, m, mu, eps); zeta_* only on (a, eta)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:ext-top, bpP:p6:conv#data, bpP:p6:tube-constants#a-max
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:ext-top | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-constants@L212-L212 | finite minima/maxima exist, so gamma_a>0 and a_max are defined
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-constants@L211-L212 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:tube-constants#a-max | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-constants@L212-L212 | R5: a_max is the finite maximum subdefinition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6+sol-review-P-h
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p6 — bpP:p6:tube-geometry

```text
NODE: bpP:p6:tube-geometry
KIND: lemma
TITLE: Tube geometry
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L218-L228
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L229-L235
CONTRACT_ID: bpP:p6:tube-geometry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G,m0>0; m_i>0; a, eta, zeta_*, d, D as in Definition bpP:p6:tube-constants; 0<zeta<=zeta_*; z=(q,p) in U_zeta (circularTube of radius zeta)
SOURCE_QUANTIFIERS: fixed data and axes; then zeta in (0,zeta_*]; then z in U_zeta
SOURCE_CONCLUSION: (a) U_zeta subset U_{zeta_*} subset U_eta; (b) exists phi in R^n with l(q_i-a_i e(phi_i))<sqrt2 zeta for all i; (c) a_i-sqrt2 zeta<l(q_i)<a_i+sqrt2 zeta and ¦a_i-a_j¦-2sqrt2 zeta<l(q_j-q_i)<a_i+a_j+2sqrt2 zeta; (d) d<=l(q_i)<=D, d<=l(q_j-q_i)<=D, in particular NoColl(q); (e) for every mu>=0, PairBounds(d,D; barycentricPositions m0 m mu q) with the same d,D, and PairBounds(d,D;(0,q_0,...,q_{n-1}))
CONSTANT_SCOPE: d, D depend only on a; zeta_* on (a,eta); none depends on mu, G, m0, m
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:tg-a, stepP:p6:tg-b, stepP:p6:tg-c, stepP:p6:tg-d, stepP:p6:tg-e, bpP:p6:tube-constants, bpP:p0:circular#circularTube, bpP:p0:circular#circularPoint, bpP:p0:nocoll#NoCollision, bpP:p0:nocoll#PairBounds, bpP:p0:barycentric#barycentricPositions, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:tg-a | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L230-L230 | proof step (a)
EDGE: stepP:p6:tg-b | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L231-L231 | proof step (b)
EDGE: stepP:p6:tg-c | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L232-L232 | proof step (c)
EDGE: stepP:p6:tg-d | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L233-L233 | proof step (d)
EDGE: stepP:p6:tg-e | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L234-L234 | proof step (e)
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L219-L219 | a, eta, zeta_*, d, D
EDGE: bpP:p0:circular#circularTube | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L219-L219 | U_zeta
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L222-L222 | circ(phi)
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L225-L225 | conclusion NoColl(q)
EDGE: bpP:p0:nocoll#PairBounds | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L226-L226 | conclusion PairBounds
EDGE: bpP:p0:barycentric#barycentricPositions | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L226-L226 | barycentric positions
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L219-L219 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6+sol-review-P-h
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p6 — bpP:p6:measure-positive

```text
NODE: bpP:p6:measure-positive
KIND: lemma
TITLE: $0<\meas S<\infty$
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L249-L255
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L256-L259
CONTRACT_ID: bpP:p6:measure-positive
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1 as fixed by bpP:p6:conv#data; G,m0>0; m_i>0; a_i>0; eta>0; (b) Psi a c-chart on an open O subset Ph_{2n} with lattice compatibility (Q1)-(Q2) of Theorem bpP:p1:torus-transport for sigma_k=0 (d=2n); A subset O Lebesgue measurable with A+iota_k=A for all k in Z^{2n} and meas A>0
SOURCE_QUANTIFIERS: G,m0,m_i,a_i,eta; then (a) every S subset U_eta; (b) Psi, O, A
SOURCE_CONCLUSION: (a) U_eta is bounded (¦z_1¦_inf<a_max+eta, ¦z_2¦_inf<P_max+eta, P_max=max m_i sqrt(G m0/a_i)); every S subset U_eta has meas S<=(2(a_max+eta))^{2n}(2(P_max+eta))^{2n}<infinity; (b) S=Psi(A) is measurable (Borel if A is Borel) and 0<meas S=c^{2n} meas(A cap Q) (Q unit cell); if S subset U_eta then 0<meas S<infinity
CONSTANT_SCOPE: none beyond the displayed bounds (a_max, P_max depend on a, m, G, m0)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:mp-a, stepP:p6:mp-b, bpP:p1:torus-transport, bpP:p1:liouville-lattice, bpP:p1:chart, bpP:p0:circular#circularTube, bpP:p0:circular#circularPoint, bpP:p6:conv#data, bpP:p6:tube-constants#a-max
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:mp-a | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L257-L257 | proof step (a)
EDGE: stepP:p6:mp-b | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L258-L258 | proof step (b)
EDGE: bpP:p1:torus-transport | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L253-L253 | lattice compatibility (Q1)-(Q2)
EDGE: bpP:p1:liouville-lattice | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L253-L253 | unit-cell measure formula
EDGE: bpP:p1:chart | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L253-L253 | c-chart Psi
EDGE: bpP:p0:circular#circularTube | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L252-L252 | U_eta
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L252-L252 | circ(phi)
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L250-L252 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:tube-constants#a-max | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L252-L252 | R5: uses a_max=max_i a_i, without assuming pairwise distinct axes or the gap constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6+sol-review-P-h
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p6 — stepP:p6:mp-b

```text
NODE: stepP:p6:mp-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-b@L258-L258
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-b@L258-L258
CONTRACT_ID: stepP:p6:mp-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1 as fixed by bpP:p6:conv#data; G,m0>0; m_i>0; a_i>0; eta>0; (b) Psi a c-chart on an open O subset Ph_{2n} with lattice compatibility (Q1)-(Q2) of Theorem bpP:p1:torus-transport for sigma_k=0 (d=2n); A subset O Lebesgue measurable with A+iota_k=A for all k in Z^{2n} and meas A>0
SOURCE_QUANTIFIERS: Psi, O, A as in (b)
SOURCE_CONCLUSION: measurability, formula, 0<meas Psi(A) iff 0<meas A; and with (a), 0<meas S<infinity for S subset U_eta
CONSTANT_SCOPE: none beyond the displayed bounds (a_max, P_max depend on a, m, G, m0)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:liouville-lattice, stepP:p6:mp-a, bpP:p6:conv#data, bpP:p1:chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:liouville-lattice | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-b@L258-L258 | measurability, formula and positivity
EDGE: stepP:p6:mp-a | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-b@L258-L258 | finiteness from (a)
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-b@L258-L258 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p1:chart | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-b@L258-L258 | R1: the conditional measure result uses the source c-chart package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6+sol-review-P-h
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Validation

Both CORPUS.sha256 and IMPORTS.sha256 verify successfully. The read-only structural slice check reports `P-p6: 59 nodes, 289 edges, 91 coverage items, 0 problems, 0 TODO records (not counted: --structural)`. All 41 pending nodes and all 74 pending coverage items have exactly one row in their respective tables: 34 node PASS, 7 node FAIL, 74 coverage PASS. Replacement parsing and field-change checks also pass.

Packet snapshot SHA-256:

- `docs/graph/P/packets/P-p6.nodes.md`: `1af7c2d72843adc07ed6b14a8a9cc76f8549f144f8ebb2f3ebb11c36ecd03fe7`.
- `docs/graph/P/packets/P-p6.coverage.md`: `0d1294c0f35871fb75b8ee8fed0ffc47070253992121ab1df06d076957c68d0e`.

Read-only application dry run: `P-p6: 7 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 66 PASS nodes`. The tool counts PASS rows by ID across both tables, so its 66 includes duplicate node IDs in coverage; the independent scope check confirms exactly 34 distinct passing node records and 74 passing coverage records. Independent checks confirm exact pending-record coverage without duplicate rows within either table, seven slice-headed complete replacements, verbatim preservation of every nonfailing field, locator-only changes to the six EDGE lines, and one EDGE per DEPS/ROUTES entry on all 41 proposed nodes. `git diff --check -- docs/graph/P/reviews/P-p6-delta.md` exits 0. No packet was applied and no Lean/build command was run.
