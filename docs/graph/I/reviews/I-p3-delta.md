# I-p3 delta topology review

Reviewer: `sol-delta-I-b`, 2026-10-27. Marker: `delta-I-b`.
Independent of extractor `sonnet-extract-I-p3` and slice reviewer `sol-review-I-p3`.

**Verdict: FAIL. Of 51 proposed nodes, 47 PASS and 4 FAIL. All 78 proposed coverage items PASS.**

I read `DELTA-BRIEF.md` in full, the binding `REVIEW-BRIEF.md` and `SPEC.md` with its rulings, repository rules/decisions, both assigned slice reviews and packets, and the complete raw Parts 2 and 3. For every proposed record I checked the statement/proof fields, every EDGE at the consumer, package uses, local conditional premises, and the coverage disposition. Imported K results were checked in the owning raw blueprint, not inferred from Lean implementation. I read the relevant frozen I-G1/I-HEAD signatures and definitions and used only manifest identity fields. No providers, implementation modules, Lean proof bodies or proof-status fields were used.

The table locators below are relative to `blueprint-I/parts/`. A node row includes its EDGE spans within the listed units. The node and coverage tables are separate inventories: a coverage PASS does not override a node FAIL with the same ID. PASS is source/topology fidelity, not mathematical or Lean proof closure.

