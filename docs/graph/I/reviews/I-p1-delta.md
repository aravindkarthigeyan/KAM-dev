# I-p1 delta topology review

Reviewer: `sol-delta-I-a`, 2026-10-27. Marker: `delta-I-a`.
Independent of extractor `sonnet-extract-I-p1` and slice reviewer `sol-review-I-p1`.

**Verdict: FAIL: 35 proposed nodes PASS, 2 proposed nodes FAIL; all 63 proposed coverage items PASS.**

The replacements resolve the slice review's identified source-premise, locator and route issues. Two geometry steps still omit direct dependencies: the definitions of their constants, and, for the symplectic-defect step, the preceding directional-derivative bound. Complete replacement blocks appear below. These are graph repairs; no missing mathematical argument or frozen-statement defect is asserted.

## Scope and method

I read `DELTA-BRIEF.md` in full, `REVIEW-BRIEF.md`, `SPEC.md` with its rulings, repository rules/decisions, the slice review, current node/coverage/import packets, and the complete raw Part 1 source. I re-read every proposed statement and proof region and every EDGE use at the consumer, including uses without a reference. I checked all used imported K statements in the owning raw blueprint and checked the IDs against K's owning graph. Part 0 definitions and the Part 2 pointwise-energy consumer were also checked. No implementation modules, providers, Lean proof bodies, proof status or manifest state fields were used.

For imported K Part 1 statements I read the actual labelled units, which are currently two lines later than the locators in the I-imports packet; see the import follow-up below. The tables use `p1-iso-linear.tex` for the I source. Each node row includes the EDGE spans within the listed units. Coverage PASS means its disposition accounts for the source, and does not override a FAIL for a node with the same ID.

## Proposed nodes

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p1:setting | PASS | p1-iso-linear.tex #bpI:p1:setting@L30-L46 | Source fields, direct uses, package discharge and locators agree. |
| bpI:p1:setting#k-bridge | PASS | p1-iso-linear.tex #bpI:p1:setting #k-bridge@L39-L46 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:eb-holo | PASS | p1-iso-linear.tex #stepI:p1:eb-holo@L125-L128 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:eb-average | PASS | p1-iso-linear.tex #stepI:p1:eb-average@L137-L142 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:tr-frame | PASS | p1-iso-linear.tex #stepI:p1:tr-frame@L173-L175 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:tr-field | PASS | p1-iso-linear.tex #stepI:p1:tr-field@L177-L183 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:tr-torsion | PASS | p1-iso-linear.tex #stepI:p1:tr-torsion@L185-L187 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:tr-border | PASS | p1-iso-linear.tex #stepI:p1:tr-border@L189-L191 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:tr-compare | PASS | p1-iso-linear.tex #stepI:p1:tr-compare@L193-L200 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:lr-insert | PASS | p1-iso-linear.tex #stepI:p1:lr-insert@L236-L243 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:lr-average | PASS | p1-iso-linear.tex #stepI:p1:lr-average@L245-L251 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:ea-omega | PASS | p1-iso-linear.tex #stepI:p1:ea-omega@L289-L291 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:ea-gradient | PASS | p1-iso-linear.tex #stepI:p1:ea-gradient@L293-L296 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:ea-avg | PASS | p1-iso-linear.tex #stepI:p1:ea-avg@L298-L301 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:ea-size | PASS | p1-iso-linear.tex #stepI:p1:ea-size@L303-L308 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:ea-defect | PASS | p1-iso-linear.tex #stepI:p1:ea-defect@L310-L316 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:ec-derivative | PASS | p1-iso-linear.tex #stepI:p1:ec-derivative@L333-L335 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:ec-unique | PASS | p1-iso-linear.tex #stepI:p1:ec-unique@L337-L341 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:ec-pointwise | PASS | p1-iso-linear.tex #stepI:p1:ec-pointwise@L343-L344 | Source fields, direct uses, package discharge and locators agree. |
| bpI:p1:border-solve | PASS | p1-iso-linear.tex #bpI:p1:border-solve@L358-L405; p1-iso-linear.tex #bpI:p1:border-solve@L407-L453 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:bs-averages | PASS | p1-iso-linear.tex #stepI:p1:bs-averages@L412-L416 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:bs-bordered | PASS | p1-iso-linear.tex #stepI:p1:bs-bordered@L418-L425 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:bs-energy | PASS | p1-iso-linear.tex #stepI:p1:bs-energy@L427-L430 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:bs-second | PASS | p1-iso-linear.tex #stepI:p1:bs-second@L432-L439 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:bs-unique | PASS | p1-iso-linear.tex #stepI:p1:bs-unique@L441-L447 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:bs-real | PASS | p1-iso-linear.tex #stepI:p1:bs-real@L449-L452 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:rd-ql | PASS | p1-iso-linear.tex #stepI:p1:rd-ql@L488-L490 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:rd-expand | PASS | p1-iso-linear.tex #stepI:p1:rd-expand@L492-L496 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:rd-consequence | PASS | p1-iso-linear.tex #stepI:p1:rd-consequence@L498-L503 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:geo-de | PASS | p1-iso-linear.tex #stepI:p1:geo-de@L529-L530 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:geo-red | FAIL | p1-iso-linear.tex #stepI:p1:geo-red@L531-L533 | Missing direct K:bp:p2:constants edge: the bound at L533 uses m and C_red from that package. The setting/bridge and imported estimate edges do not replace the direct package edge required by SPEC. |
| stepI:p1:geo-sym | FAIL | p1-iso-linear.tex #stepI:p1:geo-sym@L534-L535 | The cohomological estimate at L535 consumes the preceding geo-red bound on d_omega Omega_K, but that edge is absent. It also uses m and C_Omega without a direct K:bp:p2:constants edge. |
| stepI:p1:pt-small | PASS | p1-iso-linear.tex #stepI:p1:pt-small@L552-L554 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:pt-frame | PASS | p1-iso-linear.tex #stepI:p1:pt-frame@L557-L558 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:pt-torsion | PASS | p1-iso-linear.tex #stepI:p1:pt-torsion@L559-L562 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:ea-avg#exactness-route | PASS | p1-iso-linear.tex #stepI:p1:ea-avg #exactness-route@L299-L301 | Source fields, direct uses, package discharge and locators agree. |
| stepI:p1:ea-avg#gradient-route | PASS | p1-iso-linear.tex #stepI:p1:ea-avg #gradient-route@L299-L301 | Source fields, direct uses, package discharge and locators agree. |

