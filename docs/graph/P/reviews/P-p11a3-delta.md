# P-p11a3 delta topology review

Reviewer: **sol-delta-P-ac**. Marker: **delta-P-ac**. Date: 2026-10-28.

**Verdict: FAIL.** Reviewed only the **31 PROPOSED nodes and 86 PROPOSED coverage items** of P-p11a3. Six node decisions FAIL (two outstanding deletions and four narrowly scoped edge repairs); 25 nodes and all 86 coverage items PASS. This is a source-topology verdict, not proof closure.

Applied DELTA-BRIEF, REVIEW-BRIEF and SPEC, including the P-FIXED revision, approved Y1-Y4 externals and Convergence rule. Compared the current records against P-p11a3-review.md (sol-review-P-y); PFIXED-restored-review.md concerns other slices, not additional records in this slice. Read the entire current 441-line Part 11a-3 and every proposed statement/proof/EDGE span, together with the referenced supplier statements in Parts 11a-1, 11a-2 and track K Part 1. No frozen anchor belongs to this slice.

## Snapshot

HEAD observed during review: `fadba2b0f6ddadee502c9fe4e53dfbdbd73e93db`. Packet and blueprint hashes below identify the reviewed contents; other agents may advance HEAD independently.

| File | SHA256 |
|---|---|
| `docs/graph/P/packets/P-p11a3.nodes.md` | `041677db30276230949a58bcf7229a98f8f3c60e2e300554f1735be15878e9dc` |
| `docs/graph/P/packets/P-p11a3.coverage.md` | `6abf1a7e39bcc5ca99263e1044e40fe49398d81fe848860edbaef4ac7f3ee818` |
| `blueprint-P/parts/p11a3-iteration-selection.tex` | `90251ed2045353dd2c9574b5f2c53588eb5762ea9dbc86ed9075c00bf8d9ad1c` |
| `blueprint-P/parts/p11a2-cutoff-step.tex` | `990694a832aa02dca0138c5cbb3bab842984583f4ca92576479eff04786ed3ec` |
| `blueprint-P/parts/p11a1-weak-measure.tex` | `66b5ce26db59b57dbf934938a7bae2fead6b6ff4c7c9d420d33b9582e272bab5` |
| `blueprint/parts/p1-analysis.tex` | `2afd058105b3de64042c142ec1c4eeba063b3c973e26ab980e7b668bc0232407` |

## Findings and resolved repairs

The original package additions, nonnegative-epsilon quantifiers, removal of the unnecessary adm-choice applications from finite-measure/fm-close, and the ab-lam output correction are present. Keep those repairs. The direct use of theta_max in fm-close still requires adm-params even when (A5) is locally assumed.

The geom-recursion coverage exclusions are correct, and il-c3 no longer depends on that helper. A search of all blueprint-P parts and all P node packets finds no other mathematical consumer. Its remaining mentions are its declaration/proof, outline/index, and the L304 pattern comparison. Delete both stale helper blocks; no replacement node is appropriate. The existing EXCLUDED coverage blocks already provide their complete replacement disposition and PASS unchanged.

The ps-lim SOURCE_GAP accurately records the continuous uniform-limit bridge on the compact real carrier K_infty. The imported K uniform-limits lemma instead requires holomorphic maps on one open complex domain and uniform derivative convergence (K Part 1 L364-L368). Do not restore that edge. This exposed gap passes topology review and remains a mathematical input to resolve separately.

Local step antecedents that summarize preceding estimates are read in their enclosing proof context with the recorded supplier edges, not as additional free premises of the enclosing theorem. No stylistic rewrite of those fields is requested. In particular, the assumed A inequalities of finite-measure must not be replaced by the special admissible-parameter theorem. Existing pointer/cycle removals remain valid.

