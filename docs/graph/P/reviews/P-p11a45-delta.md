# P-p11a45 delta topology review

**Verdict: FAIL.** Reviewer: `sol-delta-P-ad`. Marker: `delta-P-ad`.

Reviewed exactly **62 PROPOSED node records** and **122 PROPOSED coverage records**. Nodes: **41 PASS, 21 FAIL**. Coverage: **115 PASS, 7 FAIL**. The other 13 nodes and 12 coverage records were not reopened. The reviewer is distinct from `sol-review-P-z` and `sonnet-extract-P-p11a45`. Only this report is edited.

Applied DELTA-BRIEF, REVIEW-BRIEF and current SPEC, including its P-FIXED revision, writer rulings and Convergence rule. Compared the proposed rewrites with P-p11a45-review.md (Z1–Z6). This is source topology, not mathematical or Lean proof closure.

## P-p11a45: findings

**AD1 — wrong enclosing premises in four numerical budget steps.** qb-comp, qb-mono, qb-poly and qb-beta concern the numerical budget of 11a5 L19–54. The rewrites instead assume the later theorem's Hamiltonians A1–A4, its stronger tau/beta restrictions, and even eps_f>0. No such perturbation branch exists in this section. These extra hypotheses restrict the numerical claim to data admitting that Hamiltonian problem. Restore the numerical premises of thresholds/budget, including the actual family power hypotheses used in qb-poly. The source at L52 expressly takes the hypotheses of adm-budget (11a3 L374–386), which include eight rate bounds missing from the current field. qb-beta fixes every entry except beta and uses the stated rate specialization; record the stated dependence of c_* too. The other fields remain verbatim.

**AD2 — two non-direct added edges.** lt-field L135 computes the stage field at z=(theta,0), not the original-coordinate K_b or defect; remove sec-limit#data. pl4-terms L90–92 obtains Q_j<=Q_0 g_1^j directly from exported-sums(E1), whose statement explicitly includes it (11a3 L343). Its remaining formulas use schedule and schedule-consts. Remove the further schedule-props edge: no separate result from that lemma is invoked in this step.

**AD3 — two missing direct family-data edges.** eb-meas L229 forms K(A) and its inverse, and eb-cpt L231 forms compact/saturated images of the chosen family. They directly use K defined at 11a4 L119–121, so add sec-limit#data to each. Reaching it only through eb-bounds/eb-ext is insufficient under the package rule.

**AD4 — five package use-site locators point only to headings.** Move the offending edges of composition, limit-map, displacement-power, zero-case and weak-kam-quantitative to the actual formulas/premises: 11a4 L69–72, L101–103, L182; 11a5 L62, L73–80. Parent-to-proof-step ownership locators remain unchanged. The analogous physical-interface heading edges need no separate repair because that unused component is removed under AD5.

**AD5 — unused physical-interface closure (eight nodes, seven coverage items).** A packet traversal from all seven current roots reaches none of physical-interface, pi-zero/a/b/c/c-uniq/d or sec-q-phys#data. Every incoming dependency on these eight nodes comes from within that same component. Raw-source search across blueprint-P/parts finds no mathematical consumer: the only out-of-file citation is Part 13 L200, explicitly an administrative “Forward references” paragraph. Part 11 has no physical-interface citation; it consumes the quantitative theorem and its ingredients. The theorem's own introduction saying its consequences are for Part 13 does not make a consumer edge. Thus these records violate SPEC's requirement that every node feed a current root. Exclude the theorem/proof coverage and the administrative L157 list, and remove exactly those eight node blocks. Do not create an edge from a forward pointer.

The writer ruling that pi-c-uniq stays a SOURCE_GAP determines how to represent its unproved uniqueness assertion; it supplies no root-use exception. The deletion preserves that assertion and its gap note verbatim in the block below for restoration if an actual consumer is later added. No uniqueness import or proof is substituted, and no gap is declared closed. A field-only upsert cannot remove an unreachable node, so the eight deletion blocks are explicitly identified as deletions, following the graph-review deletion convention.

The remaining repairs pass: input-only sec-q-thm#data assumes no K1–K6 conclusion and avoids the zero-case cycle; zero-case uses no positive-radius situation. The free-radius interfaces, simultaneous displacement/lower-budget conclusion, full K5 budget, and explicit uniqueness-gap classification are retained. There are no alternative routes or mechanical no-new-binders fills in this proposed subset.

## P-p11a45: node verdicts

11a4 = p11a4-limit-family.tex; 11a5 = p11a5-quantitative-theorem.tex, both under blueprint-P/parts. Each row includes statement, proof and all current EDGE-use spans. Supplier statements were checked independently.

| ID | Verdict | Spans re-read | Reason |
|---|---|---|---|
| bpP:p11a:situation | PASS | 11a4 L30–32; 11a4 L31 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:fr-small | PASS | 11a4 L42 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:fr-list | PASS | 11a4 L44 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:fr-other | PASS | 11a4 L46 | Prior repair matches the source contract, direct inputs and locators. |
| bpP:p11a:composition | FAIL | 11a4 L66–75; 11a4 L76–84; 11a4 L77; 11a4 L79; 11a4 L81; 11a4 L83; 11a4 L67; 11a4 L66 | AD4: package edge locates only the heading; move it to the actual statement use. |
| stepP:p11a:co-dom | PASS | 11a4 L77 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:co-deriv | PASS | 11a4 L79 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:co-disp | PASS | 11a4 L81 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:co-inc | PASS | 11a4 L83 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:pl4-terms | FAIL | 11a4 L90–92; 11a4 L90; 11a4 L92 | AD2: Q_j bound is supplied by exported-sums(E1); the remaining formulas use schedule and schedule-consts, not schedule-props. |
| stepP:p11a:pl4-sum | PASS | 11a4 L94 | Prior repair matches the source contract, direct inputs and locators. |
| bpP:p11a:limit-map | FAIL | 11a4 L100–108; 11a4 L109–117; 11a4 L110; 11a4 L112; 11a4 L114; 11a4 L116; 11a4 L101; 11a4 L100 | AD4: package edge locates only the heading; move it to the actual statement use. |
| stepP:p11a:lm-inc | PASS | 11a4 L110 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:lm-der | PASS | 11a4 L112 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:lm-hol | PASS | 11a4 L114 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:lm-bounds | PASS | 11a4 L116 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:lt-field | FAIL | 11a4 L135 | AD2: no original-coordinate family or defect is used at L135; remove this non-direct data edge. |
| stepP:p11a:lt-cov | PASS | 11a4 L137–139; 11a4 L137 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:lt-lim | PASS | 11a4 L141 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:lt-lag | PASS | 11a4 L143 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:lt-emb | PASS | 11a4 L145 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:lt-dio | PASS | 11a4 L147 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:dp-tel | PASS | 11a4 L166 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:dp-size | PASS | 11a4 L168 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:gi-branches | PASS | 11a4 L177 | Prior repair matches the source contract, direct inputs and locators. |
| bpP:p11a:displacement-power | FAIL | 11a4 L180–184; 11a4 L185–187; 11a4 L186; 11a4 L181; 11a4 L182; 11a4 L183; 11a4 L180 | AD4: package edge locates only the heading; move it to the actual statement use. |
| stepP:p11a:dpc-comb | PASS | 11a4 L186 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:lf-split | PASS | 11a4 L199 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:lf-tel | PASS | 11a4 L201 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:lf-stage | PASS | 11a4 L203 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:lf-sum | PASS | 11a4 L205 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:eb-bounds | PASS | 11a4 L225 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:eb-ext | PASS | 11a4 L227 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:eb-meas | FAIL | 11a4 L229 | AD3: add the missing direct original-coordinate evaluation-family data dependency. |
| stepP:p11a:eb-cpt | FAIL | 11a4 L231 | AD3: add the missing direct original-coordinate evaluation-family data dependency. |
| stepP:p11a:qb-comp | FAIL | 11a5 L48 | AD1: later Hamiltonian A1–A4 and eps_f>0 are unsupported numerical-budget premises; restore the actual data. |
| stepP:p11a:qb-mono | FAIL | 11a5 L50 | AD1: later Hamiltonian A1–A4 and eps_f>0 are unsupported numerical-budget premises; restore the actual data. |
| stepP:p11a:qb-poly | FAIL | 11a5 L52 | AD1: later Hamiltonian A1–A4 and eps_f>0 are unsupported numerical-budget premises; restore the actual data and family power bounds. |
| stepP:p11a:qb-beta | FAIL | 11a5 L54 | AD1: later Hamiltonian A1–A4 and eps_f>0 are unsupported numerical-budget premises; restore the actual data. |
| bpP:p11a:zero-case | FAIL | 11a5 L61–63; 11a5 L64–68; 11a5 L65; 11a5 L67; 11a5 L62; 11a5 L61 | AD4: package edge locates only the heading; move it to the actual statement use. |
| stepP:p11a:zc-set | PASS | 11a5 L65 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:zc-tori | PASS | 11a5 L67 | Prior repair matches the source contract, direct inputs and locators. |
| bpP:p11a:weak-kam-quantitative | FAIL | 11a5 L72–91; 11a5 L92–110; 11a5 L93; 11a5 L95; 11a5 L97; 11a5 L99; 11a5 L101; 11a5 L103; 11a5 L105; 11a5 L107; 11a5 L109; 11a5 L73; 11a5 L76; 11a5 L84; 11a5 L80; 11a5 L72; 11a5 L86 | AD4: package edge locates only the heading; move it to the actual statement use. |
| stepP:p11a:qt-order | PASS | 11a5 L93 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:qt-reduce | PASS | 11a5 L95 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:qt-zero | PASS | 11a5 L97 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:qt-iter | PASS | 11a5 L99 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:qt-k2 | PASS | 11a5 L101 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:qt-k3 | PASS | 11a5 L103 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:qt-k4 | PASS | 11a5 L105 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:qt-k5 | PASS | 11a5 L107 | Prior repair matches the source contract, direct inputs and locators. |
| stepP:p11a:qt-k6 | PASS | 11a5 L109 | Prior repair matches the source contract, direct inputs and locators. |
| bpP:p11a:physical-interface | FAIL | 11a5 L116–125; 11a5 L126–135; 11a5 L127; 11a5 L128; 11a5 L130; 11a5 L132; 11a5 L134; 11a5 L117; 11a5 L116 | AD5: outside every current root closure; all incoming uses are inside the unused physical-interface component. |
| stepP:p11a:pi-zero | FAIL | 11a5 L127 | AD5: outside every current root closure; all incoming uses are inside the unused physical-interface component. |
| stepP:p11a:pi-a | FAIL | 11a5 L128 | AD5: outside every current root closure; all incoming uses are inside the unused physical-interface component. |
| stepP:p11a:pi-b | FAIL | 11a5 L130 | AD5: outside every current root closure; all incoming uses are inside the unused physical-interface component. |
| stepP:p11a:pi-c | FAIL | 11a5 L132 | AD5: outside every current root closure; all incoming uses are inside the unused physical-interface component. |
| stepP:p11a:pi-c-uniq | FAIL | 11a5 L132 | AD5: outside every current root closure; all incoming uses are inside the unused physical-interface component. |
| stepP:p11a:pi-d | FAIL | 11a5 L134 | AD5: outside every current root closure; all incoming uses are inside the unused physical-interface component. |
| bpP:p11a:sec-comp#data | PASS | 11a4 L64 | Prior repair matches the source contract, direct inputs and locators. |
| bpP:p11a:sec-q-thm#data | PASS | 11a5 L73–80 | Prior repair matches the source contract, direct inputs and locators. |
| bpP:p11a:sec-q-phys#data | FAIL | 11a5 L117 | AD5: outside every current root closure; all incoming uses are inside the unused physical-interface component. |

