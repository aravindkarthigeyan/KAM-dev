# P-p11a12 delta topology review

Reviewer: sol-delta-P-ab

**Verdict: FAIL.** Reviewed exactly the 76 PROPOSED nodes and 155 PROPOSED coverage items: 69 node PASS, 7 node FAIL, and 155 coverage PASS. Five failures are deletions already requested by sol-review-P-x but not applied to the node packet; two are remaining conditional-conclusion errors. No REVIEWED record is re-adjudicated.

Authority: DELTA-BRIEF.md, REVIEW-BRIEF.md and SPEC.md, including the seven-root P-FIXED revision and writer rulings. The prior findings are in P-p11a12-review.md. This slice contains no restored records from PFIXED-restored-review.md.

Source keys: a1 = blueprint-P/parts/p11a1-weak-measure.tex; a2 = blueprint-P/parts/p11a2-cutoff-step.tex; a3 = blueprint-P/parts/p11a3-iteration-selection.tex. Read a1 L1-L239 and a2 L1-L333, including each recorded EDGE use site; checked the cross-part statements and imported statements listed below. A SOURCE_GAP verdict is about faithful representation, not proof closure.

## PROPOSED nodes

| ID | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpP:p11a:rank-compact | FAIL | a1#bpP:p11a:rank-compact@L50-L53; a1#bpP:p11a:rank-compact@L54-L56; a3 L239-L255; corpus reference search | DELETE NODE: outside every seven-root closure. The only external mentions are the outline, optional D1 example (a1 L152), and forward-consumer list (L236); no proof applies the lemma. |
| stepP:p11a:rc-reduce | FAIL | a1#stepP:p11a:rc-reduce@L55-L55; a3 L239-L255; corpus reference search | DELETE NODE: proof step of the unused rank-compact lemma, with no other consumer; outside every seven-root closure. |
| stepP:p11a:st-1 | PASS | a1#stepP:p11a:st-1@L68-L68 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:st-2 | PASS | a1#stepP:p11a:st-2@L69-L69 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:st-amount | PASS | a1#stepP:p11a:st-amount@L70-L70 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:dd-interp | PASS | a1#stepP:p11a:dd-interp@L89-L89 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:dd-rolle | PASS | a1#stepP:p11a:dd-rolle@L90-L90 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:ss-phi | PASS | a1#stepP:p11a:ss-phi@L100-L100 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:ss-nodes | PASS | a1#stepP:p11a:ss-nodes@L101-L103 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:ss-gaps | PASS | a1#stepP:p11a:ss-gaps@L104-L104 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:ss-dd | PASS | a1#stepP:p11a:ss-dd@L105-L105 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:bs-rot | PASS | a1#stepP:p11a:bs-rot@L114-L114 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:bs-sections | PASS | a1#stepP:p11a:bs-sections@L115-L115 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:bs-tonelli | PASS | a1#stepP:p11a:bs-tonelli@L116-L116 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| bpP:p11a:sublevel#kappa | PASS | a1#bpP:p11a:sublevel#kappa@L132-L134 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:sl-cover | PASS | a1#stepP:p11a:sl-cover@L135-L135 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:sl-lower | PASS | a1#stepP:p11a:sl-lower@L136-L138 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:sl-ball | PASS | a1#stepP:p11a:sl-ball@L139-L139 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:sl-sum | PASS | a1#stepP:p11a:sl-sum@L140-L140 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:dm-compact | PASS | a1#stepP:p11a:dm-compact@L166-L166 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:dm-union | PASS | a1#stepP:p11a:dm-union@L167-L167 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:dm-onek | PASS | a1#stepP:p11a:dm-onek@L168-L168 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:dm-sum | PASS | a1#stepP:p11a:dm-sum@L169-L169 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| bpP:p11a:power-law | PASS | a1#bpP:p11a:power-law@L172-L181; a1#bpP:p11a:power-law@L182-L186 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:pl-profile | PASS | a1#stepP:p11a:pl-profile@L183-L183 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:pl-sum | PASS | a1#stepP:p11a:pl-sum@L184-L184 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:pl-conc | PASS | a1#stepP:p11a:pl-conc@L185-L185 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| bpP:p11a:limit-bridge | PASS | a1#bpP:p11a:limit-bridge@L188-L192; a1#bpP:p11a:limit-bridge@L193-L195 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| bpP:p11a:chart-scaling | FAIL | a1#bpP:p11a:chart-scaling@L197-L206; a1#bpP:p11a:chart-scaling@L207-L209; a3 L239-L255; corpus reference search | DELETE NODE: outside every seven-root closure. The promised later use in a1 L236 never occurs in 11a-5; corpus search finds only its own statement/proof, outline and forward list. |
| bpP:p11a:consumers | FAIL | a1#bpP:p11a:consumers@L211-L220; a3 L239-L255; corpus reference search | DELETE NODE: administrative requirements/consumer summary. a2 L154 and a3 L244, L255, L325 are hand-offs, correction or provenance; the finite-divisor proof supplies its own premises. |
| stepP:p11a:fc-decay | PASS | a2#stepP:p11a:fc-decay@L57-L57 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:fc-tail | PASS | a2#stepP:p11a:fc-tail@L59-L60 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:fc-count | PASS | a2#stepP:p11a:fc-count@L62-L63 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:fc-poly | PASS | a2#stepP:p11a:fc-poly@L65-L65 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:fc-assemble | PASS | a2#stepP:p11a:fc-assemble@L67-L67 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:lc-exponent | PASS | a2#stepP:p11a:lc-exponent@L77-L77 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:lc-estimate | PASS | a2#stepP:p11a:lc-estimate@L79-L79 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:lc-mono | PASS | a2#stepP:p11a:lc-mono@L81-L81 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| bpP:p11a:taylor-cutoff | PASS | a2#bpP:p11a:taylor-cutoff@L97-L104; a2#bpP:p11a:taylor-cutoff@L105-L111 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:tc-line | PASS | a2#stepP:p11a:tc-line@L106-L106 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:tc-a | PASS | a2#stepP:p11a:tc-a@L108-L108 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:tc-b | PASS | a2#stepP:p11a:tc-b@L110-L110 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| bpP:p11a:cutoff | PASS | a2#bpP:p11a:cutoff@L113-L124; a2#bpP:p11a:cutoff@L125-L133 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:cu-coeff | PASS | a2#stepP:p11a:cu-coeff@L126-L126 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:cu-a | PASS | a2#stepP:p11a:cu-a@L128-L128 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:cu-b | PASS | a2#stepP:p11a:cu-b@L130-L130 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:cu-c | PASS | a2#stepP:p11a:cu-c@L132-L132 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:pc-poly | PASS | a2#stepP:p11a:pc-poly@L143-L143 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:pc-iter | PASS | a2#stepP:p11a:pc-iter@L145-L145 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| bpP:p11a:divisor-wide | FAIL | a2#bpP:p11a:divisor-wide@L148-L152; a2#bpP:p11a:divisor-wide@L153-L155; a3 L239-L255; corpus reference search | DELETE NODE: outside every seven-root closure. a2 C2 names a possible supplier; a3 L243 states the matching interface and L251 proves the inequality directly, then compares conclusions. Neither applies this lemma. |
| bpP:p11a:homological-maximal | PASS | a2#bpP:p11a:homological-maximal@L172-L185; a2#bpP:p11a:homological-maximal@L186-L198 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:hm-div | PASS | a2#stepP:p11a:hm-div@L187-L187 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:hm-coeff | PASS | a2#stepP:p11a:hm-coeff@L189-L189 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:hm-a | PASS | a2#stepP:p11a:hm-a@L191-L191 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:hm-bc | PASS | a2#stepP:p11a:hm-bc@L193-L193 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:hm-d | PASS | a2#stepP:p11a:hm-d@L195-L195 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:hm-bracket | PASS | a2#stepP:p11a:hm-bracket@L197-L197 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| bpP:p11a:affine-flow | PASS | a2#bpP:p11a:affine-flow@L203-L216; a2#bpP:p11a:affine-flow@L217-L227 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:af-field | PASS | a2#stepP:p11a:af-field@L218-L218 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:af-flow | PASS | a2#stepP:p11a:af-flow@L220-L220 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:af-simple | PASS | a2#stepP:p11a:af-simple@L222-L222 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:af-deriv | PASS | a2#stepP:p11a:af-deriv@L224-L224 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:af-rest | FAIL | a2#stepP:p11a:af-rest@L226-L226 | SOURCE_CONCLUSION still asserts unconditional reality and parameter holomorphy. a2 L213-L214 conditions reality on real phi_i and parameter holomorphy on an open B, joint holomorphy of phi_i and uniform bounds; L226 invokes these conditional clauses. |
| stepP:p11a:rl-global | PASS | a2#stepP:p11a:rl-global@L237-L237 | The prior FAIL is resolved by the explicit SOURCE_GAP; no unsupported premise is inserted and the remaining direct inputs agree with the source. |
| stepP:p11a:rl-deriv | PASS | a2#stepP:p11a:rl-deriv@L239-L239 | The prior FAIL is resolved by the explicit SOURCE_GAP; no unsupported premise is inserted and the remaining direct inputs agree with the source. |
| stepP:p11a:rl-const | PASS | a2#stepP:p11a:rl-const@L241-L241 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| bpP:p11a:canonical-step | PASS | a2#bpP:p11a:canonical-step@L247-L268; a2#bpP:p11a:canonical-step@L269-L290 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:cs-cutoff | PASS | a2#stepP:p11a:cs-cutoff@L270-L270 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:cs-hom | PASS | a2#stepP:p11a:cs-hom@L272-L272 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:cs-flow | FAIL | a2#stepP:p11a:cs-flow@L274-L274 | SOURCE_CONCLUSION still says real unconditionally. The source clause (ii), a2 L261, and applied affine-flow(e), L213, require real data; R reality is optional in L248. |
| stepP:p11a:cs-taylor | PASS | a2#stepP:p11a:cs-taylor@L276-L278 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:cs-u | PASS | a2#stepP:p11a:cs-u@L280-L280 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:cs-bracket | PASS | a2#stepP:p11a:cs-bracket@L282-L283 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:cs-assemble | PASS | a2#stepP:p11a:cs-assemble@L285-L285 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |
| stepP:p11a:cs-lip | PASS | a2#stepP:p11a:cs-lip@L287-L287 | The prior FAIL is resolved by the explicit SOURCE_GAP; no unsupported premise is inserted and the remaining direct inputs agree with the source. |
| stepP:p11a:cs-param | PASS | a2#stepP:p11a:cs-param@L289-L289 | Prior rewrite agrees with the source setting, conclusion and direct inputs; no further topology error. |