## Proposed nodes

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p3:setting | PASS | p3-iso-local-charts.tex #bpI:p3:setting@L34-L46 | Source fields, direct uses, packages and locators agree. |
| bpI:p3:setting#k-bridge | PASS | p3-iso-local-charts.tex #bpI:p3:setting #k-bridge@L48-L50 | Source fields, direct uses, packages and locators agree. |
| bpI:p3:constants | PASS | p3-iso-local-charts.tex #bpI:p3:constants@L52-L79 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:cp-grad | PASS | p3-iso-local-charts.tex #stepI:p3:cp-grad@L89-L91 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:cp-inverse | PASS | p3-iso-local-charts.tex #stepI:p3:cp-inverse@L92-L96 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:di-expand | PASS | p3-iso-local-charts.tex #stepI:p3:di-expand@L125-L129 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:di-conseq | PASS | p3-iso-local-charts.tex #stepI:p3:di-conseq@L130-L131 | Source fields, direct uses, packages and locators agree. |
| bpI:p3:coordinates | PASS | p3-iso-local-charts.tex #bpI:p3:coordinates@L134-L149 | Source fields, direct uses, packages and locators agree. |
| bpI:p3:slope-ray | PASS | p3-iso-local-charts.tex #bpI:p3:slope-ray@L151-L156 | Source fields, direct uses, packages and locators agree. |
| bpI:p3:chart | PASS | p3-iso-local-charts.tex #bpI:p3:chart@L158-L164; p3-iso-local-charts.tex #bpI:p3:chart@L165-L175 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:ch-deriv | PASS | p3-iso-local-charts.tex #stepI:p3:ch-deriv@L166-L169 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:ch-det | PASS | p3-iso-local-charts.tex #stepI:p3:ch-det@L170-L172 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:ch-ift | PASS | p3-iso-local-charts.tex #stepI:p3:ch-ift@L173-L174 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:cv-local | PASS | p3-iso-local-charts.tex #stepI:p3:cv-local@L194-L196 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:cv-compact | PASS | p3-iso-local-charts.tex #stepI:p3:cv-compact@L197-L198 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:do-choice | PASS | p3-iso-local-charts.tex #stepI:p3:do-choice@L213-L214 | Source fields, direct uses, packages and locators agree. |
| bpI:p3:rays | FAIL | p3-iso-local-charts.tex #bpI:p3:rays@L217-L222; p3-iso-local-charts.tex #bpI:p3:rays@L223-L230 | The new compact EDGE is at L218, which only introduces c and J; its positivity input is actually consumed by the norm-shell witness at L227. Relocate that EDGE. |
| stepI:p3:ry-open | PASS | p3-iso-local-charts.tex #stepI:p3:ry-open@L224-L227 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:ry-dio | PASS | p3-iso-local-charts.tex #stepI:p3:ry-dio@L228-L229 | Source fields, direct uses, packages and locators agree. |
| bpI:p3:points | PASS | p3-iso-local-charts.tex #bpI:p3:points@L242-L257; p3-iso-local-charts.tex #bpI:p3:points@L258-L269 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:pt-exist | PASS | p3-iso-local-charts.tex #stepI:p3:pt-exist@L259-L260 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:pt-parallel | PASS | p3-iso-local-charts.tex #stepI:p3:pt-parallel@L261-L264 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:pt-position | PASS | p3-iso-local-charts.tex #stepI:p3:pt-position@L265-L266 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:pt-segment | PASS | p3-iso-local-charts.tex #stepI:p3:pt-segment@L267-L268 | Source fields, direct uses, packages and locators agree. |
| bpI:p3:hypothesis-d | PASS | p3-iso-local-charts.tex #bpI:p3:hypothesis-d@L274-L279; p3-iso-local-charts.tex #bpI:p3:hypothesis-d@L280-L287 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:hd-open | PASS | p3-iso-local-charts.tex #stepI:p3:hd-open@L281-L283 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:hd-bounds | PASS | p3-iso-local-charts.tex #stepI:p3:hd-bounds@L284-L286 | Source fields, direct uses, packages and locators agree. |
| bpI:p3:torus | PASS | p3-iso-local-charts.tex #bpI:p3:torus@L289-L302; p3-iso-local-charts.tex #bpI:p3:torus@L303-L318 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:to-torus | PASS | p3-iso-local-charts.tex #stepI:p3:to-torus@L304-L307 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:to-error | PASS | p3-iso-local-charts.tex #stepI:p3:to-error@L308-L309 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:to-torsion | FAIL | p3-iso-local-charts.tex #stepI:p3:to-torsion@L310-L313 | The common DEPS still require to-error for both routes, although the direct DH(K)N route does not use E or eta. Keep that prerequisite only on the citation route. |
| stepI:p3:to-torsion#p1-setting | PASS | p3-iso-local-charts.tex #stepI:p3:to-torsion #p1-setting@L310-L313 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:to-neumann | PASS | p3-iso-local-charts.tex #stepI:p3:to-neumann@L314-L315 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:to-energy | PASS | p3-iso-local-charts.tex #stepI:p3:to-energy@L316-L317 | Source fields, direct uses, packages and locators agree. |
| bpI:p3:apply | PASS | p3-iso-local-charts.tex #bpI:p3:apply@L320-L333; p3-iso-local-charts.tex #bpI:p3:apply@L334-L349 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:ap-d | PASS | p3-iso-local-charts.tex #stepI:p3:ap-d@L335-L336 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:ap-k | PASS | p3-iso-local-charts.tex #stepI:p3:ap-k@L337-L338 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:ap-t | PASS | p3-iso-local-charts.tex #stepI:p3:ap-t@L339-L340 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:ap-ray | PASS | p3-iso-local-charts.tex #stepI:p3:ap-ray@L341-L342 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:ap-error | PASS | p3-iso-local-charts.tex #stepI:p3:ap-error@L343-L344 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:ap-small | PASS | p3-iso-local-charts.tex #stepI:p3:ap-small@L345-L346 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:ap-conclusion | PASS | p3-iso-local-charts.tex #stepI:p3:ap-conclusion@L347-L348 | Source fields, direct uses, packages and locators agree. |
| bpI:p3:tori | PASS | p3-iso-local-charts.tex #bpI:p3:tori@L371-L387; p3-iso-local-charts.tex #bpI:p3:tori@L388-L405 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:tori-patch | PASS | p3-iso-local-charts.tex #stepI:p3:tori-patch@L389-L391 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:tori-base | PASS | p3-iso-local-charts.tex #stepI:p3:tori-base@L392-L393 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:tori-ig1 | PASS | p3-iso-local-charts.tex #stepI:p3:tori-ig1@L394-L397 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:tori-close | PASS | p3-iso-local-charts.tex #stepI:p3:tori-close@L398-L400 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:tori-position | PASS | p3-iso-local-charts.tex #stepI:p3:tori-position@L401-L404 | Source fields, direct uses, packages and locators agree. |
| bpI:p3:apply#constants | PASS | p3-iso-local-charts.tex #bpI:p3:apply #constants@L321-L322 | Source fields, direct uses, packages and locators agree. |
| stepI:p3:to-torsion#flat-route | FAIL | p3-iso-local-charts.tex #stepI:p3:to-torsion #flat-route@L311-L313 | The direct route does not consume to-error; it does consume the torsion definition at L311. The frame EDGE at L313 does not locate the frame substitution at L311. |
| stepI:p3:to-torsion#citation-route | FAIL | p3-iso-local-charts.tex #stepI:p3:to-torsion #citation-route@L311-L313 | Missing direct torsion-definition edge for the common upper-left-block calculation at L311. The grouped frame/error EDGE locators at L313 must be L311/L312, respectively. |

## Proposed coverage records

