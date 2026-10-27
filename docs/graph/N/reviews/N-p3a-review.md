# N-p3a: slice topology review

**Verdict: FAIL.** 51 nodes reviewed: 33 FAIL, 18 PASS. All 74 coverage items reviewed; their dispositions PASS. Complete replacement blocks follow for every failed node.

Reviewed under docs/graph/N/REVIEW-BRIEF.md and the full SPEC. Reviewer: **sol-review-N-c**. Marker: **rev-N-c**. This reviews the four-root graph through Part 11, not the subsequently written Part 12. Topology status is separate from mathematical validity and Lean proof status. No Lean or state-changing git command was run.

Read all of Part 3 and both packets, including every coverage reason and EDGE rationale; re-read the external/anchor statements at every cross-slice dependency. Consulted only frozen definition bodies permitted by the brief and manifest identity fields (not manifest state). All packet nodes are PROPOSED, have reviewer -, contract version 1, and no frozen-anchor identity of their own. The five external facts in N-p3a are correctly EXTERNAL; ordinary records are NOT_STARTED without any proof-status inference.

Part 3 SHA256 is `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d` and still matches the corpus pin. CORPUS has 13/14 matching files: N Part 0 has drifted. Its introduction was shortened by one line relative to a2c0979 before the D28 additions were appended, so existing Part 0 locators need a writer remap. IMPORTS has 3/4 matching files: P Part 0 has an append after the original 394-line pinned prefix (that prefix still hashes exactly to the pin). These global pin/locator issues do not change Part 3's source, but this review is not a global pin PASS. The relevant current Part 0 contracts were read; request that the writer re-pin/remap separately, without treating Part 12 as a new root until SPEC is revised.

A read-only closure walk over DEPS and ROUTES of all current N packets, starting from bpN:p0:head, :zero, :qcthm and :partial, reaches all 80 nodes in these two slices. A literal reference scan of Parts 0-11c confirmed the stated ownership exclusions. Labels in source/provenance lists and the label index were not counted as proof uses.

Source-field corrections below preserve the enclosing source premises. Locally constructed objects remain bound outputs of earlier steps; continuity, compactness, regularity, overlap agreement and bounds proved by those steps are not assumed anew as source hypotheses. Every replacement retains its direct sibling-result edges, so it still shows where those facts are supplied. A contradiction branch, an arbitrary test solution, and a point-membership guard are legitimate local premises; a preceding theorem's conclusion is not a substitute for the original hypotheses.

## Node verdicts

