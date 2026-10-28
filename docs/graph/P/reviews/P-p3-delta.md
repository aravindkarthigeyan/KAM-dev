# P-p3 delta topology review

Reviewer: **sol-delta-P-e**. Marker: **delta-P-e**. Date: 2026-10-28.

**Verdict: FAIL.** Of the 83 proposed node records, 73 PASS and 10 FAIL; all 122 proposed coverage records PASS. The failures are confined to non-direct dependencies and two missing application-data dependencies. The prior substantive contract repairs are accepted. This is a source-topology verdict, with no claim about Lean or mathematical proof completion.

Independence: the slice extractor is `sonnet-extract-P-p3`; the original reviewer/rewrite author is `sol-review-P-e` (`docs/graph/P/reviews/P-p3-review.md`). This delta review uses the distinct tag above. No previously reviewed node or coverage record is reopened.

Read DELTA-BRIEF and REVIEW-BRIEF in full, the binding SPEC and its package/section-data, alias, edge and source-gap rulings, the original slice review, all proposed packet records, and the raw consumer and edge spans. Source abbreviations below: **3a** = `blueprint-P/parts/p3a-two-scale-iteration.tex`; **3b** = `blueprint-P/parts/p3b-two-scale-limit.tex`. Both raw source files were read in full (3a L1-L265; 3b L1-L242). Each node row includes its statement and proof spans, together covering its EDGE use sites except the explicitly stated context spans in the text. Reading the full file also checks the surrounding hypotheses, packages and local branches.

Read supplier statements in P Part 1 L127-L148 (period conversion and pipeline), P Part 2 L78-L94 and L136-L150 (averaging and width dictionary), K Part 1 L67-L96, L364-L368, L474-L479, L1124-L1129, L1168-L1171 (the eight actual K suppliers and the rejected Weierstrass alias), and N Part 5 L76-L100 (the single-flow contracts removed by the original review). Checked Part 5 L198-L201 and L224 for the interface coverage correction. P-imports records were used as locators, with actual supplier statements read independently. This slice contains no frozen anchor record, so anchor ABI/type review is not implicated by this delta. No implementation Lean, provider, proof-status metadata or Lean proof body was read.

## Snapshot

HEAD at snapshot: `80b3da9fe0467f3cd18537c057bab0971bb1aac8`. SHA256 pins:

| Artifact | SHA256 |
|---|---|
| `docs/graph/P/packets/P-p3.nodes.md` | `a9c5dd0b80fb5b97197dce46ddce963e543e8548f1a2d47cf370c8bc2db6de9e` |
| `docs/graph/P/packets/P-p3.coverage.md` | `c11898b992268d77ca86c411e1d9513adf82c2e7aa545d611d975056919e1130` |
| `blueprint-P/parts/p3a-two-scale-iteration.tex` | `94327df07e9c89e6ff5186a71261fa66120a18993bfd9b3764ce4607c856328c` |
| `blueprint-P/parts/p3b-two-scale-limit.tex` | `e923c1f3856cd7c27fc73b1a5bdb21139a31d0484e30421c4e0db9cfdff86c1a` |

## Proposed nodes — slice P-p3

