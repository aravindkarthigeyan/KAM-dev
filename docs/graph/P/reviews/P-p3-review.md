# P-p3 topology review

Reviewer: sol-review-P-e. Marker: rev-P-e.

**Verdict: FAIL.** Reviewed all 95 current nodes and all 131 coverage items against both source files in full (p3a L1-L265; p3b L1-L242), the binding SPEC, and the owning statements of direct suppliers. This is a source-topology review, not a proof-status or Lean audit.

The extractor correctly removed the backwards edges from the iterative construction to the theorem it proves. Those references supply source hypotheses, not theorem conclusions. The holomorphic ext-ift is correctly retained as a distinct external: Part 1 ext-ift is a real C^1 local theorem. Its source fields nevertheless need the explicit conditional binders. The corresponding Weierstrass alias is invalid: its K target requires derivative convergence as a premise.

In the current packet graph, all 95 slice nodes feed at least one of the six SPEC roots, and no cycle involving this slice was found. No missing mathematical argument is supplied by this review: unmatched general conjugation and real C^1 limit contracts are exposed as SOURCE_GAP notes. Pure algebra, coefficient continuity from its defining integral, and finite-dimensional norm calculations do not require invented theorem nodes.

The main repeated failures are source-hypothesis fields that assume previously derived conclusions and missing direct package/data uses. A replacement field referring to the original source setting means its hypotheses, not the proved conclusion; it creates no theorem edge. Existing metadata, anchor identity fields, and all unrelated fields are preserved verbatim in the replacement blocks.

| Node | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| bpP:p3:constants | PASS | p3a-two-scale-iteration.tex#bpP:p3:constants@L42-L55 | Source contract, direct uses and locators agree. |
| bpP:p3:two-scale-kam | FAIL | p3a-two-scale-iteration.tex#bpP:p3:two-scale-kam@L59-L87; p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L193-L204 | Restore the bounded-D global inverse Lipschitz clause stated at p3a L79 and proved at p3b L201. |
| bpP:p3:rem-norm | FAIL | p3a-two-scale-iteration.tex#bpP:p3:rem-norm@L89-L93; p3a-two-scale-iteration.tex#bpP:p3:rem-norm@L89-L93 | Expose the false monotonicity assertion in the source remark instead of silently omitting it. |
| bpP:p3:period-dictionary | FAIL | p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L95-L100; p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L101-L109 | A torus is given conditionally at L98; the existence theorem is not applied by the dictionary. |
| stepP:p3:pd-subst | FAIL | p3a-two-scale-iteration.tex#stepP:p3:pd-subst@L102-L103; p3a-two-scale-iteration.tex#stepP:p3:pd-subst@L102-L103 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| stepP:p3:pd-invar | FAIL | p3a-two-scale-iteration.tex#stepP:p3:pd-invar@L104-L106; p3a-two-scale-iteration.tex#stepP:p3:pd-invar@L104-L106 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| stepP:p3:pd-dyn | FAIL | p3a-two-scale-iteration.tex#stepP:p3:pd-dyn@L107-L108; p3a-two-scale-iteration.tex#stepP:p3:pd-dyn@L107-L108 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| bpP:p3:ext-ift | FAIL | p3a-two-scale-iteration.tex#bpP:p3:ext-ift@L114-L114 | The external has explicit premises and quantifiers, not none. |
| bpP:p3:ext-neumann | FAIL | p3a-two-scale-iteration.tex#bpP:p3:ext-neumann@L118-L118 | The external has explicit premises and quantifiers, not none. |
| bpP:p3:ball | PASS | p3a-two-scale-iteration.tex#bpP:p3:ball@L124-L126; p3a-two-scale-iteration.tex#bpP:p3:ball@L127-L136 | Source contract, direct uses and locators agree. |
| stepP:p3:ball-inv | FAIL | p3a-two-scale-iteration.tex#stepP:p3:ball-inv@L128-L129; p3a-two-scale-iteration.tex#stepP:p3:ball-inv@L128-L129 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| stepP:p3:ball-lift | FAIL | p3a-two-scale-iteration.tex#stepP:p3:ball-lift@L130-L131; p3a-two-scale-iteration.tex#stepP:p3:ball-lift@L130-L131 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| stepP:p3:ball-closed | FAIL | p3a-two-scale-iteration.tex#stepP:p3:ball-closed@L132-L133; p3a-two-scale-iteration.tex#stepP:p3:ball-closed@L132-L133 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| stepP:p3:ball-lip | FAIL | p3a-two-scale-iteration.tex#stepP:p3:ball-lip@L134-L135; p3a-two-scale-iteration.tex#stepP:p3:ball-lip@L134-L135 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| bpP:p3:lip-sup | PASS | p3a-two-scale-iteration.tex#bpP:p3:lip-sup@L138-L140; p3a-two-scale-iteration.tex#bpP:p3:lip-sup@L141-L146 | Source contract, direct uses and locators agree. |
| stepP:p3:ls-close | FAIL | p3a-two-scale-iteration.tex#stepP:p3:ls-close@L142-L143; p3a-two-scale-iteration.tex#stepP:p3:ls-close@L142-L143 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| stepP:p3:ls-far | FAIL | p3a-two-scale-iteration.tex#stepP:p3:ls-far@L144-L145; p3a-two-scale-iteration.tex#stepP:p3:ls-far@L144-L145 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| bpP:p3:avg | FAIL | p3a-two-scale-iteration.tex#bpP:p3:avg@L150-L163; p3a-two-scale-iteration.tex#bpP:p3:avg@L164-L166 | L165 uses the stronger bound E/kappa with kappa=K s, beyond the E/4 statement of Part 2 avg. The stronger E/(K s) conclusion directly consumes nfb; the width dictionary must remain explicit. |
| bpP:p3:step | FAIL | p3a-two-scale-iteration.tex#bpP:p3:step@L170-L190; p3a-two-scale-iteration.tex#bpP:p3:step@L192-L226 | Restore the source domain of (v), exposing its mismatch with the declared domain of Psi_+. |
| stepP:p3:st-nonres | FAIL | p3a-two-scale-iteration.tex#stepP:p3:st-nonres@L193-L197; p3a-two-scale-iteration.tex#stepP:p3:st-nonres@L193-L197 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| stepP:p3:st-small | FAIL | p3a-two-scale-iteration.tex#stepP:p3:st-small@L198-L199; p3a-two-scale-iteration.tex#stepP:p3:st-small@L198-L199 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. L199 establishes applicability only; the actual averaging conclusion is used in st-avg at L201. Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:st-avg | FAIL | p3a-two-scale-iteration.tex#stepP:p3:st-avg@L200-L202; p3a-two-scale-iteration.tex#stepP:p3:st-avg@L200-L202 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Preserve the explicit deferred restriction at L202; the construction of D_+ is not yet available at this step. |
| stepP:p3:st-disp | FAIL | p3a-two-scale-iteration.tex#stepP:p3:st-disp@L203-L205; p3a-two-scale-iteration.tex#stepP:p3:st-disp@L203-L205 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. The averaging map and its displacement estimates are instantiated at L201 before the calculation at L204. |
| stepP:p3:st-dg | FAIL | p3a-two-scale-iteration.tex#stepP:p3:st-dg@L206-L209; p3a-two-scale-iteration.tex#stepP:p3:st-dg@L206-L209 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:st-U | FAIL | p3a-two-scale-iteration.tex#stepP:p3:st-U@L210-L212; p3a-two-scale-iteration.tex#stepP:p3:st-U@L210-L212 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). The analytic correction g and h_+=h+g were constructed by averaging at L201-L202. |
| stepP:p3:st-inj | FAIL | p3a-two-scale-iteration.tex#stepP:p3:st-inj@L213-L215; p3a-two-scale-iteration.tex#stepP:p3:st-inj@L213-L215 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:st-ihat | FAIL | p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L216-L219; p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L216-L219 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:st-const | FAIL | p3a-two-scale-iteration.tex#stepP:p3:st-const@L220-L223; p3a-two-scale-iteration.tex#stepP:p3:st-const@L220-L223 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| stepP:p3:st-quad | FAIL | p3a-two-scale-iteration.tex#stepP:p3:st-quad@L224-L225; p3a-two-scale-iteration.tex#stepP:p3:st-quad@L224-L225 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| bpP:p3:seq | PASS | p3a-two-scale-iteration.tex#bpP:p3:seq@L236-L240 | Source contract, direct uses and locators agree. |
| bpP:p3:iterative | FAIL | p3a-two-scale-iteration.tex#bpP:p3:iterative@L242-L253; p3a-two-scale-iteration.tex#bpP:p3:iterative@L254-L265 | Restore the smaller target W-prime in (iii) and the explicit j>=1 range of the strict recurrence in (iv). Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). |
| stepP:p3:it-ind | FAIL | p3a-two-scale-iteration.tex#stepP:p3:it-ind@L255-L256; p3a-two-scale-iteration.tex#stepP:p3:it-ind@L255-L256 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Defining P_j from the hypotheses of the step lemma is not an application of its conclusion. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:it-base | FAIL | p3a-two-scale-iteration.tex#stepP:p3:it-base@L257-L258; p3a-two-scale-iteration.tex#stepP:p3:it-base@L257-L258 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:it-step | FAIL | p3a-two-scale-iteration.tex#stepP:p3:it-step@L259-L260; p3a-two-scale-iteration.tex#stepP:p3:it-step@L259-L260 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:it-comp | FAIL | p3a-two-scale-iteration.tex#stepP:p3:it-comp@L261-L262; p3a-two-scale-iteration.tex#stepP:p3:it-comp@L261-L262 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:it-rates | FAIL | p3a-two-scale-iteration.tex#stepP:p3:it-rates@L263-L264; p3a-two-scale-iteration.tex#stepP:p3:it-rates@L263-L264 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). |
| bpP:p3:sums | FAIL | p3b-two-scale-limit.tex#bpP:p3:sums@L6-L8; p3b-two-scale-limit.tex#bpP:p3:sums@L9-L16 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). |
| stepP:p3:sum-doubling | FAIL | p3b-two-scale-limit.tex#stepP:p3:sum-doubling@L10-L11; p3b-two-scale-limit.tex#stepP:p3:sum-doubling@L10-L11 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). |
| stepP:p3:sum-weighted | FAIL | p3b-two-scale-limit.tex#stepP:p3:sum-weighted@L12-L13; p3b-two-scale-limit.tex#stepP:p3:sum-weighted@L12-L13 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). |
| stepP:p3:sum-radii | FAIL | p3b-two-scale-limit.tex#stepP:p3:sum-radii@L14-L15; p3b-two-scale-limit.tex#stepP:p3:sum-radii@L14-L15 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| bpP:p3:limit-actions | FAIL | p3b-two-scale-limit.tex#bpP:p3:limit-actions@L20-L29; p3b-two-scale-limit.tex#bpP:p3:limit-actions@L30-L39 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of c,q or the numerical smallness bounds (3.4). |
| stepP:p3:la-wp | FAIL | p3b-two-scale-limit.tex#stepP:p3:la-wp@L31-L32; p3b-two-scale-limit.tex#stepP:p3:la-wp@L31-L32 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:la-tele | FAIL | p3b-two-scale-limit.tex#stepP:p3:la-tele@L33-L34; p3b-two-scale-limit.tex#stepP:p3:la-tele@L33-L34 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:la-loc | FAIL | p3b-two-scale-limit.tex#stepP:p3:la-loc@L35-L36; p3b-two-scale-limit.tex#stepP:p3:la-loc@L35-L36 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:la-lip | FAIL | p3b-two-scale-limit.tex#stepP:p3:la-lip@L37-L38; p3b-two-scale-limit.tex#stepP:p3:la-lip@L37-L38 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). |
| bpP:p3:psi-lip | FAIL | p3b-two-scale-limit.tex#bpP:p3:psi-lip@L45-L51; p3b-two-scale-limit.tex#bpP:p3:psi-lip@L52-L62 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of c,q or the numerical smallness bounds (3.4). |
| stepP:p3:pl-dom | FAIL | p3b-two-scale-limit.tex#stepP:p3:pl-dom@L53-L54; p3b-two-scale-limit.tex#stepP:p3:pl-dom@L53-L54 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of c,q or the numerical smallness bounds (3.4). |
| stepP:p3:pl-disp | FAIL | p3b-two-scale-limit.tex#stepP:p3:pl-disp@L55-L56; p3b-two-scale-limit.tex#stepP:p3:pl-disp@L55-L56 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:pl-lip | FAIL | p3b-two-scale-limit.tex#stepP:p3:pl-lip@L57-L59; p3b-two-scale-limit.tex#stepP:p3:pl-lip@L57-L59 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:pl-sum | FAIL | p3b-two-scale-limit.tex#stepP:p3:pl-sum@L60-L61; p3b-two-scale-limit.tex#stepP:p3:pl-sum@L60-L61 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). |
| bpP:p3:fourier-compact | PASS | p3b-two-scale-limit.tex#bpP:p3:fourier-compact@L64-L66; p3b-two-scale-limit.tex#bpP:p3:fourier-compact@L67-L75 | Source contract, direct uses and locators agree. |
| stepP:p3:fc-decay | FAIL | p3b-two-scale-limit.tex#stepP:p3:fc-decay@L68-L69; p3b-two-scale-limit.tex#stepP:p3:fc-decay@L68-L69 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| stepP:p3:fc-coef | FAIL | p3b-two-scale-limit.tex#stepP:p3:fc-coef@L70-L71; p3b-two-scale-limit.tex#stepP:p3:fc-coef@L70-L71 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. The K contract is Fourier reconstruction under absolute summability, not convergence of coefficients under uniform convergence. |
| stepP:p3:fc-tail | FAIL | p3b-two-scale-limit.tex#stepP:p3:fc-tail@L72-L74; p3b-two-scale-limit.tex#stepP:p3:fc-tail@L72-L74 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. The source cites full Weierstrass; the purported alias has an additional derivative-convergence premise. L74 uses locally uniform holomorphic limits and derivative convergence on smaller strips. L74 identifies functions with their Fourier series; the decay estimate gives absolute summability on the real torus. |
| bpP:p3:limit-phi | FAIL | p3b-two-scale-limit.tex#bpP:p3:limit-phi@L77-L85; p3b-two-scale-limit.tex#bpP:p3:limit-phi@L86-L95 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of c,q or the numerical smallness bounds (3.4). |
| stepP:p3:lp-tele | FAIL | p3b-two-scale-limit.tex#stepP:p3:lp-tele@L87-L88; p3b-two-scale-limit.tex#stepP:p3:lp-tele@L87-L88 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:lp-cauchy | FAIL | p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L89-L90; p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L89-L90 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of c,q or the numerical smallness bounds (3.4). |
| stepP:p3:lp-per | FAIL | p3b-two-scale-limit.tex#stepP:p3:lp-per@L91-L92; p3b-two-scale-limit.tex#stepP:p3:lp-per@L91-L92 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of S, checked maps or the rescaled norm. |
| stepP:p3:lp-an | FAIL | p3b-two-scale-limit.tex#stepP:p3:lp-an@L93-L94; p3b-two-scale-limit.tex#stepP:p3:lp-an@L93-L94 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| bpP:p3:estimates | FAIL | p3b-two-scale-limit.tex#bpP:p3:estimates@L102-L106; p3b-two-scale-limit.tex#bpP:p3:estimates@L107-L112 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:es-sup | FAIL | p3b-two-scale-limit.tex#stepP:p3:es-sup@L108-L109; p3b-two-scale-limit.tex#stepP:p3:es-sup@L108-L109 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). |
| stepP:p3:es-loc | FAIL | p3b-two-scale-limit.tex#stepP:p3:es-loc@L110-L111; p3b-two-scale-limit.tex#stepP:p3:es-loc@L110-L111 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data. |
| bpP:p3:lagr | FAIL | p3b-two-scale-limit.tex#bpP:p3:lagr@L114-L116; p3b-two-scale-limit.tex#bpP:p3:lagr@L117-L124 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of c,q or the numerical smallness bounds (3.4). |
| stepP:p3:lg-cauchy | FAIL | p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L118-L119; p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L118-L119 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data. |
| stepP:p3:lg-j | FAIL | p3b-two-scale-limit.tex#stepP:p3:lg-j@L120-L121; p3b-two-scale-limit.tex#stepP:p3:lg-j@L120-L121 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data. |
| stepP:p3:lg-lim | FAIL | p3b-two-scale-limit.tex#stepP:p3:lg-lim@L122-L123; p3b-two-scale-limit.tex#stepP:p3:lg-lim@L122-L123 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data. |
| bpP:p3:invariance | PASS | p3b-two-scale-limit.tex#bpP:p3:invariance@L126-L129; p3b-two-scale-limit.tex#bpP:p3:invariance@L130-L144 | Source contract, direct uses and locators agree. |
| stepP:p3:inv-conj | FAIL | p3b-two-scale-limit.tex#stepP:p3:inv-conj@L132-L134; p3b-two-scale-limit.tex#stepP:p3:inv-conj@L132-L134 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data. The cited N contracts concern a single small Hamiltonian flow; Phi_j is a composition, and the repeated references at L143 are pointers to inv-conj. Expose the unmatched single-flow premises at the general symplectic-composition application. |
| stepP:p3:inv-dphi | FAIL | p3b-two-scale-limit.tex#stepP:p3:inv-dphi@L135-L136; p3b-two-scale-limit.tex#stepP:p3:inv-dphi@L135-L136 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). |
| stepP:p3:inv-err | FAIL | p3b-two-scale-limit.tex#stepP:p3:inv-err@L137-L141; p3b-two-scale-limit.tex#stepP:p3:inv-err@L137-L141 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data. L141 converts the three component errors to the derivative error using the identity of L133-L134. L141 needs the j-independent derivative bound kappa from L136. L138 bounds omega_j across the segment using its Hessian bound. |
| stepP:p3:inv-lim | FAIL | p3b-two-scale-limit.tex#stepP:p3:inv-lim@L142-L143; p3b-two-scale-limit.tex#stepP:p3:inv-lim@L142-L143 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data. The cited N contracts concern a single small Hamiltonian flow; Phi_j is a composition, and the repeated references at L143 are pointers to inv-conj. L143 bounds X_H(gamma_j)-X_H(gamma) on the nearby real segment. Expose the unrecorded real C^1 derivative-limit bridge and remove repeated N pointers. |
| bpP:p3:cover | PASS | p3b-two-scale-limit.tex#bpP:p3:cover@L150-L152; p3b-two-scale-limit.tex#bpP:p3:cover@L153-L160 | Source contract, direct uses and locators agree. |
| stepP:p3:cv-ext | FAIL | p3b-two-scale-limit.tex#stepP:p3:cv-ext@L154-L155; p3b-two-scale-limit.tex#stepP:p3:cv-ext@L154-L155 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| stepP:p3:cv-bij | FAIL | p3b-two-scale-limit.tex#stepP:p3:cv-bij@L156-L157; p3b-two-scale-limit.tex#stepP:p3:cv-bij@L156-L157 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| stepP:p3:cv-loc | FAIL | p3b-two-scale-limit.tex#stepP:p3:cv-loc@L158-L159; p3b-two-scale-limit.tex#stepP:p3:cv-loc@L158-L159 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. |
| bpP:p3:meas-actions | PASS | p3b-two-scale-limit.tex#bpP:p3:meas-actions@L162-L164; p3b-two-scale-limit.tex#bpP:p3:meas-actions@L165-L170 | Source contract, direct uses and locators agree. |
| stepP:p3:ma-ext | FAIL | p3b-two-scale-limit.tex#stepP:p3:ma-ext@L166-L167; p3b-two-scale-limit.tex#stepP:p3:ma-ext@L166-L167 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:ma-meas | FAIL | p3b-two-scale-limit.tex#stepP:p3:ma-meas@L168-L169; p3b-two-scale-limit.tex#stepP:p3:ma-meas@L168-L169 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct outer-measure monotonicity/subadditivity or box-volume scaling/product with an interval box. |
| bpP:p3:meas-torus | PASS | p3b-two-scale-limit.tex#bpP:p3:meas-torus@L172-L174; p3b-two-scale-limit.tex#bpP:p3:meas-torus@L175-L189 | Source contract, direct uses and locators agree. |
| stepP:p3:mt-split | FAIL | p3b-two-scale-limit.tex#stepP:p3:mt-split@L177-L178; p3b-two-scale-limit.tex#stepP:p3:mt-split@L177-L178 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct outer-measure monotonicity/subadditivity or box-volume scaling/product with an interval box. |
| stepP:p3:mt-ext | FAIL | p3b-two-scale-limit.tex#stepP:p3:mt-ext@L179-L180; p3b-two-scale-limit.tex#stepP:p3:mt-ext@L179-L180 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct outer-measure monotonicity/subadditivity or box-volume scaling/product with an interval box. |
| stepP:p3:mt-pre | FAIL | p3b-two-scale-limit.tex#stepP:p3:mt-pre@L181-L182; p3b-two-scale-limit.tex#stepP:p3:mt-pre@L181-L182 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. |
| stepP:p3:mt-meas | FAIL | p3b-two-scale-limit.tex#stepP:p3:mt-meas@L183-L184; p3b-two-scale-limit.tex#stepP:p3:mt-meas@L183-L184 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of c,q or the numerical smallness bounds (3.4). Direct use of S, checked maps or the rescaled norm. Direct use of the measure data K_Omega,a,b,N_rho or the shell notation. Direct outer-measure monotonicity/subadditivity or box-volume scaling/product with an interval box. |
| stepP:p3:mt-shell | FAIL | p3b-two-scale-limit.tex#stepP:p3:mt-shell@L185-L186; p3b-two-scale-limit.tex#stepP:p3:mt-shell@L185-L186 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct outer-measure monotonicity/subadditivity or box-volume scaling/product with an interval box. |
| stepP:p3:mt-sum | FAIL | p3b-two-scale-limit.tex#stepP:p3:mt-sum@L187-L188; p3b-two-scale-limit.tex#stepP:p3:mt-sum@L187-L188 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the measure data K_Omega,a,b,N_rho or the shell notation. |
| stepP:p3:pf-constr | FAIL | p3b-two-scale-limit.tex#stepP:p3:pf-constr@L194-L195; p3b-two-scale-limit.tex#stepP:p3:pf-constr@L194-L195 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). |
| stepP:p3:pf-ad | FAIL | p3b-two-scale-limit.tex#stepP:p3:pf-ad@L196-L197; p3b-two-scale-limit.tex#stepP:p3:pf-ad@L196-L197 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data. |
| stepP:p3:pf-bc | FAIL | p3b-two-scale-limit.tex#stepP:p3:pf-bc@L198-L199; p3b-two-scale-limit.tex#stepP:p3:pf-bc@L198-L199 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data. |
| stepP:p3:pf-inj | FAIL | p3b-two-scale-limit.tex#stepP:p3:pf-inj@L200-L201; p3b-two-scale-limit.tex#stepP:p3:pf-inj@L200-L201 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values). Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct use of S, checked maps or the rescaled norm. |
| stepP:p3:pf-meas | FAIL | p3b-two-scale-limit.tex#stepP:p3:pf-meas@L202-L203; p3b-two-scale-limit.tex#stepP:p3:pf-meas@L202-L203 | Restore the original source premises and local branch; derived bounds or cited results are not independent hypotheses. Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation. Direct outer-measure monotonicity/subadditivity or box-volume scaling/product with an interval box. |
| bpP:p3:conv#data | PASS | p3a-two-scale-iteration.tex#bpP:p3:conv#data@L11-L34 | Source contract, direct uses and locators agree. |
| bpP:p3b#kam-bounds | FAIL | p3b-two-scale-limit.tex#bpP:p3b#kam-bounds@L3-L4 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j). |
| bpP:p3:limitmap#data | PASS | p3b-two-scale-limit.tex#bpP:p3:limitmap#data@L43-L43 | Source contract, direct uses and locators agree. |
| bpP:p3:tori#data | PASS | p3b-two-scale-limit.tex#bpP:p3:tori#data@L99-L100 | Source contract, direct uses and locators agree. |
| bpP:p3:measure#data | PASS | p3b-two-scale-limit.tex#bpP:p3:measure#data@L148-L148 | Source contract, direct uses and locators agree. |