| ID | Verdict | Spans re-read | Reason / check |
|---|---|---|---|
| bpI:p3:setting | PASS | p3-iso-local-charts.tex #bpI:p3:setting@L34-L46 | Correct mapping of the source claim to its node(s). |
| bpI:p3:constants | PASS | p3-iso-local-charts.tex #bpI:p3:constants@L52-L79 | Correct mapping of the source claim to its node(s). |
| stepI:p3:cp-grad | PASS | p3-iso-local-charts.tex #stepI:p3:cp-grad@L89-L91 | Correct mapping of the source claim to its node(s). |
| stepI:p3:cp-inverse | PASS | p3-iso-local-charts.tex #stepI:p3:cp-inverse@L92-L96 | Correct mapping of the source claim to its node(s). |
| stepI:p3:di-expand | PASS | p3-iso-local-charts.tex #stepI:p3:di-expand@L125-L129 | Correct mapping of the source claim to its node(s). |
| stepI:p3:di-conseq | PASS | p3-iso-local-charts.tex #stepI:p3:di-conseq@L130-L131 | Correct mapping of the source claim to its node(s). |
| bpI:p3:coordinates | PASS | p3-iso-local-charts.tex #bpI:p3:coordinates@L134-L149 | Correct mapping of the source claim to its node(s). |
| bpI:p3:slope-ray | PASS | p3-iso-local-charts.tex #bpI:p3:slope-ray@L151-L156 | Correct mapping of the source claim to its node(s). |
| bpI:p3:chart | PASS | p3-iso-local-charts.tex #bpI:p3:chart@L158-L164 | Correct mapping of the source claim to its node(s). |
| stepI:p3:ch-deriv | PASS | p3-iso-local-charts.tex #stepI:p3:ch-deriv@L166-L169 | Correct mapping of the source claim to its node(s). |
| stepI:p3:ch-det | PASS | p3-iso-local-charts.tex #stepI:p3:ch-det@L170-L172 | Correct mapping of the source claim to its node(s). |
| stepI:p3:ch-ift | PASS | p3-iso-local-charts.tex #stepI:p3:ch-ift@L173-L174 | Correct mapping of the source claim to its node(s). |
| stepI:p3:cv-local | PASS | p3-iso-local-charts.tex #stepI:p3:cv-local@L194-L196 | Correct mapping of the source claim to its node(s). |
| stepI:p3:cv-compact | PASS | p3-iso-local-charts.tex #stepI:p3:cv-compact@L197-L198 | Correct mapping of the source claim to its node(s). |
| stepI:p3:do-choice | PASS | p3-iso-local-charts.tex #stepI:p3:do-choice@L213-L214 | Correct mapping of the source claim to its node(s). |
| bpI:p3:rays | PASS | p3-iso-local-charts.tex #bpI:p3:rays@L217-L222 | Correct mapping of the source claim to its node(s). |
| stepI:p3:ry-open | PASS | p3-iso-local-charts.tex #stepI:p3:ry-open@L224-L227 | Correct mapping of the source claim to its node(s). |
| stepI:p3:ry-dio | PASS | p3-iso-local-charts.tex #stepI:p3:ry-dio@L228-L229 | Correct mapping of the source claim to its node(s). |
| bpI:p3:points | PASS | p3-iso-local-charts.tex #bpI:p3:points@L242-L257 | Correct mapping of the source claim to its node(s). |
| stepI:p3:pt-exist | PASS | p3-iso-local-charts.tex #stepI:p3:pt-exist@L259-L260 | Correct mapping of the source claim to its node(s). |
| stepI:p3:pt-parallel | PASS | p3-iso-local-charts.tex #stepI:p3:pt-parallel@L261-L264 | Correct mapping of the source claim to its node(s). |
| stepI:p3:pt-position | PASS | p3-iso-local-charts.tex #stepI:p3:pt-position@L265-L266 | Correct mapping of the source claim to its node(s). |
| stepI:p3:pt-segment | PASS | p3-iso-local-charts.tex #stepI:p3:pt-segment@L267-L268 | Correct mapping of the source claim to its node(s). |
| bpI:p3:hypothesis-d | PASS | p3-iso-local-charts.tex #bpI:p3:hypothesis-d@L274-L279 | Correct mapping of the source claim to its node(s). |
| stepI:p3:hd-open | PASS | p3-iso-local-charts.tex #stepI:p3:hd-open@L281-L283 | Correct mapping of the source claim to its node(s). |
| stepI:p3:hd-bounds | PASS | p3-iso-local-charts.tex #stepI:p3:hd-bounds@L284-L286 | Correct mapping of the source claim to its node(s). |
| bpI:p3:torus | PASS | p3-iso-local-charts.tex #bpI:p3:torus@L289-L302 | Correct mapping of the source claim to its node(s). |
| stepI:p3:to-torus | PASS | p3-iso-local-charts.tex #stepI:p3:to-torus@L304-L307 | Correct mapping of the source claim to its node(s). |
| stepI:p3:to-error | PASS | p3-iso-local-charts.tex #stepI:p3:to-error@L308-L309 | Correct mapping of the source claim to its node(s). |
| stepI:p3:to-torsion | PASS | p3-iso-local-charts.tex #stepI:p3:to-torsion@L310-L313 | Correct mapping of the source claim to its node(s). |
| stepI:p3:to-neumann | PASS | p3-iso-local-charts.tex #stepI:p3:to-neumann@L314-L315 | Correct mapping of the source claim to its node(s). |
| stepI:p3:to-energy | PASS | p3-iso-local-charts.tex #stepI:p3:to-energy@L316-L317 | Correct mapping of the source claim to its node(s). |
| bpI:p3:apply | PASS | p3-iso-local-charts.tex #bpI:p3:apply@L320-L333 | Correct mapping of the source claim to its node(s). |
| stepI:p3:ap-d | PASS | p3-iso-local-charts.tex #stepI:p3:ap-d@L335-L336 | Correct mapping of the source claim to its node(s). |
| stepI:p3:ap-k | PASS | p3-iso-local-charts.tex #stepI:p3:ap-k@L337-L338 | Correct mapping of the source claim to its node(s). |
| stepI:p3:ap-t | PASS | p3-iso-local-charts.tex #stepI:p3:ap-t@L339-L340 | Correct mapping of the source claim to its node(s). |
| stepI:p3:ap-ray | PASS | p3-iso-local-charts.tex #stepI:p3:ap-ray@L341-L342 | Correct mapping of the source claim to its node(s). |
| stepI:p3:ap-error | PASS | p3-iso-local-charts.tex #stepI:p3:ap-error@L343-L344 | Correct mapping of the source claim to its node(s). |
| stepI:p3:ap-small | PASS | p3-iso-local-charts.tex #stepI:p3:ap-small@L345-L346 | Correct mapping of the source claim to its node(s). |
| stepI:p3:ap-conclusion | PASS | p3-iso-local-charts.tex #stepI:p3:ap-conclusion@L347-L348 | Correct mapping of the source claim to its node(s). |
| bpI:p3:constants-order | PASS | p3-iso-local-charts.tex #bpI:p3:constants-order@L351-L354 | Administrative/pointer/provenance exclusion checked. |
| bpI:p3:tori | PASS | p3-iso-local-charts.tex #bpI:p3:tori@L371-L387 | Correct mapping of the source claim to its node(s). |
| stepI:p3:tori-patch | PASS | p3-iso-local-charts.tex #stepI:p3:tori-patch@L389-L391 | Correct mapping of the source claim to its node(s). |
| stepI:p3:tori-base | PASS | p3-iso-local-charts.tex #stepI:p3:tori-base@L392-L393 | Correct mapping of the source claim to its node(s). |
| stepI:p3:tori-ig1 | PASS | p3-iso-local-charts.tex #stepI:p3:tori-ig1@L394-L397 | Correct mapping of the source claim to its node(s). |
| stepI:p3:tori-close | PASS | p3-iso-local-charts.tex #stepI:p3:tori-close@L398-L400 | Correct mapping of the source claim to its node(s). |
| stepI:p3:tori-position | PASS | p3-iso-local-charts.tex #stepI:p3:tori-position@L401-L404 | Correct mapping of the source claim to its node(s). |
| bpI:p3:consumption | PASS | p3-iso-local-charts.tex #bpI:p3:consumption@L407-L410 | Administrative/pointer/provenance exclusion checked. |
| bpI:p3:doubts | PASS | p3-iso-local-charts.tex #bpI:p3:doubts@L412-L416 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p3 | PASS | p3-iso-local-charts.tex #bpI:p3@L1-L1 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p3:sec-data | PASS | p3-iso-local-charts.tex #bpI:p3:sec-data@L32-L32 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p3:sec-charts | PASS | p3-iso-local-charts.tex #bpI:p3:sec-charts@L111-L111 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p3:sec-rays | PASS | p3-iso-local-charts.tex #bpI:p3:sec-rays@L202-L202 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p3:sec-torus | PASS | p3-iso-local-charts.tex #bpI:p3:sec-torus@L272-L272 | Administrative/pointer/provenance exclusion checked. |
| heading:bpI:p3:sec-output | PASS | p3-iso-local-charts.tex #bpI:p3:sec-output@L357-L357 | Administrative/pointer/provenance exclusion checked. |
| p3:sourcegap-L28 | PASS | p3-iso-local-charts.tex #sourcegap@L28-L28 | Correct mapping of the source claim to its node(s). |
| p3:source-L25 | PASS | p3-iso-local-charts.tex #source@L25-L25 | Administrative/pointer/provenance exclusion checked. |
| p3:source-L162 | PASS | p3-iso-local-charts.tex #source@L162-L162 | Administrative/pointer/provenance exclusion checked. |
| p3:source-L191 | PASS | p3-iso-local-charts.tex #source@L191-L191 | Administrative/pointer/provenance exclusion checked. |
| p3:source-L206 | PASS | p3-iso-local-charts.tex #source@L206-L206 | Administrative/pointer/provenance exclusion checked. |
| p3:source-L256 | PASS | p3-iso-local-charts.tex #source@L256-L256 | Administrative/pointer/provenance exclusion checked. |
| p3:source-L278 | PASS | p3-iso-local-charts.tex #source@L278-L278 | Administrative/pointer/provenance exclusion checked. |
| p3:source-L301 | PASS | p3-iso-local-charts.tex #source@L301-L301 | Administrative/pointer/provenance exclusion checked. |
| p3:source-L386 | PASS | p3-iso-local-charts.tex #source@L386-L386 | Administrative/pointer/provenance exclusion checked. |
| p3:prose-L3-L24 | PASS | p3-iso-local-charts.tex #prose@L3-L24 | Administrative/pointer/provenance exclusion checked. |
| p3:prose-L48-L50 | PASS | p3-iso-local-charts.tex #prose@L48-L50 | Correct mapping of the source claim to its node(s). |
| p3:prose-L99-L101 | PASS | p3-iso-local-charts.tex #prose@L99-L101 | Administrative/pointer/provenance exclusion checked. |
| bpI:p3:P1 | PASS | p3-iso-local-charts.tex #bpI:p3:P1@L181-L181 | Correct mapping of the source claim to its node(s). |
| bpI:p3:P2 | PASS | p3-iso-local-charts.tex #bpI:p3:P2@L182-L182 | Correct mapping of the source claim to its node(s). |
| bpI:p3:P3 | PASS | p3-iso-local-charts.tex #bpI:p3:P3@L183-L183 | Correct mapping of the source claim to its node(s). |
| bpI:p3:T1 | PASS | p3-iso-local-charts.tex #bpI:p3:T1@L376-L376 | Correct mapping of the source claim to its node(s). |
| bpI:p3:T2 | PASS | p3-iso-local-charts.tex #bpI:p3:T2@L377-L377 | Correct mapping of the source claim to its node(s). |
| bpI:p3:T3 | PASS | p3-iso-local-charts.tex #bpI:p3:T3@L378-L378 | Correct mapping of the source claim to its node(s). |
| bpI:p3:T4 | PASS | p3-iso-local-charts.tex #bpI:p3:T4@L379-L380 | Correct mapping of the source claim to its node(s). |
| bpI:p3:T5 | PASS | p3-iso-local-charts.tex #bpI:p3:T5@L381-L381 | Correct mapping of the source claim to its node(s). |
| bpI:p3:T6 | PASS | p3-iso-local-charts.tex #bpI:p3:T6@L382-L382 | Correct mapping of the source claim to its node(s). |
| bpI:p3:T7 | PASS | p3-iso-local-charts.tex #bpI:p3:T7@L383-L383 | Correct mapping of the source claim to its node(s). |
| p3:prose-L113-L114 | PASS | p3-iso-local-charts.tex #p3:prose-L113-L114@L113-L114 | Correct mapping of the source claim to its node(s). |