| ID | Verdict | Spans re-read | Reason / disposition |
|---|---|---|---|
| bpP:p3:two-scale-kam | PASS | 3a L59-L87; 3b L193-L204 | Source contract, direct uses and prior repair agree. |
| bpP:p3:rem-norm | PASS | 3a L89-L93 | Source contract, direct uses and prior repair agree. |
| bpP:p3:period-dictionary | PASS | 3a L95-L100; 3a L101-L109 | Source contract, direct uses and prior repair agree. |
| stepP:p3:pd-subst | PASS | 3a L102-L103 | Source contract, direct uses and prior repair agree. |
| stepP:p3:pd-invar | PASS | 3a L104-L106 | Source contract, direct uses and prior repair agree. |
| stepP:p3:pd-dyn | PASS | 3a L107-L108 | Source contract, direct uses and prior repair agree. |
| bpP:p3:ext-ift | PASS | 3a L114-L114 | Source contract, direct uses and prior repair agree. |
| bpP:p3:ext-neumann | PASS | 3a L118-L118 | Source contract, direct uses and prior repair agree. |
| stepP:p3:ball-inv | PASS | 3a L128-L129 | Source contract, direct uses and prior repair agree. |
| stepP:p3:ball-lift | PASS | 3a L130-L131 | Source contract, direct uses and prior repair agree. |
| stepP:p3:ball-closed | PASS | 3a L132-L133 | Source contract, direct uses and prior repair agree. |
| stepP:p3:ball-lip | PASS | 3a L134-L135 | Source contract, direct uses and prior repair agree. |
| stepP:p3:ls-close | PASS | 3a L142-L143 | Source contract, direct uses and prior repair agree. |
| stepP:p3:ls-far | PASS | 3a L144-L145 | Source contract, direct uses and prior repair agree. |
| bpP:p3:avg | PASS | 3a L150-L163; 3a L164-L166 | Source contract, direct uses and prior repair agree. |
| bpP:p3:step | PASS | 3a L170-L190; 3a L192-L226 | Source contract, direct uses and prior repair agree. |
| stepP:p3:st-nonres | PASS | 3a L193-L197 | Source contract, direct uses and prior repair agree. |
| stepP:p3:st-small | PASS | 3a L198-L199 | Source contract, direct uses and prior repair agree. |
| stepP:p3:st-avg | PASS | 3a L200-L202 | Source contract, direct uses and prior repair agree. |
| stepP:p3:st-disp | PASS | 3a L203-L205 | Source contract, direct uses and prior repair agree. |
| stepP:p3:st-dg | PASS | 3a L206-L209 | Source contract, direct uses and prior repair agree. |
| stepP:p3:st-U | PASS | 3a L210-L212 | Source contract, direct uses and prior repair agree. |
| stepP:p3:st-inj | PASS | 3a L213-L215 | Source contract, direct uses and prior repair agree. |
| stepP:p3:st-ihat | PASS | 3a L216-L219 | Source contract, direct uses and prior repair agree. |
| stepP:p3:st-const | PASS | 3a L220-L223 | Source contract, direct uses and prior repair agree. |
| stepP:p3:st-quad | PASS | 3a L224-L225 | Source contract, direct uses and prior repair agree. |
| bpP:p3:iterative | PASS | 3a L242-L253; 3a L254-L265 | Source contract, direct uses and prior repair agree. |
| stepP:p3:it-ind | PASS | 3a L255-L256 | Source contract, direct uses and prior repair agree. |
| stepP:p3:it-base | PASS | 3a L257-L258 | Source contract, direct uses and prior repair agree. |
| stepP:p3:it-step | PASS | 3a L259-L260 | Source contract, direct uses and prior repair agree. |
| stepP:p3:it-comp | PASS | 3a L261-L262 | Source contract, direct uses and prior repair agree. |
| stepP:p3:it-rates | PASS | 3a L263-L264 | Source contract, direct uses and prior repair agree. |
| bpP:p3:sums | PASS | 3b L6-L8; 3b L9-L16 | Source contract, direct uses and prior repair agree. |
| stepP:p3:sum-doubling | PASS | 3b L10-L11 | Source contract, direct uses and prior repair agree. |
| stepP:p3:sum-weighted | PASS | 3b L12-L13 | Source contract, direct uses and prior repair agree. |
| stepP:p3:sum-radii | FAIL | 3b L14-L15 | The step uses only rhohat_k<=rho_k from constants and rho_k=rhohat_{k-1}/16 from seq. It uses no action neighborhood, block, symplectic or Fourier convention; remove the unused convention edge. |
| bpP:p3:limit-actions | PASS | 3b L20-L29; 3b L30-L39 | Source contract, direct uses and prior repair agree. |
| stepP:p3:la-wp | FAIL | 3b L31-L32 | L32 composes the maps ihat_j:D_{j-1}->D_j and inducts on omega_j o ihat_j=omega_{j-1}. It uses D_0/sequence notation and iterative(i), but no numerical constant formula or convention-package datum. Remove those two extra package edges. |
| stepP:p3:la-tele | PASS | 3b L33-L34 | Source contract, direct uses and prior repair agree. |
| stepP:p3:la-loc | PASS | 3b L35-L36 | Source contract, direct uses and prior repair agree. |
| stepP:p3:la-lip | PASS | 3b L37-L38 | Source contract, direct uses and prior repair agree. |
| bpP:p3:psi-lip | PASS | 3b L45-L51; 3b L52-L62 | Source contract, direct uses and prior repair agree. |
| stepP:p3:pl-dom | PASS | 3b L53-L54 | Source contract, direct uses and prior repair agree. |
| stepP:p3:pl-disp | PASS | 3b L55-L56 | Source contract, direct uses and prior repair agree. |
| stepP:p3:pl-lip | FAIL | 3b L57-L59 | L58 uses the definition of calD_k from limitmap#data to place the scaled complex neighborhood inside W_k; it does not use the real image inclusion proved by pl-dom. Remove that non-direct edge; keep iterative, pl-disp and the data packages. |
| stepP:p3:pl-sum | PASS | 3b L60-L61 | Source contract, direct uses and prior repair agree. |
| stepP:p3:fc-decay | PASS | 3b L68-L69 | Source contract, direct uses and prior repair agree. |
| stepP:p3:fc-coef | PASS | 3b L70-L71 | Source contract, direct uses and prior repair agree. |
| stepP:p3:fc-tail | PASS | 3b L72-L74 | Source contract, direct uses and prior repair agree. |
| bpP:p3:limit-phi | PASS | 3b L77-L85; 3b L86-L95 | Source contract, direct uses and prior repair agree. |
| stepP:p3:lp-tele | PASS | 3b L87-L88 | Source contract, direct uses and prior repair agree. |
| stepP:p3:lp-cauchy | FAIL | 3b L89-L90 | At L90 the small quantity is sum varsigma_k, bounded by psi-lip(ii). The exponential composition estimate and its 1/10 bound use that output, not c, q or an independent invocation of (3.4). Remove the merely transitive kam-bounds edge. |
| stepP:p3:lp-per | FAIL | 3b L91-L92 | L92 uses periodicity of Psi_k/Phi_j from iterative and the limit bound from lp-cauchy. No numerical sequence or its initialization is consumed; the sequence of maps Phi_j is constructed in iterative, not defined in seq. Remove the seq edge. |
| stepP:p3:lp-an | PASS | 3b L93-L94 | Source contract, direct uses and prior repair agree. |
| bpP:p3:estimates | PASS | 3b L102-L106; 3b L107-L112 | Source contract, direct uses and prior repair agree. |
| stepP:p3:es-sup | PASS | 3b L108-L109 | Source contract, direct uses and prior repair agree. |
| stepP:p3:es-loc | PASS | 3b L110-L111 | Source contract, direct uses and prior repair agree. |
| bpP:p3:lagr | PASS | 3b L114-L116; 3b L117-L124 | Source contract, direct uses and prior repair agree. |
| stepP:p3:lg-cauchy | PASS | 3b L118-L119 | Source contract, direct uses and prior repair agree. |
| stepP:p3:lg-j | FAIL | 3b L120-L121 | L121 uses symplectic Phi_j from iterative, not the numerical sequences. Evaluation at the fixed limit action additionally needs D_* subset Re(D_j)_{rho_j/2} from limit-actions(ii), with I_* in D_* supplied by tori#data. Replace the unused seq edge by this missing domain edge. |
| stepP:p3:lg-lim | FAIL | 3b L122-L123 | L123 passes to the limit in the bilinear expression Omega_j using first derivative convergence and Omega_j=0. No numerical recurrence or initialization is used. Remove the unused seq edge. |
| stepP:p3:inv-conj | FAIL | 3b L132-L134 | L133-L134 uses the symplectic composition Phi_j and H_j=H o Phi_j=h_j+f_j from iterative, with the tori and action-first conventions. seq defines numerical recurrences and h_0,f_0, not this finite-map identity. Remove the unused seq edge; preserve the explicit general-conjugation SOURCE_GAP. |
| stepP:p3:inv-dphi | PASS | 3b L135-L136 | Source contract, direct uses and prior repair agree. |
| stepP:p3:inv-err | PASS | 3b L137-L141 | Source contract, direct uses and prior repair agree. |
| stepP:p3:inv-lim | FAIL | 3b L142-L143 | The error identity has already been consumed in inv-err. L143 uses the resulting derivative error and uniform convergence; its trailing parenthesis recalls inv-conj and the N citations. Remove this reminder edge, retaining inv-err and the explicitly exposed real C^1 limit bridge. |
| stepP:p3:cv-ext | PASS | 3b L154-L155 | Source contract, direct uses and prior repair agree. |
| stepP:p3:cv-bij | PASS | 3b L156-L157 | Source contract, direct uses and prior repair agree. |
| stepP:p3:cv-loc | PASS | 3b L158-L159 | Source contract, direct uses and prior repair agree. |
| stepP:p3:ma-ext | PASS | 3b L166-L167 | Source contract, direct uses and prior repair agree. |
| stepP:p3:ma-meas | PASS | 3b L168-L169 | Source contract, direct uses and prior repair agree. |
| stepP:p3:mt-split | PASS | 3b L177-L178 | Source contract, direct uses and prior repair agree. |
| stepP:p3:mt-ext | PASS | 3b L179-L180 | Source contract, direct uses and prior repair agree. |
| stepP:p3:mt-pre | FAIL | 3b L181-L182 | The extension identity Phi_e=Phi is supplied by mt-ext (via cover), not by limit-phi. L182 explicitly unscales the inverse estimate and therefore directly uses S from limitmap#data. Replace the incorrectly attributed edge by that rescaling edge; measure#data supplies K_Omega=Phi(D_* x R^n). |
| stepP:p3:mt-meas | PASS | 3b L183-L184 | Source contract, direct uses and prior repair agree. |
| stepP:p3:mt-shell | PASS | 3b L185-L186 | Source contract, direct uses and prior repair agree. |
| stepP:p3:mt-sum | PASS | 3b L187-L188 | Source contract, direct uses and prior repair agree. |
| stepP:p3:pf-constr | PASS | 3b L194-L195 | Source contract, direct uses and prior repair agree. |
| stepP:p3:pf-ad | PASS | 3b L196-L197 | Source contract, direct uses and prior repair agree. |
| stepP:p3:pf-bc | PASS | 3b L198-L199 | Source contract, direct uses and prior repair agree. |
| stepP:p3:pf-inj | PASS | 3b L200-L201 | Source contract, direct uses and prior repair agree. |
| stepP:p3:pf-meas | PASS | 3b L202-L203 | Source contract, direct uses and prior repair agree. |
| bpP:p3b#kam-bounds | PASS | 3b L3-L4 | Source contract, direct uses and prior repair agree. |
| bpP:p3:ext-weierstrass | PASS | 3a L116-L116 | Source contract, direct uses and prior repair agree. |

