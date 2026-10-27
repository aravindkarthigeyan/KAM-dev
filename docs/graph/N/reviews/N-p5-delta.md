# N-p5 delta topology review

Reviewer: sol-delta-N-b. Marker: delta-N-b. Verdict: **FAIL**.

Independently reviewed all 39 nodes still marked TOPOLOGY_STATUS: PROPOSED and all 67 items still marked COVERAGE_STATUS: PROPOSED. The slice reviewer was sol-review-N-b, distinct from this reviewer. Read DELTA-BRIEF, REVIEW-BRIEF and SPEC including its rulings, both slice reviews and current packets, the raw Parts 4–5, the relevant Part 3 statements, and the consumed K statements. Previously REVIEWED records are context, not re-certified here.

The checks follow the convergence rule: accurate records PASS without wording changes. Replacement blocks below keep every non-failing field verbatim. PROPOSED coverage items each receive a separate row, even when their ID is also a node ID. All package/definition edges and consumer EDGE locators were checked against the raw proof; bounded holomorphic/periodic premises and parameter-integral continuity were checked at applications. There are no route nodes, nonempty ROUTES fields, or mechanically added route EDGE lines in either assigned packet. Filled SOURCE_QUANTIFIERS were checked with their SOURCE_HYPOTHESES and local proof binders; a compact inherited-data description is accepted when it introduces no new binders or premises.

The first review’s package and hypothesis corrections mostly resolve its FAILs. The stricter 1/e bound is for the action block in angle-first coordinates. The Taylor order must remain independent of the ambient complex dimension. The explicit endpoint-sign and arbitrary-domain real-restriction SOURCE_GAP records pass topology review; they do not establish mathematical closure. The Lie-series choice is an administrative route decision, not an alternative-proof node.

## Proposed nodes

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| stepN:p5:vf-deriv | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-deriv@L36-L37 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:vf-field | FAIL | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-field@L39-L39 | The 1/e improvement belongs to the action component X_I=−∂θφ. The angle component X_θ=∂Iφ has no 1/e factor; the earlier review swapped the blocks. |
| bpN:p5:flow | FAIL | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L44-L54; blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L55-L74 | Part 3 totality is an administrative convention explaining the extension, not a proved prerequisite. L56 defines the zero extension itself; remove this pointer edge. |
| stepN:p5:fl-max | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-max@L58-L60 | The C¹/scalar-restriction inputs are now linked. The printed endpoint-sign defect is explicitly exposed as SOURCE_GAP; no corrected source conclusion is silently substituted. |
| stepN:p5:fl-picard | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-picard@L62-L64 | The mean-value use is now located at L62; continuity of DF, compactness, integral parameters and local iterate definitions match the source. |
| stepN:p5:fl-limit | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-limit@L66-L67 | The enclosing hypotheses are restored; iterate convergence, identification, interior derivative convergence and parameter differentiation remain proved dependencies. |
| stepN:p5:fl-inverse | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-inverse@L69-L70 | The time-reversal use is correctly at L69; holomorphy/displacement and the radius-1/2 Cauchy application have supplied premises. |
| stepN:p5:fl-symmetry | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-symmetry@L72-L73 | The general-domain restriction bridge is explicitly linked; source hypotheses are restored, and the original coverage FAIL is resolved. |
| stepN:p5:sy-var | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sy-var@L83-L83 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:sy-conserve | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sy-conserve@L87-L87 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:ca-chain | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-chain@L100-L100 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:ca-a | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-a@L102-L102 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:ca-b | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-b@L104-L104 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| bpN:p5:lie-derivative | FAIL | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L110-L114; blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L115-L119 | The setting edge currently points to L113–114 (provenance and end-of-lemma); the iterated bracket is used at L112. The earlier unnecessary symplectic-theorem edge is correctly gone. |
| stepN:p5:ld-one | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ld-one@L116-L116 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:ld-ind | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ld-ind@L118-L118 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| bpN:p5:taylor | FAIL | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L121-L132; blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L133-L137 | The added setting edge points to the align-environment opener L123; ad-brackets and the flow occur in L124–125. |
| stepN:p5:ta-taylor | FAIL | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-taylor@L134-L134 | The hypothesis field identifies N=2n and then uses the same N for the arbitrary Taylor order, excluding orders such as N=1. Separate the ambient dimension from the Taylor order. The K integral input supplies FTC/bounds, not a Taylor theorem. |
| stepN:p5:ta-poschel | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-poschel@L136-L136 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:ad-setup | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-setup@L147-L147 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:ad-step | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-step@L149-L151 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:ad-product | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-product@L153-L154 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:co-field | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-field@L170-L171 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:co-series | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-series@L173-L174 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:co-remainder | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-remainder@L176-L178 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:co-t | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-t@L180-L180 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| bpN:p5:transform | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L183-L190; blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L191-L201 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:tr-h | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-h@L192-L194 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:tr-f | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-f@L196-L196 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:tr-sum | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-sum@L198-L198 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:tr-int | FAIL | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200 | Missing direct norm package: the inherited transform statement assumes h,w,f₀∈𝒪(r,s), with finite norms for w,f₀. Add its package edge without changing those hypotheses. |
| bpN:p5:composition-integral | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L203-L206; blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L207-L211 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:ci-integrand | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-integrand@L208-L208 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:ci-coeff | FAIL | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210 | Missing direct setting package: the inherited composition setting fixes ν_{ρ,σ} and X_φ, used in g_t=v_t∘X^t_φ and the integral G. |
| bpN:p5:canonical-map | FAIL | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L215-L225; blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L226-L232 | The setting edge is at L217, the enumerate opener. Its ν_{ρ,σ}, X_φ definitions are at L216; the earlier canonical-corollary edge at L221 is correctly fixed. |
| stepN:p5:cm-field | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-field@L227-L227 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:cm-ab | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-ab@L229-L229 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:cm-cde | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-cde@L231-L231 | The earlier package/hypothesis/locator correction is present; source fields, direct uses and conditional inputs agree with the enclosing source. |
| stepN:p5:fl-symmetry#real-restriction | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-symmetry@L73-L73 | PASS as exposed SOURCE_GAP: the full-strip K real-restriction premise is absent for arbitrary Ω, and the missing extension is recorded without adding a premise. |