## Findings and closure of the first review

**Premises and data packages.** The setting now links the action-neighbourhood definition. The K bridge compares only the common analytic/domain core; it does not manufacture Kolmogorov or boundary-layer hypotheses. I re-read K Part 4's shrunken-domain data L138–163, boundedness proof L168–180, derivative bounds L183–222, frequency map L225–272, and H1 L309–327. The used clauses need only the common core. The compactness/inclusion node now feeds the gradient extrema and inverse bounds, and positivity/attained estimates feed the ray witness and frequency ratios. The inherited source fields no longer assume those proved bounds as additional hypotheses. The independently stated `dio-open` and measure-choice step do not acquire the perturbation package as a new premise.

**Source contracts.** `coordinates` now uses holomorphic regularity along with the frequency-map identification to justify C1 regularity. `chart` chooses its neighbourhood after an arbitrary prescribed open neighbourhood. `points` retains the guard on I0, the homeomorphic energy segment, and the distinction between I0 and a point on h=E. The flat-torus statement includes the full f-dependent R block, and the output retains nonresonance, the scalar-frequency norm identity and the qualification that I0 need not lie on the energy arc. The Part 3 constants record honestly exposes L76 versus L78: e=F1 epsilon is perturbation dependent, while its fixed coefficient is not. This existing wording conflict is not silently erased or used to alter a frozen contract.