Coverage failures:

| Item | Verdict | Reason |
|---|---|---|
| bpP:p3:ext-weierstrass | FAIL | Different premises and conclusion from the alleged K alias; restore native external. |
| bpP:p3:ext-fourier | FAIL | The stated alias rationale assigns coefficient continuity to a reconstruction theorem; correct the notation mapping and actual consumer. |
| p3b:prose-L208-L218 | FAIL | The numerical-bound choices and exact x,K calculation are explicitly consumed in Part 5 L200,L224; exclusion says Part 5 cites only the proposition. Map to the existing owners/consumers. |

all other coverage items PASS

## Replacement fragments

82 existing node blocks change. Only fields identified by each finding change; TOPOLOGY_STATUS and reviewer metadata remain for the writer to manage. The added external follows the explicit SPEC external list, not an invented input.

### bpP:p3:two-scale-kam

Changed fields: SOURCE_CONCLUSION.

```text
NODE: bpP:p3:two-scale-kam
KIND: proposition
TITLE: Two-scale KAM theorem
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:two-scale-kam@L59-L87
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L193-L204
CONTRACT_ID: bpP:p3:two-scale-kam
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: integers n_1,n_2>=1, n=n_1+n_2; tau>n; gamma_1>=gamma_2>0; 0<4s<=sbar<1; rho>0; D subset R^n arbitrary; A:=D_rho; H(J,theta)=h(J)+f(J,theta) real analytic on A x T_{sbar+s}, 1-periodic in theta, real on R^n x R^n; omega_0:=dh an injective holomorphic map A->C^n with U=d^2h nonsingular on A; constants M,Mhat,Mbar,Mbar_1,Mbar_2,E>0 with M>=sup norm U, Mhat>=sup norm Uhat, Mbar>=sup norm U^{-1}, Mbar_i>=sup norm T_i, E>=norm f_{rho,sbar+s}, Mhat<=M, Mbar_i<=Mbar; L,K,rhohat,Ehat,chat as in Definition constants; KAM condition chat Ehat<1
SOURCE_QUANTIFIERS: n_1,n_2; tau; gamma_1,gamma_2; s,sbar; rho; D; h,f; M,Mhat,Mbar,Mbar_1,Mbar_2,E; then r:=32 Ehat rhohat, Omega_*:=omega_0(D) cap D_{gamma_1,gamma_2,tau}, D^dio:=omega_0^{-1}(Omega_*) cap D; then maps phi_omega for omega in Omega_*
SOURCE_CONCLUSION: for every omega in Omega_*, phi_omega(theta)=(v(theta;omega), theta+u(theta;omega)) from R^n to Re(D_r) x R^n with v,u 1-periodic and: (a) real analytic, extends holomorphically to ¦Im theta¦<sbar/2 pi with ¦u¦<=3 Ehat s/(4 pi); (b) d/dt phi_omega(theta+t omega)=X_H(phi_omega(theta+t omega)) with X_H=(-d_theta H, d_J H); (c) D phi_omega injective (norm D u<=3 n Ehat/4) and Lagrangian; (d) ¦v_1-I^0_1¦<=20(Mbar_1/Mbar+Mhat/M)Ehat rhohat, ¦v_2-I^0_2¦<=20(Mbar_2/Mbar+1)Ehat rhohat, ¦u¦<=3 Ehat s/(4 pi) on R^n, I^0(omega)=omega_0^{-1}(omega) in D^dio; the map (theta,omega)->phi_omega(theta) is injective modulo theta->theta+k, factors as Phi o (ihat-check o omega_0^{-1}, id) with ihat-check Lipschitz <=1+2560 n Ehat and Phi bi-Lipschitz in the rescaled norm, omega_0^{-1} is Mbar-Lipschitz on Omega_* for pairs at distance <rho/Mbar, and globally Mbar max{1,diam D/rho}-Lipschitz when D is bounded; and with K_Omega=union of phi_omega(R^n), c_n=1+(1+2^n)(1+(4/3)^n): meas((Re(D_r) x T^n) minus K_Omega)<=c_n(meas((D minus D^dio) x T^n)+meas((Re(D_r) minus D) x T^n)) (3.1)
CONSTANT_SCOPE: chat, c_n depend only on n,tau; K,rhohat,Ehat,L only on (n_1,n_2,tau,gamma_1,gamma_2,s,rho,E,M,Mhat,Mbar) in the order of Definition constants; D,h,f enter only through those constants and the hypotheses; sbar enters only through 4s<=sbar<1 and the width in (a)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:pf-constr, stepP:p3:pf-ad, stepP:p3:pf-bc, stepP:p3:pf-inj, stepP:p3:pf-meas, bpP:p3:constants, bpP:p3:conv#data, bpP:p3:limitmap#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:pf-constr | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L194-L194 | proof step: construction
EDGE: stepP:p3:pf-ad | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L196-L196 | proof step: (a), (d)
EDGE: stepP:p3:pf-bc | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L198-L198 | proof step: (b), (c)
EDGE: stepP:p3:pf-inj | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L200-L200 | proof step: injectivity and Lipschitz structure
EDGE: stepP:p3:pf-meas | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:two-scale-kam@L202-L202 | proof step: measure
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:two-scale-kam@L66-L66 | L, K, rhohat, Ehat, chat and the KAM condition
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:two-scale-kam@L61-L61 | the norm, D_r, T_sigma, the blocks Uhat, T_i and the set D_{gamma_1,gamma_2,tau}
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:two-scale-kam@L79-L79 | the rescaled norm of the Lipschitz statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the pointer to bpP:p3:rem-norm (normalizations, L65) and the source-gap on bpP:p3:avg (L86) are not edges: the normalizations are hypotheses and the averaging step is consumed through bpP:p3:step; sourcegap L86 is bridged by Part 2 and Lemma bpP:p3:avg
```

### bpP:p3:rem-norm

Changed fields: NOTE, SOURCE_CONCLUSION.

```text
NODE: bpP:p3:rem-norm
KIND: claim
TITLE: Normalizations $\hat M\le M$, $\bar M_i\le\bar M$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:rem-norm@L89-L93
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:rem-norm@L89-L93
CONTRACT_ID: bpP:p3:rem-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Uhat, T_i are sub-blocks of U, U^{-1} on A; the Definition constants
SOURCE_QUANTIFIERS: M,Mhat,Mbar,Mbar_i
SOURCE_CONCLUSION: norm Uhat<=norm U and norm T_i<=norm U^{-1} on A, so the hypotheses may be stated with Mhat<=M, Mbar_i<=Mbar if Mhat, Mbar_i are replaced by min{Mhat,M}, min{Mbar_i,Mbar}; this only decreases Mhat (L is unchanged); the compatible normalized bounds are chosen first and then L,K,rhohat,Ehat are computed from them; in P-G Mhat=C mu<=M=C and Mbar_i<=Mbar=C mu^{-1}; L91 additionally asserts that decreasing Mhat can increase rhohat and Ehat without changing L (see SOURCE_GAP note)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:conv#data, bpP:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:rem-norm@L90-L90 | the blocks Uhat, T_i of U, U^{-1}
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:rem-norm@L91-L91 | L, rhohat, Ehat computed from the normalized bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: p3a L91 says decreasing Mhat can increase both rhohat and Ehat while L is unchanged. With fixed E and L, Ehat=E L/rhohat^2 is nonincreasing when rhohat increases; the asserted Ehat monotonicity is unsupported. The normalization and order-of-choice claims are separate from this defective sentence. Part 5 cites the normalization for its numerical bounds.
```

### bpP:p3:period-dictionary

Changed fields: DEPS, EDGE.