## P-p11a45: proposed coverage verdicts

Every proposed coverage item has its own row. A source unit correctly mapped to a node passes coverage even if that node needs a field/edge correction; AD5 concerns the disposition itself.

| ID | Verdict | Span re-read | Disposition check |
|---|---|---|---|
| bpP:p11a:situation | PASS | 11a4 L30–32 | Correct mapping to bpP:p11a:situation. |
| stepP:p11a:fr-small | PASS | 11a4 L42 | Correct mapping to stepP:p11a:fr-small. |
| stepP:p11a:fr-list | PASS | 11a4 L44 | Correct mapping to stepP:p11a:fr-list. |
| stepP:p11a:fr-other | PASS | 11a4 L46 | Correct mapping to stepP:p11a:fr-other. |
| bpP:p11a:why-free | PASS | 11a4 L48–50 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| bpP:p11a:composition | PASS | 11a4 L66–75 | Correct mapping to bpP:p11a:composition. |
| stepP:p11a:co-dom | PASS | 11a4 L77 | Correct mapping to stepP:p11a:co-dom. |
| stepP:p11a:co-deriv | PASS | 11a4 L79 | Correct mapping to stepP:p11a:co-deriv. |
| stepP:p11a:co-disp | PASS | 11a4 L81 | Correct mapping to stepP:p11a:co-disp. |
| stepP:p11a:co-inc | PASS | 11a4 L83 | Correct mapping to stepP:p11a:co-inc. |
| stepP:p11a:pl4-terms | PASS | 11a4 L90–92 | Correct mapping to stepP:p11a:pl4-terms. |
| stepP:p11a:pl4-sum | PASS | 11a4 L94 | Correct mapping to stepP:p11a:pl4-sum. |
| bpP:p11a:limit-map | PASS | 11a4 L100–108 | Correct mapping to bpP:p11a:limit-map. |
| stepP:p11a:lm-inc | PASS | 11a4 L110 | Correct mapping to stepP:p11a:lm-inc. |
| stepP:p11a:lm-der | PASS | 11a4 L112 | Correct mapping to stepP:p11a:lm-der. |
| stepP:p11a:lm-hol | PASS | 11a4 L114 | Correct mapping to stepP:p11a:lm-hol. |
| stepP:p11a:lm-bounds | PASS | 11a4 L116 | Correct mapping to stepP:p11a:lm-bounds. |
| stepP:p11a:lt-field | PASS | 11a4 L135 | Correct mapping to stepP:p11a:lt-field. |
| stepP:p11a:lt-cov | PASS | 11a4 L137–139 | Correct mapping to stepP:p11a:lt-cov. |
| stepP:p11a:lt-lim | PASS | 11a4 L141 | Correct mapping to stepP:p11a:lt-lim. |
| stepP:p11a:lt-lag | PASS | 11a4 L143 | Correct mapping to stepP:p11a:lt-lag. |
| stepP:p11a:lt-emb | PASS | 11a4 L145 | Correct mapping to stepP:p11a:lt-emb. |
| stepP:p11a:lt-dio | PASS | 11a4 L147 | Correct mapping to stepP:p11a:lt-dio. |
| bpP:p11a:no-normal-form | PASS | 11a4 L150–152 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| stepP:p11a:dp-tel | PASS | 11a4 L166 | Correct mapping to stepP:p11a:dp-tel. |
| stepP:p11a:dp-size | PASS | 11a4 L168 | Correct mapping to stepP:p11a:dp-size. |
| stepP:p11a:gi-branches | PASS | 11a4 L177 | Correct mapping to stepP:p11a:gi-branches. |
| bpP:p11a:displacement-power | PASS | 11a4 L180–184 | Correct mapping to bpP:p11a:displacement-power. |
| stepP:p11a:dpc-comb | PASS | 11a4 L186 | Correct mapping to stepP:p11a:dpc-comb. |
| stepP:p11a:lf-split | PASS | 11a4 L199 | Correct mapping to stepP:p11a:lf-split. |
| stepP:p11a:lf-tel | PASS | 11a4 L201 | Correct mapping to stepP:p11a:lf-tel. |
| stepP:p11a:lf-stage | PASS | 11a4 L203 | Correct mapping to stepP:p11a:lf-stage. |
| stepP:p11a:lf-sum | PASS | 11a4 L205 | Correct mapping to stepP:p11a:lf-sum. |
| bpP:p11a:r3-verdict | PASS | 11a4 L208–210 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| stepP:p11a:eb-bounds | PASS | 11a4 L225 | Correct mapping to stepP:p11a:eb-bounds. |
| stepP:p11a:eb-ext | PASS | 11a4 L227 | Correct mapping to stepP:p11a:eb-ext. |
| stepP:p11a:eb-meas | PASS | 11a4 L229 | Correct mapping to stepP:p11a:eb-meas. |
| stepP:p11a:eb-cpt | PASS | 11a4 L231 | Correct mapping to stepP:p11a:eb-cpt. |
| heading:bpP:p11a4 | PASS | 11a4 L1 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| heading:bpP:p11a:s4-conv | PASS | 11a4 L26 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| heading:bpP:p11a:sec-comp | PASS | 11a4 L62 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| heading:bpP:p11a:sec-limit | PASS | 11a4 L98 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| heading:bpP:p11a:sec-disp | PASS | 11a4 L155 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| heading:bpP:p11a:sec-lip | PASS | 11a4 L190 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| heading:bpP:p11a:notes4 | PASS | 11a4 L235 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:sourcegap-L151 | PASS | 11a4 L151 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:source-L39 | PASS | 11a4 L39 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:source-L74 | PASS | 11a4 L74 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:source-L107 | PASS | 11a4 L107 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:source-L132 | PASS | 11a4 L132 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:source-L163 | PASS | 11a4 L163 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:source-L196 | PASS | 11a4 L196 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:source-L222 | PASS | 11a4 L222 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L4-L7 | PASS | 11a4 L4–7 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L9-L9 | PASS | 11a4 L9 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L11-L11 | PASS | 11a4 L11 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L13-L13 | PASS | 11a4 L13 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L15-L23 | PASS | 11a4 L15–23 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L28-L28 | PASS | 11a4 L28 | Correct mapping to bpP:p11a:limit-torus, stepP:p11a:lt-field, stepP:p11a:lt-cov, stepP:p11a:lt-lag. |
| p11a4:prose-L33-L33 | PASS | 11a4 L33 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L52-L57 | PASS | 11a4 L52–57 | Correct mapping to bpP:p11a:z-chain, bpP:p11a:z-compact, bpP:p11a:z-uniform. |
| p11a4:prose-L59-L59 | PASS | 11a4 L59 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L64-L64 | PASS | 11a4 L64 | Correct mapping to bpP:p11a:sec-comp#data. |
| p11a4:prose-L119-L121 | PASS | 11a4 L119–121 | Correct mapping to bpP:p11a:sec-limit#data. |
| p11a4:prose-L237-L237 | PASS | 11a4 L237 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L239-L239 | PASS | 11a4 L239 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L241-L247 | PASS | 11a4 L241–247 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L249-L249 | PASS | 11a4 L249 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L251-L251 | PASS | 11a4 L251 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L253-L259 | PASS | 11a4 L253–259 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L261-L261 | PASS | 11a4 L261 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L263-L263 | PASS | 11a4 L263 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a4:prose-L265-L266 | PASS | 11a4 L265–266 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| stepP:p11a:qb-comp | PASS | 11a5 L48 | Correct mapping to stepP:p11a:qb-comp. |
| stepP:p11a:qb-mono | PASS | 11a5 L50 | Correct mapping to stepP:p11a:qb-mono. |
| stepP:p11a:qb-poly | PASS | 11a5 L52 | Correct mapping to stepP:p11a:qb-poly. |
| stepP:p11a:qb-beta | PASS | 11a5 L54 | Correct mapping to stepP:p11a:qb-beta. |
| bpP:p11a:zero-case | PASS | 11a5 L61–63 | Correct mapping to bpP:p11a:zero-case. |
| stepP:p11a:zc-set | PASS | 11a5 L65 | Correct mapping to stepP:p11a:zc-set. |
| stepP:p11a:zc-tori | PASS | 11a5 L67 | Correct mapping to stepP:p11a:zc-tori. |
| bpP:p11a:weak-kam-quantitative | PASS | 11a5 L72–91 | Correct mapping to bpP:p11a:weak-kam-quantitative. |
| stepP:p11a:qt-order | PASS | 11a5 L93 | Correct mapping to stepP:p11a:qt-order. |
| stepP:p11a:qt-reduce | PASS | 11a5 L95 | Correct mapping to stepP:p11a:qt-reduce. |
| stepP:p11a:qt-zero | PASS | 11a5 L97 | Correct mapping to stepP:p11a:qt-zero. |
| stepP:p11a:qt-iter | PASS | 11a5 L99 | Correct mapping to stepP:p11a:qt-iter. |
| stepP:p11a:qt-k2 | PASS | 11a5 L101 | Correct mapping to stepP:p11a:qt-k2. |
| stepP:p11a:qt-k3 | PASS | 11a5 L103 | Correct mapping to stepP:p11a:qt-k3. |
| stepP:p11a:qt-k4 | PASS | 11a5 L105 | Correct mapping to stepP:p11a:qt-k4. |
| stepP:p11a:qt-k5 | PASS | 11a5 L107 | Correct mapping to stepP:p11a:qt-k5. |
| stepP:p11a:qt-k6 | PASS | 11a5 L109 | Correct mapping to stepP:p11a:qt-k6. |
| bpP:p11a:physical-interface | FAIL | 11a5 L116–125 | AD5: outside every root closure; exclude the unused companion statement/step or administrative external-fact list. |
| stepP:p11a:pi-zero | FAIL | 11a5 L127 | AD5: outside every root closure; exclude the unused companion statement/step or administrative external-fact list. |
| stepP:p11a:pi-a | FAIL | 11a5 L128 | AD5: outside every root closure; exclude the unused companion statement/step or administrative external-fact list. |
| stepP:p11a:pi-b | FAIL | 11a5 L130 | AD5: outside every root closure; exclude the unused companion statement/step or administrative external-fact list. |
| stepP:p11a:pi-c | FAIL | 11a5 L132 | AD5: outside every root closure; exclude the unused companion statement/step or administrative external-fact list. |
| stepP:p11a:pi-d | FAIL | 11a5 L134 | AD5: outside every root closure; exclude the unused companion statement/step or administrative external-fact list. |
| heading:bpP:p11a5 | PASS | 11a5 L1 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| heading:bpP:p11a:sec-q-budget | PASS | 11a5 L17 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| heading:bpP:p11a:sec-q-zero | PASS | 11a5 L57 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| heading:bpP:p11a:sec-q-thm | PASS | 11a5 L70 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| heading:bpP:p11a:sec-q-phys | PASS | 11a5 L114 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| heading:bpP:p11a:notes5 | PASS | 11a5 L137 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:source-L32 | PASS | 11a5 L32 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:source-L45 | PASS | 11a5 L45 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:source-L90 | PASS | 11a5 L90 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:source-L124 | PASS | 11a5 L124 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L4-L4 | PASS | 11a5 L4 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L6-L6 | PASS | 11a5 L6 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L8-L15 | PASS | 11a5 L8–15 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L19-L21 | PASS | 11a5 L19–21 | Correct mapping to bpP:p11a:thresholds. |
| p11a5:prose-L35-L35 | PASS | 11a5 L35 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L59-L59 | PASS | 11a5 L59 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L112-L112 | PASS | 11a5 L112 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L139-L139 | PASS | 11a5 L139 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L141-L147 | PASS | 11a5 L141–147 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L149-L149 | PASS | 11a5 L149 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L151-L151 | PASS | 11a5 L151 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L153-L153 | PASS | 11a5 L153 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L155-L155 | PASS | 11a5 L155 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L157-L157 | FAIL | 11a5 L157 | AD5: outside every root closure; exclude the unused companion statement/step or administrative external-fact list. |
| p11a5:prose-L159-L159 | PASS | 11a5 L159 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |
| p11a5:prose-L161-L162 | PASS | 11a5 L161–162 | Valid heading, provenance, notation, administrative or non-consumed explanatory exclusion. |

