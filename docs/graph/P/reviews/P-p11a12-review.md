# P-p11a12 source topology review

Reviewer: `sol-review-P-x`. Marker: `rev-P-x`.

**Verdict: FAIL.** Reviewed all 104 node records and all 169 existing coverage items, and inventoried ten missing labelled premise/interface items. Applied REVIEW-BRIEF and the current SPEC, including the P-FIXED revision and all writer rulings. P-FIXED is the seventh root; none of these results is excluded merely because it serves P-FIXED.

## Findings and the two requested decisions

1. **consumers is excluded.** The remark at 11a-1 L211–220 is a requirement/hand-off list. Corpus search found only its own label/items, the 11a-2 L154 hand-off, 11a-3 provenance at L244/L325, its corrective administrative remark L255, and notes/forward-reference lists. Parts 11, 11a-4, 11a-5 and 13 have no use of its statement. The finite-divisor and selection arguments establish their own premises. Delete its NODE block and retain the EXCLUDED coverage replacement below. Do not add a cycle through this remark.
The same seven-root source check also excludes rank-compact (and rc-reduce), chart-scaling and divisor-wide. The first two are only announced as possible/future consumers; the last is re-proved directly by finite-divisor and then mentioned as a comparison. Their missing reachability is not repaired by inventing an application edge.

2. **Import K:bp:p1:ext-integral.** The canonical remainder at 11a-2 L285 uses the norm-of-integral bound; L280 bounds an average by the sup norm; L239 uses the fundamental theorem and norm-of-integral bound for the variational estimate. The owner external at K Part 1 L82–86 supplies these contracts and is a node of K's published graph. The complete import is provided in the separate “for slice P-imports” section; do not add it to P-p11a12. The existing source pin covers its file.
3. **Section-data and application edges are missing.** The diagonal/operator norms, d and K_theta, the complex parameter thickening, the sup-norm/Fourier-domain package and bracket convention must be direct inputs where used. In particular cs-cutoff, cs-hom and cs-flow omit their explicitly applied cutoff, homological and affine-flow results. cs-assemble also directly uses cs-cutoff's R-R_* bound. pl-profile verifies a premise by elementary norm comparison and does not apply diophantine-measure: its theorem edge is removed.
4. **Derived proof state is not a source premise.** Many step records assume the estimate or construction that the proof is establishing, or omit the enclosing source setting. Their SOURCE_HYPOTHESES are restored to the enclosing source data; existing proof dependencies continue to supply established facts. Local variables, cases and the original quantifier fields remain as printed. The small number of already faithful input lists is preserved.
5. **Reality is conditional.** homological-maximal(d) requires real P_0,P_1; affine-flow(e) requires real phi_0,phi_1. Their extracted conclusion fields drop these guards. Restore only those guards (and the explicit flow time range).
6. **Two ODE bridges need disclosure.** x-ode is a linear inhomogeneous ODE/Gronwall external. It does not supply global nonlinear autonomous flow theory at rl-global L237 or identify derivatives of that flow with the variational solution at rl-deriv L239. The former edge is removed; both steps retain their source assertions with NOTE beginning SOURCE_GAP. Gronwall remains a valid direct input to rl-deriv after the asserted variational identity. No missing mathematics or new external theorem is supplied.
7. **Coverage is incomplete.** S1–S3 and D1–D4 are labelled premise items of their enclosing theorem; I1–I3 belong to the excluded administrative remark. Add their ITEM records, not theorem nodes. The two external-list exclusion reasons must acknowledge the integral supplier instead of treating its absence as a reason not to import it.

`a1` denotes blueprint-P/parts/p11a1-weak-measure.tex; `a2` denotes blueprint-P/parts/p11a2-cutoff-step.tex. Every node's statement, proof and EDGE spans were re-read; prerequisite statements were checked in P Part 10, K Parts 0/1/4 and N Parts 4/5. No implementation/provider Lean or proof status was inspected.

## Node verdicts

| ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpP:p11a:f-rolle | PASS | a1#bpP:p11a:f-rolle@L31-L31 | Source fields, direct inputs and locator agree. |
| bpP:p11a:f-meas | PASS | a1#bpP:p11a:f-meas@L32-L32 | Source fields, direct inputs and locator agree. |
| bpP:p11a:f-mvt | PASS | a1#bpP:p11a:f-mvt@L33-L33 | Source fields, direct inputs and locator agree. |
| bpP:p11a:f-orth | PASS | a1#bpP:p11a:f-orth@L34-L34 | Source fields, direct inputs and locator agree. |
| bpP:p11a:f-leib | PASS | a1#bpP:p11a:f-leib@L36-L36 | Source fields, direct inputs and locator agree. |
| bpP:p11a:conv#data | PASS | a1#bpP:p11a:conv#data@L17-L25 | Source fields, direct inputs and locator agree. |
| bpP:p11a:index-def | PASS | a1#bpP:p11a:index-def@L41-L48 | Source fields, direct inputs and locator agree. |
| bpP:p11a:rank-compact | FAIL | a1#bpP:p11a:rank-compact@L50-L53; a1#bpP:p11a:rank-compact@L54-L56 | DELETE NODE: outside every root closure of all seven track-P roots. Raw corpus search finds only the a1 outline, the optional e.g. in D1 L152 and forward-consumer prose L236; no proof applies it. The actual measure theorem assumes its finite-type amount as D1. |
| stepP:p11a:rc-reduce | FAIL | a1#stepP:p11a:rc-reduce@L55-L55 | DELETE NODE: proof step of the unused rank-compact lemma; no other proof consumes it, so it is outside every seven-root closure. |
| bpP:p11a:stability | PASS | a1#bpP:p11a:stability@L58-L65; a1#bpP:p11a:stability@L66-L71 | Source fields, direct inputs and locator agree. |
| stepP:p11a:st-1 | FAIL | a1#stepP:p11a:st-1@L68-L68 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. Missing direct bpP:p11a:index-def dependency. |
| stepP:p11a:st-2 | FAIL | a1#stepP:p11a:st-2@L69-L69 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. Missing direct bpP:p11a:index-def dependency. |
| stepP:p11a:st-amount | FAIL | a1#stepP:p11a:st-amount@L70-L70 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. |
| bpP:p11a:M-bound | PASS | a1#bpP:p11a:M-bound@L73-L75; a1#bpP:p11a:M-bound@L76-L78 | Source fields, direct inputs and locator agree. |
| bpP:p11a:divided-difference | PASS | a1#bpP:p11a:divided-difference@L84-L87; a1#bpP:p11a:divided-difference@L88-L91 | Source fields, direct inputs and locator agree. |
| stepP:p11a:dd-interp | FAIL | a1#stepP:p11a:dd-interp@L89-L89 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| stepP:p11a:dd-rolle | FAIL | a1#stepP:p11a:dd-rolle@L90-L90 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| bpP:p11a:scalar-sublevel | PASS | a1#bpP:p11a:scalar-sublevel@L93-L97; a1#bpP:p11a:scalar-sublevel@L98-L106 | Source fields, direct inputs and locator agree. |
| stepP:p11a:ss-phi | FAIL | a1#stepP:p11a:ss-phi@L100-L100 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| stepP:p11a:ss-nodes | FAIL | a1#stepP:p11a:ss-nodes@L101-L103 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| stepP:p11a:ss-gaps | FAIL | a1#stepP:p11a:ss-gaps@L104-L104 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| stepP:p11a:ss-dd | FAIL | a1#stepP:p11a:ss-dd@L105-L105 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| bpP:p11a:ball-sublevel | PASS | a1#bpP:p11a:ball-sublevel@L108-L112; a1#bpP:p11a:ball-sublevel@L113-L117 | Source fields, direct inputs and locator agree. |
| stepP:p11a:bs-rot | FAIL | a1#stepP:p11a:bs-rot@L114-L114 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. |
| stepP:p11a:bs-sections | FAIL | a1#stepP:p11a:bs-sections@L115-L115 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. |
| stepP:p11a:bs-tonelli | FAIL | a1#stepP:p11a:bs-tonelli@L116-L116 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. |
| bpP:p11a:sublevel | PASS | a1#bpP:p11a:sublevel@L119-L130; a1#bpP:p11a:sublevel@L131-L141 | Source fields, direct inputs and locator agree. |
| bpP:p11a:sublevel#kappa | FAIL | a1#bpP:p11a:sublevel#kappa@L132-L134 | Missing direct bpP:p11a:conv#data dependency. The choice step omits N>=1 and the diameter setting needed by the displayed construction. |
| stepP:p11a:sl-cover | FAIL | a1#stepP:p11a:sl-cover@L135-L135 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| stepP:p11a:sl-lower | FAIL | a1#stepP:p11a:sl-lower@L136-L138 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. |
| stepP:p11a:sl-ball | FAIL | a1#stepP:p11a:sl-ball@L139-L139 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. |
| stepP:p11a:sl-sum | FAIL | a1#stepP:p11a:sl-sum@L140-L140 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. |
| bpP:p11a:diophantine-measure | PASS | a1#bpP:p11a:diophantine-measure@L149-L164; a1#bpP:p11a:diophantine-measure@L165-L170 | Source fields, direct inputs and locator agree. |
| stepP:p11a:dm-compact | FAIL | a1#stepP:p11a:dm-compact@L166-L166 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| stepP:p11a:dm-union | FAIL | a1#stepP:p11a:dm-union@L167-L167 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. |
| stepP:p11a:dm-onek | FAIL | a1#stepP:p11a:dm-onek@L168-L168 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. |
| stepP:p11a:dm-sum | FAIL | a1#stepP:p11a:dm-sum@L169-L169 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| bpP:p11a:power-law | FAIL | a1#bpP:p11a:power-law@L172-L181; a1#bpP:p11a:power-law@L182-L186 | Missing direct bpP:p11a:conv#data dependency. Missing direct bpP:p11a:index-def dependency. |
| stepP:p11a:pl-profile | FAIL | a1#stepP:p11a:pl-profile@L183-L183 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. Non-direct edge: L183 verifies D4 by norm arithmetic; it does not apply the measure theorem. The decay factor ¦k¦_1^(-tau-1) used by pl-sum must be retained in the conclusion. |
| stepP:p11a:pl-sum | FAIL | a1#stepP:p11a:pl-sum@L184-L184 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. |
| stepP:p11a:pl-conc | FAIL | a1#stepP:p11a:pl-conc@L185-L185 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:conv#data dependency. |
| bpP:p11a:limit-bridge | FAIL | a1#bpP:p11a:limit-bridge@L188-L192; a1#bpP:p11a:limit-bridge@L193-L195 | Missing direct bpP:p11a:conv#data dependency. |
| bpP:p11a:chart-scaling | FAIL | a1#bpP:p11a:chart-scaling@L197-L206; a1#bpP:p11a:chart-scaling@L207-L209 | DELETE NODE: outside every seven-root closure. All raw corpus mentions are its own declaration/proof, the a1 outline and the L236 forward-consumer list; the claimed future 11a-5 use does not occur. |
| bpP:p11a:consumers | FAIL | a1#bpP:p11a:consumers@L211-L220 | DELETE NODE: administrative consumer/requirement list; no proof consumes it. All incoming source mentions are provenance, comparisons or forward hand-offs (11a2 L154; 11a3 L244,L255,L325). |
| bpP:p11a:c2-conv#data | PASS | a2#bpP:p11a:c2-conv#data@L22-L22 | Source fields, direct inputs and locator agree. |
| bpP:p11a:c2-conv#bracket | PASS | a2#bpP:p11a:c2-conv#bracket@L28-L28 | Source fields, direct inputs and locator agree. |
| bpP:p11a:domain-def | PASS | a2#bpP:p11a:domain-def@L23-L27 | Source fields, direct inputs and locator agree. |
| bpP:p11a:x-cauchy | PASS | a2#bpP:p11a:x-cauchy@L32-L32 | Source fields, direct inputs and locator agree. |
| bpP:p11a:x-duality | PASS | a2#bpP:p11a:x-duality@L33-L33 | Source fields, direct inputs and locator agree. |
| bpP:p11a:x-ode | PASS | a2#bpP:p11a:x-ode@L34-L34 | Source fields, direct inputs and locator agree. |
| bpP:p11a:fourier-cutoff | PASS | a2#bpP:p11a:fourier-cutoff@L42-L53; a2#bpP:p11a:fourier-cutoff@L54-L68 | Source fields, direct inputs and locator agree. |
| stepP:p11a:fc-const | PASS | a2#stepP:p11a:fc-const@L55-L55 | Source fields, direct inputs and locator agree. |
| stepP:p11a:fc-decay | FAIL | a2#stepP:p11a:fc-decay@L57-L57 | Missing direct bpP:p11a:c2-conv#data dependency. |
| stepP:p11a:fc-tail | FAIL | a2#stepP:p11a:fc-tail@L59-L60 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| stepP:p11a:fc-count | FAIL | a2#stepP:p11a:fc-count@L62-L63 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. |
| stepP:p11a:fc-poly | FAIL | a2#stepP:p11a:fc-poly@L65-L65 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| stepP:p11a:fc-assemble | FAIL | a2#stepP:p11a:fc-assemble@L67-L67 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| bpP:p11a:loss-choice | PASS | a2#bpP:p11a:loss-choice@L70-L75; a2#bpP:p11a:loss-choice@L76-L82 | Source fields, direct inputs and locator agree. |
| stepP:p11a:lc-exponent | FAIL | a2#stepP:p11a:lc-exponent@L77-L77 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| stepP:p11a:lc-estimate | FAIL | a2#stepP:p11a:lc-estimate@L79-L79 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| stepP:p11a:lc-mono | FAIL | a2#stepP:p11a:lc-mono@L81-L81 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| bpP:p11a:loss-sum | PASS | a2#bpP:p11a:loss-sum@L84-L89; a2#bpP:p11a:loss-sum@L90-L92 | Source fields, direct inputs and locator agree. |
| bpP:p11a:taylor-cutoff | FAIL | a2#bpP:p11a:taylor-cutoff@L97-L104; a2#bpP:p11a:taylor-cutoff@L105-L111 | Missing direct bpP:p11a:c2-conv#data dependency. |
| stepP:p11a:tc-line | FAIL | a2#stepP:p11a:tc-line@L106-L106 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| stepP:p11a:tc-a | FAIL | a2#stepP:p11a:tc-a@L108-L108 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| stepP:p11a:tc-b | FAIL | a2#stepP:p11a:tc-b@L110-L110 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| bpP:p11a:cutoff | FAIL | a2#bpP:p11a:cutoff@L113-L124; a2#bpP:p11a:cutoff@L125-L133 | Missing direct bpP:p11a:c2-conv#data dependency. |
| stepP:p11a:cu-coeff | FAIL | a2#stepP:p11a:cu-coeff@L126-L126 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. |
| stepP:p11a:cu-a | FAIL | a2#stepP:p11a:cu-a@L128-L128 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| stepP:p11a:cu-b | FAIL | a2#stepP:p11a:cu-b@L130-L130 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| stepP:p11a:cu-c | FAIL | a2#stepP:p11a:cu-c@L132-L132 | Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| bpP:p11a:param-cauchy | PASS | a2#bpP:p11a:param-cauchy@L138-L141; a2#bpP:p11a:param-cauchy@L142-L146 | Source fields, direct inputs and locator agree. |
| stepP:p11a:pc-poly | FAIL | a2#stepP:p11a:pc-poly@L143-L143 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. |
| stepP:p11a:pc-iter | FAIL | a2#stepP:p11a:pc-iter@L145-L145 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. |
| bpP:p11a:divisor-wide | FAIL | a2#bpP:p11a:divisor-wide@L148-L152; a2#bpP:p11a:divisor-wide@L153-L155 | DELETE NODE: outside every seven-root closure. a2 C2 L255 names a possible supplier of its independently stated divisor premise; a2 hand-offs are pointers. a3 finite-divisor L243/L251 proves the bound directly and names divisor-wide only as an interface/consistency comparison, not an applied input. |
| bpP:p11a:divisor-perturb | PASS | a2#bpP:p11a:divisor-perturb@L157-L162; a2#bpP:p11a:divisor-perturb@L163-L165 | Source fields, direct inputs and locator agree. |
| bpP:p11a:sec-hom#lambda | PASS | a2#bpP:p11a:sec-hom#lambda@L170-L170 | Source fields, direct inputs and locator agree. |
| bpP:p11a:homological-maximal | FAIL | a2#bpP:p11a:homological-maximal@L172-L185; a2#bpP:p11a:homological-maximal@L186-L198 | Reality is conditional on real P_0,P_1 at source L180. |
| stepP:p11a:hm-div | FAIL | a2#stepP:p11a:hm-div@L187-L187 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. |
| stepP:p11a:hm-coeff | FAIL | a2#stepP:p11a:hm-coeff@L189-L189 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| stepP:p11a:hm-a | FAIL | a2#stepP:p11a:hm-a@L191-L191 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Also missing the direct divisor lower-bound input. |
| stepP:p11a:hm-bc | FAIL | a2#stepP:p11a:hm-bc@L193-L193 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| stepP:p11a:hm-d | FAIL | a2#stepP:p11a:hm-d@L195-L195 | Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. The conditional phi_1 reality clause also needs real P_1; the coefficient conjugation is derived. |
| stepP:p11a:hm-bracket | FAIL | a2#stepP:p11a:hm-bracket@L197-L197 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| bpP:p11a:affine-flow | FAIL | a2#bpP:p11a:affine-flow@L203-L216; a2#bpP:p11a:affine-flow@L217-L227 | The real-flow clause is conditional; retain the stated time range. The parameter-holomorphy conclusion must retain its source hypotheses on B and phi_i. |
| stepP:p11a:af-field | FAIL | a2#stepP:p11a:af-field@L218-L218 | Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Missing direct bpP:p11a:c2-conv#bracket dependency. |
| stepP:p11a:af-flow | FAIL | a2#stepP:p11a:af-flow@L220-L220 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Missing direct bpP:p11a:c2-conv#bracket dependency. |
| stepP:p11a:af-simple | FAIL | a2#stepP:p11a:af-simple@L222-L222 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Missing direct bpP:p11a:c2-conv#bracket dependency. |
| stepP:p11a:af-deriv | FAIL | a2#stepP:p11a:af-deriv@L224-L224 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| stepP:p11a:af-rest | FAIL | a2#stepP:p11a:af-rest@L226-L226 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Missing direct bpP:p11a:c2-conv#bracket dependency. |
| bpP:p11a:real-lipschitz | PASS | a2#bpP:p11a:real-lipschitz@L229-L235; a2#bpP:p11a:real-lipschitz@L236-L242 | Source fields, direct inputs and locator agree. |
| stepP:p11a:rl-global | FAIL | a2#stepP:p11a:rl-global@L237-L237 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. The linear ODE external cannot supply nonlinear global existence/uniqueness at L237. The nonlinear global-flow bridge is unrepresented; expose it as SOURCE_GAP. |
| stepP:p11a:rl-deriv | FAIL | a2#stepP:p11a:rl-deriv@L239-L239 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. The variational identity is assumed rather than supplied by the linear ODE external; expose SOURCE_GAP. Missing direct K:bp:p1:ext-integral dependency. |
| stepP:p11a:rl-const | FAIL | a2#stepP:p11a:rl-const@L241-L241 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |
| bpP:p11a:canonical-step | FAIL | a2#bpP:p11a:canonical-step@L247-L268; a2#bpP:p11a:canonical-step@L269-L290 | SOURCE_CONCLUSION drops the real-data guard on the map and the holomorphic/periodic/conditional-real clauses for R_+. |
| stepP:p11a:cs-cutoff | FAIL | a2#stepP:p11a:cs-cutoff@L270-L270 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Missing direct bpP:p11a:cutoff dependency. |
| stepP:p11a:cs-hom | FAIL | a2#stepP:p11a:cs-hom@L272-L272 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Missing direct bpP:p11a:c2-conv#bracket dependency. Missing direct bpP:p11a:sec-hom#lambda dependency. Missing direct bpP:p11a:homological-maximal dependency. |
| stepP:p11a:cs-flow | FAIL | a2#stepP:p11a:cs-flow@L274-L274 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Missing direct bpP:p11a:affine-flow dependency. |
| stepP:p11a:cs-taylor | FAIL | a2#stepP:p11a:cs-taylor@L276-L278 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Missing direct bpP:p11a:c2-conv#bracket dependency. |
| stepP:p11a:cs-u | FAIL | a2#stepP:p11a:cs-u@L280-L280 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Missing direct K:bp:p1:ext-integral dependency. |
| stepP:p11a:cs-bracket | FAIL | a2#stepP:p11a:cs-bracket@L282-L283 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Missing direct bpP:p11a:c2-conv#bracket dependency. |
| stepP:p11a:cs-assemble | FAIL | a2#stepP:p11a:cs-assemble@L285-L285 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Missing direct bpP:p11a:sec-hom#lambda dependency. Missing direct stepP:p11a:cs-cutoff dependency. Missing direct K:bp:p1:ext-integral dependency. |
| stepP:p11a:cs-lip | FAIL | a2#stepP:p11a:cs-lip@L287-L287 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. Missing direct bpP:p11a:sec-hom#lambda dependency. The use of real-lipschitz requires real data, whereas canonical-step leaves R reality optional; expose the unsupported unguarded application. |
| stepP:p11a:cs-param | FAIL | a2#stepP:p11a:cs-param@L289-L289 | SOURCE_HYPOTHESES omits enclosing source inputs or assumes derived proof ingredients; restore the source setting. Missing direct bpP:p11a:c2-conv#data dependency. Missing direct bpP:p11a:domain-def dependency. |

