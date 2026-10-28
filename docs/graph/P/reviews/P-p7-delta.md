# P-p7 delta topology review

Reviewer: sol-delta-P-i. Marker: delta-P-i. Verdict: **FAIL**.

Scope: the 39 nodes and 76 coverage items still PROPOSED in P-p7. The 13 REVIEWED nodes and 12 REVIEWED coverage items are not re-reviewed. Read DELTA-BRIEF.md, REVIEW-BRIEF.md, SPEC.md and P-p7-review.md; independently read the current Part 7 source L1–295 and the cited prerequisite statements/use sites in Parts 0, 1, 6, 14b, track I Part 7 and track K Part 1. No Lean implementation, provider, proof status or manifest state field was used.

The prior corrections to proof-premise scope, the complex Jacobian bound, the general-strength LRL formula/inverse, product equations and tube quantifier order are retained. Generic references to the enclosing **source premises** are accepted as context, not as dependencies on the parent theorem. The two explicit SOURCE_GAP notes remain gaps; no premise or missing mathematics is supplied by this review.

## Node verdicts

| Record | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| stepP:p7:rg-scale | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-scale@L64-L64 | Positive mass/strength package added; the scaling identities and source use agree. |
| stepP:p7:rg-lagrange | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-lagrange@L65-L66 | Missing direct bpP:p7:kepler-data dependency: C, Lambda and the region K_{m,kappa} of the conclusion use the Kepler data. |
| stepP:p7:ke-chart | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-chart@L85-L85 | The restored quantifier describes the full quotient chart; the I chart carrier is the noncircular region. |
| stepP:p7:ke-form | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-form@L86-L86 | The source premises and exterior-calculus dependency now match the pull-back computation. |
| stepP:p7:ke-b | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-b@L87-L87 | Physical scaling and the positive mass/strength convention are attached. |
| stepP:p7:ke-c | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88 | Missing direct bpP:p7:kepler-data dependency: the scaled elements a and Lambda and their mass/strength dictionary. |
| stepP:p7:ke-d | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | Missing direct bpP:p7:kepler-data dependency: Q_{m,kappa}, its domain D^m and E_{m,kappa}. Missing direct stepP:p7:ke-chart dependency: analytic regularity of Q_{m,kappa} from clause (a), needed with ke-form to apply chart-field. |
| bpP:p7:regular-kepler | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L99-L108; blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L109-L115 | The quantitative complex Jacobian bound and the real relation binders are restored. |
| stepP:p7:rk-mono | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-mono@L110-L110 | Uses source premises, not derived monotonicity or surjectivity as assumptions. |
| stepP:p7:rk-an | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-an@L111-L111 | The real IFT is applied with J>0 and the unique real solution supplied by rk-mono. |
| stepP:p7:rk-hol | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-hol@L113-L113 | N_0 and contraction data are retained; holomorphic limits and real uniqueness are directly linked. |
| stepP:p7:rk-rel | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-rel@L114-L114 | The e in (0,1) carrier supplies the I real Kepler solution and the uniqueness comparison. |
| bpP:p7:o-facts | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:o-facts@L131-L133; blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:o-facts@L134-L136 | The physical length/rotation package is linked; the displayed identities match the source. |
| bpP:p7:poincare | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L138-L148; blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L149-L164 | The general-strength LRL expression and the explicit quotient inverse are restored. |
| stepP:p7:po-an | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150 | Missing direct bpP:p1:ext-comp dependency: real-analytic composition F(lambda,v(xi,eta,Lambda)), and sums/products of analytic ingredients. |
| stepP:p7:po-del | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L155 | The record omits w in O (Lambda>0, Gamma<Lambda). Polar form and rho>0 alone do not put (Lambda,C) in D^m or give 0<e<1 for regular-kepler(c). Restore the source domain premise at L139–142/L151. |
| stepP:p7:po-symp | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-symp@L156-L156 | The noncircular case, local argument construction and exterior-calculus inputs are correctly separated. |
| stepP:p7:po-dense | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | Missing direct bpP:p1:conv#data dependency: the named matrix M_0 is defined in Part 1 conventions, not in the Part 7 conventions. |
| stepP:p7:po-el | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L159 | The unconditional ke-b edge is assigned only the circular scaling role. ke-b has the noncircular D^m carrier; the scalar circular alternatives are now owned by the circular child/routes, and the scale itself is defined by kepler-data. Keep the separate po-circ edge for the LRL endpoint. Missing direct bpP:p7:poincare-def dependency: O, Psi, k and v used in the element identities. |
| stepP:p7:po-bij | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L162 | Missing direct bpP:p7:poincare-def dependency: the chart domain O, Psi, Gamma and the inverse radicand. |
| stepP:p7:po-circ | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-circ@L163-L163 | The circular formulas use Gamma=0 and Lambda>0, without applying the noncircular chart theorem. |
| stepP:p7:ho-hol | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | Missing direct bpP:p7:poincare-def dependency: the explicit q,p formulas and real domain O. Missing direct bpP:p1:conv#data dependency: M_0 in the real-point matrix identity. |
| bpP:p7:product-chart | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L194-L203; blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L204-L209 | Clause (d) now gives the equations, their collision-free preimage domain and both model conventions. |
| stepP:p7:pc-prod | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-prod@L205-L205 | Block structure follows from the one-planet chart with the product/body dictionary attached. |
| stepP:p7:pc-dec | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-dec@L206-L206 | Uses source product data and decoupling; no decomposition identity is assumed as an extra premise. |
| stepP:p7:pc-share | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | Missing direct bpP:p1:chart dependency: H^Psi=c^{-1}(H composed with Psi), specialized to c=1. |
| stepP:p7:pc-eq | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208 | Missing direct bpP:p1:chart dependency: the pulled-back Hamiltonian H^Psi used in the model equations. Missing direct bpP:p7:product-def dependency: Psi^(n), O_n and the h(Lambda) in the model Hamiltonians. The quantifier field now includes both model Hamiltonians, but the conclusion only records the moving-model equations. Retain the fixed-model substitution explicitly stated in L201. |
| bpP:p7:same-chart | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:same-chart@L211-L213 | DELETE: the prior F4 deletion was not applied. The only foreign source citation of this remark is Part 14a L339 in Deviations. A newly present P-p14a2 chart-facts record also points here, but L162/L166 recall product-chart for Ch3, not this remark; that non-direct edge must be removed by its owner before deletion. Its EXCLUDED coverage disposition is correct. |
| bpP:p7:tube | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:tube@L215-L217; blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:tube@L218-L221 | delta precedes eta_delta and all smaller positive eta; fixed masses/axes remain outer data. |
| stepP:p7:tu-circ | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-circ@L219-L219 | The blockwise circular formula uses fixed product data and the actual circularPoint definition. |
| stepP:p7:tu-cont | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220 | The compact-neighbourhood theorem applies to the circular torus inside the open element neighbourhood. |
| stepP:p7:d25-ab | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | The identities use the named frozen definitions and product carrier, with the source guards retained. |
| stepP:p7:d25-c | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261 | The explicit ellipse formulas, arbitrary-F uniqueness and ellipsePhase assembly have direct suppliers. |
| stepP:p7:d25-d | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | The converse ranges over arbitrary prograde physical z, not only the already parametrized z=Psi^(2)(w) in the current quantifier field; see L255 and L262. |
| stepP:p7:d25-e | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263 | Missing direct bpP:p7:conv#data dependency: e_g and the perihelion/mean-longitude rotation convention. |
| bpP:p7:conv#data | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L27-L33 | L27–33 use the phase order and the form Omega, not X_H or its definition. Keep the symplecticForm dependency; remove the unused vector-field edge. |
| stepP:p7:po-el#circular | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | Missing direct bpP:p7:kepler-data dependency: E, a and the physical action in the common scalar endpoint contract. Missing direct bpP:p7:poincare-def dependency: the common hypothesis w in O and q,p=Psi(w). Missing direct bpP:p7:conv#data dependency: the common positive mass/strength and planar length/cross-product conventions. |
| stepP:p7:po-el#circular-scaled | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | The scalar endpoint uses the inclusive I circular theorem and positive scaling; it does not import noncircular chart membership. |
| stepP:p7:po-el#circular-direct | FAIL | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | Missing direct bpP:p7:poincare-def dependency: the source domain O and the equality q,p=Psi(w) in the route hypotheses. |