| Node ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpN:p3:ext-pl | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ext-pl@L32-L40 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| bpN:p3:ext-unique | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ext-unique@L41-L45 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| bpN:p3:ext-lip-local | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ext-lip-local@L46-L49 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| bpN:p3:ext-compact | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ext-compact@L53-L57 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| bpN:p3:ext-calc | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ext-calc@L58-L62 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| bpN:p3:totality | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:totality@L78-L84 | PASS as the explicitly scoped consumed local-nature/extension fact: Part 5 L56 and Part 7 L28 cite it, so it is not an unused administrative remark. NOTE separates the unconsumed Newtonian discussion. |
| bpN:p3:gen-sol | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L88-L93 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| bpN:p3:gen-sol#consequences | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L95-L99 | The single unqualified IsSolIn assumption is not a premise of the independent local-equality equivalence (iii); separate the clauses. |
| bpN:p3:gen-symmetry | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L101-L110; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L111-L114 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:sym | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:sym@L112-L113 | The chain rule is a proof ingredient, not a hypothesis; restore the full translation premise for all x in W. |
| bpN:p3:gen-lip | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-lip@L116-L120; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-lip@L121-L134 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:lip-mathlib | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-mathlib@L122-L122 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:lip-explicit | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-explicit@L124-L133 | SOURCE_CONCLUSION describes a proof rather than stating its Lipschitz conclusion. |
| stepN:p3:lip-bdd | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-bdd@L124-L124 | HYP currently says `F continuous on W ⊃ K; K compact`; restore the enclosing source premises and discharge the derived facts through DEPS. |
| stepN:p3:lip-contra | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-contra@L126-L128 | HYP currently says `no L works; M from lip-bdd`; restore the enclosing source premises and discharge the derived facts through DEPS. |
| stepN:p3:lip-compact | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-compact@L130-L133 | HYP currently says `sequences x_k, y_k of lip-contra; K compact; F C¹ at p`; restore the enclosing source premises and discharge the derived facts through DEPS.; The limit p and its local Lipschitz constant are chosen after the subsequence, not fixed beforehand. Correct EDGE locators: bpN:p3:ext-compact L130-L130 -> L131-L131; bpN:p3:ext-lip-local L130-L130 -> L131-L131 |
| bpN:p3:gen-uniform | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform@L136-L141 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| bpN:p3:gen-uniform-compact | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-compact@L143-L146; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-compact@L147-L154 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:uc-delta | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-delta@L148-L151 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:uc-data | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-data@L153-L153 | HYP currently says `K_δ ⊂ W compact (uc-delta); F C¹ on W`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-uniform |
| bpN:p3:gen-uniform-periodic | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-periodic@L156-L160; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-periodic@L161-L169 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:up-cell | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-cell@L162-L164 | HYP currently says `U open, K ⊂ U compact, F C¹ on W`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-uniform Correct EDGE locators: stepN:p3:uc-delta L162-L162 -> L162-L163 |
| stepN:p3:up-translate | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-translate@L166-L168 | HYP currently says `δ ≤ 1; max norm; C, M, L_C from up-cell; F periodic in θ`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-uniform |
| bpN:p3:gen-short | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-short@L173-L179; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-short@L180-L188 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:short-boot | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-boot@L181-L183 | HYP currently says `case t₀ < t < t₀+δ/M; α continuous on J`; restore the enclosing source premises and discharge the derived facts through DEPS. |
| stepN:p3:short-ext | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-ext@L185-L187 | HYP currently says `s* ∈ A (short-boot); s* < t; ¦F¦ ≤ M on B̄(x,δ)`; restore the enclosing source premises and discharge the derived facts through DEPS. |
| bpN:p3:gen-uniform-exist | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L190-L196; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L197-L203 | Correct EDGE locators: bpN:p3:gen-sol L196-L196 -> L194-L194 |
| stepN:p3:ue-pl | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-pl@L198-L200 | Mprime and the parent C1/open-set data are not specified in this step record; restore the source construction before applying quantitative Picard--Lindelof. |
| stepN:p3:ue-stay | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-stay@L202-L202 | HYP currently says `α from ue-pl on J = (t₀−ε,t₀+ε); uniform data`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol |
| bpN:p3:gen-local | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-local@L205-L210; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-local@L211-L213 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:loc-red | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:loc-red@L212-L212 | HYP currently says `{x₀} resp. K compact; F C¹ on W`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol, bpN:p3:gen-uniform |
| bpN:p3:gen-uniqueness | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L217-L224; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L225-L234 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:uq-compact | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-compact@L226-L228 | HYP currently says `t₁ ∈ J, t₁ > t₀ (t₁ < t₀ mirror); y_i continuous on [t₀,t₁] ⊂ J`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol |
| stepN:p3:uq-lip | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-lip@L230-L230 | HYP currently says `K ⊂ W compact (uq-compact); F C¹ on W`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol |
| stepN:p3:uq-apply | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-apply@L232-L233 | The record assumes continuity/Lipschitz proof ingredients and, more seriously, omits the source initial equality needed by ext-unique. Missing direct edges: bpN:p3:gen-sol |
| bpN:p3:gen-extend | PASS | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-extend@L238-L241; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-extend@L242-L249 | Source fields and direct dependencies match the source; locators and route/ownership policy pass. |
| stepN:p3:ext-right | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L243-L246 | HYP currently says `J has a largest element b (else J₁ = J); y(b) ∈ W`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol |
| stepN:p3:ext-left | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-left@L248-L248 | HYP currently says `ext-right; reversed solution y₁(−·)`; restore the enclosing source premises and discharge the derived facts through DEPS.; The record describes extending y(-.) rather than the already right-extended y1(-.); retain the correct intermediate curve. Missing direct edges: bpN:p3:gen-sol |
| bpN:p3:gen-maximal | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L251-L258; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L259-L268 | The literal source makes the restriction z|(Tminus,Tplus) unique; the total representative z is not unique off its maximal interval. Correct EDGE locators: bpN:p3:gen-symmetry L257-L257 -> L256-L256 |
| stepN:p3:max-union | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-union@L260-L261 | HYP currently says `𝒥 = open intervals J ∋ 0 carrying a solution y_J with y_J(0) = x₀`; restore the enclosing source premises and discharge the derived facts through DEPS.; The family is constructed from solutions, not an assumed existence family; retain x0 in W so nonemptiness follows. Missing direct edges: bpN:p3:gen-sol |
| stepN:p3:max-glue | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-glue@L263-L264 | HYP currently says `𝒥 and I from max-union`; restore the enclosing source premises and discharge the derived facts through DEPS.; The total construction omits its off-interval assignment and its initial value. Missing direct edges: bpN:p3:gen-sol |
| stepN:p3:max-max | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L266-L267 | HYP currently says `y a solution on J ∋ 0 with y(0) = x₀; z from max-glue`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol Correct EDGE locators: bpN:p3:gen-uniqueness L267-L267 -> L266-L266 |
| bpN:p3:gen-continuation | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L270-L277; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L278-L287 | Correct EDGE locators: bpN:p3:gen-uniform L271-L271 -> L272-L273 |
| stepN:p3:cont-setup | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-setup@L279-L279 | HYP currently says `T₊ < ∞; z(t) ∈ Φ on [t_*,T₊); uniform data (δ,M,L)`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-maximal, bpN:p3:gen-uniform |
| stepN:p3:cont-alpha | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L281-L282 | HYP currently says `t₁ from cont-setup; z(t₁) ∈ Φ`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol, bpN:p3:gen-uniform |
| stepN:p3:cont-glue | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L284-L286 | HYP currently says `α from cont-alpha; maximal (T₋,T₊), z`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol, bpN:p3:gen-uniform Correct EDGE locators: bpN:p3:gen-maximal L286-L286 -> L285-L285 |
| bpN:p3:gen-continuation-compact | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L289-L292; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L293-L295 | Unqualified “setting of gen-continuation” can import the uniform-data assumption which the compact corollary is proving; state the actual maximal-solution setting. Missing direct edges: bpN:p3:gen-maximal, bpN:p3:gen-uniform |
| bpN:p3:gen-continuation-periodic | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L297-L299; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L300-L302 | Missing direct edges: bpN:p3:gen-uniform Correct EDGE locators: bpN:p3:gen-continuation L300-L300 -> L301-L301; bpN:p3:gen-uniform-periodic L300-L300 -> L301-L301 |
| bpN:p3:gen-confinement | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L310-L318; proof blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L319-L324 | Correct EDGE locators: bpN:p3:gen-maximal L316-L316 -> L314-L314; bpN:p3:gen-uniform L312-L312 -> L311-L312 |
| stepN:p3:conf-noexit | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-noexit@L320-L321 | HYP currently says `a priori confinement; maximal (T₋,T₊), z of gen-maximal; Φ has uniform data`; restore the enclosing source premises and discharge the derived facts through DEPS.; A contradiction-case assumption is not a quantifier on the final conclusion. Missing direct edges: bpN:p3:gen-sol, bpN:p3:gen-uniform |
| stepN:p3:conf-concl | FAIL | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-concl@L323-L323 | HYP currently says `conf-noexit; confinement applied to z`; restore the enclosing source premises and discharge the derived facts through DEPS. Missing direct edges: bpN:p3:gen-sol, bpN:p3:gen-uniform |

## Coverage

| Failed coverage item | Reason |
|---|---|
| None | No disposition correction required. |

All other coverage items PASS (in fact, every coverage item in this slice passes). Node-field or EDGE corrections do not change their NODE dispositions.

Confirmed the following nontrivial dispositions: ext-mvt is an alias of the retained K mean-value input; ext-pl-c1 is offered only as an optional shortcut, with no proof consumer; gen-uniform-remark is an unconsumed explanatory remark; the general conventions are typing/notation; the IsSolIn consequences at L95-L99 have the required claim node. The alternative Mathlib and explicit compactness arguments for gen-lip are correctly separated as ROUTES, with boundedness shared; they are not conjunctive proof alternatives. The writer appended a separate coverage item for stepN:p3:lip-explicit during this review. I re-read it: its NODE disposition and alternative-route reason PASS; the underlying proof spans are also inventoried individually. This changes N-p3a coverage from 73 to 74 items, without changing its 51 nodes.

## Complete replacement blocks

These blocks are proposed replacements only. The writer should keep TOPOLOGY_STATUS PROPOSED and obtain a different delta reviewer for rewritten records. No packet is edited by this review.

### bpN:p3:gen-sol#consequences