## Proposed coverage records

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p1:setting | PASS | p1-iso-linear.tex #bpI:p1:setting@L30-L37 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p1:totality | PASS | p1-iso-linear.tex #bpI:p1:totality@L55-L63 | Exclusion checked against the raw span and actual consumers. |
| bpI:p1:signs | PASS | p1-iso-linear.tex #bpI:p1:signs@L65-L89 | Exclusion checked against the raw span and actual consumers. |
| stepI:p1:eb-holo | PASS | p1-iso-linear.tex #stepI:p1:eb-holo@L125-L128 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:eb-average | PASS | p1-iso-linear.tex #stepI:p1:eb-average@L137-L142 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:tr-frame | PASS | p1-iso-linear.tex #stepI:p1:tr-frame@L173-L175 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:tr-field | PASS | p1-iso-linear.tex #stepI:p1:tr-field@L177-L183 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:tr-torsion | PASS | p1-iso-linear.tex #stepI:p1:tr-torsion@L185-L187 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:tr-border | PASS | p1-iso-linear.tex #stepI:p1:tr-border@L189-L191 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:tr-compare | PASS | p1-iso-linear.tex #stepI:p1:tr-compare@L193-L200 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p1:trivial-use | PASS | p1-iso-linear.tex #bpI:p1:trivial-use@L203-L208 | Exclusion checked against the raw span and actual consumers. |
| stepI:p1:lr-insert | PASS | p1-iso-linear.tex #stepI:p1:lr-insert@L236-L243 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:lr-average | PASS | p1-iso-linear.tex #stepI:p1:lr-average@L245-L251 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:ea-omega | PASS | p1-iso-linear.tex #stepI:p1:ea-omega@L289-L291 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:ea-gradient | PASS | p1-iso-linear.tex #stepI:p1:ea-gradient@L293-L296 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:ea-avg | PASS | p1-iso-linear.tex #stepI:p1:ea-avg@L298-L301 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:ea-size | PASS | p1-iso-linear.tex #stepI:p1:ea-size@L303-L308 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:ea-defect | PASS | p1-iso-linear.tex #stepI:p1:ea-defect@L310-L316 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:ec-derivative | PASS | p1-iso-linear.tex #stepI:p1:ec-derivative@L333-L335 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:ec-unique | PASS | p1-iso-linear.tex #stepI:p1:ec-unique@L337-L341 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:ec-pointwise | PASS | p1-iso-linear.tex #stepI:p1:ec-pointwise@L343-L344 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p1:o3 | PASS | p1-iso-linear.tex #bpI:p1:o3@L347-L353 | Exclusion checked against the raw span and actual consumers. |
| bpI:p1:border-solve | PASS | p1-iso-linear.tex #bpI:p1:border-solve@L364-L405 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:bs-averages | PASS | p1-iso-linear.tex #stepI:p1:bs-averages@L412-L416 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:bs-bordered | PASS | p1-iso-linear.tex #stepI:p1:bs-bordered@L418-L425 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:bs-energy | PASS | p1-iso-linear.tex #stepI:p1:bs-energy@L427-L430 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:bs-second | PASS | p1-iso-linear.tex #stepI:p1:bs-second@L432-L439 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:bs-unique | PASS | p1-iso-linear.tex #stepI:p1:bs-unique@L441-L447 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:bs-real | PASS | p1-iso-linear.tex #stepI:p1:bs-real@L449-L452 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p1:border-remarks | PASS | p1-iso-linear.tex #bpI:p1:border-remarks@L455-L463 | Exclusion checked against the raw span and actual consumers. |
| stepI:p1:rd-ql | PASS | p1-iso-linear.tex #stepI:p1:rd-ql@L488-L490 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:rd-expand | PASS | p1-iso-linear.tex #stepI:p1:rd-expand@L492-L496 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:rd-consequence | PASS | p1-iso-linear.tex #stepI:p1:rd-consequence@L498-L503 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:geo-de | PASS | p1-iso-linear.tex #stepI:p1:geo-de@L529-L530 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:geo-red | PASS | p1-iso-linear.tex #stepI:p1:geo-red@L531-L533 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:geo-sym | PASS | p1-iso-linear.tex #stepI:p1:geo-sym@L534-L535 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:pt-small | PASS | p1-iso-linear.tex #stepI:p1:pt-small@L552-L554 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:pt-frame | PASS | p1-iso-linear.tex #stepI:p1:pt-frame@L557-L558 | Maps to the correct existing node(s); source claim is accounted for. |
| stepI:p1:pt-torsion | PASS | p1-iso-linear.tex #stepI:p1:pt-torsion@L559-L562 | Maps to the correct existing node(s); source claim is accounted for. |
| bpI:p1:errata | PASS | p1-iso-linear.tex #bpI:p1:errata@L569-L589 | Exclusion checked against the raw span and actual consumers. |
| bpI:p1:doubts | PASS | p1-iso-linear.tex #bpI:p1:doubts@L591-L597 | Exclusion checked against the raw span and actual consumers. |
| heading:bpI:p1 | PASS | p1-iso-linear.tex #bpI:p1@L1-L1 | Exclusion checked against the raw span and actual consumers. |
| heading:bpI:p1:sec-setting | PASS | p1-iso-linear.tex #bpI:p1:sec-setting@L28-L28 | Exclusion checked against the raw span and actual consumers. |
| heading:bpI:p1:sec-extended | PASS | p1-iso-linear.tex #bpI:p1:sec-extended@L104-L104 | Exclusion checked against the raw span and actual consumers. |
| heading:bpI:p1:sec-energy | PASS | p1-iso-linear.tex #bpI:p1:sec-energy@L255-L255 | Exclusion checked against the raw span and actual consumers. |
| heading:bpI:p1:sec-border | PASS | p1-iso-linear.tex #bpI:p1:sec-border@L356-L356 | Exclusion checked against the raw span and actual consumers. |
| heading:bpI:p1:sec-geometry | PASS | p1-iso-linear.tex #bpI:p1:sec-geometry@L507-L507 | Exclusion checked against the raw span and actual consumers. |
| heading:bpI:p1:sec-errata | PASS | p1-iso-linear.tex #bpI:p1:sec-errata@L567-L567 | Exclusion checked against the raw span and actual consumers. |
| p1:sourcegap-L401 | PASS | p1-iso-linear.tex #sourcegap@L401-L401 | Maps to the correct existing node(s); source claim is accounted for. |
| p1:source-L121 | PASS | p1-iso-linear.tex #source@L121-L121 | Exclusion checked against the raw span and actual consumers. |
| p1:source-L163 | PASS | p1-iso-linear.tex #source@L163-L163 | Exclusion checked against the raw span and actual consumers. |
| p1:source-L227 | PASS | p1-iso-linear.tex #source@L227-L227 | Exclusion checked against the raw span and actual consumers. |
| p1:source-L277 | PASS | p1-iso-linear.tex #source@L277-L277 | Exclusion checked against the raw span and actual consumers. |
| p1:source-L328 | PASS | p1-iso-linear.tex #source@L328-L328 | Exclusion checked against the raw span and actual consumers. |
| p1:source-L398 | PASS | p1-iso-linear.tex #source@L398-L398 | Exclusion checked against the raw span and actual consumers. |
| p1:source-L483 | PASS | p1-iso-linear.tex #source@L483-L483 | Exclusion checked against the raw span and actual consumers. |
| p1:source-L523 | PASS | p1-iso-linear.tex #source@L523-L523 | Exclusion checked against the raw span and actual consumers. |
| p1:source-L549 | PASS | p1-iso-linear.tex #source@L549-L549 | Exclusion checked against the raw span and actual consumers. |
| p1:prose-L3-L25 | PASS | p1-iso-linear.tex #prose@L3-L25 | Maps to the correct existing node(s); source claim is accounted for. |
| p1:prose-L39-L46 | PASS | p1-iso-linear.tex #prose@L39-L46 | Maps to the correct existing node(s); source claim is accounted for. |
| p1:prose-L91-L93 | PASS | p1-iso-linear.tex #prose@L91-L93 | Exclusion checked against the raw span and actual consumers. |
| p1:prose-L358-L362 | PASS | p1-iso-linear.tex #prose@L358-L362 | Maps to the correct existing node(s); source claim is accounted for. |
| p1:prose-L509-L515 | PASS | p1-iso-linear.tex #prose@L509-L515 | Maps to the correct existing node(s); source claim is accounted for. |