## Coverage verdicts

These verdicts concern each inventory disposition. A NODE mapping can be correct while its mapped node still needs the field repairs above. The same-chart exclusion passes even though the obsolete node must still be deleted. The average/lattice exclusions follow the current writer ruling, not the stale forward-consumer list.

| Item | Verdict | Source span re-read | Reason |
|---|---|---|---|
| bpP:p7:e-hol | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:e-hol@L39-L39 | Alias exclusion agrees with the cited I/K/P contracts. |
| bpP:p7:e-banach | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:e-banach@L40-L40 | Alias exclusion agrees with the cited I/K/P contracts. |
| bpP:p7:e-forms | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:e-forms@L41-L41 | Alias exclusion agrees with the cited I/K/P contracts. |
| bpP:p7:e-cov | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:e-cov@L43-L43 | No current-root mathematical consumer; the writer ruling excludes/defers this unit. |
| stepP:p7:rg-scale | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-scale@L64-L64 | Correct mapping to stepP:p7:rg-scale. |
| stepP:p7:rg-lagrange | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-lagrange@L65-L66 | Correct mapping to stepP:p7:rg-lagrange. |
| stepP:p7:ke-chart | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-chart@L85-L85 | Correct mapping to stepP:p7:ke-chart. |
| stepP:p7:ke-form | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-form@L86-L86 | Correct mapping to stepP:p7:ke-form. |
| stepP:p7:ke-b | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-b@L87-L87 | Correct mapping to stepP:p7:ke-b. |
| stepP:p7:ke-c | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88 | Correct mapping to stepP:p7:ke-c. |
| stepP:p7:ke-d | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | Correct mapping to stepP:p7:ke-d. |
| bpP:p7:regular-kepler | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:regular-kepler@L99-L108 | Correct mapping to bpP:p7:regular-kepler. |
| stepP:p7:rk-mono | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-mono@L110-L110 | Correct mapping to stepP:p7:rk-mono. |
| stepP:p7:rk-an | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-an@L111-L111 | Correct mapping to stepP:p7:rk-an. |
| stepP:p7:rk-hol | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-hol@L113-L113 | Correct mapping to stepP:p7:rk-hol. |
| stepP:p7:rk-rel | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rk-rel@L114-L114 | Correct mapping to stepP:p7:rk-rel. |
| bpP:p7:o-facts | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:o-facts@L131-L133 | Correct mapping to bpP:p7:o-facts. |
| bpP:p7:poincare | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:poincare@L138-L148 | Correct mapping to bpP:p7:poincare. |
| stepP:p7:po-an | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150 | Correct mapping to stepP:p7:po-an. |
| stepP:p7:po-del | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L155 | Correct mapping to stepP:p7:po-del. |
| stepP:p7:po-symp | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-symp@L156-L156 | Correct mapping to stepP:p7:po-symp. |
| stepP:p7:po-dense | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | Correct mapping to stepP:p7:po-dense. |
| stepP:p7:po-el | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L159 | Correct mapping to stepP:p7:po-el. |
| stepP:p7:po-bij | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L162 | Correct mapping to stepP:p7:po-bij. |
| stepP:p7:po-circ | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-circ@L163-L163 | Correct mapping to stepP:p7:po-circ. |
| stepP:p7:ho-hol | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | Correct mapping to stepP:p7:ho-hol. |
| bpP:p7:ho-rem | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:ho-rem@L175-L177 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| bpP:p7:normalisation | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:normalisation@L179-L184 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| bpP:p7:product-chart | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:product-chart@L194-L203 | Correct mapping to bpP:p7:product-chart. |
| stepP:p7:pc-prod | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-prod@L205-L205 | Correct mapping to stepP:p7:pc-prod. |
| stepP:p7:pc-dec | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-dec@L206-L206 | Correct mapping to stepP:p7:pc-dec. |
| stepP:p7:pc-share | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | Correct mapping to stepP:p7:pc-share. |
| stepP:p7:pc-eq | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208 | Correct mapping to stepP:p7:pc-eq. |
| bpP:p7:same-chart | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:same-chart@L211-L213 | Correct source-level exclusion: Part 14a L339 is Deviations prose; the retained P-p14a2 chart-facts edge is non-direct (handoff below). |
| bpP:p7:tube | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:tube@L215-L217 | Correct mapping to bpP:p7:tube. |
| stepP:p7:tu-circ | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-circ@L219-L219 | Correct mapping to stepP:p7:tu-circ. |
| stepP:p7:tu-cont | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:tu-cont@L220-L220 | Correct mapping to stepP:p7:tu-cont. |
| bpP:p7:lattice | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:lattice@L223-L233 | No current-root mathematical consumer; the writer ruling excludes/defers this unit. |
| stepP:p7:la-polar | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-polar@L235-L235 | No current-root mathematical consumer; the writer ruling excludes/defers this unit. |
| stepP:p7:la-inv | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-inv@L236-L236 | No current-root mathematical consumer; the writer ruling excludes/defers this unit. |
| stepP:p7:la-per | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-per@L237-L237 | No current-root mathematical consumer; the writer ruling excludes/defers this unit. |
| stepP:p7:la-ham | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:la-ham@L238-L238 | No current-root mathematical consumer; the writer ruling excludes/defers this unit. |
| stepP:p7:d25-ab | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-ab@L260-L260 | Correct mapping to stepP:p7:d25-ab. |
| stepP:p7:d25-c | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-c@L261-L261 | Correct mapping to stepP:p7:d25-c. |
| stepP:p7:d25-d | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | Correct mapping to stepP:p7:d25-d. |
| stepP:p7:d25-e | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263 | Correct mapping to stepP:p7:d25-e. |
| bpP:p7:average | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:average@L266-L271 | No current-root mathematical consumer; the writer ruling excludes/defers this unit. |
| stepP:p7:av-cov | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:av-cov@L273-L273 | Both labels occur at L273 and are separately inventoried; both belong to the excluded average unit. |
| heading:bpP:p7 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7@L1-L1 | Heading; substantive units are separately inventoried. |
| heading:bpP:p7:conv | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv@L25-L25 | Heading; substantive units are separately inventoried. |
| heading:bpP:p7:sec-kepler | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:sec-kepler@L47-L47 | Heading; substantive units are separately inventoried. |
| heading:bpP:p7:sec-regular | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:sec-regular@L92-L92 | Heading; substantive units are separately inventoried. |
| heading:bpP:p7:sec-poincare | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:sec-poincare@L117-L117 | Heading; substantive units are separately inventoried. |
| heading:bpP:p7:sec-product | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:sec-product@L186-L186 | Heading; substantive units are separately inventoried. |
| heading:bpP:p7:sec-d25 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:sec-d25@L241-L241 | Heading; substantive units are separately inventoried. |
| heading:bpP:p7:notes | PASS | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:notes@L276-L276 | Heading; substantive units are separately inventoried. |
| p7:sourcegap-L183 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#sourcegap@L183-L183 | Correct mapping to stepP:p7:po-an, stepP:p7:po-dense, stepP:p7:po-bij. |
| p7:source-L57 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#source@L57-L57 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:source-L80 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#source@L80-L80 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:source-L107 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#source@L107-L107 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:source-L128 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#source@L128-L128 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:prose-L4-L23 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L4-L23 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:prose-L27-L33 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L27-L33 | Correct mapping to bpP:p7:conv#data. |
| p7:prose-L35-L36 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L35-L36 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:prose-L94-L97 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L94-L97 | Correct mapping to bpP:p7:regular-kepler, stepP:p7:rk-rel. |
| p7:prose-L188-L188 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L188-L188 | Correct mapping to bpP:p7:sec-product#data. |
| p7:prose-L243-L245 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L243-L245 | Correct mapping to bpP:p7:d25. |
| p7:prose-L278-L278 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L278-L278 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:prose-L280-L280 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L280-L280 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:prose-L282-L283 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L282-L283 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:prose-L285-L285 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L285-L285 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:prose-L287-L287 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L287-L287 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:prose-L289-L289 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L289-L289 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:prose-L291-L292 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L291-L292 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| p7:prose-L294-L295 | PASS | blueprint-P/parts/p7-kepler-poincare.tex#prose@L294-L295 | The source is notation, provenance, administrative prose or a pointer as recorded. |
| stepP:p7:av-mean | PASS | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:av-mean@L273-L273 | Both labels occur at L273 and are separately inventoried; both belong to the excluded average unit. |