## Proposed coverage — slice P-p3

These are separate coverage verdicts. A correct NODE disposition still PASSes when the corresponding node needs an edge correction; it maps the inventory unit to its actual owner.

| ID | Verdict | Span re-read | Reason / disposition |
|---|---|---|---|
| bpP:p3:rem-uhat | PASS | 3a L36-L40 | Mapping/exclusion agrees with the source. |
| bpP:p3:two-scale-kam | PASS | 3a L59-L87 | Mapping/exclusion agrees with the source. |
| bpP:p3:rem-norm | PASS | 3a L89-L93 | Mapping/exclusion agrees with the source. |
| bpP:p3:period-dictionary | PASS | 3a L95-L100 | Mapping/exclusion agrees with the source. |
| stepP:p3:pd-subst | PASS | 3a L102-L103 | Mapping/exclusion agrees with the source. |
| stepP:p3:pd-invar | PASS | 3a L104-L106 | Mapping/exclusion agrees with the source. |
| stepP:p3:pd-dyn | PASS | 3a L107-L108 | Mapping/exclusion agrees with the source. |
| bpP:p3:ext-ift | PASS | 3a L114-L114 | Mapping/exclusion agrees with the source. |
| bpP:p3:ext-fourier | PASS | 3a L115-L115 | Definition-only coefficient notation; reconstruction is linked at fc-tail, not coefficient continuity. |
| bpP:p3:ext-weierstrass | PASS | 3a L116-L116 | Native external restored; the K statement has a derivative-convergence premise absent here. |
| bpP:p3:ext-banach | PASS | 3a L117-L117 | Mapping/exclusion agrees with the source. |
| bpP:p3:ext-neumann | PASS | 3a L118-L118 | Mapping/exclusion agrees with the source. |
| bpP:p3:ext-lip | PASS | 3a L119-L119 | Mapping/exclusion agrees with the source. |
| stepP:p3:ball-inv | PASS | 3a L128-L129 | Mapping/exclusion agrees with the source. |
| stepP:p3:ball-lift | PASS | 3a L130-L131 | Mapping/exclusion agrees with the source. |
| stepP:p3:ball-closed | PASS | 3a L132-L133 | Mapping/exclusion agrees with the source. |
| stepP:p3:ball-lip | PASS | 3a L134-L135 | Mapping/exclusion agrees with the source. |
| stepP:p3:ls-close | PASS | 3a L142-L143 | Mapping/exclusion agrees with the source. |
| stepP:p3:ls-far | PASS | 3a L144-L145 | Mapping/exclusion agrees with the source. |
| bpP:p3:avg | PASS | 3a L150-L163 | Mapping/exclusion agrees with the source. |
| bpP:p3:step | PASS | 3a L170-L190 | Mapping/exclusion agrees with the source. |
| stepP:p3:st-nonres | PASS | 3a L193-L197 | Mapping/exclusion agrees with the source. |
| stepP:p3:st-small | PASS | 3a L198-L199 | Mapping/exclusion agrees with the source. |
| stepP:p3:st-avg | PASS | 3a L200-L202 | Mapping/exclusion agrees with the source. |
| stepP:p3:st-disp | PASS | 3a L203-L205 | Mapping/exclusion agrees with the source. |
| stepP:p3:st-dg | PASS | 3a L206-L209 | Mapping/exclusion agrees with the source. |
| stepP:p3:st-U | PASS | 3a L210-L212 | Mapping/exclusion agrees with the source. |
| stepP:p3:st-inj | PASS | 3a L213-L215 | Mapping/exclusion agrees with the source. |
| stepP:p3:st-ihat | PASS | 3a L216-L219 | Mapping/exclusion agrees with the source. |
| stepP:p3:st-const | PASS | 3a L220-L223 | Mapping/exclusion agrees with the source. |
| stepP:p3:st-quad | PASS | 3a L224-L225 | Mapping/exclusion agrees with the source. |
| bpP:p3:rem-step | PASS | 3a L228-L232 | Mapping/exclusion agrees with the source. |
| bpP:p3:iterative | PASS | 3a L242-L253 | Mapping/exclusion agrees with the source. |
| stepP:p3:it-ind | PASS | 3a L255-L256 | Mapping/exclusion agrees with the source. |
| stepP:p3:it-base | PASS | 3a L257-L258 | Mapping/exclusion agrees with the source. |
| stepP:p3:it-step | PASS | 3a L259-L260 | Mapping/exclusion agrees with the source. |
| stepP:p3:it-comp | PASS | 3a L261-L262 | Mapping/exclusion agrees with the source. |
| stepP:p3:it-rates | PASS | 3a L263-L264 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3 | PASS | 3a L1-L1 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:conv | PASS | 3a L9-L9 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:statement | PASS | 3a L57-L57 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:external | PASS | 3a L111-L111 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:elem | PASS | 3a L122-L122 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:avgsec | PASS | 3a L148-L148 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:stepsec | PASS | 3a L168-L168 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:itersec | PASS | 3a L234-L234 | Mapping/exclusion agrees with the source. |
| p3a:sourcegap-L86 | PASS | 3a L86-L86 | Mapping/exclusion agrees with the source. |
| p3a:source-L54 | PASS | 3a L54-L54 | Mapping/exclusion agrees with the source. |
| p3a:source-L85 | PASS | 3a L85-L85 | Mapping/exclusion agrees with the source. |
| p3a:source-L162 | PASS | 3a L162-L162 | Mapping/exclusion agrees with the source. |
| p3a:prose-L3-L7 | PASS | 3a L3-L7 | Mapping/exclusion agrees with the source. |
| p3a:prose-L11-L34 | PASS | 3a L11-L34 | Mapping/exclusion agrees with the source. |
| bpP:p3:sums | PASS | 3b L6-L8 | Mapping/exclusion agrees with the source. |
| stepP:p3:sum-doubling | PASS | 3b L10-L11 | Mapping/exclusion agrees with the source. |
| stepP:p3:sum-weighted | PASS | 3b L12-L13 | Mapping/exclusion agrees with the source. |
| stepP:p3:sum-radii | PASS | 3b L14-L15 | Mapping/exclusion agrees with the source. |
| bpP:p3:limit-actions | PASS | 3b L20-L29 | Mapping/exclusion agrees with the source. |
| stepP:p3:la-wp | PASS | 3b L31-L32 | Mapping/exclusion agrees with the source. |
| stepP:p3:la-tele | PASS | 3b L33-L34 | Mapping/exclusion agrees with the source. |
| stepP:p3:la-loc | PASS | 3b L35-L36 | Mapping/exclusion agrees with the source. |
| stepP:p3:la-lip | PASS | 3b L37-L38 | Mapping/exclusion agrees with the source. |
| bpP:p3:psi-lip | PASS | 3b L45-L51 | Mapping/exclusion agrees with the source. |
| stepP:p3:pl-dom | PASS | 3b L53-L54 | Mapping/exclusion agrees with the source. |
| stepP:p3:pl-disp | PASS | 3b L55-L56 | Mapping/exclusion agrees with the source. |
| stepP:p3:pl-lip | PASS | 3b L57-L59 | Mapping/exclusion agrees with the source. |
| stepP:p3:pl-sum | PASS | 3b L60-L61 | Mapping/exclusion agrees with the source. |
| stepP:p3:fc-decay | PASS | 3b L68-L69 | Mapping/exclusion agrees with the source. |
| stepP:p3:fc-coef | PASS | 3b L70-L71 | Mapping/exclusion agrees with the source. |
| stepP:p3:fc-tail | PASS | 3b L72-L74 | Mapping/exclusion agrees with the source. |
| bpP:p3:limit-phi | PASS | 3b L77-L85 | Mapping/exclusion agrees with the source. |
| stepP:p3:lp-tele | PASS | 3b L87-L88 | Mapping/exclusion agrees with the source. |
| stepP:p3:lp-cauchy | PASS | 3b L89-L90 | Mapping/exclusion agrees with the source. |
| stepP:p3:lp-per | PASS | 3b L91-L92 | Mapping/exclusion agrees with the source. |
| stepP:p3:lp-an | PASS | 3b L93-L94 | Mapping/exclusion agrees with the source. |
| bpP:p3:estimates | PASS | 3b L102-L106 | Mapping/exclusion agrees with the source. |
| stepP:p3:es-sup | PASS | 3b L108-L109 | Mapping/exclusion agrees with the source. |
| stepP:p3:es-loc | PASS | 3b L110-L111 | Mapping/exclusion agrees with the source. |
| bpP:p3:lagr | PASS | 3b L114-L116 | Mapping/exclusion agrees with the source. |
| stepP:p3:lg-cauchy | PASS | 3b L118-L119 | Mapping/exclusion agrees with the source. |
| stepP:p3:lg-j | PASS | 3b L120-L121 | Mapping/exclusion agrees with the source. |
| stepP:p3:lg-lim | PASS | 3b L122-L123 | Mapping/exclusion agrees with the source. |
| stepP:p3:inv-conj | PASS | 3b L132-L134 | Mapping/exclusion agrees with the source. |
| stepP:p3:inv-dphi | PASS | 3b L135-L136 | Mapping/exclusion agrees with the source. |
| stepP:p3:inv-err | PASS | 3b L137-L141 | Mapping/exclusion agrees with the source. |
| stepP:p3:inv-lim | PASS | 3b L142-L143 | Mapping/exclusion agrees with the source. |
| stepP:p3:cv-ext | PASS | 3b L154-L155 | Mapping/exclusion agrees with the source. |
| stepP:p3:cv-bij | PASS | 3b L156-L157 | Mapping/exclusion agrees with the source. |
| stepP:p3:cv-loc | PASS | 3b L158-L159 | Mapping/exclusion agrees with the source. |
| stepP:p3:ma-ext | PASS | 3b L166-L167 | Mapping/exclusion agrees with the source. |
| stepP:p3:ma-meas | PASS | 3b L168-L169 | Mapping/exclusion agrees with the source. |
| stepP:p3:mt-split | PASS | 3b L177-L178 | Mapping/exclusion agrees with the source. |
| stepP:p3:mt-ext | PASS | 3b L179-L180 | Mapping/exclusion agrees with the source. |
| stepP:p3:mt-pre | PASS | 3b L181-L182 | Mapping/exclusion agrees with the source. |
| stepP:p3:mt-meas | PASS | 3b L183-L184 | Mapping/exclusion agrees with the source. |
| stepP:p3:mt-shell | PASS | 3b L185-L186 | Mapping/exclusion agrees with the source. |
| stepP:p3:mt-sum | PASS | 3b L187-L188 | Mapping/exclusion agrees with the source. |
| stepP:p3:pf-constr | PASS | 3b L194-L195 | Mapping/exclusion agrees with the source. |
| stepP:p3:pf-ad | PASS | 3b L196-L197 | Mapping/exclusion agrees with the source. |
| stepP:p3:pf-bc | PASS | 3b L198-L199 | Mapping/exclusion agrees with the source. |
| stepP:p3:pf-inj | PASS | 3b L200-L201 | Mapping/exclusion agrees with the source. |
| stepP:p3:pf-meas | PASS | 3b L202-L203 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3b | PASS | 3b L1-L1 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:limit | PASS | 3b L18-L18 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:limitmap | PASS | 3b L41-L41 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:tori | PASS | 3b L97-L97 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:measure | PASS | 3b L146-L146 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:proof | PASS | 3b L191-L191 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:interface | PASS | 3b L206-L206 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:errata | PASS | 3b L221-L221 | Mapping/exclusion agrees with the source. |
| heading:bpP:p3:forward | PASS | 3b L239-L239 | Mapping/exclusion agrees with the source. |
| p3b:sourcegap-L219 | PASS | 3b L219-L219 | Mapping/exclusion agrees with the source. |
| p3b:source-L28 | PASS | 3b L28-L28 | Mapping/exclusion agrees with the source. |
| p3b:source-L84 | PASS | 3b L84-L84 | Mapping/exclusion agrees with the source. |
| p3b:source-L105 | PASS | 3b L105-L105 | Mapping/exclusion agrees with the source. |
| p3b:source-L128 | PASS | 3b L128-L128 | Mapping/exclusion agrees with the source. |
| p3b:prose-L3-L4 | PASS | 3b L3-L4 | Mapping/exclusion agrees with the source. |
| p3b:prose-L43-L43 | PASS | 3b L43-L43 | Mapping/exclusion agrees with the source. |
| p3b:prose-L99-L100 | PASS | 3b L99-L100 | Mapping/exclusion agrees with the source. |
| p3b:prose-L148-L148 | PASS | 3b L148-L148 | Mapping/exclusion agrees with the source. |
| p3b:prose-L208-L218 | PASS | 3b L208-L218 | Numerical-bound choices and exact x,K evaluation map to their existing owners/Part 5 consumers; L200 and L224 confirm consumption. |
| p3b:prose-L223-L237 | PASS | 3b L223-L237 | Mapping/exclusion agrees with the source. |
| p3b:prose-L241-L242 | PASS | 3b L241-L242 | Mapping/exclusion agrees with the source. |

