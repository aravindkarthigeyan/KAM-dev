# I-p8 delta topology review

Reviewer: sol-delta-I-d. Marker: delta-I-d.

**Verdict: FAIL.** 17 of 27 PROPOSED nodes PASS; 10 FAIL. All 49 PROPOSED coverage items PASS.

This is a source/topology delta review, not a proof-status audit. I read DELTA-BRIEF in full, REVIEW-BRIEF, the current SPEC including its final ownership ruling, and the project rules, plan and decisions. I am independent of sol-review-I-p5p8 and sol-delta-I-b; my previous task reviewed I-p67a/I-p7b. Every proposed record below was compared with its raw statement/proof and every EDGE use locator. Already REVIEWED records are context, not re-certified here. Coverage and node verdicts are separate: a correct mapping can PASS while its target node needs repair.

The three ownership changes were checked against I-nown and the raw N statements: bpN:p3:gen-invariant L352–356, gen-barrier L358–363 and newton-reduction L434–449 are now ordinary track-I nodes. Their consumer DEPS and EDGE targets use the unprefixed IDs. Remaining prose such as “N:gen-invariant” describes the source track, not an import edge. No stale N:bpN:p3:{gen-invariant,gen-barrier,newton-reduction} consumer edge is accepted. This checks the assigned consumers; it does not certify all I-nown or imports records.

The current corpus pin checks return nine OK lines, and the imports pin checks return seven OK lines (both exit 0). The earlier K p1 drift is resolved by the recorded re-pin/remap. Cited K and N source contracts were read at their current locators. K matrix/averages have their own matrix/integrability premises; the Part-2 standing bridge is used for actual K geometry applications. The owned restricted reduction supplies C^infty on the collision-free open set and works for arbitrary time sets, not only all of R. No Lean command, build, axiom query, packet edit, SPEC edit, or state-changing git command was run. Only the three requested reports are written.


Packet node snapshot SHA256: `7b0db6e786312d0af655934e7a8795f62811dd2cc88558171aea146c2773daa6`.

All 17 Part-8 quantifier rewrites identified in the original review were checked: tp-chart, tp-open, tp-nonempty, ce-quant, ce-compact, se-inst, sr-incl, sr-radii, sr-B, hd-h, hd-f, hd-sets, bd-r, bd-p, pf-coord, pf-small, pf-head. They now give actual branch/witness order rather than the generic fill. In particular common constants precede mu and z0, the same z_tilde witness is used throughout, and mu=0 is included. ce-compact still needs the corresponding branch guard in SOURCE_CONCLUSION. No route node or mechanically added alternative-route EDGE occurs in this assigned proposed set.

The split coverage at pf-uniq is correct: L229 belongs to uniqueness, L231 assembles all six frozen conclusions at the root. min-distance/md-min and the moving-frame remark remain outside all track-I root closures: the actual distance argument is shell-exclusion, and the proof uses the rotating field directly. The safe region is larger than the initial region; the record makes no claim that the initial element intervals are invariant.