## Proposed nodes

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p11a:geom-recursion | FAIL | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:geom-recursion@L58-L63`; `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:geom-recursion@L64-L66` | Delete the complete node: the only former consumer was the pattern-only il-c3 reference; the edge is now removed, but the requested node deletion was not applied. |
| stepP:p11a:gr-ind | FAIL | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:gr-ind@L65-L65` | Delete the complete node with geom-recursion: its sole consumer is that unreachable helper. |
| stepP:p11a:sb-solve | FAIL | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108` | Missing direct schedule-consts dependency for A_0 in the tangent-log estimate at L108; this definition is not supplied by sel-data or sb-sum. |
| stepP:p11a:sb-strip | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-strip@L110-L110` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:sb-err | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-err@L112-L112` | Current source fields, direct uses and prior repair agree with the source. |
| bpP:p11a:schedule-props | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L115-L125`; `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L126-L136` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:sp-1 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-1@L127-L127` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:sp-3 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-3@L131-L131` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:fe-supp | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-supp@L167-L167` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:fe-reg | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-reg@L169-L169` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:fe-cauchy | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-cauchy@L171-L171` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:fe-leib | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-leib@L173-L173` | Current source fields, direct uses and prior repair agree with the source. |
| bpP:p11a:adm-choice | FAIL | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L206-L218`; `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L219-L223` | Missing direct sel-data, schedule-consts and smooth-cutoff dependencies: the statement explicitly assumes sel-data and uses C_Q, varpi, A_0 and c′_{N,mu} in (A1)-(A7). Parameter definitions and child proof steps do not replace these direct package/constant uses. |
| stepP:p11a:ac-lam | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-lam@L220-L220` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:ac-list | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-list@L222-L222` | Current source fields, direct uses and prior repair agree with the source. |
| bpP:p11a:finite-measure | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:finite-measure@L258-L265`; `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:finite-measure@L266-L272` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:fm-close | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fm-close@L267-L267` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:il-p0 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-p0@L296-L296` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:il-c2 | FAIL | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300` | Remove the affine-flow dependency: L300 only says A_1>0 is required there, but the current supplier at Part 11a-2 L204 explicitly allows A_1=0. This step establishes C2 and uses no flow conclusion. |
| stepP:p11a:il-c1 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c1@L302-L302` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:il-c3 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c3@L304-L304` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:il-rem | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-rem@L306-L306` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:il-dom | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-dom@L310-L310` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:il-map | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-map@L312-L312` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:ps-lim | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-lim@L330-L330` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:ps-dio | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-dio@L334-L334` | Current source fields, direct uses and prior repair agree with the source. |
| bpP:p11a:exported-sums | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L340-L349`; `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L350-L358` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:es-2 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-2@L353-L353` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:es-3 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-3@L355-L355` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:es-4 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-4@L357-L357` | Current source fields, direct uses and prior repair agree with the source. |
| stepP:p11a:ab-lam | FAIL | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393` | Missing direct sel-data dependency for the normalization C_1>=1, explicitly used in branch (1) at L393. The parameter definition and earlier bounds do not supply this standing assumption as a direct package edge. |

## Proposed coverage

| ID | Verdict | Span re-read | Reason |
|---|---|---|---|
| bpP:p11a:geom-recursion | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:geom-recursion@L58-L63` | Correct exclusion of the unreachable helper; outstanding node deletion is recorded separately above. |
| stepP:p11a:gr-ind | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:gr-ind@L65-L65` | Correct exclusion of the unreachable helper; outstanding node deletion is recorded separately above. |
| stepP:p11a:sb-solve | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108` | Correct mapping to the named source node(s). |
| stepP:p11a:sb-strip | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-strip@L110-L110` | Correct mapping to the named source node(s). |
| stepP:p11a:sb-err | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-err@L112-L112` | Correct mapping to the named source node(s). |
| bpP:p11a:schedule-props | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:schedule-props@L115-L125` | Correct mapping to the named source node(s). |
| stepP:p11a:sp-1 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-1@L127-L127` | Correct mapping to the named source node(s). |
| stepP:p11a:sp-3 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sp-3@L131-L131` | Correct mapping to the named source node(s). |
| stepP:p11a:fe-supp | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-supp@L167-L167` | Correct mapping to the named source node(s). |
| stepP:p11a:fe-reg | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-reg@L169-L169` | Correct mapping to the named source node(s). |
| stepP:p11a:fe-cauchy | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-cauchy@L171-L171` | Correct mapping to the named source node(s). |
| stepP:p11a:fe-leib | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fe-leib@L173-L173` | Correct mapping to the named source node(s). |
| bpP:p11a:d7-verdict | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:d7-verdict@L176-L178` | Valid exclusion; no separate consumed fact is omitted. |
| bpP:p11a:adm-choice | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L206-L218` | Correct mapping to the named source node(s). |
| stepP:p11a:ac-lam | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-lam@L220-L220` | Correct mapping to the named source node(s). |
| stepP:p11a:ac-list | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ac-list@L222-L222` | Correct mapping to the named source node(s). |
| bpP:p11a:adm-branches | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-branches@L225-L229` | Valid exclusion; no separate consumed fact is omitted. |
| bpP:p11a:i3-corrected | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:i3-corrected@L254-L256` | Valid exclusion; no separate consumed fact is omitted. |
| bpP:p11a:finite-measure | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:finite-measure@L258-L265` | Correct mapping to the named source node(s). |
| stepP:p11a:fm-close | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:fm-close@L267-L267` | Correct mapping to the named source node(s). |
| stepP:p11a:il-p0 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-p0@L296-L296` | Correct mapping to the named source node(s). |
| stepP:p11a:il-c2 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300` | Correct mapping to the named source node(s). |
| stepP:p11a:il-c1 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c1@L302-L302` | Correct mapping to the named source node(s). |
| stepP:p11a:il-c3 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c3@L304-L304` | Correct mapping to the named source node(s). |
| stepP:p11a:il-rem | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-rem@L306-L306` | Correct mapping to the named source node(s). |
| stepP:p11a:il-dom | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-dom@L310-L310` | Correct mapping to the named source node(s). |
| stepP:p11a:il-map | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-map@L312-L312` | Correct mapping to the named source node(s). |
| stepP:p11a:ps-lim | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-lim@L330-L330` | Correct mapping to the named source node(s). |
| stepP:p11a:ps-dio | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ps-dio@L334-L334` | Correct mapping to the named source node(s). |
| bpP:p11a:exported-sums | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:exported-sums@L340-L349` | Correct mapping to the named source node(s). |
| stepP:p11a:es-2 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-2@L353-L353` | Correct mapping to the named source node(s). |
| stepP:p11a:es-3 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-3@L355-L355` | Correct mapping to the named source node(s). |
| stepP:p11a:es-4 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:es-4@L357-L357` | Correct mapping to the named source node(s). |
| stepP:p11a:ab-lam | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393` | Correct mapping to the named source node(s). |
| bpP:p11a:adm-budget-necessary | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-budget-necessary@L398-L400` | Valid exclusion; no separate consumed fact is omitted. |
| heading:bpP:p11a3 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a3@L1-L1` | Valid exclusion; no separate consumed fact is omitted. |
| heading:bpP:p11a:s3-conv | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:s3-conv@L28-L28` | Valid exclusion; no separate consumed fact is omitted. |
| heading:bpP:p11a:sec-consts | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:sec-consts@L54-L54` | Valid exclusion; no separate consumed fact is omitted. |
| heading:bpP:p11a:sec-schedule | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:sec-schedule@L88-L88` | Valid exclusion; no separate consumed fact is omitted. |
| heading:bpP:p11a:sec-chain | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:sec-chain@L139-L139` | Valid exclusion; no separate consumed fact is omitted. |
| heading:bpP:p11a:sec-init | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:sec-init@L181-L181` | Valid exclusion; no separate consumed fact is omitted. |
| heading:bpP:p11a:sec-retained | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:sec-retained@L232-L232` | Valid exclusion; no separate consumed fact is omitted. |
| heading:bpP:p11a:sec-induct | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:sec-induct@L275-L275` | Valid exclusion; no separate consumed fact is omitted. |
| heading:bpP:p11a:sec-select | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:sec-select@L315-L315` | Valid exclusion; no separate consumed fact is omitted. |
| heading:bpP:p11a:sec-export | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:sec-export@L338-L338` | Valid exclusion; no separate consumed fact is omitted. |
| heading:bpP:p11a:sec-num | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:sec-num@L370-L370` | Valid exclusion; no separate consumed fact is omitted. |
| heading:bpP:p11a:notes3 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:notes3@L417-L417` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L62 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L62-L62` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L74 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L74-L74` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L81 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L81-L81` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L103 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L103-L103` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L124 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L124-L124` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L148 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L148-L148` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L164 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L164-L164` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L189 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L189-L189` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L203 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L203-L203` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L244 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L244-L244` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L264 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L264-L264` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L293 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L293-L293` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L325 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L325-L325` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L348 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L348-L348` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L382 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L382-L382` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:source-L406 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#source@L406-L406` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L4-L10 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L4-L10` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L12-L12 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L12-L12` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L14-L14 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L14-L14` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L16-L23 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L16-L23` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L25-L25 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L25-L25` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L30-L30 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L30-L30` | Correct mapping to the named source node(s). |
| p11a3:prose-L41-L41 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L41-L41` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L43-L49 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L43-L49` | Correct mapping to the named source node(s). |
| p11a3:prose-L51-L51 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L51-L51` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L56-L56 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L56-L56` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L141-L141 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L141-L141` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L234-L238 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L234-L238` | Correct mapping to the named source node(s). |
| p11a3:prose-L360-L367 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L360-L367` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L372-L372 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L372-L372` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L412-L412 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L412-L412` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L414-L414 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L414-L414` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L419-L419 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L419-L419` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L421-L430 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L421-L430` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L432-L432 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L432-L432` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L434-L434 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L434-L434` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L436-L436 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L436-L436` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L438-L438 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L438-L438` | Valid exclusion; no separate consumed fact is omitted. |
| p11a3:prose-L440-L441 | PASS | `blueprint-P/parts/p11a3-iteration-selection.tex#prose@L440-L441` | Valid exclusion; no separate consumed fact is omitted. |