## P-p11a45: complete field replacements

The following 13 blocks change only the listed failing fields; all other fields remain verbatim. No packets are edited by this review.

### P-p11a45 — stepP:p11a:qb-comp

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p11a:qb-comp
KIND: step
TITLE: Comparison with File 11a-3
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48
CONTRACT_ID: stepP:p11a:qb-comp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the numerical data frakd of thresholds (11a5 L19-L31): N,mu>=1 integers, rho in {1,2}, tau>=0 with tau>N mu/rho-1; K compact, d=diam_inf K, vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=M, 0<eps*<meas K; gamma,T-bar,t_flat,Xi-bar,theta_max,lambda_flat,eps_adm^flat defined there; no Hamiltonian or perturbation-size premise; frakd' differs only by valid 0<M_0'<=M_0 and its T_0,t_0,Xi,lambda_max are defined by adm-params
SOURCE_QUANTIFIERS: M_0'<=M_0
SOURCE_CONCLUSION: T_0<=T-bar, t_flat<=t_0<=1, C_1 t_0/8>=t_flat/8, Xi<=Xi-bar, T_0^tau<=T-bar^tau, theta_max(M_0)<=theta_max(M_0'), t_flat^mu<=t_0^mu; so each term of lambda_flat is at most the corresponding term of lambda_max, lambda_flat<=lambda_max and eps_adm^flat<=eps_adm^(3)(frakd'); positivity of all ingredients
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:adm-params, bpP:p11a:thresholds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:adm-params | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48 | T_0, t_0, Xi, lambda_max, theta_max for frakd'
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-comp@L48-L48 | T-bar, t_flat, Xi-bar, lambda_flat, eps_adm^flat
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — stepP:p11a:qb-mono

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p11a:qb-mono
KIND: step
TITLE: Monotonicity
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-mono@L50-L50
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-mono@L50-L50
CONTRACT_ID: stepP:p11a:qb-mono
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the numerical data frakd of thresholds (11a5 L19-L31): N,mu>=1 integers, rho in {1,2}, tau>=0 with tau>N mu/rho-1; K compact, d=diam_inf K, vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=M, 0<eps*<meas K; gamma,T-bar,t_flat,Xi-bar,theta_max,lambda_flat,eps_adm^flat defined there; no Hamiltonian or perturbation-size premise
SOURCE_QUANTIFIERS: data entries varied one at a time, others fixed
SOURCE_CONCLUSION: gamma_*, gamma, gamma T-bar^{-tau-1}, t_flat are nondecreasing in beta,vartheta,eps*,s and nonincreasing in M,d (t_flat nonincreasing in C_1); Xi-bar and the three terms of lambda_flat move accordingly, so lambda_flat and eps_adm^flat have the stated monotonicity (eps_adm^flat nonincreasing in M_0 and C_1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:thresholds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-mono@L50-L50 | definitions of gamma, T-bar, t_flat, Xi-bar, theta_max, lambda_flat
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — stepP:p11a:qb-poly

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p11a:qb-poly
KIND: step
TITLE: Polynomial bound, all data
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52
CONTRACT_ID: stepP:p11a:qb-poly
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the numerical data frakd of thresholds (11a5 L19-L31): N,mu>=1 integers, rho in {1,2}, tau>=0 with tau>N mu/rho-1; K compact, d=diam_inf K, vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=M, 0<eps*<meas K; gamma,T-bar,t_flat,Xi-bar,theta_max,lambda_flat,eps_adm^flat defined there; no Hamiltonian or perturbation-size premise; the adm-budget parameter-family hypotheses: c in (0,1], nonnegative a_vartheta,a_s,a_beta,a_*,a_M,a_0,a_C,a_d; for each u in (0,1], valid data satisfy vartheta>=c u^{a_vartheta}, s>=c u^{a_s}, beta>=c u^{a_beta}, eps*>=c u^{a_*}, M<=c^{-1}u^{-a_M}, M_0<=c^{-1}u^{-a_0}, C_1<=c^{-1}u^{-a_C}, d<=c^{-1}u^{-a_d}; D,G,L,J,X,H,B as defined in adm-budget
SOURCE_QUANTIFIERS: u in (0,1], constants depending on (N,mu,rho,tau,c) and a_s
SOURCE_CONCLUSION: gamma>=c_2 u^G, T-bar<=C u^{-L}, gamma T-bar^{-tau-1}>=c_3 u^{G+(tau+1)L}, t_flat>=c_4 u^J, Xi-bar<=C u^{-X}, lambda_flat>=c_11 u^H, hence eps_adm^flat>=c' u^{2H+a_C}
CONSTANT_SCOPE: c' with the same dependence as in Proposition adm-budget
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:adm-budget, stepP:p11a:ab-gamma, stepP:p11a:ab-T0, stepP:p11a:ab-t0, stepP:p11a:ab-lam, bpP:p11a:thresholds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:adm-budget | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | hypotheses, exponents and the structure of the proof
EDGE: stepP:p11a:ab-gamma | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | gamma>=c_2 u^G
EDGE: stepP:p11a:ab-T0 | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | T_0-type bound
EDGE: stepP:p11a:ab-t0 | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | collar and Xi bound
EDGE: stepP:p11a:ab-lam | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | three terms of lambda_max bounded below
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-poly@L52-L52 | T-bar, t_flat, Xi-bar, lambda_flat
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — stepP:p11a:qb-beta

Changed fields: CONSTANT_SCOPE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p11a:qb-beta
KIND: step
TITLE: The form (K5)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-beta@L54-L54
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-beta@L54-L54
CONTRACT_ID: stepP:p11a:qb-beta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the numerical data frakd of thresholds (11a5 L19-L31): N,mu>=1 integers, rho in {1,2}, tau>=0 with tau>N mu/rho-1; K compact, d=diam_inf K, vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=M, 0<eps*<meas K; gamma,T-bar,t_flat,Xi-bar,theta_max,lambda_flat,eps_adm^flat defined there; no Hamiltonian or perturbation-size premise; all entries except beta fixed, beta in (0,min{1,M}]; specialise as in abb-spec with u=beta, a_beta=1, all other rates zero and c=min{1,vartheta,s,eps*,M^{-1},M_0^{-1},C_1^{-1},d^{-1}}
SOURCE_QUANTIFIERS: beta in (0,min{1,M}]
SOURCE_CONCLUSION: eps_adm^flat>=c_* beta^{B_0}, B_0=2 max{2 G_0,1+mu G_0}
CONSTANT_SCOPE: c_*>0 depends only on the fixed data other than beta, not on beta
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:abb-spec, stepP:p11a:qb-poly, bpP:p11a:thresholds
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:abb-spec | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-beta@L54-L54 | the specialisation of Corollary adm-budget-beta
EDGE: stepP:p11a:qb-poly | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-beta@L54-L54 | part (c) being specialised
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:qb-beta@L54-L54 | Z3: direct use of the composition/calculus rule or defining package at this proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — stepP:p11a:lt-field

Changed fields: DEPS, EDGE.

```text
NODE: stepP:p11a:lt-field
KIND: step
TITLE: The field at the zero section
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135
CONTRACT_ID: stepP:p11a:lt-field
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); H(theta,I)=h(I)+f(theta,I) real on real points; X_H=(partial_I H,-partial_theta H); b in K_infty; Omega_0 as in the conventions
SOURCE_QUANTIFIERS: nu>=0
SOURCE_CONCLUSION: X_{H_nu}(z)=(omega_nu(b)+partial_eta R_nu(z),-partial_theta R_nu(z)) with ¦partial_eta R_nu(z)¦_inf<=eps_nu/s_nu=lambda_0 varrho^nu and ¦partial_theta R_nu(z)¦_inf<=2 eps_nu/s, both tending to 0, so ¦X_{H_nu}(z)-(omega_nu(b),0)¦_inf->0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:inductive-lemma, K:bp:p1:ext-cauchy, bpP:p11a:strip-budget, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p11a:schedule, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:inductive-lemma | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | (P_nu)(b),(c): ¦R_nu¦<=eps_nu and H_nu=h_nu+omega_nu.eta+R_nu
EDGE: K:bp:p1:ext-cauchy | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | Cauchy estimates in eta (radius s_nu) and theta (radius r_nu>=s/2)
EDGE: bpP:p11a:strip-budget | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | r_nu>=s/2
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | X_{H_nu}
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | eps_nu, s_nu, eps_nu/s_nu=lambda_0 varrho^nu
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:lt-field@L135-L135 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — stepP:p11a:pl4-terms

Changed fields: DEPS, EDGE.

```text
NODE: stepP:p11a:pl4-terms
KIND: step
TITLE: The terms
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L90-L92
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L90-L92
CONTRACT_ID: stepP:p11a:pl4-terms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); S_b:=sum_{j>=0}(a_j+alpha_j)/t_{j+1}
SOURCE_QUANTIFIERS: j>=0
SOURCE_CONCLUSION: a_j/t_{j+1}<=(2 varsigma_0 Q_0 2^{tau+1}/(C_Q t_0)) g_4^j and alpha_j/t_{j+1}<=(s_0 Q_0 2^{tau+1}/(32 t_0))(2 q g_4)^j, since g_4=g_1 2^tau
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:exported-sums, bpP:p11a:schedule-consts, bpP:p11a:schedule, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:exported-sums | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L90-L90 | (E1) bounds for a_j, alpha_j, Q_j
EDGE: bpP:p11a:schedule-consts | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L92-L92 | g_4=g_1 zeta Theta^{tau+1}=g_1 2^tau
EDGE: bpP:p11a:schedule | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L90-L90 | sigma_j, s_j, t_{j+1}
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:pl4-terms@L90-L90 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — stepP:p11a:eb-meas