## PROPOSED coverage

| ID | Verdict | Source span re-read | Reason |
|---|---|---|---|
| bpP:p11a:f-lattice | PASS | a1#bpP:p11a:f-lattice@L35-L35 | Correct EXCLUDED disposition at this source unit. |
| bpP:p11a:rank-compact | PASS | a1#bpP:p11a:rank-compact@L50-L53 | The EXCLUDED disposition is correct; delete the residual node as specified above. |
| stepP:p11a:rc-reduce | PASS | a1#stepP:p11a:rc-reduce@L55-L55 | The EXCLUDED disposition is correct; delete the residual node as specified above. |
| stepP:p11a:st-1 | PASS | a1#stepP:p11a:st-1@L68-L68 | Correct NODE stepP:p11a:st-1 disposition at this source unit. |
| stepP:p11a:st-2 | PASS | a1#stepP:p11a:st-2@L69-L69 | Correct NODE stepP:p11a:st-2 disposition at this source unit. |
| stepP:p11a:st-amount | PASS | a1#stepP:p11a:st-amount@L70-L70 | Correct NODE stepP:p11a:st-amount disposition at this source unit. |
| stepP:p11a:dd-interp | PASS | a1#stepP:p11a:dd-interp@L89-L89 | Correct NODE stepP:p11a:dd-interp disposition at this source unit. |
| stepP:p11a:dd-rolle | PASS | a1#stepP:p11a:dd-rolle@L90-L90 | Correct NODE stepP:p11a:dd-rolle disposition at this source unit. |
| stepP:p11a:ss-phi | PASS | a1#stepP:p11a:ss-phi@L100-L100 | Correct NODE stepP:p11a:ss-phi disposition at this source unit. |
| stepP:p11a:ss-nodes | PASS | a1#stepP:p11a:ss-nodes@L101-L103 | Correct NODE stepP:p11a:ss-nodes disposition at this source unit. |
| stepP:p11a:ss-gaps | PASS | a1#stepP:p11a:ss-gaps@L104-L104 | Correct NODE stepP:p11a:ss-gaps disposition at this source unit. |
| stepP:p11a:ss-dd | PASS | a1#stepP:p11a:ss-dd@L105-L105 | Correct NODE stepP:p11a:ss-dd disposition at this source unit. |
| stepP:p11a:bs-rot | PASS | a1#stepP:p11a:bs-rot@L114-L114 | Correct NODE stepP:p11a:bs-rot disposition at this source unit. |
| stepP:p11a:bs-sections | PASS | a1#stepP:p11a:bs-sections@L115-L115 | Correct NODE stepP:p11a:bs-sections disposition at this source unit. |
| stepP:p11a:bs-tonelli | PASS | a1#stepP:p11a:bs-tonelli@L116-L116 | Correct NODE stepP:p11a:bs-tonelli disposition at this source unit. |
| stepP:p11a:sl-cover | PASS | a1#stepP:p11a:sl-cover@L135-L135 | Correct NODE stepP:p11a:sl-cover disposition at this source unit. |
| stepP:p11a:sl-lower | PASS | a1#stepP:p11a:sl-lower@L136-L138 | Correct NODE stepP:p11a:sl-lower disposition at this source unit. |
| stepP:p11a:sl-ball | PASS | a1#stepP:p11a:sl-ball@L139-L139 | Correct NODE stepP:p11a:sl-ball disposition at this source unit. |
| stepP:p11a:sl-sum | PASS | a1#stepP:p11a:sl-sum@L140-L140 | Correct NODE stepP:p11a:sl-sum disposition at this source unit. |
| bpP:p11a:sublevel-dev | PASS | a1#bpP:p11a:sublevel-dev@L143-L145 | Correct EXCLUDED disposition at this source unit. |
| stepP:p11a:dm-compact | PASS | a1#stepP:p11a:dm-compact@L166-L166 | Correct NODE stepP:p11a:dm-compact disposition at this source unit. |
| stepP:p11a:dm-union | PASS | a1#stepP:p11a:dm-union@L167-L167 | Correct NODE stepP:p11a:dm-union disposition at this source unit. |
| stepP:p11a:dm-onek | PASS | a1#stepP:p11a:dm-onek@L168-L168 | Correct NODE stepP:p11a:dm-onek disposition at this source unit. |
| stepP:p11a:dm-sum | PASS | a1#stepP:p11a:dm-sum@L169-L169 | Correct NODE stepP:p11a:dm-sum disposition at this source unit. |
| bpP:p11a:power-law | PASS | a1#bpP:p11a:power-law@L172-L181 | Correct NODE bpP:p11a:power-law disposition at this source unit. |
| stepP:p11a:pl-profile | PASS | a1#stepP:p11a:pl-profile@L183-L183 | Correct NODE stepP:p11a:pl-profile disposition at this source unit. |
| stepP:p11a:pl-sum | PASS | a1#stepP:p11a:pl-sum@L184-L184 | Correct NODE stepP:p11a:pl-sum disposition at this source unit. |
| stepP:p11a:pl-conc | PASS | a1#stepP:p11a:pl-conc@L185-L185 | Correct NODE stepP:p11a:pl-conc disposition at this source unit. |
| bpP:p11a:limit-bridge | PASS | a1#bpP:p11a:limit-bridge@L188-L192 | Correct NODE bpP:p11a:limit-bridge disposition at this source unit. |
| bpP:p11a:chart-scaling | PASS | a1#bpP:p11a:chart-scaling@L197-L206 | The EXCLUDED disposition is correct; delete the residual node as specified above. |
| bpP:p11a:consumers | PASS | a1#bpP:p11a:consumers@L211-L220 | The EXCLUDED disposition is correct; delete the residual node as specified above. |
| heading:bpP:p11a1 | PASS | a1#bpP:p11a1@L1-L1 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:conv | PASS | a1#bpP:p11a:conv@L15-L15 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:sec-rank | PASS | a1#bpP:p11a:sec-rank@L39-L39 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:sec-sublevel | PASS | a1#bpP:p11a:sec-sublevel@L80-L80 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:sec-dio | PASS | a1#bpP:p11a:sec-dio@L147-L147 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:notes | PASS | a1#bpP:p11a:notes@L222-L222 | Correct EXCLUDED disposition at this source unit. |
| p11a1:source-L47 | PASS | a1#source@L47-L47 | Correct EXCLUDED disposition at this source unit. |
| p11a1:source-L52 | PASS | a1#source@L52-L52 | Correct EXCLUDED disposition at this source unit. |
| p11a1:source-L64 | PASS | a1#source@L64-L64 | Correct EXCLUDED disposition at this source unit. |
| p11a1:source-L96 | PASS | a1#source@L96-L96 | Correct EXCLUDED disposition at this source unit. |
| p11a1:source-L111 | PASS | a1#source@L111-L111 | Correct EXCLUDED disposition at this source unit. |
| p11a1:source-L129 | PASS | a1#source@L129-L129 | Correct EXCLUDED disposition at this source unit. |
| p11a1:source-L163 | PASS | a1#source@L163-L163 | Correct EXCLUDED disposition at this source unit. |
| p11a1:source-L180 | PASS | a1#source@L180-L180 | Correct EXCLUDED disposition at this source unit. |
| p11a1:source-L205 | PASS | a1#source@L205-L205 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L4-L6 | PASS | a1#prose@L4-L6 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L8-L13 | PASS | a1#prose@L8-L13 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L17-L19 | PASS | a1#prose@L17-L19 | Correct NODE bpP:p11a:conv#data disposition at this source unit. |
| p11a1:prose-L21-L25 | PASS | a1#prose@L21-L25 | Correct NODE bpP:p11a:conv#data disposition at this source unit. |
| p11a1:prose-L27-L27 | PASS | a1#prose@L27-L27 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L29-L30 | PASS | a1#prose@L29-L30 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L82-L82 | PASS | a1#prose@L82-L82 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L224-L224 | PASS | a1#prose@L224-L224 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L226-L226 | PASS | a1#prose@L226-L226 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L228-L228 | PASS | a1#prose@L228-L228 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L230-L230 | PASS | a1#prose@L230-L230 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L232-L232 | PASS | a1#prose@L232-L232 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L234-L234 | PASS | a1#prose@L234-L234 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L236-L236 | PASS | a1#prose@L236-L236 | Correct EXCLUDED disposition at this source unit. |
| p11a1:prose-L238-L239 | PASS | a1#prose@L238-L239 | Correct EXCLUDED disposition at this source unit. |
| stepP:p11a:fc-decay | PASS | a2#stepP:p11a:fc-decay@L57-L57 | Correct NODE stepP:p11a:fc-decay disposition at this source unit. |
| stepP:p11a:fc-tail | PASS | a2#stepP:p11a:fc-tail@L59-L60 | Correct NODE stepP:p11a:fc-tail disposition at this source unit. |
| stepP:p11a:fc-count | PASS | a2#stepP:p11a:fc-count@L62-L63 | Correct NODE stepP:p11a:fc-count disposition at this source unit. |
| stepP:p11a:fc-poly | PASS | a2#stepP:p11a:fc-poly@L65-L65 | Correct NODE stepP:p11a:fc-poly disposition at this source unit. |
| stepP:p11a:fc-assemble | PASS | a2#stepP:p11a:fc-assemble@L67-L67 | Correct NODE stepP:p11a:fc-assemble disposition at this source unit. |
| stepP:p11a:lc-exponent | PASS | a2#stepP:p11a:lc-exponent@L77-L77 | Correct NODE stepP:p11a:lc-exponent disposition at this source unit. |
| stepP:p11a:lc-estimate | PASS | a2#stepP:p11a:lc-estimate@L79-L79 | Correct NODE stepP:p11a:lc-estimate disposition at this source unit. |
| stepP:p11a:lc-mono | PASS | a2#stepP:p11a:lc-mono@L81-L81 | Correct NODE stepP:p11a:lc-mono disposition at this source unit. |
| bpP:p11a:taylor-cutoff | PASS | a2#bpP:p11a:taylor-cutoff@L97-L104 | Correct NODE bpP:p11a:taylor-cutoff disposition at this source unit. |
| stepP:p11a:tc-line | PASS | a2#stepP:p11a:tc-line@L106-L106 | Correct NODE stepP:p11a:tc-line disposition at this source unit. |
| stepP:p11a:tc-a | PASS | a2#stepP:p11a:tc-a@L108-L108 | Correct NODE stepP:p11a:tc-a disposition at this source unit. |
| stepP:p11a:tc-b | PASS | a2#stepP:p11a:tc-b@L110-L110 | Correct NODE stepP:p11a:tc-b disposition at this source unit. |
| bpP:p11a:cutoff | PASS | a2#bpP:p11a:cutoff@L113-L124 | Correct NODE bpP:p11a:cutoff disposition at this source unit. |
| stepP:p11a:cu-coeff | PASS | a2#stepP:p11a:cu-coeff@L126-L126 | Correct NODE stepP:p11a:cu-coeff disposition at this source unit. |
| stepP:p11a:cu-a | PASS | a2#stepP:p11a:cu-a@L128-L128 | Correct NODE stepP:p11a:cu-a disposition at this source unit. |
| stepP:p11a:cu-b | PASS | a2#stepP:p11a:cu-b@L130-L130 | Correct NODE stepP:p11a:cu-b disposition at this source unit. |
| stepP:p11a:cu-c | PASS | a2#stepP:p11a:cu-c@L132-L132 | Correct NODE stepP:p11a:cu-c disposition at this source unit. |
| stepP:p11a:pc-poly | PASS | a2#stepP:p11a:pc-poly@L143-L143 | Correct NODE stepP:p11a:pc-poly disposition at this source unit. |
| stepP:p11a:pc-iter | PASS | a2#stepP:p11a:pc-iter@L145-L145 | Correct NODE stepP:p11a:pc-iter disposition at this source unit. |
| bpP:p11a:divisor-wide | PASS | a2#bpP:p11a:divisor-wide@L148-L152 | The EXCLUDED disposition is correct; delete the residual node as specified above. |
| bpP:p11a:homological-maximal | PASS | a2#bpP:p11a:homological-maximal@L172-L185 | Correct NODE bpP:p11a:homological-maximal disposition at this source unit. |
| stepP:p11a:hm-div | PASS | a2#stepP:p11a:hm-div@L187-L187 | Correct NODE stepP:p11a:hm-div disposition at this source unit. |
| stepP:p11a:hm-coeff | PASS | a2#stepP:p11a:hm-coeff@L189-L189 | Correct NODE stepP:p11a:hm-coeff disposition at this source unit. |
| stepP:p11a:hm-a | PASS | a2#stepP:p11a:hm-a@L191-L191 | Correct NODE stepP:p11a:hm-a disposition at this source unit. |
| stepP:p11a:hm-bc | PASS | a2#stepP:p11a:hm-bc@L193-L193 | Correct NODE stepP:p11a:hm-bc disposition at this source unit. |
| stepP:p11a:hm-d | PASS | a2#stepP:p11a:hm-d@L195-L195 | Correct NODE stepP:p11a:hm-d disposition at this source unit. |
| stepP:p11a:hm-bracket | PASS | a2#stepP:p11a:hm-bracket@L197-L197 | Correct NODE stepP:p11a:hm-bracket disposition at this source unit. |
| bpP:p11a:affine-flow | PASS | a2#bpP:p11a:affine-flow@L203-L216 | Correct NODE bpP:p11a:affine-flow disposition at this source unit. |
| stepP:p11a:af-field | PASS | a2#stepP:p11a:af-field@L218-L218 | Correct NODE stepP:p11a:af-field disposition at this source unit. |
| stepP:p11a:af-flow | PASS | a2#stepP:p11a:af-flow@L220-L220 | Correct NODE stepP:p11a:af-flow disposition at this source unit. |
| stepP:p11a:af-simple | PASS | a2#stepP:p11a:af-simple@L222-L222 | Correct NODE stepP:p11a:af-simple disposition at this source unit. |
| stepP:p11a:af-deriv | PASS | a2#stepP:p11a:af-deriv@L224-L224 | Correct NODE stepP:p11a:af-deriv disposition at this source unit. |
| stepP:p11a:af-rest | PASS | a2#stepP:p11a:af-rest@L226-L226 | Correct NODE stepP:p11a:af-rest disposition at this source unit. |
| stepP:p11a:rl-global | PASS | a2#stepP:p11a:rl-global@L237-L237 | Correct NODE stepP:p11a:rl-global disposition at this source unit. |
| stepP:p11a:rl-deriv | PASS | a2#stepP:p11a:rl-deriv@L239-L239 | Correct NODE stepP:p11a:rl-deriv disposition at this source unit. |
| stepP:p11a:rl-const | PASS | a2#stepP:p11a:rl-const@L241-L241 | Correct NODE stepP:p11a:rl-const disposition at this source unit. |
| bpP:p11a:canonical-step | PASS | a2#bpP:p11a:canonical-step@L247-L268 | Correct NODE bpP:p11a:canonical-step disposition at this source unit. |
| stepP:p11a:cs-cutoff | PASS | a2#stepP:p11a:cs-cutoff@L270-L270 | Correct NODE stepP:p11a:cs-cutoff disposition at this source unit. |
| stepP:p11a:cs-hom | PASS | a2#stepP:p11a:cs-hom@L272-L272 | Correct NODE stepP:p11a:cs-hom disposition at this source unit. |
| stepP:p11a:cs-flow | PASS | a2#stepP:p11a:cs-flow@L274-L274 | Correct NODE stepP:p11a:cs-flow disposition at this source unit. |
| stepP:p11a:cs-taylor | PASS | a2#stepP:p11a:cs-taylor@L276-L278 | Correct NODE stepP:p11a:cs-taylor disposition at this source unit. |
| stepP:p11a:cs-u | PASS | a2#stepP:p11a:cs-u@L280-L280 | Correct NODE stepP:p11a:cs-u disposition at this source unit. |
| stepP:p11a:cs-bracket | PASS | a2#stepP:p11a:cs-bracket@L282-L283 | Correct NODE stepP:p11a:cs-bracket disposition at this source unit. |
| stepP:p11a:cs-assemble | PASS | a2#stepP:p11a:cs-assemble@L285-L285 | Correct NODE stepP:p11a:cs-assemble disposition at this source unit. |
| stepP:p11a:cs-lip | PASS | a2#stepP:p11a:cs-lip@L287-L287 | Correct NODE stepP:p11a:cs-lip disposition at this source unit. |
| stepP:p11a:cs-param | PASS | a2#stepP:p11a:cs-param@L289-L289 | Correct NODE stepP:p11a:cs-param disposition at this source unit. |
| bpP:p11a:step-reading | PASS | a2#bpP:p11a:step-reading@L292-L294 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a2 | PASS | a2#bpP:p11a2@L1-L1 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:c2-conv | PASS | a2#bpP:p11a:c2-conv@L20-L20 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:sec-fourier | PASS | a2#bpP:p11a:sec-fourier@L40-L40 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:sec-taylor | PASS | a2#bpP:p11a:sec-taylor@L95-L95 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:sec-param | PASS | a2#bpP:p11a:sec-param@L136-L136 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:sec-hom | PASS | a2#bpP:p11a:sec-hom@L168-L168 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:sec-flow | PASS | a2#bpP:p11a:sec-flow@L201-L201 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:sec-step | PASS | a2#bpP:p11a:sec-step@L245-L245 | Correct EXCLUDED disposition at this source unit. |
| heading:bpP:p11a:notes2 | PASS | a2#bpP:p11a:notes2@L297-L297 | Correct EXCLUDED disposition at this source unit. |
| p11a2:source-L52 | PASS | a2#source@L52-L52 | Correct EXCLUDED disposition at this source unit. |
| p11a2:source-L74 | PASS | a2#source@L74-L74 | Correct EXCLUDED disposition at this source unit. |
| p11a2:source-L88 | PASS | a2#source@L88-L88 | Correct EXCLUDED disposition at this source unit. |
| p11a2:source-L103 | PASS | a2#source@L103-L103 | Correct EXCLUDED disposition at this source unit. |
| p11a2:source-L123 | PASS | a2#source@L123-L123 | Correct EXCLUDED disposition at this source unit. |
| p11a2:source-L140 | PASS | a2#source@L140-L140 | Correct EXCLUDED disposition at this source unit. |
| p11a2:source-L151 | PASS | a2#source@L151-L151 | Correct EXCLUDED disposition at this source unit. |
| p11a2:source-L161 | PASS | a2#source@L161-L161 | Correct EXCLUDED disposition at this source unit. |
| p11a2:source-L184 | PASS | a2#source@L184-L184 | Correct EXCLUDED disposition at this source unit. |
| p11a2:source-L215 | PASS | a2#source@L215-L215 | Correct EXCLUDED disposition at this source unit. |
| p11a2:source-L234 | PASS | a2#source@L234-L234 | Correct EXCLUDED disposition at this source unit. |
| p11a2:source-L267 | PASS | a2#source@L267-L267 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L4-L10 | PASS | a2#prose@L4-L10 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L12-L18 | PASS | a2#prose@L12-L18 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L22-L22 | PASS | a2#prose@L22-L22 | Correct NODE bpP:p11a:c2-conv#data disposition at this source unit. |
| p11a2:prose-L28-L28 | PASS | a2#prose@L28-L28 | Correct NODE bpP:p11a:c2-conv#bracket disposition at this source unit. |
| p11a2:prose-L30-L31 | PASS | a2#prose@L30-L31 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L37-L37 | PASS | a2#prose@L37-L37 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L170-L170 | PASS | a2#prose@L170-L170 | Correct NODE bpP:p11a:sec-hom#lambda disposition at this source unit. |
| p11a2:prose-L299-L299 | PASS | a2#prose@L299-L299 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L301-L311 | PASS | a2#prose@L301-L311 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L313-L313 | PASS | a2#prose@L313-L313 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L315-L315 | PASS | a2#prose@L315-L315 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L317-L324 | PASS | a2#prose@L317-L324 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L326-L326 | PASS | a2#prose@L326-L326 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L328-L328 | PASS | a2#prose@L328-L328 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L330-L330 | PASS | a2#prose@L330-L330 | Correct EXCLUDED disposition at this source unit. |
| p11a2:prose-L332-L333 | PASS | a2#prose@L332-L333 | Correct EXCLUDED disposition at this source unit. |
| bpP:p11a:S1 | PASS | a1#bpP:p11a:S1@L122-L122 | Correct NODE bpP:p11a:sublevel disposition at this source unit. |
| bpP:p11a:S2 | PASS | a1#bpP:p11a:S2@L123-L123 | Correct NODE bpP:p11a:sublevel disposition at this source unit. |
| bpP:p11a:S3 | PASS | a1#bpP:p11a:S3@L124-L124 | Correct NODE bpP:p11a:sublevel disposition at this source unit. |
| bpP:p11a:D1 | PASS | a1#bpP:p11a:D1@L152-L152 | Correct NODE bpP:p11a:diophantine-measure disposition at this source unit. |
| bpP:p11a:D2 | PASS | a1#bpP:p11a:D2@L153-L153 | Correct NODE bpP:p11a:diophantine-measure disposition at this source unit. |
| bpP:p11a:D3 | PASS | a1#bpP:p11a:D3@L157-L157 | Correct NODE bpP:p11a:diophantine-measure disposition at this source unit. |
| bpP:p11a:D4 | PASS | a1#bpP:p11a:D4@L158-L158 | Correct NODE bpP:p11a:diophantine-measure disposition at this source unit. |
| bpP:p11a:I1 | PASS | a1#bpP:p11a:I1@L214-L214 | Correct EXCLUDED disposition at this source unit. |
| bpP:p11a:I2 | PASS | a1#bpP:p11a:I2@L215-L215 | Correct EXCLUDED disposition at this source unit. |
| bpP:p11a:I3 | PASS | a1#bpP:p11a:I3@L216-L216 | Correct EXCLUDED disposition at this source unit. |