## Proposed coverage items

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpN:p5:route | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:route@L8-L15 | Exclusion confirmed: administrative remark: records the decision (Lie series, not the sup-norm fallback) for Lemma B.5; a route decision, not an alternative and not consumed; its only outside mention (Part 6 L107) is in a \source; checked by grep for p5:route |
| stepN:p5:vf-deriv | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-deriv@L36-L37 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:vf-field | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-field@L39-L39 | Correctly maps this inventoried source unit to its existing node(s). |
| bpN:p5:flow | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L44-L54 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:fl-max | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-max@L58-L60 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:fl-picard | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-picard@L62-L64 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:fl-limit | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-limit@L66-L67 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:fl-inverse | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-inverse@L69-L70 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:fl-symmetry | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:fl-symmetry@L72-L73 | The replacement maps the proof region to both the symmetry step and its explicit general-domain restriction bridge; the original coverage FAIL is resolved. |
| stepN:p5:sy-var | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sy-var@L83-L83 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:sy-conserve | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sy-conserve@L87-L87 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:ca-chain | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-chain@L100-L100 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:ca-a | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-a@L102-L102 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:ca-b | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ca-b@L104-L104 | Correctly maps this inventoried source unit to its existing node(s). |
| bpN:p5:lie-derivative | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L110-L114 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:ld-one | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ld-one@L116-L116 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:ld-ind | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ld-ind@L118-L118 | Correctly maps this inventoried source unit to its existing node(s). |
| bpN:p5:taylor | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L121-L132 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:ta-taylor | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-taylor@L134-L134 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:ta-poschel | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-poschel@L136-L136 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:ad-setup | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-setup@L147-L147 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:ad-step | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-step@L149-L151 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:ad-product | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ad-product@L153-L154 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:co-field | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-field@L170-L171 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:co-series | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-series@L173-L174 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:co-remainder | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-remainder@L176-L178 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:co-t | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:co-t@L180-L180 | Correctly maps this inventoried source unit to its existing node(s). |
| bpN:p5:transform | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L183-L190 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:tr-h | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-h@L192-L194 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:tr-f | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-f@L196-L196 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:tr-sum | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-sum@L198-L198 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:tr-int | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200 | Correctly maps this inventoried source unit to its existing node(s). |
| bpN:p5:composition-integral | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L203-L206 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:ci-integrand | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-integrand@L208-L208 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:ci-coeff | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210 | Correctly maps this inventoried source unit to its existing node(s). |
| bpN:p5:canonical-map | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L215-L225 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:cm-field | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-field@L227-L227 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:cm-ab | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-ab@L229-L229 | Correctly maps this inventoried source unit to its existing node(s). |
| stepN:p5:cm-cde | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-cde@L231-L231 | Correctly maps this inventoried source unit to its existing node(s). |
| bpN:p5:sharp-composition | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:sharp-composition@L236-L239 | Exclusion confirmed: outside every root closure; owned by the importing graph (track P): the ♯-norm variant of Part 5; checked by grep of blueprint-N/parts/p6..p11 (and p0-p4) for bpN:p5:sharp-composition, bpN:p4:sharp, \sharp: no proof cites it |
| stepN:p5:sh-where | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sh-where@L241-L241 | Exclusion confirmed: outside every root closure; owned by the importing graph (track P): the ♯-norm variant of Part 5; checked by grep of blueprint-N/parts/p6..p11 (and p0-p4) for bpN:p5:sharp-composition, bpN:p4:sharp, \sharp: no proof cites it |
| stepN:p5:sh-series | PASS | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:sh-series@L242-L242 | Exclusion confirmed: outside every root closure; owned by the importing graph (track P): the ♯-norm variant of Part 5; checked by grep of blueprint-N/parts/p6..p11 (and p0-p4) for bpN:p5:sharp-composition, bpN:p4:sharp, \sharp: no proof cites it |
| bpN:p5:use | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:use@L245-L249 | Exclusion confirmed: administrative remark ('use'/consumers summary and what is not provided); no proof cites it (grep for p5:use over blueprint-N/parts: only its own label) |
| heading:bpN:p5 | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5@L1-L1 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p5:s-setting | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:s-setting@L17-L17 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p5:s-flow | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:s-flow@L42-L42 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p5:s-taylor | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:s-taylor@L108-L108 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p5:s-b5 | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:s-b5@L139-L139 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p5:s-map | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:s-map@L213-L213 | Exclusion confirmed: section heading; its results are inventoried separately |
| heading:bpN:p5:s-sharp | PASS | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:s-sharp@L234-L234 | Exclusion confirmed: section heading; its results are inventoried separately |
| p5:sourcegap-L25 | PASS | blueprint-N/parts/p5-canonical-maps.tex#sourcegap@L25-L25 | Correctly maps this inventoried source unit to its existing node(s). |
| p5:sourcegap-L167 | PASS | blueprint-N/parts/p5-canonical-maps.tex#sourcegap@L167-L167 | Correctly maps this inventoried source unit to its existing node(s). |
| p5:source-L25 | PASS | blueprint-N/parts/p5-canonical-maps.tex#source@L25-L25 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p5:source-L33 | PASS | blueprint-N/parts/p5-canonical-maps.tex#source@L33-L33 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p5:source-L53 | PASS | blueprint-N/parts/p5-canonical-maps.tex#source@L53-L53 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p5:source-L80 | PASS | blueprint-N/parts/p5-canonical-maps.tex#source@L80-L80 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p5:source-L97 | PASS | blueprint-N/parts/p5-canonical-maps.tex#source@L97-L97 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p5:source-L113 | PASS | blueprint-N/parts/p5-canonical-maps.tex#source@L113-L113 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p5:source-L131 | PASS | blueprint-N/parts/p5-canonical-maps.tex#source@L131-L131 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p5:source-L144 | PASS | blueprint-N/parts/p5-canonical-maps.tex#source@L144-L144 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p5:source-L167 | PASS | blueprint-N/parts/p5-canonical-maps.tex#source@L167-L167 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p5:source-L189 | PASS | blueprint-N/parts/p5-canonical-maps.tex#source@L189-L189 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p5:source-L205 | PASS | blueprint-N/parts/p5-canonical-maps.tex#source@L205-L205 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p5:source-L224 | PASS | blueprint-N/parts/p5-canonical-maps.tex#source@L224-L224 | Exclusion confirmed: provenance note for a result proved in the blueprint (confirm; an unproved cited input must instead become an external node) |
| p5:prose-L4-L6 | PASS | blueprint-N/parts/p5-canonical-maps.tex#prose@L4-L6 | Exclusion confirmed: outline/pointer: introduction to Part 5 (Appendix A and Lemma B.5 in frozen conventions; D ⊂ ℂⁿ arbitrary, m = n); conventions are those of Part 4 and are linked through the bpN:p4:norm/domains edges |
| p5:prose-L27-L27 | PASS | blueprint-N/parts/p5-canonical-maps.tex#prose@L27-L27 | Exclusion confirmed: holomorphy/periodicity of brackets and ad^j: no proof consumes the sentence as such; the facts are re-established where used (stepN:p5:ld-ind via K:holomorphic-regularity, stepN:p5:ad-setup via bpN:p4:bracket); no #facts node needed (SPEC: only if consumed) |
| p5:prose-L106-L106 | PASS | blueprint-N/parts/p5-canonical-maps.tex#prose@L106-L106 | Exclusion confirmed: reality of X_φ and of the time-one map for real φ: no proof cites this paragraph (Parts 6, 7, 11 cite bpN:p5:flow(e), bpN:p5:canonical(c) and the canonical-map statement directly; checked by grep of bpN:p5: citations in Parts 6-11); the facts it uses are in stepN:p5:fl-symmetry |