all other coverage items PASS

## Replacement blocks

Each block is for P-p7 only. Existing metadata, identity fields, source locators and Lean fields are preserved. Only the identified failing fields/edges change. The ownership conversion already visible in the current packet (native bpI:p7 IDs for scaling, means and circular) is preserved; this review does not certify the separate P-xown records.

### P-p7 — stepP:p7:rg-lagrange

```text
NODE: stepP:p7:rg-lagrange
KIND: step
TITLE: Lagrange identity
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-lagrange@L65-L66
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-lagrange@L65-L66
CONTRACT_ID: stepP:p7:rg-lagrange
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:range; (q,p) in K_{m,kappa}; Q,P,L are scaled variables. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: (q,p) in K_{m,kappa}
SOURCE_CONCLUSION: cr(Q,P)^2<=L^2 with equality iff Q.P=0 and l(Q)=L^2, hence C<=Lambda with equality iff circular
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:rg-scale, bpP:p7:conv#data, bpP:p7:kepler-data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:rg-scale | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-lagrange@L65-L65 | 1/2 l(P)^2=E_1+1/r and L=sqrt(-1/(2E_1))
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-lagrange@L65-L65 | cr and l
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:rg-lagrange@L66-L66 | C, Lambda and the region K_{m,kappa} of the conclusion use the Kepler data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p7 — stepP:p7:ke-c

```text
NODE: stepP:p7:ke-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88
CONTRACT_ID: stepP:p7:ke-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:kepler; clause (c): Lambda>0, 0<C<=Lambda, g in R. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: Lambda>0, 0<C<=Lambda, g
SOURCE_CONCLUSION: mean values 1/a, m^2 kappa/a, a(1+e^2/2) of 1/l(q), l(p)^2, l(q)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:means, bpI:p7:circular, stepP:p7:ke-b, bpP:p7:conv#data, bpP:p7:kepler-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:means | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88 | mean values for strength one
EDGE: bpI:p7:circular | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88 | circular case C=Lambda
EDGE: stepP:p7:ke-b | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88 | a=L^2/kappa and the scaling of step (b)
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88 | uses the positive mass/strength, physical-length or rotation conventions of the package
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-c@L88-L88 | the scaled elements a and Lambda and their mass/strength dictionary
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p7 — stepP:p7:ke-d