## Repair checks and limits

- The bounded-D global inverse Lipschitz clause is now included in `two-scale-kam`, as required by 3a L79 and 3b L201. The conditional torus premise in `period-dictionary` no longer creates an edge back to the existence theorem. Original source hypotheses and local proof branches are retained rather than replaced by derived conclusions.
- `avg` records the stronger E/(K s) bound and a direct `p2:nfb` edge. The geometric-width conversion s_N=s/(2 pi) yields kappa=K s; Part 3's stronger smallness implies nfb's bound because 64e>128. Both displacement and exponential-loss contracts match.
- The larger-domain displacement assertion in `step` is faithfully retained with its SOURCE_GAP note; its proof establishes the bound for Psi before restricting to Psi_+. The note's mention of L184-L185 is imprecise (the displacement assertion is at L186-L187), but the actual statement/proof locators and quoted domain identify it unambiguously. No topology failure is based on that explanatory-note typo. The iterative target W-prime and j>=1 strict recurrence are restored.
- `rem-norm` exposes the unsupported Ehat-monotonicity sentence rather than silently deleting it. The full Weierstrass external is correctly distinct from K's conditional uniform-limits lemma. Coefficient continuity is the elementary bound from the defining integral; Fourier reconstruction is consumed at fc-tail. The general symplectic-conjugation and real C^1 derivative-limit gaps are visible as SOURCE_GAP notes, which PASS as faithful topology rather than proofs.
- No proposed record in this slice contains a nontrivial ROUTES entry or the writer's generic “inherits the fixed data and quantifiers ... no new binders” field. There is therefore no mechanical route EDGE or blanket no-new-binders assertion to approve. The actual branch quantifiers were compared with the local text.
- Package edges were retained whenever a formula, norm, neighborhood, block, rescaling or fixed-data definition is directly used. Merely inheriting the enclosing KAM context does not make every earlier package formula a direct input. In particular, the numerical `seq` package is not the construction of the maps Phi_j (owned by `iterative`). The replacements below remove only demonstrated extra edges and supply the two missing uses: the limit-action domain at lg-j and the rescaling definition at mt-pre.