## Replacements

Only the failing fields change. All other fields, including current extractor/status/reviewer metadata, are preserved.

### P-p11a3 — bpP:p11a:geom-recursion

Delete the complete node block identified below; do not create a replacement node. Its existing coverage disposition is EXCLUDED and passes unchanged.

```text
NODE: bpP:p11a:geom-recursion
```

### P-p11a3 — stepP:p11a:gr-ind

Delete the complete node block identified below; do not create a replacement node. Its existing coverage disposition is EXCLUDED and passes unchanged.

```text
NODE: stepP:p11a:gr-ind
```

### P-p11a3 — stepP:p11a:sb-solve

```text
NODE: stepP:p11a:sb-solve
KIND: step
TITLE: Solving for $T_0$
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108
CONTRACT_ID: stepP:p11a:sb-solve
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the bound of Step sb-sum; the assumption on T_0
SOURCE_QUANTIFIERS: s in (0,1], T_0 as assumed
SOURCE_CONCLUSION: (4/X)(A_0+N log X)<=s/4, hence sum d_nu<=s/4 and each d_nu<=s/4<=1/4
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:y-log, stepP:p11a:sb-sum, bpP:p11a:sel-data, bpP:p11a:schedule-consts
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:y-log | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108 | tangent-line inequality for log with y=32N/s
EDGE: stepP:p11a:sb-sum | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108 | bound on sum d_nu being estimated
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108 | s<=1, N>=1 in solving the cutoff inequality
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:sb-solve@L108-L108 | A_0 is the defined constant in the estimate A_0+N log X
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3+sol-review-P-y
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — bpP:p11a:adm-choice

```text
NODE: bpP:p11a:adm-choice
KIND: proposition
TITLE: The initial inequalities
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L206-L218
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L219-L223
CONTRACT_ID: bpP:p11a:adm-choice
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption sel-data; 0<=eps<=eps_adm; the schedule with the parameters T_0,t_0,s_0,eps_0 of Definition adm-params; a=gamma T_0^{-tau-1}, lambda_0=eps_0/s_0, Q_0=C_Q 2^N T_0^tau lambda_0/(pi gamma varsigma_0^{N+1})
SOURCE_QUANTIFIERS: data, eps in [0,eps_adm] then the schedule fixed
SOURCE_CONCLUSION: (A1) 0<t_0<=vartheta/sqrt N<=1 and 4 C_1 t_0<=a; (A2) 8 lambda_0<=C_1 t_0; (A3) s_0<=t_0/(8N)(<=vartheta); (A4) Q_0<=varpi/2 and Q_0 Xi<=2^-10; (A5) 4 c'_{N,mu} lambda_0 t_0^-mu<=theta_max; (A6) T_0>=1 and T_0>=16/(pi s)(A_0+N log(32N/s)); (A7) eps_0=eps+(N/2)C_1 s_0^2 and ¦R_0¦<=eps_0 on D(s,s_0;B_0); in particular eps_adm>0 and s_0<=vartheta
CONSTANT_SCOPE: none (the inequalities hold with the constants of Definition adm-params)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:ac-lam, stepP:p11a:ac-list, bpP:p11a:schedule, bpP:p11a:adm-params, bpP:p11a:sel-data, bpP:p11a:schedule-consts, bpP:p11a:smooth-cutoff
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:ac-lam | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L220-L220 | proof step
EDGE: stepP:p11a:ac-list | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L222-L222 | proof step
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L207-L207 | the schedule whose parameters are tested
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L207-L207 | T_0, t_0, s_0, eps_0, Xi, theta_max, lambda_max, eps_adm
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L207-L207 | Assumption sel-data supplies the data explicitly assumed in the statement and C_1>=1, vartheta<=1
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L207-L207 | C_Q, varpi and A_0 in the displayed Q_0 and inequalities (A4), (A6)
EDGE: bpP:p11a:smooth-cutoff | blueprint-P/parts/p11a3-iteration-selection.tex#bpP:p11a:adm-choice@L213-L213 | c′_{N,mu} is the defined cutoff derivative constant in (A5)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3+sol-review-P-y
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: CYCLE BREAK: the draft edges adm-choice -> adm-budget (L217: the polynomial lower bound is Proposition adm-budget, a pointer) and adm-choice -> strip-budget/initial (L214, L215: (A6), (A7) cite the lemmas that use or prove them; the proof ac-list cites initial) are not statement dependencies; the proof step carries the initial edge.
```

### P-p11a3 — stepP:p11a:il-c2

```text
NODE: stepP:p11a:il-c2
KIND: step
TITLE: Hypothesis (C2)
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300
CONTRACT_ID: stepP:p11a:il-c2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (P_nu); (O1); L=2C_1 on B_{nu+1}; (S5)
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: Proposition canonical-step applies at stage nu with E=K_{nu+1}, t=t_{nu+1}, B=B_{nu+1}, r=r_nu, s=s_nu, T=T_nu, d=d_nu, delta, sigma, q, D=D_nu, eps:=eps_nu (hypothesis (C2): divisor part is (O1), t_{nu+1} T_nu L<=D_nu/2 is (S5))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:canonical-step, bpP:p11a:cutoff, bpP:p11a:schedule-props, stepP:p11a:il-ret, bpP:p11a:schedule, bpP:p11a:sel-data, bpP:p11a:sec-retained#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:canonical-step | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | the proposition applied with these parameters
EDGE: bpP:p11a:cutoff | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | the proof of the step uses ¦R¦<=eps only, through Proposition cutoff
EDGE: bpP:p11a:schedule-props | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | (S5): t_{nu+1} T_nu L<=D_nu/2
EDGE: stepP:p11a:il-ret | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | divisor part of (C2) is (O1) established there
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | stage parameters r_nu, s_nu, T_nu, d_nu, delta_nu, sigma_nu, D_nu
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | C_1 is the standing Hessian bound used as L=2C_1
EDGE: bpP:p11a:sec-retained#data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:il-c2@L300-L300 | E=K_{nu+1} and B_{nu+1} subset B_nu come from the nested chain
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3+sol-review-P-y
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a3 — stepP:p11a:ab-lam