Changed fields: DEPS, EDGE.

```text
NODE: stepP:p11a:eb-meas
KIND: step
TITLE: (c) Measure
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229
CONTRACT_ID: stepP:p11a:eb-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); K(b,theta)=K_b(theta)=(theta,b)+u(b,theta) on K_infty x R^N, x=(theta,b) with the max norm of the two blocks; lambda_*=2^-10; (c),(d) for H subset K_infty compact (e.g. H_infty)
SOURCE_QUANTIFIERS: H subset K_infty compact
SOURCE_CONCLUSION: B=K(A) is a countable union of compact sets (Borel); (1-lambda_*)^{2N} meas H<=meas B<=(1+lambda_*)^{2N} meas H, and (1-2^-10)^{2N}>=2^{-2N}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-measure, K:bp:p1:lip-image, bpP:p11a:z-compact, stepP:p11a:eb-bounds, bpP:p11a:situation, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-measure | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229 | meas A=meas H for A=[0,1)^N x H
EDGE: K:bp:p1:lip-image | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229 | measure of Lipschitz images in R^{2N}
EDGE: bpP:p11a:z-compact | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229 | continuous image of a countable union of compact sets is such a union (Borel)
EDGE: stepP:p11a:eb-bounds | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229 | bi-Lipschitz bounds of K restricted to A and its inverse
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-meas@L229-L229 | The chosen evaluation family K and its position-action block order are defined by sec-limit#data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — stepP:p11a:eb-cpt

Changed fields: DEPS, EDGE.

```text
NODE: stepP:p11a:eb-cpt
KIND: step
TITLE: (d) Compactness
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231
CONTRACT_ID: stepP:p11a:eb-cpt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); K(b,theta)=K_b(theta)=(theta,b)+u(b,theta) on K_infty x R^N, x=(theta,b) with the max norm of the two blocks; lambda_*=2^-10; (c),(d) for H subset K_infty compact (e.g. H_infty)
SOURCE_QUANTIFIERS: H subset K_infty compact
SOURCE_CONCLUSION: K(H x [0,1]^N) compact, K(H x R^N)=∪_k(K(H x [0,1]^N)+(k,0)), and its image in (R^N/Z^N) x R^N is compact (continuous image of a compact set)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:z-compact, stepP:p11a:eb-ext, stepP:p11a:eb-bounds, bpP:p11a:situation, bpP:p11a:sec-limit#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:z-compact | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231 | continuous image of a compact set is compact
EDGE: stepP:p11a:eb-ext | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231 | equivariance and continuity of K
EDGE: stepP:p11a:eb-bounds | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231 | K is Lipschitz, hence continuous
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231 | Z1: direct use of the standing situation (S), including the chosen iteration and its data
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#stepP:p11a:eb-cpt@L231-L231 | The chosen evaluation family K and its position-action block order are defined by sec-limit#data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — bpP:p11a:composition