**Rays locator.** The newly added compact prerequisite is mathematically needed and correct, but at L218 the source only fixes c and J. The actual positive-m_h use in the explicit shell witness is L227. The replacement only relocates that EDGE, retaining the prerequisite.

**Two torsion routes.** I independently checked the direct formula and the literal Part 1 citation route at L311–313. The direct route evaluates DH(K) on the constant normal frame; it requires neither E=X_f nor eta^L. The citation route uses E=X_f to substitute eta^L in `last-row(a)`. Therefore the to-error edge cannot be a common conjunctive parent prerequisite and cannot remain on the flat route. It belongs only on the citation route, located at L312. Both routes use the defining torsion formula for the upper-left block at L311, so both need the direct `bpI:p0:stripdata#torsion` edge. Their frame substitutions occur at L311 rather than at the grouped L313 locator. The complete replacements make these changes; they do not add mathematics to either route. The writer-added parent ROUTES/EDGE entries themselves correctly describe alternatives, not a conjunction of the two routes.

The existing `#p1-setting` record accurately exposes the missing Diophantine premise of the **generic** flat torus for the full Part 1 citations. Its source hypothesis no longer assumes exactly what it was meant to establish. It remains a faithful SOURCE_GAP record, hence passes topology review. The citation route depends on that obligation, while the direct route avoids it. No Diophantine premise is added to the flat-torus statement, and later ray-specific data do not retroactively prove the generic premise.

