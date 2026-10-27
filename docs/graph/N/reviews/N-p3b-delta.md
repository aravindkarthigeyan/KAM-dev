# N-p3b delta topology review

Reviewer: sol-delta-N-c. Marker: delta-N-c. The slice reviewer was sol-review-N-c, a different reviewer.

Verdict: FAIL. Reviewed every remaining PROPOSED record: 21 nodes and 61 coverage items. The substantive source-field and dependency corrections in the first review resolve their recorded failures. The remaining failures below are EDGE locators only; all other fields of their replacement blocks are retained verbatim. This verdict concerns source topology, with no inference about Lean implementation or proof status.

The table distinguishes node and coverage records because their IDs can coincide. Spans below are in `blueprint-N/parts/p3-hamiltonian-ode.tex`; statement/proof and every EDGE span of each proposed node were re-read. The complete Part 3 source, the governing SPEC and both briefs, the original slice review and the relevant prerequisite records were checked. Cross-part source checks included Part 1 L68-L110, current Part 0 definitions and domain identity, K Part 1 L75-L78, and I Part 0 L122-L128. Frozen definition bodies and manifest identity fields were used only for interface comparison.

## Per-record verdicts

| ID | Verdict | Record | Spans re-read | Reason |
|---|---|---|---|---|
| bpN:p3:gen-exit | PASS | node | L328-L341; L342-L350; EDGE L329-L329; EDGE L338-L338; EDGE L343-L343; EDGE L345-L345; EDGE L347-L347; EDGE L349-L349 | The backwards-time reference is correctly at L338. The source statement, including the continuity-only observation, is retained. |
| stepN:p3:exit-closed | PASS | node | L343-L343; EDGE L343-L343 | The solution premise is restored and the elementary continuity consequence is directly linked. |
| stepN:p3:exit-min | PASS | node | L345-L345; EDGE L345-L345 | A nonempty exit-set branch uses the previously established relative closedness to obtain a positive attained minimum. |
| stepN:p3:exit-bdry | PASS | node | L347-L347; EDGE L347-L347 | The attained minimum supplies nonmembership and continuity supplies closure membership, under the original source premises. |
| stepN:p3:exit-sup | PASS | node | L349-L349; EDGE L349-L349 | The source solution setting is restored and the minimum/boundary steps supply the supremum characterization. |
| bpN:p3:ham-smooth | PASS | node | L377-L381; L382-L386; EDGE L378-L378; EDGE L383-L383; EDGE L385-L385 | The frozen-field locator now points to L378; the C^{k+1} and open-domain premises are unchanged. |
| stepN:p3:hs-comp | PASS | node | L385-L385; EDGE L385-L385 | Ck regularity of DH is supplied by hs-deriv; the frozen-field definition supplies its coordinate evaluations. |
| stepN:p3:en-chain | PASS | node | L395-L395; EDGE L395-L395 | Only pointwise H differentiability and the genuine derivative of z are used; the chain rule and frozen-field expression are linked. |
| stepN:p3:en-const | PASS | node | L399-L399; EDGE L399-L399 | Derivative zero and continuity are derived from en-chain/en-cancel; they are no longer new source hypotheses. |
| stepN:p3:per-field | PASS | node | L409-L409; EDGE L409-L409 | The invariant-domain condition and integer-shift scope are restored; the source total-fderiv convention is retained. |
| stepN:p3:per-sol | PASS | node | L411-L411; EDGE L411-L411 | The original periodic-H/invariant-domain and solution premises are restored; field periodicity is supplied by per-field before applying gen-symmetry(c). |
| stepN:p3:red-mem | PASS | node | L429-L429 | This is product membership by definition of W_U; the extraneous solution-predicate edges were correctly removed. |
| stepN:p3:red-diff | PASS | node | L431-L431; EDGE L431-L431 | The open C2 ambient domain and containment supply differentiability and C1 of the field; both frozen predicates and IsSolIn are linked. |
| bpN:p3:s-N#data | PASS | node | L472-L477; EDGE L473-L473; EDGE L474-L474; EDGE L475-L475 | The analytic predicates and H are the source data; the real-domain equality and its definition references now have valid consumer locators. |
| stepN:p3:hi-cite | PASS | node | L485-L485; EDGE L485-L485 | Part 1 holo-real(b)-(d) has the same analytic premises and open real domain; the fixed section-data edge supplies them. |
| bpN:p3:local-exist | FAIL | node | L502-L507; L508-L511; EDGE L502-L502; EDGE L504-L505; EDGE L509-L509; EDGE L510-L510 | The standing-data EDGE points only to the theorem heading at L502. The use of the fixed U and H occurs in the local-existence statement at L503-L504. Change only that EDGE locator. |
| stepN:p3:le-red | PASS | node | L509-L509; EDGE L509-L509 | holo-input supplies C2 on W_s and section data supplies U containment, so ham-reduction supplies the predicate equivalence and C1 field. |
| stepN:p3:le-apply | PASS | node | L510-L510; EDGE L510-L510 | le-red supplies the general solution predicates and C1/open-domain data; gen-local and gen-uniqueness supply existence and comparison. |
| stepN:p3:uc-apply | PASS | node | L541-L541; EDGE L541-L541 | Nonnegative L, both genuine frozen solutions and their initial equality are restored; the uniqueness clause applies on [-L,L]. |
| stepN:p3:cg-set | PASS | node | L554-L554; EDGE L554-L554 | The closed action ball is compact and inside U; analytic regularity, periodicity and ham-reduction discharge the periodic uniform-data lemma. |
| stepN:p3:cg-glue | PASS | node | L555-L556; EDGE L555-L555; EDGE L556-L556; EDGE L555-L556 | The a priori hypothesis is converted via ham-reduction and the cylinder data comes from cg-set before applying general confinement. |
| bpN:p3:gen-exit | PASS | coverage | L328-L341 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:exit-closed | PASS | coverage | L343-L343 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:exit-min | PASS | coverage | L345-L345 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:exit-bdry | PASS | coverage | L347-L347 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:exit-sup | PASS | coverage | L349-L349 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| bpN:p3:gen-invariant | PASS | coverage | L352-L356 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| bpN:p3:gen-barrier | PASS | coverage | L358-L363 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:barrier-fwd | PASS | coverage | L365-L365 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:barrier-bwd | PASS | coverage | L367-L367 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| bpN:p3:ham-smooth | PASS | coverage | L377-L381 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:hs-comp | PASS | coverage | L385-L385 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:en-chain | PASS | coverage | L395-L395 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:en-const | PASS | coverage | L399-L399 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:per-field | PASS | coverage | L409-L409 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:per-sol | PASS | coverage | L411-L411 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:red-mem | PASS | coverage | L429-L429 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:red-diff | PASS | coverage | L431-L431 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| bpN:p3:newton-reduction | PASS | coverage | L434-L449 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:nr-smooth | PASS | coverage | L451-L451 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:nr-pair | PASS | coverage | L453-L453 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| bpN:p3:newton-continuation | PASS | coverage | L456-L462 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:nc-data | PASS | coverage | L464-L465 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:nc-apply | PASS | coverage | L467-L467 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:hi-cite | PASS | coverage | L485-L485 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:hi-reg | PASS | coverage | L487-L487 | Explicitly for orientation: repeats Part 1 argument already consumed at hi-cite; SPEC excludes these repetition edges. |
| stepN:p3:hi-per | PASS | coverage | L489-L489 | Explicitly for orientation: repeats Part 1 argument already consumed at hi-cite; SPEC excludes these repetition edges. |
| bpN:p3:lipschitz | PASS | coverage | L492-L496 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:lip-smooth | PASS | coverage | L498-L498 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:lip-lip | PASS | coverage | L499-L499 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| bpN:p3:local-exist | PASS | coverage | L502-L507 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:le-red | PASS | coverage | L509-L509 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:le-apply | PASS | coverage | L510-L510 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| bpN:p3:energy | PASS | coverage | L513-L517 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:en-direct | PASS | coverage | L519-L519 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| bpN:p3:continuation | PASS | coverage | L522-L529 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:co-general | PASS | coverage | L531-L531 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:co-periodic | PASS | coverage | L532-L532 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| stepN:p3:uc-apply | PASS | coverage | L541-L541 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:cg-set | PASS | coverage | L554-L554 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:cg-glue | PASS | coverage | L555-L556 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| heading:bpN:p3:s-exit | PASS | coverage | L326-L326 | Heading only; substantive units have their own dispositions. |
| heading:bpN:p3:s-ham | PASS | coverage | L370-L370 | Heading only; substantive units have their own dispositions. |
| heading:bpN:p3:s-frozen | PASS | coverage | L414-L414 | Heading only; substantive units have their own dispositions. |
| heading:bpN:p3:s-N | PASS | coverage | L470-L470 | Heading only; substantive units have their own dispositions. |
| heading:bpN:p3:s-index | PASS | coverage | L559-L559 | Heading only; substantive units have their own dispositions. |
| p3:source-L340 | PASS | coverage | L340-L340 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L380 | PASS | coverage | L380-L380 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L392 | PASS | coverage | L392-L392 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L406 | PASS | coverage | L406-L406 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L426 | PASS | coverage | L426-L426 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L448 | PASS | coverage | L448-L448 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L482 | PASS | coverage | L482-L482 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L495 | PASS | coverage | L495-L495 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L506 | PASS | coverage | L506-L506 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L516 | PASS | coverage | L516-L516 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L528 | PASS | coverage | L528-L528 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L538 | PASS | coverage | L538-L538 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L551 | PASS | coverage | L551-L551 | Provenance only; the mathematical input or proof is represented separately. |
| p3:prose-L372-L375 | PASS | coverage | L372-L375 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| p3:prose-L472-L477 | PASS | coverage | L472-L477 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| p3:prose-L561-L574 | PASS | coverage | L561-L574 | Introduction, pointer list or label index; no extra proof input is hidden by the exclusion. |

