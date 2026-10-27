# N-p8 delta topology review

Reviewer: `sol-delta-N-e`. Marker: `delta-N-e`. Verdict: **FAIL**.

Scope: exactly 26 PROPOSED nodes (21 PASS, 5 FAIL) and 53 PROPOSED coverage items (53 PASS, 0 FAIL). The earlier slice reviewer is `sol-review-N-e`; this session did not author that review or its replacement text. Reviewed records outside this scope are prerequisite context only.

Read AGENTS.md, PLAN, DECISIONS, the complete N DELTA-BRIEF, REVIEW-BRIEF and SPEC, the earlier slice findings and replacements, every proposed statement/proof and EDGE span, and the raw prerequisite statements. Existing wording is retained whenever the contract and topology are accurate. A FAIL block changes only the identified failing fields/EDGE lines; extractor/reviewer/status metadata is preserved verbatim.

## Proposed nodes

| ID | Verdict | Spans re-read | Finding |
|---|---|---|---|
| stepN:p8:lb-basis | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-basis@L43-L43 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:lb-unimod | FAIL | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44 | SOURCE_HYPOTHESES adds proved part (a) as a premise. Basis independence belongs on the existing lb-basis proof edge. |
| stepN:p8:lb-sub | FAIL | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45 | SOURCE_HYPOTHESES adds proved parts (a),(b) as premises; retain the actual subgroup and basis data. The lb-unimod edge applies a same-lattice basis-change result to a possibly proper sublattice. L45 reuses its coordinate argument, not its unimodularity conclusion; lb-basis already supplies the basis coordinates and injectivity. |
| bpN:p8:projection | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L53-L63; blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L64-L68 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| bpN:p8:lattice-volume | FAIL | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L70-L81; blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L82-L88 | SOURCE_CONCLUSION omits the nonzero/integer-vector and independent-generation guards of L76–78. In particular Hadamard is false for unrelated v_i and Γ. |
| stepN:p8:lv-ab | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-ab@L83-L83 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:lv-c | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-c@L84-L84 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:lv-d | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-d@L85-L85 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:lv-f | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-f@L87-L87 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| bpN:p8:maximal | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L101-L111; blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L112-L118 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:mx-exist | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-exist@L114-L114 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:mx-c | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-c@L115-L115 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:mx-d | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-d@L116-L116 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:mx-e | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-e@L117-L117 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| bpN:p8:blocks | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:blocks@L120-L127 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:bc-top | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:bc-top@L135-L135 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| bpN:p8:geometric | FAIL | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L148-L158; blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L169-L180 | Two EDGE locators miss their uses: lattice at L155 points to end{enumerate}, and maximal(d) is used in the d=n parenthesis at L154, not L156. |
| bpN:p8:geom-formula | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geom-formula@L160-L164; blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geom-formula@L165-L167 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:gl-theta | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:gl-setup | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-setup@L172-L172 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:gl-vol | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-vol@L173-L173 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:cv-params | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-params@L197-L197 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:cv-cover | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-cover@L198-L198 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| stepN:p8:cv-radii | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-radii@L200-L200 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |
| bpN:p8:cutoffs | FAIL | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L203-L211; blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L212-L214 | EDGE norm-compare points to the enumeration opener L205 instead of (a) at L206; the nonresonance/maximal-lattice/lattice uses are clause (b) at L207, rather than L206. |
| stepN:p8:co-incl | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:co-incl@L213-L213 | The prior correction resolves its finding; source contract, packages, direct uses, premise supply and locators agree with the raw source. |

## Proposed coverage items

Coverage verdicts concern source-unit dispositions independently of node-field verdicts.