## P-p11a12 — deletion replacements

Delete only the five NODE blocks named by DELETE NODE in the node verdict table. There is no replacement NODE for an excluded source unit. Their complete coverage blocks below are already correct and are reproduced verbatim as the retained database disposition; they require no field changes. No other slice depends on these nodes; the only incoming packet edge among them is rank-compact -> rc-reduce. Removing both therefore leaves no dangling dependency.

### P-p11a12 — bpP:p11a:rank-compact

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

### P-p11a12 — stepP:p11a:rc-reduce

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

### P-p11a12 — bpP:p11a:chart-scaling

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

### P-p11a12 — bpP:p11a:consumers

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

### P-p11a12 — bpP:p11a:divisor-wide

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

## P-p11a12 — stepP:p11a:af-rest

Only SOURCE_CONCLUSION changes; every other field is preserved verbatim.

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
SOURCE_CONCLUSION: canonical, periodic, real if phi_0,phi_1 are real on R^N, invertible with Psi = X_(-phi)^1; if B is open and (theta,b)->phi_i(theta,b) are jointly holomorphic with the same bounds for every b, then Phi_b is holomorphic jointly on B x Omega_h with the same bounds
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
EXTRACTOR: sonnet-extract-P-p11a12+sol-review-P-x
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## P-p11a12 — stepP:p11a:cs-flow

