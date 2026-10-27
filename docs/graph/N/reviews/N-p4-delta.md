# N-p4 delta topology review

Reviewer: sol-delta-N-b. Marker: delta-N-b. Verdict: **FAIL**.

Independently reviewed all 18 nodes still marked TOPOLOGY_STATUS: PROPOSED and all 52 items still marked COVERAGE_STATUS: PROPOSED. The slice reviewer was sol-review-N-b, distinct from this reviewer. Read DELTA-BRIEF, REVIEW-BRIEF and SPEC including its rulings, both slice reviews and current packets, the raw Parts 4–5, the relevant Part 3 statements, and the consumed K statements. Previously REVIEWED records are context, not re-certified here.

The checks follow the convergence rule: accurate records PASS without wording changes. Replacement blocks below keep every non-failing field verbatim. PROPOSED coverage items each receive a separate row, even when their ID is also a node ID. All package/definition edges and consumer EDGE locators were checked against the raw proof; bounded holomorphic/periodic premises and parameter-integral continuity were checked at applications. There are no route nodes, nonempty ROUTES fields, or mechanically added route EDGE lines in either assigned packet. Filled SOURCE_QUANTIFIERS were checked with their SOURCE_HYPOTHESES and local proof binders; a compact inherited-data description is accepted when it introduces no new binders or premises.

The first review’s missing package links and source-hypothesis repairs are present. Local domain and projection definitions are expanded without adding a definition/proof cycle. The broad ext-weier proof range is explicitly documented as two endpoint proof portions, not a conjunction with all intervening results, and passes. Its derivative argument uses general-cauchy before applying K uniform-limits on interior neighbourhoods. The only remaining failed node below needs a locator correction.

## Proposed nodes

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpN:p4:ext-weier | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L26-L27; blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L26-L177 | The proof locator now includes L177; both mandated prerequisites remain. The derivative-Cauchy argument precedes the conditional K uniform-limit application. |
| stepN:p4:dom-open | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-open@L41-L41 | Local definitions avoid a parent cycle; the strip edge and original width/data premises are present. |
| stepN:p4:dom-poly | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-poly@L43-L44 | The strip edge is present; the enclosing positive widths and local polydisc hypotheses are retained. |
| stepN:p4:co-deriv | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L73 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p4:co-repr | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L80 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p4:b1-a | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L96 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p4:b2-class | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p4:b2-coeff | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L114 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p4:b2-norm | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p4:b3-a | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p4:b3-b | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L135-L139 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| bpN:p4:bracket | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L146-L150; blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L151-L164 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p4:b4-four | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L157 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p4:b4-prod | FAIL | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L163 | The added setting edge points at L160, an angular Cauchy bound. Its bracket use is the substitution into the bracket estimate at L163. Move this EDGE locator only. |
| stepN:p4:c1-line | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-line@L173-L173 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p4:c1-cauchy | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p4:pr-class | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189 | Package edges and original hypotheses are restored; local projection definitions avoid a parent cycle. |
| stepN:p4:pr-tail | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191 | Original finite-norm/tail premises and all direct packages are present; local definitions are attached in NOTE. |