| ID | Verdict | Span re-read | Finding |
|---|---|---|---|
| bpN:p8:direction | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:direction@L11-L13 | Administrative, introductory or pointer material; the actual facts/data are represented by the mapped consumers or their statements. Cross-references were checked for substantive use. |
| stepN:p8:lb-basis | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-basis@L43-L43 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:lb-unimod | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:lb-sub | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| bpN:p8:projection | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:projection@L53-L63 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| bpN:p8:lattice-volume | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L70-L81 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:lv-ab | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-ab@L83-L83 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:lv-c | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-c@L84-L84 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:lv-d | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-d@L85-L85 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:lv-f | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lv-f@L87-L87 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| bpN:p8:totality | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:totality@L90-L92 | Administrative, introductory or pointer material; the actual facts/data are represented by the mapped consumers or their statements. Cross-references were checked for substantive use. |
| bpN:p8:maximal | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:maximal@L101-L111 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:mx-exist | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-exist@L114-L114 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:mx-c | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-c@L115-L115 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:mx-d | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-d@L116-L116 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:mx-e | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:mx-e@L117-L117 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| bpN:p8:blocks | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:blocks@L120-L127 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:bc-top | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:bc-top@L135-L135 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| bpN:p8:geometric | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L148-L158 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| bpN:p8:geom-formula | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geom-formula@L160-L164 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:gl-theta | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-theta@L170-L170 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:gl-setup | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-setup@L172-L172 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:gl-vol | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:gl-vol@L173-L173 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:cv-params | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-params@L197-L197 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:cv-cover | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-cover@L198-L198 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:cv-radii | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:cv-radii@L200-L200 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| bpN:p8:cutoffs | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L203-L211 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| stepN:p8:co-incl | PASS | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:co-incl@L213-L213 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| bpN:p8:errata | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:errata@L218-L227 | Administrative, introductory or pointer material; the actual facts/data are represented by the mapped consumers or their statements. Cross-references were checked for substantive use. |
| bpN:p8:consumers | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:consumers@L229-L231 | Administrative, introductory or pointer material; the actual facts/data are represented by the mapped consumers or their statements. Cross-references were checked for substantive use. |
| heading:bpN:p8 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8@L1-L1 | Section heading; substantive statements and proof units are separately inventoried. |
| heading:bpN:p8:s-ext | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:s-ext@L15-L15 | Section heading; substantive statements and proof units are separately inventoried. |
| heading:bpN:p8:s-volume | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:s-volume@L26-L26 | Section heading; substantive statements and proof units are separately inventoried. |
| heading:bpN:p8:s-blocks | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:s-blocks@L94-L94 | Section heading; substantive statements and proof units are separately inventoried. |
| heading:bpN:p8:s-geometric | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:s-geometric@L138-L138 | Section heading; substantive statements and proof units are separately inventoried. |
| heading:bpN:p8:s-covering | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:s-covering@L182-L182 | Section heading; substantive statements and proof units are separately inventoried. |
| heading:bpN:p8:s-errata | PASS | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:s-errata@L216-L216 | Section heading; substantive statements and proof units are separately inventoried. |
| p8:source-L30 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L30-L30 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:source-L40 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L40-L40 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:source-L50 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L50-L50 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:source-L62 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L62-L62 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:source-L80 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L80-L80 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:source-L98 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L98-L98 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:source-L110 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L110-L110 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:source-L126 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L126-L126 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:source-L131 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L131-L131 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:source-L142 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L142-L142 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:source-L157 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L157-L157 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:source-L194 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L194-L194 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:source-L210 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#source@L210-L210 | Provenance only; the blueprint supplies the represented result and proof, so no provenance edge is retained. |
| p8:prose-L7-L7 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#prose@L7-L7 | Administrative, introductory or pointer material; the actual facts/data are represented by the mapped consumers or their statements. Cross-references were checked for substantive use. |
| p8:prose-L9-L9 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#prose@L9-L9 | The source unit maps to its actual node(s); any node-field failure is recorded separately. |
| p8:prose-L23-L24 | PASS | blueprint-N/parts/p8-resonance-geometry.tex#prose@L23-L24 | Administrative, introductory or pointer material; the actual facts/data are represented by the mapped consumers or their statements. Cross-references were checked for substantive use. |