Only SOURCE_CONCLUSION changes; every other field is preserved verbatim.

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
SOURCE_CONCLUSION: (ii): Phi_b holomorphic on D_+ jointly, with displacements A_1, A_eta, simple form, canonical, periodic, real if the data are real, inverse
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
EXTRACTOR: sonnet-extract-P-p11a12+sol-review-P-x
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Source and validation receipts

- Rechecked imported primary statements: K p1-analysis ext-cauchy L56-L66, ext-mvt L75-L78, ext-integral L82-L86, cauchy-strip L568-L574, exp-sums L727-L734, fourier-basic L757-L768, decay L786-L789 and summation L824-L831; K p4-measure lattice-count L53-L55 and lattice-sum L66-L71; N p4-weighted-norms ext-param L23-L25; N p5-canonical-maps setting L19-L26, flow L44-L54, symplectic L76-L81, taylor L121-L132. The integral import requested by the first review is now present. The decay estimate at the full strip width follows by taking the scalar limit of the owner statement as rho-prime increases to rho; it adds no premise.
- Rechecked the frozen IsDiophantine definition and Part 0 L44-L50 for limit-bridge, and the source section-data definitions a1 L17-L25 and a2 L22-L28. The period-one Fourier factors, explicit Euclidean/max conversions, full versus diagonal derivative norms and higher parameter-Cauchy bounds agree. No anchor identity is changed.
- The retained ODE gaps are faithful: linear x-ode does not state the nonlinear global flow or identify its derivative with the variational solution; no new external is introduced. The canonical-step real-Lipschitz gap also remains explicit at cs-lip. The added integral edges are actual norm-of-integral/FTC uses, and no alternative-route EDGE was added to these PROPOSED nodes.
- Structural command: python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p11a12 --structural
  Output: P-p11a12: 104 nodes, 380 edges, 179 coverage items, 0 problems, 0 TODO records (not counted: --structural). This is structural validation of the input packet, not a topology PASS.
- Report validation checks all 231 in-scope verdict rows exactly once within their respective node/coverage tables and confirms that the two replacement NODE blocks change only SOURCE_CONCLUSION. No packet, SPEC, blueprint, manifest or Lean file was edited; no Lean command or state-changing git command was run.

## Suspected blueprint defects

No new source defect beyond those already identified in the first review: a2 L237 asserts nonlinear global existence/uniqueness without a represented supplier; L239 attributes the variational identity to the linear ODE external; L287 asserts that phi_1 is real and applies real-lipschitz although L248 leaves reality of R optional. The existing SOURCE_GAP notes accurately expose these. The two replacement blocks above repair graph statement fields only; they do not repair the blueprint.

READY delta-P-ab