```text
NODE: bpN:p3:gen-sol#consequences
KIND: claim
TITLE: Elementary consequences of IsSolIn
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L95-L99
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L95-L99
CONTRACT_ID: bpN:p3:gen-sol#consequences
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing F:E->E, W subset E, J,Jprime subset R, z,y:R->E; (i),(ii): IsSolIn F W J z; (i): Jprime subset J; (iii): Jprime open and z=y on Jprime
SOURCE_QUANTIFIERS: F,W,J,z; (i) every Jprime subset J; (ii) all t in J; independently (iii) every open Jprime and y,z agreeing there
SOURCE_CONCLUSION: (i) IsSolIn F W J' z (restriction); (ii) z is continuous on J; (iii) local nature: for open J' with z = y on J', IsSolIn F W J' y ⇔ IsSolIn F W J' z
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-sol, bpN:p3:ext-calc
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol#consequences@L95-L95 | elementary consequences of the predicate IsSolIn
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol#consequences@L95-L95 | each a one-line Lean lemma, from the calculus facts (differentiable implies continuous; derivative at a point depends only on a neighbourhood)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section-data claim for coverage item p3:prose-L95-L99; statement and proof are the same unlabelled paragraph; consumers: short-boot, short-ext, uq-compact, ext-right, max-glue, cont-glue, exit-closed, exit-bdry
```

### stepN:p3:sym

```text
NODE: stepN:p3:sym
KIND: step
TITLE: Chain rule
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:sym@L112-L113
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:sym@L112-L113
CONTRACT_ID: stepN:p3:sym
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolIn F W J z; c in R for (a); for (c) v in E, W+v=W and F(x+v)=F(x) for x in W; the C1 assertion in (b) is conditional on F being C1, not a premise for time reversal
SOURCE_QUANTIFIERS: as gen-symmetry
SOURCE_CONCLUSION: (a), (b) by the chain rule for t ↦ t+c, t ↦ −t; (c) z+v has derivative F(z(t)) = F(z(t)+v) and z(t)+v ∈ W+v = W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-calc, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-calc | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:sym@L112-L112 | chain rule for t ↦ t+c and t ↦ −t
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:sym@L113-L113 | membership in W and derivative of the solution
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:lip-explicit

```text
NODE: stepN:p3:lip-explicit
KIND: route
TITLE: Explanatory proof of the Lipschitz clause
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-explicit@L124-L133
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-explicit@L124-L133
CONTRACT_ID: stepN:p3:lip-explicit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on W open; K ⊂ W compact
SOURCE_QUANTIFIERS: as gen-lip
SOURCE_CONCLUSION: there exists L>=0 such that abs(F(x)-F(y))<=L abs(x-y) for all x,y in K; proved by contradiction using the boundedness step and a compact subsequence
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:lip-contra, stepN:p3:lip-compact
ROUTES: -
ROUTE_FOR: bpN:p3:gen-lip
EDGE: stepN:p3:lip-contra | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-explicit@L126-L126 | if no L works, sequences x_k, y_k with the Lipschitz quotient > k
EDGE: stepN:p3:lip-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-explicit@L130-L130 | convergent subsequence and local Lipschitz constant contradict
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: new route node: the remaining steps lip-bdd..lip-compact of Lemma gen-lip ('The remaining steps are the explanatory proof of that fact', L122); lip-bdd is shared with the other route; STATEMENT/PROOF_SOURCE are L124-L133
```

### stepN:p3:lip-bdd

```text
NODE: stepN:p3:lip-bdd
KIND: step
TITLE: Bounded
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-bdd@L124-L124
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-bdd@L124-L124
CONTRACT_ID: stepN:p3:lip-bdd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; K subset W compact
SOURCE_QUANTIFIERS: E,W,F,K fixed as in gen-lip; then there exists M>=0
SOURCE_CONCLUSION: ¦F¦ ≤ M on the compact set K
CONSTANT_SCOPE: M is chosen after F,W,K; no uniform numerical bound over later F is asserted
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-bdd@L124-L124 | continuous image of a compact set is bounded
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:lip-contra

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
EDGE: stepN:p3:lip-bdd | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-contra@L127-L127 | the bound M gives ¦x_k−y_k¦ < 2M/k
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:lip-compact

```text
NODE: stepN:p3:lip-compact
KIND: step
TITLE: Compactness
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-compact@L130-L133
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-compact@L130-L133
CONTRACT_ID: stepN:p3:lip-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; K subset W compact; contradiction branch of lip-contra; x_k,y_k denote the sequences constructed there, not additional compactness or local-Lipschitz assumptions
SOURCE_QUANTIFIERS: data of gen-lip and the contradiction sequences; then a strictly increasing subsequence k_j, limit p in K, and L_p and a neighborhood N_p of p; finally sufficiently large j
SOURCE_CONCLUSION: a subsequence x_{k_j} → p ∈ K and y_{k_j} → p; for large j both lie in the L_p-Lipschitz neighbourhood N_p and k_j > L_p, contradicting lip-contra
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-compact, bpN:p3:ext-lip-local, stepN:p3:lip-contra
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-compact@L131-L131 | sequential compactness produces a subsequence converging to p in K
EDGE: bpN:p3:ext-lip-local | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-compact@L131-L131 | C1 at the chosen limit p supplies L_p and its neighborhood
EDGE: stepN:p3:lip-contra | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:lip-compact@L132-L132 | contradiction with the choice of x_k, y_k
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:uc-data

```text
NODE: stepN:p3:uc-data
KIND: step
TITLE: Data
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-data@L153-L153
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-data@L153-L153
CONTRACT_ID: stepN:p3:uc-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; K subset W compact; delta and K_delta={y:exists x in K, abs(y-x)<=delta} are the objects chosen in uc-delta; their compactness and containment are proved there
SOURCE_QUANTIFIERS: F,W,K fixed as in gen-uniform-compact; delta,K_delta constructed by uc-delta; then choose M,L>=0 on K_delta by gen-lip; finally every x in K
SOURCE_CONCLUSION: ¦F¦ ≤ M and F L-Lipschitz on K_δ ⊃ B̄(x,δ) for x ∈ K
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-lip, stepN:p3:uc-delta, bpN:p3:gen-uniform
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-lip | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-data@L153-L153 | bound and Lipschitz constant on the compact set K_δ
EDGE: stepN:p3:uc-delta | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-data@L153-L153 | K_δ ⊂ W compact
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uc-data@L153-L153 | the resulting bounds on every closedBall(x,delta) supply the three uniform-data clauses
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:up-cell

