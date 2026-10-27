# N-p1 delta topology review

Reviewer: `sol-delta-N-a`. Marker: `delta-N-a`. Verdict: **FAIL**.

Reviewed all 37 nodes still marked TOPOLOGY_STATUS: PROPOSED and all 56 coverage items still marked COVERAGE_STATUS: PROPOSED. The prior reviewer was sol-review-N-a; this reviewer did not write that slice review. This report applies the delta convergence rule: accurate inherited wording and faithfully exposed SOURCE_GAP records pass. No Lean proof/status assessment is made.

Read DELTA-BRIEF.md in full, REVIEW-BRIEF.md, SPEC and its rulings, and the prior slice review. Checked raw Parts 0–2, the consumed K statement spans, the Part 4 domain/norm definitions, the Part 9 setting/formulas, and the root proof attachments in Parts 10 and 11c. All 32 in-scope frozen identity tuples (file, export, anchor ID and ABI hash) match the current manifest; only frozen definition bodies and theorem signatures were used, never theorem proof bodies or manifest state fields. The frozen theorem quantifier order, max norms, periods, and stopped [0,t] confinement agree with the source transcriptions.

## Snapshot and remap

N-p1 source and packet locators are unchanged by the p0-only remap. The current CORPUS and IMPORTS SHA-256 inventories both match all listed files. The n≥1 convention on K strips is at blueprint/parts/p1-analysis.tex L37–39 and must be included when checking the imported hypotheses, even though some copied import source fields omit it.

Packet SHA-256 snapshot:

- `docs/graph/N/packets/N-p1.nodes.md`: `4cc7e2eb12b1cedac7779fe4d55c271e3a6ba0c1e03a9f69457242283457ab44`
- `docs/graph/N/packets/N-p1.coverage.md`: `3bad63d63a54b1ebaab82b9a322feccdcaa0ab3b9089606d5135fcf16c4d2524`

## Proposed nodes

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepN:p1:hr-holo | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-holo@L87-L87; blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-holo@L87-L87 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:hr-real | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-real@L89-L89; blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-real@L89-L89 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:hr-deriv | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-deriv@L91-L91; blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-deriv@L91-L91 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:hr-field | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-field@L93-L93; blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-field@L93-L93 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:hr-per | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-per@L95-L95; blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-per@L95-L95 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:hr-zero | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-zero@L97-L97; blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-zero@L97-L97 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| bpN:p1:partials | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:partials@L100-L105; blueprint-N/parts/p1-interfaces.tex#bpN:p1:partials@L106-L110 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:pa-first | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-first@L107-L107; blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-first@L107-L107 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:pa-sym | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-sym@L109-L109; blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-sym@L109-L109 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| bpN:p1:hessian-convert | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:hessian-convert@L112-L118; blueprint-N/parts/p1-interfaces.tex#bpN:p1:hessian-convert@L119-L123 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:hc-entries | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hc-entries@L120-L120; blueprint-N/parts/p1-interfaces.tex#stepN:p1:hc-entries@L120-L120 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:hc-eucl | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hc-eucl@L122-L122; blueprint-N/parts/p1-interfaces.tex#stepN:p1:hc-eucl@L122-L122 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:cc-unit | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-unit@L135-L135; blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-unit@L135-L135 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:cc-expand | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-expand@L140-L142; blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-expand@L140-L142 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:cc-num | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-num@L144-L144; blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-num@L144-L144 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:qc-reg | FAIL | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-reg@L163-L163; blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-reg@L163-L163 | The rewritten hessian-convert contract includes §s-holo’s perturbation premise; this h-only application does not supply it. The previous review added that premise but did not attach it at this consumer. |
| stepN:p1:qc-conic | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-conic@L169-L169; blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-conic@L169-L169 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:qc-scale | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-scale@L171-L171; blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-scale@L171-L171 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| bpN:p1:period-convert | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:period-convert@L176-L189; blueprint-N/parts/p1-interfaces.tex#bpN:p1:period-convert@L190-L196 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:pc-field | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-field@L193-L193; blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-field@L193-L193 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:pc-scalar | FAIL | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195; blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195 | Non-direct K summation edge: L186 assumes the convergence used in (e), and L195 only substitutes the angle variable. The imported reconstruction theorem is not applied. |
| bpN:p1:norm-convert | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L198-L204; blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L205-L209 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:nc-decay | FAIL | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206; blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206 | The K strip theorem has an unmet n≥1 premise in the n=0 branch. The nc-sum note addresses exp-sums only and does not discharge these earlier/later strip-theorem applications. |
| stepN:p1:nc-sum | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-sum@L208-L208; blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-sum@L208-L208 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| bpN:p1:constants | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L213-L235; blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L236-L252 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:co-pos | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-pos@L237-L237; blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-pos@L237-L237 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:co-size | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-size@L239-L239; blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-size@L239-L239 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:co-tubes | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-tubes@L241-L241; blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-tubes@L241-L241 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:co-qc | FAIL | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243; blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | The rewritten hessian-convert contract includes §s-holo’s perturbation premise; this h-only application does not supply it. The previous review added that premise but did not attach it at this consumer. |
| stepN:p1:co-pert | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-pert@L245-L245; blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-pert@L245-L245 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:co-exc | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-exc@L247-L247; blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-exc@L247-L247 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| stepN:p1:co-time | FAIL | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249; blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249 | Missing direct use of co-size: L249 consumes the proved radius inequalities R₀≤r₀ and R₀<R/8 in its closed-ball inclusion. The revised partials contract also inherits a perturbation datum not supplied in this application; expose this separate contract mismatch alongside the existing h-bound gap. |
| stepN:p1:co-conc | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-conc@L251-L251; blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-conc@L251-L251 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| bpN:p1:norm-convert#decay-route | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L208; blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L208 | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |
| bpN:p1:norm-convert#summation-route | FAIL | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206; blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206 | The K strip theorem has an unmet n≥1 premise in the n=0 branch. The nc-sum note addresses exp-sums only and does not discharge these earlier/later strip-theorem applications. |
| bpN:p1:norm-convert#converse | FAIL | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L202-L202; blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L202-L202 | The K strip theorem has an unmet n≥1 premise in the n=0 branch. The nc-sum note addresses exp-sums only and does not discharge these earlier/later strip-theorem applications. |
| bpN:p1:constants#data | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L214-L221; - | Replacement resolves the earlier finding; source fields, direct uses, premises and locators agree. |