## Complete replacement blocks

Only the failing fields and EDGE records named above change. All other bytes within each block are preserved.

```text
NODE: stepN:p8:lb-unimod
KIND: step
TITLE: Unimodular
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44
CONTRACT_ID: stepN:p8:lb-unimod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bases A, Ã of Λ
SOURCE_QUANTIFIERS: Λ; A, Ã
SOURCE_CONCLUSION: Ã = AU with U ∈ ℤ^{d×d}, det U = ±1; converse for U unimodular
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p8:lb-basis, bpN:p8:ext-units, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p8:lb-basis | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44 | injectivity (independence) of A
EDGE: bpN:p8:ext-units | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44 | integer det with product 1 is ±1; U⁻¹ integral
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-unimod@L44-L44 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8+sol-review-N-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p8:lb-sub
KIND: step
TITLE: Sublattice
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45
CONTRACT_ID: stepN:p8:lb-sub
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Γ ≤ Λ with equal dimension; bases Ã, A
SOURCE_QUANTIFIERS: Γ, Λ
SOURCE_CONCLUSION: Ã = AN with N integer and det N ≠ 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p8:lb-basis, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p8:lb-basis | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45 | Ã injective by (a)
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#stepN:p8:lb-sub@L45-L45 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8+sol-review-N-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p8:lattice-volume
KIND: lemma
TITLE: Volume
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L70-L81
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L82-L88
CONTRACT_ID: bpN:p8:lattice-volume
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ≥ 1; Λ, Γ ≤ ℤⁿ lattices
SOURCE_QUANTIFIERS: n; Λ, Γ; (c) N; (e) k; (f) v_1..v_d
SOURCE_CONCLUSION: (a) det(AᵀA) independent of basis matrix; (b) ¦Λ¦² positive integer, ¦Λ¦ ≥ 1; (c) Γ ≤ Λ, dim equal ⇒ ¦Γ¦ = ¦det N¦¦Λ¦ ≥ ¦Λ¦; (d) for g ∈ ℤⁿ∖{0}, ¦ℤg¦ = ‖g‖, ¦ℤⁿ¦ = 1; (e) k ∈ ℤⁿ∖W_Λ ⇒ dim(Λ+ℤk) = dim Λ + 1, ¦Λ+ℤk¦ = ¦Λ¦‖Q_Λ k‖, Q_Λ k ≠ 0; (f) if v_1,…,v_d ∈ ℤⁿ are ℝ-independent and generate Γ, then ¦Γ¦ ≤ ∏‖v_i‖
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:lattice, bpN:p8:volume-def, bpN:p8:lattice-basis, bpN:p8:projection, stepN:p8:lv-ab, stepN:p8:lv-c, stepN:p8:lv-d, stepN:p8:lv-e, stepN:p8:lv-f
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L71-L71 | lattices, W_Λ, dim
EDGE: bpN:p8:volume-def | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L71-L80 | ¦Λ¦
EDGE: bpN:p8:lattice-basis | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L75-L75 | N is explicitly the basis-change matrix of lattice-basis(c)
EDGE: bpN:p8:projection | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L77-L77 | Q_Lambda k occurs in the adding-a-vector conclusion
EDGE: stepN:p8:lv-ab | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L83-L83 | proof (a),(b)
EDGE: stepN:p8:lv-c | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L84-L84 | proof (c)
EDGE: stepN:p8:lv-d | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L85-L85 | proof (d)
EDGE: stepN:p8:lv-e | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L86-L86 | proof (e)
EDGE: stepN:p8:lv-f | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:lattice-volume@L87-L87 | proof (f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8+sol-review-N-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p8:geometric
KIND: lemma
TITLE: Geometric Lemma
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L148-L158
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L169-L180
CONTRACT_ID: bpN:p8:geometric
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ≥ 1; K > 0; E > 0; A ≥ E + √2; λ_1..λ_n > 0 with λ_{d+1}/λ_d ≥ AK (1 ≤ d < n); 𝕄_K, δ_Λ, B_Λ as in Definition blocks
SOURCE_QUANTIFIERS: n; K; E; A; λ; (a) ω ∈ B_Θ, k; (b) Λ ∈ 𝕄_K with d ≥ 1, ω ∈ B_Λ, k
SOURCE_CONCLUSION: (a) ω ∈ B_Θ, k ∈ ℤⁿ, 0 < ‖k‖ ≤ K ⇒ ¦k·ω¦ ≥ λ_1; (b) Λ ∈ 𝕄_K, d ≥ 1, ω ∈ B_Λ, k ∈ ℤⁿ∖Λ, ‖k‖ ≤ K ⇒ ¦k·ω¦ ≥ E K δ_Λ and dist₂(ω,R_Λ) < δ_Λ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:blocks, bpN:p8:maximal, bpN:p8:lattice, stepN:p8:gl-theta, stepN:p8:gl-theta2, stepN:p8:gl-setup, stepN:p8:gl-vol, stepN:p8:gl-proj, stepN:p8:gl-div, bpN:p8:klattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:blocks | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L149-L152 | 𝕄_K, δ_Λ, B_Λ
EDGE: bpN:p8:maximal | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L154-L154 | (d): no such k when d = n
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L154-L154 | R_Λ, d
EDGE: stepN:p8:gl-theta | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L170-L170 | proof (a)
EDGE: stepN:p8:gl-theta2 | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L171-L171 | proof (a)
EDGE: stepN:p8:gl-setup | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L172-L172 | proof (b)
EDGE: stepN:p8:gl-vol | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L173-L173 | proof (b)
EDGE: stepN:p8:gl-proj | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L174-L174 | proof (b)
EDGE: stepN:p8:gl-div | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L177-L177 | proof (b)
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:geometric@L151-L151 | the maximal K-lattice family or its dimension stratum is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8+sol-review-N-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Statement lines L148-L158; the separate proof environment is L169-L180. Candidate edge to geom-formula moved to the proof steps (gl-setup, gl-proj, gl-div), where it is used.
```