```text
NODE: stepN:p3:up-cell
KIND: step
TITLE: A compact cell
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-cell@L162-L164
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-cell@L162-L164
CONTRACT_ID: stepN:p3:up-cell
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E=R^n x R^n with max norm; U subset R^n open; W=R^n x U; F C1 on W and integer-periodic in angles; K subset U compact
SOURCE_QUANTIFIERS: n,U,F,K fixed as in gen-uniform-periodic; split K empty or not; choose delta in (0,1]; define K_delta,C=[-1,2]^n x K_delta; then choose M,L_C>=0 on C
SOURCE_CONCLUSION: δ ∈ (0,1] with K_δ ⊂ U; C = [−1,2]ⁿ × K_δ compact ⊂ W; constants M, L_C of F on C
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:uc-delta, bpN:p3:ext-compact, bpN:p3:gen-lip, bpN:p3:gen-uniform
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:uc-delta | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-cell@L162-L163 | choose the action collar by the earlier compact-neighborhood construction, handling K empty and U=R^n
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-cell@L163-L163 | compactness of C
EDGE: bpN:p3:gen-lip | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-cell@L164-L164 | M and L_C on the compact C
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-cell@L162-L162 | empty-K branch: the uniform-data conditions are vacuous
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:up-translate

```text
NODE: stepN:p3:up-translate
KIND: step
TITLE: Translating a ball into the cell
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-translate@L166-L168
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-translate@L166-L168
CONTRACT_ID: stepN:p3:up-translate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E=R^n x R^n with max norm; U subset R^n open; W=R^n x U; F C1 on W and integer-periodic in angles; K subset U compact; delta,C,M,L_C are the constructed objects from up-cell, with 0<delta<=1; their proved cell bounds are supplied by that dependency
SOURCE_QUANTIFIERS: the periodic-field source data first; delta,C,M,L_C constructed by up-cell; every x=(theta,I) in Phi, with k=(floor(theta_i))_i and xprime=x-(k,0)
SOURCE_CONCLUSION: B̄(x',δ) ⊂ C and B̄(x,δ) = B̄(x',δ) + (k,0) ⊂ W; by periodicity ¦F¦ ≤ M and F is L_C-Lipschitz on B̄(x,δ)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:up-cell, bpN:p3:gen-uniform
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:up-cell | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-translate@L166-L166 | cell C and constants M, L_C
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:up-translate@L167-L168 | translation verifies containment, uniform boundedness and Lipschitzness on each ball
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:short-boot

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
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-boot@L182-L182 | continuity of α on J gives A closed
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:short-ext

```text
NODE: stepN:p3:short-ext
KIND: step
TITLE: Extension
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-ext@L185-L187
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-ext@L185-L187
CONTRACT_ID: stepN:p3:short-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; J an interval; t0 in J; alpha:R->E with alpha(t0)=x and two-sided derivative F(alpha(t)) for every t in J; M>0 and abs(F)<=M on closedBall(x,delta); t in J with t0<t<t0+delta/M; A and sstar=sSup(A) are the objects defined by short-boot; examine the contradiction branch sstar<t
SOURCE_QUANTIFIERS: the parent data, forward t, A,sstar; if sstar<t choose eta>0 with sstar+eta<=t, then every u in [sstar,sstar+eta]
SOURCE_CONCLUSION: s* = t: otherwise ¦α(s*)−x¦ < δ, continuity gives η with α([s*,s*+η]) ⊂ B̄(x,δ), the mean value inequality gives ¦α(u)−x¦ ≤ M(u−t₀) there, contradicting the definition of s*
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:short-boot, bpN:p3:gen-sol#consequences, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:short-boot | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-ext@L185-L185 | s* ∈ A and definition of A
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-ext@L185-L185 | continuity of α gives η
EDGE: K:bp:p1:ext-mvt | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:short-ext@L186-L186 | mean value inequality for a curve with derivative bounded by M
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpN:p3:gen-uniform-exist

```text
NODE: bpN:p3:gen-uniform-exist
KIND: proposition
TITLE: Local existence with uniform time
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L190-L196
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L197-L203
CONTRACT_ID: bpN:p3:gen-uniform-exist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; Φ has uniform data (δ,M,L); M' = max(M,1); ε = δ/M'
SOURCE_QUANTIFIERS: E; W; F; Φ; δ, M, L; then for every x ∈ Φ and t₀ ∈ ℝ an α
SOURCE_CONCLUSION: for every x ∈ Φ and t₀ ∈ ℝ there is α : ℝ → E with α(t₀) = x, ¦α(t)−x¦ < δ on (t₀−ε, t₀+ε) and IsSolIn F W (t₀−ε, t₀+ε) α; ε depends only on (δ,M)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform, bpN:p3:gen-sol, stepN:p3:ue-pl, stepN:p3:ue-stay
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L191-L191 | hypothesis: Φ has uniform data (δ,M,L)
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L194-L194 | the conclusion is IsSolIn on the open time interval; L196 is only end{proposition}
EDGE: stepN:p3:ue-pl | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L198-L198 | construction of α by Picard-Lindelöf
EDGE: stepN:p3:ue-stay | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-exist@L202-L202 | α stays in B̄(x,δ) ⊂ W
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: parent depends on the package gen-uniform (statement) and gen-sol (conclusion predicate)
```

### stepN:p3:ue-pl

```text
NODE: stepN:p3:ue-pl
KIND: step
TITLE: Picard--Lindel\"of
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-pl@L198-L200
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-pl@L198-L200
CONTRACT_ID: stepN:p3:ue-pl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; Phi subset E has uniform data (delta,M,L), delta>0, M,L>=0; x in Phi; t0 in R; Mprime=max(M,1), eps=delta/Mprime
SOURCE_QUANTIFIERS: the uniform-data setting, Mprime=max(M,1), eps=delta/Mprime; every x in Phi and t0 in R; then choose alpha with the within-derivative property
SOURCE_CONCLUSION: ext-pl with a = δ, bound M', Lipschitz L, T = ε (M'T = δ ≤ a) gives α with α(t₀) = x and derivative F(α(t)) within [t₀−ε,t₀+ε]; two-sided on the open interval
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-pl, bpN:p3:gen-uniform
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-pl | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-pl@L198-L198 | quantitative Picard-Lindelöf with a = δ, T = ε
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-pl@L198-L198 | bound M and Lipschitz constant L on B̄(x,δ) come from the uniform data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:ue-stay