**Frozen constant witnesses and applications.** The new `apply#constants` chooses one tuple from frozen I-G1 after the geometric data, patch, fixed ray and gamma, but before f,epsilon,E,I0. The compact data supply positivity/finiteness; the ray norm supplies nonzero omega-star. Its consumer `ap-small` uses that same C1 and has no cyclic dependency on the enclosing application. `ap-conclusion` consumes the same selected tuple and the seven checks I1–I13. I checked the five derivative bounds, the two inverse bounds, both endpoint margins, Diophantinity of omega-star, energy/error inequalities, and strict smallness including epsilon=0. The later tori proof uses this same output: O1–O3/O6 in `tori-ig1`, O5 in `tori-close`, and O4 in `tori-position`, with no new independent existential witnesses. The factor 4 C_K epsilon/rho-infinity comes from n=2 and loss rho-infinity/2 in the ordinary Cauchy estimate. The margin/position proof uses eta1 <= d_B/2 exactly as stated.

**Coverage.** All P1–P3/T1–T7 clause items now map to their actual definition/result. The unlabelled perpendicular/determinant notation maps to `det-identity` and `coordinates`; it is no longer omitted. The torsion item covers the parent, both routes and its scoped premise obligation; the application item covers the separate constant selection. The paper source-gap note concerns a bridge that the chart/ray/point lemmas supply, not a new unproved external. The comments on downstream consumption are pointers to Part 5, and the N kernel reference explicitly says it is not needed; no such edges are retained. No further missing substantive Part 3 region was found.

## Complete replacement blocks

```text
NODE: bpI:p3:rays
KIND: lemma
TITLE: Rays in a sector
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L217-L222
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L223-L230
CONTRACT_ID: bpI:p3:rays
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: c in closure B'; J in R nonempty open bounded interval; Assumption bpI:p3:setting and Definition bpI:p3:constants (m_h, coordinates a_c, sigma_c)
SOURCE_QUANTIFIERS: c, J fixed; then gamma>0 and omega*
SOURCE_CONCLUSION: there are gamma>0 and omega* in R^2 with omega* in Dio_{gamma,2}, a_c(omega*)>0, sigma_c(omega*) in J, m_h/4 < ¦omega*¦ < m_h/2
CONSTANT_SCOPE: gamma, omega* depend on (c,J) and the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, bpI:p3:constants, bpI:p3:coordinates, stepI:p3:ry-open, stepI:p3:ry-dio, bpI:p3:compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L218-L218 | c in closure B'
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L220-L220 | m_h
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L218-L218 | a_c, sigma_c
EDGE: stepI:p3:ry-open | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L224-L224 | proof step of this result
EDGE: stepI:p3:ry-dio | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L228-L228 | proof step of this result
EDGE: bpI:p3:compact | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L227-L227 | m_h > 0 makes the chosen norm-shell witness belong to O
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3+sol-review-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepI:p3:to-torsion
KIND: step
TITLE: Torsion and border
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L310-L313
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L310-L313
CONTRACT_ID: stepI:p3:to-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Part 3 setting; epsilon <= 1; D := D-frak; I in B real; omega := grad h(I); K(theta) := (theta,I)
SOURCE_QUANTIFIERS: I in B real
SOURCE_CONCLUSION: T_ij = d_i d_j h(I) + d_{I_i}d_{I_j} f(theta,I); last column omega = grad h(I); last row Y_b = d_b h(I) + d_{I_b} f(theta,I); T_H = B_h(I) + R with R the f-part, ¦R¦ <= 2F_2 epsilon (row-sums), avg T_H defined (integrable) and ¦avg T_H - B_h(I)¦ <= 2F_2 epsilon, avg B_h = B_h
CONSTANT_SCOPE: F_2 from the constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:tr-compare, bpI:p3:hypothesis-d, K:bp:p1:ext-integral, stepI:p3:to-torus, bpI:p3:constants, bpI:p3:setting
ROUTES: stepI:p3:to-torsion#flat-route, stepI:p3:to-torsion#citation-route
ROUTE_FOR: -
EDGE: stepI:p1:tr-compare | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | upper-left block and border of B_h(I)
EDGE: bpI:p3:hypothesis-d | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | ¦D^2 f¦ <= F_2 epsilon, ¦X_f¦ <= F_1 epsilon
EDGE: K:bp:p1:ext-integral | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | ¦avg¦ <= sup
EDGE: stepI:p3:to-torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L311-L311 | frame N_{.j} = (0,e_j), D_theta N = 0
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | F_1, F_2
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | H = h+f; B_h from h
EDGE: stepI:p3:to-torsion#flat-route | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L310-L313 | alternative derivation offered by the proof (route)
EDGE: stepI:p3:to-torsion#citation-route | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L310-L313 | alternative derivation offered by the proof (route)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3+sol-review-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The direct DH(K)N calculation uses no invariance-error identity. The to-error dependency belongs only to the citation route, where E = X_f is substituted in eta^L. Both alternatives retain their own actual torsion-formula and frame prerequisites.
```