Structural check (report mode):

```text
python3 -I /mnt/HC_Volume_106379410/orchestrator-tools/inp_depgraph_slice_check.py docs/graph/P/packets P-p3 --structural
P-p3: 96 nodes, 435 edges, 131 coverage items, 0 problems, 0 TODO records (not counted: --structural)
```

An independent format check counted 83 PROPOSED nodes and 389 EDGE lines in those blocks: exactly one EDGE per DEPS/ROUTES entry, with exactly two field separators in each EDGE. Structural success is separate from the ten direct-use failures above. All 122 proposed coverage IDs have a separate PASS row. No new source erratum is asserted; the already exposed blueprint defects remain explicit. No Lean run, source edit, packet edit or state-changing git command was performed.

## Replacement blocks — slice P-p3

Each complete block below starts from the pinned packet record. Only DEPS and the corresponding EDGE lines change. Source fields, locators, notes, metadata and status fields remain verbatim, so these remain PROPOSED for another independent reviewer.

### P-p3 — stepP:p3:sum-radii

The step uses only rhohat_k<=rho_k from constants and rho_k=rhohat_{k-1}/16 from seq. It uses no action neighborhood, block, symplectic or Fourier convention; remove the unused convention edge.

```text
NODE: stepP:p3:sum-radii
KIND: step
TITLE: Radii
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-radii@L14-L15
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-radii@L14-L15
CONTRACT_ID: stepP:p3:sum-radii
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:sums: the sequences under the original KAM hypotheses and the bounds (3.4), with m>=0; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: k>=1
SOURCE_CONCLUSION: rhohat_k<=rhohat_0 16^{-k}, s_k=s 12^{-k}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:constants, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-radii@L15-L15 | rhohat_k<=rho_k from the definition of rhohat
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-radii@L15-L15 | rho_k=rhohat_{k-1}/16 and s_k=s_{k-1}/12
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3+sol-review-P-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p3 — stepP:p3:la-wp

L32 composes the maps ihat_j:D_{j-1}->D_j and inducts on omega_j o ihat_j=omega_{j-1}. It uses D_0/sequence notation and iterative(i), but no numerical constant formula or convention-package datum. Remove those two extra package edges.

```text
NODE: stepP:p3:la-wp
KIND: step
TITLE: Well-posedness
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-wp@L31-L32
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-wp@L31-L32
CONTRACT_ID: stepP:p3:la-wp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:limit-actions: the original KAM hypotheses and sequences; checki_j denotes the finite composition being constructed; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j>=1
SOURCE_CONCLUSION: ihat_j:D_{j-1}->D_j so checki_j(D_0) subset D_j and the composition is defined; (iv) follows from omega_j o ihat_j=omega_{j-1} by induction
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-wp@L32-L32 | (i): ihat_j:D_{j-1}->D_j with omega_j o ihat_j=omega_{j-1}
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-wp@L32-L32 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3+sol-review-P-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p3 — stepP:p3:pl-lip