```text
NODE: stepN:p3:ue-stay
KIND: step
TITLE: Staying in $W$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-stay@L202-L202
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-stay@L202-L202
CONTRACT_ID: stepN:p3:ue-stay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; Phi subset E has uniform data (delta,M,L), delta>0, M,L>=0; x in Phi; t0 in R; Mprime=max(M,1), eps=delta/Mprime; alpha is the curve constructed by ue-pl, with its within-derivative conclusion supplied by that edge
SOURCE_QUANTIFIERS: the gen-uniform-exist data and x,t0; alpha constructed by ue-pl; then every t in J=(t0-eps,t0+eps)
SOURCE_CONCLUSION: ¦α(t)−x¦ ≤ M'¦t−t₀¦ < δ, so α(t) ∈ B̄(x,δ) ⊂ W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-short, stepN:p3:ue-pl, bpN:p3:gen-uniform, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-short | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-stay@L202-L202 | a priori short-time confinement on J
EDGE: stepN:p3:ue-pl | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-stay@L202-L202 | the solution α
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-stay@L202-L202 | B̄(x,δ) ⊂ W
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ue-stay@L202-L202 | the pointwise derivative and membership establish the general solution predicate on the open interval
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:loc-red

```text
NODE: stepN:p3:loc-red
KIND: step
TITLE: Reduction
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:loc-red@L212-L212
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:loc-red@L212-L212
CONTRACT_ID: stepN:p3:loc-red
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; for the point case x0 in W and t0 in R; for uniformity K subset W compact
SOURCE_QUANTIFIERS: F C1 on open W fixed; the point case x0 in W, or the compact case K subset W; choose delta,M,L by gen-uniform-compact and eps=delta/max(M,1); then every initial point in that set and every initial time t0 admits a curve alpha
SOURCE_CONCLUSION: the singleton {x0}, respectively K, has uniform data (delta,M,L); hence for eps=delta/max(M,1)>0, every x in that set and every t0 in R admit alpha:R->E with alpha(t0)=x and IsSolIn F W (t0-eps,t0+eps) alpha
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform-compact, bpN:p3:gen-uniform-exist, bpN:p3:gen-uniform, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:loc-red@L212-L212 | uniform data on the compact set
EDGE: bpN:p3:gen-uniform-exist | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:loc-red@L212-L212 | local solution of uniform time
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:loc-red@L212-L212 | the compact-set lemma supplies the uniform-data package needed for the uniform-time proposition
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:loc-red@L212-L212 | the claim constructed by gen-uniform-exist is a solution in the sense of IsSolIn
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:uq-compact

```text
NODE: stepN:p3:uq-compact
KIND: step
TITLE: A compact piece
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-compact@L226-L228
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-compact@L226-L228
CONTRACT_ID: stepN:p3:uq-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; J an interval; t0 in J; IsSolIn F W J y_i (i=1,2); y_1(t0)=y_2(t0); take t1 in J, t1>t0 in the forward case (mirror case uses the left-derivative external)
SOURCE_QUANTIFIERS: the gen-uniqueness data fixed first; every t1 in J, with forward branch t1>t0; define K=y_1([t0,t1]) union y_2([t0,t1])
SOURCE_CONCLUSION: K is compact and K ⊂ W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-compact, bpN:p3:gen-sol#consequences, bpN:p3:ext-unique, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-compact@L227-L227 | continuous images of compact sets are compact
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-compact@L227-L227 | y_i continuous on [t₀,t₁] and the values lie in W
EDGE: bpN:p3:ext-unique | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-compact@L226-L226 | left-derivative form for the mirror case t₁ < t₀
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-compact@L227-L228 | the two solution predicates give image containment in W
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:uq-lip

```text
NODE: stepN:p3:uq-lip
KIND: step
TITLE: Lipschitz on $K$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-lip@L230-L230
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-lip@L230-L230
CONTRACT_ID: stepN:p3:uq-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; J an interval; t0 in J; IsSolIn F W J y_i (i=1,2); y_1(t0)=y_2(t0); t1 in J with t1>t0; K denotes the union of the two compact curve images constructed by uq-compact
SOURCE_QUANTIFIERS: the gen-uniqueness data and forward t1; K constructed by uq-compact; then choose L>=0 by gen-lip
SOURCE_CONCLUSION: F is L-Lipschitz on K
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-lip, stepN:p3:uq-compact, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-lip | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-lip@L230-L230 | Lipschitz constant on the compact set K
EDGE: stepN:p3:uq-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-lip@L230-L230 | the compact set K
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-lip@L230-L230 | the compact images used for the Lipschitz application come from the source solutions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:uq-apply

```text
NODE: stepN:p3:uq-apply
KIND: step
TITLE: Apply \ref{bpN:p3:ext-unique}
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-apply@L232-L233
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-apply@L232-L233
CONTRACT_ID: stepN:p3:uq-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; J an interval; t0 in J; IsSolIn F W J y_i (i=1,2); y_1(t0)=y_2(t0); t1 in J with t1>t0; K and L are the constructed compact-image set and its Lipschitz constant, supplied by the two preceding steps
SOURCE_QUANTIFIERS: the gen-uniqueness data first, every forward t1 in J; K and L constructed by uq-compact and uq-lip; apply the uniqueness external on [t0,t1]
SOURCE_CONCLUSION: y₁(t₁) = y₂(t₁)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:ext-unique, stepN:p3:uq-lip, stepN:p3:uq-compact, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:ext-unique | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-apply@L232-L232 | uniqueness with a Lipschitz constant on a set
EDGE: stepN:p3:uq-lip | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-apply@L232-L232 | F is Lipschitz on K
EDGE: stepN:p3:uq-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-apply@L232-L232 | values in K, continuity
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:uq-apply@L232-L233 | the source predicates supply genuine two-sided derivatives, hence the right derivatives used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:ext-right

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
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L245-L245 | local nature: y₁ agrees with y, resp. α, near t
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-right@L243-L245 | the given solution supplies y(b) in W and its endpoint derivative for the splice
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:ext-left

```text
NODE: stepN:p3:ext-left
KIND: step
TITLE: Left end
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-left@L248-L248
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-left@L248-L248
CONTRACT_ID: stepN:p3:ext-left
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; J a nonempty interval; IsSolIn F W J y; J1,y1 denote the extension constructed by ext-right; apply the same construction to its reversal
SOURCE_QUANTIFIERS: the gen-extend source data; J1,y1 constructed by ext-right; reverse, construct the right extension for -F, then reverse back
SOURCE_CONCLUSION: reverse y1 and J1, extend at its largest endpoint by ext-right for -F, then reverse back; the resulting interval has neither included endpoint and is open, and its curve extends the original solution y on J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:ext-right, bpN:p3:gen-symmetry, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:ext-right | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-left@L248-L248 | apply Step ext-right to the reversed solution
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-left@L248-L248 | time reversal (gen-symmetry(b))
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:ext-left@L248-L248 | the reversed and extended curves are solutions of the appropriate total fields on open W
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpN:p3:gen-maximal

