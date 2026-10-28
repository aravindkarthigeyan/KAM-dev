# P-p6 slice topology review

**Verdict: FAIL.** Reviewer tag: `sol-review-P-h`. Marker: `rev-P-h`.

Reviewed all 57 existing nodes, their 237 EDGE lines, all 88 existing coverage items, and all 300 lines of blueprint-P/parts/p6-newtonian-models.tex. This is source topology review only. No Lean command was run and no implementation or provider file was read for this task. Only this review file is edited.

## Binding scope and evidence

Read REVIEW-BRIEF.md and SPEC.md in full, including the writer rulings (P-FIXED deferred; P-p7 average/lattice exclusions). Read AGENTS.md, PLAN.md and DECISIONS.md. Source statements of every direct out-of-slice prerequisite were checked: Part 0 definition transcriptions and the literal frozen definition files, Part 1 chart/torus-transport/liouville-lattice, and I Part 7 scaling. Manifest access was restricted to identity data; no proof-state field informs this review. Relevant consumers in Parts 7, 8, 12 and 14a were checked for reachability/exclusion decisions.

Packet snapshot at review: HEAD `80b3da9fe0467f3cd18537c057bab0971bb1aac8` (concurrent unrelated work may move HEAD). SHA-256:

- `docs/graph/P/packets/P-p6.nodes.md`: `097866a0132f102107e3179f9ad9a85d729f526ba4e785ca0be9eb25db1e2487`.
- `docs/graph/P/packets/P-p6.coverage.md`: `09146a2f1ea2fa956291916c25b2db0d92305891d54f3edbd135438d7587f36f`.
- `blueprint-P/parts/p6-newtonian-models.tex`: `b6885887ba6dfd181e79925cb4584b4b5590d0debc3bc205a2c49aa86b634899`.

Read-only checks:

```text
python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p6 --structural
P-p6: 57 nodes, 237 edges, 88 coverage items, 0 problems, 0 TODO records (not counted: --structural)
```

`sha256sum -c docs/graph/P/CORPUS.sha256` and `sha256sum -c docs/graph/P/IMPORTS.sha256` both exit 0; every listed file reports OK. Structural success does not check missing semantic edges or unproved application premises.

## Findings

- **R1 — underlinked packages.** Nodes using W, P, g_i/f_i, n and positive physical data omit the direct conv#data edge. Tube proof/assembly steps also omit tube-constants when using its chosen axes, zeta_*, d or D. The complete blocks below add only the relevant direct dependencies; transitive paths do not satisfy SPEC.
- **R2 — proof ingredients promoted to hypotheses.** Several step records assume facts that their source proof derives (e.g. sq polynomial/positive with its derivative at L49; directional derivatives at L98; barycentric or Newton conclusions at L149, L173–177; the collision conclusion at L277; bounds on circ at L257). Restore the enclosing original premises and let the EDGE suppliers provide intermediate facts. The arbitrary-real-eps override and physical data omitted from orbit-transfer also need explicit source-field correction.
- **R3 — direct-use corrections.** At L204, naming (R1)/(R2) is not an application of reconstruction: ot-apply at L205 applies it. Remove the former edge and link the actual NoCollision premise. Link the elementary derivative rules where used at L174–176, and the literal length/dot definitions at L49. Remove mp-a → ext-tri: ext-tri is the reverse inequality, while L257 uses ordinary coordinate triangle algebra.
- **R4 — arbitrary-real-eps scope gap.** L184 explicitly allows eps in R; the current record simultaneously retains eps>=0. Correct the contract. L191 invokes hamilton-eqs, whose statement at L82–92 inherits eps>=0 from L20. The negative-eps extension is not stated there. Expose it as SOURCE_GAP, rather than assuming the fixed equations or silently strengthening the supplier. The gap does not refute the positive-eps moving-Sun theorem; it preserves the retained whole fixed-Sun branch honestly.
- **R5 — maximum notation and conditional domains.** measure-positive(a) allows equal positive axes, whereas tube-constants requires distinct axes for gamma_a>0. Its reused a_max notation is separated as a definition projection; do not add distinct axes as a measure-positive premise or apply the gamma_a estimates there. Also preserve the source finite-nonempty condition n>=1.
- **R6 — coverage.** re-b begins on L125 after re-a on that same physical line; its labelled proof step is missing from the inventory. It is excluded with its parent, rather than invented as root-feeding work. Two existing reasons overclaim links that are not present. New subdefinition/gap items accompany the proposed nodes.

## Node verdicts

Spans below refer to blueprint-P/parts/p6-newtonian-models.tex; both statement and proof spans were reread. PASS means this record passes as a source record, not that its mathematics has a Lean proof.

| Node ID | Verdict | Source spans reread | Reason |
|---|---|---|---|
| bpP:p6:ext-chain | PASS | L28-L28 | Source fields, direct dependencies and locators match; no local defect found. |
| bpP:p6:ext-sqrt | PASS | L29-L29 | Source fields, direct dependencies and locators match; no local defect found. |
| bpP:p6:ext-top | PASS | L30-L30 | Source fields, direct dependencies and locators match; no local defect found. |
| bpP:p6:ext-sum | PASS | L31-L31 | Source fields, direct dependencies and locators match; no local defect found. |
| bpP:p6:ext-tri | PASS | L32-L32 | Source fields, direct dependencies and locators match; no local defect found. |
| bpP:p6:ext-meas | PASS | L33-L33 | Source fields, direct dependencies and locators match; no local defect found. |
| bpP:p6:plane | PASS | L38-L45; L46-L50 | Source fields, direct dependencies and locators match; no local defect found. |
| stepP:p6:pl-a | PASS | L47-L47 | Source fields, direct dependencies and locators match; no local defect found. |
| stepP:p6:pl-b | PASS | L48-L48 | Source fields, direct dependencies and locators match; no local defect found. |
| stepP:p6:pl-c | FAIL | L49-L49 | R2: polynomiality, positivity and the derivative of sq are proved here, not additional hypotheses; R3: the derivative formulas use the literal planar length and scalar product |
| bpP:p6:domain | PASS | L54-L56; L57-L60 | Source fields, direct dependencies and locators match; no local defect found. |
| stepP:p6:dom-open | FAIL | L58-L58 | R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:dom-smooth | FAIL | L59-L59 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| bpP:p6:split | PASS | L62-L67; L68-L70 | Source fields, direct dependencies and locators match; no local defect found. |
| stepP:p6:sp-alg | FAIL | L69-L69 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| bpP:p6:kepler-part | FAIL | L71-L73 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation) |
| bpP:p6:action-reaction | PASS | L75-L77; L78-L80 | Source fields, direct dependencies and locators match; no local defect found. |
| bpP:p6:hamilton-eqs | PASS | L82-L92; L93-L101 | Source fields, direct dependencies and locators match; no local defect found. |
| stepP:p6:he-dir | FAIL | L94-L97 | R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:he-coef | FAIL | L98-L98 | R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:he-fix | FAIL | L99-L99 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:he-curve | FAIL | L100-L100 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| bpP:p6:bary-algebra | PASS | L138-L146; L147-L151 | Source fields, direct dependencies and locators match; no local defect found. |
| stepP:p6:ba-ab | FAIL | L148-L148 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:ba-c | FAIL | L149-L149 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:ba-d | FAIL | L150-L150 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| bpP:p6:reconstruction | PASS | L153-L168; L169-L178 | Source fields, direct dependencies and locators match; no local defect found. |
| stepP:p6:rc-coords | FAIL | L170-L171 | R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:rc-a | FAIL | L172-L172 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:rc-sun | FAIL | L173-L173 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:rc-planets | FAIL | L174-L174 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS; R3: differentiation of a sum or constant multiple is used in this step |
| stepP:p6:rc-vplanet | FAIL | L175-L175 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS; R3: differentiation of a sum or constant multiple is used in this step |
| stepP:p6:rc-vsun | FAIL | L176-L176 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS; R3: differentiation of a sum or constant multiple is used in this step |
| stepP:p6:rc-pack | FAIL | L177-L177 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| bpP:p6:units | FAIL | L179-L181 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation) |
| bpP:p6:reconstruction-fixed | FAIL | L183-L189; L190-L192 | R4: the source explicitly allows eps in R; do not retain an additional eps>=0 premise; R4: remove the stale quantifier-defect note and disclose the actual scope gap |
| stepP:p6:rf-eq | FAIL | L191-L191 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS; R4: the cited result inherits eps>=0 and cannot alone supply the arbitrary-real-eps formula; R4: missing extension of the fixed-Sun Hamilton equations from eps>=0 to eps in R |
| bpP:p6:orbit-transfer | FAIL | L194-L202; L203-L206 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the inherited physical-data hypotheses |
| stepP:p6:ot-curve | FAIL | L204-L204 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS; R3: R1/R2 are premise names; reconstruction is applied only in ot-apply; R3: R1 is the collision hypothesis evaluated at phi+t w |
| stepP:p6:ot-apply | FAIL | L205-L205 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| bpP:p6:tube-constants | FAIL | L210-L216 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R5: a_max is the finite maximum subdefinition; R2: n>=1 is needed for the finite nonempty extrema and is fixed in the source conventions |
| bpP:p6:tube-geometry | FAIL | L218-L228; L229-L235 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation) |
| stepP:p6:tg-a | FAIL | L230-L230 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:tg-b | FAIL | L231-L231 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R1: uses the chosen axes or tube constants zeta_*, d, D directly; R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:tg-c | FAIL | L232-L232 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R1: uses the chosen axes or tube constants zeta_*, d, D directly; R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:tg-d | FAIL | L233-L233 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:tg-e | FAIL | L234-L234 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R1: uses the chosen axes or tube constants zeta_*, d, D directly; R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| bpP:p6:newton-in-tube | PASS | L240-L242; L243-L245 | Source fields, direct dependencies and locators match; no local defect found. |
| bpP:p6:measure-positive | FAIL | L249-L255; L256-L259 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R5: uses a_max=max_i a_i, without assuming pairwise distinct axes or the gap constants |
| stepP:p6:mp-a | FAIL | L257-L257 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R3: ext-tri states the reverse triangle inequality and is not used by the coordinate-bound proof; R5: uses a_max=max_i a_i, without assuming pairwise distinct axes or the gap constants; R2: the bounds on circ are derived here, not hypotheses |
| stepP:p6:mp-b | FAIL | L258-L258 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R2: the measure formula is obtained from liouville-lattice, not assumed; R1: the conditional measure result uses the source c-chart package; R5: preserve the data dependence of a_max and P_max used for finiteness |
| bpP:p6:movkol-assembly | PASS | L266-L273; L274-L279 | Source fields, direct dependencies and locators match; no local defect found. |
| stepP:p6:ma-tube | FAIL | L275-L275 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R1: uses the chosen axes or tube constants zeta_*, d, D directly; R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:ma-coll | FAIL | L276-L276 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R1: uses the chosen axes or tube constants zeta_*, d, D directly; R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:ma-newton | FAIL | L277-L277 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R1: uses the chosen axes or tube constants zeta_*, d, D directly; R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| stepP:p6:ma-pair | FAIL | L278-L278 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation); R1: uses the chosen axes or tube constants zeta_*, d, D directly; R2: restore the enclosing source premises; derived proof ingredients are supplied by DEPS |
| bpP:p6:conv#data | PASS | L20-L24 | Source fields, direct dependencies and locators match; no local defect found. |