```text
NODE: bpN:p8:cutoffs
KIND: corollary
TITLE: Euclidean versus $\ell^1$ cut-offs; interface for Parts~\ref{bpN:p6}, \ref{bpN:p7} and~9
STATEMENT_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L203-L211
PROOF_SOURCE: blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L212-L214
CONTRACT_ID: bpN:p8:cutoffs
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of Lemma covering with K = K_g; K_a ≥ 0 analytic cut-off; (b) K_a ≤ K_g; (c) K_g ≥ √n K_a > 0
SOURCE_QUANTIFIERS: n; K_g; K_a; Λ ∈ 𝕄_{K_g}; I ∈ D_Λ; k
SOURCE_CONCLUSION: (a) Z_{K_a} ⊂ ℰ_{K_a} ⊂ Z_{√n K_a}; (b) K_a ≤ K_g ⇒ I is (α_Λ,K_a)-nonresonant modulo Λ (¦k·ω(I)¦ ≥ α_Λ for k ∈ Z_{K_a}∖Λ) and dist₂(ω(I),R_Λ) < δ_Λ; (c) K_g ≥ √n K_a ⇒ r_Λ = α_Λ/(pMK_g) ≤ α_Λ/(p√n M K_a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p8:covering, bpN:p1:norm-compare, bpN:p6:setting, bpN:p7:resonance-data, bpN:p8:klattice, stepN:p8:co-incl, bpN:p8:lattice
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p8:covering | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L204-L204 | setting, r_Λ, α_Λ, δ_Λ, D_Λ
EDGE: bpN:p1:norm-compare | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L206-L206 | (a) via norm-compare(b)
EDGE: bpN:p6:setting | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L207-L207 | nonresonance modulo Λ of cond-nr; Z_{K_a}
EDGE: bpN:p7:resonance-data | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L207-L207 | closeness to exact Λ-resonances
EDGE: bpN:p8:klattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L207-L207 | Λ ∈ 𝕄_{K_g}
EDGE: stepN:p8:co-incl | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L213-L213 | proof step
EDGE: bpN:p8:lattice | blueprint-N/parts/p8-resonance-geometry.tex#bpN:p8:cutoffs@L207-L207 | lattice objects, their spans/dimensions or the trivial/full lattice are used at this consumer; SPEC requires the package directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p8+sol-review-N-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Candidate edges to bpN:p7:resonant-prop2 (L209: the radius condition of Prop (c) is only matched, not used) and bpN:p8:direction (remark, excluded) dropped: breaks the SPEC candidate cycle through bpN:p8:cutoffs -> p7:resonant-prop2. Consumers (Part 9, 11c) apply (b) and (c).
```