## Proposed coverage records

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepN:p1:hr-holo | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-holo@L87-L87 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:hr-real | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-real@L89-L89 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:hr-deriv | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-deriv@L91-L91 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:hr-field | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-field@L93-L93 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:hr-per | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-per@L95-L95 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:hr-zero | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hr-zero@L97-L97 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| bpN:p1:partials | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:partials@L100-L105 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:pa-first | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-first@L107-L107 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:pa-sym | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pa-sym@L109-L109 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| bpN:p1:hessian-convert | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:hessian-convert@L112-L118 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:hc-entries | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hc-entries@L120-L120 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:hc-eucl | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:hc-eucl@L122-L122 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:cc-unit | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-unit@L135-L135 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:cc-expand | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-expand@L140-L142 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:cc-num | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:cc-num@L144-L144 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:qc-reg | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-reg@L163-L163 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:qc-conic | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-conic@L169-L169 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:qc-scale | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-scale@L171-L171 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| bpN:p1:period-convert | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:period-convert@L176-L189 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:pc-field | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-field@L193-L193 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:pc-scalar | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| bpN:p1:norm-convert | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L198-L204 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:nc-decay | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:nc-sum | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-sum@L208-L208 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| bpN:p1:constants | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants@L213-L235 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:co-pos | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-pos@L237-L237 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:co-size | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-size@L239-L239 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:co-tubes | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-tubes@L241-L241 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:co-qc | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:co-pert | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-pert@L245-L245 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:co-exc | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-exc@L247-L247 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:co-time | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| stepN:p1:co-conc | PASS | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-conc@L251-L251 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| bpN:p1:constants-use | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:constants-use@L254-L257 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| heading:bpN:p1 | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1@L1-L1 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| heading:bpN:p1:s-ext | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:s-ext@L16-L16 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| heading:bpN:p1:s-domains | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:s-domains@L33-L33 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| heading:bpN:p1:s-holo | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:s-holo@L66-L66 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| heading:bpN:p1:s-qc | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:s-qc@L125-L125 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| heading:bpN:p1:s-period | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:s-period@L174-L174 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| heading:bpN:p1:s-const | PASS | blueprint-N/parts/p1-interfaces.tex#bpN:p1:s-const@L211-L211 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:sourcegap-L117 | PASS | blueprint-N/parts/p1-interfaces.tex#sourcegap@L117-L117 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:sourcegap-L234 | PASS | blueprint-N/parts/p1-interfaces.tex#sourcegap@L234-L234 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:source-L38 | PASS | blueprint-N/parts/p1-interfaces.tex#source@L38-L38 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:source-L56 | PASS | blueprint-N/parts/p1-interfaces.tex#source@L56-L56 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:source-L84 | PASS | blueprint-N/parts/p1-interfaces.tex#source@L84-L84 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:source-L104 | PASS | blueprint-N/parts/p1-interfaces.tex#source@L104-L104 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:source-L116 | PASS | blueprint-N/parts/p1-interfaces.tex#source@L116-L116 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:source-L132 | PASS | blueprint-N/parts/p1-interfaces.tex#source@L132-L132 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:source-L160 | PASS | blueprint-N/parts/p1-interfaces.tex#source@L160-L160 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:source-L188 | PASS | blueprint-N/parts/p1-interfaces.tex#source@L188-L188 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:source-L203 | PASS | blueprint-N/parts/p1-interfaces.tex#source@L203-L203 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:source-L233 | PASS | blueprint-N/parts/p1-interfaces.tex#source@L233-L233 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:prose-L4-L14 | PASS | blueprint-N/parts/p1-interfaces.tex#prose@L4-L14 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:prose-L29-L31 | PASS | blueprint-N/parts/p1-interfaces.tex#prose@L29-L31 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |
| p1:prose-L68-L70 | PASS | blueprint-N/parts/p1-interfaces.tex#prose@L68-L70 | Disposition and source span agree with the raw inventory; prior failure resolved where applicable. |