```text
NODE: bpN:p3:gen-maximal
KIND: theorem
TITLE: Maximal solution
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L251-L258
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L259-L268
CONTRACT_ID: bpN:p3:gen-maximal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; x₀ ∈ W
SOURCE_QUANTIFIERS: E; W; F; x₀; then T₋, T₊, z
SOURCE_CONCLUSION: there exist Tminus in [-infinity,0), Tplus in (0,+infinity] and z:R->E with z(0)=x0 and IsSolIn F W (Tminus,Tplus) z; every solution y through x0 on an interval J containing 0 has J subset (Tminus,Tplus) and y=z on J; the maximal interval and the restricted solution z|(Tminus,Tplus) are unique, with arbitrary values outside it; initial time t0 is handled by gen-symmetry(a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-sol, bpN:p3:gen-symmetry, stepN:p3:max-union, stepN:p3:max-glue, stepN:p3:max-max
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L253-L253 | conclusion IsSolIn
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L256-L256 | the source explicitly refers to the time shift here; L257 is provenance
EDGE: stepN:p3:max-union | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L260-L260 | union of open intervals
EDGE: stepN:p3:max-glue | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L263-L263 | gluing
EDGE: stepN:p3:max-max | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L266-L266 | maximality
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:max-union

```text
NODE: stepN:p3:max-union
KIND: step
TITLE: The union
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-union@L260-L261
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-union@L260-L261
CONTRACT_ID: stepN:p3:max-union
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; x0 in W
SOURCE_QUANTIFIERS: E,W,F,x0 fixed; define mathcalJ={open intervals J containing 0 admitting IsSolIn F W J y_J with y_J(0)=x0}; then its union I and extended endpoints Tminus,Tplus
SOURCE_CONCLUSION: 𝒥 ≠ ∅ and I = ∪𝒥 is an open interval (T₋,T₊) ∋ 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-local, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-local | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-union@L260-L260 | 𝒥 nonempty by local existence
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-union@L260-L260 | the union family is defined using the general solution predicate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:max-glue

```text
NODE: stepN:p3:max-glue
KIND: step
TITLE: Gluing
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-glue@L263-L264
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-glue@L263-L264
CONTRACT_ID: stepN:p3:max-glue
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; x0 in W; mathcalJ and I are defined as in max-union; solutions y_J are chosen witnesses for those intervals
SOURCE_QUANTIFIERS: F,W,x0 fixed; mathcalJ,I and witnesses y_J from max-union; define the total z pointwise, choosing J containing t when t in I
SOURCE_CONCLUSION: define z(t)=y_J(t) for t in I using any J in mathcalJ containing t, and z(t)=x0 outside I; uniqueness makes this independent of J; z(0)=x0 and IsSolIn F W I z by the open-neighborhood local property
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniqueness, bpN:p3:gen-sol#consequences, stepN:p3:max-union, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-glue@L263-L263 | y_J = y_{J'} on J∩J' ∋ 0
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-glue@L264-L264 | local nature (iii)
EDGE: stepN:p3:max-union | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-glue@L263-L263 | the family 𝒥 and its union I
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-glue@L263-L264 | the glued curve satisfies IsSolIn on the union of its open solution neighborhoods
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:max-max

```text
NODE: stepN:p3:max-max
KIND: step
TITLE: Maximality
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L266-L267
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L266-L267
CONTRACT_ID: stepN:p3:max-max
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; x0 in W; mathcalJ,I,z are the constructed family, union and curve from max-union/max-glue; take any IsSolIn F W J y with J an interval containing 0 and y(0)=x0
SOURCE_QUANTIFIERS: E,W,F,x0 and the earlier constructed objects; every test interval J and solution y through x0; then choose Jprime,yprime by gen-extend
SOURCE_CONCLUSION: J ⊂ J' ⊂ I and y = y' = z on J; uniqueness of the maximal interval and of z on it
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-extend, bpN:p3:gen-uniqueness, stepN:p3:max-union, stepN:p3:max-glue, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-extend | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L266-L266 | open J' ⊃ J and solution y' extending y
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L266-L266 | the explicit uniqueness citation is at L266, not L267
EDGE: stepN:p3:max-union | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L266-L266 | J' ∈ 𝒥 so J' ⊂ I
EDGE: stepN:p3:max-glue | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L267-L267 | z is a solution on I
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:max-max@L266-L267 | the maximality comparison and restricted-solution uniqueness concern the solution predicate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpN:p3:gen-continuation

```text
NODE: bpN:p3:gen-continuation
KIND: theorem
TITLE: Continuation criterion, uniform form
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L270-L277
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L278-L287
CONTRACT_ID: bpN:p3:gen-continuation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; x₀ ∈ W; (T₋,T₊), z the maximal interval and solution of gen-maximal; Φ has uniform data (δ,M,L)
SOURCE_QUANTIFIERS: E; W; F; x₀; Φ; δ, M, L; t_*
SOURCE_CONCLUSION: if T₊ < ∞ there is no t_* ∈ [0,T₊) with z(t) ∈ Φ for all t ∈ [t_*,T₊); symmetrically on the left; equivalently, staying in Φ near an end of the maximal interval forces that end to be ±∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-maximal, bpN:p3:gen-uniform, stepN:p3:cont-setup, stepN:p3:cont-alpha, stepN:p3:cont-glue
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L271-L271 | maximal interval and solution
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L272-L273 | the hypothesis is Phi with uniform data (delta,M,L)
EDGE: stepN:p3:cont-setup | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L279-L279 | set-up
EDGE: stepN:p3:cont-alpha | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L281-L281 | solution through z(t₁)
EDGE: stepN:p3:cont-glue | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L284-L284 | gluing past T₊
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:cont-setup

```text
NODE: stepN:p3:cont-setup
KIND: step
TITLE: Set-up
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-setup@L279-L279
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-setup@L279-L279
CONTRACT_ID: stepN:p3:cont-setup
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; x0 in W; (Tminus,Tplus) and z the maximal interval and solution through x0; Phi has uniform data (delta,M,L); contradiction branch Tplus finite and some tstar in [0,Tplus) has z(t) in Phi on [tstar,Tplus)
SOURCE_QUANTIFIERS: the gen-continuation data; in the finite-right-endpoint tail branch choose eps=delta/max(M,1)>0 and t1 in [tstar,Tplus) with t1>Tplus-eps
SOURCE_CONCLUSION: ε as in gen-uniform-exist and t₁ ∈ [t_*,T₊) with t₁ > T₊ − ε
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform-exist, bpN:p3:gen-uniform, bpN:p3:gen-maximal
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform-exist | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-setup@L279-L279 | uniform existence time ε = δ/max(M,1)
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-setup@L279-L279 | delta,M are the uniform data fixing the positive common existence time
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-setup@L279-L279 | the finite maximal endpoint and its interval permit choosing t1 sufficiently near Tplus
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:cont-alpha