## PROPOSED nodes

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p8:e-vs-k | FAIL | blueprint-I/parts/p8-r3bp.tex#bpI:p8:e-vs-k@L36-L44 | The corrected NOTE separates the local involution calculation, but its x-cont EDGE still claims that external supplies kappa(kappa(x)) = x. x-cont states continuity/strict monotonicity only. |
| stepI:p8:tp-A | FAIL | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74 | The record still omits the A subset C_0 conclusion explicitly proved at L74 and included in topology(a). |
| stepI:p8:tp-chart | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-chart@L76-L76 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:tp-open | FAIL | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78 | The newly added A edge is an overcorrection: L78 proves openness in Cartesian element coordinates and does not use the action box A. |
| stepI:p8:tp-nonempty | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:ce-quant | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-quant@L100-L100 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:ce-compact | FAIL | blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102 | The quantifier field handles empty S or m=0, but SOURCE_CONCLUSION still asserts the unguarded attained minimum min_j min_S. Retain the source branch guards in the conclusion as well. |
| stepI:p8:se-inst | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| bpI:p8:safe | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe@L134-L147 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:sr-incl | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:sr-elements | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-elements@L163-L163 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:sr-radii | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:sr-B | FAIL | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167 | Missing direct A package use: L167 explicitly uses openness of A and its compact closure to pass to B_prime=2pi A. |
| bpI:p8:head-data | FAIL | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L170-L178; blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L179-L185 | The added conversion-map edge is merely transitive normalization provenance. This source unit selects the already converted data from period-one/head-data and never applies or unfolds S. |
| stepI:p8:hd-h | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:hd-f | FAIL | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182 | The added kep-ham edge is an overcorrection: L182 uses only period-one(c) for the perturbation and the zero extension, with no use of the baseline Hamiltonian h_tilde. |
| stepI:p8:hd-sets | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-sets@L184-L184 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| bpI:p8:constants | FAIL | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L190-L202 | The added conversion-map edge is merely transitive normalization provenance. This source unit selects the already converted data from period-one/head-data and never applies or unfolds S. |
| stepI:p8:bd-r | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-r@L209-L209 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:bd-p | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:pf-coord | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-coord@L217-L217 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:pf-small | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-small@L219-L219 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:pf-head | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221 | Preserves the epsilon_H chosen before mu,z0; pf-small and pf-coord discharge the fixed theorem premises and initial membership. |
| stepI:p8:pf-sol | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | Source fields, direct uses, package data, conditional premises and use locators agree; the earlier replacement introduces no new source premise. |
| stepI:p8:pf-bounds | FAIL | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | Missing direct orbit-maps package edge: L225 explicitly writes z(t)=Q(ell,g,L,G). |
| stepI:p8:pf-dist | FAIL | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | Missing direct safe package edge for the same shell radii r_min and rho_max used to instantiate shell-exclusion; safe-region supplies their bounds, not their definition. |
| stepI:p8:pf-uniq | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L229 | Retarget to owned newton-reduction is valid; smoothness is only on open W_mu, and arbitrary-interval uniqueness needs no confinement of the competitor. |