```text
NODE: bpP:p3:period-dictionary
KIND: lemma
TITLE: Period dictionary
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L95-L100
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L101-L109
CONTRACT_ID: bpP:p3:period-dictionary
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A,rho,sigma; Htilde(I,phi)=htilde(I)+ftilde(I,phi) analytic on A x {¦Im phi¦<sigma}, phi in (R/2 pi Z)^n (CP10 convention: form dI^dphi, characters e^{i k.phi}, norm sup_I sum_k ¦ftilde_k¦ e^{sigma¦k¦_1}, omegatilde=d htilde, tilde constants and tilde gamma_i of omegatilde, tilde L, tilde K, tilde rhohat, tilde Ehat from Definition constants); for the torus part, phi_omega a torus of Proposition two-scale-kam for H
SOURCE_QUANTIFIERS: tilde data and constants; then H(I,theta):=Htilde(I,2 pi theta)/2 pi; tori: omega, phi_omega
SOURCE_CONCLUSION: h=htilde/2 pi, f=ftilde(.,2 pi theta)/2 pi, omega=omegatilde/2 pi, norm f_{rho,sigma}=norm ftilde/2 pi, M=tilde M/2 pi, Mhat=tilde Mhat/2 pi, Mbar=2 pi tilde Mbar, Mbar_i=2 pi tilde Mbar_i, E=tilde E/2 pi, gamma_i=tilde gamma_i/2 pi: L=2 pi tilde L and K=tilde K, rhohat=tilde rhohat, Ehat=tilde Ehat, chat=tilde chat identically; the torus phitilde(phi):=Q(phi_omega(phi/2 pi))=(v(phi/2 pi),phi+2 pi u(phi/2 pi)) is a torus for Htilde in CP coordinates with flow phi->phi+t omegatilde, omegatilde=2 pi omega, utilde=2 pi u with ¦utilde¦<=(3/2)Ehat s; the frozen frequency is w=omega=omegatilde/2 pi (one division by 2 pi)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:pd-subst, stepP:p3:pd-invar, stepP:p3:pd-dyn, bpP:p1:period-convert, bpP:p3:constants, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:pd-subst | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L102-L102 | step: substitution
EDGE: stepP:p3:pd-invar | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L104-L104 | step: invariants
EDGE: stepP:p3:pd-dyn | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L107-L107 | step: dynamics and tori
EDGE: bpP:p1:period-convert | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L96-L96 | this is Part 1 period-convert with c=2 pi (statement and dynamics)
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L96-L96 | constants computed by Definition constants
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:period-dictionary@L96-L96 | norm, characters and Hamilton equations of Part 3
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the pipeline chart Psi=Phi o S_{2 pi} of bpP:p1:cyl-pipeline and the test example are descriptions of the downstream use (Part 5), not uses; no edge to cyl-pipeline
```

### stepP:p3:pd-subst

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:pd-subst
KIND: step
TITLE: Substitution
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-subst@L102-L103
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-subst@L102-L103
CONTRACT_ID: stepP:p3:pd-subst
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:period-dictionary: the tilde Hamiltonian and its numerical bounds; for the torus clauses, a given torus with the stated conjugacy and estimates; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: k in Z^n
SOURCE_CONCLUSION: f(I,theta)=(1/2 pi) sum_k ftilde_k(I) e^{2 pi i k.theta}: same weights, coefficients divided by 2 pi; U=tilde U/2 pi, U^{-1}=2 pi tilde U^{-1}, sub-blocks likewise
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-subst@L103-L103 | the norm weights and the blocks U, Uhat, T_i
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:pd-invar

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:pd-invar
KIND: step
TITLE: Invariants
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-invar@L104-L106
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-invar@L104-L106
CONTRACT_ID: stepP:p3:pd-invar
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:period-dictionary: the tilde Hamiltonian and its numerical bounds; for the torus clauses, a given torus with the stated conjugacy and estimates; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: E M^2 L/gamma_1^2=tilde E tilde M^2 tilde L/tilde gamma_1^2 so K=tilde K; gamma_1/(3 M K^{tau+1})=tilde gamma_1/(3 tilde M K^{tau+1}) (same for gamma_2, Mhat) so rhohat=tilde rhohat; E L/rhohat^2=tilde E tilde L/rhohat^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:constants, stepP:p3:pd-subst
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-invar@L105-L105 | the formulas for x, K, rhohat, Ehat
EDGE: stepP:p3:pd-subst | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-invar@L105-L105 | the scalings of E, M, L, gamma_i
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:pd-dyn

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:pd-dyn
KIND: step
TITLE: Dynamics and tori
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-dyn@L107-L108
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-dyn@L107-L108
CONTRACT_ID: stepP:p3:pd-dyn
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:period-dictionary: the tilde Hamiltonian and its numerical bounds; for the torus clauses, a given torus with the stated conjugacy and estimates; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: torus phi_omega
SOURCE_CONCLUSION: phidot=d_I Htilde=2 pi thetadot, Idot=-d_phi Htilde=-d_theta H; composing the conjugacy with Q gives phitilde and w=omegatilde/2 pi=omega
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p1:period-convert, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p1:period-convert | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-dyn@L108-L108 | (b) Hamilton equations and (c) parameter conversion with frozen frequency
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:pd-dyn@L108-L108 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p3:ext-ift

Changed fields: SOURCE_HYPOTHESES, SOURCE_QUANTIFIERS.

```text
NODE: bpP:p3:ext-ift
KIND: external
TITLE: Holomorphic inverse function theorem
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ext-ift@L114-L114
PROOF_SOURCE: -
CONTRACT_ID: bpP:p3:ext-ift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Omega subset C^n open; F:Omega->C^n injective holomorphic; det DF != 0 on Omega
SOURCE_QUANTIFIERS: n; Omega; F with the stated properties
SOURCE_CONCLUSION: holomorphic inverse function theorem: an injective holomorphic F:Omega->C^n (Omega open) with det DF != 0 is open and F^{-1}:F(Omega)->Omega is holomorphic with D(F^{-1})=(DF)^{-1} o F^{-1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: related to the Part 1 external bpP:p1:ext-ift (C^1 inverse function theorem in the real setting): this item is the holomorphic version with the derivative formula, not an alias
```

### bpP:p3:ext-neumann

Changed fields: SOURCE_HYPOTHESES, SOURCE_QUANTIFIERS.

