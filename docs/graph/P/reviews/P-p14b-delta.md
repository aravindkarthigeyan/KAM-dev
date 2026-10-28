# P-p14b delta topology review

Reviewer: `sol-delta-P-a`. Marker: `delta-P-a`. Verdict: **FAIL**.

**80 of 81 proposed nodes PASS; one node FAILS. All 122 proposed coverage items PASS.** The sole replacement removes three non-direct dependency edges; it changes no source field, anchor identity, status, or source locator.

Scope: the records marked PROPOSED in P-p14b at HEAD `1a23e2345e80c1cc5f2d0f70fba4b5b51d77174f`. All 81 nodes bear extractor `sonnet-extract-P-p14b+sol-review-P-b`; this reviewer is distinct from both. Although the task names the 81 rewritten nodes, the current packet also leaves all 122 coverage items PROPOSED, so each receives a delta verdict below. No record outside this set is given a verdict.

Read DELTA-BRIEF and REVIEW-BRIEF in full under SPEC; re-read all 333 lines of the raw Part 14b source, the earlier review and its 81 applied replacement blocks, all statement/proof/EDGE spans, the relevant Part 0/6/8 source statements, and the five consumed track-N Part 3 imports at their owning-source locators. Read only designated frozen definition bodies and theorem signatures among Lean files; no implementation, provider or theorem proof body was inspected, and no Lean was run.

## Delta findings

**D1: remove transitive premises of the gap step.** At P14b L300, `stepP:p14:sb-th-9` now explicitly exports both the sharper Jupiter upper bound `¦q_0¦ <= 483/80 = (21/4)(23/20)` and the Saturn lower bound `¦q_1¦ >= (189/20)(17/20)`. L302 subtracts these two bounds and uses N7b. Its direct prerequisites are therefore `stepP:p14:sb-th-9` and `bpP:p14:sb-numerics`. The separate edges to the conditional chart lemma, the eccentricity step, and the input-box definition reproduce the derivation already performed at L300. L302 invokes none of them anew and offers no alternative proof route. Remove those three DEPS entries and their corresponding EDGE lines only. The coverage mapping to this step remains valid.

The preceding review’s F0 repair is resolved in every node: mathematical conclusions and constant scopes occupy their proper fields. Its F1/F2 repairs retain source premises and inherited data without turning earlier conclusions into hypotheses. No new defect is raised merely to improve wording.

The following substantive repairs PASS:

- All 18 frozen file/export/anchor/contract/version/ABI identity tuples match the manifest. Their source records match the frozen bodies/signatures, including argument inventories, arbitrary-real total definition domains, the safety root’s order of quantification, universal time and F clauses, and the exact cited-mass substitution. No smallness restriction on mu was added.
- `sb-S -> sb-th-8` is a genuine direct bridge use at L186. The bridge at L298 quantifies arbitrary m,w,F,i and depends only on the body-index and ellipse definitions. It carries no orbit, box, ellipticity or theorem premise, so the later textual position creates no cycle.
- The section package fixes sigma and m=(1,sigma). Its use by smooth-prop supplies that data; it does not override the latter’s explicit arbitrary-real mu quantifier at L196. Derived positivity/regularity remains supplied through the graph, never assumed as an extra root premise.
- Predicate equivalence at L233 uses differentiability from smooth-prop; the removed pr-2 -> pr-1 edge is correctly absent. The partial-gradient omega node is linked where its lambda component is used. The local C1 field, common initial value, interval, compact slow level set, and both tails supply the hypotheses of the five consumed N inputs at L228/L232/L251/L252/L255/L274.
- The expanded L25-L32 prose mapping covers the position, momentum, Jacobian and field formulas. The p8:e-diff alias, consistency/pattern citations, totality/route notes, and unused mass-identification step are correctly excluded or routed to their genuine consumers.

There are no route nodes or mechanically added route edges in this slice. The “inherits … no new binders” entries were checked against the enclosing proof and the conclusions that introduce witnesses; they do not add a universal hypothesis or lose an independent parameter.

## Proposed node verdicts

