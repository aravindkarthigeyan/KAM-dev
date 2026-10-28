# P-p0 delta topology review

Reviewer: sol-delta-P-b  
Marker: delta-P-b  
Verdict: **PASS** — 16 proposed nodes and 72 proposed coverage items PASS. No replacement blocks are required.

Reviewed only the records still marked TOPOLOGY_STATUS: PROPOSED or COVERAGE_STATUS: PROPOSED in the current P-p0 packets. The preceding reviewer was sol-review-P-c and the extractor was sonnet-extract-P-p0, both distinct from this reviewer. Other records were read only as definition, source or dependency context and receive no new verdict here.

Applied DELTA-BRIEF and REVIEW-BRIEF, including the Convergence rule, under SPEC and its scope/ownership rulings. Read the pending records, their raw Part 0 statement and EDGE spans, each designated frozen definition or theorem signature, and the relevant proving and mapped source units in Parts 5, 6, 11b, 12 and 14a. No Lean was run; no provider, theorem proof body or proof-status information was used. The manifest was used only for identity fields.

The prior FAILs are resolved: total definitions no longer acquire positivity premises; scalar parameters are correctly typed; the collision guard is separated from the every-body derivative clauses; the frequency-map locator reaches its use; the four root proof edges name the actual proving labels; the two Kepler anchors carry their Phase dependencies; totality has its consumed guard fact and direct definition links; and EXP-SAFE has the eleven direct definition links in its expanded frozen conclusion. The three rewritten coverage reasons/mappings now describe the current source and route.

## Proposed nodes

Unprefixed line spans below refer to blueprint-P/parts/p0-conventions.tex. Each row also includes the designated frozen declaration when the node is an anchor; statement/proof/EDGE spans in other parts are named explicitly.

| ID | Verdict | Spans re-read | Finding |
|---|---|---|---|
| bpP:p0:fastdiffeo#HasFastDiffeomorphism | PASS | L137–L144; L139–L140 | The repaired frequency-map EDGE at L139–L140 reaches the actual use. The explicit inverse witness and its C1 domain agree with the frozen definition. |
| bpP:p0:barycentric#barycentricPositions | PASS | L213–L224; L217 | The total frozen definition accepts arbitrary real parameters. Positivity is correctly retained as an application guard rather than an extra premise; the body-vector edge and Fin.cons ordering agree. |
| bpP:p0:barycentric#barycentricVelocities | PASS | L213–L224; L218 | The total definition and scalar/vector argument order agree. Positivity guards its physical use, while the reconstructed Sun and planet velocities are exactly the frozen formulas. |
| bpP:p0:newton#IsNewtonSolution | PASS | L226–L233; L228 | The distinct-pair guard now scopes only collision exclusion. Both derivative clauses quantify every body, including the one-body case, exactly as frozen. |
| bpP:p0:fixedsol#IsFixedSolution | PASS | L235–L242; L237 | Corrected scalar/vector typing and independent central-collision and derivative clauses match the frozen definition; only pair collision exclusion uses distinct indices. |
| bpP:p0:movham#movingHamiltonian | PASS | L244–L255; L245; L247; L248 | G and m_0 are scalars, m is a vector, and the complete moving-Sun Hamiltonian including self and cross kinetic terms matches the definition and direct edges. |
| bpP:p0:fixham#fixedHamiltonian | PASS | L257–L263; L258; L259 | The repaired typing and the fixed-center Hamiltonian formula match the frozen total function. Retention of this definition anchor follows the explicit Part 0 scope ruling. |
| bpP:p0:movkol#MovingKolmogorovSet | PASS | L283–L295; L284; L285; L286; L288; L289; L290; L291 | Arbitrary real arguments are correctly separated from physical use guards. The measurable set, entire tori, Newton reconstruction, all-phase clauses and fixed pair bounds match the frozen predicate. |
| bpP:p0:fixkol#FixedKolmogorovSet | PASS | L297–L304; L298; L299; L300; L301 | The total predicate has no added positivity premise. Its fixed-center dynamics, momentum-to-velocity conversion and Sun-at-origin pair bounds agree; retain the anchor under the scope ruling. |
| bpP:p0:totality | PASS | L306–L329; L310; L311; L315; L317; L318; L319; L322; L327; L311–L314; L312–L313; L313; L314 | The added torus, cylinder, Hamiltonian and form edges are direct uses at L311–L314. The consumed ofReal case split is stated explicitly. Part 5 L325 genuinely uses the remark; no backward edge to P-G is introduced. |
| bpP:p0:pg | PASS | L333–L365; p5-pg-assembly: L317–L320; L337; L342; L343; L344; L345; L351; L353; p5-pg-assembly: L317 | The proof edge now uses the actual Part 5 label bpP:p5:main. The frozen hypotheses, choice of constants before r and mu, common frequency/measure C, and strict measure bounds are preserved. |
| bpP:p0:planar | PASS | L367–L377; p12-planar-assembly: L159–L163; L370; L371; p12-planar-assembly: L159 | The proof edge now uses bpP:p12:planar in its owning file. Source and frozen signatures retain ordered axes without a numerical separation and constants chosen before mu. |
| bpP:p0:d25-kepler#keplerAxis | PASS | L410–L422; L414; L411 | The added Phase edge is a direct carrier use at L411. The existing keplerEnergy edge supplies the actual defining formula; no positivity or prograde premise is added to the total function. |
| bpP:p0:d25-kepler#keplerAction | PASS | L410–L422; L415; L411 | The added Phase edge matches the explicit frozen domain and L411. The defining keplerAxis edge and total square-root convention are faithful. |
| bpP:p0:amd | PASS | L499–L511; p14a-amd-expsafe: L129–L133; L501; L500; L503; L504; L505; L506; p14a-amd-expsafe: L129 | The proof edge is repaired to bpP:p14:amd. The stopped-input premise, margins, time interval, all four conclusion groups and direct definition edges match the frozen statement. |
| bpP:p0:expsafe | PASS | L513–L522; p14a-amd-expsafe: L295–L299; L514; L516; L517; p14a-amd-expsafe: L295 | The proof edge uses bpP:p14:expsafe and the eleven added definition edges match names in the expanded frozen conclusion. The AMD statement-reference edge incorporates only clauses (a)–(c); the actual helper application is at Part 14a L306. Constants precede mu and z_0. |