L58 uses the definition of calD_k from limitmap#data to place the scaled complex neighborhood inside W_k; it does not use the real image inclusion proved by pl-dom. Remove that non-direct edge; keep iterative, pl-disp and the data packages.

```text
NODE: stepP:p3:pl-lip
KIND: step
TITLE: Lipschitz
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L57-L59
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L57-L59
CONTRACT_ID: stepP:p3:pl-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:psi-lip: the original KAM hypotheses and sequences, rescaling S and real domains calD_j; k>=1; eps_k denotes min{rho_k/(2 rhohat_0),s_k/s_0}; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: k>=1
SOURCE_CONCLUSION: Lemma lip-sup in scaled coordinates with N=2n gives L_*<=4 2n A_k/eps_k<=192 n c^{k-1}Ehat_{k-1} since eps_k>=q^{-(k-1)}/32
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:lip-sup, bpP:p3:iterative, stepP:p3:pl-disp, bpP:p3:limitmap#data, bpP:p3b#kam-bounds, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:lip-sup | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | Lipschitz constant from the sup bound on the scaled neighbourhood
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | (v): rhohat_{k-1}>=rhohat_{k-2}/(2 24^{tau+1}) and (iii) holds on the complex W_k
EDGE: stepP:p3:pl-disp | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | the sup bound A_k
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | scaled coordinates
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L59-L59 | q=12 c
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3+sol-review-P-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p3 — stepP:p3:lp-cauchy

At L90 the small quantity is sum varsigma_k, bounded by psi-lip(ii). The exponential composition estimate and its 1/10 bound use that output, not c, q or an independent invocation of (3.4). Remove the merely transitive kam-bounds edge.

```text
NODE: stepP:p3:lp-cauchy
KIND: step
TITLE: Cauchy sequence
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L89-L90
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L89-L90
CONTRACT_ID: stepP:p3:lp-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:limit-phi: the original KAM hypotheses, sequences and W_*:=D_* x R^n; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j, x
SOURCE_CONCLUSION: L_*(Phicheck_{j-1}-id)<=prod_{k<j}(1+varsigma_k)-1<=2 sum varsigma_k<=1/10; ¦Phi_j(x)-Phi_{j-1}(x)¦_*<=(11/10)(3/4)Ehat_{j-1} summable: uniform convergence on W_*, and the limit satisfies (ii) with L_*<=768 n Ehat_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:psi-lip, stepP:p3:la-lip, bpP:p3:limit-actions, bpP:p3:limitmap#data, bpP:p3:constants, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:psi-lip | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | (i) domains, (ii) varsigma_k and its sum, (iii) displacement
EDGE: stepP:p3:la-lip | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | the composition rule for Lipschitz constants
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | W_* subset calD_j x R^n
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | Phicheck, L_*
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3+sol-review-P-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p3 — stepP:p3:lp-per