Spans are in `blueprint-P/parts/p14b-secular-box.tex` unless otherwise noted. Each row includes the statement/proof ranges and every existing EDGE range reread. Anchor rows additionally include the designated frozen declaration.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p14:sb-x-alg | PASS | L36-L36 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-x-top | PASS | L37-L37 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-x-int | PASS | L38-L38 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-x-calc | PASS | L40-L40 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-conv#secularGamma | PASS | L26-L26, L25-L25 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-conv#secularAMD | PASS | L26-L26, L25-L25 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-conv#secularRoot | PASS | L26-L26, L25-L25 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-conv#secularEccVector | PASS | L27-L27, L26-L26, L25-L25 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-conv#secularAxis | PASS | L27-L27 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-conv#orbitalUnit | PASS | L27-L27 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-conv#quarterTurn | PASS | L29-L29 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-defs#secularIntegrand | PASS | L47-L56, L50-L50, L48-L48 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-defs#exactSecularHamiltonian | PASS | L47-L56, L51-L51, L48-L48 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-defs#ellipsePhase | PASS | L47-L56, L48-L48 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-defs#ellipsePosition | PASS | L47-L56, L29-L29, L25-L25 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-defs#ellipseMomentum | PASS | L47-L56, L29-L29, L25-L25 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-defs#longitudeJacobian | PASS | L47-L56, L28-L28 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-box#SecularInputBox | PASS | L58-L64, L60-L60, L59-L59 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-box#jupiterSaturnWeights | PASS | L58-L64 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-regular#SecularRegular | PASS | L66-L70, L67-L67, L68-L68 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-safety | PASS | L72-L86, L280-L307, L283-L283, L285-L285, L288-L288, L290-L290, L292-L292, L294-L294, L296-L296, L298-L298, L300-L300, L302-L302, L304-L304, L73-L73, L75-L75, L76-L76, L77-L77, L79-L79, L81-L81 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-cited | PASS | L88-L92, L309-L312, L310-L310, L89-L89 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-numerics | PASS | L103-L133, L134-L136, L135-L135 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-chart | PASS | L144-L152, L153-L162, L154-L154, L156-L156, L157-L157, L161-L161, L147-L147, L149-L149, L148-L148 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-ch-a | PASS | L154-L155, L154-L154, L155-L155 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-ch-b | PASS | L156-L156 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-ch-c | PASS | L157-L160, L158-L158, L160-L160, L157-L157 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-ch-d | PASS | L161-L161 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-cov | PASS | L164-L168, L169-L173, L170-L170, L171-L171, L172-L172, L165-L165, L166-L166 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-cv-1 | PASS | L170-L170 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-cv-2 | PASS | L171-L171 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-cv-3 | PASS | L172-L172 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-smooth#data | PASS | L177-L177 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-Sdef | PASS | L179-L183, L177-L177, L180-L180, L181-L181 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-S | PASS | L185-L188, L189-L193, L190-L190, L191-L191, L192-L192, L186-L186 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-S-1 | PASS | L190-L190 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-S-2 | PASS | L191-L191 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-S-3 | PASS | L192-L192 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-smooth-prop | PASS | L195-L199, L200-L205, L201-L201, L202-L202, L203-L203, L204-L204, L196-L196, L197-L197 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-sm-1 | PASS | L201-L201 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-sm-2 | PASS | L202-L202 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-sm-3 | PASS | L203-L203 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-sm-4 | PASS | L204-L204 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-rot | PASS | L207-L210, L211-L216, L212-L212, L213-L213, L214-L214, L215-L215, L208-L208 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-rot-1 | PASS | L212-L212 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-rot-2 | PASS | L213-L213 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-rot-3 | PASS | L214-L214 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-rot-4 | PASS | L215-L215 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-pred | PASS | L226-L230, L231-L234, L232-L232, L233-L233, L228-L228, L227-L227 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-pr-1 | PASS | L232-L232 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-pr-2 | PASS | L233-L233 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-field | PASS | L236-L240, L241-L244, L242-L242, L243-L243, L237-L237, L238-L238 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-fd-1 | PASS | L242-L242 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-fd-2 | PASS | L243-L243 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-flow#omega | PASS | L224-L224 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-slow | PASS | L246-L249, L250-L256, L251-L251, L252-L252, L253-L253, L254-L254, L255-L255, L247-L247 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-sl-1 | PASS | L251-L251 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-sl-2 | PASS | L252-L252 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-sl-3 | PASS | L253-L253 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-sl-4 | PASS | L254-L254 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-sl-5 | PASS | L255-L255 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-global | PASS | L258-L261, L262-L266, L263-L263, L264-L264, L265-L265, L259-L259 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-gl-1 | PASS | L263-L263 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-gl-2 | PASS | L264-L264 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-gl-3 | PASS | L265-L265 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| bpP:p14:sb-unique | PASS | L268-L271, L272-L276, L273-L273, L274-L274, L275-L275, L269-L269 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-un-1 | PASS | L273-L273 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-un-2 | PASS | L274-L274 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-un-3 | PASS | L275-L275 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-th-1 | PASS | L283-L283 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-th-2 | PASS | L285-L286, L285-L285, L286-L286 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-th-3 | PASS | L288-L288 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-th-4 | PASS | L290-L290 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-th-5 | PASS | L292-L292 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-th-6 | PASS | L294-L294 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-th-7 | PASS | L296-L296 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-th-8 | PASS | L298-L298 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-th-9 | PASS | L300-L300 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-th-10 | FAIL | L302-L302 | D1: chart, th-6 and Box edges are transitive after the detailed radial bounds in th-9; retain th-9 and numerics only. |
| stepP:p14:sb-th-11 | PASS | L304-L306, L304-L304 | Source fields, premise discharge and direct uses agree; prior repair resolved. |
| stepP:p14:sb-ci-1 | PASS | L310-L310 | Source fields, premise discharge and direct uses agree; prior repair resolved. |