## Independent checks of the repairs

**Source hypotheses and packages.** The setting now includes the attached conventions/definition of `Gamma_delta` through L46, without adding the fifth I-G1 derivative bound `D²H` to the weaker Part 1 setting. The bridge describes common data, not a blanket discharge of later bounds. K Part 2 L67–69 explicitly permits `tau >= 0` and `n >= 1`, so deleting the alleged tau source gap is correct. Local Gram and norm bounds remain checked where K frame statements use them. The trivial-torus proof has its own explicit `U,h,I,H,K,omega` data; the repaired steps correctly inherit those premises, rather than adding global Diophantine/error bounds or preceding proof conclusions as hypotheses.

The remaining replacement step hypotheses likewise name the enclosing result's actual data, with the local conditional premises: error/strip bounds for `ea-size`, the holomorphic correction and average condition for `ea-defect`, `E=0` for energy conservation, arbitrary tilde solutions for bordered uniqueness, and actual frame invertibility for `rd-consequence`. The newly added standing edges are genuine uses. For the general bordered solver, its own explicit holomorphic/periodic/Diophantine data supply the cohomological premises; invertibility is required only for the bordered average, not the unbordered torsion.

**Direct uses and alternatives.** The holomorphic-inverse reference at L126 is now retained. The average step uses `eb-period` for realness, not just holomorphy. The gradient step at L294 cites K exactness, while K objects supplies the eta identification. In the uniqueness proof L441–447, `ec-unique` is only an analogy: the replacement correctly uses K's general cohomological uniqueness instead. At L493 the product rule is an actual direct input. In the frame perturbation step, the estimates use `pt-frame` and `pt-domain`; the removed `pt-small` edge was only transitive through `pt-frame`. K constants is now linked at `pt-frame` and `pt-torsion`, but was still missing at `geo-red` and `geo-sym`.

