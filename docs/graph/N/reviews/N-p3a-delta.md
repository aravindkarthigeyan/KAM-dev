# N-p3a delta topology review

Reviewer: sol-delta-N-c. Marker: delta-N-c. The slice reviewer was sol-review-N-c, a different reviewer.

Verdict: FAIL. Reviewed every remaining PROPOSED record: 33 nodes and 56 coverage items. The substantive source-field and dependency corrections in the first review resolve their recorded failures. The remaining failures below are EDGE locators only; all other fields of their replacement blocks are retained verbatim. This verdict concerns source topology, with no inference about Lean implementation or proof status.

The table distinguishes node and coverage records because their IDs can coincide. Spans below are in `blueprint-N/parts/p3-hamiltonian-ode.tex`; statement/proof and every EDGE span of each proposed node were re-read. The complete Part 3 source, the governing SPEC and both briefs, the original slice review and the relevant prerequisite records were checked. Cross-part source checks included Part 1 L68-L110, current Part 0 definitions and domain identity, K Part 1 L75-L78, and I Part 0 L122-L128. Frozen definition bodies and manifest identity fields were used only for interface comparison.

## Per-record verdicts

| ID | Verdict | Record | Spans re-read | Reason |
|---|---|---|---|---|
| bpN:p3:gen-sol#consequences | PASS | node | L95-L99; EDGE L95-L95 | The replacement separates (i)-(ii) from the independent open-set local-equality equivalence (iii); it adds no solution premise to (iii). |
| stepN:p3:sym | PASS | node | L112-L113; EDGE L112-L112; EDGE L113-L113 | Translation has the full invariant-domain and periodic-field premises; reversal does not require C1 unless its C1 preservation clause is used. |
| stepN:p3:lip-explicit | PASS | node | L124-L133; EDGE L126-L126; EDGE L130-L130 | The Lipschitz conclusion is now stated. The parent keeps boundedness as a common prerequisite and the Mathlib and explicit arguments as alternative ROUTES; no conjunction of alternatives is introduced. |
| stepN:p3:lip-bdd | PASS | node | L124-L124; EDGE L124-L124 | Source C1/open-set and compact-set premises retained; the bound is a constructed output supplied by the compactness external. |
| stepN:p3:lip-contra | FAIL | node | L126-L128; EDGE L127-L127 | The lip-bdd EDGE locates the use of M at L127; M is used in the inequality 2M/k at L128. Change only that EDGE locator. |
| stepN:p3:lip-compact | PASS | node | L130-L133; EDGE L131-L131; EDGE L132-L132 | The subsequence, limit, neighborhood and local constant are chosen in the source order; sequential compactness and local Lipschitzness have direct edges. |
| stepN:p3:uc-data | PASS | node | L153-L153; EDGE L153-L153 | K_delta comes from uc-delta; gen-lip supplies M,L and the gen-uniform edge records the verified ball clauses. |
| stepN:p3:up-cell | PASS | node | L162-L164; EDGE L162-L163; EDGE L163-L163; EDGE L164-L164; EDGE L162-L162 | Empty-K and U=R^n branches are retained; the collar, compact cell and constants are constructed rather than assumed. |
| stepN:p3:up-translate | PASS | node | L166-L168; EDGE L166-L166; EDGE L167-L168 | The max norm and integer periodicity give the same bounds on each translated ball; uniform-data edge matches the actual verification. |
| stepN:p3:short-boot | FAIL | node | L181-L183; EDGE L181-L181; EDGE L182-L182 | The continuity/closedness EDGE points only to the definition of A and s* at L182; the continuity argument and A being closed occur at L183. |
| stepN:p3:short-ext | PASS | node | L185-L187; EDGE L185-L185; EDGE L186-L186 | The original derivative and ball-bound premises are restored; continuity and the mean value inequality remain supplied through their edges. |
| bpN:p3:gen-uniform-exist | PASS | node | L190-L196; L197-L203; EDGE L191-L191; EDGE L194-L194; EDGE L198-L198; EDGE L202-L202 | The IsSolIn locator now points to L194; the fixed epsilon is chosen before x,t0 and the constructed curve. |
| stepN:p3:ue-pl | PASS | node | L198-L200; EDGE L198-L198 | Mprime=max(M,1), epsilon=delta/Mprime and the quantitative PL premises are explicit; the within derivative becomes two-sided only on the open interval. |
| stepN:p3:ue-stay | PASS | node | L202-L202; EDGE L202-L202 | The constructed curve and the uniform ball data discharge short-time confinement; membership and derivative supply IsSolIn. |
| stepN:p3:loc-red | PASS | node | L212-L212; EDGE L212-L212 | The compact-data package supplies the common time before the initial point/time and solution witnesses; no compactness conclusion is assumed. |
| stepN:p3:uq-compact | PASS | node | L226-L228; EDGE L227-L227; EDGE L226-L226; EDGE L227-L228 | The original solutions supply continuity and containment; compact images and the backward uniqueness variant are correctly linked. |
| stepN:p3:uq-lip | PASS | node | L230-L230; EDGE L230-L230 | gen-lip is applied to the compact union already constructed, under the original C1/open-domain premises. |
| stepN:p3:uq-apply | PASS | node | L232-L233; EDGE L232-L232; EDGE L232-L233 | Initial equality is restored and the derivative, continuity, image and Lipschitz premises of ext-unique are supplied. |
| stepN:p3:ext-right | FAIL | node | L243-L246; EDGE L243-L243; EDGE L245-L245; EDGE L243-L245 | The local-neighborhood agreement EDGE points to the one-sided endpoint derivative argument at L245. Agreement with y or alpha near non-endpoint times is used at L244; ext-calc remains correctly located at L245. |
| stepN:p3:ext-left | PASS | node | L248-L248; EDGE L248-L248 | The reversal uses the already right-extended y1 and applies the construction to -F, then reverses back. |
| bpN:p3:gen-maximal | PASS | node | L251-L258; L259-L268; EDGE L253-L253; EDGE L256-L256; EDGE L260-L260; EDGE L263-L263; EDGE L266-L266 | The replacement makes the restricted solution unique, leaves values off the interval arbitrary and locates the time-shift reference at L256. |
| stepN:p3:max-union | PASS | node | L260-L261; EDGE L260-L260 | Local existence makes the family nonempty; it is defined from solutions under x0 in W, rather than postulated. |
| stepN:p3:max-glue | PASS | node | L263-L264; EDGE L263-L263; EDGE L264-L264; EDGE L263-L264 | The total representative is specified inside and outside I; overlap uniqueness and the open-neighborhood local property supply the solution. |
| stepN:p3:max-max | PASS | node | L266-L267; EDGE L266-L266; EDGE L267-L267; EDGE L266-L267 | The open extension and its initial value put it in the union family; uniqueness gives agreement and the restriction-only uniqueness clause. |
| bpN:p3:gen-continuation | PASS | node | L270-L277; L278-L287; EDGE L271-L271; EDGE L272-L273; EDGE L279-L279; EDGE L281-L281; EDGE L284-L284 | The statement uses the maximal interval and uniform data; the repaired package EDGE spans the actual hypothesis at L272-L273. |
| stepN:p3:cont-setup | PASS | node | L279-L279; EDGE L279-L279 | The positive time comes from fixed uniform data and the tail point is chosen after that time, under the finite-endpoint branch. |
| stepN:p3:cont-alpha | PASS | node | L281-L282; EDGE L281-L281; EDGE L282-L282; EDGE L281-L282 | The tail point belongs to Phi; uniform existence and overlap uniqueness have their premises supplied. |
| stepN:p3:cont-glue | PASS | node | L284-L286; EDGE L284-L284; EDGE L285-L285; EDGE L286-L286; EDGE L284-L285 | The patch agrees on the overlap, solves the equation locally on an open cover, and contradicts maximality; reversal handles the other end. |
| bpN:p3:gen-continuation-compact | PASS | node | L289-L292; L293-L295; EDGE L290-L290; EDGE L294-L294 | The compact corollary constructs uniform data rather than assuming the conclusion of the compact-data lemma. |
| bpN:p3:gen-continuation-periodic | PASS | node | L297-L299; L300-L302; EDGE L298-L298; EDGE L301-L301 | The action set is compact, the field is C1 and periodic, and the two proof applications are correctly located at L301. |
| bpN:p3:gen-confinement | PASS | node | L310-L318; L319-L324; EDGE L311-L312; EDGE L313-L313; EDGE L314-L314; EDGE L320-L320; EDGE L323-L323 | The a priori premise quantifies over all open-interval solutions; the repaired maximal-interval and uniform-data locators match the source. |
| stepN:p3:conf-noexit | PASS | node | L320-L321; EDGE L320-L320; EDGE L321-L321; EDGE L320-L321 | The original a priori premise is applied to the maximal solution; the endpoint contradiction is a proof branch, not a final binder. |
| stepN:p3:conf-concl | PASS | node | L323-L323; EDGE L323-L323 | Endpoint inequalities are supplied by conf-noexit; restriction, a priori confinement and arbitrary-interval uniqueness give the stated result. |
| bpN:p3:ext-mvt | PASS | coverage | L50-L52 | Alias of the permitted K mean value inequality; its consumer uses that import directly. |
| bpN:p3:ext-pl-c1 | PASS | coverage | L63-L69 | Optional shortcut outside the four-root closure; the actual local-existence proof uses quantitative ext-pl. |
| stepN:p3:sym | PASS | coverage | L112-L113 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:lip-bdd | PASS | coverage | L124-L124 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:lip-contra | PASS | coverage | L126-L128 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:lip-compact | PASS | coverage | L130-L133 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:uc-data | PASS | coverage | L153-L153 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:up-cell | PASS | coverage | L162-L164 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:up-translate | PASS | coverage | L166-L168 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:short-boot | PASS | coverage | L181-L183 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:short-ext | PASS | coverage | L185-L187 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| bpN:p3:gen-uniform-exist | PASS | coverage | L190-L196 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:ue-pl | PASS | coverage | L198-L200 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:ue-stay | PASS | coverage | L202-L202 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:loc-red | PASS | coverage | L212-L212 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:uq-compact | PASS | coverage | L226-L228 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:uq-lip | PASS | coverage | L230-L230 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:uq-apply | PASS | coverage | L232-L233 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:ext-right | PASS | coverage | L243-L246 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:ext-left | PASS | coverage | L248-L248 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| bpN:p3:gen-maximal | PASS | coverage | L251-L258 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:max-union | PASS | coverage | L260-L261 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:max-glue | PASS | coverage | L263-L264 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:max-max | PASS | coverage | L266-L267 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| bpN:p3:gen-continuation | PASS | coverage | L270-L277 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:cont-setup | PASS | coverage | L279-L279 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:cont-alpha | PASS | coverage | L281-L282 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:cont-glue | PASS | coverage | L284-L286 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| bpN:p3:gen-continuation-compact | PASS | coverage | L289-L292 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| bpN:p3:gen-continuation-periodic | PASS | coverage | L297-L299 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| bpN:p3:gen-uniform-remark | PASS | coverage | L304-L308 | Exclusion agrees with SPEC: no proof use in a four-root closure; confirmed by the corpus reference scan and closure walk. |
| bpN:p3:gen-confinement | PASS | coverage | L310-L318 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:conf-noexit | PASS | coverage | L320-L321 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:conf-concl | PASS | coverage | L323-L323 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| heading:bpN:p3 | PASS | coverage | L1-L1 | Heading only; substantive units have their own dispositions. |
| heading:bpN:p3:s-conv | PASS | coverage | L13-L13 | Heading only; substantive units have their own dispositions. |
| heading:bpN:p3:s-general | PASS | coverage | L86-L86 | Heading only; substantive units have their own dispositions. |
| heading:bpN:p3:s-exist | PASS | coverage | L171-L171 | Heading only; substantive units have their own dispositions. |
| heading:bpN:p3:s-unique | PASS | coverage | L215-L215 | Heading only; substantive units have their own dispositions. |
| heading:bpN:p3:s-max | PASS | coverage | L236-L236 | Heading only; substantive units have their own dispositions. |
| p3:source-L92 | PASS | coverage | L92-L92 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L109 | PASS | coverage | L109-L109 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L119 | PASS | coverage | L119-L119 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L178 | PASS | coverage | L178-L178 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L195 | PASS | coverage | L195-L195 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L209 | PASS | coverage | L209-L209 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L223 | PASS | coverage | L223-L223 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L257 | PASS | coverage | L257-L257 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L276 | PASS | coverage | L276-L276 | Provenance only; the mathematical input or proof is represented separately. |
| p3:source-L317 | PASS | coverage | L317-L317 | Provenance only; the mathematical input or proof is represented separately. |
| p3:prose-L3-L11 | PASS | coverage | L3-L11 | Introduction, pointer list or label index; no extra proof input is hidden by the exclusion. |
| p3:prose-L15-L26 | PASS | coverage | L15-L26 | Conventions/notation, with finite-dimensional max norms and two-sided solution derivatives retained in source fields. |
| p3:prose-L28-L31 | PASS | coverage | L28-L31 | Introduction, pointer list or label index; no extra proof input is hidden by the exclusion. |
| p3:prose-L70-L76 | PASS | coverage | L70-L76 | Introduction, pointer list or label index; no extra proof input is hidden by the exclusion. |
| p3:prose-L95-L99 | PASS | coverage | L95-L99 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |
| stepN:p3:lip-explicit | PASS | coverage | L124-L133 | The source unit is mapped to the named retained node(s); disposition is independent of any node locator failure above. |