Changed fields: EDGE.

```text
NODE: bpP:p11a:composition
KIND: lemma
TITLE: The compositions
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L66-L75
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L76-L84
CONTRACT_ID: bpP:p11a:composition
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); nu>=0
SOURCE_QUANTIFIERS: data, eps and the iteration fixed; for every nu>=0
SOURCE_CONCLUSION: with Phi^(0)=id, Phi^(nu+1)(.,b)=Phi^(nu)(.,b) o X_{nu,b}: (a) X_nu maps D_{nu+1} into D_nu, Phi^(nu) is holomorphic in (theta,eta,b) on D_nu with values in D_0, canonical, equivariant, real, and H_nu=H_0 o Phi^(nu); (b) ¦D Phi^(nu)-1¦_inf<=e^{sum_{j<nu} m_j}-1<=2^-11; (c) componentwise displacement ¦Phi^(nu)_theta-theta¦<=sum_{j<nu} a_j, ¦Phi^(nu)_eta-eta¦<=sum_{j<nu} alpha_j; (d) increment ¦Phi^(nu+1)-Phi^(nu)¦_inf<=(1+2^-11) max{a_nu,alpha_nu} on D_{nu+1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:co-dom, stepP:p11a:co-deriv, stepP:p11a:co-disp, stepP:p11a:co-inc, bpP:p11a:situation, bpP:p11a:sec-comp#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:co-dom | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L77-L77 | proof step
EDGE: stepP:p11a:co-deriv | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L79-L79 | proof step
EDGE: stepP:p11a:co-disp | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L81-L81 | proof step
EDGE: stepP:p11a:co-inc | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L83-L83 | proof step
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L67-L67 | situation (S): D_nu, a_nu, alpha_nu, m_nu, X_nu
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:composition@L69-L72 | Z1: uses the section definition of Phi^(nu) with the shared parameter
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: bpP:p11a:exported-sums is cited in the \source line (provenance); the proof consumes (E2) in co-deriv, where the edge is.
```

### P-p11a45 — bpP:p11a:limit-map

Changed fields: EDGE.