Every PROPOSED coverage item has its own row above. All other coverage items PASS within the existing slice review; this delta report does not reopen already REVIEWED records.

## Replacement blocks

Each complete record preserves all non-failing fields verbatim. Only locator fields/EDGE lines, genuinely missing edges, or NOTE fields exposing unmet application premises change. These proposed records need an independent delta review.

```text
NODE: stepN:p1:pc-scalar
KIND: step
TITLE: Scalars
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195
CONTRACT_ID: stepN:p1:pc-scalar
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ∈ ℕ; h,f arbitrary; h̃=2πh, f̃(φ,I)=2πf(φ/(2π),I); for (b), each indicated bound/predicate is assumed only for its corresponding implication; for (c)–(e), R,s>0 and IsAnalyticPerturbation R s ε f; for (e), Fourier convergence as stated
SOURCE_QUANTIFIERS: as period-convert
SOURCE_CONCLUSION: (b) by linearity of h ↦ ω_h, D^kh_ℝ and of the operator norm; (c)-(e) by φ = 2πθ, ¦Im φ¦ = 2π¦Im θ¦, e^{ik·φ} = e^{2πik·θ}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p0:freq#frequencyMap, bpN:p0:realpart#realPart, bpN:p0:qc#IsStrictlyQuasiConvex, bpN:p0:bm#HasDerivativeBounds, bpN:p0:hess#HasComplexHessianBound, bpN:p0:pert#IsAnalyticPerturbation, bpN:p0:strip#complexStrip, bpN:p0:cdomain#complexDomain
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p0:freq#frequencyMap | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195 | ω_h linear in h
EDGE: bpN:p0:realpart#realPart | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195 | D^kh_ℝ linear in h
EDGE: bpN:p0:qc#IsStrictlyQuasiConvex | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195 | QC for h̃
EDGE: bpN:p0:bm#HasDerivativeBounds | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195 | B(M) for h̃
EDGE: bpN:p0:hess#HasComplexHessianBound | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195 | Hessian bound for h̃
EDGE: bpN:p0:pert#IsAnalyticPerturbation | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195 | premises (c),(d) on f
EDGE: bpN:p0:strip#complexStrip | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195 | strip of width 2πρ
EDGE: bpN:p0:cdomain#complexDomain | blueprint-N/parts/p1-interfaces.tex#stepN:p1:pc-scalar@L195-L195 | domain substitution
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p1+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Clause (e) assumes Fourier convergence explicitly at L186. The proof at L195 substitutes φ=2πθ into that given expansion; it does not apply the K summation theorem. The K citation at L186 is a pointer to a sufficient convergence result, not a prerequisite of this conditional substitution.
```