## Coverage failures

| Coverage item | Verdict | Reason |
|---|---|---|
| stepP:p6:re-b | FAIL | R6: missing labelled proof step on the same source line as re-a |
| p6:prose-L20-L24 | FAIL | R6: the claim that all consumers are already linked is false |
| bpP:p6:mp-use | FAIL | R6: exclusion is valid, but its reason falsely claims a torus-union dependency exists in measure-positive |
| p6:a-max-L212 | FAIL | R5: inventory the reused maximum subdefinition separately from distinct-axis geometry |
| p6:real-eps-bridge-L191 | FAIL | R4: inventory the unmet arbitrary-real-eps application premise |

all other coverage items PASS

The new a-max and real-eps entries are additions, not allegations that the mechanical inventory already contained them. The original 88-item inventory has three failed records/omissions identified above (including absent re-b), plus the two supplemental entries required by the proposed subnodes.

## Exclusions, conventions and application checks

Excluding nbody, reduction, re-a/re-c, reduction-role and fixkol-assembly is supported by corpus searches: the live moving-Sun reconstruction is verified directly from hamilton-eqs; reduction mentions elsewhere are pointers/provenance; fixkol-assembly is for deferred P-FIXED. The new re-b inventory follows the same exclusion. The vs-I comparison explicitly says collision-exclusion/min-distance are not needed, and units explicitly says N newton-reduction is not needed: these must not acquire import edges. Kepler-part is retained because stepP:p7:pc-dec and the same-chart use consume its mass dictionary; units is consumed at stepP:p14:amd-b.

Reconstruction-fixed and rf-eq are retained in the present whole-result packet: ot-apply proves both branches of orbit-transfer, whose moving branch is consumed by ma-newton, and newton-in-tube is consumed by the Part 12 route. SPEC describes their exclusion as expected if only deferred P-FIXED consumes them, which is not the topology of these retained combined records. Splitting out unused clauses would require a coordinated source-record revision; deleting a supplier while retaining its whole consumer is not a valid repair.

For reconstruction: positive m0,m_i and mu>=0 give M_*=m0+mu sum m_i>0; R1 gives all length guards; R2 and the Hamilton equations supply derivatives; bary-algebra gives exact difference identities; action-reaction supplies the Sun force cancellation. G is absorbed in the arbitrary mass array only for IsNewtonSolutionOn; IsMovingSolutionOn is the G=m0=1 specialization. No open/connected time-set assumption is introduced. For tori, clause (viii) gives a genuine derivative on all R; the NoCollision premise must hold at phi+t w. For geometry, the max-to-Euclidean factor sqrt2 and d=gamma_a/2, D=2a_max+gamma_a are preserved, including the n=1 omission of the pair minimum and exact mu-independence. Phase order, body index 2i+c, physical lengths and phase periods 1 agree with the frozen definitions.

For measure-positive(b), the source explicitly supplies the c-chart, open domain, Q1/Q2 with sigma=0, lattice invariance and measurability/positivity of A, so the quotient measure result applies. Its Borel conclusion is conditional on Borel A, as required; only part (a) is used by Part 12. The full retained result still requires its own complete dependencies.

## Replacement fragments for slice P-p6

Each block is complete. Every unmodified line of an existing block is copied verbatim; only the failing fields, DEPS and matching EDGE lines change. These are proposals requiring a different delta reviewer after application.

### stepP:p6:pl-c

```text
NODE: stepP:p6:pl-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:pl-c@L49-L49
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:pl-c@L49-L49
CONTRACT_ID: stepP:p6:pl-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v in R^2 with v!=0; h in R^2; sq, l and dot are the frozen planar definitions
SOURCE_QUANTIFIERS: v in R^2 minus {0}, h in R^2
SOURCE_CONCLUSION: l and 1/l are C-infinity there with Dl(v)h=(v.h)/l(v) and D(1/l)=-Dl/l^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:ext-sqrt, bpP:p6:ext-chain, bpP:p0:plane#planeSq, bpP:p0:plane#planeLength, bpP:p0:plane#planeDot
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:ext-sqrt | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:pl-c@L49-L49 | sqrt is C-infinity on (0,infinity) with derivative 1/(2 sqrt x)
EDGE: bpP:p6:ext-chain | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:pl-c@L49-L49 | chain and quotient rules
EDGE: bpP:p0:plane#planeSq | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:pl-c@L49-L49 | sq is planeSq
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:pl-c@L49-L49 | R3: the derivative formulas use the literal planar length and scalar product
EDGE: bpP:p0:plane#planeDot | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:pl-c@L49-L49 | R3: the derivative formulas use the literal planar length and scalar product
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:dom-open

```text
NODE: stepP:p6:dom-open
KIND: step
TITLE: Openness
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-open@L58-L58
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-open@L58-L58
CONTRACT_ID: stepP:p6:dom-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); H_mov=movingHamiltonian G m0 m mu; H_fix=fixedHamiltonian G m0 m eps
SOURCE_QUANTIFIERS: q
SOURCE_CONCLUSION: W is open
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:plane, bpP:p6:ext-top, bpP:p0:nocoll#NoCollision, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-open@L58-L58 | Lemma plane(a): positivity of sq iff nonzero length
EDGE: bpP:p6:ext-top | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-open@L58-L58 | preimages of open sets and finite intersections are open
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-open@L58-L58 | NoColl as the finite conjunction
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-open@L58-L58 | W is defined in the conventions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:dom-smooth