```text
NODE: stepI:p3:to-torsion#flat-route
KIND: route
TITLE: Torsion and averaging by direct flat formula
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L311-L313
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L311-L313
CONTRACT_ID: stepI:p3:to-torsion#flat-route
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Part 3 setting; epsilon <= 1; D := D-frak; I in B real; omega := grad h(I); K(theta) := (theta,I)
SOURCE_QUANTIFIERS: I and omega as in torus; theta in T_{s/2}
SOURCE_CONCLUSION: T_ij = d_i d_j h(I) + d_{I_i}d_{I_j} f(theta,I); last column omega = grad h(I); last row Y_b = d_b h(I) + d_{I_b} f(theta,I); T_H = B_h(I) + R with R the f-part, ¦R¦ <= 2F_2 epsilon (row-sums), avg T_H defined (integrable) and ¦avg T_H - B_h(I)¦ <= 2F_2 epsilon, avg B_h = B_h
CONSTANT_SCOPE: F_1,F_2 from p3:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:tr-compare, bpI:p3:hypothesis-d, K:bp:p1:ext-integral, stepI:p3:to-torus, bpI:p3:constants, bpI:p3:setting, bpI:p0:extended#extendedTorsion, bpI:p0:extended#extendedTorsionAverage, K:bp:p1:holomorphic-regularity, bpI:p1:ext-chain, bpI:p0:stripdata#torsion
ROUTES: -
ROUTE_FOR: stepI:p3:to-torsion
EDGE: stepI:p1:tr-compare | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L313-L313 | same flat data, frame, error and derivative bounds used in L311-L313
EDGE: bpI:p3:hypothesis-d | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L313-L313 | same flat data, frame, error and derivative bounds used in L311-L313
EDGE: K:bp:p1:ext-integral | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L313-L313 | same flat data, frame, error and derivative bounds used in L311-L313
EDGE: stepI:p3:to-torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L311-L311 | N_j = (0,e_j) and D_theta N_j = 0 in the torsion calculation
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L313-L313 | same flat data, frame, error and derivative bounds used in L311-L313
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L313-L313 | same flat data, frame, error and derivative bounds used in L311-L313
EDGE: bpI:p0:extended#extendedTorsion | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L312-L312 | the explicitly stated direct value Y_b = DH(K) N_b
EDGE: bpI:p0:extended#extendedTorsionAverage | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L313-L313 | entrywise unit-cube average
EDGE: K:bp:p1:holomorphic-regularity | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L313-L313 | continuity of the first and second derivative entries in the displayed flat formula
EDGE: bpI:p1:ext-chain | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L312-L312 | differentiate H=h+f and evaluate on the constant normal frame
EDGE: bpI:p0:stripdata#torsion | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#flat-route@L311-L311 | the defining torsion formula with constant N gives T_ij from DX_H and D_theta N = 0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The source supplies the direct value DH(K)N_b at L312 and the full R formula at L313 (stated at L296-L297). Continuity of these explicit derivative entries on the compact real cube and the already cited ext-integral give the average and bound; this route does not generalize the Part 1 lemmas or assume a Diophantine omega. Requires independent delta review.
```