```text
NODE: bpP:p3:ext-neumann
KIND: external
TITLE: bpP:p3:ext-neumann
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ext-neumann@L118-L118
PROOF_SOURCE: -
CONTRACT_ID: bpP:p3:ext-neumann
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B a square matrix with induced operator norm <=1/2
SOURCE_QUANTIFIERS: matrix dimension; B
SOURCE_CONCLUSION: Neumann series: norm B<=1/2 implies 1+B invertible with norm (1+B)^{-1}<=2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:ball-inv

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:ball-inv
KIND: step
TITLE: Inverse
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-inv@L128-L129
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-inv@L128-L129
CONTRACT_ID: stepP:p3:ball-inv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:ball: Omega open, F injective holomorphic with the stated inverse derivative bound, and B(x_0,delta) subset Omega; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in ball
SOURCE_CONCLUSION: G:=F^{-1}:F(Omega)->Omega is holomorphic with norm DG<=m and F(B(x_0,delta)) is open
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:ext-ift
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:ext-ift | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-inv@L129-L129 | holomorphic inverse function theorem
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:ball-lift

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:ball-lift
KIND: step
TITLE: Path lifting
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lift@L130-L131
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lift@L130-L131
CONTRACT_ID: stepP:p3:ball-lift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:ball: Omega open, F injective holomorphic with the stated inverse derivative bound, and B(x_0,delta) subset Omega; choose w in B(F(x_0),delta/m), define gamma, delta1 and T as at L131; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: w, t in T
SOURCE_CONCLUSION: 0 in T, T is relatively open, and for t in T the path G o gamma is C^1 with derivative bounded by m ¦w-F(x_0)¦ so ¦G(gamma(t))-x_0¦<=t delta1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-mvt, stepP:p3:ball-inv
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lift@L131-L131 | mean value inequality along the path
EDGE: stepP:p3:ball-inv | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lift@L131-L131 | G=F^{-1} holomorphic with norm DG<=m
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:ball-closed

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:ball-closed
KIND: step
TITLE: Closedness
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-closed@L132-L133
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-closed@L132-L133
CONTRACT_ID: stepP:p3:ball-closed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:ball: Omega open, F injective holomorphic with the stated inverse derivative bound, and B(x_0,delta) subset Omega; for the closedness argument take t_k increasing to t^* with t_k in T; gamma,delta1,T are the definitions in L131; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: w
SOURCE_CONCLUSION: G(gamma(t_k)) is Cauchy with limit x^*, ¦x^*-x_0¦<=delta1<delta, F(x^*)=gamma(t^*), so t^* in T; hence T=[0,1] and w=F(G(w)) lies in F(B(x_0,delta))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:ball-lift
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:ball-lift | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-closed@L133-L133 | T is relatively open and G o gamma is Lipschitz in t
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:ball-lip

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:ball-lip
KIND: step
TITLE: Lipschitz bound
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lip@L134-L135
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lip@L134-L135
CONTRACT_ID: stepP:p3:ball-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:ball: Omega open, F injective holomorphic with the stated inverse derivative bound, and B(x_0,delta) subset Omega; choose w_1,w_2 in B(F(x_0),delta/m); previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: w_1,w_2
SOURCE_CONCLUSION: the segment [w_1,w_2] lies in the convex ball contained in F(B(x_0,delta)), so the mean value inequality for G gives ¦G(w_1)-G(w_2)¦<=m ¦w_1-w_2¦
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:ball-closed, stepP:p3:ball-inv, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:ball-closed | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lip@L135-L135 | the ball B(F(x_0),delta/m) is contained in F(B(x_0,delta))
EDGE: stepP:p3:ball-inv | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lip@L135-L135 | norm DG<=m
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ball-lip@L135-L135 | mean value inequality for G
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:ls-close

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:ls-close
KIND: step
TITLE: Close pairs
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ls-close@L142-L143
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ls-close@L142-L143
CONTRACT_ID: stepP:p3:ls-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:lip-sup: S subset R^N, r>0 and Delta holomorphic on S_r with sup bound A; x,y in S with norm(x-y)<r/2; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: x,y in S
SOURCE_CONCLUSION: norm D Delta<=2 N A/r on the segment, so ¦Delta(x)-Delta(y)¦<=(2 N A/r)¦x-y¦
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:cauchy-open, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ls-close@L143-L143 | Cauchy estimates give ¦d_l Delta_i(z)¦<=2A/r
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ls-close@L143-L143 | mean value inequality on the real segment
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:ls-far

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:ls-far
KIND: step
TITLE: Distant pairs
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ls-far@L144-L145
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:ls-far@L144-L145
CONTRACT_ID: stepP:p3:ls-far
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:lip-sup: S subset R^N, r>0 and Delta holomorphic on S_r with sup bound A; x,y in S with norm(x-y)>=r/2; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: x,y in S
SOURCE_CONCLUSION: ¦Delta(x)-Delta(y)¦<=2A<=(4A/r)¦x-y¦<=4 N A ¦x-y¦/r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p3:avg

Changed fields: DEPS, EDGE, NOTE.

```text
NODE: bpP:p3:avg
KIND: lemma
TITLE: One averaging step with two scales
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:avg@L150-L163
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:avg@L164-L166
CONTRACT_ID: bpP:p3:avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<alpha_2<=alpha_1; D subset R^n; r>0; sbar,s>0; K>0 with K s>=6; h analytic on D_r, real on real points, omega=dh; f analytic on D_r x T_{sbar+s}, real analytic, 1-periodic in theta, E:=norm f_{r,sbar+s} (N-norm); (N1) for I in D_r and k with 0<¦k¦_1<=K: ¦k.omega(I)¦>=alpha_1 if k_1!=0 and >=alpha_2 if k_1=0; (N2) 64 e K E<alpha_2 r
SOURCE_QUANTIFIERS: alpha_1,alpha_2,D,r,sbar,s,K, then h, f
SOURCE_CONCLUSION: there is Psi:D_{r/2} x T_{sbar+s/6}->D_r x T_{sbar+s} holomorphic, injective, real, Psi-id Z^n-periodic in theta1, symplectic, with H o Psi=h+g+f_*, g=g(I1), sup_{D_{r/2}}¦g-f_0¦<=E/4 (indeed <=E/(K s)), norm f_*_{r/2,sbar+s/6}<=e^{-K s/6}E, alpha_1 s¦I_1-I1_1¦<=9E, alpha_2 s¦I_2-I1_2¦<=9E, 2 pi alpha_2 r¦theta-theta1¦<=9E; f_0(I)=int f d theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p2:avg, bpP:p3:conv#data, bpP:p2:nfb
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p2:avg | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:avg@L165-L165 | Corollary avg of Part 2 verbatim (the 9E bounds weaken the 3E of Part 2)
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:avg@L151-L151 | N-norm, D_r, T_sigma
EDGE: bpP:p2:nfb | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:avg@L165-L165 | L165 uses the stronger bound E/kappa with kappa=K s, beyond the E/4 statement of Part 2 avg.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Part 2 avg supplies the stated averaging conclusion and smaller displacement constants; its proof via nfb is used directly at L165 for the stronger E/(K s) bound. Here Part 2 geometric widths are the Part 3 coefficient widths divided by 2 pi; kappa=2 pi K s_N=K s. The splitting and differentiability references describe that proof and add no independent premises.
```

### bpP:p3:step

Changed fields: NOTE, SOURCE_CONCLUSION.

```text
NODE: bpP:p3:step
KIND: lemma
TITLE: One KAM step
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L170-L190
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L192-L226
CONTRACT_ID: bpP:p3:step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of Proposition two-scale-kam with H=h+f on D_rho x T_{sbar+s}, constants M,Mhat,Mbar,Mbar_i,L,E as in Definition constants; (S1) chat Ehat<1; (S2) L>=max{Mbar,M^{-1},Mhat^{-1}} (L may be replaced by any larger number with the same formulas); (S3) omega_0(D) subset D_{gamma_1,gamma_2,tau}
SOURCE_QUANTIFIERS: data and constants of the proposition, then (S1)-(S3); rho_+:=rhohat/16, s_+:=s/12, M_+:=2M, Mhat_+:=2 Mhat, Mbar_+:=2 Mbar, Mbar_{i+}:=2 Mbar_i, L_+:=2L, E_+:=E^2 L M^2/gamma_1^2, K_+, rhohat_+, Ehat_+ by Definition constants with the + data; then Psi_+, h_+, D_+
SOURCE_CONCLUSION: there are Psi_+, h_+ and D_+ subset D_{rhohat/16}: (i) Psi_+:(D_+)_{rho_+} x T_{sbar+s_+}->D_{rhohat} x T_{sbar+s} holomorphic, real, Psi_+-id periodic, symplectic, H_+:=H o Psi_+=h_++f_+, h_+=h+g, g=g(I) analytic on D_{rhohat/2}, sup ¦g¦<=5E/4, norm f_+<=E_+; (ii) omega_+=dh_+ injective on D_{rhohat/8} with U_+ nonsingular, (D_+)_{rho_+} subset D_{rhohat/8}, omega_+(D_+)=omega_0(D); (iii) M_+, Mhat_+, Mbar_+, Mbar_{i+} bound U_+, Uhat_+, U_+^{-1}, T_{i+} on D_{rhohat/4} and L_+>=max{Mbar_+,M_+^{-1},Mhat_+^{-1}}; (iv) ihat_+:=(omega_+)^{-1} o omega_0 is holomorphic on D_{rhohat/16}, D_+=ihat_+(D), sup ¦ihat_{+,i}-id_i¦<=10(Mbar_i/Mbar)Ehat rhohat (<=10 Ehat rhohat), Lipschitz constant on D of ihat_+-id <=640 n Ehat; (v) the source asserts the displacement bounds on D_{rhohat/2} x T_{sbar+s/6} for Psi_+(I1,theta1)=(I,theta): ¦I_1-I1_1¦<=(3/4)(Mhat/M)Ehat rhohat, ¦I_2-I1_2¦<=(3/4)Ehat rhohat, 2 pi¦theta-theta1¦<=(3/4)Ehat s; (vi) rhohat_+>=rhohat/(2 24^{tau+1}), K_+<=24 K, Ehat_+<=(8/9)(4 s)^{2(tau+1)}Ehat^2<Ehat^2 and chat Ehat_+<1
CONSTANT_SCOPE: all constants as in Definition constants; the + quantities are determined by the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:st-nonres, stepP:p3:st-small, stepP:p3:st-avg, stepP:p3:st-disp, stepP:p3:st-dg, stepP:p3:st-U, stepP:p3:st-inj, stepP:p3:st-ihat, stepP:p3:st-const, stepP:p3:st-quad, bpP:p3:constants, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:st-nonres | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L193-L193 | step: non-resonance on D_rhohat
EDGE: stepP:p3:st-small | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L198-L198 | step: smallness
EDGE: stepP:p3:st-avg | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L200-L200 | step: averaging
EDGE: stepP:p3:st-disp | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L203-L203 | step: displacements
EDGE: stepP:p3:st-dg | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L206-L206 | step: derivatives of g
EDGE: stepP:p3:st-U | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L210-L210 | step: bounds on U_+
EDGE: stepP:p3:st-inj | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L213-L213 | step: injectivity of omega_+
EDGE: stepP:p3:st-ihat | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L216-L216 | step: the map ihat_+ and D_+
EDGE: stepP:p3:st-const | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L220-L220 | step: new constants
EDGE: stepP:p3:st-quad | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L224-L224 | step: quadratic bound
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L171-L171 | L, K, rhohat, Ehat, chat and the + versions
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:step@L178-L178 | norm, D_r, T_sigma, blocks
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: at p3a L184-L185, (v) evaluates Psi_+ on D_{rhohat/2} x T_{sbar+s/6}; (i) and L202 only define Psi_+ as a restriction of the averaging map Psi to (D_+)_{rho_+} x T_{sbar+s_+}. The larger-domain displacement estimate is proved for Psi at L204. No extension of the named Psi_+ to that larger domain is stated. Keep the source assertion and its domain mismatch visible; do not silently repair its domain or map name.
```

### stepP:p3:st-nonres

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:st-nonres
KIND: step
TITLE: Non-resonance on $D_{\hat\rho}$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-nonres@L193-L197
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-nonres@L193-L197
CONTRACT_ID: stepP:p3:st-nonres
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:step: the original Hamiltonian data, bounds and assumptions (S1)-(S3), including the enlarged choice of L; I in D_rhohat and I_0 in D with norm(I-I_0)<rhohat; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: I, I_0, k with 0<¦k¦_1<=K
SOURCE_CONCLUSION: ¦omega_i(I)-omega_i(I_0)¦<=M rhohat (<=Mhat rhohat for i>n_1); ¦k.omega(I)¦>=(2/3)gamma_1 K^{-tau}=:alpha_1 for k_1!=0 and >=(2/3)gamma_2 K^{-tau}=:alpha_2 for k_1=0, alpha_2<=alpha_1, and alpha_1>=2 M K rhohat, alpha_2>=2 Mhat K rhohat (3.2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-mvt, bpP:p3:constants, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-nonres@L194-L194 | mean value inequality for omega on the segment [I_0,I]
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-nonres@L195-L195 | rhohat<=gamma_1/(3 M K^{tau+1}) and rhohat<=gamma_2/(3 Mhat K^{tau+1})
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-nonres@L195-L195 | the set D_{gamma_1,gamma_2,tau} and the rows of U, Uhat
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:st-small

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:st-small
KIND: step
TITLE: Smallness and $Ks\ge6$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-small@L198-L199
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-small@L198-L199
CONTRACT_ID: stepP:p3:st-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:step: the original Hamiltonian data, bounds and assumptions (S1)-(S3), including the enlarged choice of L; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in step
SOURCE_CONCLUSION: 64 e K E/(alpha_2 rhohat)<=32 e Ehat<87 Ehat<chat Ehat<1, so Lemma avg applies with r=rhohat
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:constants, stepP:p3:st-nonres, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-small@L199-L199 | K s>=6 from log_+>=1 and the definitions of L, Ehat, chat
EDGE: stepP:p3:st-nonres | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-small@L199-L199 | (3.2) and the non-resonance (N1) on D_rhohat
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-small@L199-L199 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:st-avg

Changed fields: SOURCE_CONCLUSION, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:st-avg
KIND: step
TITLE: Averaging
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-avg@L200-L202
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-avg@L200-L202
CONTRACT_ID: stepP:p3:st-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:step: the original Hamiltonian data, bounds and assumptions (S1)-(S3), including the enlarged choice of L; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in step
SOURCE_CONCLUSION: Psi, g, f_* on D_{rhohat/2} x T_{sbar+s/6} with norm f_*<=x E=E_+, sup ¦g¦<=sup ¦g-f_0¦+sup ¦f_0¦<=5E/4; once D_+ is defined below and its domain inclusion is proved, Psi_+ is the restriction of Psi to (D_+)_{rho_+} x T_{sbar+s_+} (norm monotone); first part of (i)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:avg, stepP:p3:st-small, bpP:p3:constants, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:avg | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-avg@L201-L201 | one averaging step with two scales
EDGE: stepP:p3:st-small | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-avg@L201-L201 | applicability of Lemma avg
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-avg@L201-L201 | x, K and log_+ in e^{-K s/6}=min{e^{-1},x}
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-avg@L202-L202 | monotonicity of the norm and sup ¦f_0¦<=norm f
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:st-disp

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:st-disp
KIND: step
TITLE: Displacements
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-disp@L203-L205
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-disp@L203-L205
CONTRACT_ID: stepP:p3:st-disp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:step: the original Hamiltonian data, bounds and assumptions (S1)-(S3), including the enlarged choice of L; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in step
SOURCE_CONCLUSION: ¦I_1-I1_1¦<=(3/4)(Mhat/M)Ehat rhohat, ¦I_2-I1_2¦<=(3/4)Ehat rhohat, 2 pi¦theta-theta1¦<=(3/4)Ehat s (v)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:avg, stepP:p3:st-nonres, bpP:p3:constants, bpP:p3:conv#data, stepP:p3:st-avg
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:avg | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-disp@L204-L204 | displacement bounds of Lemma avg
EDGE: stepP:p3:st-nonres | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-disp@L204-L204 | (3.2): alpha_1>=2 M K rhohat, alpha_2>=2 Mhat K rhohat
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-disp@L204-L204 | Ehat rhohat=E L/rhohat, L>=Mhat^{-1}, K>=6/s
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-disp@L204-L204 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: stepP:p3:st-avg | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-disp@L204-L204 | The averaging map and its displacement estimates are instantiated at L201 before the calculation at L204.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:st-dg

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:st-dg
KIND: step
TITLE: Derivatives of $g$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-dg@L206-L209
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-dg@L206-L209
CONTRACT_ID: stepP:p3:st-dg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:step: the original Hamiltonian data, bounds and assumptions (S1)-(S3), including the enlarged choice of L; I in D_{rhohat/4}; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: I
SOURCE_CONCLUSION: ¦d_i g(I)¦<=5E/rhohat and ¦d_i d_j g(I)¦<=80E/rhohat^2, so sup norm d^2 g<=80 n E/rhohat^2=80 n Ehat/L (3.3), sup ¦dg¦<=5E/rhohat; norm d^2 g<=80 n Ehat min{M,Mhat}<=min{M,Mhat}/100 and Mbar norm d^2 g<=80 n Ehat<=1/100
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:cauchy-open, stepP:p3:st-avg, bpP:p3:constants, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-dg@L207-L207 | Cauchy estimates for g on the polydisc of radius rhohat/4
EDGE: stepP:p3:st-avg | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-dg@L207-L207 | sup ¦g¦<=5E/4 on D_{rhohat/2}
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-dg@L209-L209 | L^{-1}<=M, L^{-1}<=Mhat, Mbar<=L, Ehat=E L/rhohat^2, chat Ehat<1
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-dg@L207-L207 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:st-U

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:st-U
KIND: step
TITLE: Bounds on $U_+$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-U@L210-L212
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-U@L210-L212
CONTRACT_ID: stepP:p3:st-U
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:step: the original Hamiltonian data, bounds and assumptions (S1)-(S3), including the enlarged choice of L; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: on D_{rhohat/4}
SOURCE_CONCLUSION: norm U_+<=2M, norm Uhat_+<=2 Mhat; U_+^{-1}=U^{-1}(1+d^2 g U^{-1})^{-1} with norm<=2 Mbar, norm T_{i+}<=2 Mbar_i; U_+ nonsingular; L_+>=max{2 Mbar,(2M)^{-1},(2 Mhat)^{-1}} (iii)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:st-dg, bpP:p3:ext-neumann, bpP:p3:conv#data, bpP:p3:constants, stepP:p3:st-avg
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:st-dg | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-U@L211-L211 | norm d^2 g and Mbar norm d^2 g<=1/100
EDGE: bpP:p3:ext-neumann | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-U@L212-L212 | Neumann series for (1+d^2 g U^{-1})^{-1}
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-U@L211-L211 | the blocks Uhat, T_i of U, U^{-1}
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-U@L211-L211 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: stepP:p3:st-avg | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-U@L211-L211 | The analytic correction g and h_+=h+g were constructed by averaging at L201-L202.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:st-inj

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:st-inj
KIND: step
TITLE: Injectivity of $\omega_+$ on $D_{\hat\rho/8}$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L213-L215
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L213-L215
CONTRACT_ID: stepP:p3:st-inj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:step: the original Hamiltonian data, bounds and assumptions (S1)-(S3), including the enlarged choice of L; for the injectivity argument take I,I1 in D_{rhohat/8} with omega_+(I)=omega_+(I1); previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: I,I1
SOURCE_CONCLUSION: I=I1: w-w1=dg(I1)-dg(I), ¦w-w1¦<=10E/rhohat<rhohat/(8 Mbar) so w1=omega_0(I2) with I2 in B(I,rhohat/8) and I2=I1 by injectivity; then ¦I-I1¦<=Mbar ¦w-w1¦<=80 n Ehat ¦I-I1¦; hence omega_+ is a holomorphic injection with nonsingular derivative, open with holomorphic inverse, norm D(omega_+^{-1})<=2 Mbar (and 2 Mbar_i on row blocks)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:ball, stepP:p3:st-dg, stepP:p3:st-U, bpP:p3:ext-ift, K:bp:p1:ext-mvt, bpP:p3:constants, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:ball | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L214-L214 | image of balls and Lipschitz bound of the inverse of omega_0 (F=omega_0, m=Mbar)
EDGE: stepP:p3:st-dg | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L214-L214 | ¦dg¦<=5E/rhohat and norm d^2 g<=80 n Ehat/L
EDGE: stepP:p3:st-U | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L215-L215 | (iii): U_+ nonsingular with norm U_+^{-1}<=2 Mbar
EDGE: bpP:p3:ext-ift | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L215-L215 | omega_+ open with holomorphic inverse
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L214-L214 | mean value inequality for dg along [I,I1]
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L214-L214 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-inj@L214-L214 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:st-ihat

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:st-ihat
KIND: step
TITLE: The map $\hat\imath_+$ and $D_+$
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L216-L219
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L216-L219
CONTRACT_ID: stepP:p3:st-ihat
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:step: the original Hamiltonian data, bounds and assumptions (S1)-(S3), including the enlarged choice of L; take I in D_{rhohat/16}; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: I in D_{rhohat/16}
SOURCE_CONCLUSION: ihat_+:=omega_+^{-1} o omega_0 is defined and holomorphic on D_{rhohat/16} with values in B(I,rhohat/16), omega_+ o ihat_+=omega_0, ¦ihat_+(I)-I¦<=2 Mbar ¦dg(I)¦<=10 Mbar E/rhohat (and with Mbar_i on the row blocks) <=10(Mbar_i/Mbar)Ehat rhohat<=10 Ehat rhohat<rhohat/16; Lipschitz bound 640 n Ehat from Lemma lip-sup with S=D, r=rhohat/16, A=10 Ehat rhohat; ihat_+(D) subset R^n by reality; D_+:=ihat_+(D) subset D_{rhohat/16} cap R^n, ihat_+ injective on D, omega_+(D_+)=omega_0(D), (D_+)_{rho_+} subset D_{rhohat/8}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:ball, bpP:p3:lip-sup, stepP:p3:st-inj, stepP:p3:st-dg, stepP:p3:st-U, bpP:p3:constants, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:ball | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L217-L217 | omega_+(B(I,rhohat/16)) contains B(omega_+(I),rhohat/(32 Mbar)) and the Lipschitz bound of the inverse
EDGE: bpP:p3:lip-sup | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L219-L219 | Lipschitz bound of ihat_+-id on the non-convex set D
EDGE: stepP:p3:st-inj | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L217-L217 | omega_+ injective on D_{rhohat/8} with holomorphic inverse and norm D(omega_+^{-1})<=2 Mbar
EDGE: stepP:p3:st-dg | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L217-L217 | ¦dg(I)¦<=5E/rhohat
EDGE: stepP:p3:st-U | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L218-L218 | row-block bounds 2 Mbar_i
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L218-L218 | Ehat=E L/rhohat^2, Mbar<=L, Ehat<2^{-13}
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-ihat@L217-L217 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:st-const

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:st-const
KIND: step
TITLE: The new constants
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-const@L220-L223
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-const@L220-L223
CONTRACT_ID: stepP:p3:st-const
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:step: the original Hamiltonian data, bounds and assumptions (S1)-(S3), including the enlarged choice of L; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in step
SOURCE_CONCLUSION: E_+=E x and x_+=E_+ L_+ M_+^2/gamma_1^2=8 x^2, log_+(1/x_+)<=2 log_+(1/x), K_+=(6/s_+)log_+(1/x_+)<=24 K; rhohat_+>=rhohat min{1/(2 24^{tau+1}),1/16}=rhohat/(2 24^{tau+1}), rho_+=rhohat/16
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-const@L221-L221 | the formulas for x, K, rhohat with the + data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:st-quad

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:st-quad
KIND: step
TITLE: The quadratic bound
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-quad@L224-L225
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-quad@L224-L225
CONTRACT_ID: stepP:p3:st-quad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:step: the original Hamiltonian data, bounds and assumptions (S1)-(S3), including the enlarged choice of L; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in step
SOURCE_CONCLUSION: Ehat_+<=8 24^{2(tau+1)}Ehat^2 rhohat^2 M^2/gamma_1^2<=(8/9)(4 s)^{2(tau+1)}Ehat^2<Ehat^2 since 4 s<=sbar<1, and chat Ehat_+<chat Ehat Ehat<1 (vi)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:st-const, bpP:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:st-const | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-quad@L225-L225 | rhohat_+ and K_+ bounds
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:st-quad@L225-L225 | rhohat<=gamma_1/(3 M K^{tau+1}), K>=6/s and the definition of Ehat, chat
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p3:iterative

Changed fields: DEPS, EDGE, SOURCE_CONCLUSION.

```text
NODE: bpP:p3:iterative
KIND: lemma
TITLE: Iterative lemma
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L242-L253
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L254-L265
CONTRACT_ID: bpP:p3:iterative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the hypotheses of Proposition two-scale-kam (in particular chat Ehat_0<1) and the sequences of Definition seq
SOURCE_QUANTIFIERS: j>=0
SOURCE_CONCLUSION: for every j>=0 there are D_j subset R^n, an analytic symplectic map Phi_j=Psi_1 o ... o Psi_j on W_j:=(D_j)_{rho_j} x T_{sbar+s_j} (Phi_0=id) and H_j=H o Phi_j=h_j+f_j with: (i) D_j subset (D_{j-1})_{rhohat_{j-1}/16}, omega_j=dh_j is a diffeomorphism of (D_j)_{rho_j} onto an open set, omega_j(D_j)=omega_0(D_0) subset D_{gamma_1,gamma_2,tau}, ihat_j:=omega_j^{-1} o omega_{j-1}:D_{j-1}->D_j (holomorphic on (D_{j-1})_{rhohat_{j-1}/16}) with sup ¦ihat_{j,i}-id_i¦<=10(Mbar_i/Mbar)Ehat_{j-1}rhohat_{j-1} and Lipschitz constant of ihat_j-id on D_{j-1} <=640 n Ehat_{j-1}; (ii) norm f_j_{rho_j,sbar+s_j}<=E_j; (iii) Psi_j:W_j->W_{j-1}′ with W_{j-1}′:=(D_{j-1})_{rhohat_{j-1}} x T_{sbar+s_{j-1}} subset W_{j-1}, holomorphic, real, Psi_j-id periodic, with ¦Delta I_1¦<=(3/4)(Mhat/M)Ehat_{j-1}rhohat_{j-1}, ¦Delta I_2¦<=(3/4)Ehat_{j-1}rhohat_{j-1}, 2 pi¦Delta theta¦<=(3/4)Ehat_{j-1}s_{j-1}; (iv) Ehat_j<Ehat_{j-1}^2 for j>=1, Ehat_j<=Ehat_0^{2^j}, chat Ehat_j<1; (v) rhohat_j<=rhohat_{j-1}/16, rhohat_j>=rhohat_{j-1}/(2 24^{tau+1}), s_j=s/12^j, K_j<=24^j K
CONSTANT_SCOPE: as in the sequences
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:it-ind, stepP:p3:it-base, stepP:p3:it-step, stepP:p3:it-comp, stepP:p3:it-rates, bpP:p3:seq, bpP:p3:conv#data, bpP:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:it-ind | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L255-L255 | step: induction hypothesis P_j
EDGE: stepP:p3:it-base | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L257-L257 | step: base
EDGE: stepP:p3:it-step | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L259-L259 | step: induction step
EDGE: stepP:p3:it-comp | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L261-L261 | step: composition
EDGE: stepP:p3:it-rates | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L263-L263 | step: rates (iv), (v)
EDGE: bpP:p3:seq | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L243-L243 | D_j, rho_j, s_j, E_j, Ehat_j of the sequences
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L243-L243 | D_r, T_sigma notation
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:iterative@L243-L243 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:it-ind

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:it-ind
KIND: step
TITLE: Induction hypothesis
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-ind@L255-L256
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-ind@L255-L256
CONTRACT_ID: stepP:p3:it-ind
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:iterative: the original hypotheses of Proposition two-scale-kam and the numerical sequences, not the conclusion of that proposition; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j>=0
SOURCE_CONCLUSION: the statement P_j: the data (D_j,h_j,f_j,rho_j,s_j,M_j,Mhat_j,Mbar_j,Mbar_{i,j},L_j,E_j) satisfy the hypotheses of Lemma step on (D_j)_{rho_j} x T_{sbar+s_j}: chat Ehat_j<1, L_j>=max{Mbar_j,M_j^{-1},Mhat_j^{-1}}, omega_j(D_j) subset D_{gamma_1,gamma_2,tau}, bounds on U_j, injectivity of omega_j with U_j nonsingular, norm f_j<=E_j, Mhat_j<=M_j, Mbar_{i,j}<=Mbar_j, 4 s_j<=sbar<1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:seq, bpP:p3:constants, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:seq | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-ind@L256-L256 | the data (D_j,h_j,f_j,rho_j,s_j,...) of the sequences
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-ind@L256-L256 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-ind@L256-L256 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:it-base