```text
NODE: bpP:p11a:limit-map
KIND: proposition
TITLE: Limit map; Rus01 Thm 15.5, zero section
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L100-L108
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L109-L117
CONTRACT_ID: bpP:p11a:limit-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation (S); b in K_infty; Phi^(nu)_b(theta):=Phi^(nu)((theta,0),b) for theta in T_{s/4}
SOURCE_QUANTIFIERS: data, eps, iteration fixed; b in K_infty
SOURCE_CONCLUSION: (a) Phi^(nu)_b converges uniformly on T_{s/4} to a holomorphic K~_b real on R^N, with D Phi^(nu)_b->D K~_b uniformly and increments ¦delta_nu¦_inf<=(1+2^-11) max{a_nu,alpha_nu}; (b) K~_b(theta+k)=K~_b(theta)+(k,0), so the defect u_b=K~_b-(theta,0) is Z^N-periodic; (c) ¦u^theta_b¦<=sum a_j, ¦u^eta_b¦<=sum alpha_j and ¦D_theta u_b¦<=2^-11 on T_{s/4}; on R^N u_b is 2^-11-Lipschitz in the max norm
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:lm-inc, stepP:p11a:lm-der, stepP:p11a:lm-hol, stepP:p11a:lm-bounds, bpP:p11a:situation, bpP:p11a:composition, bpP:p11a:sec-comp#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:lm-inc | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L110-L110 | proof step
EDGE: stepP:p11a:lm-der | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L112-L112 | proof step
EDGE: stepP:p11a:lm-hol | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L114-L114 | proof step
EDGE: stepP:p11a:lm-bounds | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L116-L116 | proof step
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L101-L101 | situation (S) and K_infty
EDGE: bpP:p11a:composition | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L101-L101 | Phi^(nu) of Lemma composition
EDGE: bpP:p11a:sec-comp#data | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:limit-map@L101-L103 | Z1: uses the section definition of Phi^(nu) with the shared parameter
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — bpP:p11a:displacement-power

Changed fields: EDGE.

```text
NODE: bpP:p11a:displacement-power
KIND: corollary
TITLE: The displacement power (K6) of Definition~\ref{bpP:p11:kam-input}
STATEMENT_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L180-L184
PROOF_SOURCE: blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L185-L187
CONTRACT_ID: bpP:p11a:displacement-power
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu,rho,tau and all entries of Assumption sel-data except beta fixed (K,vartheta,s,eps*,M,M_0,C_1 fixed; d=diam_inf K); the situation (S) with beta in (0,min{1,M}], 0<eps<=eps_adm
SOURCE_QUANTIFIERS: fixed data; then c_D depending only on them; then beta in (0,min{1,M}], eps in (0,eps_adm]
SOURCE_CONCLUSION: sup_{b in K_infty,theta in R^N}¦u_b(theta)¦_inf<=c_D eps^{kappa_D} beta^{-a_D} with kappa_D=1/2, a_D=G_0=(mu+1)/rho (=(mu+1)/2 for rho=2), c_D=c_Delta c_gamma; the same fixed data also give eps_adm>=c_* beta^{B_0} of bpP:p11a:adm-budget-beta, so the displacement power and lower budget are available together
CONSTANT_SCOPE: c_D depends only on the fixed data and (N,mu,rho,tau), not on beta or eps
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:dpc-comb, bpP:p11a:sel-data, bpP:p11a:situation, bpP:p11a:displacement, bpP:p11a:gamma-inverse, bpP:p11a:sec-limit#data, bpP:p11a:adm-budget-beta
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:dpc-comb | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L186-L186 | proof step
EDGE: bpP:p11a:sel-data | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L181-L181 | the data held fixed
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L182-L182 | situation (S)
EDGE: bpP:p11a:displacement | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L183-L183 | c_Delta and the bound Delta(eps)<=c_Delta eps^{1/2}/gamma
EDGE: bpP:p11a:gamma-inverse | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L183-L183 | c_gamma and gamma^-1<=c_gamma beta^{-G_0}
EDGE: bpP:p11a:sec-limit#data | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L182-L182 | Z1: uses K_b, the family K or its defect from the original-coordinate section data
EDGE: bpP:p11a:adm-budget-beta | blueprint-P/parts/p11a4-limit-family.tex#bpP:p11a:displacement-power@L183-L183 | Z4: the statement explicitly asserts the simultaneous lower budget from adm-budget-beta
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The kam-input title is a consumer-interface pointer, not an edge back to Part 11. The lower-budget assertion at L183 is retained in SOURCE_CONCLUSION with its direct supplier.
```

### P-p11a45 — bpP:p11a:zero-case

Changed fields: EDGE.

```text
NODE: bpP:p11a:zero-case
KIND: lemma
TITLE: $f\equiv0$
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:zero-case@L61-L63
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:zero-case@L64-L68
CONTRACT_ID: bpP:p11a:zero-case
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; f=0; H_0 and K_b(theta)=(theta,b) defined as in L62
SOURCE_QUANTIFIERS: frakd and h fixed (f=0); b in H_0
SOURCE_CONCLUSION: H_0 is compact with meas H_0>=meas K-eps*; for b in H_0: K_b is real analytic, primary, an embedded Lagrangian torus map, d_t K_b(theta+t w_b)=X_H(K_b(theta+t w_b)) with w_b=omega(b) (gamma,tau)-Diophantine, u_b=0; (b,theta)->K_b(theta) is injective on H_0 x [0,1)^N with image [0,1)^N x H_0 (position, action order) of measure meas H_0
CONSTANT_SCOPE: gamma=gamma(frakd)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:zc-set, stepP:p11a:zc-tori, bpP:p11a:thresholds, bpP:p11a:sec-q-thm#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:zc-set | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:zero-case@L65-L65 | proof step
EDGE: stepP:p11a:zc-tori | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:zero-case@L67-L67 | proof step
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:zero-case@L62-L62 | gamma=gamma(frakd)
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:zero-case@L62-L62 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: CYCLE BREAK: the draft edge zero-case -> weak-kam-quantitative (L62: the lemma takes the hypotheses (A1)-(A4) and the data of the theorem) names the hypotheses only; weak-kam-quantitative -> zero-case (qt-zero) is the use. The hypothesis package (A1)-(A4) belongs to the theorem statement (no separate node), so the lemma depends on the thresholds only.
```

### P-p11a45 — bpP:p11a:weak-kam-quantitative

Changed fields: EDGE.

```text
NODE: bpP:p11a:weak-kam-quantitative
KIND: theorem
TITLE: Quantitative maximal-case analytic KAM theorem under weak non-degeneracy
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L72-L91
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L92-L110
CONTRACT_ID: bpP:p11a:weak-kam-quantitative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta
SOURCE_QUANTIFIERS: N,mu,rho,tau,K,vartheta,s,C_1,M,M_0,beta,eps* (the data frakd) first; then gamma and eps_adm determined by frakd only; then (h,f) and eps_f; then the conclusions (K1)-(K6) with c_*, c_D chosen after the fixed entries
SOURCE_CONCLUSION: (K1) compact calH subset K with meas calH>=meas K-eps*; (K2) for b in calH a real analytic K_b:R^N->R^N x R^N with K_b(theta+k)=K_b(theta)+(k,0), D K_b injective, K_b^* Omega_0=0, K_b(theta)=K_b(theta') only if theta'-theta in Z^N, and w_b in R^N with ¦k.w_b¦>=gamma ¦k¦_1^{-tau} for all k!=0 and d_t K_b(theta+t w_b)=X_H(K_b(theta+t w_b)); (K3) sup ¦u_b¦_inf<=Delta(eps_f;frakd):=min{2^-18,c_Delta eps_f^{1/2}/gamma}, c_Delta=c_Delta(N,mu,tau,s,C_1) of Theorem displacement; (K4) ¦K_b(theta)-K_b'(theta')¦_inf>=(1-2^-10) max{¦theta-theta'¦_inf,¦b-b'¦_inf}, K (1+2^-10)-Lipschitz, K injective on calH x [0,1)^N with Borel image calB, meas calB>=2^{-2N} meas calH, K(calH x [0,1]^N) compact; (K5) eps_adm nondecreasing in beta,vartheta,s,eps*, nonincreasing in M,M_0,C_1,d and, with all entries but beta fixed, eps_adm>=c_* beta^{B_0} for beta in (0,min{1,M}], B_0=2 max{2 G_0,1+mu G_0}, G_0=(mu+1)/rho; (K6) with the same entries fixed, sup¦u_b¦<=Delta<=c_D eps_f^{kappa_D} beta^{-a_D}, kappa_D=1/2, a_D=G_0; (K5) also identifies the general all-data polynomial lower bound as budget(c), with the hypotheses, exponent and constant dependence of adm-budget
CONSTANT_SCOPE: gamma and eps_adm depend on frakd and on nothing else; c_Delta=c_Delta(N,mu,tau,s,C_1); c_*, c_D depend only on the entries of frakd other than beta; the radius s_0 of the iteration is chosen inside the proof, not a datum
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:qt-order, stepP:p11a:qt-reduce, stepP:p11a:qt-zero, stepP:p11a:qt-iter, stepP:p11a:qt-k2, stepP:p11a:qt-k3, stepP:p11a:qt-k4, stepP:p11a:qt-k5, stepP:p11a:qt-k6, bpP:p11a:thresholds, bpP:p11a:index-def, bpP:p11a:displacement, bpP:p0:hamsymp#hamiltonianVectorField, bpP:p0:hamsymp#symplecticForm, bpP:p11a:sec-q-thm#data, bpP:p11a:budget
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:qt-order | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L93-L93 | proof step
EDGE: stepP:p11a:qt-reduce | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L95-L95 | proof step
EDGE: stepP:p11a:qt-zero | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L97-L97 | proof step
EDGE: stepP:p11a:qt-iter | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L99-L99 | proof step
EDGE: stepP:p11a:qt-k2 | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L101-L101 | proof step
EDGE: stepP:p11a:qt-k3 | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L103-L103 | proof step
EDGE: stepP:p11a:qt-k4 | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L105-L105 | proof step
EDGE: stepP:p11a:qt-k5 | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L107-L107 | proof step
EDGE: stepP:p11a:qt-k6 | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L109-L109 | proof step
EDGE: bpP:p11a:thresholds | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L73-L73 | gamma(frakd), eps_adm=eps_adm^flat(frakd)
EDGE: bpP:p11a:index-def | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L76-L76 | beta_{rho,mu}(omega,K) of Definition index-def
EDGE: bpP:p11a:displacement | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L84-L84 | c_Delta of Theorem displacement
EDGE: bpP:p0:hamsymp#hamiltonianVectorField | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L80-L80 | X_H=(partial_I H,-partial_theta H)
EDGE: bpP:p0:hamsymp#symplecticForm | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L80-L80 | Omega_0=dI wedge dtheta
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L73-L80 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:budget | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:weak-kam-quantitative@L86-L86 | Z4: the K5 statement identifies both the beta budget and the general all-data polynomial bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The input-only package sec-q-thm#data breaks the zero-case statement-reference cycle. No edge back to kam-input is added. The explicit K5 budget assertions and their direct budget supplier are retained.
```

## P-p11a45: deletion blocks (AD5)

**Delete each of the following eight complete NODE blocks; do not upsert them.** Their existence, rather than a statement field, is the topology error. Every current incoming edge is internal to this deleted component. The raw blueprint and the SOURCE_GAP note remain untouched.

### P-p11a45 — DELETE bpP:p11a:physical-interface

```text
NODE: bpP:p11a:physical-interface
KIND: corollary
TITLE: Physical interface
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L116-L125
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L126-L135
CONTRACT_ID: bpP:p11a:physical-interface
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the situation of Theorem weak-kam-quantitative; S:=K(calH x [0,1)^N), S~:=K(calH x R^N)=S+(Z^N x {0})
SOURCE_QUANTIFIERS: data frakd, (h,f), eps_f as in the theorem; then calH, w_b from the theorem
SOURCE_CONCLUSION: (a) S is Borel and 0<2^{-2N}(meas K-eps*)<=2^{-2N} meas calH<=meas S<=(1+2^-10)^{2N} meas calH<infty; (b) every point of S is within max-distance Delta<=2^-18 of (theta,b), b in calH, theta in [0,1)^N, so its action lies in {dist_inf(I,calH)<=Delta} subset K+2^-18; (c) S~ is invariant under the flow of X_H: the integral curve through z=K_b(theta) exists for all t and equals t->K_b(theta+t w_b) in S~, and S~/(Z^N x {0}) is compact; (d) S~=⊔_{b in calH} K_b(R^N), and q(S~)=⊔_b q(K_b(R^N)) is a disjoint union of embedded compact Lagrangian tori with Diophantine frequency w_b (q the quotient to (R^N/Z^N) x R^N)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p11a:pi-zero, stepP:p11a:pi-a, stepP:p11a:pi-b, stepP:p11a:pi-c, stepP:p11a:pi-d, bpP:p11a:weak-kam-quantitative, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p11a:pi-zero | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L127-L127 | proof step
EDGE: stepP:p11a:pi-a | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L128-L128 | proof step
EDGE: stepP:p11a:pi-b | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L130-L130 | proof step
EDGE: stepP:p11a:pi-c | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L132-L132 | proof step
EDGE: stepP:p11a:pi-d | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L134-L134 | proof step
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L117-L117 | the situation of the theorem: calH, K_b, w_b, Delta
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L116-L116 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L116-L116 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — DELETE stepP:p11a:pi-zero