```text
NODE: stepP:p6:dom-smooth
KIND: step
TITLE: Smoothness
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-smooth@L59-L59
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-smooth@L59-L59
CONTRACT_ID: stepP:p6:dom-smooth
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); H_mov=movingHamiltonian G m0 m mu; H_fix=fixedHamiltonian G m0 m eps
SOURCE_QUANTIFIERS: z in W
SOURCE_CONCLUSION: H_mov and H_fix are C-infinity on W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:plane, bpP:p6:ext-chain, bpP:p0:movham#movingHamiltonian, bpP:p0:fixham#fixedHamiltonian, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-smooth@L59-L59 | Lemma plane(c): 1/l is C-infinity off 0
EDGE: bpP:p6:ext-chain | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-smooth@L59-L59 | finite sums, products and compositions of C-infinity maps
EDGE: bpP:p0:movham#movingHamiltonian | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-smooth@L59-L59 | terms of H_mov
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-smooth@L59-L59 | terms of H_fix
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:dom-smooth@L59-L59 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:sp-alg

```text
NODE: stepP:p6:sp-alg
KIND: step
TITLE: Algebra
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:sp-alg@L69-L69
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:sp-alg@L69-L69
CONTRACT_ID: stepP:p6:sp-alg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); H_Kep(q,p)=sum_i[l(p_i)^2/(2m_i)-G m0 m_i/l(q_i)]; f_mov, f_fix as displayed for z in W
SOURCE_QUANTIFIERS: z in Ph_{2n}
SOURCE_CONCLUSION: kinetic part of H_mov is sum l(p_i)^2/(2m_i)+(mu/m0)(1/2)l(P)^2; potential parts agree; difference at eps=mu is mu l(P)^2/(2m0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:plane, bpP:p0:movham#movingHamiltonian, bpP:p0:fixham#fixedHamiltonian, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:sp-alg@L69-L69 | Lemma plane(a): l(P)^2 expansion by bilinearity
EDGE: bpP:p0:movham#movingHamiltonian | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:sp-alg@L69-L69 | kinetic and potential parts of H_mov
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:sp-alg@L69-L69 | pair-potential terms of H_fix
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:sp-alg@L69-L69 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p6:kepler-part

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
DEPS: bpP:p6:split, I:bpI:p7:scaling, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:split | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:kepler-part@L72-L72 | the splitting H=H_Kep+mu f
EDGE: I:bpI:p7:scaling | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:kepler-part@L72-L72 | mass dictionary of the Kepler energy E_k used to rewrite each summand of H_Kep
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:kepler-part@L71-L71 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark kept: its stated facts (H_Kep = sum m_i E_{k}, planet mass not reduced mass) are consumed by Part 7 stepP:p7:pc-dec and bpP:p7:same-chart and by Part 8 stepP:p8:l64-a. CROSS-OWNERSHIP CANDIDATE: I:bpI:p7:scaling is a genuine use (mass dictionary).
```

### stepP:p6:he-dir

```text
NODE: stepP:p6:he-dir
KIND: step
TITLE: Directional derivative
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-dir@L94-L97
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-dir@L94-L97
CONTRACT_ID: stepP:p6:he-dir
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); z=(q,p) in W; X_H=(d_pH,-d_qH) of Definition bpP:p0:hamsymp; block form of vectors of R^{2n} (index 2i+c)
SOURCE_QUANTIFIERS: z in W; (dq,dp) in Ph_{2n}
SOURCE_CONCLUSION: DT(p)dp=sum dp_i.(p_i/m_i+(mu/m0)P) and DV(q)dq=G m0 sum m_i q_i.dq_i/l(q_i)^3+mu G sum_{i<j} m_i m_j (q_i-q_j).(dq_i-dq_j)/l(q_i-q_j)^3
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:domain, bpP:p6:ext-chain, bpP:p6:plane, bpP:p0:movham#movingHamiltonian, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:domain | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-dir@L94-L94 | H_mov is differentiable at z
EDGE: bpP:p6:ext-chain | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-dir@L94-L94 | chain rule and polynomial derivative
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-dir@L94-L94 | Lemma plane(c): derivative of 1/l
EDGE: bpP:p0:movham#movingHamiltonian | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-dir@L94-L94 | splitting H_mov=T+V
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-dir@L94-L94 | W and P
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:he-coef

```text
NODE: stepP:p6:he-coef
KIND: step
TITLE: Collect coefficients
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-coef@L98-L98
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-coef@L98-L98
CONTRACT_ID: stepP:p6:he-coef
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); z=(q,p) in W; X_H=(d_pH,-d_qH) of Definition bpP:p0:hamsymp; block form of vectors of R^{2n} (index 2i+c)
SOURCE_QUANTIFIERS: z in W; index (i,c)
SOURCE_CONCLUSION: d_{q_i}H_mov=G m0 m_i g_i-mu G m_i f_i and d_{p_i}H_mov=p_i/m_i+(mu/m0)P; hence the formula for X_Hmov(z)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:he-dir, bpP:p6:plane, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:he-dir | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-coef@L98-L98 | the derivatives DT, DV
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-coef@L98-L98 | l(q_i-q_j)=l(q_j-q_i): evenness
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-coef@L98-L98 | components of X_H are DH(z)(0,e) and -DH(z)(e,0)
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-coef@L98-L98 | f_i definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:he-fix

```text
NODE: stepP:p6:he-fix
KIND: step
TITLE: $H_{\rm fix}$
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-fix@L99-L99
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-fix@L99-L99
CONTRACT_ID: stepP:p6:he-fix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); z=(q,p) in W; X_H=(d_pH,-d_qH) of Definition bpP:p0:hamsymp; block form of vectors of R^{2n} (index 2i+c)
SOURCE_QUANTIFIERS: z in W
SOURCE_CONCLUSION: formula for X_Hfix(z)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:he-dir, stepP:p6:he-coef, bpP:p0:fixham#fixedHamiltonian, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:he-dir | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-fix@L99-L99 | the same computation
EDGE: stepP:p6:he-coef | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-fix@L99-L99 | the same coefficient collection
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-fix@L99-L99 | definition of H_fix
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-fix@L99-L99 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:he-curve

```text
NODE: stepP:p6:he-curve
KIND: step
TITLE: The curve statement
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-curve@L100-L100
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-curve@L100-L100
CONTRACT_ID: stepP:p6:he-curve
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); z=(q,p) in W; X_H=(d_pH,-d_qH) of Definition bpP:p0:hamsymp; block form of vectors of R^{2n} (index 2i+c)
SOURCE_QUANTIFIERS: curve z=(q,p):J->W; t in J
SOURCE_CONCLUSION: z has derivative X_H(z(t)) at t iff each coordinate has the corresponding derivative
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:ext-chain, stepP:p6:he-coef, stepP:p6:he-fix, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:ext-chain | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-curve@L100-L100 | a curve into R^N has a derivative iff each coordinate does
EDGE: stepP:p6:he-coef | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-curve@L100-L100 | compare with the displayed X_Hmov
EDGE: stepP:p6:he-fix | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-curve@L100-L100 | compare with the displayed X_Hfix
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-curve@L100-L100 | definition of X_H
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:he-curve@L100-L100 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:ba-ab

```text
NODE: stepP:p6:ba-ab
KIND: step
TITLE: (a),(b)
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-ab@L148-L148
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-ab@L148-L148
CONTRACT_ID: stepP:p6:ba-ab
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); mu>=0; q,p in R^{2n}; M*=m0+mu sum m_i>0; M=mass_mu=actualMasses; Q=barycentricPositions m0 m mu q; V=barycentricVelocities m0 m mu p; P=sum p_i
SOURCE_QUANTIFIERS: mu>=0; planets i,j
SOURCE_CONCLUSION: Q_0=x_0, Q_i=x_0+q_i, V_0=-(mu/m0)P, V_i=p_i/m_i; differences Q_j-Q_i=q_j-q_i; equal lengths
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:barycentric#barycentricPositions, bpP:p0:barycentric#barycentricVelocities, bpP:p6:plane, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:barycentric#barycentricPositions | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-ab@L148-L148 | unfold barycentricPositions
EDGE: bpP:p0:barycentric#barycentricVelocities | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-ab@L148-L148 | unfold barycentricVelocities
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-ab@L148-L148 | l is even
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-ab@L148-L148 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:ba-c