All PROPOSED coverage items PASS. A node with a failed EDGE locator can still have a correct NODE coverage disposition.

## Replacement blocks

Only the failing EDGE locator is changed in each complete block. No statement premise, quantifier, conclusion, dependency target, or metadata field is changed. These blocks remain PROPOSED for a different reviewer to check.

```text
NODE: stepN:p3:lip-contra
KIND: step
TITLE: Contradiction hypothesis
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-contra@L126-L128
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-contra@L126-L128
CONTRACT_ID: stepN:p3:lip-contra
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; K subset W compact; contradiction branch: no L>=0 satisfies the Lipschitz inequality on K; M denotes the bound constructed by lip-bdd (not a newly assumed boundedness premise)
SOURCE_QUANTIFIERS: F,W,K fixed; choose M by lip-bdd; for every integer k>=1 choose x_k,y_k in K with x_k!=y_k
SOURCE_CONCLUSION: for every k there are x_k ≠ y_k ∈ K with ¦F(x_k)−F(y_k)¦ > k¦x_k−y_k¦, hence ¦x_k−y_k¦ < 2M/k → 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:lip-bdd
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:lip-bdd | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-contra@L128-L128 | the bound M gives ¦x_k−y_k¦ < 2M/k
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a+sol-review-N-c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p3:short-boot
KIND: step
TITLE: Forward bootstrap
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-boot@L181-L183
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-boot@L181-L183
CONTRACT_ID: stepN:p3:short-boot
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; J an interval; t0 in J; alpha:R->E with alpha(t0)=x and two-sided derivative F(alpha(t)) for every t in J; M>0 and abs(F)<=M on closedBall(x,delta); forward branch: t in J and t0<t<t0+delta/M
SOURCE_QUANTIFIERS: the gen-short data fixed first; t in J in the forward branch; define A={v in [t0,t]:abs(alpha(u)-x)<=M(u-t0) for all u in [t0,v]} and sstar=sSup(A)
SOURCE_CONCLUSION: t₀ ∈ A, A closed, so s* ∈ A (t < t₀ by time reversal, t = t₀ trivial)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-symmetry, bpN:p3:gen-sol#consequences
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-boot@L181-L181 | case t < t₀ by time reversal (gen-symmetry(b))
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-boot@L183-L183 | continuity of α on J gives A closed
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a+sol-review-N-c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p3:ext-right
KIND: step
TITLE: Right end
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L243-L246
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L243-L246
CONTRACT_ID: stepN:p3:ext-right
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; J a nonempty interval; IsSolIn F W J y; if J has a largest point call it b; otherwise use the unchanged interval and curve
SOURCE_QUANTIFIERS: F,W,J,y as in gen-extend; if J has largest point b choose eps>0 and alpha by gen-local, then define J1,y1 by the splice; if J has no largest point put J1=J and y1=y
SOURCE_CONCLUSION: y₁ = y on s ≤ b, = α on s > b is a solution on J₁ = J ∪ (b,b+ε): two-sided derivative at b from the two one-sided ones
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-local, bpN:p3:ext-calc, bpN:p3:gen-sol#consequences, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-local | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L243-L243 | local solution α through y(b) at t₀ = b
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L245-L245 | two one-sided derivatives give a two-sided one
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L244-L244 | local nature: y₁ agrees with y, resp. α, near t
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L243-L245 | the given solution supplies y(b) in W and its endpoint derivative for the splice
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a+sol-review-N-c
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

- `N-p3a.nodes.md`: `18bbd1eb4fc56c9e6c401f585a4337e06cada6e0f494375750b83aa1b93229a1`.
- `N-p3a.coverage.md`: `ab8c9972ed844138ac068e8709874bbeacc5c3254b3209e4bbf47b833895edfb`.

## Validation receipts

- Exact inventory check: 33 PROPOSED nodes and 56 PROPOSED coverage items each have one row; 30 node PASS, 3 node FAIL, 56 coverage PASS. Input snapshot hashes still match.
- Replacement comparison: every complete replacement differs from its input block in exactly one EDGE line, and only its line range changes; all other bytes of the block are retained.
- `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_apply_review.py docs/graph/N/packets N-p3a docs/graph/N/reviews/N-p3a-delta.md sol-delta-N-c --dry-run`: exit 0; 3 replaced, 0 added, 0 coverage replacements, 0 unresolved FAILs. The parser's combined PASS count includes coverage rows sharing node IDs; the per-record counts above are authoritative.
- Whitespace check and scoped `git diff --check`: PASS, exit 0. No packet was changed.