All proposed coverage items PASS. A node’s remaining field or edge defect does not invalidate an accurate inventory disposition mapping to that node. The ♯ results and their steps have no consumer in the four SPEC roots; searches over Parts 0–3 and 6–11 confirm that remaining dictionary mentions are notation/provenance or are recomputed, and no root proof consumes a ♯ estimate. Part 12 and the D28 additions remain outside this SPEC scope.

## Replacement fragments

```text
NODE: stepN:p5:vf-field
KIND: step
TITLE: The field
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-field@L39-L39
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-field@L39-L39
CONTRACT_ID: stepN:p5:vf-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D ⊂ ℂⁿ; φ ∈ 𝒪(r,s) with finite norm; 0<ρ<r and 0<σ<s
SOURCE_QUANTIFIERS: D,n; r,s>0; φ; 0<ρ<r, 0<σ<s; then the coordinate indices
SOURCE_CONCLUSION: ν_{ρ,σ}(X_φ) = max(max_i¦∂_{I_i}φ¦/σ, max_i¦∂_{θ_i}φ¦/ρ) ≤ ¦φ¦_{r,s}/(ρσ); the action block alone is bounded by ¦φ¦_{r,s}/(eρσ)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:setting, stepN:p5:vf-deriv, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:setting | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-field@L39-L39 | definition of ν_{ρ,σ} and X_φ
EDGE: stepN:p5:vf-deriv | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-field@L39-L39 | the two derivative bounds inserted
EDGE: bpN:p4:norm | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:vf-field@L39-L39 | Uses 𝒪 or its finite weighted norm, including the inherited source data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p5+sol-review-N-b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p5:flow
KIND: lemma
TITLE: Flow of a small holomorphic field
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L44-L54
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L55-L74
CONTRACT_ID: bpN:p5:flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ν a complex norm on ℂ^N; Ω ⊂ ℂ^N open; F: Ω → ℂ^N holomorphic with ν(F) ≤ ε on Ω, 0 ≤ ε ≤ ½; Ω^c = {z : B̄_ν(z,c) ⊂ Ω} for c > 0; (d) τ ∈ ℂ^N with Ω+τ = Ω and F(w+τ) = F(w); (e) N = 2n and F(x) ∈ ℝ^N for x ∈ Ω∩ℝ^N
SOURCE_QUANTIFIERS: N; ν; Ω; F; ε; c > 0; z; t; τ
SOURCE_CONCLUSION: (a) for z ∈ Ω^{1/2} there is γ_z: ℝ → ℂ^N with IsSolIn F Ω [−1,1] γ_z, γ_z(0) = z, any solution in Ω through z on J ∋ 0 equals γ_z on J∩[−1,1]; X^t(z) = γ_z(t) and ν(X^t(z)−z) ≤ ¦t¦ε; (b) (t,z) ↦ X^t(z) continuous on [−1,1]×Ω^{1/2}, X^t holomorphic Ω^{1/2} → Ω, D_zX^t continuous, Y = D_zX^t satisfies Y(t) = 1 + ∫_0^t DF(X^τz)Y(τ)dτ; (c) for z ∈ Ω^1: X^1(z) ∈ Ω^{1/2}, X^{−1}(X^1z) = z, ¦DX^t(z)−1¦_ν ≤ 2ε (¦t¦ ≤ 1), likewise X^1(X^{−1}z) = z; (d) Ω^{1/2}+τ = Ω^{1/2} and X^t(z+τ) = X^t(z)+τ; (e) X^t(x) ∈ ℝ^N for x ∈ Ω^{1/2}∩ℝ^N
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:fl-max, stepN:p5:fl-picard, stepN:p5:fl-limit, stepN:p5:fl-inverse, stepN:p5:fl-symmetry, bpN:p3:gen-sol, K:bp:p1:holomorphic-regularity, bpN:p1:ext-restrict
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:fl-max | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L58-L60 | proof step (a)
EDGE: stepN:p5:fl-picard | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L62-L64 | proof step (b) Picard iterates
EDGE: stepN:p5:fl-limit | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L66-L67 | proof step (b) convergence
EDGE: stepN:p5:fl-inverse | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L69-L70 | proof step (c)
EDGE: stepN:p5:fl-symmetry | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L72-L73 | proof steps (d),(e)
EDGE: bpN:p3:gen-sol | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L47-L47 | the predicate IsSolIn F Ω [−1,1] γ_z in the statement of (a)
EDGE: K:bp:p1:holomorphic-regularity | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L56-L56 | F is C¹ on Ω (restriction of scalars)
EDGE: bpN:p1:ext-restrict | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L56-L56 | Restrict the holomorphic vector field to the real normed space for the Part 3 ODE results
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p5+sol-review-N-b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Part 11b re-uses this lemma verbatim for N = 2n+2k (not an edge here)
```