```text
NODE: stepP:p6:ba-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-c@L149-L149
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-c@L149-L149
CONTRACT_ID: stepP:p6:ba-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); mu>=0; q,p in R^{2n}; M*=m0+mu sum m_i>0; M=mass_mu=actualMasses; Q=barycentricPositions m0 m mu q; V=barycentricVelocities m0 m mu p; P=sum p_i
SOURCE_QUANTIFIERS: mu>=0
SOURCE_CONCLUSION: sum M_k Q_k=0 and sum M_k V_k=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:ba-ab, bpP:p0:barycentric#actualMasses, bpP:p0:barycentric#barycentricPositions, bpP:p0:barycentric#barycentricVelocities, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:ba-ab | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-c@L149-L149 | the formulas Q_i=x_0+q_i, V_0, V_i
EDGE: bpP:p0:barycentric#actualMasses | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-c@L149-L149 | masses M_k
EDGE: bpP:p0:barycentric#barycentricPositions | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-c@L149-L149 | x_0
EDGE: bpP:p0:barycentric#barycentricVelocities | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-c@L149-L149 | V_0
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-c@L149-L149 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:ba-d

```text
NODE: stepP:p6:ba-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-d@L150-L150
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-d@L150-L150
CONTRACT_ID: stepP:p6:ba-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); mu>=0; q,p in R^{2n}; M*=m0+mu sum m_i>0; M=mass_mu=actualMasses; Q=barycentricPositions m0 m mu q; V=barycentricVelocities m0 m mu p; P=sum p_i
SOURCE_QUANTIFIERS: mu>=0
SOURCE_CONCLUSION: l(x_0)<=(mu/m0)sum m_i l(q_i)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:plane, stepP:p6:ba-ab, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-d@L150-L150 | Lemma plane(a): homogeneity and triangle inequality of l
EDGE: stepP:p6:ba-ab | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-d@L150-L150 | formula for x_0
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ba-d@L150-L150 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:rc-coords

```text
NODE: stepP:p6:rc-coords
KIND: step
TITLE: Coordinates of the equations
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-coords@L170-L171
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-coords@L170-L171
CONTRACT_ID: stepP:p6:rc-coords
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); G,m0>0; m_i>0; mu>=0; J subset R arbitrary; z=(q,p):R->Ph_{2n} such that for all t in J: (R1) NoColl(q(t)); (R2) z has derivative X_Hmov(z(t)) at t, H_mov=movingHamiltonian G m0 m mu; M=mass_mu; Q(t)=barycentricPositions m0 m mu q(t); V(t)=barycentricVelocities m0 m mu p(t)
SOURCE_QUANTIFIERS: t in J
SOURCE_CONCLUSION: q_i'=p_i/m_i+(mu/m0)P=:a_i and p_i'=-G m0 m_i g_i(q)+mu G m_i f_i(q)=:b_i at t; bodyVector(q(.),i) and every linear combination of these have the stated derivatives
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:hamilton-eqs, bpP:p6:ext-chain, bpP:p0:body#bodyVector, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:hamilton-eqs | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-coords@L170-L170 | curve statement of the Hamilton equations
EDGE: bpP:p6:ext-chain | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-coords@L171-L171 | derivative of a coordinate projection and of linear combinations
EDGE: bpP:p0:body#bodyVector | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-coords@L171-L171 | bodyVector is a coordinate projection
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-coords@L170-L170 | g_i, f_i, P
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:rc-a

```text
NODE: stepP:p6:rc-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-a@L172-L172
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-a@L172-L172
CONTRACT_ID: stepP:p6:rc-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); G,m0>0; m_i>0; mu>=0; J subset R arbitrary; z=(q,p):R->Ph_{2n} such that for all t in J: (R1) NoColl(q(t)); (R2) z has derivative X_Hmov(z(t)) at t, H_mov=movingHamiltonian G m0 m mu; M=mass_mu; Q(t)=barycentricPositions m0 m mu q(t); V(t)=barycentricVelocities m0 m mu p(t)
SOURCE_QUANTIFIERS: t in J; i!=j
SOURCE_CONCLUSION: l(Q_i-Q_0)=l(q_i)>0, l(Q_j-Q_i)=l(q_j-q_i)>0, l(Q_0-Q_i)=l(Q_i-Q_0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:bary-algebra, bpP:p0:nocoll#NoCollision, bpP:p6:plane, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:bary-algebra | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-a@L172-L172 | (a): lengths of differences of barycentric positions
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-a@L172-L172 | NoCollision gives positivity
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-a@L172-L172 | l is even
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-a@L172-L172 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:rc-sun

```text
NODE: stepP:p6:rc-sun
KIND: step
TITLE: (b), Sun
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-sun@L173-L173
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-sun@L173-L173
CONTRACT_ID: stepP:p6:rc-sun
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); G,m0>0; m_i>0; mu>=0; J subset R arbitrary; z=(q,p):R->Ph_{2n} such that for all t in J: (R1) NoColl(q(t)); (R2) z has derivative X_Hmov(z(t)) at t, H_mov=movingHamiltonian G m0 m mu; M=mass_mu; Q(t)=barycentricPositions m0 m mu q(t); V(t)=barycentricVelocities m0 m mu p(t)
SOURCE_QUANTIFIERS: t in J
SOURCE_CONCLUSION: Q_0 has derivative -(mu/m0)P=V_0 at t
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:rc-coords, bpP:p6:ext-chain, bpP:p6:bary-algebra, bpP:p0:barycentric#barycentricPositions, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:rc-coords | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-sun@L173-L173 | a_i, the derivative of q_i
EDGE: bpP:p6:ext-chain | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-sun@L173-L173 | derivative of a constant multiple of a sum
EDGE: bpP:p6:bary-algebra | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-sun@L173-L173 | (b): V_0=-(mu/m0)P
EDGE: bpP:p0:barycentric#barycentricPositions | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-sun@L173-L173 | x_0 formula
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-sun@L173-L173 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:rc-planets

```text
NODE: stepP:p6:rc-planets
KIND: step
TITLE: (b), planets
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-planets@L174-L174
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-planets@L174-L174
CONTRACT_ID: stepP:p6:rc-planets
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); G,m0>0; m_i>0; mu>=0; J subset R arbitrary; z=(q,p):R->Ph_{2n} such that for all t in J: (R1) NoColl(q(t)); (R2) z has derivative X_Hmov(z(t)) at t, H_mov=movingHamiltonian G m0 m mu; M=mass_mu; Q(t)=barycentricPositions m0 m mu q(t); V(t)=barycentricVelocities m0 m mu p(t)
SOURCE_QUANTIFIERS: t in J; planet i
SOURCE_CONCLUSION: Q_i has derivative V_i at t
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:rc-sun, stepP:p6:rc-coords, bpP:p6:bary-algebra, bpP:p6:conv#data, bpP:p6:ext-chain
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:rc-sun | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-planets@L174-L174 | Q_0'=V_0
EDGE: stepP:p6:rc-coords | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-planets@L174-L174 | q_i'=a_i
EDGE: bpP:p6:bary-algebra | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-planets@L174-L174 | (b): V_i-V_0=a_i
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-planets@L174-L174 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:ext-chain | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-planets@L174-L174 | R3: differentiation of a sum or constant multiple is used in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:rc-vplanet