## PROPOSED coverage items

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| stepI:p8:tp-A | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74 | Owning-node mapping matches the source unit. |
| stepI:p8:tp-chart | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-chart@L76-L76 | Owning-node mapping matches the source unit. |
| stepI:p8:tp-open | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78 | Owning-node mapping matches the source unit. |
| stepI:p8:tp-nonempty | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-nonempty@L80-L80 | Owning-node mapping matches the source unit. |
| stepI:p8:ce-quant | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-quant@L100-L100 | Owning-node mapping matches the source unit. |
| stepI:p8:ce-compact | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102 | Owning-node mapping matches the source unit. |
| stepI:p8:se-inst | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:se-inst@L114-L114 | Owning-node mapping matches the source unit. |
| bpI:p8:min-distance | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:min-distance@L117-L120 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| stepI:p8:md-min | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:md-min@L122-L122 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| bpI:p8:rotating | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:rotating@L125-L127 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| bpI:p8:safe | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:safe@L134-L147 | Owning-node mapping matches the source unit. |
| stepI:p8:sr-incl | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-incl@L161-L161 | Owning-node mapping matches the source unit. |
| stepI:p8:sr-elements | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-elements@L163-L163 | Owning-node mapping matches the source unit. |
| stepI:p8:sr-radii | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-radii@L165-L165 | Owning-node mapping matches the source unit. |
| stepI:p8:sr-B | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167 | Owning-node mapping matches the source unit. |
| bpI:p8:head-data | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L170-L178 | Owning-node mapping matches the source unit. |
| stepI:p8:hd-h | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-h@L180-L180 | Owning-node mapping matches the source unit. |
| stepI:p8:hd-f | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182 | Owning-node mapping matches the source unit. |
| stepI:p8:hd-sets | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-sets@L184-L184 | Owning-node mapping matches the source unit. |
| bpI:p8:constants | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L190-L202 | Owning-node mapping matches the source unit. |
| stepI:p8:bd-r | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-r@L209-L209 | Owning-node mapping matches the source unit. |
| stepI:p8:bd-p | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:bd-p@L211-L211 | Owning-node mapping matches the source unit. |
| stepI:p8:pf-coord | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-coord@L217-L217 | Owning-node mapping matches the source unit. |
| stepI:p8:pf-small | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-small@L219-L219 | Owning-node mapping matches the source unit. |
| stepI:p8:pf-head | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-head@L221-L221 | Owning-node mapping matches the source unit. |
| stepI:p8:pf-sol | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-sol@L223-L223 | Owning-node mapping matches the source unit. |
| stepI:p8:pf-bounds | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | Owning-node mapping matches the source unit. |
| stepI:p8:pf-dist | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | Owning-node mapping matches the source unit. |
| stepI:p8:pf-uniq | PASS | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-uniq@L229-L231 | L229 maps to uniqueness and L231 to the frozen root assembly; this resolves the original coverage FAIL. |
| bpI:p8:dependence | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:dependence@L234-L242 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| bpI:p8:totality | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:totality@L244-L249 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p8 | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8@L1-L1 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p8:sec-ext | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:sec-ext@L23-L23 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p8:sec-top | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:sec-top@L47-L47 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p8:sec-coll | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:sec-coll@L84-L84 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p8:sec-safe | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:sec-safe@L130-L130 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| heading:bpI:p8:sec-proof | PASS | blueprint-I/parts/p8-r3bp.tex#bpI:p8:sec-proof@L188-L188 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p8:source-L11 | PASS | blueprint-I/parts/p8-r3bp.tex#source@L11-L11 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p8:source-L71 | PASS | blueprint-I/parts/p8-r3bp.tex#source@L71-L71 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p8:source-L97 | PASS | blueprint-I/parts/p8-r3bp.tex#source@L97-L97 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p8:source-L111 | PASS | blueprint-I/parts/p8-r3bp.tex#source@L111-L111 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p8:source-L119 | PASS | blueprint-I/parts/p8-r3bp.tex#source@L119-L119 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p8:source-L158 | PASS | blueprint-I/parts/p8-r3bp.tex#source@L158-L158 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p8:source-L177 | PASS | blueprint-I/parts/p8-r3bp.tex#source@L177-L177 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p8:source-L206 | PASS | blueprint-I/parts/p8-r3bp.tex#source@L206-L206 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p8:prose-L3-L9 | PASS | blueprint-I/parts/p8-r3bp.tex#prose@L3-L9 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p8:prose-L15-L20 | PASS | blueprint-I/parts/p8-r3bp.tex#prose@L15-L20 | Alias, administrative/provenance, heading, or root-closure exclusion is valid at this source unit. |
| p8:prose-L36-L44 | PASS | blueprint-I/parts/p8-r3bp.tex#prose@L36-L44 | Owning-node mapping matches the source unit. |
| p8:prose-L132-L132 | PASS | blueprint-I/parts/p8-r3bp.tex#prose@L132-L132 | Owning-node mapping matches the source unit. |

All other coverage items PASS within the assigned proposed inventory. Previously reviewed records are outside this delta verdict.

## Suspected source defects and limits

No new defect of a frozen declaration or pinned paper is asserted. The reported FAILs concern graph contracts or direct-use records; no blueprint or frozen statement is changed. Existing source adaptations and unverified paper-level reports are not promoted to independently verified errata by this delta review.

## Validation receipts

The review applier run with `--dry-run` for this slice reports 10 replaced, 0 added, 0 coverage items, and 0 unresolved FAILs. An independent Python inventory check confirms exactly 27 proposed-node rows and 49 proposed-coverage rows, a complete replacement for every node FAIL, a one-to-one DEPS/EDGE match, valid source line bounds, and an unchanged node-packet snapshot. `git diff --check` exits 0. Unrelated concurrent workspace changes were left untouched.