## Proposed coverage items

Each of the 72 pending coverage records receives its own row. These are coverage verdicts, distinct from node verdicts even when IDs coincide. Existing reviewed coverage items are outside this delta.

| ID | Verdict | Spans re-read | Finding |
|---|---|---|---|
| bpP:p0:fastdiffeo#HasFastDiffeomorphism | PASS | L137–L144 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:barycentric#barycentricPositions | PASS | L213–L224 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:barycentric#barycentricVelocities | PASS | L213–L224 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:newton#IsNewtonSolution | PASS | L226–L233 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:fixedsol#IsFixedSolution | PASS | L235–L242 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:movham#movingHamiltonian | PASS | L244–L255 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:fixham#fixedHamiltonian | PASS | L257–L263 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:movkol#MovingKolmogorovSet | PASS | L283–L295 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:fixkol#FixedKolmogorovSet | PASS | L297–L304 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:totality | PASS | L306–L329 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:pg | PASS | L333–L365 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:planar | PASS | L367–L377 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:fixed | PASS | L379–L388 | P-FIXED and its source-gap item remain outside the six-root scope under the explicit deferral ruling. |
| bpP:p0:scope | PASS | L390–L393 | Administrative scope prose. The Part 10 doubts paragraph refers to it administratively; this creates no proof dependency. |
| bpP:p0:d25-kepler#keplerAxis | PASS | L410–L422 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:d25-kepler#keplerAction | PASS | L410–L422 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:d25-totality | PASS | L492–L497 | Guard-summary pointer, with no separately consumed result. Part 14a L38 also cites it in the introductory list; that is a pointer and does not require a node. |
| bpP:p0:amd | PASS | L499–L511 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| bpP:p0:expsafe | PASS | L513–L522 | Correct mapping of this source unit to the named node; the frozen-anchor or totality field repair does not change its coverage disposition. |
| heading:bpP:p0 | PASS | L1 | Heading only; the corresponding statements are inventoried separately. |
| heading:bpP:p0:conventions | PASS | L11 | Heading only; the corresponding statements are inventoried separately. |
| heading:bpP:p0:kdefs | PASS | L40 | Heading only; the corresponding statements are inventoried separately. |
| heading:bpP:p0:elementary | PASS | L65 | Heading only; the corresponding statements are inventoried separately. |
| heading:bpP:p0:pgdefs | PASS | L110 | Heading only; the corresponding statements are inventoried separately. |
| heading:bpP:p0:physdefs | PASS | L191 | Heading only; the corresponding statements are inventoried separately. |
| heading:bpP:p0:theorems | PASS | L331 | Heading only; the corresponding statements are inventoried separately. |
| heading:bpP:p0:d25-sec | PASS | L395 | Heading only; the corresponding statements are inventoried separately. |
| p0:sourcegap-L362 | PASS | L362 | Strictness and the uniform analytic remainder are mapped to the actual Part 5 bridges used by the P-G assembly. |
| p0:sourcegap-L376 | PASS | L376 | Repaired mapping follows Part 12 through P-G, planar Birkhoff form/torsion and forward-tube closeness; no unused R-nondegeneracy or commentary node is retained. |
| p0:sourcegap-L387 | PASS | L386 | P-FIXED and its source-gap item remain outside the six-root scope under the explicit deferral ruling. |
| p0:source-L49 | PASS | L49 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L62 | PASS | L62 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L75 | PASS | L75 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L88 | PASS | L88 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L94 | PASS | L94 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L107 | PASS | L107 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L120 | PASS | L120 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L126 | PASS | L126 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L134 | PASS | L134 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L143 | PASS | L143 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L161 | PASS | L161 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L178 | PASS | L178 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L188 | PASS | L188 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L202 | PASS | L202 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L210 | PASS | L210 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L223 | PASS | L223 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L232 | PASS | L232 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L241 | PASS | L241 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L254 | PASS | L254 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L262 | PASS | L262 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L280 | PASS | L280 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L294 | PASS | L294 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L303 | PASS | L303 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L358 | PASS | L358 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L374 | PASS | L374 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L386 | PASS | L385 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L408 | PASS | L407 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L422 | PASS | L421 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L428 | PASS | L427 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L441 | PASS | L440 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L455 | PASS | L454 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L462 | PASS | L461 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L469 | PASS | L468 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L484 | PASS | L483 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L490 | PASS | L489 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L511 | PASS | L510 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:source-L522 | PASS | L521 | Provenance citation attached to a definition or theorem, not a separately applied result; no dependency or external is suppressed. |
| p0:prose-L3-L9 | PASS | L3–L9 | Introduction and historical scope pointer; no consumed mathematical premise is excluded. |
| p0:prose-L13-L38 | PASS | L13–L38 | Ambient spaces, blocks, physical length, periods and constant order are mapped to their actual definition and root consumers; theorem references here are pointers. |
| p0:prose-L42-L42 | PASS | L42 | The revised reason matches the current track-K/track-I pointer sentence; the named declarations have their own anchors. |
| p0:prose-L193-L193 | PASS | L193 | The repaired mapping records positivity as physical use guards, not restrictions or new conjuncts of total definitions. |
| p0:prose-L398-L403 | PASS | L397–L402 | The actual L397–L402 span fixes the D25 normalization and notation, mapped to the consuming definitions and roots. The stable item ID need not change after remapping. |