```text
NODE: bpN:p5:lie-derivative
KIND: lemma
TITLE: Derivative along the flow
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L110-L114
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L115-L119
CONTRACT_ID: bpN:p5:lie-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Ω ⊂ ℂⁿ×ℂⁿ, φ, F = X_φ, ε ≤ ½ as in Lemma symplectic; Ω_1 ⊂ Ω open; u holomorphic on Ω_1; z ∈ Ω^{1/2} with X^t(z) ∈ Ω_1 for ¦t¦ ≤ 1
SOURCE_QUANTIFIERS: Ω; φ; ε; Ω_1; u; z; j ≥ 0
SOURCE_CONCLUSION: g(t) = u(X^t(z)) is C^∞ on [−1,1] and g^{(j)}(t) = (ad^j_φu)(X^t(z)) for all j ≥ 0 (each ad^j_φu holomorphic on Ω_1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:ld-one, stepN:p5:ld-ind, bpN:p5:flow, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:ld-one | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L116-L116 | proof step
EDGE: stepN:p5:ld-ind | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L118-L118 | proof step
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L111-L111 | the flow X^t, Ω^{1/2}
EDGE: bpN:p5:setting | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L112-L112 | ad^j_φ
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p5+sol-review-N-b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The phrase “as in Lemma symplectic” imports the displayed field/domain hypotheses only. No symplecticity conclusion is consumed by the scalar chain-rule/induction proof, so it is not a dependency on that theorem.
```