Changed fields: DEPS, EDGE.

```text
NODE: stepP:p3:it-base
KIND: step
TITLE: Base
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-base@L257-L258
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-base@L257-L258
CONTRACT_ID: stepP:p3:it-base
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses of Proposition two-scale-kam; D_0 subset D
SOURCE_QUANTIFIERS: j=0
SOURCE_CONCLUSION: P_0 holds: it is the hypothesis of the proposition, omega_0(D_0) subset D_{gamma_1,gamma_2,tau} by definition of D_0, sup bounds on D_rho give those on (D_0)_rho, injectivity inherited
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:seq, stepP:p3:it-ind, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:seq | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-base@L258-L258 | D_0:=D^dio and the initial data
EDGE: stepP:p3:it-ind | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-base@L258-L258 | the statement P_0
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-base@L258-L258 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:it-step

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:it-step
KIND: step
TITLE: Induction
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-step@L259-L260
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-step@L259-L260
CONTRACT_ID: stepP:p3:it-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:iterative: the original hypotheses of Proposition two-scale-kam and the numerical sequences, not the conclusion of that proposition; induction branch j>=1 with P_{j-1} as the induction hypothesis defined in step it-ind; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j>=1
SOURCE_CONCLUSION: Lemma step applied to P_{j-1} produces D_j:=D_+, Psi_j:=Psi_+, h_j:=h_+, f_j:=f_+; (i)-(vi) of the step are (i)-(iii) here and the recursion of the sequences; items (iii) and (v) of the step give P_j (Mhat_j<=M_j, Mbar_{i,j}<=Mbar_j propagate by doubling)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:step, bpP:p3:seq, stepP:p3:it-ind, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:step | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-step@L260-L260 | Lemma step applied to P_{j-1}
EDGE: bpP:p3:seq | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-step@L260-L260 | the recursion of Definition seq
EDGE: stepP:p3:it-ind | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-step@L260-L260 | the statement P_j
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-step@L260-L260 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:it-comp

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:it-comp
KIND: step
TITLE: Composition
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-comp@L261-L262
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-comp@L261-L262
CONTRACT_ID: stepP:p3:it-comp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:iterative: the original hypotheses of Proposition two-scale-kam and the numerical sequences, not the conclusion of that proposition; induction branch j>=1 with the previously constructed Phi_{j-1}; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j>=1
SOURCE_CONCLUSION: Phi_j=Phi_{j-1} o Psi_j is defined on W_j since Psi_j(W_j) subset W_{j-1} (the displacement <=(3/4)Ehat_{j-1}rhohat_{j-1}<rhohat_{j-1}/16, actions in (D_{j-1})_{rhohat_{j-1}}); H_j=H_{j-1} o Psi_j=H o Phi_j; Phi_j is symplectic, real, Phi_j-id periodic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:it-step, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:it-step | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-comp@L262-L262 | Psi_j with (i)-(iii) of the step: displacement and domain inclusions, symplectic
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-comp@L262-L262 | rhohat<=rho from the definition of rhohat
EDGE: bpP:p3:seq | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-comp@L262-L262 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-comp@L262-L262 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:it-rates

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:it-rates
KIND: step
TITLE: (iv)--(v) of the Lemma
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-rates@L263-L264
PROOF_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-rates@L263-L264
CONTRACT_ID: stepP:p3:it-rates
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:iterative: the original hypotheses of Proposition two-scale-kam and the numerical sequences, not the conclusion of that proposition; j>=1; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j>=1
SOURCE_CONCLUSION: Ehat_j<Ehat_{j-1}^2, rhohat_j>=rhohat_{j-1}/(2 24^{tau+1}), rhohat_j<=rho_j=rhohat_{j-1}/16, K_j<=24 K_{j-1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:step, stepP:p3:it-step, bpP:p3:constants, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:step | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-rates@L264-L264 | (vi) of Lemma step
EDGE: stepP:p3:it-step | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-rates@L264-L264 | the recursion identifying rhohat_+, K_+, Ehat_+ with rhohat_j, K_j, Ehat_j
EDGE: bpP:p3:constants | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-rates@L264-L264 | rhohat_j<=rho_j from the definition of rhohat
EDGE: bpP:p3:seq | blueprint-P/parts/p3a-two-scale-iteration.tex#stepP:p3:it-rates@L264-L264 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p3:sums

Changed fields: DEPS, EDGE.

```text
NODE: bpP:p3:sums
KIND: lemma
TITLE: Sums
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L6-L8
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L9-L16
CONTRACT_ID: bpP:p3:sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the sequences; (3.4); m>=0
SOURCE_QUANTIFIERS: m>=0, k>=m
SOURCE_CONCLUSION: Ehat_k<=Ehat_m^{2^{k-m}}, sum_{k>=m}Ehat_k<=2 Ehat_m, sum_{k>=0}c^k Ehat_k<=2 Ehat_0; rhohat_k<=rhohat_0 16^{-k}, s_k=s 12^{-k}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:sum-doubling, stepP:p3:sum-weighted, stepP:p3:sum-radii, bpP:p3b#kam-bounds, bpP:p3:constants, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:sum-doubling | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L10-L10 | step: doubling
EDGE: stepP:p3:sum-weighted | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L12-L12 | step: weighted sum
EDGE: stepP:p3:sum-radii | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L14-L14 | step: radii
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L3-L3 | the constants c, q
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L7-L7 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:sums@L7-L7 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:sum-doubling

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:sum-doubling
KIND: step
TITLE: Doubling
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-doubling@L10-L11
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-doubling@L10-L11
CONTRACT_ID: stepP:p3:sum-doubling
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:sums: the sequences under the original KAM hypotheses and the bounds (3.4), with m>=0; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: m<=k
SOURCE_CONCLUSION: Ehat_k<=Ehat_m^{2^{k-m}}<=Ehat_m^{k-m+1} (2^i>=i+1), hence sum_{k>=m}Ehat_k<=Ehat_m/(1-Ehat_m)<=2 Ehat_m
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative, bpP:p3:constants, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-doubling@L11-L11 | (iv): Ehat_k<Ehat_{k-1}^2 and chat Ehat_k<1
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-doubling@L11-L11 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-doubling@L11-L11 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:sum-weighted

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:sum-weighted
KIND: step
TITLE: Weighted sum
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-weighted@L12-L13
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-weighted@L12-L13
CONTRACT_ID: stepP:p3:sum-weighted
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:sums: the sequences under the original KAM hypotheses and the bounds (3.4), with m>=0; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: k>=0
SOURCE_CONCLUSION: c^k Ehat_k<=c^k Ehat_0^{k+1}=Ehat_0(c Ehat_0)^k<=Ehat_0 2^{-k}; sum<=2 Ehat_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:sum-doubling, bpP:p3b#kam-bounds, bpP:p3:constants, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:sum-doubling | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-weighted@L13-L13 | Ehat_k<=Ehat_0^{k+1}
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-weighted@L13-L13 | (3.4): c Ehat_0<1/2
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-weighted@L13-L13 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-weighted@L13-L13 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:sum-radii

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

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
DEPS: bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-radii@L15-L15 | rhohat_k<=rho_k from the definition of rhohat
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-radii@L15-L15 | rho_k=rhohat_{k-1}/16 and s_k=s_{k-1}/12
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:sum-radii@L15-L15 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p3:limit-actions

Changed fields: DEPS, EDGE.

```text
NODE: bpP:p3:limit-actions
KIND: lemma
TITLE: Limit actions
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L20-L29
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L30-L39
CONTRACT_ID: bpP:p3:limit-actions
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the sequences and the iterative lemma; (3.4); checki_0=id, checki_j:=ihat_j o ... o ihat_1:D_0->D_j
SOURCE_QUANTIFIERS: j>=0
SOURCE_CONCLUSION: checki_j converges uniformly on D_0 to checki=(checki_1,checki_2) and (i) sup ¦checki_i-id_i¦<=20(Mbar_i/Mbar)Ehat_0 rhohat_0<=20 Ehat_0 rhohat_0, sup ¦checki-checki_j¦<=20 rhohat_j Ehat_j; (ii) D_*:=checki(D_0) subset (D_j)_{rho_j/2} for all j, in particular D_* subset Re(D_0)_{20 Ehat_0 rhohat_0}; (iii) lambda:=Lipschitz constant of checki-id on D_0<=2560 n Ehat_0<1/3, so checki is injective and (1-lambda)¦x-y¦<=¦checki x-checki y¦<=(1+lambda)¦x-y¦; (iv) omega_j(checki_j(I_0))=omega_0(I_0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:la-wp, stepP:p3:la-tele, stepP:p3:la-loc, stepP:p3:la-lip, bpP:p3:iterative, bpP:p3:seq, bpP:p3:constants, bpP:p3:conv#data, bpP:p3b#kam-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:la-wp | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L31-L31 | step: well-posedness
EDGE: stepP:p3:la-tele | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L33-L33 | step: telescoping
EDGE: stepP:p3:la-loc | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L35-L35 | step: location
EDGE: stepP:p3:la-lip | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L37-L37 | step: Lipschitz constant
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L21-L21 | ihat_j and D_j of the iterative lemma
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L21-L21 | D_0, the sequences
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L21-L21 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L21-L21 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-actions@L21-L21 | Direct use of c,q or the numerical smallness bounds (3.4).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:la-wp

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

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
DEPS: bpP:p3:iterative, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-wp@L32-L32 | (i): ihat_j:D_{j-1}->D_j with omega_j o ihat_j=omega_{j-1}
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-wp@L32-L32 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-wp@L32-L32 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-wp@L32-L32 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:la-tele

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:la-tele
KIND: step
TITLE: Telescoping
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-tele@L33-L34
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-tele@L33-L34
CONTRACT_ID: stepP:p3:la-tele
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:limit-actions: the original KAM hypotheses and sequences; checki_j denotes the finite composition being constructed; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j>=1, x in D_0
SOURCE_CONCLUSION: ¦checki_{j,i}(x)-checki_{j-1,i}(x)¦<=10(Mbar_i/Mbar)Ehat_{j-1}rhohat_{j-1}; Cauchy property and (i): sum_j 10 Ehat_{j-1}rhohat_{j-1}<=20 Ehat_0 rhohat_0, tail <=20 rhohat_j Ehat_j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative, bpP:p3:sums, stepP:p3:la-wp, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-tele@L34-L34 | (i): sup bound on ihat_j-id
EDGE: bpP:p3:sums | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-tele@L34-L34 | sum of Ehat_k and rhohat_k<=rhohat_0
EDGE: stepP:p3:la-wp | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-tele@L34-L34 | checki_{j-1}(x) in D_{j-1}
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-tele@L34-L34 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-tele@L34-L34 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-tele@L34-L34 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:la-loc

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:la-loc
KIND: step
TITLE: Location
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-loc@L35-L36
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-loc@L35-L36
CONTRACT_ID: stepP:p3:la-loc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:limit-actions: the original KAM hypotheses and sequences; checki_j denotes the finite composition being constructed; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j>=0
SOURCE_CONCLUSION: D_* subset Re(D_j)_{rho_j/2} for all j; for j=0 and D_0 subset D this is the last claim of (ii)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:la-tele, bpP:p3:sums, bpP:p3b#kam-bounds, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:la-tele | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-loc@L36-L36 | ¦checki-checki_j¦<=20 rhohat_j Ehat_j
EDGE: bpP:p3:sums | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-loc@L36-L36 | Ehat_j<1/40 from Ehat_j<=Ehat_0 and (3.4)
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-loc@L36-L36 | (3.4): Ehat_0<1/(8192 n)
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-loc@L36-L36 | rhohat_j<=rho_j
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-loc@L36-L36 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-loc@L36-L36 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:la-lip

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:la-lip
KIND: step
TITLE: Lipschitz constant
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-lip@L37-L38
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-lip@L37-L38
CONTRACT_ID: stepP:p3:la-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:limit-actions: the original KAM hypotheses and sequences; checki_j denotes the finite composition being constructed; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j>=0
SOURCE_CONCLUSION: 1+L(i_j)<=prod_k(1+640 n Ehat_{k-1})<=exp(1280 n Ehat_0), L(i_j)<=2560 n Ehat_0 uniformly in j (e^x<=1+2x for x<1/6); the pointwise limit keeps the constant; injectivity and the two-sided bound follow
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative, bpP:p3:sums, bpP:p3b#kam-bounds, bpP:p3:constants, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-lip@L38-L38 | (i): Lipschitz bound 640 n Ehat_{k-1} of ihat_k-id
EDGE: bpP:p3:sums | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-lip@L38-L38 | sum Ehat_{k-1}<=2 Ehat_0
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-lip@L38-L38 | (3.4): 1280 n Ehat_0<1/6
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-lip@L38-L38 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:la-lip@L38-L38 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p3:psi-lip

Changed fields: DEPS, EDGE.

```text
NODE: bpP:p3:psi-lip
KIND: lemma
TITLE: Domains and rescaled Lipschitz bounds for $\Psi_k$
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L45-L51
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L52-L62
CONTRACT_ID: bpP:p3:psi-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the sequences; calD_j; (3.4)
SOURCE_QUANTIFIERS: k>=1
SOURCE_CONCLUSION: (i) Psi_k(calD_k x R^n) subset calD_{k-1} x R^n, so Phi_j is defined on calD_j x R^n with values in calD_0 x R^n; (ii) L_*(Psicheck_k-id; calD_k x R^n)<=192 n c^{k-1}Ehat_{k-1}=:varsigma_k and sum_k varsigma_k<=384 n Ehat_0<1/20; (iii) ¦Psi_k(y)-y¦_*<=(3/4)Ehat_{k-1}12^{-(k-1)}<=(3/4)Ehat_{k-1} on calD_k x R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:pl-dom, stepP:p3:pl-disp, stepP:p3:pl-lip, stepP:p3:pl-sum, bpP:p3:limitmap#data, bpP:p3:iterative, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data, bpP:p3b#kam-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:pl-dom | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L53-L53 | step: domains
EDGE: stepP:p3:pl-disp | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L55-L55 | step: bound on displacement
EDGE: stepP:p3:pl-lip | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L57-L57 | step: Lipschitz
EDGE: stepP:p3:pl-sum | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L60-L60 | step: sum
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L46-L46 | calD_j, the rescaling and L_*
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L46-L46 | the maps Psi_k
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L46-L46 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L46-L46 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L46-L46 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:psi-lip@L46-L46 | Direct use of c,q or the numerical smallness bounds (3.4).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:pl-dom

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:pl-dom
KIND: step
TITLE: Domains
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-dom@L53-L54
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-dom@L53-L54
CONTRACT_ID: stepP:p3:pl-dom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:psi-lip: the original KAM hypotheses and sequences, rescaling S and real domains calD_j; k>=1 and y=(I,theta) with I in calD_k; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: k>=1
SOURCE_CONCLUSION: Psi_k(y)_I is within rhohat_{k-1}(1/32+1/16+(3/4)Ehat_{k-1})<rhohat_{k-1}/8 of D_{k-1} and rhohat_{k-1}/8<rho_{k-1}/2, so Psi_k(calD_k x R^n) subset calD_{k-1} x R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative, bpP:p3:limitmap#data, bpP:p3:sums, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data, bpP:p3b#kam-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-dom@L54-L54 | (i): D_k subset (D_{k-1})_{rhohat_{k-1}/16} and (iii): the real displacement bound
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-dom@L54-L54 | calD_k
EDGE: bpP:p3:sums | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-dom@L54-L54 | rhohat_{k-1}<=rhohat_{k-2}/16 for the inclusion rhohat_{k-1}/8<rho_{k-1}/2
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-dom@L54-L54 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-dom@L54-L54 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-dom@L54-L54 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-dom@L54-L54 | Direct use of c,q or the numerical smallness bounds (3.4).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:pl-disp

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:pl-disp
KIND: step
TITLE: Bound on displacement
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-disp@L55-L56
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-disp@L55-L56
CONTRACT_ID: stepP:p3:pl-disp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:psi-lip: the original KAM hypotheses and sequences, rescaling S and real domains calD_j; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: k>=1
SOURCE_CONCLUSION: scaled displacement ¦Delta I¦/rhohat_0<=(3/4)Ehat_{k-1}16^{-(k-1)} and 2 pi¦Delta theta¦/s_0<=(3/4)Ehat_{k-1}12^{-(k-1)}, so A_k:=sup_{W_k}¦Psicheck_k-id¦<=(3/4)Ehat_{k-1}12^{-(k-1)} (iii)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative, bpP:p3:sums, bpP:p3:limitmap#data, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-disp@L56-L56 | (iii): displacement bounds
EDGE: bpP:p3:sums | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-disp@L56-L56 | rhohat_{k-1}<=rhohat_0 16^{-(k-1)} and s_k=s 12^{-k}
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-disp@L56-L56 | the rescaling S
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-disp@L56-L56 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-disp@L56-L56 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-disp@L56-L56 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:pl-lip

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

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
DEPS: bpP:p3:lip-sup, bpP:p3:iterative, stepP:p3:pl-disp, stepP:p3:pl-dom, bpP:p3:limitmap#data, bpP:p3b#kam-bounds, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:lip-sup | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | Lipschitz constant from the sup bound on the scaled neighbourhood
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | (v): rhohat_{k-1}>=rhohat_{k-2}/(2 24^{tau+1}) and (iii) holds on the complex W_k
EDGE: stepP:p3:pl-disp | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | the sup bound A_k
EDGE: stepP:p3:pl-dom | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | the real domain calD_k x R^n
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | scaled coordinates
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L59-L59 | q=12 c
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-lip@L58-L58 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:pl-sum

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:pl-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-sum@L60-L61
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-sum@L60-L61
CONTRACT_ID: stepP:p3:pl-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:psi-lip: the original KAM hypotheses and sequences, rescaling S and real domains calD_j; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: k>=1
SOURCE_CONCLUSION: sum_k varsigma_k=192 n sum_{m>=0}c^m Ehat_m<=384 n Ehat_0<384/8192<1/20
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:sums, bpP:p3b#kam-bounds, stepP:p3:pl-lip, bpP:p3:constants, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:sums | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-sum@L61-L61 | sum_m c^m Ehat_m<=2 Ehat_0
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-sum@L61-L61 | (3.4): Ehat_0<1/(8192 n)
EDGE: stepP:p3:pl-lip | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-sum@L61-L61 | the definition of varsigma_k
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-sum@L61-L61 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pl-sum@L61-L61 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:fc-decay

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:fc-decay
KIND: step
TITLE: Coefficient decay
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-decay@L68-L69
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-decay@L68-L69
CONTRACT_ID: stepP:p3:fc-decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:fourier-compact: the uniformly bounded periodic holomorphic sequence F_j on the open width-w strip and its uniformly convergent real restriction; choose 0<w1<w and k!=0; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j, k
SOURCE_CONCLUSION: ¦F^_{j,k}¦<=B e^{-2 pi w1 ¦k¦_1} uniformly in j (contour shifted to Im theta=-w1 sign(k) componentwise)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-rectangle
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-rectangle | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-decay@L69-L69 | Cauchy theorem on the rectangle for the periodic integrand
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:fc-coef