```text
NODE: stepN:p1:nc-decay
KIND: step
TITLE: Decay
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206
CONTRACT_ID: stepN:p1:nc-decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic bounded 1-periodic on T_ρ; ρ' ∈ (ρ−δ,ρ)
SOURCE_QUANTIFIERS: as norm-convert
SOURCE_CONCLUSION: ¦û_k¦ ≤ e^{−2π¦k¦₁ρ'}¦u¦_ρ, hence (ρ' ↑ ρ) ¦û_k¦e^{2π¦k¦₁(ρ−δ)} ≤ e^{−2πδ¦k¦₁}¦u¦_ρ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:decay, bpN:p0:strip#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:decay | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206 | Fourier coefficient decay
EDGE: bpN:p0:strip#complexStrip | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206 | strip T_ρ
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p1+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: K Part 1 L37–39 imposes n≥1 wherever a strip occurs. This node has no n≥1 source restriction and applies a K strip theorem at N Part 1 L206. The n=0 case is not attached by the cited theorem or by a separate branch in this record. Preserve the source’s unrestricted n and expose this application obligation; do not add n≥1 to the source statement. First forward route only: use coefficient decay, then take the scalar limit ρ′↑ρ. The text offers K summation as an alternative for the aggregate weighted bound; see the parent’s route nodes.
```

```text
NODE: bpN:p1:norm-convert#summation-route
KIND: route
TITLE: Forward bound directly by the imported summation converse
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206
CONTRACT_ID: bpN:p1:norm-convert#summation-route
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u : T_ρ → ℂ holomorphic, bounded and 1-periodic; ¦u¦_ρ = sup_{T_ρ}¦u¦; 0 < δ < ρ; for I-dependent u(θ,I), fixed I
SOURCE_QUANTIFIERS: n; ρ,δ,u with 0<δ<ρ
SOURCE_CONCLUSION: Σ_k ¦û_k¦e^{2π¦k¦₁(ρ−δ)} ≤ coth(πδ)^n ¦u¦_ρ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:summation
ROUTES: -
ROUTE_FOR: bpN:p1:norm-convert
EDGE: K:bp:p1:summation | blueprint-N/parts/p1-interfaces.tex#stepN:p1:nc-decay@L206-L206 | the explicitly offered direct alternative; all bounded holomorphic periodic premises and 0<δ<ρ are supplied
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: K Part 1 L37–39 imposes n≥1 wherever a strip occurs. This node has no n≥1 source restriction and applies a K strip theorem at N Part 1 L206. The n=0 case is not attached by the cited theorem or by a separate branch in this record. Preserve the source’s unrestricted n and expose this application obligation; do not add n≥1 to the source statement.
```

```text
NODE: bpN:p1:norm-convert#converse
KIND: step
TITLE: Converse comparison from Fourier reconstruction
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L202-L202
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L202-L202
CONTRACT_ID: bpN:p1:norm-convert#converse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u : T_ρ → ℂ holomorphic, bounded and 1-periodic; ¦u¦_ρ = sup_{T_ρ}¦u¦; 0 < δ < ρ; for I-dependent u(θ,I), fixed I
SOURCE_QUANTIFIERS: n; ρ,δ,u with 0<δ<ρ
SOURCE_CONCLUSION: ¦u¦_ρ ≤ Σ_k ¦û_k¦ e^{2π¦k¦₁ρ}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:summation
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:summation | blueprint-N/parts/p1-interfaces.tex#bpN:p1:norm-convert@L202-L203 | Fourier reconstruction and the forward sup bound when the full weighted sum is finite; otherwise the extended upper bound is immediate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: K Part 1 L37–39 imposes n≥1 wherever a strip occurs. This node has no n≥1 source restriction and applies a K strip theorem at N Part 1 L202. The n=0 case is not attached by the cited theorem or by a separate branch in this record. Preserve the source’s unrestricted n and expose this application obligation; do not add n≥1 to the source statement. The source states this converse at L202; imported summation supplies Fourier reconstruction for the bounded holomorphic periodic u. This is common to both forward routes.
```