I checked the two added routes at L299–301 separately. Both prove the entire parent conclusion. The exactness route uses K exactness for both vanishing averages involving the pulled-back symplectic form/error, and K averages for the derivative of the periodic scalar. The gradient route still needs K exactness for `avg(Omega_K)=0`; it then uses `ea-gradient` and linearity to deduce `avg(eta^N)=0`. Its retained exactness edge is therefore not an over-correction. The parent lists the two alternatives under ROUTES and has the matching route EDGE lines; it does not conjunctively require both proofs through DEPS. Those writer-added route edges are valid. No proposed record in these two slices contains the generic writer-filled quantifier string “inherits the fixed data and quantifiers of the enclosing proof; no new binders”; all proposed quantifier fields were read in their actual form.

**Geometry failures.** At L531–533, `geo-red` uses the DE bound from `geo-de`, the frame identities/bounds, and the imported computations under the displayed local hypotheses. Its `m,C_red` have an explicit owner at K Part 2 L78–108. SPEC requires that package as a direct edge whenever those constants are used, even if there is also a path through the setting or another result. At L535, K's cohomological a-priori estimate requires a bound on the directional derivative of `Omega_K`; the source just established that bound in `geo-red`. Zero average and the cohomological theorem alone do not supply it. The same line uses `C_Omega` and the bound `|B| <= m`, so K constants is a second missing direct dependency. Both replacements preserve the raw conclusion and add the actual prerequisite edges; no hypothesis is added.