Changed fields: DEPS, EDGE, NOTE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:fc-coef
KIND: step
TITLE: Convergence of coefficients
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-coef@L70-L71
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-coef@L70-L71
CONTRACT_ID: stepP:p3:fc-coef
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:fourier-compact: the uniformly bounded periodic holomorphic sequence F_j on the open width-w strip and its uniformly convergent real restriction; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: k
SOURCE_CONCLUSION: F^_{j,k}->F^_k for every k and ¦F^_k¦<=B e^{-2 pi w1 ¦k¦_1} for every w1<w
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:fc-decay
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:fc-decay | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-coef@L71-L71 | uniform decay bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Coefficient convergence at L71 uses the displayed defining integral of ext-fourier (p3a L115): each coefficient difference is bounded by the real sup difference. K:bp:p1:ext-fourier states reconstruction, not this coefficient-continuity estimate; its direct use belongs in fc-tail.
```

### stepP:p3:fc-tail

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:fc-tail
KIND: step
TITLE: Tail and finite part on $\abs{\operatorname{Im}\vartheta}\le v$
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-tail@L72-L74
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-tail@L72-L74
CONTRACT_ID: stepP:p3:fc-tail
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:fourier-compact: the uniformly bounded periodic holomorphic sequence F_j on the open width-w strip and its uniformly convergent real restriction; choose 0<v<w and w1=(v+w)/2; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: m>=0, N
SOURCE_CONCLUSION: sum_{¦k¦_1>N}¦(2 pi k)^m F^_{j,k}e^{2 pi i k.theta}¦<=eps_{N,m}->0 uniformly in j on ¦Im theta¦<=v; with the finite modes, F_j->F^#=sum_k F^_k e^{2 pi i k.theta} with all derivatives; F^# is holomorphic on the open strip, equals F on R^n and ¦F^#¦<=B
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:fc-decay, stepP:p3:fc-coef, bpP:p3:ext-weierstrass, K:bp:p1:ext-fourier
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:fc-decay | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-tail@L73-L73 | uniform coefficient decay
EDGE: stepP:p3:fc-coef | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-tail@L74-L74 | convergence of coefficients
EDGE: bpP:p3:ext-weierstrass | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-tail@L74-L74 | L74 uses locally uniform holomorphic limits and derivative convergence on smaller strips.
EDGE: K:bp:p1:ext-fourier | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:fc-tail@L74-L74 | L74 identifies functions with their Fourier series; the decay estimate gives absolute summability on the real torus.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p3:limit-phi

Changed fields: DEPS, EDGE.

```text
NODE: bpP:p3:limit-phi
KIND: lemma
TITLE: The limit map $\Phi$
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L77-L85
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L86-L95
CONTRACT_ID: bpP:p3:limit-phi
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the sequences and iterative lemma; W_*:=D_* x R^n; (3.4)
SOURCE_QUANTIFIERS: x in W_*, j>=0
SOURCE_CONCLUSION: Phi_j converges uniformly on W_* to Phi with Phi-id Z^n-periodic in theta, real analytic in theta, and (i) sup ¦Pi_{I_1}Phi-id¦<=(3/2)(Mhat/M)Ehat_0 rhohat_0, sup ¦Pi_{I_2}Phi-id¦<=(3/2)Ehat_0 rhohat_0, sup 2 pi¦Pi_theta Phi-id¦<=(3/2)Ehat_0 s_0 (also on complex theta with ¦Im theta¦<sbar/2 pi); (ii) L_*(Phicheck-id;W_*)<=768 n Ehat_0<1/10 so Phi is injective and (9/10)¦x-y¦_*<=¦Phi x-Phi y¦_*<=(11/10)¦x-y¦_*; (iii) Phi(I,theta+k)=Phi(I,theta)+(0,k)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:lp-tele, stepP:p3:lp-cauchy, stepP:p3:lp-per, stepP:p3:lp-an, bpP:p3:iterative, bpP:p3:limit-actions, bpP:p3:limitmap#data, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data, bpP:p3b#kam-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:lp-tele | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L87-L87 | step: telescoping of the displacements
EDGE: stepP:p3:lp-cauchy | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L89-L89 | step: Cauchy sequence
EDGE: stepP:p3:lp-per | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L91-L91 | step: periodicity and injectivity
EDGE: stepP:p3:lp-an | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L93-L93 | step: analyticity in theta
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L78-L78 | Phi_j
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L78-L78 | D_*
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L81-L81 | the rescaled norm and L_*
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L78-L78 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L78-L78 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L78-L78 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:limit-phi@L78-L78 | Direct use of c,q or the numerical smallness bounds (3.4).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:lp-tele

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:lp-tele
KIND: step
TITLE: Telescoping of the displacements
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L87-L88
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L87-L88
CONTRACT_ID: stepP:p3:lp-tele
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:limit-phi: the original KAM hypotheses, sequences and W_*:=D_* x R^n; choose x in W_*; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j, x
SOURCE_CONCLUSION: Pi_I Phi_j(x)-Pi_I x=sum_k(I^{(k-1)}-I^{(k)}) with each summand bounded by (iii); summing with sum Ehat_{k-1}<=2 Ehat_0 gives (i) uniformly in j and for complex theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-actions, bpP:p3:iterative, bpP:p3:sums, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L88-L88 | (ii): W_* subset W_j
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L88-L88 | (iii): displacement bounds of each Psi_k
EDGE: bpP:p3:sums | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L88-L88 | sum Ehat_{k-1}<=2 Ehat_0, rhohat_{k-1}<=rhohat_0, s_{k-1}<=s_0
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L88-L88 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L88-L88 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-tele@L88-L88 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:lp-cauchy

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

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
DEPS: bpP:p3:psi-lip, stepP:p3:la-lip, bpP:p3:limit-actions, bpP:p3:limitmap#data, bpP:p3:constants, bpP:p3:seq, bpP:p3b#kam-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:psi-lip | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | (i) domains, (ii) varsigma_k and its sum, (iii) displacement
EDGE: stepP:p3:la-lip | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | the composition rule for Lipschitz constants
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | W_* subset calD_j x R^n
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | Phicheck, L_*
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-cauchy@L90-L90 | Direct use of c,q or the numerical smallness bounds (3.4).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:lp-per

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

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
DEPS: bpP:p3:iterative, stepP:p3:lp-cauchy, bpP:p3:seq, bpP:p3:conv#data, bpP:p3:limitmap#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L92-L92 | Psi_k-id is Z^n-periodic in theta
EDGE: stepP:p3:lp-cauchy | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L92-L92 | (ii) the Lipschitz bound of Phicheck-id
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L92-L92 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L92-L92 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-per@L92-L92 | Direct use of S, checked maps or the rescaled norm.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:lp-an

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:lp-an
KIND: step
TITLE: Analyticity in $\theta$
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L93-L94
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L93-L94
CONTRACT_ID: stepP:p3:lp-an
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:limit-phi: the original KAM hypotheses, sequences and W_*:=D_* x R^n; fix I_* in D_*; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: I_*, v<sbar/2 pi
SOURCE_CONCLUSION: the limit is holomorphic on the whole strip with real restriction Phi(I_*,.)-(0,id); the bounds (i) pass to the limit
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:fourier-compact, stepP:p3:lp-tele, stepP:p3:lp-cauchy, bpP:p3:iterative, bpP:p3:limit-actions, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:fourier-compact | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L94-L94 | compactness of periodic holomorphic functions on a strip (componentwise, w=sbar/2 pi)
EDGE: stepP:p3:lp-tele | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L94-L94 | uniform bound (i) on the complex strip
EDGE: stepP:p3:lp-cauchy | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L94-L94 | uniform convergence on R^n
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L94-L94 | Phi_j holomorphic on W_j (I_* in (D_j)_{rho_j})
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L94-L94 | D_* subset (D_j)_{rho_j/2}
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L94-L94 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lp-an@L94-L94 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p3:estimates

Changed fields: DEPS, EDGE.

```text
NODE: bpP:p3:estimates
KIND: lemma
TITLE: Estimates and location
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L102-L106
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L107-L112
CONTRACT_ID: bpP:p3:estimates
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega in Omega_*; the tori data
SOURCE_QUANTIFIERS: omega
SOURCE_CONCLUSION: ¦u¦<=3 Ehat_0 s/(4 pi) on {¦Im theta¦<sbar/2 pi}; ¦v_1-I_{0,1}¦<=20(Mbar_1/Mbar+Mhat/M)Ehat_0 rhohat_0 and ¦v_2-I_{0,2}¦<=20(Mbar_2/Mbar+1)Ehat_0 rhohat_0 on R^n; v in Re(D_r) with r=32 Ehat_0 rhohat_0, so phi_omega(R^n) subset Re(D_r) x R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:es-sup, stepP:p3:es-loc, bpP:p3:tori#data, bpP:p3:limit-phi, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:es-sup | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L108-L108 | step: sup bounds
EDGE: stepP:p3:es-loc | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L110-L110 | step: location
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L103-L103 | phi_omega=(v,theta+u), I_0, I_*
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L103-L103 | the displacement bounds of Phi
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L103-L103 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L103-L103 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:estimates@L103-L103 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the closing sentence "This is Proposition (a), (d)" is a pointer, not an edge
```

### stepP:p3:es-sup

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:es-sup
KIND: step
TITLE: Sup bounds
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-sup@L108-L109
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-sup@L108-L109
CONTRACT_ID: stepP:p3:es-sup
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:estimates: the original KAM hypotheses, omega in Omega_* and the definitions of I_0,I_*,phi_omega; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: i=1,2
SOURCE_CONCLUSION: ¦v_i-I_{0,i}¦<=¦Pi_{I_i}Phi(I_*,theta)-I_{*,i}¦+¦I_{*,i}-I_{0,i}¦<=(3/2)(Mhat/M)Ehat rhohat+20(Mbar_1/Mbar)Ehat rhohat for i=1 (and (3/2)+20 Mbar_2/Mbar for i=2) <= the stated constants; ¦u¦<=(3/2)Ehat s/2 pi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, bpP:p3:limit-actions, bpP:p3:tori#data, bpP:p3:constants, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-sup@L109-L109 | (i) displacement bounds of Phi
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-sup@L109-L109 | (i) ¦checki-id¦ bound
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-sup@L109-L109 | v, u, I_0, I_*
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-sup@L109-L109 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-sup@L109-L109 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:es-loc

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:es-loc
KIND: step
TITLE: Location
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-loc@L110-L111
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-loc@L110-L111
CONTRACT_ID: stepP:p3:es-loc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:estimates: the original KAM hypotheses, omega in Omega_* and the definitions of I_0,I_*,phi_omega; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: omega
SOURCE_CONCLUSION: dist(v,D)<22 Ehat rhohat<r=32 Ehat rhohat
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-actions, bpP:p3:limit-phi, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data, bpP:p3:tori#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-loc@L111-L111 | (ii): D_* subset Re(D_0)_{20 Ehat rhohat}
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-loc@L111-L111 | ¦v-I_*¦<=(3/2)Ehat rhohat from (i)
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-loc@L111-L111 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-loc@L111-L111 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-loc@L111-L111 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:es-loc@L111-L111 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p3:lagr