```text
NODE: stepN:p1:qc-reg
KIND: step
TITLE: Regularity and Hessian
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-reg@L163-L163
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-reg@L163-L163
CONTRACT_ID: stepN:p1:qc-reg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ≥ 1; R, s, m, M_ℂ, ω_min > 0; q = m/n, B_c = nM_ℂ + q, μ = q/2, ℓ = ω_min q/(8(B_c+q)); IsAnalyticIntegrable R s h; HasComplexHessianBound R s h M_ℂ; IsStrictlyQuasiConvex 𝓑_s(R) h m; ω_min ≤ ¦ω_h(I)¦_∞ for all I ∈ B(0,R); I ∈ B(0,R), ω = ω_h(I), Q = D²h_ℝ(I)
SOURCE_QUANTIFIERS: as qc-convert
SOURCE_CONCLUSION: I ∈ 𝓑_s(R) and ¦Q[x,y]¦ ≤ nM_ℂ¦x¦₂¦y¦₂ ≤ B_c¦x¦₂¦y¦₂ (first half of (a))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:hessian-convert, bpN:p1:realdomain, bpN:p0:hess#HasComplexHessianBound
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:hessian-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-reg@L163-L163 | real Hessian and its Euclidean bound
EDGE: bpN:p1:realdomain | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-reg@L163-L163 | B(0,R) ⊂ 𝓑_s(R), Lemma realdomain (a)
EDGE: bpN:p0:hess#HasComplexHessianBound | blueprint-N/parts/p1-interfaces.tex#stepN:p1:qc-reg@L163-L163 | hypothesis with constant M_ℂ
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p1+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: The current hessian-convert contract includes the standing §s-holo data IsAnalyticPerturbation R s ε f (L68–70 and its SOURCE_HYPOTHESES). This application supplies hypotheses on h only and no such f,ε datum. The quoted Hessian estimate is h-only in its proof, but that premise-free projection has not been recorded as a distinct source result. Keep the present source premises unchanged and expose the conditional-application mismatch.
```

```text
NODE: stepN:p1:co-qc
KIND: step
TITLE: Quasi-convexity and Hessian
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243
CONTRACT_ID: stepN:p1:co-qc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ≥ 3 (only n ≥ 2 used by Pöschel); R, s, M, m, M_ℂ, ω_min > 0; local dictionary definitions of constants#data; h satisfies H1–H5 of N-HEAD-C
SOURCE_QUANTIFIERS: as constants
SOURCE_CONCLUSION: (d): (ℓ_P,μ_P)-quasi-convexity of h̃ on U_{r₀}P; Euclidean Hessian norm of Q̃ ≤ 2πnM_ℂ ≤ M_P on V_{r₀}P; Pöschel A = 11B_c/μ = A; r₀ ≤ ℓ/(2B_c)
CONSTANT_SCOPE: All dictionary constants depend only on (n,R,s,M,m,M_ℂ,ω_min); h,f,ε,I₀ are later conditional data.
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:qc-convert, bpN:p1:period-convert, bpN:p1:hessian-convert, stepN:p1:co-tubes, stepN:p1:co-size, bpN:p1:constants#data, bpN:p4:domains
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:qc-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | alternative (b) on U_{r₀}P
EDGE: bpN:p1:period-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | clause (b): scaling by 2π
EDGE: bpN:p1:hessian-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | Euclidean operator norm of Q̃
EDGE: stepN:p1:co-tubes | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | U_{r₀}P ⊂ B(0,R), V_{r₀}P ⊂ B(0,R)_s
EDGE: stepN:p1:co-size | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | r₀ ≤ ℓ/(2B_c) and A
EDGE: bpN:p1:constants#data | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | local dictionary constants used directly
EDGE: bpN:p4:domains | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-qc@L243-L243 | V_{r₀}P or its real slice is used directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p1+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: The current hessian-convert contract includes the standing §s-holo data IsAnalyticPerturbation R s ε f (L68–70 and its SOURCE_HYPOTHESES). This application supplies hypotheses on h only and no such f,ε datum. The quoted Hessian estimate is h-only in its proof, but that premise-free projection has not been recorded as a distinct source result. Keep the present source premises unchanged and expose the conditional-application mismatch.
```