## Complete replacement fragments

Replacement blocks remain PROPOSED and require a different reviewer after application. Unchanged fields are retained for mechanical application.

```text
NODE: bpI:p8:e-vs-k
KIND: display
TITLE: Elements as inequalities on G/L (display e-vs-k)
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:e-vs-k@L36-L44
PROOF_SOURCE: -
CONTRACT_ID: bpI:p8:e-vs-k
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (L,G) in C_0; 0<=e_prime<e_doubleprime<1; kappa(x)=sqrt(1-x^2), e(L,G)=kappa(G/L)
SOURCE_QUANTIFIERS: for all (L,G) in C_0 and 0 <= e' < e'' < 1
SOURCE_CONCLUSION: e(L,G) in (e',e'') iff G/L in (kappa(e''),kappa(e')); and e(L,G) in [e',e''] iff G/L in [kappa(e''),kappa(e')]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-cont, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-cont | blueprint-I/parts/p8-r3bp.tex#bpI:p8:e-vs-k@L37-L44 | kappa is continuous and strictly decreasing on [0,1]; the involution identity at L44 is a local square-root calculation, not part of this external input
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#bpI:p8:e-vs-k@L36-L36 | C_0, e(L,G) = sqrt(1-G^2/L^2) of Parts 6-7
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8+sol-review-I-p5p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The involution identity kappa(kappa(x))=x on [0,1] is the elementary square-root calculation at L44, combined with strict monotonicity; it is not included in the statement of x-cont as a separate external assumption.
```