**Coverage and source gaps.** The averaging coverage item now maps to the parent and both routes. The existing labelled setting/solver items cover their formal units; the separate prose items cover the attached conventions/notation, so their shorter inventory spans are not omissions. The source-gap note L401–404 concerns the paper's abbreviated proof, which this blueprint supplies in the mapped bordered steps. It is not an unresolved blueprint SOURCE_GAP. The totality, signs, O3, use/difference and errata/doubts remarks remain commentary: their consumed mathematical facts have actual result owners. I re-read the limiting application in I Part 2 L353–354: it checks the Part 1 setting, exact invariance and energy average and applies `energy-conservation` directly. No O3 remark node is needed. No new unaccounted substantive region was found in the re-read Part 1 source.

## Complete replacements for failed node records

```text
NODE: stepI:p1:geo-red
KIND: step
TITLE: $\partial_\omega\Omega_K$ and $E_{\mathrm{red}}$
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L531-L533
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L531-L533
CONTRACT_ID: stepI:p1:geo-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of geometry-noA5
SOURCE_QUANTIFIERS: delta
SOURCE_CONCLUSION: ¦d_omega Omega_K¦ <= (2n m + 2n^2 m) eps/delta and ¦E_red¦ <= C_red eps/delta on T_{r-delta}
CONSTANT_SCOPE: inherited constants m and C_red of K:bp:p2:constants, depending only on (n,tau,M,sigma_K,sigma_B,sigma_T); no new constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:frame-identities, K:bp:p2:matrix, K:bp:p2:frame-basic, bpI:p1:setting#k-bridge, stepI:p1:geo-de, K:step:p2:geo-domegak, K:step:p2:geo-ered, bpI:p1:setting, K:bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | (d), (e)
EDGE: K:bp:p2:matrix | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | norm bounds
EDGE: K:bp:p2:frame-basic | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | (b): bounds on L, N, B
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | supplies the K standing data of frame-identities and frame-basic
EDGE: stepI:p1:geo-de | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | bound on DE
EDGE: K:step:p2:geo-domegak | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | same estimate for d_omega Omega_K
EDGE: K:step:p2:geo-ered | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L532-L532 | same estimate for E_red
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L533-L533 | direct use of the local H, K, omega, domain or standing constants
EDGE: K:bp:p2:constants | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-red@L533-L533 | definitions of m and C_red used in the displayed bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1+sol-review-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p1:geo-sym
KIND: step
TITLE: Lagrangian defect and symplecticity defect
STATEMENT_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L534-L535
PROOF_SOURCE: blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L534-L535
CONTRACT_ID: stepI:p1:geo-sym
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of geometry-noA5
SOURCE_QUANTIFIERS: delta
SOURCE_CONCLUSION: Omega_K holomorphic, 1-periodic on T_{r-delta} with avg Omega_K = 0; ¦Omega_K¦ <= C_Omega eps/(gamma delta^{kappa+1}) on T_{r-2delta}; ¦E_sym¦ <= m^2 ¦Omega_K¦
CONSTANT_SCOPE: inherited constants m, C_Omega and kappa of K:bp:p2:constants, depending only on (n,tau,M,sigma_K,sigma_B,sigma_T); no new constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p2:exactness, K:bp:p2:cohomological, K:bp:p2:frame-identities, bpI:p1:setting#k-bridge, bpI:p1:setting, K:bp:p2:constants, stepI:p1:geo-red
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p2:exactness | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L535-L535 | avg Omega_K = 0, K primary
EDGE: K:bp:p2:cohomological | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L535-L535 | (b) on T_{r-delta} with loss delta
EDGE: K:bp:p2:frame-identities | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L535-L535 | (b): E_sym = diag(Omega_K, B Omega_K B)
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L535-L535 | supplies the K standing data of exactness, cohomological, frame-identities
EDGE: bpI:p1:setting | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L535-L535 | direct use of the local H, K, omega, domain or standing constants
EDGE: K:bp:p2:constants | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L535-L535 | definitions of m and C_Omega used in the cohomological and symplectic-defect bounds
EDGE: stepI:p1:geo-red | blueprint-I/parts/p1-iso-linear.tex#stepI:p1:geo-sym@L535-L535 | preceding bound on d_omega Omega_K supplies the right-hand side for the cohomological a-priori estimate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p1+sol-review-I-p1
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Import follow-up outside this slice

`sha256sum -c docs/graph/I/IMPORTS.sha256` still fails only for K `blueprint/parts/p1-analysis.tex`; the other five imported source files match. The mismatch already reported by the slice reviewer persists. For the K Part 1 units used here, actual current statement spans are: `ext-integral` L82–86, `matrix-norms` L148–153, `neumann` L177–181, `real-inverse` L205–208, `holomorphic-regularity` L227–236, `holomorphic-inverse` L404–407, `cauchy-strip` L568–574, `cauchy-corollaries` L617–621, and `cohomological` L887–897. Each I-imports locator for these units is two lines earlier. Their statements retain the required contracts. This delta does not author replacements for the writer-owned imports packet or edit the pin; the writer/global import review must record and remap that drift under SPEC. It is not cured by passing the I consumer records.

## Validation and limits

- Report-table validation: exactly 37 proposed-node rows and 63 proposed-coverage rows, each appearing once in its table. Review-parser dry run: two replacements, zero additions and zero unresolved FAILs. Both replacement blocks pass required-field, DEPS/EDGE parity, field-separator and source-range checks.
- `sha256sum -c docs/graph/I/CORPUS.sha256`: all eight I source files OK. K Part 2 still matches its import pin. The import mismatch is reported above.
- All K IDs used by the proposed records exist in `docs/graph/K/DEPGRAPH.md`. All 37 proposed nodes lie in the current union of the four root dependency closures.
- The replacement blocks preserve source locators/metadata and keep `TOPOLOGY_STATUS: PROPOSED`, `REVIEWER: -` for independent checking; all EDGE rationales use `¦` rather than a field-separating absolute-value bar.
- This is a delta topology audit, not certification of other slices, source papers, or Lean providers. No new suspected blueprint/paper erratum or frozen defect established.
- Only this delta report was written for this slice. No packets, SPEC, pins or Lean files were changed. No Lean/build commands or state-changing git commands were run.

Packet hashes at review:

- `I-p1.nodes.md`: `a1f202cce0d1fe6a1ca685f83f2423eb8a32d73623bb11711dbe13145b75a477`.
- `I-p1.coverage.md`: `9611c9748b218a1597d4624dcf744436feea402badeff5b6238e790652b9cbae`.