L92 uses periodicity of Psi_k/Phi_j from iterative and the limit bound from lp-cauchy. No numerical sequence or its initialization is consumed; the sequence of maps Phi_j is constructed in iterative, not defined in seq. Remove the seq edge.

```text
NODE: stepP:p3:lp-per
KIND: step
TITLE: Periodicity and injectivity
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L91-L92
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L91-L92
CONTRACT_ID: stepP:p3:lp-per
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:limit-phi: the original KAM hypotheses, sequences and W_*:=D_* x R^n; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: k, x, y
SOURCE_CONCLUSION: (iii) holds for Phi_j and in the limit; from (ii) ¦Phi x-Phi y¦_*>=(9/10)¦x-y¦_*
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative, stepP:p3:lp-cauchy, bpP:p3:conv#data, bpP:p3:limitmap#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L92-L92 | Psi_k-id is Z^n-periodic in theta
EDGE: stepP:p3:lp-cauchy | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L92-L92 | (ii) the Lipschitz bound of Phicheck-id
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L92-L92 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L92-L92 | Direct use of S, checked maps or the rescaled norm.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3+sol-review-P-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p3 — stepP:p3:lg-j

L121 uses symplectic Phi_j from iterative, not the numerical sequences. Evaluation at the fixed limit action additionally needs D_* subset Re(D_j)_{rho_j/2} from limit-actions(ii), with I_* in D_* supplied by tori#data. Replace the unused seq edge by this missing domain edge.

```text
NODE: stepP:p3:lg-j
KIND: step
TITLE: Each $\Phi_j$-torus is Lagrangian
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-j@L120-L121
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-j@L120-L121
CONTRACT_ID: stepP:p3:lg-j
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:lagr: the original KAM hypotheses, omega in Omega_* and the definitions of I_0,I_*,phi_omega; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j, a, b
SOURCE_CONCLUSION: phi^{(j)}=Phi_j(I_*,.) has Omega_j(a,b)=sum_i(d_a v_i^{(j)}d_b Theta_i^{(j)}-d_b v_i^{(j)}d_a Theta_i^{(j)})=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative, bpP:p3:conv#data, bpP:p3:tori#data, bpP:p3:limit-actions
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-j@L121-L121 | Phi_j analytic symplectic on W_j
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-j@L121-L121 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-j@L121-L121 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-j@L121-L121 | I_* in D_* lies in (D_j)_{rho_j/2} by (ii), so the symplectic map Phi_j can be evaluated at (I_*,theta).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3+sol-review-P-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p3 — stepP:p3:lg-lim

L123 passes to the limit in the bilinear expression Omega_j using first derivative convergence and Omega_j=0. No numerical recurrence or initialization is used. Remove the unused seq edge.