```text
NODE: stepI:p8:tp-A
KIND: step
TITLE: Elements as inequalities on G/L
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74
CONTRACT_ID: stepI:p8:tp-A
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; (L,G) in C_0
SOURCE_QUANTIFIERS: for (L,G) in C_0
SOURCE_CONCLUSION: A subset A^cl subset C_0; (a): a_-<L^2<a_+ iff sqrt(a_-)<L<sqrt(a_+) and e_-<e<e_+ iff kappa(e_+)L < G < kappa(e_-)L
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:A, bpI:p8:e-vs-k, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:A | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74 | A subset A^cl subset C_0
EDGE: bpI:p8:e-vs-k | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74 | e in (e_-,e_+) iff G/L in (kappa(e_+),kappa(e_-))
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-A@L74-L74 | C_0 and/or e(L,G), Q are the orbit-map data used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8+sol-review-I-p5p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:tp-open
KIND: step
TITLE: Openness
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78
CONTRACT_ID: stepI:p8:tp-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the frozen physical set N and the Kepler region C with the elements a(q,p), e(q,p)
SOURCE_QUANTIFIERS: For each a_pm,e_pm satisfying the enclosing topology proposition; no new point or witness is selected
SOURCE_CONCLUSION: N is open in R^2 x R^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:near-circular, bpI:p7:elements, bpI:p8:x-topo
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:near-circular | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78 | N = {(q,p) in C : a_-<a<a_+, e_-<e<e_+}
EDGE: bpI:p7:elements | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78 | C open, a and e continuous on C
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#stepI:p8:tp-open@L78-L78 | finite intersection of preimages of open intervals is open
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8+sol-review-I-p5p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:ce-compact
KIND: step
TITLE: Compact sets
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102
CONTRACT_ID: stepI:p8:ce-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X is a real normed space; m in N; x_j in X; c>=0, mu_1>0; y_j(mu) defined for |mu|<=mu_1 with |y_j(mu)-x_j|<=c|mu|; X finite dimensional; S compact, x_j not in S; the nondegenerate branch has S nonempty and m>=1 (the other branches are vacuous as stated at L95)
SOURCE_QUANTIFIERS: For fixed X,m,x_j,c,mu_1,y_j and compact S with x_j not in S, handle S empty or m=0 vacuously; otherwise choose a minimizing q_j in S for each j, then delta_S>0 and mu_*,d, before mu,q,j
SOURCE_CONCLUSION: if S is empty or m=0, choose any delta_S>0 (for example 1), and the separation assertion is vacuous; if S is nonempty and m>=1, each continuous distance attains its minimum at q_j in S with q_j != x_j, and delta_S := min_j min_{q in S} norm(q-x_j) > 0; part (a) applies with this delta_S, giving mu_*>0 and d=delta_S/2 with norm(q-y_j(mu))>=d for every q in S, abs(mu)<=mu_* and every j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-topo, stepI:p8:ce-quant
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102 | continuous function attains its minimum on a nonempty compact set
EDGE: stepI:p8:ce-quant | blueprint-I/parts/p8-r3bp.tex#stepI:p8:ce-compact@L102-L102 | apply (a) with delta = delta_S
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8+sol-review-I-p5p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpI:p8:head-data
KIND: proposition
TITLE: The period-one data of I-HEAD for the restricted problem
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L170-L178
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L179-L185
CONTRACT_ID: bpI:p8:head-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: calK, B, B', eta as in Definition bpI:p8:safe; delta_2, mu_2, C_F, F from Proposition bpI:p7:exact-ham for calK (calK nonempty compact in C_0, rho_max < 1 by Lemma safe-region (c)); s_0 = delta_2/(2 pi), r_0 = 2 pi delta_2, h~ = h_{(2 pi)^2,1/(2 pi)}, f~_mu as in Corollary bpI:p7:period-one extended by 0 outside T_{s_0} x B_{r_0}
SOURCE_QUANTIFIERS: a_pm, e_pm fixed; then for every real mu with 0 <= mu < mu_2
SOURCE_CONCLUSION: (a) hypotheses of Theorem I-HEAD on (B,s_0,r_0,h~,B',eta) hold (B open bounded nonempty; s_0,r_0 > 0; h~ holomorphic on B_{r_0}, real at real I, det B_h~(I) = 3/I_1^4 != 0 on real I in B_{r_0}; B' open with compact closure inside B; eta > 0); (b) f = f~_mu and epsilon = C_F mu >= 0 satisfy the hypotheses of I-HEAD on (f,epsilon) except epsilon < epsilon_0 (holomorphy and Z^2-periodicity on T_{s_0} x B_{r_0}, Im f = 0 at real points, |f| <= epsilon); (c) s_0, r_0, mu_2, C_F depend only on (a_pm,e_pm)
CONSTANT_SCOPE: s_0, r_0, mu_2, C_F depend only on (a_pm, e_pm)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:hd-h, stepI:p8:hd-f, stepI:p8:hd-sets, bpI:p8:safe, bpI:p8:safe-region, bpI:p7:exact-ham, bpI:p7:period-one, bpI:p0:bordered#borderedHessian, bpI:p0:domains#complexStrip, bpI:p0:domains#actionNbhd, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:hd-h | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L180-L180 | proof step (a)
EDGE: stepI:p8:hd-f | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L182-L182 | proof step (b)
EDGE: stepI:p8:hd-sets | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L184-L184 | proof step (a),(c)
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | calK, B, B_pr, eta
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | rho_max < 1 for admissibility of exact-ham
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | delta_2, mu_2, C_F, F
EDGE: bpI:p7:period-one | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L171-L171 | h~ and f~_mu
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L173-L173 | det B_h~
EDGE: bpI:p0:domains#complexStrip | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L174-L174 | T_{s_0}
EDGE: bpI:p0:domains#actionNbhd | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L173-L173 | B_{r_0}
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p8-r3bp.tex#bpI:p8:head-data@L170-L178 | the converted h_tilde is the h_{kappa,Omega} defined in Part 6
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8+sol-review-I-p5p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The statement reproduces the hypotheses of Theorem I-HEAD (a check, not a use of its conclusion): no edge to bpI:p0:head here; the application is stepI:p8:pf-head.
```