## Topology and source qualifications

The totality remark is retained on substantive evidence: stepP:p5:mn-meas at Part 5 L325 invokes the nonpositive/positive ofReal case split and finite-cell measure. Its added links point to actual definition uses in the remark. It is a derived guard summary rather than an assumption leaf. Part 6 L55 and L287 also reference its domain guards. An edge from totality to the P-G theorem would be a backward statement-reference edge; none is present.

The EXP-SAFE -> AMD edge is legitimate here: Part 0 L516 incorporates the conclusion clauses (a)–(c), and Part 14a L306 applies the proved helper with positivity, margins, initial membership and stopped bound supplied. The edge does not assume AMD as a premise, import its clause (d) into the root conclusion, or replace the explicit frozen-definition links. No cycle is introduced by these proposed definition edges. The actual proof remains owned by Part 14a.

The fixed-only definitions are kept under SPEC's explicit Part 0 anchor ruling; this delta does not decide the writer's parking policy for the deferred P-FIXED root. The P-FIXED theorem and source-gap coverage exclusions remain correct for the current six-root scope.

There are no route additions or proof-step quantifier fills among these 16 pending nodes. They consist of 15 frozen anchors and one guard-summary claim. There are no imported dependencies requiring an ownership change in this pending set; the transcribed K and I definitions are P-owned anchors under SPEC.

Two coverage reasons contain overbroad literal absence claims: scope is referenced in Part 10's administrative doubts paragraph, and D25-totality is named in the Part 14a L38 introductory guard list. Neither reference consumes an additional mathematical result, so their EXCLUDED dispositions remain correct. Under the Convergence rule these do not justify a new topology rewrite.

## Suspected blueprint defects retained as context

The prior review's punctuation concern remains at Part 0 L227–L230 and L236–L238: “for all t ... and i != j” grammatically scopes more than pair collision exclusion. The authoritative frozen definitions put every-body derivatives (and fixed-center collision exclusion) outside that guard; the repaired graph now records that exact meaning, including the one-body case. No frozen edit is proposed.

The historical scope sentences at L3–L9 and L390–L393 are obsolete in light of D25 and Part 14b, but are administrative rather than proof premises. At L324–L325, “nontrivial only when” is imprecise: a nonpositive lower factor still requires positive measure; the source parenthetical and the repaired totality record correctly use the separate positivity conclusion. These existing source-maintenance observations do not invalidate the pending records.

The P-PLANAR sourcegap at L376 already names the Part 12/P-G route. Its revised mapping is to the current bridge nodes, not to the bypassed R-nondegeneracy route or p10:noncont commentary. No new pinned-paper erratum, unsupported bridge or mathematical deviation was found in this delta.

## Validation

- Pending inventory: exactly 16 nodes and 72 coverage items; one row per pending record within its own table.
- Source pins: sha256sum -c docs/graph/P/CORPUS.sha256 — all 16 entries OK; sha256sum -c docs/graph/P/IMPORTS.sha256 — all 9 entries OK.
- All 15 proposed anchor identity tuples match the manifest: file, export, anchor ID, contract ID/version and ABI hash.
- This is a source-topology PASS, not a Lean proof or sealing verdict. Only this report was written; no packets, source, SPEC, frozen files or manifest were edited.

Independent structural checks PASS: 106 pending-node EDGE records have exact DEPS correspondence and existing targets; all 199 pending-record locator ranges are valid; all mapped coverage node IDs exist; both verdict tables exactly match the pending inventory. No FAIL or replacement block is present.