```text
NODE: stepP:p3:lg-lim
KIND: step
TITLE: Limit
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L122-L123
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L122-L123
CONTRACT_ID: stepP:p3:lg-lim
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:lagr: the original KAM hypotheses, omega in Omega_* and the definitions of I_0,I_*,phi_omega; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: a, b
SOURCE_CONCLUSION: Omega=lim Omega_j=0 since Omega_j is bilinear in the first derivatives
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, stepP:p3:lp-an, bpP:p3:fourier-compact, stepP:p3:lg-j, bpP:p3:conv#data, bpP:p3:tori#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | convergence of Phi_j
EDGE: stepP:p3:lp-an | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | convergence with all derivatives in theta
EDGE: bpP:p3:fourier-compact | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | uniform convergence of the derivatives
EDGE: stepP:p3:lg-j | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | Omega_j=0 for each j
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3+sol-review-P-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### P-p3 — stepP:p3:inv-conj

L133-L134 uses the symplectic composition Phi_j and H_j=H o Phi_j=h_j+f_j from iterative, with the tori and action-first conventions. seq defines numerical recurrences and h_0,f_0, not this finite-map identity. Remove the unused seq edge; preserve the explicit general-conjugation SOURCE_GAP.

```text
NODE: stepP:p3:inv-conj
KIND: step
TITLE: Symplectic conjugation
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L132-L134
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L132-L134
CONTRACT_ID: stepP:p3:inv-conj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:invariance: the original KAM hypotheses, omega in Omega_*, vartheta in R^n, t in R; I_0,I_*,theta_t,gamma_j,gamma denote the curves defined before the proof steps; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j, theta, t
SOURCE_CONCLUSION: X_H o Phi_j=D Phi_j X_{H_j} and gamma_j(t)-X_H(gamma_j(t)) difference: gamma_j1(t)-X_H(gamma_j(t))=D Phi_j(I_*,theta_t)(d_theta f_j, omega-omega_j(I_*)-d_I f_j)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative, bpP:p3:conv#data, bpP:p3:tori#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L133-L133 | Phi_j symplectic with H_j=H o Phi_j=h_j+f_j
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L133-L133 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L133-L133 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3+sol-review-P-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: p3b L133 applies general symplectic conjugation to the composition Phi_j. N symplectic concludes matrix identities for a single small Hamiltonian flow X^t; N canonical(b) has the same single-flow premises. Neither supplies this application with Phi_j substituted, and the source gives no finite-composition reduction to those premises. Iterative supplies symplecticity of Phi_j and H_j=H o Phi_j. The remaining general conjugation/chain-rule bridge, in the action-first convention, is asserted here; no new external or proof is introduced.
```

### P-p3 — stepP:p3:inv-lim

The error identity has already been consumed in inv-err. L143 uses the resulting derivative error and uniform convergence; its trailing parenthesis recalls inv-conj and the N citations. Remove this reminder edge, retaining inv-err and the explicitly exposed real C^1 limit bridge.

```text
NODE: stepP:p3:inv-lim
KIND: step
TITLE: Passing to the limit
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L142-L143
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L142-L143
CONTRACT_ID: stepP:p3:inv-lim
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:invariance: the original KAM hypotheses, omega in Omega_*, vartheta in R^n, t in R; I_0,I_*,theta_t,gamma_j,gamma denote the curves defined before the proof steps; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j large
SOURCE_CONCLUSION: the real segment [gamma_j(t),gamma(t)] lies in D_{rho/2} x T_{sbar/2} where norm D X_H<=B_0=M+C(E,rho,sbar); ¦X_H(gamma_j)-X_H(gamma)¦<=B_0 delta_j->0 uniformly; a uniform limit gamma of C^1 functions with gamma_j1->X_H(gamma) uniformly satisfies gamma1=X_H(gamma), i.e. the claim
CONSTANT_SCOPE: B_0 depends on (M,E,rho,sbar)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, stepP:p3:inv-err, K:bp:p1:cauchy-open, bpP:p3:limitmap#data, bpP:p3b#kam-bounds, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data, bpP:p3:tori#data, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Phi_j->Phi uniformly (delta_j->0)
EDGE: stepP:p3:inv-err | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | sup_t¦gamma_j1-X_H(gamma_j)¦->0
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Cauchy estimates for DX_H on D_{rho/2} x T_{sbar/2}
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | scaled versus unscaled distances
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Ehat<2^{-13} from (3.4)
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | L143 bounds X_H(gamma_j)-X_H(gamma) on the nearby real segment.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3+sol-review-P-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: p3b L143 invokes the real C^1 uniform-derivative-limit theorem for curves gamma_j on R. No admitted external/imported statement here supplies that theorem. K uniform-limits is holomorphic on an open complex set, with uniform complex derivative convergence, so it is not this real-curve contract. The local derivative/MVT estimate and convergence inputs are recorded; the final passage to a real C^1 limit remains an explicitly asserted bridge. The trailing N citations merely recall inv-conj.
```

### P-p3 — stepP:p3:mt-pre

The extension identity Phi_e=Phi is supplied by mt-ext (via cover), not by limit-phi. L182 explicitly unscales the inverse estimate and therefore directly uses S from limitmap#data. Replace the incorrectly attributed edge by that rescaling edge; measure#data supplies K_Omega=Phi(D_* x R^n).

```text
NODE: stepP:p3:mt-pre
KIND: step
TITLE: Preimage structure
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L181-L182
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L181-L182
CONTRACT_ID: stepP:p3:mt-pre
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:meas-torus: the original KAM hypotheses and the measure data; angle measure is the unit-cell measure; y=(I_y,theta_y) belongs to the second set of L178, theta_y in [0,1)^n; let x=Phi_e^{-1}(y); previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: y
SOURCE_CONCLUSION: ¦I_x-I_y¦<=rho_2:=2 Ehat_0 rhohat_0 and ¦theta_x-theta_y¦<=Ehat_0 s_0/pi<=Ehat_0/(4 pi)=:epsilon; if I_x in D_* then y=Phi(x) in K_Omega, a contradiction; hence I_x in N_{rho_2}(D_*) minus D_* and theta_x in [-epsilon,1+epsilon)^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:mt-ext, bpP:p3:measure#data, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data, bpP:p3:limitmap#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:mt-ext | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L182-L182 | the extension Phi_e and the bound on ¦Phi_e^{-1}(y)-y¦
EDGE: bpP:p3:measure#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L182-L182 | K_Omega=Phi(D_* x R^n), N_rho
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L182-L182 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L182-L182 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L182-L182 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L182-L182 | The definition S(I,theta)=(I/rhohat_0,2 pi theta/s_0) converts the scaled inverse-displacement estimate to the action and angle bounds.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3+sol-review-P-e
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

READY delta-P-e