## Coverage failures

| ID | Verdict | Source span | Reason |
|---|---|---|---|
| bpP:p11a:consumers | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:consumers@L211-L220 | Administrative requirement/consumer summary; outside every root closure of all seven track-P roots after removing pointer/provenance edges. Checked Parts 11, 11a-1 through 11a-5 and 13: no proof uses this remark; 11a3 gives its own finite-divisor and selection premises. |
| p11a2:prose-L30-L31 | FAIL | blueprint-P/parts/p11a2-cutoff-step.tex#prose@L30-L31 | External-facts list only; individual results are linked at actual proof uses. K:bp:p1:ext-integral must be imported and used by rl-deriv, cs-u and cs-assemble; being absent from the current import packet is not an exclusion justification. |
| p11a2:prose-L328-L328 | FAIL | blueprint-P/parts/p11a2-cutoff-step.tex#prose@L328-L328 | External-facts list only; individual results are linked at actual proof uses. K:bp:p1:ext-integral must be imported and used by rl-deriv, cs-u and cs-assemble; being absent from the current import packet is not an exclusion justification. |
| bpP:p11a:S1 | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:S1@L122-L122 | Missing labelled coverage item. Labelled premise item of bpP:p11a:sublevel; not an independent theorem or external. |
| bpP:p11a:S2 | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:S2@L123-L123 | Missing labelled coverage item. Labelled premise item of bpP:p11a:sublevel; not an independent theorem or external. |
| bpP:p11a:S3 | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:S3@L124-L124 | Missing labelled coverage item. Labelled premise item of bpP:p11a:sublevel; not an independent theorem or external. |
| bpP:p11a:D1 | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:D1@L152-L152 | Missing labelled coverage item. Labelled premise item of bpP:p11a:diophantine-measure; not an independent theorem or external. |
| bpP:p11a:D2 | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:D2@L153-L153 | Missing labelled coverage item. Labelled premise item of bpP:p11a:diophantine-measure; not an independent theorem or external. |
| bpP:p11a:D3 | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:D3@L157-L157 | Missing labelled coverage item. Labelled premise item of bpP:p11a:diophantine-measure; not an independent theorem or external. |
| bpP:p11a:D4 | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:D4@L158-L158 | Missing labelled coverage item. Labelled premise item of bpP:p11a:diophantine-measure; not an independent theorem or external. |
| bpP:p11a:I1 | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:I1@L214-L214 | Missing labelled coverage item. Item of the unused administrative consumers remark; no independent proof use (same seven-root closure check as its parent). |
| bpP:p11a:I2 | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:I2@L215-L215 | Missing labelled coverage item. Item of the unused administrative consumers remark; no independent proof use (same seven-root closure check as its parent). |
| bpP:p11a:I3 | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:I3@L216-L216 | Missing labelled coverage item. Item of the unused administrative consumers remark; no independent proof use (same seven-root closure check as its parent). |

| bpP:p11a:rank-compact | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:rank-compact@L50-L53 | Unused result/proof unit; exclude from every root closure. |
| stepP:p11a:rc-reduce | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:rc-reduce@L55-L55 | Unused result/proof unit; exclude from every root closure. |
| bpP:p11a:chart-scaling | FAIL | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:chart-scaling@L197-L206 | Unused result/proof unit; exclude from every root closure. |
| bpP:p11a:divisor-wide | FAIL | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:divisor-wide@L148-L152 | Unused result/proof unit; exclude from every root closure. |

all other coverage items PASS

## P-p11a12: complete replacements

Delete NODE bpP:p11a:consumers, bpP:p11a:rank-compact, stepP:p11a:rc-reduce, bpP:p11a:chart-scaling and bpP:p11a:divisor-wide. Their exact replacement dispositions are the EXCLUDED ITEM blocks below; no replacement NODE is appropriate for an excluded unit. All other replacements preserve every nonfailing field verbatim.


### P-p11a12 — stepP:p11a:st-1

```text
NODE: stepP:p11a:st-1
KIND: step
TITLE: $\rho=1$
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-1@L68-L68
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-1@L68-L68
CONTRACT_ID: stepP:p11a:st-1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:stability; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: rho=1
SOURCE_CONCLUSION: dgn(D^nu e_c(y)) <= theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:conv#data, bpP:p11a:index-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-1@L68-L68 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
EDGE: bpP:p11a:index-def | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-1@L68-L68 | The scalar family g_rho and e_c expressed using it.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:st-2

```text
NODE: stepP:p11a:st-2
KIND: step
TITLE: $\rho=2$
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-2@L69-L69
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-2@L69-L69
CONTRACT_ID: stepP:p11a:st-2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:stability; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: rho=2, for 0<=nu<=mu
SOURCE_CONCLUSION: dgn(D^nu e_c(y)) <= 2^nu theta (2M_0+theta)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:f-leib, bpP:p11a:conv#data, bpP:p11a:index-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:f-leib | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-2@L69-L69 | Leibniz formula with equal arguments for e_c = (f~-f)(f~+f)
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-2@L69-L69 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
EDGE: bpP:p11a:index-def | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-2@L69-L69 | The scalar family g_rho and e_c expressed using it.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:st-amount

```text
NODE: stepP:p11a:st-amount
KIND: step
TITLE: Amount
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-amount@L70-L70
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-amount@L70-L70
CONTRACT_ID: stepP:p11a:st-amount
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:stability; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: for each (c,y) in S^(m-1) x K and nu<=mu
SOURCE_CONCLUSION: beta_{rho,mu}(omega~,K) >= beta_{rho,mu}(omega,K) - eta_rho(theta) (triangle inequality for the seminorm dgn, then max over nu and min over (c,y))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:st-1, stepP:p11a:st-2, bpP:p11a:index-def, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:st-1 | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-amount@L70-L70 | bound eta_1(theta) on dgn(D^nu e_c) for rho=1
EDGE: stepP:p11a:st-2 | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-amount@L70-L70 | bound eta_2(theta) on dgn(D^nu e_c) for rho=2
EDGE: bpP:p11a:index-def | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-amount@L70-L70 | amount beta_{rho,mu} is the min-max of the definition
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:st-amount@L70-L70 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:dd-interp

```text
NODE: stepP:p11a:dd-interp
KIND: step
TITLE: Interpolation
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dd-interp@L89-L89
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dd-interp@L89-L89
CONTRACT_ID: stepP:p11a:dd-interp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:divided-difference; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: nodes t_0..t_q
SOURCE_CONCLUSION: the t^q-coefficient of P is c = sum_i f(t_i)/prod_{j!=i}(t_i-t_j), so P^(q) = q! c
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:f-rolle
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:f-rolle | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dd-interp@L89-L89 | Lagrange interpolation polynomial and its leading coefficient
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:dd-rolle

```text
NODE: stepP:p11a:dd-rolle
KIND: step
TITLE: Rolle
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dd-rolle@L90-L90
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dd-rolle@L90-L90
CONTRACT_ID: stepP:p11a:dd-rolle
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:divided-difference; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: u = f - P
SOURCE_CONCLUSION: there is xi in (t_0,t_q) with u^(q)(xi)=0, i.e. f^(q)(xi) = q! c
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:f-rolle, stepP:p11a:dd-interp
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:f-rolle | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dd-rolle@L90-L90 | Rolle q times applied to u
EDGE: stepP:p11a:dd-interp | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dd-rolle@L90-L90 | P and its q-th derivative q! c from the interpolation step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:ss-phi

```text
NODE: stepP:p11a:ss-phi
KIND: step
TITLE: Distribution function
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-phi@L100-L100
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-phi@L100-L100
CONTRACT_ID: stepP:p11a:ss-phi
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:scalar-sublevel; in the nontrivial branch L=meas E>0, E={t in [a,b]: ¦f(t)¦<=eps}; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: E measurable subset of [a,b]
SOURCE_CONCLUSION: phi(t) = meas(E ∩ [a,t]) is continuous and nondecreasing from phi(a)=0 to phi(b)=L
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:f-meas
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:f-meas | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-phi@L100-L100 | continuity and monotonicity of the distribution function
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:ss-nodes