Changed fields: DEPS, EDGE.

```text
NODE: bpP:p3:lagr
KIND: lemma
TITLE: Immersion and Lagrangian property
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L114-L116
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L117-L124
CONTRACT_ID: bpP:p3:lagr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega in Omega_*; 4 s<=sbar; (3.4)
SOURCE_QUANTIFIERS: omega
SOURCE_CONCLUSION: norm D_theta u<=(3/4)n Ehat_0 (so the lower block 1+D_theta u of D phi_omega is injective since (3/4)n Ehat_0<1/2) and phi_omega^*(sum_i dJ_i^dtheta_i)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:lg-cauchy, stepP:p3:lg-j, stepP:p3:lg-lim, bpP:p3:tori#data, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data, bpP:p3b#kam-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:lg-cauchy | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L118-L118 | step: Cauchy in the strip
EDGE: stepP:p3:lg-j | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L120-L120 | step: each Phi_j-torus is Lagrangian
EDGE: stepP:p3:lg-lim | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L122-L122 | step: limit
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L115-L115 | phi_omega
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L115-L115 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L115-L115 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L115-L115 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3:lagr@L115-L115 | Direct use of c,q or the numerical smallness bounds (3.4).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:lg-cauchy

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:lg-cauchy
KIND: step
TITLE: Cauchy in the strip
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L118-L119
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L118-L119
CONTRACT_ID: stepP:p3:lg-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:lagr: the original KAM hypotheses, omega in Omega_* and the definitions of I_0,I_*,phi_omega; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: real theta
SOURCE_CONCLUSION: ¦d_a u_i¦<=3 Ehat s/sbar<=(3/4)Ehat and the row sum is <=(3/4)n Ehat
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:estimates, K:bp:p1:cauchy-open, bpP:p3:limit-phi, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data, bpP:p3:tori#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:estimates | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L119-L119 | ¦u¦<=3 Ehat s/(4 pi) on the strip
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L119-L119 | Cauchy estimate on the polydisc of radius sbar/4 pi
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L119-L119 | u holomorphic on the strip (analyticity in theta)
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L119-L119 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L119-L119 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L119-L119 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-cauchy@L119-L119 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:lg-j

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

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
DEPS: bpP:p3:iterative, bpP:p3:seq, bpP:p3:conv#data, bpP:p3:tori#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-j@L121-L121 | Phi_j analytic symplectic on W_j
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-j@L121-L121 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-j@L121-L121 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-j@L121-L121 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:lg-lim

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

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
DEPS: bpP:p3:limit-phi, stepP:p3:lp-an, bpP:p3:fourier-compact, stepP:p3:lg-j, bpP:p3:seq, bpP:p3:conv#data, bpP:p3:tori#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | convergence of Phi_j
EDGE: stepP:p3:lp-an | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | convergence with all derivatives in theta
EDGE: bpP:p3:fourier-compact | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | uniform convergence of the derivatives
EDGE: stepP:p3:lg-j | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | Omega_j=0 for each j
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:lg-lim@L123-L123 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:inv-conj

Changed fields: DEPS, EDGE, NOTE, SOURCE_HYPOTHESES.

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
DEPS: bpP:p3:iterative, bpP:p3:seq, bpP:p3:conv#data, bpP:p3:tori#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L133-L133 | Phi_j symplectic with H_j=H o Phi_j=h_j+f_j
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L133-L133 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L133-L133 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-conj@L133-L133 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: p3b L133 applies general symplectic conjugation to the composition Phi_j. N symplectic concludes matrix identities for a single small Hamiltonian flow X^t; N canonical(b) has the same single-flow premises. Neither supplies this application with Phi_j substituted, and the source gives no finite-composition reduction to those premises. Iterative supplies symplecticity of Phi_j and H_j=H o Phi_j. The remaining general conjugation/chain-rule bridge, in the action-first convention, is asserted here; no new external or proof is introduced.
```

### stepP:p3:inv-dphi

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:inv-dphi
KIND: step
TITLE: $D\Phi_j$ bounded
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-dphi@L135-L136
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-dphi@L135-L136
CONTRACT_ID: stepP:p3:inv-dphi
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:invariance: the original KAM hypotheses, omega in Omega_*, vartheta in R^n, t in R; I_0,I_*,theta_t,gamma_j,gamma denote the curves defined before the proof steps; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j
SOURCE_CONCLUSION: norm S D Phi_j S^{-1}<=11/10, so norm D Phi_j<=kappa:=(11/10)max{1,2 pi rhohat_0/s_0,s_0/(2 pi rhohat_0)} independent of j
CONSTANT_SCOPE: kappa depends only on rhohat_0, s_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:lp-cauchy, bpP:p3:limitmap#data, bpP:p3:limit-phi, bpP:p3:constants, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:lp-cauchy | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-dphi@L136-L136 | the composition bound L_*(Phicheck_j-id)<=1/10 (argument reused)
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-dphi@L136-L136 | S, calD_j
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-dphi@L136-L136 | (ii)
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-dphi@L136-L136 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-dphi@L136-L136 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:inv-err

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:inv-err
KIND: step
TITLE: The three error terms
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L137-L141
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L137-L141
CONTRACT_ID: stepP:p3:inv-err
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:invariance: the original KAM hypotheses, omega in Omega_*, vartheta in R^n, t in R; I_0,I_*,theta_t,gamma_j,gamma denote the curves defined before the proof steps; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: j
SOURCE_CONCLUSION: (1) ¦omega-omega_j(I_*)¦<=20 M_j rhohat_j Ehat_j<=7 gamma_1 Ehat_j; (2) ¦d_I f_j¦<=2 E_j/rho_j<=gamma_1 Ehat_j; (3) ¦d_theta f_j¦<=4 pi E_j/sbar<=4 pi gamma_1 Ehat_j rhohat_0/sbar; all three tend to 0 uniformly in (theta,t) since Ehat_j<=Ehat_0^{2^j}; hence sup_t ¦gamma_j1-X_H(gamma_j)¦->0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-actions, K:bp:p1:cauchy-open, bpP:p3:iterative, bpP:p3:seq, bpP:p3:constants, bpP:p3:conv#data, bpP:p3:tori#data, stepP:p3:inv-conj, stepP:p3:inv-dphi, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L138-L138 | (iv) omega=omega_j(checki_j(I_0)) and ¦I_*-checki_j(I_0)¦<=20 rhohat_j Ehat_j, (ii) I_* in Re(D_j)_{rho_j/2}
EDGE: K:bp:p1:cauchy-open | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L139-L139 | Cauchy estimates for d_I f_j and d_theta f_j
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L138-L138 | (ii) norm f_j<=E_j, (iv) Ehat_j<=Ehat_0^{2^j}
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L138-L138 | M_j, L_j, rhohat_j, E_j
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L138-L138 | M_j rhohat_j<=gamma_1/(3 K_j^{tau+1}) and E_j=Ehat_j rhohat_j^2/L_j
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L138-L138 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L138-L138 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
EDGE: stepP:p3:inv-conj | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L141-L141 | L141 converts the three component errors to the derivative error using the identity of L133-L134.
EDGE: stepP:p3:inv-dphi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L141-L141 | L141 needs the j-independent derivative bound kappa from L136.
EDGE: K:bp:p1:ext-mvt | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-err@L138-L138 | L138 bounds omega_j across the segment using its Hessian bound.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:inv-lim