## Proposed coverage items

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpN:p4:ext-weier | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:ext-weier@L26-L27 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:dom-open | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-open@L41-L41 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:dom-poly | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:dom-poly@L43-L44 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:co-deriv | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-deriv@L72-L73 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:co-repr | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:co-repr@L79-L80 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:b1-a | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b1-a@L95-L96 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:b2-class | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-class@L111-L111 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:b2-coeff | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-coeff@L113-L114 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:b2-norm | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b2-norm@L116-L117 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:b3-a | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-a@L132-L133 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:b3-b | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b3-b@L135-L139 | Correctly maps this inventoried source unit to its existing node(s). |
| bpN:p4:bracket | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L146-L150 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:b4-four | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-four@L154-L157 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:b4-prod | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L163 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:c1-line | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-line@L173-L173 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:c1-cauchy | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:c1-cauchy@L175-L175 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:pr-class | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-class@L189-L189 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p4:pr-tail | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:pr-tail@L191-L191 | Correctly maps this inventoried source unit to its existing node(s). |
| bpN:p4:sharp | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sharp@L201-L205 | Exclusion confirmed: outside every root closure; owned by the importing graph (track P): the ♯-norm variants are used only by track P's averaging (and by bpN:p5:sharp-composition, also excluded); checked by grep of blueprint-N/parts/p6..p11 for bpN:p4:sharp, \sharp, sharp-composition: no match, so no proof in Parts 6-11 consumes any ♯ result |
| stepN:p4:sh-b1 | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b1@L208-L208 | Exclusion confirmed: outside every root closure; owned by the importing graph (track P): the ♯-norm variants are used only by track P's averaging (and by bpN:p5:sharp-composition, also excluded); checked by grep of blueprint-N/parts/p6..p11 for bpN:p4:sharp, \sharp, sharp-composition: no match, so no proof in Parts 6-11 consumes any ♯ result |
| stepN:p4:sh-b2 | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b2@L209-L209 | Exclusion confirmed: outside every root closure; owned by the importing graph (track P): the ♯-norm variants are used only by track P's averaging (and by bpN:p5:sharp-composition, also excluded); checked by grep of blueprint-N/parts/p6..p11 for bpN:p4:sharp, \sharp, sharp-composition: no match, so no proof in Parts 6-11 consumes any ♯ result |
| stepN:p4:sh-b3 | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b3@L210-L210 | Exclusion confirmed: outside every root closure; owned by the importing graph (track P): the ♯-norm variants are used only by track P's averaging (and by bpN:p5:sharp-composition, also excluded); checked by grep of blueprint-N/parts/p6..p11 for bpN:p4:sharp, \sharp, sharp-composition: no match, so no proof in Parts 6-11 consumes any ♯ result |
| stepN:p4:sh-b4 | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-b4@L211-L211 | Exclusion confirmed: outside every root closure; owned by the importing graph (track P): the ♯-norm variants are used only by track P's averaging (and by bpN:p5:sharp-composition, also excluded); checked by grep of blueprint-N/parts/p6..p11 for bpN:p4:sharp, \sharp, sharp-composition: no match, so no proof in Parts 6-11 consumes any ♯ result |
| stepN:p4:sh-pr | PASS | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:sh-pr@L212-L212 | Exclusion confirmed: outside every root closure; owned by the importing graph (track P): the ♯-norm variants are used only by track P's averaging (and by bpN:p5:sharp-composition, also excluded); checked by grep of blueprint-N/parts/p6..p11 for bpN:p4:sharp, \sharp, sharp-composition: no match, so no proof in Parts 6-11 consumes any ♯ result |
| bpN:p4:dictionary | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:dictionary@L215-L223 | Exclusion confirmed: administrative remark (comparison with Pöschel's normalisation; track P/I cite it): no track-N proof consumes it as a result; cited only in \source/'see Remark' pointers (sup-weighted L91, cauchy L129) and in Part 6 L13 / Part 7 Remark p7:dictionary L277 notation/dictionary paragraphs whose arithmetic is stated 'redone in our variables, not dependent on either dictionary'; checked by grep of blueprint-N/parts for p4:dictionary; owned by the importing graph |
| heading:bpN:p4 | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4@L1-L1 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p4:s-ext | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:s-ext@L20-L20 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p4:s-def | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:s-def@L32-L32 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p4:s-b1 | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:s-b1@L83-L83 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p4:s-b2 | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:s-b2@L103-L103 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p4:s-b3 | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:s-b3@L120-L120 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p4:s-b4 | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:s-b4@L142-L142 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p4:s-c1 | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:s-c1@L166-L166 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p4:s-proj | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:s-proj@L179-L179 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p4:s-sharp | PASS | blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:s-sharp@L194-L194 | Exclusion confirmed: section heading; its results are inventoried separately |
| p4:source-L38 | PASS | blueprint-N/parts/p4-weighted-norms.tex#source@L38-L38 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p4:source-L53 | PASS | blueprint-N/parts/p4-weighted-norms.tex#source@L53-L53 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p4:source-L66 | PASS | blueprint-N/parts/p4-weighted-norms.tex#source@L66-L66 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p4:source-L92 | PASS | blueprint-N/parts/p4-weighted-norms.tex#source@L92-L92 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p4:source-L108 | PASS | blueprint-N/parts/p4-weighted-norms.tex#source@L108-L108 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p4:source-L129 | PASS | blueprint-N/parts/p4-weighted-norms.tex#source@L129-L129 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p4:source-L149 | PASS | blueprint-N/parts/p4-weighted-norms.tex#source@L149-L149 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p4:source-L170 | PASS | blueprint-N/parts/p4-weighted-norms.tex#source@L170-L170 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p4:source-L186 | PASS | blueprint-N/parts/p4-weighted-norms.tex#source@L186-L186 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p4:source-L204 | PASS | blueprint-N/parts/p4-weighted-norms.tex#source@L204-L204 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p4:prose-L7-L10 | PASS | blueprint-N/parts/p4-weighted-norms.tex#prose@L7-L10 | Exclusion confirmed: outline/pointer: section introduction (Appendix B/C, shared with track P, statements for arbitrary D ⊂ ℂ^m); the max-norm convention is recorded in the source fields of bpN:p4:domains and bpN:p4:norm |
| p4:prose-L12-L17 | PASS | blueprint-N/parts/p4-weighted-norms.tex#prose@L12-L17 | Correctly maps this inventoried source unit to its existing node(s). |
| p4:prose-L21-L22 | PASS | blueprint-N/parts/p4-weighted-norms.tex#prose@L21-L22 | Exclusion confirmed: pointer: wrapper of the external-facts list ('Besides K ext-cauchy, ext-integral, ext-fourier, ext-mvt, the proofs use'); the K results are linked from the proofs that use them: ext-cauchy at stepN:p4:b3-b and c1-cauchy, ext-integral via bpN:p4:ext-series (note) and K:summation steps; ext-fourier and ext-mvt are not consumed in Part 4 |
| p4:prose-L55-L55 | PASS | blueprint-N/parts/p4-weighted-norms.tex#prose@L55-L55 | Correctly maps this inventoried source unit to its existing node(s). |
| p4:prose-L144-L144 | PASS | blueprint-N/parts/p4-weighted-norms.tex#prose@L144-L144 | Correctly maps this inventoried source unit to its existing node(s). |
| p4:prose-L177-L177 | PASS | blueprint-N/parts/p4-weighted-norms.tex#prose@L177-L177 | Correctly maps this inventoried source unit to its existing node(s). |
| p4:prose-L196-L199 | PASS | blueprint-N/parts/p4-weighted-norms.tex#prose@L196-L199 | Exclusion confirmed: outside every root closure; owned by the importing graph (track P): definition of the ♯ norm and the width conversion for track P's averaging; only bpN:p4:sharp (excluded) uses it; checked by grep of Parts 6-11 for sharp, \sharp: no consumer |

All proposed coverage items PASS. A node’s remaining field or edge defect does not invalidate an accurate inventory disposition mapping to that node. The ♯ results and their steps have no consumer in the four SPEC roots; searches over Parts 0–3 and 6–11 confirm that remaining dictionary mentions are notation/provenance or are recomputed, and no root proof consumes a ♯ estimate. Part 12 and the D28 additions remain outside this SPEC scope.

## Replacement fragments

```text
NODE: stepN:p4:b4-prod
KIND: step
TITLE: Four derivative bounds
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L163
PROOF_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L163
CONTRACT_ID: stepN:p4:b4-prod
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m=n; u ∈ 𝒪(r₀,s₀), v ∈ 𝒪(r,s), both of finite norm; 0<ρ<r, 0<σ<s, r−ρ<r₀, s−σ<s₀; I ∈ V_{r−ρ}D; t := s−σ
SOURCE_QUANTIFIERS: D,n; r₀,s₀,r,s; u,v; ρ,σ subject to the bracket hypotheses; then I∈V_{r−ρ}D; t:=s−σ
SOURCE_CONCLUSION: Σ_i¦∂_{θ_i}u¦_{I,t} ≤ ¦u¦_{r_0,s_0}/(e(s_0−s+σ)); max_i¦∂_{I_i}u¦_{I,t} ≤ ¦u¦_{r_0,s_0}/(r_0−r+ρ); Σ_i¦∂_{θ_i}v¦_{I,t} ≤ ¦v¦_{r,s}/(eσ); max_i¦∂_{I_i}v¦_{I,t} ≤ ¦v¦_{r,s}/ρ; inserting and taking sup over I last gives the claim
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:cauchy, bpN:p4:norm#monotone, stepN:p4:b4-four, bpN:p4:domains, bpN:p4:norm, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:cauchy | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L160-L162 | (a) pointwise and (b) global bounds of the four derivative factors
EDGE: bpN:p4:norm#monotone | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L159-L159 | monotonicity of the norm in both widths
EDGE: stepN:p4:b4-four | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L163-L163 | the display into which the four bounds are inserted
EDGE: bpN:p4:domains | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L160-L160 | I ∈ V_{r_0}D since r−ρ < r_0
EDGE: bpN:p4:norm | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L160-L162 | ¦·¦_{I,s}, ¦·¦_{r,s}
EDGE: bpN:p5:setting | blueprint-N/parts/p4-weighted-norms.tex#stepN:p4:b4-prod@L163-L163 | Uses the Hamiltonian Poisson bracket fixed in Part 5; SPEC requires its package edge
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p4+sol-review-N-b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Source defects and review limits

No new mathematical source defect is asserted. The first review’s zero-dimensional exponential-sum caveat remains: K exp-sums states n≥1; the empty-index cases in Part 4 are elementary and no stronger imported contract is assumed. The ext-weier claim’s derivative-limit obligation is represented by its existing general-cauchy dependency and L177.

Assigned Part 4, Part 5, Part 3 and consumed K-source hashes match the pins. Full hash inventory: CORPUS has 13 matches and the known Part 0 mismatch; IMPORTS has three matches and the known P Part 0 mismatch. These unrelated pin changes are not certified by this scoped delta review. No assigned node is a frozen anchor; only the relevant frozen strip/vector-field definitions and manifest identity data were consulted. No theorem proof bodies, providers, manifest state fields, Lean commands, builds, state-changing git, or packet edits were used. Only this delta report is written.

## Validation receipts

- Independent inventory check: 18 node rows: 17 PASS, 1 FAIL; 52 coverage rows: all PASS. Every currently PROPOSED record appears once in its own node or coverage table.
- Full replacement-block check: unique IDs, exactly matching DEPS/EDGE target order, valid source bounds; non-failing fields remain verbatim. No coverage replacement is needed.
- `python3 scripts/depgraph_apply_review.py docs/graph/N/packets N-p4 docs/graph/N/reviews/N-p4-delta.md sol-delta-N-b --dry-run`: 1 replaced, 0 added, 0 coverage items, 0 unresolved FAILs. Its printed PASS total also counts coverage IDs matching nodes; the independent node counts are given above.
- In-memory simulation of the combined packets with these replacements: 0 unresolved targets; 0 cycles (including ROUTES). This is a structural check, not acceptance of unassigned records.
- Reports pass independent table/fence/whitespace checks and `git diff --check -- docs/graph/N/reviews/N-p4-delta.md docs/graph/N/reviews/N-p5-delta.md` (exit 0). The files are new, so their content was checked independently of git’s tracked-file diff.