```text
NODE: stepN:p1:co-time
KIND: step
TITLE: Time
STATEMENT_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249
PROOF_SOURCE: blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249
CONTRACT_ID: stepN:p1:co-time
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ≥ 3 (only n ≥ 2 used by Pöschel); R, s, M, m, M_ℂ, ω_min > 0; local dictionary definitions of constants#data; I₀∈B(0,R/2); the source does not explicitly state the needed hypotheses on h here
SOURCE_QUANTIFIERS: as constants
SOURCE_CONCLUSION: (g): Ω₀ ≤ 2π√nM ≤ 2πnM, Ω₀ ≥ 2πω_min > 0, T_0 ≥ 2T
CONSTANT_SCOPE: All dictionary constants depend only on (n,R,s,M,m,M_ℂ,ω_min); h,f,ε,I₀ are later conditional data.
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p1:partials, bpN:p1:qc-convert, bpN:p1:realdomain, bpN:p1:period-convert, bpN:p1:constants#data, bpN:p9:setting, stepN:p1:co-size
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p1:partials | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249 | ¦ω(I)¦₂ ≤ √n M on 𝓑_s(R)
EDGE: bpN:p1:qc-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249 | (c): ¦ω(I_0)¦₂ ≥ ω_min
EDGE: bpN:p1:realdomain | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249 | B(0,5R/8) ⊂ 𝓑_s(R)
EDGE: bpN:p1:period-convert | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249 | ω̃ = 2πω
EDGE: bpN:p1:constants#data | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249 | local dictionary constants used directly
EDGE: bpN:p9:setting | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249 | Ω₀ is the maximum on the closed Euclidean R₀-ball
EDGE: stepN:p1:co-size | blueprint-N/parts/p1-interfaces.tex#stepN:p1:co-time@L249-L249 | uses R₀≤r₀ and R₀≤R/176 to place the closed frequency ball in B(0,5R/8)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p1+sol-review-N-a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: In addition to the already recorded missing h-bound scope, the current partials contract inherits IsAnalyticPerturbation R s ε f from §s-holo. This application does not bind or supply that datum. No source hypothesis is added here. SOURCE_GAP: the lemma explicitly assumes H1–H5 only in clause (d). This clause needs the corresponding hypotheses on h (H3 for the frequency lower bound; H5 also for the time upper bound). The cited conditional conversions do not supply those premises. No such premise is added to the source contract.
```

## Source questions and limits

- The earlier constants (f)/(g) missing-h scope finding is accurately exposed; those SOURCE_GAP records pass except for the additional concrete mismatch/edge corrections listed above.
- Part 1 L68–70 fixes an analytic perturbation throughout §s-holo. The revised partials/Hessian contracts retain this source datum, but h-only consumers at L163, L243 and L249 supply no such datum. The NOTE corrections expose that mismatch without inventing an extra premise or silently extracting a stronger theorem.
- K Part 1 L37–39 restricts strip statements to n≥1. Track N’s norm conversion allows arbitrary n; the source proof does not attach a zero-dimensional branch at the three cited import applications. No counterexample to the inequality is claimed.
- Part 1 L195 says “linearity … of the operator norm”. Norms are positively homogeneous, not linear. The displayed scaling by the fixed positive scalar 2π is the intended valid operation; this is a suspected wording defect, not a reason to change an otherwise faithful topology record.
- The two alternative norm-conversion routes are correctly separate, with the converse common to both. The mechanically added parent route EDGE range L205–209 contains the actual alternative at L206. No generic “inherits … no new binders” quantifier placeholder occurs among these proposed records.

## Checks

- Only this slice’s delta report was written. No packets, SPEC, frozen source, manifest or blueprint changes; no Lean run, repository lint/build, or state-changing git command.
- Read-only application check: `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_apply_review.py docs/graph/N/packets N-p1 docs/graph/N/reviews/N-p1-delta.md sol-delta-N-a --dry-run` returned `N-p1: 7 replaced, 0 added, 0 coverage items, 0 unresolved FAILs`. Helper PASS counts include duplicate IDs appearing in both node and coverage tables; the separate proposed-record tables above are authoritative.
- Static validation: PASS for exact proposed-record tables, minimally changed fields, DEPS/EDGE sets, source path/line bounds and frozen-field preservation. `git diff --check`: exit 0, no output. No global topology-ready or Lean closure claim is made.