```text
NODE: stepP:p11a:pi-zero
KIND: step
TITLE: The case $\varepsilon_f=0$
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-zero@L127-L127
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-zero@L127-L127
CONTRACT_ID: stepP:p11a:pi-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; use the outputs calH, K_b and w_b of weak-kam-quantitative and the definitions S,S~ of sec-q-phys#data; eps_f=0 (the zero-case branch)
SOURCE_QUANTIFIERS: eps_f=0
SOURCE_CONCLUSION: assertions (a)-(d) follow from the explicit description
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:zero-case, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:zero-case | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-zero@L127-L127 | explicit description of the tori and of S
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-zero@L127-L127 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-zero@L127-L127 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — DELETE stepP:p11a:pi-a

```text
NODE: stepP:p11a:pi-a
KIND: step
TITLE: (a)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128
CONTRACT_ID: stepP:p11a:pi-a
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; use the outputs calH, K_b and w_b of weak-kam-quantitative and the definitions S,S~ of sec-q-phys#data; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: eps_f>0
SOURCE_CONCLUSION: (a): S Borel, 2^{-2N}(meas K-eps*)<=2^{-2N} meas calH<=meas S<=(1+2^-10)^{2N} meas calH<infty
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:evaluation-bilipschitz, bpP:p11a:weak-kam-quantitative, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:evaluation-bilipschitz | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128 | (c): lower and upper measure bounds
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128 | (K1): meas calH>=meas K-eps*
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128 | Z1: uses the positive-eps Part 11a-4 situation in this source branch
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — DELETE stepP:p11a:pi-b

```text
NODE: stepP:p11a:pi-b
KIND: step
TITLE: (b)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-b@L130-L130
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-b@L130-L130
CONTRACT_ID: stepP:p11a:pi-b
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; use the outputs calH, K_b and w_b of weak-kam-quantitative and the definitions S,S~ of sec-q-phys#data; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: eps_f>0
SOURCE_CONCLUSION: (b): every point of S is within Delta<=2^-18 of (theta,b); action coordinate in {dist_inf(I,calH)<=Delta} subset K+2^-18
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:weak-kam-quantitative, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-b@L130-L130 | (K3): ¦u_b¦<=Delta<=2^-18
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-b@L130-L130 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-b@L130-L130 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — DELETE stepP:p11a:pi-c

```text
NODE: stepP:p11a:pi-c
KIND: step
TITLE: (c)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132
CONTRACT_ID: stepP:p11a:pi-c
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; use the outputs calH, K_b and w_b of weak-kam-quantitative and the definitions S,S~ of sec-q-phys#data; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: eps_f>0, z=K_b(theta) in S~
SOURCE_CONCLUSION: (c): the integral curve of X_H through z exists for all t and equals t->K_b(theta+t w_b) in S~; S~/(Z^N x {0}) is compact
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:weak-kam-quantitative, bpP:p11a:displacement, bpP:p11a:free-radius, bpP:p11a:limit-torus, bpP:p11a:evaluation-bilipschitz, stepP:p11a:pi-c-uniq, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data, bpP:p11a:situation
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | (K2): the curve K_b(theta+t w_b) is an integral curve of X_H
EDGE: bpP:p11a:displacement | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | action coordinates within Delta of b, so in the domain of H
EDGE: bpP:p11a:free-radius | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | s_0<=vartheta so the curve lies in the domain of H
EDGE: bpP:p11a:limit-torus | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | (b): as used there, the curve lies in the domain of H
EDGE: bpP:p11a:evaluation-bilipschitz | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | (d): compactness of the quotient
EDGE: stepP:p11a:pi-c-uniq | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | uniqueness of the integral curve (Picard-Lindelof) for the locally Lipschitz field X_H
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
EDGE: bpP:p11a:situation | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132 | Z1: uses the positive-eps Part 11a-4 situation in this source branch
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — DELETE stepP:p11a:pi-c-uniq

```text
NODE: stepP:p11a:pi-c-uniq
KIND: step
TITLE: Picard-Lindelof uniqueness for the locally Lipschitz field X_H
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c-uniq@L132-L132
PROOF_SOURCE: -
CONTRACT_ID: stepP:p11a:pi-c-uniq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X_H real analytic, hence locally Lipschitz on the open real part W of T_s x U; z in S~; t -> K_b(theta+t w_b) an integral curve defined on R through z at t=0
SOURCE_QUANTIFIERS: z in S~; a comparison integral curve on an interval J containing 0, taking the value z at 0
SOURCE_CONCLUSION: the comparison integral curve agrees with t -> K_b(theta+t w_b) on J (uniqueness through the initial point for the locally Lipschitz field)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-mvt, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c-uniq@L132-L132 | Lipschitz bound of the field from the mean value inequality
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c-uniq@L132-L132 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c-uniq@L132-L132 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: Picard-Lindelof uniqueness is named at L132 and listed at L157, without an authorized labelled external or a literal application of a cited import. The writer ruling explicitly retains this gap. N:bpN:p3:gen-uniqueness is only a nearest candidate: it requires a C^1 field on an open W, IsSolIn for both curves on intervals, and a common initial time. Supplying those translations would be additional work; no supplier edge or new external is certified here. The ext-mvt edge is the source-cited local Lipschitz estimate only.
```

### P-p11a45 — DELETE stepP:p11a:pi-d

```text
NODE: stepP:p11a:pi-d
KIND: step
TITLE: (d)
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-d@L134-L134
PROOF_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-d@L134-L134
CONTRACT_ID: stepP:p11a:pi-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N,mu>=1 integers, rho in {1,2}, tau=tau_D>max{N mu/rho-1,N-1}; K subset R^N compact, d=diam_inf K; vartheta,s in (0,1], C_1>=1, M,M_0>0, 0<beta<=min{1,M}, eps* in (0,meas K) (the data frakd); gamma=gamma(frakd), eps_adm=eps_adm^flat(frakd) by Definition thresholds; (h,f) with (A1) U=K+2 vartheta subset C^N, h:U->C and f:T_s x U->C holomorphic, f 1-periodic in theta, h,f real on real points, omega=grad h C^inf on V=U∩R^N⊃K_vartheta; (A2) beta_{rho,mu}(omega,K)>=beta; (A3) ¦D^k g_rho[omega](c,y)¦_op<=M for c in S^{N-1}, 1<=k<=mu+1, y in K_vartheta; (A4) ¦D^2 h¦_{inf->inf}<=C_1 on U and ¦omega¦^mu_{dg,K_vartheta}<=M_0; eps_f with sup_{T_s x U}¦f¦<=eps_f<=eps_adm (eps_f=0 allowed); H=h(I)+f(theta,I), X_H=(partial_I H,-partial_theta H), Omega_0=dI wedge dtheta; use the outputs calH, K_b and w_b of weak-kam-quantitative and the definitions S,S~ of sec-q-phys#data; eps_f>0 in this source proof branch
SOURCE_QUANTIFIERS: eps_f>0
SOURCE_CONCLUSION: (d): S~=⊔_b K_b(R^N); if K_b(theta)=K_b'(theta')+(k,0) then b=b' by (K4), so the images q(K_b(R^N)) are pairwise disjoint, each an embedded compact Lagrangian torus with Diophantine frequency w_b by (K2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:weak-kam-quantitative, bpP:p11a:sec-q-thm#data, bpP:p11a:sec-q-phys#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-d@L134-L134 | (K4) injectivity and (K2) equivariance, embeddedness, Lagrangian, Diophantine frequency
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-d@L134-L134 | Z1: source theorem input data and A1-A4, separate from its conclusions and from the positive-eps situation
EDGE: bpP:p11a:sec-q-phys#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-d@L134-L134 | Z1: uses S, S~ and the chosen family as defined at the physical-interface statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p11a45 — DELETE bpP:p11a:sec-q-phys#data

```text
NODE: bpP:p11a:sec-q-phys#data
KIND: definition
TITLE: Physical-interface sets and chosen theorem outputs
STATEMENT_SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-phys#data@L117-L117
PROOF_SOURCE: -
CONTRACT_ID: bpP:p11a:sec-q-phys#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the input data of sec-q-thm#data; choose calH, K_b, w_b and Delta as supplied by weak-kam-quantitative
SOURCE_QUANTIFIERS: data; (h,f); eps_f; the chosen outputs; then b and theta
SOURCE_CONCLUSION: defines S=K(calH x [0,1)^N), S~=K(calH x R^N); equivariance gives S~=S+(Z^N x {0})
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p11a:sec-q-thm#data, bpP:p11a:weak-kam-quantitative
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p11a:sec-q-thm#data | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-phys#data@L117-L117 | source data or objects used by this definition
EDGE: bpP:p11a:weak-kam-quantitative | blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:sec-q-phys#data@L117-L117 | source data or objects used by this definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: new+sol-review-P-z
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: This package defines the sets, without assuming the physical-interface conclusions. It covers both eps_f=0 and eps_f>0; the positive-radius situation is not imposed at zero.
```

## P-p11a45: coverage replacements (AD5)

Only DISPOSITION and REASON change.

### P-p11a45 — coverage bpP:p11a:physical-interface

```text
ITEM: bpP:p11a:physical-interface
KIND: corollary
SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#bpP:p11a:physical-interface@L116-L125
DISPOSITION: EXCLUDED
REASON: outside every root closure of track P: the physical-interface theorem and its exclusive steps have no incoming consumer outside their own component; corpus search finds only the Part 13 L200 administrative forward reference. The external-fact list at L157 is administrative; the unused uniqueness assertion remains a SOURCE_GAP if restored, per the writer ruling.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### P-p11a45 — coverage stepP:p11a:pi-zero