```text
NODE: stepP:p7:ke-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89
CONTRACT_ID: stepP:p7:ke-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:kepler. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: (ell,g,Lambda,C) in D^m
SOURCE_CONCLUSION: E o Q=h_m(Lambda); h_m'=kappa^2m^3/Lambda^3=sqrt(kappa)a^{-3/2}; Hamilton equations of h_m in (ell,g;Lambda,C) are ell'=h_m', g'=Lambda'=C'=0 and transport to the Kepler flow
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:ke-b, stepP:p7:ke-form, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p1:chart-field, bpP:p7:conv#data, bpP:p7:kepler-data, stepP:p7:ke-chart
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:ke-b | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | value of E o Q
EDGE: stepP:p7:ke-form | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | symplectic with factor one in (ell,g;Lambda,C)
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | Hamilton equations X_H=(d_pH,-d_qH)
EDGE: bpP:p1:chart-field | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | transport of the equations by the chart
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | uses the positive mass/strength, physical-length or rotation conventions of the package
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | Q_{m,kappa}, its domain D^m and E_{m,kappa}
EDGE: stepP:p7:ke-chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ke-d@L89-L89 | analytic regularity of Q_{m,kappa} from clause (a), needed with ke-form to apply chart-field
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p7 — stepP:p7:po-an

```text
NODE: stepP:p7:po-an
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150
CONTRACT_ID: stepP:p7:po-an
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:poincare. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: points of O
SOURCE_CONCLUSION: Psi real analytic on O including xi=eta=0 and 2pi-periodic in lambda
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:o-facts, bpP:p7:regular-kepler, bpP:p7:poincare-def, bpP:p1:ext-comp
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:o-facts | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150 | positive radicand, l(v)<1, Lambda J>0
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150 | F real analytic and F(lambda+2pi,v)=F+2pi
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150 | q,p as rational expressions
EDGE: bpP:p1:ext-comp | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-an@L150-L150 | real-analytic composition F(lambda,v(xi,eta,Lambda)), and sums/products of analytic ingredients
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p7 — stepP:p7:po-del

```text
NODE: stepP:p7:po-del
KIND: step
TITLE: (b) Delaunay on $\Gamma>0$
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L155
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L155
CONTRACT_ID: stepP:p7:po-del
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed positive m,kappa and chart data of bpP:p7:poincare; w=(lambda,xi,Lambda,eta) in O with Gamma>0; (xi,eta)=rho e_g, rho>0; l=lambda-g, C=Lambda-Gamma=Lambda k, L=Lambda/m, G=C/m
SOURCE_QUANTIFIERS: lambda, g, Lambda, rho>0
SOURCE_CONCLUSION: Psi(lambda,xi,Lambda,eta)=Q_{m,kappa}(lambda-g,g,Lambda,Lambda-Gamma), with F=g+u, u=u_R(lambda-g,e)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:o-facts, bpP:p7:regular-kepler, bpP:p7:kepler, I:bpI:p7:orbit-maps, bpP:p7:poincare-def, bpP:p7:kepler-data, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:o-facts | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L151 | v=e e_g, e=sqrt(1-k^2)
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L151 | (c): F=g+u_R
EDGE: bpP:p7:kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L153-L153 | (b): position of the Kepler orbit
EDGE: I:bpI:p7:orbit-maps | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L155-L155 | P=R(g)(-sin u,k cos u)/(L J)
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L151 | q, p formulas
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L155-L155 | S_{m,kappa}, Q_{m,kappa}
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-del@L151-L151 | uses the positive mass/strength, physical-length or rotation conventions of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p7 — stepP:p7:po-dense

```text
NODE: stepP:p7:po-dense
KIND: step
TITLE: (c) All of $\mathcal O$
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157
CONTRACT_ID: stepP:p7:po-dense
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:poincare. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: points of O
SOURCE_CONCLUSION: D Psi^T M_0 D Psi=M_0 on all of O, i.e. Psi is a 1-chart on O and D Psi is invertible
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-symp, stepP:p7:po-an, I:bpI:p7:x-forms, bpP:p1:omega-algebra, bpP:p7:e-dense, bpP:p1:chart, bpP:p7:conv#data, bpP:p7:poincare-def, bpP:p1:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:po-symp | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | identity on the dense set A
EDGE: stepP:p7:po-an | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | Psi is C^1 (analytic) on O
EDGE: I:bpI:p7:x-forms | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | exterior calculus: form identity iff matrix identity
EDGE: bpP:p1:omega-algebra | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | (b) invertibility and (c) form identity for the linear map
EDGE: bpP:p7:e-dense | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | continuous identity on a dense subset
EDGE: bpP:p1:chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | chart property with c=1
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | frozen order (lambda,xi;Lambda,eta)
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | uses the domain O and Gamma=(xi^2+eta^2)/2
EDGE: bpP:p1:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-dense@L157-L157 | the named matrix M_0 is defined in Part 1 conventions, not in the Part 7 conventions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p7 — stepP:p7:po-el