```text
NODE: bpN:p5:taylor
KIND: lemma
TITLE: Taylor with integral remainder along the flow
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L121-L132
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L133-L137
CONTRACT_ID: bpN:p5:taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of Lemma lie-derivative; N ≥ 1; for the displayed formula (eq:poschel): h, f_0 holomorphic on Ω_1 and the trajectory of z stays in Ω_1
SOURCE_QUANTIFIERS: Ω; φ; Ω_1; u; z; N; h, f_0
SOURCE_CONCLUSION: u(X^1z) = Σ_{j<N}(1/j!)(ad^j_φu)(z) + R_N(z) with R_N(z) = ∫_0^1(1−t)^{N−1}/(N−1)!·(ad^N_φu)(X^tz)dt and ¦R_N(z)¦ ≤ (1/N!)max_{0≤t≤1}¦(ad^N_φu)(X^tz)¦; in particular (h+f_0)(X^1z) = h(z) + {h,φ}(z) + f_0(z) + ∫_0^1{(1−t){h,φ}+f_0, φ}(X^tz)dt
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:ta-taylor, stepN:p5:ta-poschel, bpN:p5:lie-derivative, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:ta-taylor | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L134-L134 | proof step
EDGE: stepN:p5:ta-poschel | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L136-L136 | proof step
EDGE: bpN:p5:lie-derivative | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L122-L122 | setting of Lemma lie-derivative
EDGE: bpN:p5:setting | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L124-L125 | Uses the iterated brackets or Hamiltonian flow of the fixed convention
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p5+sol-review-N-b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p5:ta-taylor
KIND: step
TITLE: Taylor
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-taylor@L134-L134
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-taylor@L134-L134
CONTRACT_ID: stepN:p5:ta-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ν a complex norm on ℂ^{2n}; Ω open; F holomorphic on Ω; ν(F)≤ε on Ω with 0≤ε≤1/2; Ω ⊂ ℂⁿ×ℂⁿ; F=X_φ with φ holomorphic on Ω; Ω₁⊂Ω open; u holomorphic on Ω₁; z∈Ω^{1/2}; X^t(z)∈Ω₁ for ¦t¦≤1; N≥1
SOURCE_QUANTIFIERS: n; ν; Ω; φ; ε∈[0,1/2]; Ω₁⊂Ω; u (or h,f₀ in ta-poschel); z with the trajectory in Ω₁; then the derivative/Taylor order
SOURCE_CONCLUSION: u(X^1z) = Σ_{j<N}(ad^j_φu)(z)/j! + R_N(z) with the stated integral form and bound 1/N! (∫_0^1(1−t)^{N−1}/(N−1)! dt = 1/N!)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:lie-derivative, K:bp:p1:ext-integral, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:lie-derivative | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-taylor@L134-L134 | g^{(j)}(0) = (ad^j_φu)(z), g^{(N)}(t) = (ad^N_φu)(X^tz)
EDGE: K:bp:p1:ext-integral | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-taylor@L134-L134 | FTC and integral bounds used in the source-indicated induction with integration by parts; the imported statement does not itself assert Taylor's formula
EDGE: bpN:p5:setting | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ta-taylor@L134-L134 | Uses X_φ, J, the scaled norm, or the iterated Poisson brackets
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p5+sol-review-N-b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p5:tr-int
KIND: step
TITLE: Integral form
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200
CONTRACT_ID: stepN:p5:tr-int
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D ⊂ ℂⁿ; 0<ρ<r≤r′−ρ; 0<σ<s≤s′−σ; φ∈𝒪(r′,s′) with finite norm; η:=2¦φ¦_{r′,s′}/(ρσ)≤1/2; Ω:=𝒟_{r′−ρ,s′−σ}; ν:=ν_{ρ,σ}; h∈𝒪(r,s), possibly infinite norm; w:={h,φ}∈𝒪(r,s) of finite norm; f₀∈𝒪(r,s) of finite norm; z∈𝒟_{r−ρ,s−σ}
SOURCE_QUANTIFIERS: D,n; r,s,r′,s′ when present; ρ,σ; φ; then u or h,w,f₀ or (v_t), with exactly SOURCE_HYPOTHESES; then local data in source order: z
SOURCE_CONCLUSION: ℛ = ∫_0^1{(1−t)w+f_0,φ}∘X^t_φ dt (integral form)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p5:taylor, stepN:p5:co-field, bpN:p4:domains, bpN:p5:setting, bpN:p4:norm
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p5:taylor | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200 | eq poschel (displayed Taylor formula)
EDGE: stepN:p5:co-field | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200 | the trajectory stays in 𝒟_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200 | Uses the analytic domains or the action neighbourhood in the source context
EDGE: bpN:p5:setting | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200 | Uses X_φ, J, the scaled norm, or the iterated Poisson brackets
EDGE: bpN:p4:norm | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:tr-int@L200-L200 | the transform context fixes h,w,f₀ in 𝒪(r,s) and the finite weighted norms of w,f₀
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p5+sol-review-N-b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: stepN:p5:ci-coeff
KIND: step
TITLE: Holomorphy and coefficients
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210
CONTRACT_ID: stepN:p5:ci-coeff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D ⊂ ℂⁿ; 0<ρ<r≤r′−ρ; 0<σ<s≤s′−σ; φ∈𝒪(r′,s′) with finite norm; η:=2¦φ¦_{r′,s′}/(ρσ)≤1/2; Ω:=𝒟_{r′−ρ,s′−σ}; ν:=ν_{ρ,σ}; v_t∈𝒪(r,s) for 0≤t≤1; V:=sup_t¦v_t¦_{r,s}<∞; v_t and Dv_t jointly continuous on [0,1]×𝒟_{r,s}; g_t:=v_t∘X^t; k∈ℤⁿ; I∈V_{r−ρ}D
SOURCE_QUANTIFIERS: D,n; r,s,r′,s′ when present; ρ,σ; φ; then u or h,w,f₀ or (v_t), with exactly SOURCE_HYPOTHESES; then local data in source order: t; k; I
SOURCE_CONCLUSION: G holomorphic and periodic; Ĝ_k(I) = ∫_0^1(ĝ_t)_k(I)dt, so ¦G¦_{I,s−σ} ≤ ∫_0^1¦g_t¦_{I,s−σ}dt ≤ (1−η)^{−1}V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpN:p4:ext-param, bpN:p4:ext-series, stepN:p5:ci-integrand, bpN:p4:norm, bpN:p4:domains, K:bp:p1:ext-integral, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpN:p4:ext-param | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210 | holomorphy of the parameter integral G
EDGE: bpN:p4:ext-series | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210 | Tonelli for the nonnegative coefficient norm sum
EDGE: stepN:p5:ci-integrand | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210 | the functions g_t and their bound
EDGE: bpN:p4:norm | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210 | û_k(I), ¦·¦_{I,s−σ}
EDGE: bpN:p4:domains | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210 | Uses the analytic domains or the action neighbourhood in the source context
EDGE: K:bp:p1:ext-integral | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210 | Fubini for the continuous complex-valued integrand on [0,1]×[0,1]^n and the integral norm inequality
EDGE: bpN:p5:setting | blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:ci-coeff@L210-L210 | X^t_φ in the parameter integrand and the inherited Hamiltonian/scaled-norm setting
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p5+sol-review-N-b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bpN:p5:canonical-map
KIND: proposition
TITLE: Iterative-Lemma package for $\Phi$
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L215-L225
PROOF_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L226-L232
CONTRACT_ID: bpN:p5:canonical-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D ⊂ ℂⁿ; φ ∈ 𝒪(r,s) with finite norm; 0 < ρ < r/2, 0 < σ < s/2; ε := ¦φ¦_{r,s}/(ρσ) ≤ ½; Ω = 𝒟_{r−ρ,s−σ}, ν = ν_{ρ,σ}; Φ = X^1_φ, Ψ = X^{−1}_φ (Lemma flow)
SOURCE_QUANTIFIERS: D, n; r, s; ρ, σ; φ; t ∈ [−1,1]; k ∈ ℤⁿ
SOURCE_CONCLUSION: (a) ν(X_φ) ≤ ε on Ω; Φ, Ψ defined and holomorphic on 𝒟_{r−3ρ/2,s−3σ/2} ⊂ Ω^{1/2} into Ω; ν(X^t−id) ≤ ¦t¦ε; ¦Φ_θ−θ¦_∞ ≤ ¦φ¦/ρ, ¦Φ_I−I¦_∞ ≤ ¦φ¦/(eσ) (same for Ψ); (b) Φ(θ+k,I) = Φ(θ,I)+(k,0), Φ real on real points if φ is; (c) on 𝒟_{r−2ρ,s−2σ}: ¦DΦ−1¦_ν ≤ 2ε; (d) (DΦ)ᵀJDΦ = J and Corollary canonical holds for Φ; (e) Ψ∘Φ = id = Φ∘Ψ on 𝒟_{r−2ρ,s−2σ} and Φ(𝒟_{r−2ρ,s−2σ}) ⊂ 𝒟_{r−3ρ/2,s−3σ/2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepN:p5:cm-field, stepN:p5:cm-ab, stepN:p5:cm-cde, bpN:p5:flow, bpN:p5:canonical, bpN:p4:norm, bpN:p4:domains, bpN:p5:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepN:p5:cm-field | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L227-L227 | proof step
EDGE: stepN:p5:cm-ab | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L229-L229 | proof step (a),(b)
EDGE: stepN:p5:cm-cde | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L231-L231 | proof step (c)-(e)
EDGE: bpN:p5:flow | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L216-L216 | Φ, Ψ are time-±1 maps of Lemma flow
EDGE: bpN:p5:canonical | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L221-L221 | Item (d) invokes Corollary canonical
EDGE: bpN:p4:norm | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L216-L216 | 𝒪(r,s), ¦·¦_{r,s}
EDGE: bpN:p4:domains | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L216-L217 | Ω = 𝒟_{r−ρ,s−σ}
EDGE: bpN:p5:setting | blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L216-L216 | ν = ν_{ρ,σ}, X_φ
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-N-p5+sol-review-N-b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Source defects and review limits

The earlier source defects remain exposed: Part 5 L59 prints “T₋>−1” although covering the closed interval requires T₋<−1; Part 5 L73 invokes a K real-restriction statement whose domain is an entire strip rather than arbitrary Ω. The corresponding SOURCE_GAP notes pass faithfully. At Part 5 L134, the source calls Taylor an “external fact” but indicates induction with integration by parts; K ext-integral supplies FTC and integral bounds, not a Taylor theorem. The existing ta-taylor step represents that derivation, and its corrected EDGE rationale does not enlarge the imported contract. The block swap and N collision are packet/reviewer defects, not new blueprint errata.

Assigned Part 4, Part 5, Part 3 and consumed K-source hashes match the pins. Full hash inventory: CORPUS has 13 matches and the known Part 0 mismatch; IMPORTS has three matches and the known P Part 0 mismatch. These unrelated pin changes are not certified by this scoped delta review. No assigned node is a frozen anchor; only the relevant frozen strip/vector-field definitions and manifest identity data were consulted. No theorem proof bodies, providers, manifest state fields, Lean commands, builds, state-changing git, or packet edits were used. Only this delta report is written.

## Validation receipts

- Independent inventory check: 39 node rows: 31 PASS, 8 FAIL; 67 coverage rows: all PASS. Every currently PROPOSED record appears once in its own node or coverage table.
- Full replacement-block check: unique IDs, exactly matching DEPS/EDGE target order, valid source bounds; non-failing fields remain verbatim. No coverage replacement is needed.
- `python3 scripts/depgraph_apply_review.py docs/graph/N/packets N-p5 docs/graph/N/reviews/N-p5-delta.md sol-delta-N-b --dry-run`: 8 replaced, 0 added, 0 coverage items, 0 unresolved FAILs. Its printed PASS total also counts coverage IDs matching nodes; the independent node counts are given above.
- In-memory simulation of the combined packets with these replacements: 0 unresolved targets; 0 cycles (including ROUTES). This is a structural check, not acceptance of unassigned records.
- Reports pass independent table/fence/whitespace checks and `git diff --check -- docs/graph/N/reviews/N-p4-delta.md docs/graph/N/reviews/N-p5-delta.md` (exit 0). The files are new, so their content was checked independently of git’s tracked-file diff.