Changed fields: DEPS, EDGE, NOTE, SOURCE_HYPOTHESES.

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
DEPS: bpP:p3:limit-phi, stepP:p3:inv-conj, stepP:p3:inv-err, K:bp:p1:cauchy-open, bpP:p3:limitmap#data, bpP:p3b#kam-bounds, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data, bpP:p3:tori#data, K:bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | Phi_j->Phi uniformly (delta_j->0)
EDGE: stepP:p3:inv-conj | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:inv-lim@L143-L143 | the conjugation identity
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
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: p3b L143 invokes the real C^1 uniform-derivative-limit theorem for curves gamma_j on R. No admitted external/imported statement here supplies that theorem. K uniform-limits is holomorphic on an open complex set, with uniform complex derivative convergence, so it is not this real-curve contract. The local derivative/MVT estimate and convergence inputs are recorded; the final passage to a real C^1 limit remains an explicitly asserted bridge. The trailing N citations merely recall inv-conj.
```

### stepP:p3:cv-ext

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:cv-ext
KIND: step
TITLE: Extension
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-ext@L154-L155
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-ext@L154-L155
CONTRACT_ID: stepP:p3:cv-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:cover: X subset R^N arbitrary, g:X->R^N, L(g)<=lambda<1 and sup norm g<=eta; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: components
SOURCE_CONCLUSION: g_e: componentwise McShane extension with the same lambda for the max norm
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:mcshane
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:mcshane | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-ext@L155-L155 | McShane extension
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:cv-bij

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:cv-bij
KIND: step
TITLE: Bijectivity
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-bij@L156-L157
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-bij@L156-L157
CONTRACT_ID: stepP:p3:cv-bij
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:cover: X subset R^N arbitrary, g:X->R^N, L(g)<=lambda<1 and sup norm g<=eta; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: x,y
SOURCE_CONCLUSION: ¦F(x)-F(y)¦>=(1-lambda)¦x-y¦ gives injectivity and the lower bound; x->y-g_e(x) is a lambda-contraction with fixed point F^{-1}(y), so F is bijective
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:ext-banach, stepP:p3:cv-ext
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:ext-banach | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-bij@L157-L157 | Banach fixed point theorem
EDGE: stepP:p3:cv-ext | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-bij@L157-L157 | the extension g_e
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:cv-loc

Changed fields: SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:cv-loc
KIND: step
TITLE: Location of preimages
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-loc@L158-L159
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-loc@L158-L159
CONTRACT_ID: stepP:p3:cv-loc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:cover: X subset R^N arbitrary, g:X->R^N, L(g)<=lambda<1 and sup norm g<=eta; y in X and x=F^{-1}(y) for the extension already constructed; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: y
SOURCE_CONCLUSION: ¦x-y¦=¦g_e(x)¦<=eta+lambda¦x-y¦ so ¦x-y¦<=eta/(1-lambda)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:cv-bij, stepP:p3:cv-ext
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:cv-bij | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-loc@L159-L159 | x=F^{-1}(y) and the lower Lipschitz bound
EDGE: stepP:p3:cv-ext | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:cv-loc@L159-L159 | g_e(y)=g(y) on X
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:ma-ext

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:ma-ext
KIND: step
TITLE: Extension and preimage
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-ext@L166-L167
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-ext@L166-L167
CONTRACT_ID: stepP:p3:ma-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:meas-actions: the original KAM hypotheses and the measure data a,b,lambda,eta,D_0,D_*; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: y in D_0 minus D_*
SOURCE_CONCLUSION: F=checki_e; x=F^{-1}(y) lies in N_{rho_1}(D_0) and not in D_0 (else y=checki(x) in D_*), so D_0 minus D_* subset F(N_{rho_1}(D_0) minus D_0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:cover, bpP:p3:limit-actions, bpP:p3:measure#data, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:cover | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-ext@L167-L167 | bi-Lipschitz extension and location of preimages
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-ext@L167-L167 | (iii) lambda<1/3 and the sup bound (i) giving eta
EDGE: bpP:p3:measure#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-ext@L167-L167 | N_rho, eta, lambda
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-ext@L167-L167 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-ext@L167-L167 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-ext@L167-L167 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:ma-meas

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:ma-meas
KIND: step
TITLE: Measure
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-meas@L168-L169
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-meas@L168-L169
CONTRACT_ID: stepP:p3:ma-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:meas-actions: the original KAM hypotheses and the measure data a,b,lambda,eta,D_0,D_*; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in lemma
SOURCE_CONCLUSION: meas(D_0 minus D_*)<=(1+lambda)^n meas(N_{rho_1}(D_0) minus D_0)<=(4/3)^n(a+b), since N_{rho_1}(D_0) minus D_0 subset (N_{rho_1}(D) minus D) union (D minus D_0); second claim: D minus D_* subset (D minus D_0) union (D_0 minus D_*)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:lip-image, stepP:p3:ma-ext, bpP:p3:measure#data, bpP:p3:conv#data, K:bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:lip-image | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-meas@L169-L169 | Lipschitz images
EDGE: stepP:p3:ma-ext | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-meas@L169-L169 | inclusion D_0 minus D_* subset F(N_{rho_1}(D_0) minus D_0)
EDGE: bpP:p3:measure#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-meas@L169-L169 | a, b, N_rho
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-meas@L169-L169 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: K:bp:p1:ext-lebesgue | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:ma-meas@L169-L169 | Direct outer-measure monotonicity/subadditivity or box-volume scaling/product with an interval box.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:mt-split

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:mt-split
KIND: step
TITLE: Splitting
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-split@L177-L178
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-split@L177-L178
CONTRACT_ID: stepP:p3:mt-split
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:meas-torus: the original KAM hypotheses and the measure data; angle measure is the unit-cell measure; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in lemma
SOURCE_CONCLUSION: (D x T^n) minus K_Omega subset ((D minus D_*) x T^n) union (((D_* cap D) x T^n) minus K_Omega); the first set has measure <=a+(4/3)^n(a+b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:meas-actions, bpP:p3:measure#data, K:bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:meas-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-split@L178-L178 | meas(D minus D_*)<=a+(4/3)^n(a+b)
EDGE: bpP:p3:measure#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-split@L177-L177 | K_Omega=Phi(D_* x R^n)
EDGE: K:bp:p1:ext-lebesgue | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-split@L178-L178 | Direct outer-measure monotonicity/subadditivity or box-volume scaling/product with an interval box.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:mt-ext

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:mt-ext
KIND: step
TITLE: Rescaled extension
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L179-L180
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L179-L180
CONTRACT_ID: stepP:p3:mt-ext
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:meas-torus: the original KAM hypotheses and the measure data; angle measure is the unit-cell measure; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in lemma
SOURCE_CONCLUSION: g=Phicheck-id on X has L_*(g)<=lambda1:=768 n Ehat_0<1/10 and sup ¦g¦<=eta1:=(3/2)Ehat_0; the cover lemma (N=2n) gives the bijection Phicheck_e=id+g_e of R^{2n} extending Phicheck on X, (1+lambda1)-Lipschitz, with ¦Phicheck_e^{-1}(y)-y¦_*<=eta1/(1-lambda1)<=2 Ehat_0 for y in X; S multiplies measure by a constant so comparisons are unaffected
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, bpP:p3:cover, bpP:p3:limitmap#data, bpP:p3:measure#data, bpP:p3:constants, bpP:p3:seq, K:bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L180-L180 | (i) sup bound and (ii) Lipschitz bound of Phicheck-id
EDGE: bpP:p3:cover | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L180-L180 | bijective extension and location of preimages
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L179-L179 | the scaled coordinates S
EDGE: bpP:p3:measure#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L180-L180 | K_Omega, D_*
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L180-L180 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L180-L180 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: K:bp:p1:ext-lebesgue | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-ext@L180-L180 | Direct outer-measure monotonicity/subadditivity or box-volume scaling/product with an interval box.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:mt-pre

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

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
DEPS: stepP:p3:mt-ext, bpP:p3:limit-phi, bpP:p3:measure#data, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:mt-ext | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L182-L182 | the extension Phi_e and the bound on ¦Phi_e^{-1}(y)-y¦
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L182-L182 | Phi_e=Phi on D_* x R^n
EDGE: bpP:p3:measure#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L182-L182 | K_Omega=Phi(D_* x R^n), N_rho
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L182-L182 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L182-L182 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-pre@L182-L182 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:mt-meas

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:mt-meas
KIND: step
TITLE: Measure
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L183-L184
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L183-L184
CONTRACT_ID: stepP:p3:mt-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:meas-torus: the original KAM hypotheses and the measure data; angle measure is the unit-cell measure; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in lemma
SOURCE_CONCLUSION: the second set has measure <=(1+lambda1)^{2n}(1+2 epsilon)^n meas(N_{rho_2}(D_*) minus D_*)<=2^n meas(N_{rho_2}(D_*) minus D_*), since (1.1)^{2n}(1+Ehat_0/2 pi)^n<=(1.21 1.01)^n<2^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:lip-image, stepP:p3:mt-pre, stepP:p3:mt-ext, bpP:p3:constants, bpP:p3:seq, bpP:p3b#kam-bounds, bpP:p3:limitmap#data, bpP:p3:measure#data, K:bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:lip-image | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L184-L184 | Lipschitz images in scaled coordinates (scaling constants cancel)
EDGE: stepP:p3:mt-pre | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L184-L184 | the inclusion of the second set
EDGE: stepP:p3:mt-ext | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L184-L184 | Phi_e is (1+lambda1)-Lipschitz
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L184-L184 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L184-L184 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3b#kam-bounds | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L184-L184 | Direct use of c,q or the numerical smallness bounds (3.4).
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L184-L184 | Direct use of S, checked maps or the rescaled norm.
EDGE: bpP:p3:measure#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L184-L184 | Direct use of the measure data K_Omega,a,b,N_rho or the shell notation.
EDGE: K:bp:p1:ext-lebesgue | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-meas@L184-L184 | Direct outer-measure monotonicity/subadditivity or box-volume scaling/product with an interval box.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:mt-shell

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:mt-shell
KIND: step
TITLE: The shell
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L185-L186
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L185-L186
CONTRACT_ID: stepP:p3:mt-shell
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:meas-torus: the original KAM hypotheses and the measure data; angle measure is the unit-cell measure; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in lemma
SOURCE_CONCLUSION: N_{rho_2}(D_*) subset N_{rho_2+eta}(D) subset Re(D_r) and N_{rho_2}(D_*) minus D_* subset (N_{rho_2+eta}(D) minus D) union (D_0 minus D_*) union (D minus D_0), of measure <=(1+(4/3)^n)(a+b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:meas-actions, bpP:p3:limit-actions, stepP:p3:mt-pre, bpP:p3:measure#data, bpP:p3:constants, bpP:p3:seq, bpP:p3:conv#data, K:bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:meas-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L186-L186 | meas(D_0 minus D_*)<=(4/3)^n(a+b)
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L186-L186 | D_*=checki(D_0) subset N_eta(D_0)
EDGE: stepP:p3:mt-pre | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L186-L186 | the shell radius rho_2
EDGE: bpP:p3:measure#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L186-L186 | a, b, N_rho, eta
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L186-L186 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L186-L186 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L186-L186 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: K:bp:p1:ext-lebesgue | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-shell@L186-L186 | Direct outer-measure monotonicity/subadditivity or box-volume scaling/product with an interval box.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:mt-sum

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:mt-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-sum@L187-L188
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-sum@L187-L188
CONTRACT_ID: stepP:p3:mt-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:meas-torus: the original KAM hypotheses and the measure data; angle measure is the unit-cell measure; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: as in lemma
SOURCE_CONCLUSION: total <=[a+(4/3)^n(a+b)]+2^n(1+(4/3)^n)(a+b)<=[1+(4/3)^n+2^n(1+(4/3)^n)](a+b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepP:p3:mt-split, stepP:p3:mt-meas, stepP:p3:mt-shell, bpP:p3:measure#data
ROUTES: -
ROUTE_FOR: -
EDGE: stepP:p3:mt-split | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-sum@L188-L188 | first term
EDGE: stepP:p3:mt-meas | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-sum@L188-L188 | second term
EDGE: stepP:p3:mt-shell | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-sum@L188-L188 | measure of the shell
EDGE: bpP:p3:measure#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:mt-sum@L188-L188 | Direct use of the measure data K_Omega,a,b,N_rho or the shell notation.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:pf-constr

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:pf-constr
KIND: step
TITLE: Construction
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-constr@L194-L195
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-constr@L194-L195
CONTRACT_ID: stepP:p3:pf-constr
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:two-scale-kam: all original hypotheses of Proposition two-scale-kam, used as premises only; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: n_1,n_2,... as in the proposition
SOURCE_CONCLUSION: the sequence of Lemma iterative exists, checki, Phi and phi_omega are defined by Lemmas limit-actions, limit-phi and Section tori
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:iterative, bpP:p3:limit-actions, bpP:p3:limit-phi, bpP:p3:tori#data, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:iterative | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-constr@L195-L195 | the sequence and Phi_j
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-constr@L195-L195 | checki
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-constr@L195-L195 | Phi
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-constr@L195-L195 | phi_omega defined in Section tori
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-constr@L195-L195 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:pf-ad

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:pf-ad
KIND: step
TITLE: (a), (d)
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-ad@L196-L197
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-ad@L196-L197
CONTRACT_ID: stepP:p3:pf-ad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:two-scale-kam: all original hypotheses of Proposition two-scale-kam, used as premises only; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: omega
SOURCE_CONCLUSION: (a) and (d) of the proposition
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, bpP:p3:estimates, bpP:p3:tori#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-ad@L197-L197 | analyticity and displacement bounds of Phi
EDGE: bpP:p3:estimates | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-ad@L197-L197 | estimates and location
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-ad@L197-L197 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:pf-bc

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:pf-bc
KIND: step
TITLE: (b), (c)
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-bc@L198-L199
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-bc@L198-L199
CONTRACT_ID: stepP:p3:pf-bc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:two-scale-kam: all original hypotheses of Proposition two-scale-kam, used as premises only; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: omega
SOURCE_CONCLUSION: (b) conjugacy and (c) embedded Lagrangian torus
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:invariance, bpP:p3:lagr, bpP:p3:tori#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:invariance | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-bc@L199-L199 | (b)
EDGE: bpP:p3:lagr | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-bc@L199-L199 | (c)
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-bc@L199-L199 | Direct use of I_0(omega),I_*(omega) or phi_omega from the tori data.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:pf-inj

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:pf-inj
KIND: step
TITLE: Injectivity and Lipschitz structure
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L200-L201
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L200-L201
CONTRACT_ID: stepP:p3:pf-inj
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:two-scale-kam: all original hypotheses of Proposition two-scale-kam, used as premises only; the equality phi_omega(theta)-phi_omega1(theta1)=(0,k) is assumed only within the injectivity implication; bounded D is assumed only for the final global inverse bound; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: omega,omega1,theta,theta1,k
SOURCE_CONCLUSION: omega=omega1 and theta-theta1 in Z^n by periodicity and injectivity of Phi and injectivity of checki and omega_0; the factorization Phi o (checki o omega_0^{-1}, id) with the stated constants; omega_0^{-1} is Mbar-Lipschitz for pairs at distance <rho/Mbar (ball lemma with F=omega_0, delta=rho) and globally Mbar max{1,diam D/rho}-Lipschitz for bounded D
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:limit-phi, bpP:p3:limit-actions, bpP:p3:ball, bpP:p3:tori#data, bpP:p3:constants, bpP:p3:conv#data, bpP:p3:limitmap#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:limit-phi | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L201-L201 | (iii) periodicity and (ii) injectivity of Phi, Lipschitz bound
EDGE: bpP:p3:limit-actions | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L201-L201 | (iii) injectivity and Lipschitz constant of checki
EDGE: bpP:p3:ball | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L201-L201 | Lipschitz bound of omega_0^{-1} for close frequencies
EDGE: bpP:p3:tori#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L201-L201 | I_*(omega)=checki(I_0(omega))
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L201-L201 | Direct use of the constants package (L,K,rhohat,Ehat,chat or their indexed/initial values).
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L201-L201 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: bpP:p3:limitmap#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-inj@L201-L201 | Direct use of S, checked maps or the rescaled norm.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### stepP:p3:pf-meas

Changed fields: DEPS, EDGE, SOURCE_HYPOTHESES.

```text
NODE: stepP:p3:pf-meas
KIND: step
TITLE: Measure
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-meas@L202-L203
PROOF_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-meas@L202-L203
CONTRACT_ID: stepP:p3:pf-meas
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the source setting of bpP:p3:two-scale-kam: all original hypotheses of Proposition two-scale-kam, used as premises only; previously established bounds are supplied through DEPS, not additional hypotheses
SOURCE_QUANTIFIERS: a,b of the measure data
SOURCE_CONCLUSION: (Re(D_r) x T^n) minus K_Omega subset ((Re(D_r) minus D) x T^n) union ((D x T^n) minus K_Omega) and Lemma meas-torus gives (3.1) with c_n=1+(1+2^n)(1+(4/3)^n), a=meas(D minus D^dio), b=meas(Re(D_r) minus D), meas T^n=1
CONSTANT_SCOPE: c_n absolute
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:estimates, bpP:p3:meas-torus, bpP:p3:measure#data, bpP:p3:conv#data, K:bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:estimates | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-meas@L203-L203 | K_Omega subset Re(D_r) x T^n
EDGE: bpP:p3:meas-torus | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-meas@L203-L203 | meas((D x T^n) minus K_Omega)<=[...](a+b)
EDGE: bpP:p3:measure#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-meas@L203-L203 | K_Omega, a, b
EDGE: bpP:p3:conv#data | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-meas@L203-L203 | Direct use of Part 3 action neighbourhoods, Fourier/strip convention, blocks, symplectic form or Diophantine notation.
EDGE: K:bp:p1:ext-lebesgue | blueprint-P/parts/p3b-two-scale-limit.tex#stepP:p3:pf-meas@L203-L203 | Direct outer-measure monotonicity/subadditivity or box-volume scaling/product with an interval box.
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

### bpP:p3b#kam-bounds

Changed fields: DEPS, EDGE.

```text
NODE: bpP:p3b#kam-bounds
KIND: claim
TITLE: Constants c, q and the consequences (3.4) of the KAM condition
STATEMENT_SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3b#kam-bounds@L3-L4
PROOF_SOURCE: -
CONTRACT_ID: bpP:p3b#kam-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the constants of Definition constants with chat>=2^13 n and chat>=24^{tau+1}/3; the KAM condition chat Ehat_0<1 of the proposition (hypothesis, no edge)
SOURCE_QUANTIFIERS: n, tau; c:=24^{tau+1}/6, q:=2 24^{tau+1}=12 c
SOURCE_CONCLUSION: since chat>=2c and chat>=2^13 n the KAM condition gives Ehat_0<1/(8192 n) and c Ehat_0<1/2 (3.4)
CONSTANT_SCOPE: c, q absolute functions of tau
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpP:p3:constants, bpP:p3:seq
ROUTES: -
ROUTE_FOR: -
EDGE: bpP:p3:constants | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3b#kam-bounds@L3-L3 | the definition of chat, which gives chat>=2^13 n and chat>=2c
EDGE: bpP:p3:seq | blueprint-P/parts/p3b-two-scale-limit.tex#bpP:p3b#kam-bounds@L4-L4 | Direct use of the numerical sequences or their initialization (D_0,rho_j,s_j,M_j,L_j,E_j).
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: prose L3-L4 of Part 3b, consumed by Lemma sums and the Lipschitz steps
```

### Required native external bpP:p3:ext-weierstrass

```text
NODE: bpP:p3:ext-weierstrass
KIND: external
TITLE: Weierstrass theorem
STATEMENT_SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ext-weierstrass@L116-L116
PROOF_SOURCE: -
CONTRACT_ID: bpP:p3:ext-weierstrass
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: an open subset V of C^n; holomorphic functions F_j on V; F_j converge locally uniformly on V to F
SOURCE_QUANTIFIERS: n; V; the holomorphic sequence F_j; its locally uniform limit F
SOURCE_CONCLUSION: F is holomorphic on V and derivatives of F_j converge locally uniformly to the corresponding derivatives of F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: Related to K:bp:p1:uniform-limits, which requires convergence of DK_s uniformly on an open set in addition to pointwise convergence of K_s. This source external assumes only locally uniform convergence of the functions and also concludes locally uniform derivative convergence; it adds content and is not an alias.
```

### Coverage bpP:p3:ext-weierstrass

```text
ITEM: bpP:p3:ext-weierstrass
KIND: external
SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ext-weierstrass@L116-L116
DISPOSITION: NODE bpP:p3:ext-weierstrass
REASON: the full Weierstrass statement adds content beyond K:bp:p1:uniform-limits; it does not assume derivative convergence, so keep the native labelled external and link fc-tail.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
```

### Coverage p3b:prose-L208-L218

```text
ITEM: p3b:prose-L208-L218
KIND: proof-region
SOURCE: blueprint-P/parts/p3b-two-scale-limit.tex#prose@L208-L218
DISPOSITION: NODE bpP:p3:constants, bpP:p3:period-dictionary, bpP:p3:two-scale-kam, bpP:p5:kam-hyp, stepP:p5:kc-eval, bpP:p1:cyl-pipeline, bpP:p4:freq
REASON: map this interface data and its restated dictionaries to their existing owners and consumers. Part 5 L200 explicitly takes the numerical bounds from interface(2), and L224 uses its exact evaluation of L,x,K. Parts 1 and 4 own the pipeline/frequency dictionaries; the budget mention is a pointer to its separately inventoried interface. No new result node or edge back to the two-scale theorem is needed for a restatement.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
```

### Coverage bpP:p3:ext-fourier

```text
ITEM: bpP:p3:ext-fourier
KIND: external
SOURCE: blueprint-P/parts/p3a-two-scale-iteration.tex#bpP:p3:ext-fourier@L115-L115
DISPOSITION: EXCLUDED
REASON: coefficient-definition notation associated with K:bp:p1:ext-fourier; the defining integral is copied in fc-coef NOTE and gives its elementary sup bound. The reconstruction theorem is consumed by fc-tail, not by fc-coef. No additional theorem is asserted by this definition-only external item.
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-P-p3
REVIEWER: -
```

## Suspected blueprint defects

- `blueprint-P/parts/p3a-two-scale-iteration.tex:91`: “can only increase [rhohat] and [Ehat]” (the displayed variables in the source) while “L is unchanged.” With fixed E,L, the definition Ehat=E L/rhohat^2 has the opposite monotonicity in rhohat. This is a defect in the blueprint sentence, not a new allegation about the pinned CP10 paper; the normalization itself is still usable.
- `blueprint-P/parts/p3a-two-scale-iteration.tex:184-185`: “for (I′,theta′) in D_{rhohat/2} x T_{sbar+s/6} and Psi_+(I′,theta′)=(I,theta).” L179 and L202 define the named Psi_+ only on the smaller (D_+)_{rho_+} x T_{sbar+s_+}. The proof at L204 bounds the original averaging map Psi on the larger domain. The packet must expose this mismatch rather than choose a repaired interpretation.
- `blueprint-P/parts/p3b-two-scale-limit.tex:133`: “X_H o Phi_j = D Phi_j X_{H_j}” cites N symplectic. The N statements at p5 L76-L81 and L90-L98 concern a single small Hamiltonian flow, not this arbitrary finite composition. The needed general identity is mathematically standard but its source contract is not supplied by those literal statements; recorded as SOURCE_GAP rather than a proposed new proof.
- `blueprint-P/parts/p3b-two-scale-limit.tex:143`: “A uniform limit of C^1 functions ... is C^1” under uniform derivative convergence is a real-curve limit theorem. No listed external here gives that carrier. K uniform-limits at p1 L364-L368 is holomorphic on an open complex set. Recorded as SOURCE_GAP; no new external/import is invented.

The previously listed CP10 errata at p3a L36-L40 and p3b L223-L237 were treated as provenance/administrative text, not independently verified paper claims. No paper erratum is promoted on the strength of these blueprint comments alone.

## Verification and scope

- Read-only structural checks: 95 unique current node IDs; 131 coverage records; all current slice nodes reachable from the six roots; no directed cycle containing a slice node. Checks use the current packets, so they do not certify other reviewers’ simultaneous edits.
- Re-read direct suppliers in P Parts 1 and 2, K Part 1, and N Parts 4 and 5 at their owning source statements. In particular, Part 2 nfb supplies the E/(K s) bound with geometric width s_N=s/(2 pi), kappa=2 pi K s_N; Part 3 avg supplies the one-step non-resonance/smallness application at L199-L201. No positivity, injectivity or existence conclusion of two-scale-kam is assumed in its own construction.
- No P-p3 frozen anchors exist; manifest state fields and Lean implementation/proof bodies were not inspected. No Lean command, source lint/build, packet edit, manifest edit or state-changing git command was run (the review brief requires a report-only task).

Input packet SHA256: `30c755f163ca86503460663f71a41cbecd40ea85fb059c85d946a9c0085f4506` (nodes); `2329e2b80156f6152ef38045367126bc0a942d6bb02292975577fbcce6e76c24` (coverage).