```text
ITEM: stepP:p11a:pi-zero
KIND: proof-region
SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-zero@L127-L127
DISPOSITION: EXCLUDED
REASON: outside every root closure of track P: the physical-interface theorem and its exclusive steps have no incoming consumer outside their own component; corpus search finds only the Part 13 L200 administrative forward reference. The external-fact list at L157 is administrative; the unused uniqueness assertion remains a SOURCE_GAP if restored, per the writer ruling.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### P-p11a45 — coverage stepP:p11a:pi-a

```text
ITEM: stepP:p11a:pi-a
KIND: proof-region
SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-a@L128-L128
DISPOSITION: EXCLUDED
REASON: outside every root closure of track P: the physical-interface theorem and its exclusive steps have no incoming consumer outside their own component; corpus search finds only the Part 13 L200 administrative forward reference. The external-fact list at L157 is administrative; the unused uniqueness assertion remains a SOURCE_GAP if restored, per the writer ruling.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### P-p11a45 — coverage stepP:p11a:pi-b

```text
ITEM: stepP:p11a:pi-b
KIND: proof-region
SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-b@L130-L130
DISPOSITION: EXCLUDED
REASON: outside every root closure of track P: the physical-interface theorem and its exclusive steps have no incoming consumer outside their own component; corpus search finds only the Part 13 L200 administrative forward reference. The external-fact list at L157 is administrative; the unused uniqueness assertion remains a SOURCE_GAP if restored, per the writer ruling.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### P-p11a45 — coverage stepP:p11a:pi-c

```text
ITEM: stepP:p11a:pi-c
KIND: proof-region
SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-c@L132-L132
DISPOSITION: EXCLUDED
REASON: outside every root closure of track P: the physical-interface theorem and its exclusive steps have no incoming consumer outside their own component; corpus search finds only the Part 13 L200 administrative forward reference. The external-fact list at L157 is administrative; the unused uniqueness assertion remains a SOURCE_GAP if restored, per the writer ruling.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### P-p11a45 — coverage stepP:p11a:pi-d

```text
ITEM: stepP:p11a:pi-d
KIND: proof-region
SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#stepP:p11a:pi-d@L134-L134
DISPOSITION: EXCLUDED
REASON: outside every root closure of track P: the physical-interface theorem and its exclusive steps have no incoming consumer outside their own component; corpus search finds only the Part 13 L200 administrative forward reference. The external-fact list at L157 is administrative; the unused uniqueness assertion remains a SOURCE_GAP if restored, per the writer ruling.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

### P-p11a45 — coverage p11a5:prose-L157-L157

```text
ITEM: p11a5:prose-L157-L157
KIND: proof-region
SOURCE: blueprint-P/parts/p11a5-quantitative-theorem.tex#prose@L157-L157
DISPOSITION: EXCLUDED
REASON: outside every root closure of track P: the physical-interface theorem and its exclusive steps have no incoming consumer outside their own component; corpus search finds only the Part 13 L200 administrative forward reference. The external-fact list at L157 is administrative; the unused uniqueness assertion remains a SOURCE_GAP if restored, per the writer ruling.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p11a45
REVIEWER: -
```

## Materials and validation

Read the two raw slice files (11a4 L1–266 and 11a5 L1–162), every proposed field and EDGE use-site, and source contracts in 11a1 (index/sublevel/divisor measure/power law), 11a2 (domains/canonical step), and 11a3 (selection data, constants/schedule/properties, finite-stage lemmas, initial data, admissibility, iteration, parameter selection, exported sums and polynomial budgets). Read the relevant frozen field and form definitions. No implementation/provider file, Lean proof body or proof-status evidence was inspected, and no Lean command was run.

All seven actual K suppliers were read at their P-imports locators in blueprint/parts/p1-analysis.tex: ext-cauchy L56–66, ext-mvt L75–78, ext-measure L100–109, uniform-limits L364–368, lip-image L1124–1129, mcshane L1168–1171 and lipeo L1203–1207. The three unused remarks why-free, no-normal-form and r3-verdict were searched across the corpus; mentions are explanatory/administrative. Their exclusions remain correct. The authorized Z external items are separately inventoried already; their non-PROPOSED records are not reopened. The existing theorem/physical-interface inventories cover the raw statement regions containing the synthetic input/set projections; no extra source region needs inventing.

Snapshot HEAD: dccdffcad206acd9d4fd0c239263d0a427e2563f.

- `docs/graph/P/packets/P-p11a45.nodes.md` SHA256 `bfbde786b4480c9243e79eeb60fb2324f1f19785c873e2e9ed373dea2cb8267c`.
- `docs/graph/P/packets/P-p11a45.coverage.md` SHA256 `7e7d3c7cf272fcfe345dade59ee6e8edd18269c2b49823a1f0a7a970bd90359b`.
- `blueprint-P/parts/p11a4-limit-family.tex` SHA256 `c88030106491131ffde29078d1f0919ae092592bf37e1bbc68a87ab087369b2b`.
- `blueprint-P/parts/p11a5-quantitative-theorem.tex` SHA256 `f4ea938ec9baf0a280fded708fc7b2bbac4584a6347ad9d49da1291c73ad9b1d`.

Checks run:

- `python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p11a45 --structural`: `P-p11a45: 75 nodes, 381 edges, 134 coverage items, 0 problems, 0 TODO records (not counted: --structural)`. This is a schema check; it does not certify semantic edge directness or root reachability.
- `sha256sum -c docs/graph/P/CORPUS.sha256` and `sha256sum -c docs/graph/P/IMPORTS.sha256`: every listed source OK.
- Exactly one EDGE per DEPS entry, valid dependency IDs and exactly two separators per EDGE in the proposed records and field replacements. No proposed ROUTES entry is nonempty.
- Read-only seven-root traversal and incoming-edge audit identify exactly the eight unused nodes of AD5. In-memory replacement/deletion leaves the remaining proposed nodes reachable, no dangling reference to a deleted node, and no new cycle through a changed node. No database was mutated for these checks.
- Report inventory/minimality checked: 62 node rows, 122 coverage rows, 13 field-replacement blocks, eight explicitly marked complete deletion blocks, seven coverage replacements. Every FAIL is accounted for; unchanged fields in the replacement blocks are identical to the packet.

## Suspected blueprint defects and proof boundaries

The prior review's two source observations remain. At 11a5 L132, “by uniqueness (Picard--Lindelof ... ext-mvt for the Lipschitz bound)” names uniqueness without an authorized labelled supplier. Mean value supplies the local Lipschitz estimate, not uniqueness; the unused companion's mandated SOURCE_GAP remains the correct description if restored. At 11a4 L229 the exhaustion of A defined in (theta,b) order is printed with factors H × [0,1−1/m]^N, rather than [0,1−1/m]^N × H. The block swap preserves norm/measure, but the displayed equality is not literal. This is the already reported source defect, not an additional topology failure or a silent source correction.

No new pinned-paper erratum is asserted. The off-section normal-form discussion is explicitly unused and remains excluded. Neither an excluded unused gap nor an exposed SOURCE_GAP is treated as proof closure.