```text
NODE: stepN:p3:cont-alpha
KIND: step
TITLE: A solution through $z(t_1)$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L281-L282
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L281-L282
CONTRACT_ID: stepN:p3:cont-alpha
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; x0 in W; (Tminus,Tplus) and z the maximal interval and solution through x0; Phi has uniform data (delta,M,L); the finite-endpoint tail branch of cont-setup; eps and t1 are the constructed positive time and tail point
SOURCE_QUANTIFIERS: the gen-continuation data and finite-tail branch; eps,t1 chosen in cont-setup; then choose alpha through z(t1) and compare it with z on the overlap
SOURCE_CONCLUSION: α with α(t₁) = z(t₁) on (t₁−ε,t₁+ε) and α = z on (t₁−ε,t₁+ε) ∩ (T₋,T₊)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform-exist, bpN:p3:gen-uniqueness, stepN:p3:cont-setup, bpN:p3:gen-uniform, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform-exist | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L281-L281 | solution α through x = z(t₁) ∈ Φ at t₀ = t₁
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L282-L282 | α = z on the overlap
EDGE: stepN:p3:cont-setup | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L281-L281 | ε and t₁
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L281-L281 | uniform data on Phi at z(t1) discharge the local-existence premises
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-alpha@L281-L282 | the newly constructed alpha and maximal z are compared as general solutions on the overlap
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:cont-glue

```text
NODE: stepN:p3:cont-glue
KIND: step
TITLE: Gluing past $T_+$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L284-L286
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L284-L286
CONTRACT_ID: stepN:p3:cont-glue
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; x0 in W; (Tminus,Tplus) and z the maximal interval and solution through x0; Phi has uniform data (delta,M,L); finite-endpoint tail branch; eps,t1,alpha are the objects constructed in cont-setup/cont-alpha, with overlap agreement supplied by those dependencies
SOURCE_QUANTIFIERS: the gen-continuation data and finite-tail branch; the earlier eps,t1,alpha; define y by the displayed piecewise gluing and extend it arbitrarily outside its solution interval
SOURCE_CONCLUSION: y = z on (T₋,T₊), y = α on [T₊,t₁+ε) is a solution on (T₋,t₁+ε) ∋ 0 with y(0) = x₀, contradicting gen-maximal; the left end by time reversal
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:cont-alpha, bpN:p3:gen-sol#consequences, bpN:p3:gen-maximal, bpN:p3:gen-symmetry, bpN:p3:gen-sol, bpN:p3:gen-uniform
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:cont-alpha | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L284-L284 | α and its agreement with z
EDGE: bpN:p3:gen-sol#consequences | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L285-L285 | local nature on the two open sets covering (T₋,t₁+ε)
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L285-L285 | the extension past the endpoint contradicts maximality at this line
EDGE: bpN:p3:gen-symmetry | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L286-L286 | left end by time reversal
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L284-L285 | the pasted curve solves the same equation on the covering open neighborhoods
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:cont-glue@L284-L285 | the source continuation setting includes the uniform-data package used to construct the patch
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpN:p3:gen-continuation-compact

```text
NODE: bpN:p3:gen-continuation-compact
KIND: corollary
TITLE: Compact continuation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L289-L292
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L293-L295
CONTRACT_ID: bpN:p3:gen-continuation-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; x0 in W; (Tminus,Tplus),z the maximal interval and solution; K subset W compact; some tstar in [0,Tplus) has z(t) in K on [tstar,Tplus); the analogous left-tail alternative for the left conclusion
SOURCE_QUANTIFIERS: E,W,F,x0 fixed; the maximal solution; compact K; then a tail time tstar as stated
SOURCE_CONCLUSION: T₊ = +∞; likewise on the left
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-continuation, bpN:p3:gen-uniform-compact, bpN:p3:gen-maximal, bpN:p3:gen-uniform
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-continuation | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L290-L290 | setting and continuation criterion applied to Φ = K
EDGE: bpN:p3:gen-uniform-compact | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L294-L294 | uniform data for the compact set K
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L290-L290 | the corollary is stated for the maximal solution in the setting of the preceding theorem
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L294-L294 | construct uniform data for K and apply the uniform continuation criterion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpN:p3:gen-continuation-periodic

```text
NODE: bpN:p3:gen-continuation-periodic
KIND: corollary
TITLE: Closed sets, periodic fields
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L297-L299
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L300-L302
CONTRACT_ID: bpN:p3:gen-continuation-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E = ℝⁿ×ℝⁿ; U ⊂ ℝⁿ open; W = ℝⁿ × U; F C¹ on W with F(θ+k,I) = F(θ,I), k ∈ ℤⁿ; z the maximal solution through x₀ ∈ W; z(t)₂ ∈ K for t ∈ [t_*,T₊), K ⊂ U compact
SOURCE_QUANTIFIERS: n; U; F; x₀; K; t_*
SOURCE_CONCLUSION: T₊ = +∞ (likewise on the left); the angle components z(t)₁ may be unbounded
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-maximal, bpN:p3:gen-continuation, bpN:p3:gen-uniform-periodic, bpN:p3:gen-uniform
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L298-L298 | maximal solution through x₀
EDGE: bpN:p3:gen-continuation | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L301-L301 | the proof applies the continuation theorem here; L300 is begin{proof}
EDGE: bpN:p3:gen-uniform-periodic | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L301-L301 | this lemma supplies uniform data for R^n x K here
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L301-L301 | the proof uses the uniform-data package for the periodic cylinder
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpN:p3:gen-confinement