```text
NODE: bpI:p8:constants
KIND: definition
TITLE: Choice of mu_0, d, R
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L190-L202
PROOF_SOURCE: -
CONTRACT_ID: bpI:p8:constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition bpI:p8:safe, Lemma safe-region, Proposition head-data; eps_0 of Theorem I-HEAD for (B,s_0,r_0,h~,B',eta); C_F = 6/(eps_0^sh sqrt(c_*)) > 0 of Lemma bpI:p7:shift
SOURCE_QUANTIFIERS: in this order depending only on (a_pm,e_pm): (1) t, a'_pm, e'_pm, U, calK, B, B', eta=1, r_min, rho_max; (2) delta_2, mu_2, C_F, s_0, r_0, h~; (3) eps_H; (4) nu_0, mu_0, d, R
SOURCE_CONCLUSION: defines eps_H := the constant epsilon_0 of I-HEAD for (B,s_0,r_0,h~,B',eta); nu_0 = min{r_min,1-rho_max} > 0; mu_0 = min{1/2, mu_2, eps_H/C_F, nu_0/2} in (0,1/2]; d = nu_0/2; R = sqrt(2/r_min); R > 1 > rho_max
CONSTANT_SCOPE: mu_0, d, R depend on nothing but (a_pm,e_pm); fixed before mu and z_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:safe, bpI:p8:safe-region, bpI:p8:head-data, bpI:p7:shift, bpI:p0:head, bpI:p8:sec-safe#data, bpI:p6:kep-ham
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L193-L193 | step (1) data
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L193-L193 | r_min, rho_max and rho_max < 1
EDGE: bpI:p8:head-data | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L194-L194 | delta_2, mu_2, C_F, s_0, r_0, h~
EDGE: bpI:p7:shift | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L194-L194 | C_F = 6/(eps_0^sh sqrt(c_*)) > 0
EDGE: bpI:p0:head | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L195-L195 | eps_H is the constant epsilon_0 of I-HEAD
EDGE: bpI:p8:sec-safe#data | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L193-L193 | rho_* and the parameters a_pm, e_pm
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p8-r3bp.tex#bpI:p8:constants@L190-L202 | the converted h_tilde is the h_{kappa,Omega} defined in Part 6
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8+sol-review-I-p5p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:hd-f
KIND: step
TITLE: The perturbation
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182
CONTRACT_ID: stepI:p8:hd-f
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain; real mu with 0<=mu<mu_2, epsilon=C_F mu
SOURCE_QUANTIFIERS: For each real mu with 0<=mu<mu_2, put epsilon=C_F mu; for all (theta,I) in T_{s_0} x B_{r_0}, with reality at its real points
SOURCE_CONCLUSION: f_tilde_mu is holomorphic on T_{s_0} x B_{r_0}, 1-periodic, real at its real points and bounded by |mu| C_F = C_F mu = epsilon since 0<=mu<mu_2; extension by zero does not change these on-domain facts
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p8:safe
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182 | (c)
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:hd-f@L182-L182 | K, B, B_prime and/or the safe radii fixed by this package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8+sol-review-I-p5p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:sr-B
KIND: step
TITLE: The action domain
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167
CONTRACT_ID: stepI:p8:sr-B
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147
SOURCE_QUANTIFIERS: For fixed a_pm,e_pm and U,A,K, define B=2 pi U and B_prime=2 pi A; no additional binder
SOURCE_CONCLUSION: B = 2 pi U open bounded nonempty with B subset 2 pi calK; B' open, closure(B') = 2 pi closure(A) compact inside B; (e) explicit dependence on (a_pm,e_pm)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-topo, stepI:p8:sr-incl, bpI:p8:safe, bpI:p8:A
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-topo | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167 | linear isomorphism is a homeomorphism; closures
EDGE: stepI:p8:sr-incl | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167 | (a): closure(A) subset U subset calK
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167 | B = 2 pi U, B_pr = 2 pi A
EDGE: bpI:p8:A | blueprint-I/parts/p8-r3bp.tex#stepI:p8:sr-B@L167-L167 | A is open and closure(A) is contained in compact A^cl; scaling gives openness of B_prime and compactness of its closure
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8+sol-review-I-p5p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:pf-bounds
KIND: step
TITLE: Radius bounds
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225
CONTRACT_ID: stepI:p8:pf-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain; constants mu_0,d,R chosen at L190-202; 0<=mu<mu_0; z_0 in N; z_tilde is the trajectory from L221, z=Q o S o z_tilde as at L223; t in R
SOURCE_QUANTIFIERS: for t in R
SOURCE_CONCLUSION: r_min <= rad(q(t)) <= rho_max < 1 < R and rad(p(t)) <= R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p8:pf-sol, stepI:p8:pf-head, bpI:p8:bounds, bpI:p8:safe, bpI:p8:safe-region, bpI:p8:constants, bpI:p6:conversion-map, bpI:p0:primaries#radius, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p8:pf-sol | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | z = Q o S o z~
EDGE: stepI:p8:pf-head | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | z~(t)_2 in B
EDGE: bpI:p8:bounds | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | bounds along a Delaunay orbit for (L,G) in calK
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | B = 2 pi U and U subset calK
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | U subset calK and rho_max < 1
EDGE: bpI:p8:constants | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | R > 1 > rho_max
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | S z~(t) = (l,g,L,G) with (L,G) = z~(t)_2/(2 pi)
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | rad
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-bounds@L225-L225 | Q(ell,g,L,G) gives the position and momentum of the same physical trajectory
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8+sol-review-I-p5p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p8:pf-dist
KIND: step
TITLE: Distance to the primaries
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227
PROOF_SOURCE: blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227
CONTRACT_ID: stepI:p8:pf-dist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<a_-<a_+, 0<e_-<e_+<1/4, a_+(1+e_+)<1; the action region A and Delaunay notation of L36-59; t,a_pm_prime,e_pm_prime,U,K,B,B_prime,eta defined at L134-147; delta_2,mu_2,C_F,F are selected for K as at L171, s_0=delta_2/(2 pi), r_0=2 pi delta_2, h_tilde=h_{(2 pi)^2,1/(2 pi)}, f_tilde_mu the period-one perturbation extended by zero outside the analytic domain; constants mu_0,d,R chosen at L190-202; 0<=mu<mu_0; z_0 in N; z is the physical trajectory defined at L223; t in R
SOURCE_QUANTIFIERS: for t in R
SOURCE_CONCLUSION: rad(q(t) - a_j(mu)) >= nu_0/2 = d for j = 1,2 and all t in R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:shell-exclusion, stepI:p8:pf-bounds, bpI:p8:constants, bpI:p8:safe-region, bpI:p0:primaries#primary1, bpI:p0:primaries#primary2, bpI:p0:primaries#radius, bpI:p8:safe
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:shell-exclusion | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | shell around the primary (instance of the collision-exclusion lemma)
EDGE: stepI:p8:pf-bounds | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | q(t) lies in the shell r_min <= rad <= rho_max
EDGE: bpI:p8:constants | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | nu_0, d = nu_0/2, mu_0 <= nu_0/2
EDGE: bpI:p8:safe-region | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | r_min, rho_max with 0 < r_min <= rho_max < 1
EDGE: bpI:p0:primaries#primary1 | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | a_1(mu)
EDGE: bpI:p0:primaries#primary2 | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | a_2(mu)
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | rad
EDGE: bpI:p8:safe | blueprint-I/parts/p8-r3bp.tex#stepI:p8:pf-dist@L227-L227 | r_min and rho_max are the fixed safe-region radii; with their safe-region bounds they specify the shell used here
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p8+sol-review-I-p5p8
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```