```text
NODE: stepP:p11a:ss-nodes
KIND: step
TITLE: Equidistributed nodes in $E$
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-nodes@L101-L103
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-nodes@L101-L103
CONTRACT_ID: stepP:p11a:ss-nodes
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:scalar-sublevel; in the nontrivial branch L=meas E>0, E={t in [a,b]: ¦f(t)¦<=eps}; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: i=0..q
SOURCE_CONCLUSION: nodes t_0 = min E, t_i = min{t: phi(t) >= iL/q} lie in E, satisfy phi(t_i)=iL/q, t_0<...<t_q and t_j - t_i >= (j-i)L/q
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:ss-phi, bpP:p11a:f-meas
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:ss-phi | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-nodes@L101-L101 | distribution function phi used to define the nodes
EDGE: bpP:p11a:f-meas | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-nodes@L102-L102 | points have measure 0 and measure of E ∩ (t_i,t_j] <= t_j - t_i
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:ss-gaps

```text
NODE: stepP:p11a:ss-gaps
KIND: step
TITLE: Product of gaps
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-gaps@L104-L104
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-gaps@L104-L104
CONTRACT_ID: stepP:p11a:ss-gaps
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:scalar-sublevel; in the nontrivial branch L=meas E>0, E={t in [a,b]: ¦f(t)¦<=eps}; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: for each i
SOURCE_CONCLUSION: prod_{j!=i} ¦t_i-t_j¦ >= i! (q-i)! (L/q)^q
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:ss-nodes
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:ss-nodes | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-gaps@L104-L104 | gap bound t_j - t_i >= (j-i)L/q
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:ss-dd

```text
NODE: stepP:p11a:ss-dd
KIND: step
TITLE: Divided difference
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-dd@L105-L105
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-dd@L105-L105
CONTRACT_ID: stepP:p11a:ss-dd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:scalar-sublevel; in the nontrivial branch L=meas E>0, E={t in [a,b]: ¦f(t)¦<=eps}; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: nodes t_0..t_q in E
SOURCE_CONCLUSION: beta/q! <= ¦sum f(t_i)/prod(t_i-t_j)¦ <= eps 2^q (q/L)^q / q!, hence L^q <= (2q)^q eps/beta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:divided-difference, stepP:p11a:ss-nodes, stepP:p11a:ss-gaps
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:divided-difference | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-dd@L105-L105 | divided-difference identity gives xi with f^(q)(xi)/q! = the sum
EDGE: stepP:p11a:ss-nodes | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-dd@L105-L105 | nodes t_i lie in E so ¦f(t_i)¦<=eps
EDGE: stepP:p11a:ss-gaps | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:ss-dd@L105-L105 | lower bound on the products of gaps
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:bs-rot

```text
NODE: stepP:p11a:bs-rot
KIND: step
TITLE: Rotate
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-rot@L114-L114
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-rot@L114-L114
CONTRACT_ID: stepP:p11a:bs-rot
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:ball-sublevel; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: N>=1 (N=1: Q=±1)
SOURCE_CONCLUSION: y = y_0 + Q(x',t) preserves Lebesgue measure and maps {¦x'¦_2^2+t^2<=r^2} onto U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:f-orth, bpP:p11a:f-meas, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:f-orth | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-rot@L114-L114 | orthogonal matrix with last column a
EDGE: bpP:p11a:f-meas | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-rot@L114-L114 | orthogonal invariance of Lebesgue measure
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-rot@L114-L114 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:bs-sections

```text
NODE: stepP:p11a:bs-sections
KIND: step
TITLE: Sections
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-sections@L115-L115
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-sections@L115-L115
CONTRACT_ID: stepP:p11a:bs-sections
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:ball-sublevel; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: for each x'
SOURCE_CONCLUSION: section measure <= 2q (eps/beta)^(1/q) (zero if I_x' is a point)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:f-mvt, bpP:p11a:scalar-sublevel, stepP:p11a:bs-rot, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:f-mvt | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-sections@L115-L115 | chain rule d^q/dt^q g(x+ta) = D^q g(x+ta)(a^q)
EDGE: bpP:p11a:scalar-sublevel | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-sections@L115-L115 | one-variable sublevel estimate on each section
EDGE: stepP:p11a:bs-rot | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-sections@L115-L115 | rotated coordinates in which the sections are lines in direction a
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-sections@L115-L115 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:bs-tonelli

```text
NODE: stepP:p11a:bs-tonelli
KIND: step
TITLE: Tonelli
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-tonelli@L116-L116
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-tonelli@L116-L116
CONTRACT_ID: stepP:p11a:bs-tonelli
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:ball-sublevel; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: integrating over x'
SOURCE_CONCLUSION: meas{y in U: ¦g(y)¦<=eps} <= 2q (2r)^(N-1) (eps/beta)^(1/q)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:f-meas, stepP:p11a:bs-sections, stepP:p11a:bs-rot, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:f-meas | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-tonelli@L116-L116 | Tonelli on R^(N-1) x R
EDGE: stepP:p11a:bs-sections | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-tonelli@L116-L116 | section bound integrated over x'
EDGE: stepP:p11a:bs-rot | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-tonelli@L116-L116 | measure preserved in the rotated chart
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:bs-tonelli@L116-L116 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — bpP:p11a:sublevel#kappa

```text
NODE: bpP:p11a:sublevel#kappa
KIND: step
TITLE: Choice of kappa and r
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:sublevel#kappa@L132-L134
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:sublevel#kappa@L132-L134
CONTRACT_ID: bpP:p11a:sublevel#kappa
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N>=1; M>=beta>0, d=d_inf(K)>0, theta>0, with the norms and fixed data of bpP:p11a:sublevel.
SOURCE_QUANTIFIERS: N, d, theta, M, beta fixed; kappa, r defined
SOURCE_CONCLUSION: kappa = ceil((M/beta)(4+1/theta) sqrt(N) d) >= 1, r = sqrt(N) d/kappa satisfy kappa >= 4M sqrt(N) d/beta, kappa >= sqrt(N) d/theta, kappa <= (M/beta)(1+(4+1/theta) sqrt(N) d); hence M r <= beta/4 and r <= theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:sublevel#kappa@L132-L134 | d is the max-diameter and r the Euclidean covering radius.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Parameter choice at the opening of the proof (L132-L134), not marked as a proofstep.
```

### P-p11a12 — stepP:p11a:sl-cover

```text
NODE: stepP:p11a:sl-cover
KIND: step
TITLE: Cover by balls
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-cover@L135-L135
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-cover@L135-L135
CONTRACT_ID: stepP:p11a:sl-cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:sublevel; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: kappa^N subcubes of side d/kappa
SOURCE_CONCLUSION: K subset union of balls U_j = {¦y-b_j¦_2<=r} around points b_j in Q_j ∩ K (at most kappa^N of them), each U_j convex and contained in K_theta subset V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:sublevel#kappa, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:sublevel#kappa | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-cover@L135-L135 | kappa and r (r <= theta) of the choice step
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-cover@L135-L135 | K_theta, d_inf and Euclidean balls
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:sl-lower

```text
NODE: stepP:p11a:sl-lower
KIND: step
TITLE: A lower bound for the top-order derivative of $\tilde g$ on $U_j$
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-lower@L136-L138
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-lower@L136-L138
CONTRACT_ID: stepP:p11a:sl-lower
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:sublevel; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: for each j; y in U_j
SOURCE_CONCLUSION: ¦D^nu g~(y)(a^nu)¦ >= beta - M r - beta/2 >= beta/4 on U_j for nu(j)>=1, and ¦g~(y)¦ >= beta/4 > eps on U_j for nu(j)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:f-mvt, stepP:p11a:sl-cover, bpP:p11a:sublevel#kappa, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:f-mvt | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-lower@L136-L136 | mean value inequality along the segment from b_j to y
EDGE: stepP:p11a:sl-cover | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-lower@L136-L136 | balls U_j in K_theta and the centres b_j in K
EDGE: bpP:p11a:sublevel#kappa | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-lower@L136-L136 | M r <= beta/4
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-lower@L136-L138 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:sl-ball

```text
NODE: stepP:p11a:sl-ball
KIND: step
TITLE: One ball
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-ball@L139-L139
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-ball@L139-L139
CONTRACT_ID: stepP:p11a:sl-ball
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:sublevel; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: for each ball U_j
SOURCE_CONCLUSION: meas{y in U_j: ¦g~(y)¦<=eps} <= 8 mu (2r)^(N-1) (eps/beta)^(1/mu) (empty if nu(j)=0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:ball-sublevel, stepP:p11a:sl-lower, stepP:p11a:sl-cover, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:ball-sublevel | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-ball@L139-L139 | ball sublevel estimate for g~ in C^q with beta/4 in place of beta
EDGE: stepP:p11a:sl-lower | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-ball@L139-L139 | lower bound for the top-order derivative of g~ on U_j
EDGE: stepP:p11a:sl-cover | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-ball@L139-L139 | radius r of the balls
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-ball@L139-L139 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:sl-sum

```text
NODE: stepP:p11a:sl-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-sum@L140-L140
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-sum@L140-L140
CONTRACT_ID: stepP:p11a:sl-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:sublevel; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: summation over the cover
SOURCE_CONCLUSION: meas{y in K: ¦g~(y)¦<=eps} <= 2^(N+2) mu (sqrt(N) d)^(N-1) kappa (eps/beta)^(1/mu) <= C_sub (eps/beta)^(1/mu)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:f-meas, stepP:p11a:sl-ball, stepP:p11a:sl-cover, bpP:p11a:sublevel#kappa, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:f-meas | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-sum@L140-L140 | countable subadditivity of measure
EDGE: stepP:p11a:sl-ball | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-sum@L140-L140 | bound for each ball
EDGE: stepP:p11a:sl-cover | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-sum@L140-L140 | cover of K by at most kappa^N balls
EDGE: bpP:p11a:sublevel#kappa | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-sum@L140-L140 | bound for kappa inserted
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:sl-sum@L140-L140 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:dm-compact

```text
NODE: stepP:p11a:dm-compact
KIND: step
TITLE: Compactness
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-compact@L166-L166
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-compact@L166-L166
CONTRACT_ID: stepP:p11a:dm-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:diophantine-measure; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: for each k
SOURCE_CONCLUSION: H is an intersection of closed subsets of K, hence compact
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:dm-union

```text
NODE: stepP:p11a:dm-union
KIND: step
TITLE: Union of sublevel sets
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-union@L167-L167
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-union@L167-L167
CONTRACT_ID: stepP:p11a:dm-union
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:diophantine-measure; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: for each b in K\H
SOURCE_CONCLUSION: K\H is contained in the union over k!=0 of {b in K: ¦g_rho[omega~_k](c_k,b)¦<=eps_k}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:index-def, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:index-def | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-union@L167-L167 | g_rho[omega~_k](c_k,.) the scalar family of the definition
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-union@L167-L167 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:dm-onek

```text
NODE: stepP:p11a:dm-onek
KIND: step
TITLE: One $k$
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-onek@L168-L168
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-onek@L168-L168
CONTRACT_ID: stepP:p11a:dm-onek
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:diophantine-measure; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: for each k!=0
SOURCE_CONCLUSION: meas{b in K: ¦g~(b)¦<=eps_k} <= C_sub beta^(-1/mu) (Psi(k)/¦k¦_2)^(rho/mu)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:sublevel, stepP:p11a:dm-union, bpP:p11a:index-def, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:sublevel | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-onek@L168-L168 | sublevel estimate applied with (S1)-(S3) supplied by (D1)-(D3)
EDGE: stepP:p11a:dm-union | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-onek@L168-L168 | sublevel sets and thresholds eps_k, c_k
EDGE: bpP:p11a:index-def | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-onek@L168-L168 | (D1) at c_k: beta_{rho,mu}(omega,K)>=beta gives (S1)
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-onek@L168-L168 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:dm-sum

```text
NODE: stepP:p11a:dm-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-sum@L169-L169
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-sum@L169-L169
CONTRACT_ID: stepP:p11a:dm-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:diophantine-measure; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: sum over k!=0
SOURCE_CONCLUSION: meas(K\H) <= sum_k meas{¦g~_k¦<=eps_k} (countable subadditivity)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:f-meas, stepP:p11a:dm-union, stepP:p11a:dm-onek
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:f-meas | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-sum@L169-L169 | countable subadditivity of Lebesgue measure
EDGE: stepP:p11a:dm-union | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-sum@L169-L169 | covering of K\H by sublevel sets
EDGE: stepP:p11a:dm-onek | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:dm-sum@L169-L169 | measure bound for each k
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — bpP:p11a:power-law

```text
NODE: bpP:p11a:power-law
KIND: corollary
TITLE: Power-law divisors; the measure loss
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:power-law@L172-L181
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:power-law@L182-L186
CONTRACT_ID: bpP:p11a:power-law
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the setting of Theorem bpP:p11a:diophantine-measure (N,m,mu,rho,K,d,theta,V,omega,beta,M); tau > m mu/rho - 1, s = rho(tau+1)/mu - m > 0; gamma>0 with (sqrt(m) gamma)^rho < beta/4; (D1)-(D3) for all k!=0; H_gamma = {b in K: ¦k.omega~_k(b)¦>=gamma ¦k¦_1^(-tau) for all k!=0}
SOURCE_QUANTIFIERS: data of the theorem; then tau, gamma; for the consequence eps* in (0,meas K) and gamma <= gamma_*(eps*)
SOURCE_CONCLUSION: H_gamma compact and meas(K\H_gamma) <= C_Dio gamma^(rho/mu), C_Dio = C_sub beta^(-1/mu) m^(rho/(2mu)) 2 3^(m-1) (1+1/s); for every eps* in (0,meas K) and 0<gamma<=gamma_*(eps*) = min{(1/2) m^(-1/2) (beta/4)^(1/rho), (eps*/C_Dio)^(mu/rho)}: meas H_gamma >= meas K - eps*
CONSTANT_SCOPE: gamma_* depends only on (N,m,mu,rho,tau), (mu,beta), the chart constants (d,theta,M) and eps*; not on omega or omega~_k otherwise
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:pl-profile, stepP:p11a:pl-sum, stepP:p11a:pl-conc, bpP:p11a:diophantine-measure, bpP:p11a:conv#data, bpP:p11a:index-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:pl-profile | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:power-law@L183-L183 | proof step of this result
EDGE: stepP:p11a:pl-sum | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:power-law@L184-L184 | proof step of this result
EDGE: stepP:p11a:pl-conc | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:power-law@L185-L185 | proof step of this result
EDGE: bpP:p11a:diophantine-measure | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:power-law@L173-L173 | setting, hypotheses (D1)-(D3) and the measure bound with Psi(k) = gamma ¦k¦_1^(-tau)
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:power-law@L182-L186 | The stated Euclidean versus max/lattice norm comparison and the inherited dimension/diameter setting.
EDGE: bpP:p11a:index-def | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:power-law@L173-L174 | The inherited D1-D3 scalar-family and amount hypotheses.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:pl-profile

```text
NODE: stepP:p11a:pl-profile
KIND: step
TITLE: Profile
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-profile@L183-L183
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-profile@L183-L183
CONTRACT_ID: stepP:p11a:pl-profile
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:power-law; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: k!=0
SOURCE_CONCLUSION: For every k!=0, Psi(k)/¦k¦_2 <= sqrt(m) gamma ¦k¦_1^(-tau-1) <= sqrt(m) gamma, so (D4) of the theorem holds.
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-profile@L183-L183 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:pl-sum