```text
NODE: stepP:p6:rc-vplanet
KIND: step
TITLE: (c), planets
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vplanet@L175-L175
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vplanet@L175-L175
CONTRACT_ID: stepP:p6:rc-vplanet
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); G,m0>0; m_i>0; mu>=0; J subset R arbitrary; z=(q,p):R->Ph_{2n} such that for all t in J: (R1) NoColl(q(t)); (R2) z has derivative X_Hmov(z(t)) at t, H_mov=movingHamiltonian G m0 m mu; M=mass_mu; Q(t)=barycentricPositions m0 m mu q(t); V(t)=barycentricVelocities m0 m mu p(t)
SOURCE_QUANTIFIERS: t in J; planet i
SOURCE_CONCLUSION: V_i has derivative sum_{l!=i} G M_l (Q_l-Q_i)/l(Q_l-Q_i)^3 at t
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:rc-coords, stepP:p6:rc-a, bpP:p6:bary-algebra, bpP:p6:ext-sum, bpP:p0:barycentric#actualMasses, bpP:p6:conv#data, bpP:p6:ext-chain
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:rc-coords | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vplanet@L175-L175 | p_i'=b_i
EDGE: stepP:p6:rc-a | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vplanet@L175-L175 | lengths of differences
EDGE: bpP:p6:bary-algebra | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vplanet@L175-L175 | Q_0-Q_i=-q_i and Q_j-Q_i=q_j-q_i
EDGE: bpP:p6:ext-sum | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vplanet@L175-L175 | Fin.sum_univ_succ splitting l=0 and l=succ(j)
EDGE: bpP:p0:barycentric#actualMasses | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vplanet@L175-L175 | M_0=m0, M_j=mu m_j
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vplanet@L175-L175 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:ext-chain | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vplanet@L175-L175 | R3: differentiation of a sum or constant multiple is used in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:rc-vsun

```text
NODE: stepP:p6:rc-vsun
KIND: step
TITLE: (c), Sun
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vsun@L176-L176
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vsun@L176-L176
CONTRACT_ID: stepP:p6:rc-vsun
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); G,m0>0; m_i>0; mu>=0; J subset R arbitrary; z=(q,p):R->Ph_{2n} such that for all t in J: (R1) NoColl(q(t)); (R2) z has derivative X_Hmov(z(t)) at t, H_mov=movingHamiltonian G m0 m mu; M=mass_mu; Q(t)=barycentricPositions m0 m mu q(t); V(t)=barycentricVelocities m0 m mu p(t)
SOURCE_QUANTIFIERS: t in J
SOURCE_CONCLUSION: V_0 has derivative sum_{l>=1} G M_l (Q_l-Q_0)/l(Q_l-Q_0)^3 at t
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:rc-coords, bpP:p6:action-reaction, bpP:p6:bary-algebra, bpP:p0:barycentric#actualMasses, bpP:p6:conv#data, bpP:p6:ext-chain
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:rc-coords | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vsun@L176-L176 | p_i'=b_i
EDGE: bpP:p6:action-reaction | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vsun@L176-L176 | sum m_i f_i=0
EDGE: bpP:p6:bary-algebra | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vsun@L176-L176 | (a) Q_i-Q_0=q_i and (b) V_0
EDGE: bpP:p0:barycentric#actualMasses | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vsun@L176-L176 | M_l=mu m_l
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vsun@L176-L176 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:ext-chain | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-vsun@L176-L176 | R3: differentiation of a sum or constant multiple is used in this step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:rc-pack