```text
NODE: stepP:p11a:ab-lam
KIND: step
TITLE: The three terms
STATEMENT_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393
PROOF_SOURCE: blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393
CONTRACT_ID: stepP:p11a:ab-lam
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: lower bounds of Steps ab-gamma, ab-T0, ab-t0; the family bounds on beta and M_0 of Proposition adm-budget; theta_max and lambda_max of Definition adm-params
SOURCE_QUANTIFIERS: constants as above
SOURCE_CONCLUSION: theta_max>=c_9 u^{a_beta+a_0} by the cases rho=1 and rho=2 (beta<=2M_0 or not); each of the three terms of lambda_max is bounded below (c_4 u^J/8; c_8 u^{G+(N+1)a_s+tau L+X}; c_10 u^{a_beta+a_0+mu J}), so lambda_max>=c_11 u^H
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:adm-params, stepP:p11a:ab-gamma, stepP:p11a:ab-T0, stepP:p11a:ab-t0, bpP:p11a:schedule-consts, bpP:p11a:smooth-cutoff, bpP:p11a:sel-data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | the three terms of lambda_max and theta_max
EDGE: stepP:p11a:ab-gamma | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | gamma>=c_2 u^G in the second term
EDGE: stepP:p11a:ab-T0 | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | T_0<=C u^-L in the second term
EDGE: stepP:p11a:ab-t0 | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | t_0>=c_4 u^J and Xi<=C u^-X
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | varpi, C_Q constants depending on (N,mu,tau)
EDGE: bpP:p11a:smooth-cutoff | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | c'_{N,mu} constant depending on (N,mu)
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a3-iteration-selection.tex#stepP:p11a:ab-lam@L393-L393 | C_1>=1 is used explicitly to bound the first branch C_1 t_0/8 from below
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a3+sol-review-P-y
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Source defects and limits

No new pinned-paper erratum is alleged. Two blueprint observations are retained for handoff:

- Part 11a-3 L330 cites K uniform-limits for the compact-real continuity argument. The supplier has different hypotheses; the packet now faithfully exposes the missing bridge as SOURCE_GAP.
- Part 11a-3 L300 says “as Lemma ... affine-flow requires” after asserting A_1>0. Current Part 11a-2 L204 says “A_1=0 is allowed”. The stricter A_1>0 fact is harmless for this schedule, but is no longer a prerequisite supplied by that lemma; its edge is removed above. No proof repair is proposed.

No packet, SPEC, blueprint, Lean, manifest or implementation file was edited. No Lean execution or state-changing git command was run, as required by the review brief.

## Validation

- Exact proposed inventory: 31/31 node rows and 86/86 coverage rows, with no extra record decisions.
- All four replacement node blocks differ from their packet originals only in DEPS and EDGE fields; metadata and source fields are unchanged. Both node deletions have no surviving incoming dependency.
- Replacement dependency targets exist; each DEPS entry has exactly one EDGE, with exactly two separators per EDGE. All 207 original proposed node source/edge locators are line-addressable and in bounds. No local cycle remains in the projected slice.
- The six recorded packet/source hashes were rechecked unchanged at validation. `git diff --check -- docs/graph/P/reviews/P-p11a3-delta.md` passed. No Lean build applies to this report-only review.