All PROPOSED coverage items PASS. A node with a failed EDGE locator can still have a correct NODE coverage disposition.

## Replacement blocks

Only the failing EDGE locator is changed in each complete block. No statement premise, quantifier, conclusion, dependency target, or metadata field is changed. These blocks remain PROPOSED for a different reviewer to check.

```text
NODE: bpN:p3:local-exist
KIND: theorem
TITLE: Local existence and uniqueness for $\texttt{IsSolutionOn}$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L502-L507
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L508-L511
CONTRACT_ID: bpN:p3:local-exist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data of §s-N (bpN:p3:s-N#data), U ⊂ B(0,R+s) open; t₀ ∈ ℝ; z₀ ∈ ℝⁿ × U; for uniqueness: J an interval, t₀ ∈ J, y₁, y₂ with IsSolutionOn H U J y_i and y₁(t₀) = y₂(t₀)
SOURCE_QUANTIFIERS: R, s; h; f; ε; U; t₀; z₀ (resp. J, y₁, y₂)
SOURCE_CONCLUSION: there are ε' > 0 and y : ℝ → P with y(t₀) = z₀ and IsSolutionOn H U (t₀−ε',t₀+ε') y (both time directions); and y₁ = y₂ on J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:s-N#data, bpN:p0:sol#IsSolutionOn, stepN:p3:le-red, stepN:p3:le-apply
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:s-N#data | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L503-L504 | standing data of §s-N (H, U)
EDGE: bpN:p0:sol#IsSolutionOn | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L504-L505 | the source local-existence and uniqueness clauses use IsSolutionOn here
EDGE: stepN:p3:le-red | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L509-L509 | reduction to the general predicate
EDGE: stepN:p3:le-apply | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L510-L510 | existence and uniqueness
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3b+sol-review-N-c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Cross-checks and source limits

The repaired source hypotheses retain the enclosing assumptions; locally constructed witnesses and prior conclusions remain supplied by their dependencies. The uniform-data and solution packages are linked where used. The two gen-lip routes remain alternative routes for the Lipschitz clause, with boundedness common to both. No mechanical route EDGE or generic step quantifier introduced an unsupported premise or an extra conjunct in the pending records.

The read-only DEPS/ROUTES closure walk from the four SPEC roots reaches all 51 N-p3a nodes and all 29 N-p3b nodes. A reference scan through the SPEC corpus (Parts 0-11c, excluding Part 12) confirms the optional ext-pl-c1, barrier/invariant, Newtonian and unused track-N-specialization exclusions. In particular, continuation is mentioned by Part 10 only in its list/interface prose; confinement-glue uses the general confinement route. No replacement revives those excluded results.

Part 3 matches its pinned SHA256: `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d`. This is not a claim that all corpus/import pins are current. The first review's separately reported Part 0/global pin issues are outside these delta edits.

The existing suspected blueprint defect at Part 3 L405 remains: `H∘(z+(k,0))=H∘z` lacks restriction to J, whereas the solution is controlled only on J. The frozen statement and source are not silently repaired here; ham-periodic is not among this slice's pending node records. No new pinned-paper erratum or analytic deviation is asserted.

No Lean, build, implementation/provider inspection, manifest-state inspection or state-changing git operation was run. Only the two requested delta Markdown files are written. Replacement-application checks are dry runs only.

Input snapshot:

- `N-p3b.nodes.md`: `fffeaec0aa9ade1ca7c234ec7a71711a88e947bde3e7df88e5bc9ef9a62a5c42`.
- `N-p3b.coverage.md`: `bcf45516b0c75be778f12cb2c5acfb3f4b0851b752bd377f02a10c19fa791c4a`.

## Validation receipts

- Exact inventory check: 21 PROPOSED nodes and 61 PROPOSED coverage items each have one row; 20 node PASS, 1 node FAIL, 61 coverage PASS. Input snapshot hashes still match.
- Replacement comparison: every complete replacement differs from its input block in exactly one EDGE line, and only its line range changes; all other bytes of the block are retained.
- `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_apply_review.py docs/graph/N/packets N-p3b docs/graph/N/reviews/N-p3b-delta.md sol-delta-N-c --dry-run`: exit 0; 1 replaced, 0 added, 0 coverage replacements, 0 unresolved FAILs. The parser's combined PASS count includes coverage rows sharing node IDs; the per-record counts above are authoritative.
- Whitespace check and scoped `git diff --check`: PASS, exit 0. No packet was changed.