```text
NODE: stepP:p11a:pl-sum
KIND: step
TITLE: Lattice sum
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-sum@L184-L184
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-sum@L184-L184
CONTRACT_ID: stepP:p11a:pl-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:power-law; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: sum over k!=0
SOURCE_CONCLUSION: sum_{k!=0} (Psi(k)/¦k¦_2)^(rho/mu) <= (sqrt(m) gamma)^(rho/mu) S(m,tau') = (sqrt(m) gamma)^(rho/mu) 2 3^(m-1) (s+1)/s
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:lattice-sum, stepP:p11a:pl-profile, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:lattice-sum | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-sum@L184-L184 | lattice sum bound for tau' > m-1 (item F5 restates it)
EDGE: stepP:p11a:pl-profile | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-sum@L184-L184 | comparison ¦k¦_2 >= ¦k¦_1/sqrt(m) and the profile
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-sum@L184-L184 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:pl-conc

```text
NODE: stepP:p11a:pl-conc
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-conc@L185-L185
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-conc@L185-L185
CONTRACT_ID: stepP:p11a:pl-conc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:power-law; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: conclusion for H_gamma and for gamma <= gamma_*
SOURCE_CONCLUSION: meas(K\H_gamma) <= C_Dio gamma^(rho/mu); for gamma <= gamma_*, (sqrt(m) gamma)^rho <= 2^(-rho) beta/4 < beta/4 and C_Dio gamma^(rho/mu) <= eps*
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:diophantine-measure, stepP:p11a:pl-sum, stepP:p11a:pl-profile, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:diophantine-measure | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-conc@L185-L185 | measure bound for K\H_gamma
EDGE: stepP:p11a:pl-sum | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-conc@L185-L185 | lattice sum estimate
EDGE: stepP:p11a:pl-profile | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-conc@L185-L185 | (D4) for the power-law profile
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:pl-conc@L185-L185 | The Euclidean/max-norm dictionary, tensor seminorms, or d and K_theta used in this source step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — bpP:p11a:limit-bridge

```text
NODE: bpP:p11a:limit-bridge
KIND: lemma
TITLE: From the mode-wise good set to a single Diophantine vector
STATEMENT_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:limit-bridge@L188-L192
PROOF_SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:limit-bridge@L193-L195
CONTRACT_ID: bpP:p11a:limit-bridge
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: gamma>0; tau in R; k in Z^m\{0}; u, v in R^m with ¦k.u¦>=2 gamma ¦k¦_1^(-tau) and ¦u-v¦_inf <= gamma ¦k¦_1^(-tau-1); for the consequence: b in H_{2gamma} of Corollary bpP:p11a:power-law (mode k tested against omega~_k) and a limiting frequency omega_*(b) with tail condition ¦omega_*(b)-omega~_k(b)¦_inf <= gamma ¦k¦_1^(-tau-1) for every k!=0
SOURCE_QUANTIFIERS: gamma, tau, k, u, v; then b, omega_*(b)
SOURCE_CONCLUSION: ¦k.v¦ >= gamma ¦k¦_1^(-tau); consequently omega_*(b) is (gamma,tau)-Diophantine in the frozen sense (Definition bpP:p0:diophantine)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:power-law, bpP:p0:diophantine#IsDiophantine, bpP:p11a:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:power-law | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:limit-bridge@L191-L191 | set H_{2gamma} of the consequence is the good set of the corollary with 2gamma
EDGE: bpP:p0:diophantine#IsDiophantine | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:limit-bridge@L191-L191 | conclusion is the frozen IsDiophantine property
EDGE: bpP:p11a:conv#data | blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:limit-bridge@L193-L195 | The stated Euclidean versus max/lattice norm comparison and the inherited dimension/diameter setting.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:fc-decay

```text
NODE: stepP:p11a:fc-decay
KIND: step
TITLE: Decay and Fourier series
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-decay@L57-L57
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-decay@L57-L57
CONTRACT_ID: stepP:p11a:fc-decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F holomorphic 1-periodic bounded on T_r; 0<d<r
SOURCE_QUANTIFIERS: componentwise coefficients
SOURCE_CONCLUSION: ¦F^_k¦ <= e^(-2 pi ¦k¦_1 r) norm(F)_r; F = sum F^_k chi_k on T_rho for rho<r; F - cut_T F = sum_{¦k¦_1>T} F^_k chi_k on T_(r-d); (c) cut_T F real if F real
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:decay, K:bp:p1:summation, bpP:p11a:domain-def, bpP:p11a:c2-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:decay | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-decay@L57-L57 | Fourier coefficient decay of a holomorphic periodic function
EDGE: K:bp:p1:summation | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-decay@L57-L57 | Fourier series converges to F on T_rho
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-decay@L57-L57 | cut_T, chi_k, F^_k
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-decay@L57-L57 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:fc-tail