## Source findings, checks and limits

The earlier Part 8 L44 citation defect remains: "by injectivity of A (ext-gram)" cites a fact that assumes injectivity; lb-basis supplies the needed independence. At L45, "as in (b)" reuses coordinates in a basis, not unimodularity for two different lattices. Part 8 L166 likewise compares the projection argument; integer-vector lattice-volume(e) is not applied to real k. No new pinned-paper erratum is claimed. Existing norm adaptations and radius strengthenings in Part 9 L144–162 are retained as documented source deviations; their paper quotations were not independently checked against a PDF.

The earlier Part 9 L67 ball-based citation is not literally applicable to arbitrary P, but the exact local assertion follows from already permitted arbitrary-open-domain regularity and scalar restriction. Likewise L96 reuses the compact-ball maximum method, not the fixed-R_0 contract of omega0. Neither mismatch requires an additional hypothesis or an unsupported SOURCE_GAP. The new full-rank intermediate correctly prevents the contradictory branch premise from entering the nonexceptional proof.

No generic writer quantifier fill "inherits the fixed data and quantifiers of the enclosing proof; no new binders" or mechanical alternative-route EDGE occurs in the proposed nodes. Short inherited-setting fields were checked against their enclosing source statements; they are not failed merely for being abbreviated.

Pin verification: `sha256sum -c docs/graph/N/CORPUS.sha256` returned exit 1 only for `blueprint-N/parts/p0-conventions.tex`; Parts 1–11c, including all assigned slice sources, returned OK. `sha256sum -c docs/graph/N/IMPORTS.sha256` returned exit 1 only for `blueprint-P/parts/p0-conventions.tex`; K Part 1 and the other imports returned OK. P Part 0 is not consumed by these proposed records. The exact pinned N Part 0 was recovered read-only from `git show e3a5f7d:blueprint-N/parts/p0-conventions.tex` and matches hash `5fd30bca0d327d1695f90857c6b0c135cb3842d7f11f4f513521e1f15b7260cc`; its definition and N-HEAD-C text, not shifted live line numbers, supplies the prerequisite checks.

Prerequisite source spans include pinned N Part 0 L20–186 and L205–238; N Part 1 L18–54, L72–120, L147–166, L198–253; N Part 3 L53–57, L470–477, L535–552; N Part 4 L31–55; N Part 6 L30–49; N Part 7 L26–32, L110–112, L127–137, L155–159, L237–251; all of N Parts 8–10; K Part 1 L75–78 and L227–236. No additional external or import is invented.

Only this report is written. No packet, SPEC, frozen file, manifest or generated file is edited. No state-changing git, Lean/build, source-lint or axiom query is run, in accordance with the specific review brief. There are no Lean modules or main Lean results in this deliverable. Concurrent workspace changes remain untouched. Source topology is distinct from proof closure.

Input packet SHA-256:

- `N-p8.nodes.md`: `4814521b9f00ac84f827caae5a44ca05378e086bbf773b377085b641cd12eb45`.
- `N-p8.coverage.md`: `55bab7fa680211c5f2f5f9aae2660ccc6034a769d16234080c304cd56e77f77a`.

Validation receipts are recorded after the report/applier checks.

READY delta-N-e