```text
NODE: bpN:p3:gen-confinement
KIND: theorem
TITLE: Confinement glue
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L310-L318
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L319-L324
CONTRACT_ID: bpN:p3:gen-confinement
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; x₀ ∈ W; τ > 0; Φ ⊂ E with uniform data; a priori confinement: every solution y on an open interval J ∋ 0 with y(0) = x₀ satisfies y(t) ∈ Φ for t ∈ J, ¦t¦ ≤ τ
SOURCE_QUANTIFIERS: E; W; F; x₀; τ; Φ; (δ,M,L); then z
SOURCE_CONCLUSION: the maximal interval contains [−τ,τ] in its interior, z is a solution on [−τ,τ] with z(t) ∈ Φ for ¦t¦ ≤ τ, and every solution on [−L,L] (0 ≤ L ≤ τ) with initial value x₀ equals z there
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-uniform, bpN:p3:gen-sol, bpN:p3:gen-maximal, stepN:p3:conf-noexit, stepN:p3:conf-concl
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L311-L312 | Phi is assumed to have uniform data
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L313-L313 | solutions y and conclusion IsSolIn
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L314-L314 | the conclusion refers to the maximal interval and solution here, not the isolated L316 “there”
EDGE: stepN:p3:conf-noexit | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L320-L320 | no exit before τ
EDGE: stepN:p3:conf-concl | blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L323-L323 | conclusion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:conf-noexit

```text
NODE: stepN:p3:conf-noexit
KIND: step
TITLE: No exit before $\tau$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-noexit@L320-L321
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-noexit@L320-L321
CONTRACT_ID: stepN:p3:conf-noexit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; x0 in W; tau>0; Phi has uniform data (delta,M,L); for every open interval J containing 0 and every IsSolIn F W J y through x0, y(t) in Phi whenever t in J and abs(t)<=tau; z and (Tminus,Tplus) denote the maximal solution and interval
SOURCE_QUANTIFIERS: the source data, maximal solution and interval; in the right-end contradiction argument suppose Tplus<=tau; use the analogous left-end argument
SOURCE_CONCLUSION: T₊ > τ and T₋ < −τ: otherwise z(t) ∈ Φ on [0,T₊) by confinement and gen-continuation gives T₊ = ∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p3:gen-maximal, bpN:p3:gen-continuation, bpN:p3:gen-uniform, bpN:p3:gen-sol
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p3:gen-maximal | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-noexit@L320-L320 | maximal solution z on (T₋,T₊)
EDGE: bpN:p3:gen-continuation | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-noexit@L321-L321 | continuation criterion gives T₊ = ∞
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-noexit@L320-L321 | uniform data of Phi are a premise of the applied continuation criterion
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-noexit@L320-L320 | the a priori hypothesis is instantiated with the maximal solution on its open interval
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepN:p3:conf-concl

```text
NODE: stepN:p3:conf-concl
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-concl@L323-L323
PROOF_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-concl@L323-L323
CONTRACT_ID: stepN:p3:conf-concl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; x0 in W; tau>0; Phi has uniform data (delta,M,L); for every open interval J containing 0 and every IsSolIn F W J y through x0, y(t) in Phi whenever t in J and abs(t)<=tau; z and its maximal interval are the objects of gen-maximal; endpoint inequalities are the conclusion of conf-noexit, not added hypotheses
SOURCE_QUANTIFIERS: the gen-confinement data and constructed maximal solution z; every t with abs(t)<=tau; every Ltime in [0,tau] and every IsSolIn F W [-Ltime,Ltime] y through x0
SOURCE_CONCLUSION: [-tau,tau] subset (Tminus,Tplus); IsSolIn F W [-tau,tau] z and z(t) in Phi for abs(t)<=tau; every Ltime in [0,tau] and every solution y through x0 on [-Ltime,Ltime] has y=z on that interval
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p3:conf-noexit, bpN:p3:gen-uniqueness, bpN:p3:gen-sol, bpN:p3:gen-uniform
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p3:conf-noexit | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-concl@L323-L323 | [−τ,τ] in the maximal interval
EDGE: bpN:p3:gen-uniqueness | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-concl@L323-L323 | uniqueness of solutions on [−L,L]
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-concl@L323-L323 | restriction of the genuine maximal solution gives IsSolIn on the closed interval
EDGE: bpN:p3:gen-uniform | blueprint-N/parts/p3-hamiltonian-ode.tex#stepN:p3:conf-concl@L323-L323 | the retained source confinement setting assumes this package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p3a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Suspected blueprint defects and source limits

No counterexample to a general-layer theorem was found. The quantitative Picard item at L32-L40 leaves t0 unintroduced and does not explicitly attach the bound on F to y in the closed ball; its natural local-ball reading is recorded transparently in the node NOTE. Make those binders explicit in a future source edit. This review does not expand the external into a global bound on F.

Gen-maximal L255 and its proof L267 assert uniqueness of the restricted maximal solution, never of arbitrary off-interval representatives; the replacement corrects the record rather than changing the source. The short-time lemma applies reversal/continuity helpers for a total F without any C1 assumption by taking W=E, where the curve automatically stays. Its short-time bootstrap and within-to-two-sided derivative conversion remain source premises/guards, not new assumptions on F.

## Validation

- `python3 scripts/depgraph_slice_check.py docs/graph/N/packets N-p3a`: `N-p3a: 51 nodes, 111 edges, 74 coverage items, 0 problems` for the input packet. This is structural only, not source correctness.
- Input nodes SHA256: `33898864ccc04f735c25ae7b2154e6fc38c419906f96da55c16df0d3d6de479d`.
- Input coverage SHA256: `7f4df0b129b72a59248acf7cb1ffab69d980d8d46a6aed369715fea63fb1bf9b`.
- `python3 scripts/depgraph_apply_review.py docs/graph/N/packets N-p3a docs/graph/N/reviews/N-p3a-review.md sol-review-N-c --dry-run`: `N-p3a: 33 replaced, 0 added, 0 coverage items, 0 unresolved FAILs, 18 PASS nodes`. Dry run only; no packet changes.
- Independent in-memory validation: one unique verdict per owned node; every FAIL has a complete replacement; all required fields and metadata retained; DEPS/ROUTES match EDGE targets; no duplicate or missing targets; source ranges valid; no cycle involving either reviewed slice after the proposed replacements.
- `git diff --check -- docs/graph/N/reviews/N-p3a-review.md docs/graph/N/reviews/N-p3b-review.md`: exit 0, no output. Final reviewed packet hashes and Part 3 hash were checked again; no replacement was applied.
- No Lean, build, implementation/provider inspection, manifest-state inspection or state-changing git operation. Only this review and the companion slice review are written.