## Proposed coverage verdicts

Each PROPOSED coverage record receives its own row. A coverage PASS approves its mapping or exclusion; it does not override the node FAIL on D1.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p14:sb-x-alg | PASS | L36-L36 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-x-top | PASS | L37-L37 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-x-int | PASS | L38-L38 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-x-diff | PASS | L39-L39 | Exclusion verified: alias of bpP:p8:e-diff (differentiation under the integral, used for k=2. |
| bpP:p14:sb-x-calc | PASS | L40-L40 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-conv#secularGamma | PASS | L26-L26 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-conv#secularAMD | PASS | L26-L26 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-conv#secularRoot | PASS | L26-L26 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-conv#secularEccVector | PASS | L27-L27 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-conv#secularAxis | PASS | L27-L27 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-conv#orbitalUnit | PASS | L27-L27 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-conv#quarterTurn | PASS | L29-L29 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-defs#secularIntegrand | PASS | L47-L56 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-defs#exactSecularHamiltonian | PASS | L47-L56 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-defs#ellipsePhase | PASS | L47-L56 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-defs#ellipsePosition | PASS | L47-L56 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-defs#ellipseMomentum | PASS | L47-L56 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-defs#longitudeJacobian | PASS | L47-L56 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-box#SecularInputBox | PASS | L58-L64 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-box#jupiterSaturnWeights | PASS | L58-L64 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-regular#SecularRegular | PASS | L66-L70 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-safety | PASS | L72-L86 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-cited | PASS | L88-L92 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-totality | PASS | L94-L99 | Exclusion verified: Lean-totality remark (guards of total functions. |
| bpP:p14:sb-numerics | PASS | L103-L133 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-route | PASS | L138-L140 | Exclusion verified: route remark comparing the proof with the source's chain. |
| bpP:p14:sb-chart | PASS | L144-L152 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-ch-a | PASS | L154-L155 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-ch-b | PASS | L156-L156 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-ch-c | PASS | L157-L160 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-ch-d | PASS | L161-L161 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-cov | PASS | L164-L168 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-cv-1 | PASS | L170-L170 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-cv-2 | PASS | L171-L171 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-cv-3 | PASS | L172-L172 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-Sdef | PASS | L179-L183 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-S | PASS | L185-L188 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-S-1 | PASS | L190-L190 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-S-2 | PASS | L191-L191 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-S-3 | PASS | L192-L192 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-smooth-prop | PASS | L195-L199 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-sm-1 | PASS | L201-L201 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-sm-2 | PASS | L202-L202 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-sm-3 | PASS | L203-L203 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-sm-4 | PASS | L204-L204 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-rot | PASS | L207-L210 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-rot-1 | PASS | L212-L212 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-rot-2 | PASS | L213-L213 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-rot-3 | PASS | L214-L214 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-rot-4 | PASS | L215-L215 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-consistency | PASS | L218-L220 | Exclusion verified: consistency check with Parts 7 and 8. |
| bpP:p14:sb-pred | PASS | L226-L230 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-pr-1 | PASS | L232-L232 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-pr-2 | PASS | L233-L233 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-field | PASS | L236-L240 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-fd-1 | PASS | L242-L242 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-fd-2 | PASS | L243-L243 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-slow | PASS | L246-L249 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-sl-1 | PASS | L251-L251 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-sl-2 | PASS | L252-L252 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-sl-3 | PASS | L253-L253 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-sl-4 | PASS | L254-L254 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-sl-5 | PASS | L255-L255 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-global | PASS | L258-L261 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-gl-1 | PASS | L263-L263 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-gl-2 | PASS | L264-L264 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-gl-3 | PASS | L265-L265 | Mapping names the correct in-scope record(s); no missing source unit. |
| bpP:p14:sb-unique | PASS | L268-L271 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-un-1 | PASS | L273-L273 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-un-2 | PASS | L274-L274 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-un-3 | PASS | L275-L275 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-th-1 | PASS | L283-L283 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-th-2 | PASS | L285-L286 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-th-3 | PASS | L288-L288 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-th-4 | PASS | L290-L290 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-th-5 | PASS | L292-L292 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-th-6 | PASS | L294-L294 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-th-7 | PASS | L296-L296 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-th-8 | PASS | L298-L298 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-th-9 | PASS | L300-L300 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-th-10 | PASS | L302-L302 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-th-11 | PASS | L304-L306 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-ci-1 | PASS | L310-L310 | Mapping names the correct in-scope record(s); no missing source unit. |
| stepP:p14:sb-ci-2 | PASS | L311-L311 | Exclusion verified: identification of the decimal model masses. |
| heading:bpP:p14:sb | PASS | L1-L1 | Exclusion verified: section heading. |
| heading:bpP:p14:sb-conv | PASS | L23-L23 | Exclusion verified: section heading. |
| heading:bpP:p14:sb-frozen | PASS | L45-L45 | Exclusion verified: section heading. |
| heading:bpP:p14:sb-num | PASS | L101-L101 | Exclusion verified: section heading. |
| heading:bpP:p14:sb-alg | PASS | L142-L142 | Exclusion verified: section heading. |
| heading:bpP:p14:sb-smooth | PASS | L175-L175 | Exclusion verified: section heading. |
| heading:bpP:p14:sb-flow | PASS | L222-L222 | Exclusion verified: section heading. |
| heading:bpP:p14:sb-proof | PASS | L278-L278 | Exclusion verified: section heading. |
| heading:bpP:p14:sb-notes | PASS | L314-L314 | Exclusion verified: section heading. |
| p14b:source-L55 | PASS | L55-L55 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L63 | PASS | L63-L63 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L85 | PASS | L85-L85 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L91 | PASS | L91-L91 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L132 | PASS | L132-L132 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L151 | PASS | L151-L151 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L167 | PASS | L167-L167 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L182 | PASS | L182-L182 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L187 | PASS | L187-L187 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L198 | PASS | L198-L198 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L209 | PASS | L209-L209 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L229 | PASS | L229-L229 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L239 | PASS | L239-L239 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L248 | PASS | L248-L248 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L260 | PASS | L260-L260 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:source-L270 | PASS | L270-L270 | Exclusion verified: provenance note (source): the part proves the statement itself. |
| p14b:prose-L4-L7 | PASS | L4-L7 | Exclusion verified: introduction: names the two frozen theorems and the convention G=m_0=1, two planets, m=(1,sigma), mu>0. |
| p14b:prose-L9-L12 | PASS | L9-L12 | Exclusion verified: Idea paragraph: heuristic summary of the proof, every claim proved below. |
| p14b:prose-L14-L21 | PASS | L14-L21 | Exclusion verified: outline bullets of the part. |
| p14b:prose-L25-L32 | PASS | L25-L32 | Expanded mapping resolves the prior FAIL: all prose anchors, q/p/J formulas and field convention are mapped. |
| p14b:prose-L34-L35 | PASS | L34-L35 | Exclusion verified: heading of the list of external facts. |
| p14b:prose-L41-L43 | PASS | L41-L43 | Exclusion verified: Cited results: checked that N gen-sol (bpP:p14:sb-pred, stepP:p14:sb-pr-2), gen-uniqueness (stepP:p14:sb-un-2), gen-maximal (stepP:p14:sb-sl-2), gen-continuation-compact (stepP:p14:sb-sl-5) and ham-smooth (stepP:p14:sb-pr-1, stepP:p14:sb-sl-1) are linked. |
| p14b:prose-L177-L177 | PASS | L177-L177 | Mapping names the correct in-scope record(s); no missing source unit. |
| p14b:prose-L224-L224 | PASS | L224-L224 | Mapping names the correct in-scope record(s); no missing source unit. |
| p14b:prose-L316-L324 | PASS | L316-L324 | Exclusion verified: Module plan (Lean organisation). |
| p14b:prose-L326-L326 | PASS | L326-L326 | Exclusion verified: Frozen statements: no defect found. |
| p14b:prose-L328-L328 | PASS | L328-L328 | Exclusion verified: Deviations paragraph. |
| p14b:prose-L330-L330 | PASS | L330-L330 | Exclusion verified: External facts used list: checked that sb-x-alg, sb-x-top, sb-x-int, sb-x-calc and bpP:p8:e-diff (for sb-x-diff) are linked from the steps that use them. |
| p14b:prose-L332-L333 | PASS | L332-L333 | Exclusion verified: Forward references: none. |

## Minimal replacement

Apply only this complete node block. DEPS and its three removed EDGE records are the only changes. All other fields remain verbatim, including EXTRACTOR and PROPOSED status; this rewritten record needs another reviewer.

```text
NODE: stepP:p14:sb-th-10
KIND: step
TITLE: Gap
STATEMENT_SOURCE: blueprint-P/parts/p14b-secular-box.tex#stepP:p14:sb-th-10@L302-L302
PROOF_SOURCE: blueprint-P/parts/p14b-secular-box.tex#stepP:p14:sb-th-10@L302-L302
CONTRACT_ID: stepP:p14:sb-th-10
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed source data and hypotheses of bpP:p14:sb-safety; previous proof steps and cited results are derived through DEPS, not extra assumptions
SOURCE_QUANTIFIERS: inherits the fixed data and quantifiers of bpP:p14:sb-safety; for every t, F
SOURCE_CONCLUSION: ¦q_1¦-¦q_0¦>=399/200
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p14:sb-th-9, bpP:p14:sb-numerics
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p14:sb-th-9 | blueprint-P/parts/p14b-secular-box.tex#stepP:p14:sb-th-10@L302-L302 | the same radial bounds with the box axis ranges
EDGE: bpP:p14:sb-numerics | blueprint-P/parts/p14b-secular-box.tex#stepP:p14:sb-th-10@L302-L302 | N7b
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p14b+sol-review-P-b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Validation and snapshot

Read-only structural check: `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p14b --structural` reports **81 nodes, 458 edges, 122 coverage items, 0 problems**. Independent checks found one EDGE for every dependency, no dangling dependency ID, no raw rationale pipes, and all 597 slice statement/proof/EDGE locators within source bounds. All 81 applied review blocks match the previous review verbatim apart from writer extractor/status metadata. These checks validate database structure, not mathematical proof completion.

| Input | SHA-256 |
|---|---|
| docs/graph/P/DELTA-BRIEF.md | `af81282f3d2ab67fe709018af8200c900330629894b7df16ff5bf252c8e6f04b` |
| docs/graph/P/REVIEW-BRIEF.md | `85a08dd77f773f2fb7ca26559b1f01816cf8aa3d721068be0b4eacdd3b68c207` |
| docs/graph/P/SPEC.md | `a64e804f4c71c33ebb3b1423357c6eebba56d274b39a73573ed9095b9a10417b` |
| docs/graph/P/reviews/P-p14b-review.md | `42eddd0b04d17b96c96fe1bf4e374344d66bb09cbd14d6840071b660c1d96678` |
| docs/graph/P/packets/P-p14b.nodes.md | `7e2cf3fe45d114a79ff730d6daa7ec7929c7beb94b91f21f5fe09c30cc9cb52c` |
| docs/graph/P/packets/P-p14b.coverage.md | `73ddf6ac6dbe5a958d00ba2e0aa82e83b49e2167c215e92cb399b8e6bcdccffa` |
| blueprint-P/parts/p14b-secular-box.tex | `f14536c948f27bc9ccb330b5df0b482846696aa7ea10283d42ee2569be2d0ae7` |
| manifest/frozen-anchors.json | `96109bf3ff71b0a0ce6e52c842cb291f8a169e699f29f63280fde14f79221234` |

No additional suspected blueprint defect is asserted by this delta review. No packet, SPEC, manifest, source, or Lean file was changed. Only this report was written.

The writer apply tool dry run reports **1 replaced, 0 added, 0 coverage replacements, 0 unresolved FAILs**. (Its PASS count includes duplicate IDs appearing in the separate coverage table; the distinct counts are 80 PASS nodes and 122 PASS coverage items.) Replacement validation confirms that only DEPS and the three associated EDGE lines differ; all other lines are byte-identical. The eight recorded input hashes were unchanged at final validation.

READY delta-P-a