```text
NODE: stepI:p3:to-torsion#citation-route
KIND: route
TITLE: Torsion and averaging by the cited Part 1 shortcut
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L311-L313
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L311-L313
CONTRACT_ID: stepI:p3:to-torsion#citation-route
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Part 3 setting; epsilon <= 1; D := D-frak; I in B real; omega := grad h(I); K(theta) := (theta,I)
SOURCE_QUANTIFIERS: I and omega as in torus; theta in T_{s/2}
SOURCE_CONCLUSION: T_ij = d_i d_j h(I) + d_{I_i}d_{I_j} f(theta,I); last column omega = grad h(I); last row Y_b = d_b h(I) + d_{I_b} f(theta,I); T_H = B_h(I) + R with R the f-part, ¦R¦ <= 2F_2 epsilon (row-sums), avg T_H defined (integrable) and ¦avg T_H - B_h(I)¦ <= 2F_2 epsilon, avg B_h = B_h
CONSTANT_SCOPE: F_1,F_2 from p3:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:tr-compare, bpI:p3:hypothesis-d, K:bp:p1:ext-integral, stepI:p3:to-torus, stepI:p3:to-error, bpI:p3:constants, bpI:p3:setting, stepI:p3:to-torsion#p1-setting, bpI:p1:last-row, bpI:p1:extended-basic, bpI:p0:stripdata#torsion
ROUTES: -
ROUTE_FOR: stepI:p3:to-torsion
EDGE: stepI:p1:tr-compare | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L313-L313 | same flat data, frame, error and derivative bounds used in L311-L313
EDGE: bpI:p3:hypothesis-d | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L313-L313 | same flat data, frame, error and derivative bounds used in L311-L313
EDGE: K:bp:p1:ext-integral | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L313-L313 | same flat data, frame, error and derivative bounds used in L311-L313
EDGE: stepI:p3:to-torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L311-L311 | N_j = (0,e_j) and D_theta N_j = 0 in the torsion calculation
EDGE: stepI:p3:to-error | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L312-L312 | E = X_f gives eta^L_b = -partial_I_b f in the cited last-row calculation
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L313-L313 | same flat data, frame, error and derivative bounds used in L311-L313
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L313-L313 | same flat data, frame, error and derivative bounds used in L311-L313
EDGE: stepI:p3:to-torsion#p1-setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L312-L312 | missing full-package premise discharge for the citations
EDGE: bpI:p1:last-row | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L312-L312 | last-row identity (a)
EDGE: bpI:p1:extended-basic | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L313-L313 | integrability and identification of the average
EDGE: bpI:p0:stripdata#torsion | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#citation-route@L311-L311 | the defining torsion formula with constant N gives T_ij from DX_H and D_theta N = 0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: This route retains the actual Part 1 citations and their exposed SOURCE_GAP premise check. It is an alternative to the direct flat-formula route, not a mandatory extra premise for that route.
```

## Validation and limits

- Report validation: exactly 51 proposed-node rows and 78 proposed-coverage rows, each appearing once in its table. Review-parser dry run: 4 replacements, zero additions, zero unresolved FAILs. All replacement fields, DEPS/ROUTES-to-EDGE parity, unique edges, field separators, locator bounds and report whitespace pass. The in-memory replacement overlay is acyclic, resolves every dependency, and retains root reachability for every proposed node. Input packet hashes remained unchanged during the review.
- All files in the current `CORPUS.sha256` and `IMPORTS.sha256` pass `sha256sum -c`. The writer has now remapped/re-pinned K Part 1; the older slice reviews' import-drift warning is closed for this snapshot.
- All used K node IDs exist in the owning `docs/graph/K/DEPGRAPH.md`. Imported statements were checked at the current label locations, including K Part 1's remapped spans.
- No generic writer-filled `SOURCE_QUANTIFIERS: inherits the fixed data and quantifiers of the enclosing proof; no new binders` field occurs in either assigned slice. The actual inherited-parent fields were checked against their enclosing statements; an induction premise is retained only where the source explicitly assumes it.
- Only the two requested delta reports are written. No packets, SPEC, pins, source files, frozen files or Lean files are edited; no Lean/build commands or state-changing git commands are run.

The previously reported generic Part 1 citation mismatch and the e-versus-fixed-coefficient wording conflict remain exposed. No additional mathematical blueprint defect, paper erratum, or frozen-statement defect was established in this slice. This verdict does not certify other slices or Lean providers.

Packet hashes at review:

- `I-p3.nodes.md`: `c62427d3386bd98f530acb7181a1dd1784073f984221f4cdbfbb8a124b5a6095`.
- `I-p3.coverage.md`: `c5a049c863ff5eceb06f565d77c391058b916bb5c164d1536ad984d8e18a0576`.