```text
NODE: stepP:p6:rc-pack
KIND: step
TITLE: Packaging
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-pack@L177-L177
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-pack@L177-L177
CONTRACT_ID: stepP:p6:rc-pack
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); G,m0>0; m_i>0; mu>=0; J subset R arbitrary; z=(q,p):R->Ph_{2n} such that for all t in J: (R1) NoColl(q(t)); (R2) z has derivative X_Hmov(z(t)) at t, H_mov=movingHamiltonian G m0 m mu; M=mass_mu; Q(t)=barycentricPositions m0 m mu q(t); V(t)=barycentricVelocities m0 m mu p(t)
SOURCE_QUANTIFIERS: t in J; J=R for the all-time predicate
SOURCE_CONCLUSION: the three clauses are the conjuncts of IsNewtonSolutionOn (G*M) J Q V and, for J=R, of IsNewtonSolution G (actualMasses m0 m mu) Q V; mu=0 included
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:rc-a, stepP:p6:rc-sun, stepP:p6:rc-planets, stepP:p6:rc-vplanet, stepP:p6:rc-vsun, bpP:p0:newton#IsNewtonSolution, bpP:p0:d25-newton#IsNewtonSolutionOn, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:rc-a | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-pack@L177-L177 | clause (a)
EDGE: stepP:p6:rc-sun | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-pack@L177-L177 | clause (b) for the Sun
EDGE: stepP:p6:rc-planets | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-pack@L177-L177 | clause (b) for planets
EDGE: stepP:p6:rc-vplanet | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-pack@L177-L177 | clause (c) for planets
EDGE: stepP:p6:rc-vsun | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-pack@L177-L177 | clause (c) for the Sun
EDGE: bpP:p0:newton#IsNewtonSolution | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-pack@L177-L177 | frozen all-time predicate
EDGE: bpP:p0:d25-newton#IsNewtonSolutionOn | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-pack@L177-L177 | interval predicate with G absorbed in the masses
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rc-pack@L177-L177 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p6:units

```text
NODE: bpP:p6:units
KIND: claim
TITLE: Units and the D25 predicates
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:units@L179-L181
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:units@L179-L181
CONTRACT_ID: bpP:p6:units
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the frozen predicates IsMovingSolutionOn (G=m0=1) and IsNewtonSolutionOn (G=1 in the force formula, arbitrary mass array)
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
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:units@L179-L179 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: remark kept: consumed by Part 14a stepP:p14:amd-b. Its mention of N:bpN:p3:newton-reduction ("covers only the all-time predicates ... is not needed here") is a does-not-apply comparison and is not an edge.
```

### bpP:p6:reconstruction-fixed

```text
NODE: bpP:p6:reconstruction-fixed
KIND: proposition
TITLE: Reconstruction: fixed Sun
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed@L183-L189
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed@L190-L192
CONTRACT_ID: bpP:p6:reconstruction-fixed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; G,m0>0; m_i>0; eps in R (overrides the default eps>=0 of bpP:p6:conv#data); J subset R arbitrary; z=(q,p):R->Ph_{2n} with, for every t in J, NoColl(q(t)) and derivative X_Hfix(z(t)) at t; H_fix=fixedHamiltonian G m0 m eps; Q_i=q_i and V_i=p_i/m_i
SOURCE_QUANTIFIERS: G,m0,m_i,eps; J; z; then every t in J
SOURCE_CONCLUSION: for all t in J: l(Q_i(t))>0 for every i; l(Q_j(t)-Q_i(t))>0 for i!=j; Q_i has derivative V_i(t); V_i has derivative -G m0 Q_i/l(Q_i)^3+eps sum_{j!=i} G m_j (Q_j-Q_i)/l(Q_j-Q_i)^3; for J=R this is IsFixedSolution G m0 m eps Q V
CONSTANT_SCOPE: none (free data)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:rf-eq, bpP:p0:fixham#fixedHamiltonian, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p0:nocoll#NoCollision, bpP:p0:fixedsol#IsFixedSolution, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:rf-eq | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed@L191-L191 | proof step Equations
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed@L184-L184 | H_fix
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed@L184-L184 | X_Hfix
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed@L184-L184 | NoColl hypothesis
EDGE: bpP:p0:fixedsol#IsFixedSolution | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed@L186-L186 | IsFixedSolution for J=R
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed@L184-L184 | data of Part 6
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The current L184 has separate universal index quantifiers, matching the frozen predicate. The arbitrary-real-eps application at L191 is exposed by bpP:p6:reconstruction-fixed#real-eps.
```

### stepP:p6:rf-eq

```text
NODE: stepP:p6:rf-eq
KIND: step
TITLE: Equations
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rf-eq@L191-L191
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rf-eq@L191-L191
CONTRACT_ID: stepP:p6:rf-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; G,m0>0; m_i>0; eps in R (overrides the default eps>=0 of bpP:p6:conv#data); J subset R arbitrary; z=(q,p):R->Ph_{2n} with, for every t in J, NoColl(q(t)) and derivative X_Hfix(z(t)) at t; H_fix=fixedHamiltonian G m0 m eps; Q_i=q_i and V_i=p_i/m_i
SOURCE_QUANTIFIERS: t in J
SOURCE_CONCLUSION: q_i'=p_i/m_i, p_i'=-G m0 m_i g_i+eps G m_i f_i; positivity of lengths; V_i'=-G m0 q_i/l(q_i)^3+eps G f_i(q)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:nocoll#NoCollision, bpP:p6:plane, bpP:p0:fixedsol#IsFixedSolution, bpP:p6:conv#data, bpP:p6:reconstruction-fixed#real-eps
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rf-eq@L191-L191 | positivity from NoCollision
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rf-eq@L191-L191 | l is even
EDGE: bpP:p0:fixedsol#IsFixedSolution | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rf-eq@L191-L191 | the displayed expression is the IsFixedSolution clause
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rf-eq@L191-L191 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:reconstruction-fixed#real-eps | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:rf-eq@L191-L191 | R4: missing extension of the fixed-Sun Hamilton equations from eps>=0 to eps in R
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p6:orbit-transfer

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
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:orbit-transfer@L194-L194 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:ot-curve

```text
NODE: stepP:p6:ot-curve
KIND: step
TITLE: The curve
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ot-curve@L204-L204
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ot-curve@L204-L204
CONTRACT_ID: stepP:p6:ot-curve
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0 unless otherwise stated); d=2n; K:R^d->Ph_{2n}; w in R^d; (a) IsPhysTorus(H_mov,w,K) and NoColl(K(phi)_1) for all phi; (b) IsPhysTorus(H_fix,w,K) and NoColl(K(phi)_1) for all phi; Q=barycentricPositions m0 m mu, V=barycentricVelocities m0 m mu
SOURCE_QUANTIFIERS: phi; t in R
SOURCE_CONCLUSION: (R1) and (R2) of Prop reconstruction hold for z at every t in R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:phystorus#IsPhysicalTorus, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p6:conv#data, bpP:p0:nocoll#NoCollision
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ot-curve@L204-L204 | clause (viii): s -> K(phi+sw) has derivative X_H at s=t
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ot-curve@L204-L204 | X_H in clause (viii)
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ot-curve@L204-L204 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ot-curve@L204-L204 | R3: R1 is the collision hypothesis evaluated at phi+t w
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:ot-apply

```text
NODE: stepP:p6:ot-apply
KIND: step
TITLE: Apply
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ot-apply@L205-L205
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ot-apply@L205-L205
CONTRACT_ID: stepP:p6:ot-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0 unless otherwise stated); d=2n; K:R^d->Ph_{2n}; w in R^d; (a) IsPhysTorus(H_mov,w,K) and NoColl(K(phi)_1) for all phi; (b) IsPhysTorus(H_fix,w,K) and NoColl(K(phi)_1) for all phi; Q=barycentricPositions m0 m mu, V=barycentricVelocities m0 m mu
SOURCE_QUANTIFIERS: phi
SOURCE_CONCLUSION: IsNewtonSolution (resp. IsFixedSolution) along the orbit
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:ot-curve, bpP:p6:reconstruction, bpP:p6:reconstruction-fixed, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:ot-curve | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ot-apply@L205-L205 | (R1)-(R2) with J=R
EDGE: bpP:p6:reconstruction | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ot-apply@L205-L205 | Proposition reconstruction with J=R
EDGE: bpP:p6:reconstruction-fixed | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ot-apply@L205-L205 | Proposition reconstruction-fixed with J=R for (b)
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ot-apply@L205-L205 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p6:tube-constants

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
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-constants@L210-L210 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:tube-constants#a-max | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-constants@L212-L212 | R5: a_max is the finite maximum subdefinition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p6:tube-geometry

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
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-geometry@L218-L218 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:tg-a

```text
NODE: stepP:p6:tg-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-a@L230-L230
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-a@L230-L230
CONTRACT_ID: stepP:p6:tg-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G,m0>0; m_i>0; a, eta, zeta_*, d, D as in Definition bpP:p6:tube-constants; 0<zeta<=zeta_*; z=(q,p) in U_zeta (circularTube of radius zeta)
SOURCE_QUANTIFIERS: 0<zeta<=zeta_*
SOURCE_CONCLUSION: U_zeta subset U_zeta_* subset U_eta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:circular#circularTube, bpP:p6:tube-constants, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:circular#circularTube | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-a@L230-L230 | tube defined by a strict norm bound, monotone in the radius
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-a@L230-L230 | zeta_*=min{eta,gamma_a/6}
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-a@L230-L230 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:tg-b

```text
NODE: stepP:p6:tg-b
KIND: step
TITLE: (b) Max norm to Euclidean norm
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-b@L231-L231
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-b@L231-L231
CONTRACT_ID: stepP:p6:tg-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G,m0>0; m_i>0; a, eta, zeta_*, d, D as in Definition bpP:p6:tube-constants; 0<zeta<=zeta_*; z=(q,p) in U_zeta (circularTube of radius zeta)
SOURCE_QUANTIFIERS: z in U_zeta
SOURCE_CONCLUSION: exists phi with l(q_i-a_i e(phi_i))<sqrt2 zeta for all i
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:plane, bpP:p0:circular#circularTube, bpP:p0:circular#circularPoint, bpP:p0:body#bodyVector, bpP:p6:conv#data, bpP:p6:tube-constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-b@L231-L231 | Lemma plane(b): l<=sqrt2 ¦.¦_inf
EDGE: bpP:p0:circular#circularTube | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-b@L231-L231 | norm bound defining the tube
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-b@L231-L231 | coordinates of circ(phi)
EDGE: bpP:p0:body#bodyVector | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-b@L231-L231 | q_(i,c) coordinates
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-b@L231-L231 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-b@L231-L231 | R1: uses the chosen axes or tube constants zeta_*, d, D directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:tg-c

```text
NODE: stepP:p6:tg-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-c@L232-L232
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-c@L232-L232
CONTRACT_ID: stepP:p6:tg-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G,m0>0; m_i>0; a, eta, zeta_*, d, D as in Definition bpP:p6:tube-constants; 0<zeta<=zeta_*; z=(q,p) in U_zeta (circularTube of radius zeta)
SOURCE_QUANTIFIERS: z in U_zeta; i!=j
SOURCE_CONCLUSION: distance bounds (c)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:tg-b, bpP:p6:ext-tri, bpP:p6:plane, bpP:p0:circular#circularPoint, bpP:p6:conv#data, bpP:p6:tube-constants
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:tg-b | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-c@L232-L232 | l(q_i-u_i)<sqrt2 zeta
EDGE: bpP:p6:ext-tri | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-c@L232-L232 | reverse triangle inequality
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-c@L232-L232 | Lemma plane(a): triangle inequality
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-c@L232-L232 | l(u_i)=a_i
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-c@L232-L232 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-c@L232-L232 | R1: uses the chosen axes or tube constants zeta_*, d, D directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:tg-d

```text
NODE: stepP:p6:tg-d
KIND: step
TITLE: (d) Numerics
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-d@L233-L233
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-d@L233-L233
CONTRACT_ID: stepP:p6:tg-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G,m0>0; m_i>0; a, eta, zeta_*, d, D as in Definition bpP:p6:tube-constants; 0<zeta<=zeta_*; z=(q,p) in U_zeta (circularTube of radius zeta)
SOURCE_QUANTIFIERS: z in U_zeta
SOURCE_CONCLUSION: d<=l(q_i)<=D, d<=l(q_j-q_i)<=D, hence NoColl(q)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p6:tg-c, bpP:p6:tube-constants, bpP:p0:nocoll#NoCollision, bpP:p6:plane, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p6:tg-c | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-d@L233-L233 | the distance bounds (c)
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-d@L233-L233 | definitions of gamma_a, d, D
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-d@L233-L233 | NoColl(q)
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-d@L233-L233 | l(q_i-q_j)=l(q_j-q_i)
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-d@L233-L233 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:tg-e

```text
NODE: stepP:p6:tg-e
KIND: step
TITLE: (e) Exact $\mu$-independence
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-e@L234-L234
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-e@L234-L234
CONTRACT_ID: stepP:p6:tg-e
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G,m0>0; m_i>0; a, eta, zeta_*, d, D as in Definition bpP:p6:tube-constants; 0<zeta<=zeta_*; z=(q,p) in U_zeta (circularTube of radius zeta)
SOURCE_QUANTIFIERS: z in U_zeta; every mu>=0
SOURCE_CONCLUSION: PairBounds(d,D;Q) for Q=barycentricPositions m0 m mu q, and for the fixed-Sun configuration (0,q)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:bary-algebra, stepP:p6:tg-d, bpP:p0:nocoll#PairBounds, bpP:p0:barycentric#barycentricPositions, bpP:p6:plane, bpP:p6:conv#data, bpP:p6:tube-constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:bary-algebra | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-e@L234-L234 | (a): l(Q_i-Q_0)=l(q_i), l(Q_j-Q_i)=l(q_j-q_i) for all mu
EDGE: stepP:p6:tg-d | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-e@L234-L234 | bounds (d) for q
EDGE: bpP:p0:nocoll#PairBounds | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-e@L234-L234 | PairBounds asks d<=l(Q_l-Q_k)<=D for all ordered pairs
EDGE: bpP:p0:barycentric#barycentricPositions | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-e@L234-L234 | barycentricPositions
EDGE: bpP:p6:plane | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-e@L234-L234 | evenness of l
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-e@L234-L234 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:tg-e@L234-L234 | R1: uses the chosen axes or tube constants zeta_*, d, D directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p6:measure-positive

```text
NODE: bpP:p6:measure-positive
KIND: lemma
TITLE: $0<\meas S<\infty$
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L249-L255
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L256-L259
CONTRACT_ID: bpP:p6:measure-positive
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G,m0>0; m_i>0; a_i>0; eta>0; (b) Psi a c-chart on an open O subset Ph_{2n} with lattice compatibility (Q1)-(Q2) of Theorem bpP:p1:torus-transport for sigma_k=0 (d=2n); A subset O Lebesgue measurable with A+iota_k=A for all k in Z^{2n} and meas A>0
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
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L249-L249 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:tube-constants#a-max | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:measure-positive@L252-L252 | R5: uses a_max=max_i a_i, without assuming pairwise distinct axes or the gap constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:mp-a

```text
NODE: stepP:p6:mp-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-a@L257-L257
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-a@L257-L257
CONTRACT_ID: stepP:p6:mp-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; G,m0>0; m_i>0; a_i>0; eta>0; z in U_eta; circ is the frozen reference configuration
SOURCE_QUANTIFIERS: z in U_eta
SOURCE_CONCLUSION: U_eta lies in the stated box; every subset has measure <= box volume
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:circular#circularPoint, bpP:p0:circular#circularTube, bpP:p6:ext-meas, bpP:p6:conv#data, bpP:p6:tube-constants#a-max
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:circular#circularPoint | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-a@L257-L257 | coordinates of circ(phi)
EDGE: bpP:p0:circular#circularTube | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-a@L257-L257 | z in U_eta: ¦¦z-circ(phi)¦¦<eta
EDGE: bpP:p6:ext-meas | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-a@L257-L257 | bounded sets have finite measure; box volume; monotonicity
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-a@L257-L257 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:tube-constants#a-max | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-a@L257-L257 | R5: uses a_max=max_i a_i, without assuming pairwise distinct axes or the gap constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:mp-b

```text
NODE: stepP:p6:mp-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-b@L258-L258
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:mp-b@L258-L258
CONTRACT_ID: stepP:p6:mp-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G,m0>0; m_i>0; a_i>0; eta>0; (b) Psi a c-chart on an open O subset Ph_{2n} with lattice compatibility (Q1)-(Q2) of Theorem bpP:p1:torus-transport for sigma_k=0 (d=2n); A subset O Lebesgue measurable with A+iota_k=A for all k in Z^{2n} and meas A>0
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
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:ma-tube

```text
NODE: stepP:p6:ma-tube
KIND: step
TITLE: Tube and set
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-tube@L275-L275
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-tube@L275-L275
CONTRACT_ID: stepP:p6:ma-tube
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); a_i>0 pairwise distinct; eta>0; zeta_*,d,D as in Def tube-constants; mu>=0; S subset Ph_{2n} with (S1) MeasurableSet S (Borel) and S subset U_{zeta_*}; (S2) every z in S has w in R^{2n}, K, theta with K(theta)=z, K(R^{2n}) subset S and IsPhysTorus(H_mov,w,K)
SOURCE_QUANTIFIERS: z in S
SOURCE_CONCLUSION: S subset U_eta and S measurable
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:tube-geometry, bpP:p0:circular#circularTube, bpP:p6:conv#data, bpP:p6:tube-constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:tube-geometry | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-tube@L275-L275 | (a): U_zeta_* subset U_eta
EDGE: bpP:p0:circular#circularTube | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-tube@L275-L275 | tube clause of MovKol
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-tube@L275-L275 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-tube@L275-L275 | R1: uses the chosen axes or tube constants zeta_*, d, D directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:ma-coll

```text
NODE: stepP:p6:ma-coll
KIND: step
TITLE: Collision
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-coll@L276-L276
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-coll@L276-L276
CONTRACT_ID: stepP:p6:ma-coll
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); a_i>0 pairwise distinct; eta>0; zeta_*,d,D as in Def tube-constants; mu>=0; S subset Ph_{2n} with (S1) MeasurableSet S (Borel) and S subset U_{zeta_*}; (S2) every z in S has w in R^{2n}, K, theta with K(theta)=z, K(R^{2n}) subset S and IsPhysTorus(H_mov,w,K)
SOURCE_QUANTIFIERS: z in S; phi in R^{2n}
SOURCE_CONCLUSION: NoColl(K(phi)_1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:tube-geometry, bpP:p0:nocoll#NoCollision, bpP:p6:conv#data, bpP:p6:tube-constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:tube-geometry | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-coll@L276-L276 | (d): tube points are collision free
EDGE: bpP:p0:nocoll#NoCollision | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-coll@L276-L276 | NoColl clause
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-coll@L276-L276 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-coll@L276-L276 | R1: uses the chosen axes or tube constants zeta_*, d, D directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:ma-newton

```text
NODE: stepP:p6:ma-newton
KIND: step
TITLE: Newton
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-newton@L277-L277
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-newton@L277-L277
CONTRACT_ID: stepP:p6:ma-newton
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); a_i>0 pairwise distinct; eta>0; zeta_*,d,D as in Def tube-constants; mu>=0; S subset Ph_{2n} with (S1) MeasurableSet S (Borel) and S subset U_{zeta_*}; (S2) every z in S has w in R^{2n}, K, theta with K(theta)=z, K(R^{2n}) subset S and IsPhysTorus(H_mov,w,K)
SOURCE_QUANTIFIERS: z in S; phi
SOURCE_CONCLUSION: IsNewtonSolution G (actualMasses m0 m mu) of the orbit through K(phi)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:orbit-transfer, stepP:p6:ma-coll, bpP:p0:phystorus#IsPhysicalTorus, bpP:p6:conv#data, bpP:p6:tube-constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:orbit-transfer | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-newton@L277-L277 | Corollary (a)
EDGE: stepP:p6:ma-coll | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-newton@L277-L277 | its hypothesis NoColl(K(phi)_1)
EDGE: bpP:p0:phystorus#IsPhysicalTorus | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-newton@L277-L277 | IsPhysTorus in (S2)
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-newton@L277-L277 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-newton@L277-L277 | R1: uses the chosen axes or tube constants zeta_*, d, D directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p6:ma-pair

```text
NODE: stepP:p6:ma-pair
KIND: step
TITLE: Pair bounds
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-pair@L278-L278
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-pair@L278-L278
CONTRACT_ID: stepP:p6:ma-pair
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of bpP:p6:conv#data (n>=1; G,m0>0; m_i>0; mu,eps>=0; planar length l; collision-free set W); a_i>0 pairwise distinct; eta>0; zeta_*,d,D as in Def tube-constants; mu>=0; S subset Ph_{2n} with (S1) MeasurableSet S (Borel) and S subset U_{zeta_*}; (S2) every z in S has w in R^{2n}, K, theta with K(theta)=z, K(R^{2n}) subset S and IsPhysTorus(H_mov,w,K)
SOURCE_QUANTIFIERS: z in S; phi; t
SOURCE_CONCLUSION: PairBounds(d,D;barycentric positions of K(phi+tw)_1) for every orbit point
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:tube-geometry, bpP:p0:nocoll#PairBounds, bpP:p6:conv#data, bpP:p6:tube-constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:tube-geometry | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-pair@L278-L278 | (e) at K(phi)
EDGE: bpP:p0:nocoll#PairBounds | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-pair@L278-L278 | PairBounds clause
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-pair@L278-L278 | R1: direct use of the Part 6 data (n, positive masses, physical parameters, W or force/block notation)
EDGE: bpP:p6:tube-constants | blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:ma-pair@L278-L278 | R1: uses the chosen axes or tube constants zeta_*, d, D directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### Add bpP:p6:tube-constants#a-max

```text
NODE: bpP:p6:tube-constants#a-max
KIND: definition
TITLE: Finite maximum of the axes
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-constants#a-max@L212-L212
PROOF_SOURCE: -
CONTRACT_ID: bpP:p6:tube-constants#a-max
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; a in R^n (typing data for the maximum notation)
SOURCE_QUANTIFIERS: n; a
SOURCE_CONCLUSION: defines a_max=max_i a_i
CONSTANT_SCOPE: a_max depends only on a
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:ext-top, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:ext-top | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-constants#a-max@L212-L212 | finite nonempty maxima exist
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-constants#a-max@L212-L212 | the part fixes n>=1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Definitional projection of the displayed a_max notation. Unlike gamma_a, this maximum is meaningful without pairwise distinctness; measure-positive(a) uses only this notation, not the distinct-axis bounds. No new estimate or hypothesis is introduced.
```

### Add bpP:p6:reconstruction-fixed#real-eps

```text
NODE: bpP:p6:reconstruction-fixed#real-eps
KIND: step
TITLE: Unpaid arbitrary-real-epsilon Hamilton-equation bridge
STATEMENT_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed#real-eps@L191-L191
PROOF_SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed#real-eps@L191-L191
CONTRACT_ID: bpP:p6:reconstruction-fixed#real-eps
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; G,m0>0; m_i>0; eps in R (overrides the default eps>=0 of bpP:p6:conv#data); J subset R arbitrary; z=(q,p):R->Ph_{2n} with, for every t in J, NoColl(q(t)) and derivative X_Hfix(z(t)) at t; H_fix=fixedHamiltonian G m0 m eps; Q_i=q_i and V_i=p_i/m_i
SOURCE_QUANTIFIERS: n,G,m0,m; eps in R; J; z; t in J
SOURCE_CONCLUSION: the fixed-Sun derivative hypothesis implies q_i'=p_i/m_i and p_i'=-G m0 m_i g_i+eps G m_i f_i for every real eps, including eps<0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:hamilton-eqs, bpP:p6:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:hamilton-eqs | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed#real-eps@L191-L191 | cited formula is available with the default eps>=0
EDGE: bpP:p6:conv#data | blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed#real-eps@L191-L191 | supplies the kernels and the default parameter scope
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L184 explicitly permits eps in R, but hamilton-eqs at L82-L92 inherits eps>=0 from L20 and does not state the negative-eps case. L191 applies that result without providing the extension. The algebra suggests an extension, but this review does not supply it. Preserve the arbitrary-real-eps source contract.
```

### Coverage stepP:p6:re-b

```text
ITEM: stepP:p6:re-b
KIND: proof-region
SOURCE: blueprint-P/parts/p6-newtonian-models.tex#stepP:p6:re-b@L125-L127
DISPOSITION: EXCLUDED
REASON: proof step (b) of bpP:p6:reduction, outside every root closure of track P; same exclusion as re-a and re-c. This labelled step starts on the same physical line as re-a and is inventoried separately.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
```

### Coverage p6:prose-L20-L24

```text
ITEM: p6:prose-L20-L24
KIND: proof-region
SOURCE: blueprint-P/parts/p6-newtonian-models.tex#prose@L20-L24
DISPOSITION: NODE bpP:p6:conv#data
REASON: conventions and section data map to bpP:p6:conv#data; the missing consumer edges are supplied by the R1 replacement node blocks in this review
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
```

### Coverage bpP:p6:mp-use

```text
ITEM: bpP:p6:mp-use
KIND: claim
SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:mp-use@L260-L262
DISPOSITION: EXCLUDED
REASON: administrative Use remark, a downstream pointer; no proof consumes a fact beyond measure-positive and its suppliers. No torus-union edge is asserted for measure-positive merely because this remark mentions it
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
```

### Coverage p6:a-max-L212

```text
ITEM: p6:a-max-L212
KIND: proof-region
SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:tube-constants#a-max@L212-L212
DISPOSITION: NODE bpP:p6:tube-constants#a-max
REASON: R5: inventory the reused maximum subdefinition separately from distinct-axis geometry
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
```

### Coverage p6:real-eps-bridge-L191

```text
ITEM: p6:real-eps-bridge-L191
KIND: proof-region
SOURCE: blueprint-P/parts/p6-newtonian-models.tex#bpP:p6:reconstruction-fixed#real-eps@L191-L191
DISPOSITION: NODE bpP:p6:reconstruction-fixed#real-eps
REASON: R4: inventory the unmet arbitrary-real-eps application premise
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p6
REVIEWER: -
```

## For slice P-imports / writer-owned P-xown

The sole imported supplier used by P-p6 is I:bpI:p7:scaling at I Part 7 L311–318 (mass dictionary at L317). Its positivity requirements are met by k=G m0>0 and m_i>0. The import block still contains TODO source fields and a warning that I excludes it. SPEC already requires writer-owned transfer into P-xown, with the native I locator/corpus pin and reviewed proof steps, followed by retargeting the genuine Part 6 and Part 7 consumers. The local candidate edge is an actual use, not a non-use citation. This review does not sign off the writer-owned import or claim that a NOTE alone completes ownership transfer; that separate slice work remains required. No foreign-slice replacement is mixed into the P-p6 blocks above.

## Suspected blueprint defects

1. **Real-eps bridge:** p6-newtonian-models.tex L20 fixes “mu, epsilon >= 0 unless said otherwise”; the Hamilton-equations proposition L82–92 does not override epsilon, but L184 says `\varepsilon\in\R`; L191 reads `Prop.~\ref{bpP:p6:hamilton-eqs} gives` the formulas. The latter application does not meet the supplier scope for epsilon<0. This is R4, exposed by a SOURCE_GAP; no mathematical repair is supplied.
2. **Box-volume external omits radius guards:** p6-newtonian-models.tex L33 states `a box $\prod[-r_k,r_k]$ has measure $\prod2r_k$` without r_k>=0. For a negative radius the interval is empty and the displayed real product can be negative. The concrete L252/L257 application uses positive a_max+eta and P_max+eta, so it does meet the usual nonnegative-radius condition. The external record transcribes the source faithfully and passes source fidelity; the source should make that guard explicit in a later amendment.
3. **Obsolete annotation in the packet:** reconstruction-fixed NOTE cites an old shared-index-guard defect supposedly present at L184. The pinned current text separates “for every i” and “for all i,j with i!=j”, matching the frozen predicate. Remove that stale annotation as in the replacement; this is a record defect, not a new blueprint error.

No other suspected blueprint defect was found in this slice. Cauchy–Schwarz in two real coordinates, finite algebra and the numerical sqrt2 comparisons are elementary algebra at this node threshold; no new unapproved external is introduced for them.

READY rev-P-h