```text
NODE: stepP:p7:po-el
KIND: step
TITLE: (d) Elements
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L159
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L159
CONTRACT_ID: stepP:p7:po-el
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:poincare. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: points of O
SOURCE_CONCLUSION: Psi(O) subset K_{m,kappa}; E=-kappa^2m^3/(2Lambda^2); a=Lambda^2/(m^2 kappa); action Lambda; cr=Lambda k; LRL vector=v
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-del, bpP:p7:kepler, stepP:p7:po-el#circular, I:bpI:p7:orbit-identities, stepP:p7:po-circ, bpP:p7:kepler-data, bpP:p7:conv#data, bpP:p7:poincare-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:po-del | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | Psi=Q_{m,kappa} o (...) on A
EDGE: bpP:p7:kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | (b): l(q)=a(1-e cos u), E, cr
EDGE: stepP:p7:po-el#circular | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | scalar circular identities from either explicitly offered derivation
EDGE: I:bpI:p7:orbit-identities | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | orbit identities for P^2, 1/l(Q), Q.P in the orbit frame
EDGE: stepP:p7:po-circ | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L159-L159 | values at xi=eta=0
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | K_{m,kappa}, a, action
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | uses the positive mass/strength, physical-length or rotation conventions of the package
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | O, Psi, k and v used in the element identities
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p7 — stepP:p7:po-bij

```text
NODE: stepP:p7:po-bij
KIND: step
TITLE: (e) Bijectivity
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L162
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L162
CONTRACT_ID: stepP:p7:po-bij
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:poincare; w,wprime in O for injectivity; target (q,p) in K for surjectivity. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: w,w' in O; (q,p) in K_{m,kappa}
SOURCE_CONCLUSION: Psi:O->K_{m,kappa} onto; Psi(w')=Psi(w) iff (xi,Lambda,eta) equal and lambda'-lambda in 2piZ; quotient diffeomorphism with the inverse formulas
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-el, stepP:p7:po-circ, stepP:p7:po-del, bpP:p7:kepler, I:bpI:p7:chart, bpP:p7:range, stepP:p7:rg-scale, stepP:p7:rg-lagrange, stepP:p7:po-dense, stepP:p7:po-an, bpP:p7:e-ift, bpP:p7:o-facts, bpP:p7:regular-kepler, bpP:p7:kepler-data, bpP:p7:conv#data, bpP:p7:poincare-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:po-el | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | Lambda, Gamma are functions of (q,p) via (d)
EDGE: stepP:p7:po-circ | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | Psi at Gamma=0 by (f)
EDGE: stepP:p7:po-del | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | (ell,g) as in (b)
EDGE: bpP:p7:kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | (a) injectivity transported by Q_{m,kappa}
EDGE: I:bpI:p7:chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | injectivity modulo 2pi of Q^I
EDGE: bpP:p7:range | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L161-L161 | Gamma in [0,Lambda)
EDGE: stepP:p7:rg-scale | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L161-L161 | scaling to strength one
EDGE: stepP:p7:rg-lagrange | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L161-L161 | equality case of the Lagrange identity
EDGE: stepP:p7:po-dense | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L162-L162 | D Psi invertible by (c)
EDGE: stepP:p7:po-an | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L162-L162 | Psi is real analytic
EDGE: bpP:p7:e-ift | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L162-L162 | bijective analytic local diffeomorphism is a diffeomorphism
EDGE: bpP:p7:o-facts | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | (xi,eta)=rho e_g, Gamma=Lambda-C
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L162-L162 | lambda=Phi(F,v) in the inverse
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L161-L161 | K_{m,kappa}
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | uses the positive mass/strength, physical-length or rotation conventions of the package
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-bij@L160-L160 | the chart domain O, Psi, Gamma and the inverse radicand
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p7 — stepP:p7:ho-hol

```text
NODE: stepP:p7:ho-hol
KIND: step
TITLE: Holomorphy, reality, periodicity
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173
CONTRACT_ID: stepP:p7:ho-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:holomorphic; Lambda^o>0, points in N(Lambda^o). Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: points of N(Lambda^o)
SOURCE_CONCLUSION: Psi holomorphic, 2pi-periodic in lambda, real at real points with real points in O; D Psi^T M_0 D Psi=M_0 at real points
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:ho-size, I:bpI:p7:x-hol, stepP:p7:po-an, bpP:p7:poincare, K:bp:p1:real-restriction, bpP:p7:poincare-def, bpP:p1:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:ho-size | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | sizes and holomorphy of the ingredients
EDGE: I:bpI:p7:x-hol | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | holomorphic calculus
EDGE: stepP:p7:po-an | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | periodicity as in Step (a)
EDGE: bpP:p7:poincare | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | (c): the real matrix identity
EDGE: K:bp:p1:real-restriction | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | complex derivative restricts to the real one
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | the explicit q,p formulas and real domain O
EDGE: bpP:p1:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:ho-hol@L173-L173 | M_0 in the real-point matrix identity
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L173 applies real derivative restriction on N(Lambda^o), while K:bp:p1:real-restriction is stated for a function on a full torus strip T_rho. N is bounded in Lambda,xi,eta, so that hypothesis is not supplied. The needed local open-domain restriction fact is true but is not the literal cited theorem: supply its local version or a valid localization, without adding it as an assumed premise. The other holomorphy/reality/periodicity and real symplectic-identity dependencies remain as recorded.
```

### P-p7 — stepP:p7:pc-share

```text
NODE: stepP:p7:pc-share
KIND: step
TITLE: Shared chart
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207
CONTRACT_ID: stepP:p7:pc-share
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:product-chart; mu,eps arbitrary; on O_n for splitting, Psi^{-1}(W) for analytic/field claims. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: w in O_n; mu, eps
SOURCE_CONCLUSION: H^Psi_mov=h+mu f_mov o Psi, H^Psi_fix=h+eps f_fix o Psi; hat f analytic on the open set Psi^{-1}(W) and independent of mu, eps; field statements
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p6:split, bpP:p6:domain, bpP:p1:ext-comp, stepP:p7:pc-prod, bpP:p1:chart-field, bpP:p1:chart-orbit, bpP:p0:movham#movingHamiltonian, bpP:p0:fixham#fixedHamiltonian, bpP:p7:sec-product#data, bpP:p7:product-def, stepP:p7:pc-dec, bpP:p1:chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p6:split | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | H=H_Kep+mu f
EDGE: bpP:p6:domain | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | W open and reduced Hamiltonians smooth on W; the analytic bridge is exposed in NOTE
EDGE: bpP:p1:ext-comp | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | composition of analytic maps is analytic
EDGE: stepP:p7:pc-prod | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | Psi^(n) analytic, continuous
EDGE: bpP:p1:chart-field | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | field statement
EDGE: bpP:p1:chart-orbit | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | orbit statement
EDGE: bpP:p0:movham#movingHamiltonian | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | H_mov
EDGE: bpP:p0:fixham#fixedHamiltonian | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | H_fix
EDGE: bpP:p7:sec-product#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | uses the fixed product data and coordinate/body dictionary
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | uses Psi^(n), O_n and h
EDGE: stepP:p7:pc-dec | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | substitutes H_Kep composed with Psi^(n)=h into the splitting
EDGE: bpP:p1:chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-share@L207-L207 | H^Psi=c^{-1}(H composed with Psi), specialized to c=1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L207 asserts that the proof of bpP:p6:domain also gives real analyticity of f_mov,f_fix on W. Its statement/proof L54-L60 supply C-infinity using smooth square-root/reciprocal facts. A real-analytic positive-root/reciprocal argument for the explicit perturbations is needed before analytic composition; do not assume that missing regularity as a hypothesis. The splitting, openness and smooth field transport remain sourced as recorded.
```

### P-p7 — stepP:p7:pc-eq

```text
NODE: stepP:p7:pc-eq
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208
CONTRACT_ID: stepP:p7:pc-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:product-chart; the model Hamiltonian H_mov^Psi or H_fix^Psi, on Psi^{-1}(W). Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: fixed section data, arbitrary mu,eps, w in Psi^{-1}(W), i<n; G is H_mov^Psi=h+mu hat f_mov or H_fix^Psi=h+eps hat f_fix
SOURCE_CONCLUSION: Hamilton equations in the chart: lambda_i'=nu_i+d_{Lambda_i}(mu f), Lambda_i'=-mu d_{lambda_i}f, xi_i'=mu d_{eta_i}f, eta_i'=-mu d_{xi_i}f for the moving model with f=hat f_mov; for the fixed model replace every mu f by eps hat f_fix
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:hamsymp#hamiltonianVectorField, stepP:p7:pc-dec, stepP:p7:pc-share, bpP:p7:sec-product#data, bpP:p1:chart, bpP:p7:product-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208 | definition of X_G
EDGE: stepP:p7:pc-dec | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208 | nu_i=d h/d Lambda_i
EDGE: stepP:p7:pc-share | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208 | H^Psi=h+mu hat f
EDGE: bpP:p7:sec-product#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208 | z_1=(lambda,xi), z_2=(Lambda,eta)
EDGE: bpP:p1:chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208 | the pulled-back Hamiltonian H^Psi used in the model equations
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:pc-eq@L208-L208 | Psi^(n), O_n and the h(Lambda) in the model Hamiltonians
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p7 — bpP:p7:same-chart

**Delete the complete NODE block below.** Its existing EXCLUDED coverage item is correct and needs no change. A replacement node would contradict that disposition; the fenced diff therefore supplies the complete block removal.

```diff
-NODE: bpP:p7:same-chart
-KIND: claim
-TITLE: Why the same chart serves both models
-STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:same-chart@L211-L213
-PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:same-chart@L211-L213
-CONTRACT_ID: bpP:p7:same-chart
-CONTRACT_VERSION: 1
-SOURCE_HYPOTHESES: Part 6 setting; reduced mass in Fej04r versus planet mass m_i here
-SOURCE_QUANTIFIERS: n, G, m0, m; mu, eps
-SOURCE_CONCLUSION: the Kepler part of H_mov is H_Kep with planet mass m_i and centre mass m0 (not the reduced mass), so the chart is independent of mu and equal to that of the fixed-Sun problem; f_mov-f_fix=l(P)^2/(2m0), P=sum p_i, is a polynomial analytic on all Ph_{2n}
-CONSTANT_SCOPE: none
-FROZEN_FILE: -
-FROZEN_DECL: -
-FROZEN_ANCHOR_ID: -
-FROZEN_ABI_SHA256: -
-DEPS: bpP:p6:kepler-part, bpP:p6:split, bpP:p7:product-chart
-ROUTES: -
-ROUTE_FOR: -
-EDGE: bpP:p6:kepler-part | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:same-chart@L212-L212 | H_Kep with planet mass; term mu l(p_i)^2/(2m0) belongs to mu f_mov
-EDGE: bpP:p6:split | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:same-chart@L212-L212 | f_mov-f_fix=l(P)^2/(2m0)
-EDGE: bpP:p7:product-chart | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:same-chart@L212-L212 | the chart Psi^(n) shared by both models
-TOPOLOGY_STATUS: PROPOSED
-EXTRACTOR: sonnet-extract-P-p7
-REVIEWER: -
-LEAN_STATUS: NOT_STARTED
-LEAN_REF: -
-LEAN_NOTE: -
-NOTE: remark kept: consumed by Part 14a (two citations of bpP:p7:same-chart). The sentence on the lambda-average computed in Part 8 is a forward pointer
```

### P-p7 — stepP:p7:d25-d

```text
NODE: stepP:p7:d25-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262
CONTRACT_ID: stepP:p7:d25-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:d25; z=Psi^(2)(w) for the forward assertions; ProgradeElliptic(m,z) for the converse. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: fixed n=2, kappa=1 and m in (0,infinity)^2; forward: every w in O_2 and i<2, z=Psi^(2)(w); converse: every physical z with ProgradeElliptic(m,z), with a preimage w to be obtained
SOURCE_CONCLUSION: ProgradeElliptic m z with the stated values of keplerEnergy, keplerAxis, keplerAction, planeCross, keplerEccVector; converse and uniqueness modulo lambda->lambda+2pi k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:poincare, bpP:p7:product-chart, stepP:p7:d25-ab, bpP:p0:d25-prograde#ProgradeElliptic, bpP:p0:d25-kepler#keplerEnergy, bpP:p0:d25-kepler#keplerAxis, bpP:p0:d25-kepler#keplerAction, bpP:p0:d25-kepler#keplerEccVector, bpP:p0:plane#planeLength, bpP:p7:product-def, bpP:p0:d25-cross#planeCross
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p7:poincare | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | (d): Psi(w) in K_{m_i,1}, E, a, action, LRL=v
EDGE: bpP:p7:product-chart | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | (a): converse and uniqueness
EDGE: stepP:p7:d25-ab | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | Gamma_i, a_i
EDGE: bpP:p0:d25-prograde#ProgradeElliptic | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | ProgradeElliptic
EDGE: bpP:p0:d25-kepler#keplerEnergy | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | keplerEnergy
EDGE: bpP:p0:d25-kepler#keplerAxis | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | keplerAxis
EDGE: bpP:p0:d25-kepler#keplerAction | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | keplerAction
EDGE: bpP:p0:d25-kepler#keplerEccVector | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | keplerEccVector
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | planeLength>0
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | Psi^(2), K^(2)
EDGE: bpP:p0:d25-cross#planeCross | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-d@L262-L262 | the physical angular-momentum identity uses the planar cross product
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p7 — stepP:p7:d25-e

```text
NODE: stepP:p7:d25-e
KIND: step
TITLE: (e)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263
CONTRACT_ID: stepP:p7:d25-e
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed data and source premises of bpP:p7:d25; Gamma_i>0. Earlier proof facts and cited results are supplied through DEPS, not extra hypotheses.
SOURCE_QUANTIFIERS: w in O_2 with Gamma_i>0
SOURCE_CONCLUSION: (xi_i,eta_i)=rho_i e_{g_i}, F_i=g_i+u_i, lambda_i=ell_i+g_i
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-del, bpP:p7:regular-kepler, bpP:p7:product-def, bpP:p7:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p7:po-del | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263 | Delaunay correspondence on Gamma>0
EDGE: bpP:p7:regular-kepler | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263 | (c): F=g+u_R
EDGE: bpP:p7:product-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263 | uses the O_2 domain and product-chart notation in the statement
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:d25-e@L263-L263 | e_g and the perihelion/mean-longitude rotation convention
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p7 — bpP:p7:conv#data

```text
NODE: bpP:p7:conv#data
KIND: definition
TITLE: Conventions of Part 7 (m, kappa, l, angles, Omega, J_0, R(g), e_g, cr, Q^I)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L27-L33
PROOF_SOURCE: -
CONTRACT_ID: bpP:p7:conv#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m>0 the planet mass; kappa=G m0>0 the strength of the centre; l the planar length (Definition bpP:p0:plane); angles lambda, ell, g, F in radians (period 2pi); phase point z=(z_1,z_2) positions first, Omega=sum dz_{2,i}^dz_{1,i} (Definition bpP:p0:hamsymp); Poincare coordinates (lambda,xi;Lambda,eta) with positions (lambda,xi) and momenta (Lambda,eta)
SOURCE_QUANTIFIERS: m, kappa (fixed in the part; kappa=G m0 with G, m0 the data of Part 6); then points of R^2 x R^2
SOURCE_CONCLUSION: defines J_0 v=(-v_1,v_0) (quarterTurn), R(g) the rotation by g, e_g=(cos g,sin g), cr(q,p)=q_0p_1-q_1p_0 (planeCross), Omega_chart=dLambda^dlambda+deta^dxi, Gamma=(xi^2+eta^2)/2, and the track-I Delaunay map Q^I(ell,g,L,G) (strength one, unit mass) with (Q^I)^*(sum dq_i^dp_i)=dell^dL+dg^dG
CONSTANT_SCOPE: m and kappa are fixed positive data; kappa=G m0 depends on G, m0 only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p0:plane#planeLength, bpP:p0:hamsymp#symplecticForm, bpP:p0:d25-cross#planeCross, I:bpI:p7:orbit-maps, I:bpI:p7:symplectic, bpP:p0:oscaction#oscillatorAction, bpP:p14:sb-conv#quarterTurn
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p0:plane#planeLength | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L27-L27 | l is planeLength
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L28-L28 | frozen sign convention Omega=sum dz_2^dz_1
EDGE: bpP:p0:d25-cross#planeCross | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L32-L32 | cr is planeCross
EDGE: I:bpI:p7:orbit-maps | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L33-L33 | Delaunay map Q^I
EDGE: I:bpI:p7:symplectic | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L33-L33 | (Q^I)^*(sum dq^dp)=dell^dL+dg^dG
EDGE: bpP:p0:oscaction#oscillatorAction | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L29-L29 | Gamma=R(eta,xi) explicitly identifies the oscillator action
EDGE: bpP:p14:sb-conv#quarterTurn | blueprint-P/parts/p7-kepler-poincare.tex#bpP:p7:conv#data@L32-L32 | J_0 v=(-v_1,v_0) explicitly identifies quarterTurn
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p7+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: created from p7:prose-L27-L33 (SPEC section data); consumers: nearly every statement of Part 7
```

### P-p7 — stepP:p7:po-el#circular

```text
NODE: stepP:p7:po-el#circular
KIND: step
TITLE: Scalar circular endpoint identities
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
CONTRACT_ID: stepP:p7:po-el#circular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m,kappa>0; w=(lambda,0,Lambda,0) in O; q,p=Psi_{m,kappa}(w)
SOURCE_QUANTIFIERS: fixed m,kappa>0; every real lambda and Lambda>0
SOURCE_CONCLUSION: q!=0, E_{m,kappa}(q,p)=-kappa^2 m^3/(2Lambda^2), cr(q,p)=Lambda>0, a(q,p)=Lambda^2/(m^2 kappa), and the physical action is Lambda
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p7:kepler-data, bpP:p7:poincare-def, bpP:p7:conv#data
ROUTES: stepP:p7:po-el#circular-scaled, stepP:p7:po-el#circular-direct
ROUTE_FOR: -
EDGE: stepP:p7:po-el#circular-scaled | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | alternative scalar circular derivation explicitly offered at this line
EDGE: stepP:p7:po-el#circular-direct | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | alternative scalar circular derivation explicitly offered at this line
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | E, a and the physical action in the common scalar endpoint contract
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | the common hypothesis w in O and q,p=Psi(w)
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | the common positive mass/strength and planar length/cross-product conventions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: covers only the scalar circular identities; the parent separately treats the LRL identity at L158-L159
```

### P-p7 — stepP:p7:po-el#circular-direct

```text
NODE: stepP:p7:po-el#circular-direct
KIND: route
TITLE: Circular scalars checked directly from clause (f)
STATEMENT_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
PROOF_SOURCE: blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158
CONTRACT_ID: stepP:p7:po-el#circular-direct
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m,kappa>0; w=(lambda,0,Lambda,0) in O; q,p=Psi_{m,kappa}(w)
SOURCE_QUANTIFIERS: fixed m,kappa>0; every real lambda and Lambda>0
SOURCE_CONCLUSION: q!=0, E_{m,kappa}(q,p)=-kappa^2 m^3/(2Lambda^2), cr(q,p)=Lambda>0, a(q,p)=Lambda^2/(m^2 kappa), and the physical action is Lambda
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p7:po-circ, bpP:p7:kepler-data, bpP:p7:conv#data, bpP:p7:poincare-def
ROUTES: -
ROUTE_FOR: stepP:p7:po-el#circular
EDGE: stepP:p7:po-circ | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | explicit circular q,p formulas
EDGE: bpP:p7:kepler-data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | definitions of E,C,a and action
EDGE: bpP:p7:conv#data | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | positive mass/strength and physical element conventions
EDGE: bpP:p7:poincare-def | blueprint-P/parts/p7-kepler-poincare.tex#stepP:p7:po-el@L158-L158 | the source domain O and the equality q,p=Psi(w) in the route hypotheses
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-i
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: covers only the scalar circular identities; the parent separately treats the LRL identity at L158-L159
```

## Source defects and limits

The already exposed source-contract attachments at Part 7 L173 (whole-strip real-restriction cited on a bounded open neighbourhood) and L207 (C-infinity cited for real analyticity) are preserved. Their NOTE fields begin SOURCE_GAP. The failures above do not replace either gap by an assumed regularity statement. No new pinned-paper erratum or blueprint mathematical defect is asserted.

Foreign-slice handoff (no foreign record is reviewed or rewritten): P-p14a2 currently contains a PROPOSED `bpP:p14:sec-domain#chart-facts` edge to `bpP:p7:same-chart` at Part 14a L166. L162 explicitly recalls product-chart and d25, and Ch3 at L166 is product-chart(c), which is already a direct dependency there. The same-chart reference occurs only at Deviations L339. Its assigned reviewer/writer must remove that non-direct edge before applying the same-chart node deletion; do not leave a dangling reference. The prior coverage reason predates that extra edge; its EXCLUDED disposition remains supported by the source. No foreign-slice replacement block is issued. The three I ownership candidates are genuine consumed facts; their P-xown extraction/review remains a separate writer responsibility under SPEC. The current packet already uses their native IDs.

## Validation

- Exact scope inventory: one row per proposed node and per proposed coverage item, with NODE/ITEM tables separated where IDs coincide.
- Checked every dependency/route against its EDGE entry and consumer use span. All replacement targets exist; dependency/route-to-EDGE pairing and separators pass; there is no cycle within P-p7 after the proposed repairs and deletion. The foreign incoming edge noted above must be removed before deleting same-chart. No assembled graph or dashboard was regenerated.
- Checked all replacement fields against the current packet: only DEPS/EDGE, the identified source-premise/quantifier/conclusion fields, and the explicit node deletion change. Packet hashes were unchanged at final validation.
- Only this report was written. No packet, SPEC, blueprint, frozen file or manifest was edited; no state-changing git or Lean command was run.

Packet snapshot SHA-256:

- P-p7.nodes.md: `7b76837e7dc248eb1083e8cedb0c86938ba43dad702174d818c3a163eb030fb1`.
- P-p7.coverage.md: `0f5a7cf1296e0dcd8c426dc8a5ad8f83cc0b023ab2ef072ea7bd5dd6597d8a06`.