```text
NODE: stepP:p11a:fc-tail
KIND: step
TITLE: Tail
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-tail@L59-L60
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-tail@L59-L60
CONTRACT_ID: stepP:p11a:fc-tail
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:fourier-cutoff; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: theta in T_(r-d)
SOURCE_CONCLUSION: ¦F - cut_T F¦ <= norm(F)_r sum_{¦k¦_1>T} e^(-2 pi ¦k¦_1 d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:x-duality, stepP:p11a:fc-decay, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:x-duality | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-tail@L59-L59 | ¦chi_k(theta)¦ <= exp(2 pi ¦k¦_1 ¦Im theta¦_inf)
EDGE: stepP:p11a:fc-decay | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-tail@L59-L59 | coefficient decay and the series of F - cut_T F
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-tail@L59-L60 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-tail@L59-L60 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:fc-count

```text
NODE: stepP:p11a:fc-count
KIND: step
TITLE: Count
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-count@L62-L63
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-count@L62-L63
CONTRACT_ID: stepP:p11a:fc-count
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:fourier-cutoff; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: grouping by j=¦k¦_1 > T
SOURCE_CONCLUSION: sum_{¦k¦_1>T} e^(-2 pi ¦k¦_1 d) <= 2 3^(N-1) sum_{j>T} j^(N-1) e^(-pi j d) e^(-pi j d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:lattice-count, stepP:p11a:fc-tail, bpP:p11a:c2-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:lattice-count | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-count@L62-L62 | number of lattice points on the l1 sphere ¦k¦_1 = j
EDGE: stepP:p11a:fc-tail | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-count@L62-L62 | the tail sum to be estimated
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-count@L62-L63 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:fc-poly

```text
NODE: stepP:p11a:fc-poly
KIND: step
TITLE: Polynomial against exponential
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-poly@L65-L65
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-poly@L65-L65
CONTRACT_ID: stepP:p11a:fc-poly
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:fourier-cutoff; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: sum over j>T
SOURCE_CONCLUSION: j^(N-1) e^(-pi j d) <= ((N-1)/(e pi d))^(N-1) and sum_{j>T} e^(-pi j d) <= e^(-pi T d)(1+1/(pi d))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:exp-sums, stepP:p11a:fc-count
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:exp-sums | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-poly@L65-L65 | polynomial against exponential bound (a) with tau=N-1, a=pi d
EDGE: stepP:p11a:fc-count | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-poly@L65-L65 | the sum over j>T whose factors are bounded
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:fc-assemble

```text
NODE: stepP:p11a:fc-assemble
KIND: step
TITLE: Assembly
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-assemble@L67-L67
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-assemble@L67-L67
CONTRACT_ID: stepP:p11a:fc-assemble
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:fourier-cutoff; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: assembly
SOURCE_CONCLUSION: tail sum <= 2 3^(N-1) ((N-1)/(e pi))^(N-1) (d^(-(N-1)) + d^(-N)/pi) e^(-pi T d) <= eps_N(T,d); this is (a), and (b) follows with the triangle inequality
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:fc-count, stepP:p11a:fc-poly, stepP:p11a:fc-tail, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:fc-count | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-assemble@L67-L67 | factor 2 3^(N-1) and the splitting into two exponentials
EDGE: stepP:p11a:fc-poly | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-assemble@L67-L67 | bounds of the polynomial and geometric factors
EDGE: stepP:p11a:fc-tail | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-assemble@L67-L67 | the tail estimate that (a) is concluded from
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-assemble@L67-L67 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:fc-assemble@L67-L67 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:lc-exponent

```text
NODE: stepP:p11a:lc-exponent
KIND: step
TITLE: The exponent
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:lc-exponent@L77-L77
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:lc-exponent@L77-L77
CONTRACT_ID: stepP:p11a:lc-exponent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:loss-choice; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: A = pi T d_T
SOURCE_CONCLUSION: A = log(2c_N/alpha) + N log(pi T) >= log 2 + N log pi > 1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:fourier-cutoff
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:fourier-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:lc-exponent@L77-L77 | c_N >= 1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:lc-estimate

```text
NODE: stepP:p11a:lc-estimate
KIND: step
TITLE: The estimate
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:lc-estimate@L79-L79
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:lc-estimate@L79-L79
CONTRACT_ID: stepP:p11a:lc-estimate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:loss-choice; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: estimate of eps_N(T,d_T)
SOURCE_CONCLUSION: eps_N(T,d_T) <= c_N 2 (pi T)^N (alpha/(2 c_N)) (pi T)^(-N) = alpha
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:lc-exponent, bpP:p11a:fourier-cutoff
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:lc-exponent | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:lc-estimate@L79-L79 | A>=1 gives d^(-N) <= (pi T)^N
EDGE: bpP:p11a:fourier-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:lc-estimate@L79-L79 | definition of eps_N(T,d)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:lc-mono

```text
NODE: stepP:p11a:lc-mono
KIND: step
TITLE: Monotonicity
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:lc-mono@L81-L81
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:lc-mono@L81-L81
CONTRACT_ID: stepP:p11a:lc-mono
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:loss-choice; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: T>=1, alpha
SOURCE_CONCLUSION: d/dT of (a+N log(pi T))/(pi T) is negative; the alpha-monotonicity is clear
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:fourier-cutoff
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:fourier-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:lc-mono@L81-L81 | c_N>=1 gives a >= log 2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — bpP:p11a:taylor-cutoff

```text
NODE: bpP:p11a:taylor-cutoff
KIND: lemma
TITLE: Taylor cutoff of order $1$ in $\eta$
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:taylor-cutoff@L97-L104
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:taylor-cutoff@L105-L111
CONTRACT_ID: bpP:p11a:taylor-cutoff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r,s>0; B subset C^N open; F: D(r,s;B) -> C^q admissible with M = norm(F)_(r,s;B) < inf; F^(<=1)(theta,eta,b) = F(theta,0,b) + d_eta F(theta,0,b) eta
SOURCE_QUANTIFIERS: r, s, B, F; then theta in T_r, b in B, and 0<q<1
SOURCE_CONCLUSION: F^(<=1) is admissible (entire in eta); (a) ¦d_(eta_j) F(theta,0,b)¦_inf <= M/s, ¦F^(<=1)¦ <= M(1+¦eta¦_inf/s), norm(F^(<=1))_(r,s;B) <= 2M; (b) for 0<q<1: norm(F - F^(<=1))_(r,qs;B) <= M q^2/(1-q)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:tc-line, stepP:p11a:tc-a, stepP:p11a:tc-b, bpP:p11a:domain-def, bpP:p11a:c2-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:tc-line | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:taylor-cutoff@L106-L106 | proof step of this result
EDGE: stepP:p11a:tc-a | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:taylor-cutoff@L108-L108 | proof step of this result
EDGE: stepP:p11a:tc-b | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:taylor-cutoff@L110-L110 | proof step of this result
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:taylor-cutoff@L98-L98 | D(r,s;B), admissible functions and sup norms
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:taylor-cutoff@L105-L111 | The action max norm and the parameter convention in the statement.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:tc-line

```text
NODE: stepP:p11a:tc-line
KIND: step
TITLE: One variable
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-line@L106-L106
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-line@L106-L106
CONTRACT_ID: stepP:p11a:tc-line
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:taylor-cutoff; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: fixed (theta,b) and eta!=0
SOURCE_CONCLUSION: g(zeta) = sum g_j zeta^j with ¦g_j¦ <= M s^(-j), g_0 = F(theta,0,b), g_1 = d_eta F(theta,0,b) eta/a
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:x-cauchy, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:x-cauchy | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-line@L106-L106 | Cauchy coefficient estimate in one variable
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-line@L106-L106 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-line@L106-L106 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:tc-a

```text
NODE: stepP:p11a:tc-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-a@L108-L108
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-a@L108-L108
CONTRACT_ID: stepP:p11a:tc-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:taylor-cutoff; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: (a)
SOURCE_CONCLUSION: ¦F^(<=1)¦ <= M + M a/s and ¦d_(eta_j) F(theta,0,b)¦ <= M/s
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-cauchy, stepP:p11a:tc-line, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-cauchy | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-a@L108-L108 | column bound by the Cauchy estimate along e_j
EDGE: stepP:p11a:tc-line | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-a@L108-L108 | coefficients g_0, g_1 with bounds M s^(-j)
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-a@L108-L108 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-a@L108-L108 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:tc-b

```text
NODE: stepP:p11a:tc-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-b@L110-L110
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-b@L110-L110
CONTRACT_ID: stepP:p11a:tc-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:taylor-cutoff; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: (b)
SOURCE_CONCLUSION: ¦F - F^(<=1)¦ = ¦sum_{j>=2} g_j a^j¦ <= M (a/s)^2/(1-a/s) <= M q^2/(1-q)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:tc-line, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:tc-line | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-b@L110-L110 | series of F along the line and its coefficient bounds
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-b@L110-L110 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:tc-b@L110-L110 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — bpP:p11a:cutoff

```text
NODE: bpP:p11a:cutoff
KIND: proposition
TITLE: The composed cutoff $R\mapsto R_*$
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:cutoff@L113-L124
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:cutoff@L125-L133
CONTRACT_ID: bpP:p11a:cutoff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>d>0, s>0, B subset C^N open, R: D(r,s;B) -> C admissible with eps = norm(R)_(r,s;B) < inf; T>=0, 0<q<1, E_T = eps_N(T,d); R_* = cut_T(R^(<=1)) = R_*0(theta,b) + R_*1(theta,b).eta, R_*0 = cut_T[R(.,0,.)], R_*1,j = cut_T[d_(eta_j) R(.,0,.)]
SOURCE_QUANTIFIERS: r, d, s, B, R, T, q
SOURCE_CONCLUSION: R_*0, R_*1,j are trigonometric polynomials of degree <=T, admissible on C^N x B; (a) norm(R_*0)_(r-d;B) <= (1+E_T) eps, norm(R_*1,j)_(r-d;B) <= (1+E_T) eps/s, norm(R_*)_(r-d,s;B) <= 2(1+E_T) eps; (b) norm(R-R_*)_(r-d,qs;B) <= eps (q^2/(1-q) + 2E_T); (c) R_* real if R real; with T=T_nu, d=d_nu, alpha=alpha_nu of Lemma bpP:p11a:loss-choice: E_T<=alpha and (b) reads <= eps(q^2/(1-q)+2 alpha)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:cu-coeff, stepP:p11a:cu-a, stepP:p11a:cu-b, stepP:p11a:cu-c, bpP:p11a:fourier-cutoff, bpP:p11a:taylor-cutoff, bpP:p11a:domain-def, bpP:p11a:loss-choice, bpP:p11a:c2-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:cu-coeff | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:cutoff@L126-L126 | proof step of this result
EDGE: stepP:p11a:cu-a | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:cutoff@L128-L128 | proof step of this result
EDGE: stepP:p11a:cu-b | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:cutoff@L130-L130 | proof step of this result
EDGE: stepP:p11a:cu-c | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:cutoff@L132-L132 | proof step of this result
EDGE: bpP:p11a:fourier-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:cutoff@L114-L114 | E_T = eps_N(T,d) and the truncation estimates (a)-(c)
EDGE: bpP:p11a:taylor-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:cutoff@L115-L115 | Taylor cutoff R^(<=1) of order 1 in eta
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:cutoff@L113-L113 | D(r,s;B), cut_T, admissible
EDGE: bpP:p11a:loss-choice | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:cutoff@L122-L122 | E_T <= alpha for d = d_T(alpha) <= 1
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:cutoff@L125-L133 | The action max norm and the parameter convention in the statement.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:cu-coeff

```text
NODE: stepP:p11a:cu-coeff
KIND: step
TITLE: Coefficients
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-coeff@L126-L126
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-coeff@L126-L126
CONTRACT_ID: stepP:p11a:cu-coeff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:cutoff; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: each k, b in B
SOURCE_CONCLUSION: b -> integral R(x,0,b) chi_(-k) dx is holomorphic; R_*0, R_*1,j are finite sums of these times characters, hence admissible
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p4:ext-param, bpP:p11a:domain-def, bpP:p11a:c2-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p4:ext-param | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-coeff@L126-L126 | holomorphy of parameter integrals
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-coeff@L126-L126 | Fourier coefficients and cut_T
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-coeff@L126-L126 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:cu-a

```text
NODE: stepP:p11a:cu-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-a@L128-L128
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-a@L128-L128
CONTRACT_ID: stepP:p11a:cu-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:cutoff; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: for each fixed (eta,b)
SOURCE_CONCLUSION: norm(R_*)_(r-d,s;B) <= 2(1+E_T) eps, norm(R_*0)_(r-d;B) <= (1+E_T) eps, norm(R_*1,j)_(r-d;B) <= (1+E_T) eps/s
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:fourier-cutoff, bpP:p11a:taylor-cutoff, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:fourier-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-a@L128-L128 | estimate (b) of the Fourier cutoff for each fixed (eta,b)
EDGE: bpP:p11a:taylor-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-a@L128-L128 | norm bounds for R^(<=1) and its eta-derivative from (a)
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-a@L128-L128 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-a@L128-L128 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:cu-b

```text
NODE: stepP:p11a:cu-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-b@L130-L130
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-b@L130-L130
CONTRACT_ID: stepP:p11a:cu-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:cutoff; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: on D(r-d,qs;B)
SOURCE_CONCLUSION: norm(R-R_*) <= eps q^2/(1-q) + 2 E_T eps
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:taylor-cutoff, bpP:p11a:fourier-cutoff, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:taylor-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-b@L130-L130 | Taylor remainder (b) for the first term
EDGE: bpP:p11a:fourier-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-b@L130-L130 | cutoff error (a) with norm(F)<=2 eps for the second term
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-b@L130-L130 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-b@L130-L130 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:cu-c

```text
NODE: stepP:p11a:cu-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-c@L132-L132
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-c@L132-L132
CONTRACT_ID: stepP:p11a:cu-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: R real for real (theta,eta,b)
SOURCE_QUANTIFIERS: reality
SOURCE_CONCLUSION: R^(<=1) is real at real points and so is R_*
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:fourier-cutoff, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:fourier-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-c@L132-L132 | (c): cut_T F is real when F is real
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-c@L132-L132 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cu-c@L132-L132 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:pc-poly

```text
NODE: stepP:p11a:pc-poly
KIND: step
TITLE: Polydisc
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:pc-poly@L143-L143
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:pc-poly@L143-L143
CONTRACT_ID: stepP:p11a:pc-poly
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:param-cauchy; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: zeta in C^j, ¦zeta_i¦<rho/j
SOURCE_CONCLUSION: G(zeta) = u(b + sum zeta_i a_i) is holomorphic and bounded by M on the polydisc, which lies in P(b',t) subset E+t
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:c2-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:pc-poly@L143-L143 | thickening E+t and polydisc P(b',t) subset E+t
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:pc-iter

```text
NODE: stepP:p11a:pc-iter
KIND: step
TITLE: Iterated Cauchy
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:pc-iter@L145-L145
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:pc-iter@L145-L145
CONTRACT_ID: stepP:p11a:pc-iter
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:param-cauchy; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: j iterated derivatives
SOURCE_CONCLUSION: D^j u(b)(a_1..a_j) = d_(zeta_1)..d_(zeta_j) G(0) is bounded by M (j/rho)^j; vector valued: componentwise with max norm
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:x-cauchy, stepP:p11a:pc-poly, bpP:p11a:c2-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:x-cauchy | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:pc-iter@L145-L145 | multivariable Cauchy estimate for mixed partials
EDGE: stepP:p11a:pc-poly | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:pc-iter@L145-L145 | the function G on the polydisc
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:pc-iter@L145-L145 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — bpP:p11a:homological-maximal

```text
NODE: bpP:p11a:homological-maximal
KIND: proposition
TITLE: Homological equation, maximal case with $\eta$-linear normal form
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L172-L185
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L186-L198
CONTRACT_ID: bpP:p11a:homological-maximal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E subset R^N, t>0, B = E+t, T>0, D>0; omega: B -> C^N holomorphic, real on B ∩ R^N, norm(D omega)<=L on B, t T L <= D/2 and ¦k.omega¦>=D on E for 0<¦k¦_1<=T (hypotheses of Lemma bpP:p11a:divisor-perturb); r_*>delta>0; P_0: C^N x B -> C, P_1 = (P_1,j): C^N x B -> C^N admissible trigonometric polynomials of degree <=T in theta with norm(P_0)_(r_*;B)<=M_0, norm(P_1,j)_(r_*;B)<=M_1; Lambda_delta as in sec-hom#lambda
SOURCE_QUANTIFIERS: E, t, T, D, omega, L, r_*, delta, P_0, P_1, M_0, M_1
SOURCE_CONCLUSION: there are unique admissible trigonometric polynomials phi_0, phi_1,j of degree <=T with zero average, holomorphic on C^N x B, such that omega(b).d_theta phi_0 = P_0 - <P_0>, omega(b).d_theta phi_1,j = P_1,j - <P_1,j>; (a) norm(phi_0)_(r_*-delta;B) <= Lambda_delta M_0/(pi D), likewise phi_1,j with M_1; (b) averages holomorphic on B bounded by M_0, M_1; (c) for 0<t'<t, j>=1, b in E+t', theta in T_(r_*-delta): norm(D_b^j phi_0) <= j^j Lambda_delta M_0 (pi D)^(-1) (t-t')^(-j), likewise phi_1,j, averages; (d) if P_0,P_1 are real on real points, reality for real (theta,b); (e) ¦phi^_1,j,k(b)¦ <= M_1 e^(-2 pi ¦k¦_1 r_*)/(pi D) for 0<¦k¦_1<=T; and {N_b,phi} = -(P - <P>) for phi = phi_0 + phi_1.eta, N_b = h + omega.eta, P = P_0 + P_1.eta
CONSTANT_SCOPE: phi_0, phi_1 unique given the data; constants depend only on N, delta, D, M_0, M_1
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:hm-div, stepP:p11a:hm-coeff, stepP:p11a:hm-a, stepP:p11a:hm-bc, stepP:p11a:hm-d, stepP:p11a:hm-bracket, bpP:p11a:divisor-perturb, bpP:p11a:sec-hom#lambda, bpP:p11a:c2-conv#bracket, bpP:p11a:domain-def, bpP:p11a:c2-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:hm-div | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L187-L187 | proof step of this result
EDGE: stepP:p11a:hm-coeff | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L189-L189 | proof step of this result
EDGE: stepP:p11a:hm-a | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L191-L191 | proof step of this result
EDGE: stepP:p11a:hm-bc | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L193-L193 | proof step of this result
EDGE: stepP:p11a:hm-d | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L195-L195 | proof step of this result
EDGE: stepP:p11a:hm-bracket | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L197-L197 | proof step of this result
EDGE: bpP:p11a:divisor-perturb | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L173-L173 | hypotheses t T L <= D/2 and divisors on E are those of the divisor-perturb lemma
EDGE: bpP:p11a:sec-hom#lambda | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L175-L175 | Lambda_delta of the estimates
EDGE: bpP:p11a:c2-conv#bracket | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L183-L183 | bracket convention for {N_b,phi}
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L173-L173 | admissible trigonometric polynomials, averages and norms
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:homological-maximal@L173-L173 | thickening B = E+t and norm of D omega
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:hm-div

```text
NODE: stepP:p11a:hm-div
KIND: step
TITLE: Divisors
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-div@L187-L187
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-div@L187-L187
CONTRACT_ID: stepP:p11a:hm-div
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:homological-maximal; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: 0<¦k¦_1<=T, b in B
SOURCE_CONCLUSION: ¦k.omega(b)¦ >= D/2 for all b in B
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:divisor-perturb, bpP:p11a:c2-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:divisor-perturb | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-div@L187-L187 | extension of the divisor bound from E to E+t
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-div@L187-L187 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:hm-coeff

```text
NODE: stepP:p11a:hm-coeff
KIND: step
TITLE: Coefficients
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-coeff@L189-L189
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-coeff@L189-L189
CONTRACT_ID: stepP:p11a:hm-coeff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:homological-maximal; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: coefficientwise
SOURCE_CONCLUSION: the equation holds iff phi^_0,k = p_k/(2 pi i k.omega(b)) for 0<¦k¦_1<=T and phi^_0,0 = 0; this defines phi_0 uniquely and holomorphically on B; likewise phi_1,j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:hm-div, stepP:p11a:cu-coeff, K:bp:p1:fourier-basic, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:hm-div | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-coeff@L189-L189 | non-vanishing divisors for the quotients
EDGE: stepP:p11a:cu-coeff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-coeff@L189-L189 | holomorphy of the Fourier coefficients p_k in b
EDGE: K:bp:p1:fourier-basic | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-coeff@L189-L189 | d_omega chi_k = 2 pi i (k.omega) chi_k
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-coeff@L189-L189 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-coeff@L189-L189 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:hm-a

```text
NODE: stepP:p11a:hm-a
KIND: step
TITLE: (a),(e)
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-a@L191-L191
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-a@L191-L191
CONTRACT_ID: stepP:p11a:hm-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:homological-maximal; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: theta in T_(r_*-delta)
SOURCE_CONCLUSION: ¦phi^_0,k¦ <= M_0 e^(-2 pi ¦k¦_1 r_*)/(pi D); ¦phi_0¦ <= Lambda_delta M_0/(pi D); same for phi_1,j; (e) is the coefficient bound
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:decay, stepP:p11a:hm-coeff, bpP:p11a:sec-hom#lambda, bpP:p11a:c2-conv#data, bpP:p11a:domain-def, stepP:p11a:hm-div
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:decay | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-a@L191-L191 | coefficient decay ¦p_k¦ <= M_0 e^(-2 pi ¦k¦_1 r_*)
EDGE: stepP:p11a:hm-coeff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-a@L191-L191 | formula for the coefficients phi^_0,k
EDGE: bpP:p11a:sec-hom#lambda | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-a@L191-L191 | sum_{k!=0} e^(-2 pi delta ¦k¦_1) = Lambda_delta
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-a@L191-L191 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-a@L191-L191 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: stepP:p11a:hm-div | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-a@L191-L191 | The direct bound ¦k.omega¦>=D/2 used to estimate the reciprocal divisor.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:hm-bc

```text
NODE: stepP:p11a:hm-bc
KIND: step
TITLE: (b),(c)
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bc@L193-L193
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bc@L193-L193
CONTRACT_ID: stepP:p11a:hm-bc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:homological-maximal; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: fixed theta
SOURCE_CONCLUSION: (b) ¦p_0¦ <= M_0 and p_0 holomorphic; (c) parameter Cauchy estimates for b -> phi_0(theta,b) on B = E+t with M = Lambda_delta M_0/(pi D)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:param-cauchy, K:bp:p1:decay, stepP:p11a:hm-a, stepP:p11a:hm-coeff, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:param-cauchy | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bc@L193-L193 | parameter Cauchy estimates of every order
EDGE: K:bp:p1:decay | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bc@L193-L193 | ¦p_0¦ <= M_0 (k=0)
EDGE: stepP:p11a:hm-a | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bc@L193-L193 | sup bound M = Lambda_delta M_0/(pi D) of phi_0
EDGE: stepP:p11a:hm-coeff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bc@L193-L193 | p_0 holomorphic
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bc@L193-L193 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bc@L193-L193 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:hm-d

```text
NODE: stepP:p11a:hm-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-d@L195-L195
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-d@L195-L195
CONTRACT_ID: stepP:p11a:hm-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data of bpP:p11a:homological-maximal; omega real on real b; P_0 and P_1 real on real (theta,b) for this conditional reality clause. Fourier conjugation is derived, not an additional hypothesis.
SOURCE_QUANTIFIERS: b real
SOURCE_CONCLUSION: conj(phi^_0,k) = phi^_0,-k, so phi_0 (likewise phi_1, averages) is real for real (theta,b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:hm-coeff, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:hm-coeff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-d@L195-L195 | coefficient formula phi^_0,k = p_k/(2 pi i k.omega)
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-d@L195-L195 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-d@L195-L195 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:hm-bracket

```text
NODE: stepP:p11a:hm-bracket
KIND: step
TITLE: The bracket
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bracket@L197-L197
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bracket@L197-L197
CONTRACT_ID: stepP:p11a:hm-bracket
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:homological-maximal; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: phi = phi_0 + phi_1.eta, P = P_0 + P_1.eta
SOURCE_CONCLUSION: {N_b,phi} = -omega.d_theta phi = -(P - <P>)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:hm-coeff, bpP:p11a:c2-conv#bracket, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:hm-coeff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bracket@L197-L197 | the equations solved by phi_0, phi_1
EDGE: bpP:p11a:c2-conv#bracket | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bracket@L197-L197 | bracket {u,v} = d_theta u.d_eta v - d_eta u.d_theta v
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bracket@L197-L197 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:hm-bracket@L197-L197 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — bpP:p11a:affine-flow

```text
NODE: bpP:p11a:affine-flow
KIND: lemma
TITLE: Flow of $\varphi_0(\theta)+\varphi_1(\theta)\cdot\eta$
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:affine-flow@L203-L216
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:affine-flow@L217-L227
CONTRACT_ID: bpP:p11a:affine-flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r_1>2 sigma>0, s>0, A_1>=0 with 4(N+1) A_1 <= sigma; phi_0: T_(r_1) -> C, phi_1: T_(r_1) -> C^N holomorphic 1-periodic with norm(phi_0)_(r_1)<=s A_1, ¦phi_1,j¦<=A_1; phi(theta,eta) = phi_0 + phi_1.eta, X_phi = (phi_1, -d_theta phi_0 - (D phi_1)^T eta), Omega = T_(r_1-sigma) x B_s, kappa = 2(N+1)A_1/sigma <= 1/2, A_eta = (N+1) s A_1/sigma <= s/4, nu = nu_(s/2,sigma) of N:bpN:p5:setting, Omega_h = T_(r_1-3sigma/2) x B_(3s/4), Omega_f = T_(r_1-2sigma) x B_(s/2)
SOURCE_QUANTIFIERS: N, r_1, sigma, s, A_1, phi_0, phi_1
SOURCE_CONCLUSION: (a) on Omega: ¦d_eta phi¦<=A_1, ¦d_theta phi¦<=A_eta, nu(X_phi)<=kappa<=1/2; (b) Phi = X_phi^1 defined and holomorphic on Omega_h, trajectories for ¦t¦<=1 stay in Omega, ¦Phi_theta-theta¦<=A_1, ¦Phi_eta-eta¦<=A_eta; (c) Phi(theta,eta) = (Theta(theta), M(theta) eta + m(theta)), Theta the time-one map of d_t theta = phi_1(theta), M = (D Theta)^(-T); (d) on Omega_f: ¦D Phi - 1¦_nu <= 2 kappa, ¦D Theta - 1¦, ¦M - 1¦ <= 2 kappa, ¦d_theta(M eta + m)¦ <= kappa s/sigma; (e) (D Phi)^T J D Phi = J, Phi(theta+k,eta) = Phi(theta,eta)+(k,0), reality if phi_0,phi_1 are real on R^N, Psi = X_phi^(-1) with Psi o Phi = id = Phi o Psi on Omega_f; (f) if B is open and (theta,b)->phi_i(theta,b) are jointly holomorphic with the same bounds for every b, then Phi_b is jointly holomorphic on B x Omega_h with the same bounds
CONSTANT_SCOPE: A_1 = 0 allowed (then phi=0, Phi=id); constants depend only on N, sigma, s, A_1
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:af-field, stepP:p11a:af-flow, stepP:p11a:af-simple, stepP:p11a:af-deriv, stepP:p11a:af-rest, N:bpN:p5:setting, N:bpN:p5:flow, bpP:p11a:domain-def, bpP:p11a:c2-conv#bracket, bpP:p11a:c2-conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:af-field | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:affine-flow@L218-L218 | proof step of this result
EDGE: stepP:p11a:af-flow | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:affine-flow@L220-L220 | proof step of this result
EDGE: stepP:p11a:af-simple | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:affine-flow@L222-L222 | proof step of this result
EDGE: stepP:p11a:af-deriv | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:affine-flow@L224-L224 | proof step of this result
EDGE: stepP:p11a:af-rest | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:affine-flow@L226-L226 | proof step of this result
EDGE: N:bpN:p5:setting | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:affine-flow@L206-L206 | weighted norm nu_(a,c) and polydiscs of track N
EDGE: N:bpN:p5:flow | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:affine-flow@L209-L209 | existence and domain Omega^(1/2) of the time-one flow
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:affine-flow@L204-L204 | T_r, periodic holomorphic functions and sup norm
EDGE: bpP:p11a:c2-conv#bracket | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:affine-flow@L204-L204 | field X_phi with angles first and J
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:affine-flow@L204-L204 | max norms
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:af-field

```text
NODE: stepP:p11a:af-field
KIND: step
TITLE: (a) Field
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-field@L218-L218
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-field@L218-L218
CONTRACT_ID: stepP:p11a:af-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi_0, phi_1 holomorphic on T_(r_1), bounds s A_1 and A_1; strip loss sigma
SOURCE_QUANTIFIERS: on Omega
SOURCE_CONCLUSION: ¦d_(theta_i) phi_0¦<=s A_1/sigma, ¦d_(theta_i) phi_1,j¦<=A_1/sigma, ¦d_theta phi¦<=A_eta, ¦d_eta phi¦<=A_1, nu(X_phi)<=kappa<=1/2; A_eta<=s/4 is 4(N+1)A_1<=sigma
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:cauchy-strip, N:bpN:p5:setting, bpP:p11a:c2-conv#data, bpP:p11a:domain-def, bpP:p11a:c2-conv#bracket
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:cauchy-strip | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-field@L218-L218 | Cauchy estimate on strips with loss sigma
EDGE: N:bpN:p5:setting | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-field@L218-L218 | norm nu = nu_(s/2,sigma) in which kappa is measured
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-field@L218-L218 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-field@L218-L218 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: bpP:p11a:c2-conv#bracket | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-field@L218-L218 | The Hamiltonian field or Poisson bracket in angle-first order.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:af-flow

```text
NODE: stepP:p11a:af-flow
KIND: step
TITLE: (b) Flow
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-flow@L220-L220
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-flow@L220-L220
CONTRACT_ID: stepP:p11a:af-flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:affine-flow; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: existence, displacement
SOURCE_CONCLUSION: Phi = X_phi^1 defined and holomorphic on Omega_h subset Omega^(1/2), trajectories in Omega, Omega_f subset Omega^1, ¦Phi_theta - theta¦ <= A_1, ¦Phi_eta - eta¦ <= A_eta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p5:flow, N:bpN:p5:setting, K:bp:p1:ext-mvt, stepP:p11a:af-field, bpP:p11a:c2-conv#data, bpP:p11a:domain-def, bpP:p11a:c2-conv#bracket
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p5:flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-flow@L220-L220 | existence and holomorphy of the time-one flow, parts (a),(b)
EDGE: N:bpN:p5:setting | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-flow@L220-L220 | balls B_nu(z,c) are the polydiscs P(z;c sigma, c s/2)
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-flow@L220-L220 | component bounds along a trajectory
EDGE: stepP:p11a:af-field | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-flow@L220-L220 | nu(X_phi) <= kappa <= 1/2 and the component bounds on the field
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-flow@L220-L220 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-flow@L220-L220 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: bpP:p11a:c2-conv#bracket | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-flow@L220-L220 | The Hamiltonian field or Poisson bracket in angle-first order.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:af-simple

```text
NODE: stepP:p11a:af-simple
KIND: step
TITLE: (c) Simple form
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-simple@L222-L222
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-simple@L222-L222
CONTRACT_ID: stepP:p11a:af-simple
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:affine-flow; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: on Omega_h
SOURCE_CONCLUSION: Phi_theta(theta_0,eta_0) = Theta(theta_0), Phi_eta = M(theta_0) eta_0 + m(theta_0) and M = (D Theta)^(-T)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p5:flow, bpP:p11a:x-ode, N:bpN:p5:symplectic, stepP:p11a:af-flow, bpP:p11a:c2-conv#data, bpP:p11a:domain-def, bpP:p11a:c2-conv#bracket
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p5:flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-simple@L222-L222 | uniqueness of trajectories (part (a))
EDGE: bpP:p11a:x-ode | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-simple@L222-L222 | linear inhomogeneous ODE is solved affinely in eta_0
EDGE: N:bpN:p5:symplectic | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-simple@L222-L222 | D Phi satisfies Y^T J Y = J
EDGE: stepP:p11a:af-flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-simple@L222-L222 | the flow Phi on Omega_h
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-simple@L222-L222 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-simple@L222-L222 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: bpP:p11a:c2-conv#bracket | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-simple@L222-L222 | The Hamiltonian field or Poisson bracket in angle-first order.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:af-deriv

```text
NODE: stepP:p11a:af-deriv
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-deriv@L224-L224
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-deriv@L224-L224
CONTRACT_ID: stepP:p11a:af-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:affine-flow; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: on Omega_f
SOURCE_CONCLUSION: ¦D Theta - 1¦, ¦M - 1¦ <= 2 kappa and ¦d_theta(M eta + m)¦ <= kappa s/sigma
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p5:flow, stepP:p11a:af-simple, stepP:p11a:af-flow, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p5:flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-deriv@L224-L224 | derivative estimate (c) of the flow
EDGE: stepP:p11a:af-simple | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-deriv@L224-L224 | block form of D Phi
EDGE: stepP:p11a:af-flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-deriv@L224-L224 | Omega_f subset Omega^1
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-deriv@L224-L224 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-deriv@L224-L224 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:af-rest

```text
NODE: stepP:p11a:af-rest
KIND: step
TITLE: (e),(f)
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-rest@L226-L226
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-rest@L226-L226
CONTRACT_ID: stepP:p11a:af-rest
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:affine-flow; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: items (e),(f)
SOURCE_CONCLUSION: canonical, periodic, real, invertible with Psi = X_(-phi)^1; Phi_b holomorphic jointly on B x Omega_h with the same bounds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: N:bpN:p5:symplectic, N:bpN:p5:flow, stepP:p11a:af-flow, stepP:p11a:af-field, bpP:p11a:c2-conv#data, bpP:p11a:domain-def, bpP:p11a:c2-conv#bracket
ROUTES: -
ROUTE_FOR: -
EDGE: N:bpN:p5:symplectic | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-rest@L226-L226 | symplecticity of the time-one flow
EDGE: N:bpN:p5:flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-rest@L226-L226 | periodicity, reality, inverse and holomorphy in the parameter
EDGE: stepP:p11a:af-flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-rest@L226-L226 | nu(X_phi)<=1/2 and the flow on Omega^(1/2)
EDGE: stepP:p11a:af-field | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-rest@L226-L226 | bound nu(X_phi)<=kappa for the parameter field
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-rest@L226-L226 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-rest@L226-L226 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: bpP:p11a:c2-conv#bracket | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:af-rest@L226-L226 | The Hamiltonian field or Poisson bracket in angle-first order.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:rl-global

```text
NODE: stepP:p11a:rl-global
KIND: step
TITLE: Global flow
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-global@L237-L237
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-global@L237-L237
CONTRACT_ID: stepP:p11a:rl-global
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:real-lipschitz; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: t, theta
SOURCE_CONCLUSION: global solutions; Theta^t(theta+k) = Theta^t(theta)+k (uniqueness); ¦Theta^t - theta¦ <= ¦t¦ sup ¦phi_1¦
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-global@L237-L237 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-global@L237-L237 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L237 asserts global existence and uniqueness for the nonlinear autonomous field phi_1 from smoothness, boundedness and Lipschitz continuity. x-ode L34 supplies only linear inhomogeneous ODEs and Gronwall, not this assertion. No represented supplier or reduction is given for this global nonlinear-flow bridge.
```

### P-p11a12 — stepP:p11a:rl-deriv

```text
NODE: stepP:p11a:rl-deriv
KIND: step
TITLE: Derivative
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-deriv@L239-L239
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-deriv@L239-L239
CONTRACT_ID: stepP:p11a:rl-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:real-lipschitz; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: ¦t¦<=1
SOURCE_CONCLUSION: ¦Y(t)¦ <= e^(Lambda ¦t¦) and ¦Y(t)-1¦ <= e^(Lambda ¦t¦) - 1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:x-ode, stepP:p11a:rl-global, bpP:p11a:c2-conv#data, K:bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:x-ode | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-deriv@L239-L239 | Gronwall bound for the variational equation
EDGE: stepP:p11a:rl-global | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-deriv@L239-L239 | global flow Theta^t
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-deriv@L239-L239 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: K:bp:p1:ext-integral | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-deriv@L239-L239 | The norm-of-integral bound (and fundamental theorem for the variational estimate) used directly at this line.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L239 asserts that D Theta^t exists and satisfies the variational equation. x-ode supplies linear ODE existence and Gronwall once that equation is known, but does not identify derivatives of the nonlinear global flow with its solution. That differentiability/variational bridge is asserted without a represented supplier here; the subsequent Gronwall and integral estimates remain explicit inputs.
```

### P-p11a12 — stepP:p11a:rl-const

```text
NODE: stepP:p11a:rl-const
KIND: step
TITLE: The constant
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-const@L241-L241
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-const@L241-L241
CONTRACT_ID: stepP:p11a:rl-const
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:real-lipschitz; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: row sums of D phi_1
SOURCE_CONCLUSION: Lambda <= 2 pi T max_i sum_{0<¦k¦_1<=T} ¦phi^_1,i,k¦ <= 2 T M_1 Lambda_(r_*)/D
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:homological-maximal, bpP:p11a:sec-hom#lambda, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:homological-maximal | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-const@L241-L241 | decay bound (e) on the Fourier coefficients of phi_1
EDGE: bpP:p11a:sec-hom#lambda | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-const@L241-L241 | sum_{k!=0} e^(-2 pi r_* ¦k¦_1) = Lambda_(r_*)
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-const@L241-L241 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:rl-const@L241-L241 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:cs-cutoff

```text
NODE: stepP:p11a:cs-cutoff
KIND: step
TITLE: Cutoff
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-cutoff@L270-L270
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-cutoff@L270-L270
CONTRACT_ID: stepP:p11a:cs-cutoff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:canonical-step; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: R_* = R_*0 + R_*1.eta
SOURCE_CONCLUSION: R_* is a trigonometric polynomial with norm(R_*0)_(r-d;B)<=M_0, norm(R_*1,j)_(r-d;B)<=M_1, norm(R_*)_(r-d,s;B)<=2 M_0, norm(R-R_*)_(r-d,qs;B) <= eps(q^2/(1-q)+2E_T)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:c2-conv#data, bpP:p11a:domain-def, bpP:p11a:cutoff
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-cutoff@L270-L270 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-cutoff@L270-L270 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: bpP:p11a:cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-cutoff@L270-L270 | Explicit application of bpP:p11a:cutoff with the substitutions and premises checked at this line.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:cs-hom

```text
NODE: stepP:p11a:cs-hom
KIND: step
TITLE: Homological equation
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-hom@L272-L272
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-hom@L272-L272
CONTRACT_ID: stepP:p11a:cs-hom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:canonical-step; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: P_0 = R_*0, P_1 = R_*1
SOURCE_CONCLUSION: phi on T_(r_1), r_1 = r-d-delta, with norm(phi_1,j)_(r_1;B) <= Lambda_delta M_1/(pi D) = A_1, norm(phi_0)_(r_1;B) <= s A_1, (i) from part (b) (Delta h = <R_*0>, ¦Delta h¦<=M_0) and {N_b,phi} = -(R_* - <R_*>) =: w
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:cs-cutoff, bpP:p11a:c2-conv#data, bpP:p11a:domain-def, bpP:p11a:c2-conv#bracket, bpP:p11a:sec-hom#lambda, bpP:p11a:homological-maximal
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:cs-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-hom@L272-L272 | R_* with the norm bounds M_0, M_1 is the input P of the homological equation
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-hom@L272-L272 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-hom@L272-L272 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: bpP:p11a:c2-conv#bracket | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-hom@L272-L272 | The Hamiltonian field or Poisson bracket in angle-first order.
EDGE: bpP:p11a:sec-hom#lambda | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-hom@L272-L272 | The named exponential lattice sum Lambda_delta or Lambda_(r_*) in the bound.
EDGE: bpP:p11a:homological-maximal | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-hom@L272-L272 | Explicit application of bpP:p11a:homological-maximal with the substitutions and premises checked at this line.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:cs-flow

```text
NODE: stepP:p11a:cs-flow
KIND: step
TITLE: Flow
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-flow@L274-L274
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-flow@L274-L274
CONTRACT_ID: stepP:p11a:cs-flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:canonical-step; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: fibrewise in b in B, with the parameter statement (f)
SOURCE_CONCLUSION: (ii): Phi_b holomorphic on D_+ jointly, with displacements A_1, A_eta, simple form, canonical, periodic, real, inverse
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:cs-hom, bpP:p11a:c2-conv#data, bpP:p11a:domain-def, bpP:p11a:affine-flow
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:cs-hom | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-flow@L274-L274 | phi_0, phi_1 with the bounds s A_1 and A_1 on T_(r_1)
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-flow@L274-L274 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-flow@L274-L274 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: bpP:p11a:affine-flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-flow@L274-L274 | Explicit application of bpP:p11a:affine-flow with the substitutions and premises checked at this line.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:cs-taylor

```text
NODE: stepP:p11a:cs-taylor
KIND: step
TITLE: Taylor identity
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-taylor@L276-L278
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-taylor@L276-L278
CONTRACT_ID: stepP:p11a:cs-taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:canonical-step; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: fixed b in B, z in D_+
SOURCE_CONCLUSION: H o Phi(z) = N_b(z) + {N_b,phi}(z) + R(z) + calR(z), calR = integral_0^1 {u_t,phi}(X_phi^t z) dt, u_t = (1-t) w + R; hence H o Phi = N_+ + R_+ with R_+ = (R - R_*) + calR, holomorphic in (theta,eta,b), periodic, real if the data are
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:affine-flow, N:bpN:p5:taylor, stepP:p11a:cs-hom, stepP:p11a:cs-cutoff, stepP:p11a:cs-flow, bpP:p11a:c2-conv#data, bpP:p11a:domain-def, bpP:p11a:c2-conv#bracket
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:affine-flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-taylor@L276-L276 | trajectory stays in Omega and z in Omega^(1/2)
EDGE: N:bpN:p5:taylor | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-taylor@L276-L276 | Taylor formula for (h+f_0) o X^1
EDGE: stepP:p11a:cs-hom | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-taylor@L276-L276 | bracket identity {N_b,phi} = w
EDGE: stepP:p11a:cs-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-taylor@L278-L278 | R - R_* in R_+
EDGE: stepP:p11a:cs-flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-taylor@L278-L278 | joint holomorphy of Phi in (theta,eta,b)
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-taylor@L276-L278 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-taylor@L276-L278 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: bpP:p11a:c2-conv#bracket | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-taylor@L276-L278 | The Hamiltonian field or Poisson bracket in angle-first order.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:cs-u

```text
NODE: stepP:p11a:cs-u
KIND: step
TITLE: Size of $u_t$
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-u@L280-L280
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-u@L280-L280
CONTRACT_ID: stepP:p11a:cs-u
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:canonical-step; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: t in [0,1]
SOURCE_CONCLUSION: ¦w¦ <= 4(1+E_T) eps and ¦u_t¦ <= U := eps(5+4E_T) (<= 9 eps)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:cs-cutoff, stepP:p11a:cs-taylor, bpP:p11a:c2-conv#data, bpP:p11a:domain-def, K:bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:cs-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-u@L280-L280 | norm bound of R_*
EDGE: stepP:p11a:cs-taylor | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-u@L280-L280 | definition of w and u_t
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-u@L280-L280 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-u@L280-L280 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: K:bp:p1:ext-integral | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-u@L280-L280 | The norm-of-integral bound (and fundamental theorem for the variational estimate) used directly at this line.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:cs-bracket

```text
NODE: stepP:p11a:cs-bracket
KIND: step
TITLE: Cauchy estimates for the bracket
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-bracket@L282-L283
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-bracket@L282-L283
CONTRACT_ID: stepP:p11a:cs-bracket
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:canonical-step; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: t in [0,1]
SOURCE_CONCLUSION: ¦d_(theta_i) u_t(z_t)¦ <= U/sigma, ¦d_(eta_i) u_t(z_t)¦ <= 4U/s, and ¦{u_t,phi}(z_t)¦ <= N(4N+5) U A_1/sigma
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:affine-flow, K:bp:p1:ext-cauchy, stepP:p11a:cs-u, stepP:p11a:cs-flow, bpP:p11a:c2-conv#data, bpP:p11a:domain-def, bpP:p11a:c2-conv#bracket
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:affine-flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-bracket@L282-L282 | displacement bounds and ¦d_eta phi¦<=A_1, ¦d_theta phi¦<=A_eta at z_t in Omega
EDGE: K:bp:p1:ext-cauchy | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-bracket@L282-L282 | Cauchy estimate one variable at a time
EDGE: stepP:p11a:cs-u | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-bracket@L282-L282 | bound U for u_t
EDGE: stepP:p11a:cs-flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-bracket@L282-L282 | trajectory z_t stays in T_(r_++A_1) x B_(qs+A_eta)
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-bracket@L282-L283 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-bracket@L282-L283 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: bpP:p11a:c2-conv#bracket | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-bracket@L282-L283 | The Hamiltonian field or Poisson bracket in angle-first order.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:cs-assemble

```text
NODE: stepP:p11a:cs-assemble
KIND: step
TITLE: Assembly
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-assemble@L285-L285
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-assemble@L285-L285
CONTRACT_ID: stepP:p11a:cs-assemble
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:canonical-step; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: on D_+
SOURCE_CONCLUSION: ¦calR¦ <= N(4N+5) U A_1/sigma; hence (iii) both forms of the bound for norm(R_+)_(D_+) (using q^2/(1-q)<=2q^2, (5+4E_T)(1+E_T)<=18)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:cs-bracket, stepP:p11a:cs-u, stepP:p11a:cs-hom, stepP:p11a:cs-taylor, bpP:p11a:c2-conv#data, bpP:p11a:domain-def, bpP:p11a:sec-hom#lambda, stepP:p11a:cs-cutoff, K:bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:cs-bracket | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-assemble@L285-L285 | bound for the Poisson bracket integrand
EDGE: stepP:p11a:cs-u | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-assemble@L285-L285 | U = eps(5+4E_T)
EDGE: stepP:p11a:cs-hom | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-assemble@L285-L285 | A_1 = Lambda_delta(1+E_T) eps/(pi D s)
EDGE: stepP:p11a:cs-taylor | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-assemble@L285-L285 | R_+ = (R-R_*) + calR
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-assemble@L285-L285 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-assemble@L285-L285 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: bpP:p11a:sec-hom#lambda | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-assemble@L285-L285 | The named exponential lattice sum Lambda_delta or Lambda_(r_*) in the bound.
EDGE: stepP:p11a:cs-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-assemble@L285-L285 | The R-R_* cutoff error inserted into the remainder bound.
EDGE: K:bp:p1:ext-integral | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-assemble@L285-L285 | The norm-of-integral bound (and fundamental theorem for the variational estimate) used directly at this line.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — stepP:p11a:cs-lip

```text
NODE: stepP:p11a:cs-lip
KIND: step
TITLE: Real Lipschitz bound
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-lip@L287-L287
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-lip@L287-L287
CONTRACT_ID: stepP:p11a:cs-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:canonical-step; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: real b in E, real theta
SOURCE_CONCLUSION: ¦D Theta_b - 1¦_inf <= e^(Lambda_R) - 1 with Lambda_R = 2T(1+E_T) eps Lambda_(r-d)/(D s), Theta_b(theta+k) = Theta_b(theta)+k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:real-lipschitz, bpP:p11a:homological-maximal, stepP:p11a:cs-hom, stepP:p11a:cs-flow, bpP:p11a:c2-conv#data, bpP:p11a:domain-def, bpP:p11a:sec-hom#lambda
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:real-lipschitz | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-lip@L287-L287 | Lipschitz bound for the angle map on the reals
EDGE: bpP:p11a:homological-maximal | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-lip@L287-L287 | coefficient bound (e) and reality (d) of phi_1
EDGE: stepP:p11a:cs-hom | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-lip@L287-L287 | phi_1 with the bounds used
EDGE: stepP:p11a:cs-flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-lip@L287-L287 | Theta_b of the flow of phi
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-lip@L287-L287 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-lip@L287-L287 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
EDGE: bpP:p11a:sec-hom#lambda | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-lip@L287-L287 | The named exponential lattice sum Lambda_delta or Lambda_(r_*) in the bound.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L287 invokes real-lipschitz and the real-data clause homological-maximal(d). These require phi_1 real, supplied when R is real on real points. canonical-step L248 makes reality of R optional, but clause (iv) and this application do not state that guard. The real-data implication is represented by the existing edges; the asserted unconditional real-flow estimate is under-supplied. No extra premise is inserted into the source theorem.
```

### P-p11a12 — stepP:p11a:cs-param

```text
NODE: stepP:p11a:cs-param
KIND: step
TITLE: Parameter derivatives
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-param@L289-L289
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-param@L289-L289
CONTRACT_ID: stepP:p11a:cs-param
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: The fixed source data and hypotheses of bpP:p11a:canonical-step; local constructions and previously proved bounds are supplied by the proof and DEPS, not additional premises.
SOURCE_QUANTIFIERS: 0<t'<t, j>=1
SOURCE_CONCLUSION: parameter Cauchy estimates (v) on E+t'
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:param-cauchy, stepP:p11a:cs-assemble, stepP:p11a:cs-flow, stepP:p11a:cs-hom, bpP:p11a:c2-conv#data, bpP:p11a:domain-def
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:param-cauchy | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-param@L289-L289 | Cauchy estimate of every order in the parameter
EDGE: stepP:p11a:cs-assemble | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-param@L289-L289 | bound of R_+ from (iii)
EDGE: stepP:p11a:cs-flow | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-param@L289-L289 | bounds A_1, A_eta of Phi_theta - theta, Phi_eta - eta
EDGE: stepP:p11a:cs-hom | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-param@L289-L289 | bounds for Delta h and Delta omega from (i)
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-param@L289-L289 | The max/operator norm, lattice norm or complex parameter thickening used in this step.
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#stepP:p11a:cs-param@L289-L289 | The strip/product domain, Fourier polynomial, average or admissible-function sup norm used here.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a12 — coverage bpP:p11a:consumers

```text
ITEM: bpP:p11a:consumers
KIND: claim
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:consumers@L211-L220
DISPOSITION: EXCLUDED
REASON: Administrative requirement/consumer summary; outside every root closure of all seven track-P roots after removing pointer/provenance edges. Checked Parts 11, 11a-1 through 11a-5 and 13: no proof uses this remark; 11a3 gives its own finite-divisor and selection premises.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
```

### P-p11a12 — coverage p11a2:prose-L30-L31

```text
ITEM: p11a2:prose-L30-L31
KIND: proof-region
SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#prose@L30-L31
DISPOSITION: EXCLUDED
REASON: External-facts list only; individual results are linked at actual proof uses. K:bp:p1:ext-integral must be imported and used by rl-deriv, cs-u and cs-assemble; being absent from the current import packet is not an exclusion justification.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
```

### P-p11a12 — coverage p11a2:prose-L328-L328

```text
ITEM: p11a2:prose-L328-L328
KIND: proof-region
SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#prose@L328-L328
DISPOSITION: EXCLUDED
REASON: External-facts list only; individual results are linked at actual proof uses. K:bp:p1:ext-integral must be imported and used by rl-deriv, cs-u and cs-assemble; being absent from the current import packet is not an exclusion justification.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
```

### P-p11a12 — coverage bpP:p11a:S1

```text
ITEM: bpP:p11a:S1
KIND: item
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:S1@L122-L122
DISPOSITION: NODE bpP:p11a:sublevel
REASON: Labelled premise item of bpP:p11a:sublevel; not an independent theorem or external.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-x
REVIEWER: -
```

### P-p11a12 — coverage bpP:p11a:S2

```text
ITEM: bpP:p11a:S2
KIND: item
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:S2@L123-L123
DISPOSITION: NODE bpP:p11a:sublevel
REASON: Labelled premise item of bpP:p11a:sublevel; not an independent theorem or external.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-x
REVIEWER: -
```

### P-p11a12 — coverage bpP:p11a:S3

```text
ITEM: bpP:p11a:S3
KIND: item
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:S3@L124-L124
DISPOSITION: NODE bpP:p11a:sublevel
REASON: Labelled premise item of bpP:p11a:sublevel; not an independent theorem or external.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-x
REVIEWER: -
```

### P-p11a12 — coverage bpP:p11a:D1

```text
ITEM: bpP:p11a:D1
KIND: item
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:D1@L152-L152
DISPOSITION: NODE bpP:p11a:diophantine-measure
REASON: Labelled premise item of bpP:p11a:diophantine-measure; not an independent theorem or external.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-x
REVIEWER: -
```

### P-p11a12 — coverage bpP:p11a:D2

```text
ITEM: bpP:p11a:D2
KIND: item
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:D2@L153-L153
DISPOSITION: NODE bpP:p11a:diophantine-measure
REASON: Labelled premise item of bpP:p11a:diophantine-measure; not an independent theorem or external.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-x
REVIEWER: -
```

### P-p11a12 — coverage bpP:p11a:D3

```text
ITEM: bpP:p11a:D3
KIND: item
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:D3@L157-L157
DISPOSITION: NODE bpP:p11a:diophantine-measure
REASON: Labelled premise item of bpP:p11a:diophantine-measure; not an independent theorem or external.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-x
REVIEWER: -
```

### P-p11a12 — coverage bpP:p11a:D4

```text
ITEM: bpP:p11a:D4
KIND: item
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:D4@L158-L158
DISPOSITION: NODE bpP:p11a:diophantine-measure
REASON: Labelled premise item of bpP:p11a:diophantine-measure; not an independent theorem or external.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-x
REVIEWER: -
```

### P-p11a12 — coverage bpP:p11a:I1

```text
ITEM: bpP:p11a:I1
KIND: item
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:I1@L214-L214
DISPOSITION: EXCLUDED
REASON: Item of the unused administrative consumers remark; no independent proof use (same seven-root closure check as its parent).
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-x
REVIEWER: -
```

### P-p11a12 — coverage bpP:p11a:I2

```text
ITEM: bpP:p11a:I2
KIND: item
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:I2@L215-L215
DISPOSITION: EXCLUDED
REASON: Item of the unused administrative consumers remark; no independent proof use (same seven-root closure check as its parent).
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-x
REVIEWER: -
```

### P-p11a12 — coverage bpP:p11a:I3

```text
ITEM: bpP:p11a:I3
KIND: item
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:I3@L216-L216
DISPOSITION: EXCLUDED
REASON: Item of the unused administrative consumers remark; no independent proof use (same seven-root closure check as its parent).
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-x
REVIEWER: -
```

### P-p11a12 — bpP:p11a:canonical-step

```text
NODE: bpP:p11a:canonical-step
KIND: proposition
TITLE: Canonical step in the maximal case
STATEMENT_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L247-L268
PROOF_SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L269-L290
CONTRACT_ID: bpP:p11a:canonical-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Data: N>=1; E subset R^N, t>0, B = E+t; r,s>0; h: B -> C and omega: B -> C^N holomorphic and real on real points; R: D(r,s;B) -> C admissible with eps = norm(R)_(r,s;B) < inf (eps=0 allowed: A_1=0, R_*=0, phi=0, Phi=id, R_+=0); N_b(theta,eta) = h(b) + omega(b).eta, H = N_b + R. Step parameters: T>0; d,delta,sigma>0 with r_+ = r-d-delta-2 sigma > 0; q in (0,1/2]; D>0; E_T = eps_N(T,d); A_1 = Lambda_delta (1+E_T) eps/(pi D s). (C1) E_T<=1; (C2) norm(D omega)<=L on B, t T L <= D/2, ¦k.omega(b')¦>=D for b' in E, 0<¦k¦_1<=T; (C3) 4(N+1) A_1 <= sigma
SOURCE_QUANTIFIERS: N, E, t, r, s, h, omega, R; then T, d, delta, sigma, q, D
SOURCE_CONCLUSION: with R_* = R_*0 + R_*1.eta the cutoff of Proposition bpP:p11a:cutoff, Delta h = <R_*0>, Delta omega = <R_*1>, N_+ = h + Delta h + (omega + Delta omega).eta, D_+ = D(r_+,qs;B), phi = phi_0 + phi_1.eta the solution of Proposition bpP:p11a:homological-maximal with P = R_*, r_* = r-d, M_0 = (1+E_T) eps, M_1 = M_0/s: (i) Delta h, Delta omega holomorphic on B with ¦Delta h¦<=(1+E_T) eps<=2 eps, ¦Delta omega¦_inf<=(1+E_T) eps/s, N_+ of the form of N; (ii) Phi_b = X_(phi_b)^1 defined and holomorphic on D_+ with values in D(r_++sigma,s;B), ¦Phi_theta-theta¦<=A_1<=sigma/(4(N+1)), ¦Phi_eta-eta¦<=A_eta<=s/4, Phi simple, canonical, periodic, real if the data are real, ¦D Phi - 1¦_nu<=2 kappa, invertible with inverse X_phi^(-1); (iii) H_b o Phi_b = N_+ + R_+ on D_+, where R_+ is holomorphic, 1-periodic in theta and real at real points if the data are real, with norm(R_+)_(D_+) <= eps (q^2/(1-q) + 2E_T) + N(4N+5)(5+4E_T)(1+E_T) Lambda_delta eps^2/(pi D s sigma) <= eps(2q^2+2E_T) + 18 N(4N+5) Lambda_delta eps^2/(pi D s sigma); (iv) for real b in E, real theta: ¦D Theta_b - 1¦_inf <= e^(Lambda_R) - 1, Lambda_R = 2T(1+E_T) eps Lambda_(r-d)/(D s), Theta_b(theta+k) = Theta_b(theta)+k; (v) parameter derivatives for 0<t'<t, j>=1 on E+t' at every (theta,eta) in D_+: bounds j^j(1+E_T) eps (t-t')^(-j), (…)/s, j^j A_1 (t-t')^(-j), j^j A_eta (t-t')^(-j), j^j norm(R_+) (t-t')^(-j)
CONSTANT_SCOPE: all data fixed first; T, d, delta, sigma, q, D then free subject to (C1)-(C3); constants depend only on N, delta, D, s, sigma, q, E_T
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:cs-cutoff, stepP:p11a:cs-hom, stepP:p11a:cs-flow, stepP:p11a:cs-taylor, stepP:p11a:cs-u, stepP:p11a:cs-bracket, stepP:p11a:cs-assemble, stepP:p11a:cs-lip, stepP:p11a:cs-param, bpP:p11a:fourier-cutoff, bpP:p11a:cutoff, bpP:p11a:homological-maximal, bpP:p11a:affine-flow, bpP:p11a:sec-hom#lambda, bpP:p11a:domain-def, bpP:p11a:c2-conv#data, bpP:p11a:c2-conv#bracket
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:cs-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L270-L270 | proof step of this result
EDGE: stepP:p11a:cs-hom | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L272-L272 | proof step of this result
EDGE: stepP:p11a:cs-flow | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L274-L274 | proof step of this result
EDGE: stepP:p11a:cs-taylor | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L276-L276 | proof step of this result
EDGE: stepP:p11a:cs-u | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L280-L280 | proof step of this result
EDGE: stepP:p11a:cs-bracket | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L282-L282 | proof step of this result
EDGE: stepP:p11a:cs-assemble | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L285-L285 | proof step of this result
EDGE: stepP:p11a:cs-lip | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L287-L287 | proof step of this result
EDGE: stepP:p11a:cs-param | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L289-L289 | proof step of this result
EDGE: bpP:p11a:fourier-cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L250-L250 | E_T = eps_N(T,d)
EDGE: bpP:p11a:cutoff | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L258-L258 | cutoff R_* of conclusions (i)-(iii)
EDGE: bpP:p11a:homological-maximal | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L258-L258 | solution phi of the homological equation and the normal form
EDGE: bpP:p11a:affine-flow | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L261-L261 | simple form, canonical and displacement statements for Phi
EDGE: bpP:p11a:sec-hom#lambda | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L250-L250 | Lambda_delta in A_1
EDGE: bpP:p11a:domain-def | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L248-L248 | D(r,s;B), admissible, norms
EDGE: bpP:p11a:c2-conv#data | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L248-L248 | thickening B = E+t and max norms
EDGE: bpP:p11a:c2-conv#bracket | blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:canonical-step@L258-L258 | bracket and field convention for H, X_phi, N_b
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```


### P-p11a12 — coverage bpP:p11a:rank-compact

```text
ITEM: bpP:p11a:rank-compact
KIND: lemma
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:rank-compact@L50-L53
DISPOSITION: EXCLUDED
REASON: outside every root closure of all seven track-P roots. Raw corpus search finds only the a1 outline, the optional e.g. in D1 L152 and forward-consumer prose L236; no proof applies it. The actual measure theorem assumes its finite-type amount as D1.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
```

### P-p11a12 — coverage stepP:p11a:rc-reduce

```text
ITEM: stepP:p11a:rc-reduce
KIND: proof-region
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#stepP:p11a:rc-reduce@L55-L55
DISPOSITION: EXCLUDED
REASON: proof step of the unused rank-compact lemma; no other proof consumes it, so it is outside every seven-root closure.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
```

### P-p11a12 — coverage bpP:p11a:chart-scaling

```text
ITEM: bpP:p11a:chart-scaling
KIND: lemma
SOURCE: blueprint-P/parts/p11a1-weak-measure.tex#bpP:p11a:chart-scaling@L197-L206
DISPOSITION: EXCLUDED
REASON: outside every seven-root closure. All raw corpus mentions are its own declaration/proof, the a1 outline and the L236 forward-consumer list; the claimed future 11a-5 use does not occur.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
```

### P-p11a12 — coverage bpP:p11a:divisor-wide

```text
ITEM: bpP:p11a:divisor-wide
KIND: lemma
SOURCE: blueprint-P/parts/p11a2-cutoff-step.tex#bpP:p11a:divisor-wide@L148-L152
DISPOSITION: EXCLUDED
REASON: outside every seven-root closure. a2 C2 L255 names a possible supplier of its independently stated divisor premise; a2 hand-offs are pointers. a3 finite-divisor L243/L251 proves the bound directly and names divisor-wide only as an interface/consistency comparison, not an applied input.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a12
REVIEWER: -
```

## Suspected blueprint defects and source gaps

A further source-premise gap occurs at a2 L287: “for real b in E, phi_1 is real” invokes homological-maximal(d), whose reality clause requires real P=R_*. But L248 allows R to be complex unless reality is wanted, while clause (iv) is stated without that guard. The replacement cs-lip NOTE exposes this unsupported application, without strengthening the theorem statement.

The two bounded-flow/variational assertions at a2 L237 and L239 are under-supplied by the labelled x-ode L34 contract, as recorded above. This is a blueprint dependency gap, not an allegation that either mathematical assertion is false. Exact text: L237 “phi_1 is smooth, bounded and Lipschitz, so solutions are global”; L239 “Y(t)=D Theta^t(theta) solves Y'=D phi_1(Theta^t theta)Y”. The given external establishes only linear ODE theory, so neither bridge is silently promoted to an imported result.

The source states conditional loss-choice use at a2 L122 by referring to the setting of that lemma; its d_T<=1 guard must remain part of that application. No replacement is made merely to expand that reference. The consumer remark already contains the corrected upper shell endpoint T_m; its historical correction notes do not create a new prerequisite. No pinned-paper erratum is asserted by this source-topology review.

## Validation

Original structural checker: `P-p11a12: 104 nodes, 278 edges, 169 coverage items, 0 problems, 0 TODO records (not counted: --structural)`. This does not detect the missing direct inputs or the unrepresented ODE bridges. All current CORPUS and IMPORTS hash entries pass. Final scoped-overlay and field-preservation checks are recorded below after validation. Only this report is written; no packets, SPEC, manifest, source or other review is edited, and no Lean/build or state-changing git command is run.

| Input | SHA-256 |
|---|---|
| docs/graph/P/packets/P-p11a12.nodes.md | `791043ddc35ac9c19bc0cea781018c831ec89d7b97c5ec5a52db6ec647d48ed8` |
| docs/graph/P/packets/P-p11a12.coverage.md | `18e782f8979e837fb38da86c917b59258149ea9382bea6c7cf95bdda13e73c39` |
| blueprint-P/parts/p11a1-weak-measure.tex | `66b5ce26db59b57dbf934938a7bae2fead6b6ff4c7c9d420d33b9582e272bab5` |
| blueprint-P/parts/p11a2-cutoff-step.tex | `990694a832aa02dca0138c5cbb3bab842984583f4ca92576479eff04786ed3ec` |

## For slice P-imports

Writer action: add this existing owner external to P-imports only, together with the ITEM below. Copying an already cited K external requires no new track-P external or SPEC extension. It is required by the three new direct consumer edges above. This section must be separated before applying the P-p11a12 blocks.

### P-imports — K:bp:p1:ext-integral

```text
NODE: K:bp:p1:ext-integral
KIND: external
TITLE: Integrals
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-integral@L82-L86
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:ext-integral
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: continuous function on a compact box; phi in C^1([a,b]); F W-valued with any norm on W; uniformly convergent series of continuous functions on a box; dominated convergence setting
SOURCE_QUANTIFIERS: the objects named in each clause
SOURCE_CONCLUSION: continuous function on a compact box is integrable and Fubini applies; int_a^b phi'=phi(b)-phi(a); |int F|<=int|F|; term-by-term integration of a uniformly convergent series of continuous functions on a box; dominated convergence theorem holds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sol-review-P-x
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:ext-integral; shared Lean provider. Source fields copied verbatim from the owning graph; external integral input.
```

```text
ITEM: K:bp:p1:ext-integral
KIND: external
SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-integral@L82-L86
DISPOSITION: NODE K:bp:p1:ext-integral
REASON: Imported existing K external; norm-of-integral and fundamental-theorem inputs at the explicit P consumers.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sol-review-P-x
REVIEWER: -
```

## Final validation receipt

The scoped in-memory overlay checks **104 node verdicts (76 FAIL, 28 PASS)**, **71 complete node replacements**, **five explicitly requested deletions**, and **17 coverage blocks (seven replacements and ten additions)**. The resulting P-p11a12 slice has 99 nodes and 179 coverage items. All 99 retained nodes are reachable from a declared root by consumer-to-prerequisite traversal, and none belongs to a directed cycle. Every retained dependency/route has one matching EDGE, every target exists once the separately supplied P-imports node is included, all locator bounds pass, and every LaTeX label is covered directly or as a heading. Node changes are confined to SOURCE_HYPOTHESES, SOURCE_CONCLUSION, DEPS/EDGE and NOTE; other fields remain verbatim.

Packet and source hashes in the snapshot table remain unchanged; whitespace checks pass. The P-FIXED identity read from the manifest is export `KAM.Planetary.fixedSunPlanetaryKAM`, file `KAM/Frozen/Planetary/Theorems/FixedSunPlanetaryKAM.lean`, ABI `a710d06469f0efa43a0eede7aa23e7e13216737ac0895ff11757e256903b2eec`, consistent with the SPEC revision. No assigned node is itself a frozen anchor. This receipt is a source-topology check, not mathematical or Lean proof closure.

Application order for the writer: separate the P-imports section, add that import in its owning packet, apply the P-p11a12 replacements/coverage, and delete the five named NODE blocks. The generic review applier does not implement deletions or separate owning-slice sections automatically, so a whole-report application to P-p11a12 is not appropriate.
