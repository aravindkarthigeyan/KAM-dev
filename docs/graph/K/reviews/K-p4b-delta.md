# K-p4b delta review

Reviewer: sol-review-r2. Verdict: **FAIL**.

Reviewed every r2-assigned record against the current packet, its first review by sol-review-r4, and the raw source. Each row is a local record verdict; PASS of a faithfully exposed SOURCE_GAP does not close its mathematics. No premise was repaired or added to a source theorem.

Read the governing instructions, current SPEC (including the new reachability rule), REVIEW-BRIEF and DELTA-BRIEF. Re-read Part 4 L1-L1303, covering all assigned statement/proof and EDGE consumer spans. Also checked the relevant Part 0 contracts, Part 1 results, all 25 track-K frozen definitions/theorem statements and manifest identity fields. No implementation or provider module was read.

| Record ID | Kind | Verdict | Raw Part 4 spans re-read (statement; proof, or coverage) | Reason / resolution |
|---|---|---|---|---|
| `step:p4:shift-phase` | node | FAIL | L711-L717; L711-L717 | D7: phase-average EDGE points only to the heading L711, not a use of u_K or ph(K). |
| `bp:p4:normalized-torus` | node | FAIL | L720-L726; - | D5: The new direct SA dependency resolves the missing package, but the parameters EDGE is retained solely for SA/Omega_gamma, both defined by SA rather than parameters. Remove this unnecessary transitive edge. |
| `bp:p4:normalize` | node | PASS | L728-L734; L736-L742 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:normalize-proof` | node | FAIL | L737-L741; L737-L741 | D7: normalized-torus EDGE still points only to the proofstep heading L737. |
| `bp:p4:mixed-difference` | node | PASS | L800-L806; L808-L818 | Actual proofstep span replaces the bare proof-environment locator. |
| `step:p4:mixed-proof` | node | PASS | L809-L817; L809-L817 | Both mean-value uses and regularity match; Part 1 mixed-difference is only a model, not an imported proof. |
| `bp:p4:lip-error` | node | FAIL | L820-L829; L831-L874 | D7: normalized-torus EDGE at L821 contains only the frequency/SA hypotheses; K_omega and W_omega appear at L823-L824. |
| `step:p4:le-basic` | node | PASS | L832-L836; L832-L836 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:le-h` | node | PASS | L853-L858; L853-L858 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:le-f` | node | PASS | L860-L865; L860-L865 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `bp:p4:lip` | node | FAIL | L876-L882; L884-L946 | D7: normalized-torus EDGE at L878 contains no W_omega; the expression occurs at L880. |
| `step:p4:lip-far` | node | PASS | L885-L890; L885-L890 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:lip-g1` | node | FAIL | L892-L911; L892-L911 | D7: lip-error EDGE at L898 points to the STAB invocation, before the shifted-torus and error properties supplied at L900-L903. D7: smallness EDGE at L898 contains neither s3 nor s4; their uses occur at L900 and L903-L905. D7: lip-far EDGE at L892 points only to the proofstep heading; e=e_prime is used at L895. |
| `step:p4:lip-g2` | node | PASS | L913-L927; L913-L927 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:lip-phase` | node | PASS | L929-L934; L929-L934 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:lip-close` | node | PASS | L936-L945; L936-L945 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:lag-regular` | node | PASS | L974-L978; L974-L978 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:lag-exact` | node | PASS | L980-L988; L980-L988 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:lag-unique` | node | PASS | L1001-L1006; L1001-L1006 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `bp:p4:real-torus` | node | FAIL | L1009-L1021; L1023-L1069 | D5: The new direct SA dependency resolves the missing package, but the parameters EDGE is retained solely for SA/Omega_gamma, both defined by SA rather than parameters. Remove this unnecessary transitive edge. D6: Clause (i) names the frozen torus predicate directly, without a definition dependency. D7: The realHamiltonian expression is at L1013; L1014 alone only finishes the frequency/torus reference. |
| `step:p4:rt-analytic` | node | FAIL | L1024-L1026; L1024-L1026 | D8: L1025 says real-restriction rests on holomorphic-analytic. This is a description of the imported lemma proof, not a second direct invocation. Keep real-restriction and remove the merely transitive holomorphic-analytic edge; the corrected primary-equivariance conclusion is sound. |
| `step:p4:rt-small` | node | PASS | L1028-L1033; L1028-L1033 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:rt-immersion` | node | PASS | L1035-L1037; L1035-L1037 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:rt-embedding` | node | PASS | L1039-L1043; L1039-L1043 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:rt-lagrangian` | node | PASS | L1045-L1050; L1045-L1050 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:rt-ode` | node | PASS | L1052-L1061; L1052-L1061 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:rt-cover` | node | PASS | L1063-L1068; L1063-L1068 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:pm-proof` | node | PASS | L1096-L1099; L1096-L1099 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `bp:p4:good-actions` | node | FAIL | L1102-L1111; - | D5: The new direct SA dependency resolves the missing package, but the parameters EDGE is retained solely for SA/Omega_gamma, both defined by SA rather than parameters. Remove this unnecessary transitive edge. |
| `bp:p4:map-lipschitz` | node | FAIL | L1113-L1116; L1118-L1138 | D5: The new direct SA dependency resolves the missing package, but the parameters EDGE is retained solely for SA/Omega_gamma, both defined by SA rather than parameters. Remove this unnecessary transitive edge. |
| `step:p4:ml-size` | node | FAIL | L1119-L1121; L1119-L1121 | D7: good-actions EDGE at L1119 points only to the proofstep heading. |
| `step:p4:ml-good` | node | FAIL | L1123-L1131; L1123-L1131 | D7: good-actions EDGE at L1123 points only to the proofstep heading. D7: parameters EDGE at L1124 does not name A_4,A_3 or Lambda_g; those uses occur at L1125-L1129. |
| `step:p4:ml-mixed` | node | PASS | L1133-L1137; L1133-L1137 | Distance-to-set Lipschitzness is correctly exposed as SOURCE_GAP rather than added as a premise. |
| `bp:p4:main-measure` | node | FAIL | L1140-L1147; L1149-L1184 | D5: The new direct SA dependency resolves the missing package, but the parameters EDGE is retained solely for SA/Omega_gamma, both defined by SA rather than parameters. Remove this unnecessary transitive edge. D6: The defining formula for C_meas directly uses C_B^+, L_+ and C_3^+; retain their actual definition suppliers. |
| `step:p4:mm-bad` | node | PASS | L1171-L1175; L1171-L1175 | First-review replacement checked: statement, conditional inputs and direct-use locators agree with the raw source. |
| `step:p4:mm-count` | node | FAIL | L1177-L1183; L1177-L1183 | D7: mm-complement EDGE at L1177 points only to the proofstep heading; the inclusion is used for the final subadditive estimate. D7: mm-bad EDGE at L1182 points only to the end-of-display delimiter, not the measure bounds. D7: mm-extension EDGE at L1180 points only to the begin-display delimiter, not the Lipschitz constant. |
| `step:p4:head-empty` | node | PASS | L1201-L1202; L1201-L1202 | Contradictory nonempty premise removed; fundamental-domain definition supplies the empty case. |
| `step:p4:head-negative` | node | PASS | L1214-L1216; L1214-L1216 | Nonempty original HEAD domain and perturbation bound supply epsilon>=0. |
| `step:p4:dy-exhaust` | node | FAIL | L1246-L1252; L1246-L1252 | D9: The SOURCE_GAP correctly exposes continuity of measure, but E_j is a finite union of cubes, not itself a closed dyadic cube as SOURCE_CONCLUSION says. |
| `step:p4:dy-open` | node | PASS | L1254-L1257; L1254-L1257 | Null cube boundaries remain faithfully exposed as a SOURCE_GAP. |
| `step:p4:hq-approx` | node | FAIL | L1274-L1275; L1274-L1275 | D7: hq-trivial EDGE at L1274 points only to the proofstep heading; positivity and finiteness supply the eta chosen at L1275. |
| `step:p4:hq-transfer` | node | FAIL | L1287-L1293; L1287-L1293 | D7: hq-approx EDGE at L1287 points only to the proofstep heading; Bprime subset B is used in the domain inclusion at L1289. D10: The first-review locator fix still models "As in Step head-negative" as a conditional use. That record depends on bp:p4:data, which includes a boundary-layer witness for B unavailable in HEAD-Q. Use the explicit local nonempty-domain argument supplied at L1290-L1291, with hq-trivial; do not import a HEAD-only package or infer Bprime nonempty. |
| `step:p4:hq-cover` | node | FAIL | L1295-L1302; L1295-L1302 | D11: The previous locator fixes hold, but the product-volume step for B minus Bprime remains unexposed under the same closed external-input policy used for mm-count. E8 is also a direct use for the final monotone/subadditive estimate. |
| `p4:sourcegap-L792` | coverage | PASS | L792-L798 | Expanded annotation/definition span and its disposition resolve the first-review finding. |
| `p4:sourcegap-L970` | coverage | PASS | L970-L971 | Expanded annotation/definition span and its disposition resolve the first-review finding. |
| `p4:source-L674` | coverage | PASS | L674-L675 | Expanded annotation/definition span and its disposition resolve the first-review finding. |
| `p4:source-L790` | coverage | PASS | L790-L791 | Expanded annotation/definition span and its disposition resolve the first-review finding. |
| `p4:source-L968` | coverage | PASS | L968-L969 | Expanded annotation/definition span and its disposition resolve the first-review finding. |
| `p4:source-L1083` | coverage | PASS | L1083-L1085 | Expanded annotation/definition span and its disposition resolve the first-review finding. |

All assigned coverage records PASS. In particular the source-gap annotations are fully inventoried; their PASS concerns the cited-paper omission addressed in the blueprint, not a blanket certification of every analytic/measure input.

The writer adjudication excluding normalized-unique and its steps agrees with Part 4 L744-L777: L776-L777 explicitly says it is unused, and L913-L945 applies G2 directly instead. Part 4 mixed-difference has its own proof at L809-L817, so the Part 1 mixed-difference comparison at L810 is not a consumer edge. The Part 1 route-kind and Part 2 V-item adjudications are outside r2's delta assignment.

Cross-part targets re-read: Part 0 conventions/definitions and G1-G3/HEAD/HEAD-Q contracts; Part 1 L54-L162 (external inputs and matrix norms), L165-L194 (Neumann), L215-L225 (regularity), L284-L304 (analyticity), L392-L440 (inverse, increments and Taylor), L462-L468 (Cauchy-open), L505-L562 (periodic boundedness, identity, increments, Cauchy-strip), L634-L705 (averages), L875-L885 (cohomological statement), L1023-L1100 (real restrictions/Hamiltonian fields), L1106-L1215 (Lipschitz image, products, McShane and lipeomorphisms). Part 4 prerequisite nodes were checked at their displayed source and hypothesis suppliers, including H1-holo L321-L327, STAB L583-L665, and the nonempty original-domain argument L1270-L1291.

Full replacement blocks for failed records follow. These are review proposals only; no packet or corpus file has been edited. The `¦` characters in EDGE rationales preserve the field separator convention.

```text
NODE: step:p4:shift-phase
KIND: step
TITLE: Phase average
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:shift-phase@L711-L717
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:shift-phase@L711-L717
CONTRACT_ID: step:p4:shift-phase
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic, primary on T_rho, real on reals; a in R^n; u_K o iota continuous and Z^n-periodic (primarity)
SOURCE_QUANTIFIERS: K,rho,a,I_*
SOURCE_CONCLUSION: (d) ph(K^[a])=ph(K)+a and uniqueness of normalized shift; (e) the phase and shifted-distance bounds against K0_{I*}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:periodic-average, bp:p4:phase-average, bp:p4:data, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:periodic-average | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L714-L714 | real parts of u_K(i(x+a)) averaged over the period cell, shift invariance
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L712-L714 | u_K, ph(K) defined there
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L715-L715 | K0_{I*} and u_{K0}=0
EDGE: bp:p1:ext-integral | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L714-L717 | The bound on the phase uses the integral norm bound on a unit-volume cube
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:normalized-torus
KIND: definition
TITLE: The normalized torus $K_\omega$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L720-L726
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:normalized-torus
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing assumption (SA) 0<gamma<=1 and 0<=eps<=c_* gamma^4 (display bp:p4:SA); omega in Omega_gamma; K^inf_omega from Theorem APPLY (fixed by choice)
SOURCE_QUANTIFIERS: gamma,eps; omega in Omega_gamma; a chosen K^inf_omega
SOURCE_CONCLUSION: defines K_omega=(K^inf_omega)^[-ph(K^inf_omega)], W_omega=K_omega-K0_omega=(u_omega,v_omega)
CONSTANT_SCOPE: all named constants (c_*, A_0..A_4, lambda_*, L_+, delta_*, mu, M, W_inf, Lambda_g, sigma_K, sigma_B, sigma_T, c_T, eta_*) depend only on the data n,tau,s0,r0,B,h,L_h,C_B (never on f, eps, gamma); eta_0=A_0 eps gamma^-2 depends also on eps,gamma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:apply, bp:p4:phase-average, bp:p4:inverse-freq, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:apply | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L721-L721 | K^inf_omega is a torus given by APPLY
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L723-L723 | ph and the shift K^[a] defined there
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L724-L724 | K0_omega=K0_{I_omega}, I_omega
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L720-L726 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:normalize-proof
KIND: step
TITLE: Shift of the G1 output
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L737-L741
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L737-L741
CONTRACT_ID: step:p4:normalize-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); omega in Omega_gamma; K^inf_omega from APPLY with |K^inf-K0|<=eta_0/2
SOURCE_QUANTIFIERS: gamma,eps,omega; theta in T_{s/8}
SOURCE_CONCLUSION: all clauses of Lemma normalize: first from APPLY and shift (a)-(d); |ph K^inf|<=eta_0/2 and |W_omega|<=eta_0 from shift (e)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:apply, bp:p4:shift, bp:p4:normalized-torus, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:apply | blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L738-L738 | properties of K^inf_omega on T_{s/8} and the eta_0/2 closeness
EDGE: bp:p4:shift | blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L738-L738 | parts (a)-(e) of the phase shift lemma
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L738-L741 | K_omega=(K^inf)^[-ph]
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L737-L741 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:lip-error
KIND: lemma
TITLE: The error of the shifted torus
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lip-error@L820-L829
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lip-error@L831-L874
CONTRACT_ID: bp:p4:lip-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); omega,omega' in Omega_gamma with |omega'-omega|<=lambda_* gamma^2; Delta omega=omega'-omega, Delta I=I_omega'-I_omega, K'=K_omega+(0,i Delta I)
SOURCE_QUANTIFIERS: gamma,eps with (SA); omega,omega'; theta in T_{3s/32}
SOURCE_CONCLUSION: K' holomorphic and primary on T_{s/8}, real on reals, K'-K0_omega'=W_omega (|.|<=eta_0 on T_{s/8}); invariance error |E'(theta)|<=A_1 eps gamma^-2 |Delta omega| on T_{3s/32}
CONSTANT_SCOPE: A_1 depends only on the data (A_1=L_+(H_3A_0+F_2)+32nA_0/s); lambda_* depends only on data; all named constants (c_*, A_0..A_4, lambda_*, L_+, delta_*, mu, M, W_inf, Lambda_g, sigma_K, sigma_B, sigma_T, c_T, eta_*) depend only on the data n,tau,s0,r0,B,h,L_h,C_B (never on f, eps, gamma); eta_0=A_0 eps gamma^-2 depends also on eps,gamma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:normalized-torus, bp:p4:parameters, step:p4:le-basic, step:p4:le-split, step:p4:le-h, step:p4:le-f, step:p4:le-transport, step:p4:le-sum, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L823-L824 | K_omega, W_omega
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L821-L821 | standing assumption (SA), lambda_*, A_1
EDGE: step:p4:le-basic | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L832-L832 | proof step of this result
EDGE: step:p4:le-split | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L838-L838 | proof step of this result
EDGE: step:p4:le-h | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L853-L853 | proof step of this result
EDGE: step:p4:le-f | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L860-L860 | proof step of this result
EDGE: step:p4:le-transport | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L867-L867 | proof step of this result
EDGE: step:p4:le-sum | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L871-L871 | proof step of this result
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L820-L829 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:lip
KIND: theorem
TITLE: LIP
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lip@L876-L882
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lip@L884-L946
CONTRACT_ID: bp:p4:lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA)
SOURCE_QUANTIFIERS: gamma,eps with (SA); all omega,omega' in Omega_gamma; all theta in T_{s/32}
SOURCE_CONCLUSION: |W_omega'(theta)-W_omega(theta)|<=A_3 eps gamma^-4 |omega'-omega|
CONSTANT_SCOPE: A_3 depends only on the data (A_3=max(A_2,2A_0/lambda_*)); all named constants (c_*, A_0..A_4, lambda_*, L_+, delta_*, mu, M, W_inf, Lambda_g, sigma_K, sigma_B, sigma_T, c_T, eta_*) depend only on the data n,tau,s0,r0,B,h,L_h,C_B (never on f, eps, gamma); eta_0=A_0 eps gamma^-2 depends also on eps,gamma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:parameters, bp:p4:normalized-torus, step:p4:lip-far, step:p4:lip-g1, step:p4:lip-g2, step:p4:lip-phase, step:p4:lip-close, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:lip@L877-L877 | standing assumption (SA), A_3
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:lip@L880-L880 | W_omega defined there
EDGE: step:p4:lip-far | blueprint/parts/p4-measure.tex#bp:p4:lip@L885-L885 | proof step of this result
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#bp:p4:lip@L892-L892 | proof step of this result
EDGE: step:p4:lip-g2 | blueprint/parts/p4-measure.tex#bp:p4:lip@L913-L913 | proof step of this result
EDGE: step:p4:lip-phase | blueprint/parts/p4-measure.tex#bp:p4:lip@L929-L929 | proof step of this result
EDGE: step:p4:lip-close | blueprint/parts/p4-measure.tex#bp:p4:lip@L936-L936 | proof step of this result
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:lip@L876-L882 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:lip-g1
KIND: step
TITLE: Re-application of G1 at $\omega'$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-g1@L892-L911
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-g1@L892-L911
CONTRACT_ID: step:p4:lip-g1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); |Delta omega|<=lambda_* gamma^2; K'=K_omega+(0,i Delta I) with error |E'|<=e' on T_{3s/32}
SOURCE_QUANTIFIERS: omega,omega',gamma; G1 applied with second tuple rho=3s/32, rho_inf=s/16, e=e'
SOURCE_CONCLUSION: exists K~ holomorphic on T_{s/16}, primary, real, invariant with frequency omega', B_{mu/2}(K~) in D, |DK~|<=sigma_K-mu/2, |K~-K'|<=d_1=C_2^(2) e'/(gamma^2 (3s/32)^{2tau})
CONSTANT_SCOPE: all named constants (c_*, A_0..A_4, lambda_*, L_+, delta_*, mu, M, W_inf, Lambda_g, sigma_K, sigma_B, sigma_T, c_T, eta_*) depend only on the data n,tau,s0,r0,B,h,L_h,C_B (never on f, eps, gamma); eta_0=A_0 eps gamma^-2 depends also on eps,gamma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:g1, bp:p4:parameters, bp:p4:h1, bp:p4:stab, bp:p4:lip-error, bp:p4:smallness, bp:p4:inverse-freq, step:p4:lip-far, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g1 | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L893-L893 | frozen a-posteriori theorem applied
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L893-L893 | second tuple, constants C_1^(2), C_2^(2)
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L897-L897 | H1 use is L897, not L895
EDGE: bp:p4:stab | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L898-L901 | STAB application is at L898-L901, not L897
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L900-L903 | K' primary, real, close to K0_omega', /E'/<=e'
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L899-L905 | (s3) and (s4)
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L898-L901 | The reference action and frequency bounds are used in the STAB application
EDGE: step:p4:lip-far | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L895-L895 | definition of e' and close-pair assumption
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L892-L911 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:real-torus
KIND: theorem
TITLE: The real tori are KAM tori
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1009-L1021
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1023-L1069
CONTRACT_ID: bp:p4:real-torus
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); omega in Omega_gamma; k_omega real restriction of K_omega
SOURCE_QUANTIFIERS: gamma,eps with (SA); omega in Omega_gamma
SOURCE_CONCLUSION: (i) k_omega invariant Lagrangian torus of H=realHamiltonian h f with frequency omega; (ii) |k_omega(x)_2-I_omega|<r0, I_omega in B; (iii) I_omega in B, g(I_omega)=omega; (iv) |k_omega(x)-(x,I_omega)|<=eta_0; hence k_omega(R^n) in kamCover(eta_0) with witnesses k_omega,omega,gamma,I_omega
CONSTANT_SCOPE: all named constants (c_*, A_0..A_4, lambda_*, L_+, delta_*, mu, M, W_inf, Lambda_g, sigma_K, sigma_B, sigma_T, c_T, eta_*) depend only on the data n,tau,s0,r0,B,h,L_h,C_B (never on f, eps, gamma); eta_0=A_0 eps gamma^-2 depends also on eps,gamma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:normalized-torus, bp:p0:nearlyintegrable#realHamiltonian, bp:p0:nearlyintegrable#frequencyMap, bp:p0:cover#kamCover, step:p4:rt-analytic, step:p4:rt-small, step:p4:rt-immersion, step:p4:rt-embedding, step:p4:rt-lagrangian, step:p4:rt-ode, step:p4:rt-cover, bp:p4:SA, bp:p0:torus#IsInvariantLagrangianTorus
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1010-L1010 | K_omega
EDGE: bp:p0:nearlyintegrable#realHamiltonian | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1013-L1014 | H=realHamiltonian h f
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1016-L1016 | The frequency identity is on L1016, not the cover-membership line L1019
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1020-L1020 | conclusion membership in the cover
EDGE: step:p4:rt-analytic | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1024-L1024 | proof step of this result
EDGE: step:p4:rt-small | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1028-L1028 | proof step of this result
EDGE: step:p4:rt-immersion | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1035-L1035 | proof step of this result
EDGE: step:p4:rt-embedding | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1039-L1039 | proof step of this result
EDGE: step:p4:rt-lagrangian | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1045-L1045 | proof step of this result
EDGE: step:p4:rt-ode | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1052-L1052 | proof step of this result
EDGE: step:p4:rt-cover | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1063-L1063 | proof step of this result
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1009-L1021 | Missing direct dependency on the explicit local package (SA), required by SPEC
EDGE: bp:p0:torus#IsInvariantLagrangianTorus | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1013-L1014 | the conclusion uses the six-clause frozen invariant Lagrangian torus predicate
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:rt-analytic
KIND: step
TITLE: Analyticity and primarity
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1024-L1026
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1024-L1026
CONTRACT_ID: step:p4:rt-analytic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_omega holomorphic and primary on T_{s/8}, real on reals
SOURCE_QUANTIFIERS: omega
SOURCE_CONCLUSION: k_omega is real analytic and primary: k_omega(x+m)=k_omega(x)+(m,0) for every real x and integer m
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:real-restriction, bp:p4:normalize
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1025-L1026 | The restriction lemma is used at L1025, not the heading
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1026-L1026 | K_omega holomorphic, primary, real
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:good-actions
KIND: definition
TITLE: Good actions and the displacement
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1102-L1111
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:good-actions
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA)
SOURCE_QUANTIFIERS: gamma,eps with (SA)
SOURCE_CONCLUSION: defines Z, A_gamma, G_0 on R^n x (A_gamma u Z); G_0(theta,I) is the real restriction of W_{g(I)} on A_gamma
CONSTANT_SCOPE: all named constants (c_*, A_0..A_4, lambda_*, L_+, delta_*, mu, M, W_inf, Lambda_g, sigma_K, sigma_B, sigma_T, c_T, eta_*) depend only on the data n,tau,s0,r0,B,h,L_h,C_B (never on f, eps, gamma); eta_0=A_0 eps gamma^-2 depends also on eps,gamma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:inverse-freq, bp:p4:real-torus, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1109-L1109 | g(I) in Omega_gamma and I_{g(I)}=I
EDGE: bp:p4:real-torus | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1107-L1107 | k_omega, real restriction of K_omega
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1102-L1111 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:map-lipschitz
KIND: lemma
TITLE: The displacement is small and $\tfrac12$-Lipschitz
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1113-L1116
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1118-L1138
CONTRACT_ID: bp:p4:map-lipschitz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA)
SOURCE_QUANTIFIERS: gamma,eps with (SA)
SOURCE_CONCLUSION: A_gamma and Z are disjoint, |G_0|<=eta_0 and G_0 is 1/2-Lipschitz on R^n x (A_gamma u Z) for the max norm
CONSTANT_SCOPE: all named constants (c_*, A_0..A_4, lambda_*, L_+, delta_*, mu, M, W_inf, Lambda_g, sigma_K, sigma_B, sigma_T, c_T, eta_*) depend only on the data n,tau,s0,r0,B,h,L_h,C_B (never on f, eps, gamma); eta_0=A_0 eps gamma^-2 depends also on eps,gamma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:ml-size, step:p4:ml-good, step:p4:ml-mixed, bp:p4:good-actions, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:ml-size | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1119-L1119 | proof step
EDGE: step:p4:ml-good | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1123-L1123 | proof step
EDGE: step:p4:ml-mixed | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1133-L1133 | proof step
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1114-L1114 | G_0, A_gamma, Z
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1113-L1116 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:ml-size
KIND: step
TITLE: Disjointness and size
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-size@L1119-L1121
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-size@L1119-L1121
CONTRACT_ID: step:p4:ml-size
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA)
SOURCE_QUANTIFIERS: I in A_gamma
SOURCE_CONCLUSION: A_gamma cap Z empty; |G_0|<=eta_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:normalize, bp:p4:good-actions, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:ml-size@L1121-L1121 | /W_omega/<=eta_0
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:ml-size@L1120-L1121 | A_gamma, Z, G_0
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:ml-size@L1119-L1121 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:ml-good
KIND: step
TITLE: Two good actions
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-good@L1123-L1131
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-good@L1123-L1131
CONTRACT_ID: step:p4:ml-good
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); real restriction of W_omega has derivative <=16 n eta_0/s
SOURCE_QUANTIFIERS: I,J in A_gamma; theta,theta' in R^n
SOURCE_CONCLUSION: |G_0(theta,I)-G_0(theta',J)|<=(1/4)|(theta,I)-(theta',J)|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:rt-small, bp:p4:lip, bp:p4:freq-map, bp:p4:smallness, bp:p4:good-actions, bp:p4:parameters, bp:p4:SA, bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:rt-small | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1124-L1124 | derivative bound 16 n eta_0/s on R^n
EDGE: bp:p4:lip | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1126-L1126 | Lipschitz dependence on omega
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1126-L1126 | (v): g is Lambda_g-Lipschitz on B
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1129-L1129 | (s6)
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1124-L1129 | G_0, A_gamma
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1125-L1129 | A_4, A_3, Lambda_g definitions
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1123-L1131 | Missing direct dependency on the explicit local package (SA), required by SPEC
EDGE: bp:p1:ext-mvt | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1124-L1129 | The real derivative bound is converted to a difference bound on convex R^n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:main-measure
KIND: theorem
TITLE: Measure of the complement at a given $\gamma$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1140-L1147
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1149-L1184
CONTRACT_ID: bp:p4:main-measure
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); B nonempty; fixed HEAD data (n>=2, tau>n-1, s0,r0>0, B open bounded nonempty, h holomorphic on B_{r0} and real at real points, witnesses L_h, C_B); C_meas=2C_B^++(9/2)^n(2C_B^++L_+^n C_3^+)
SOURCE_QUANTIFIERS: gamma,eps with (SA)
SOURCE_CONCLUSION: meas(F_B minus kamCover(eta_0)) <= C_meas gamma
CONSTANT_SCOPE: C_meas depends only on n, C_B, L_+, C_3 (data); not on f, eps, gamma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:mm-extension, step:p4:mm-tori, step:p4:mm-complement, step:p4:mm-bad, step:p4:mm-count, bp:p0:cover#kamCover, bp:p4:SA, bp:p4:data, bp:p4:preimage-measure
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1150-L1150 | proof step
EDGE: step:p4:mm-tori | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1158-L1158 | proof step
EDGE: step:p4:mm-complement | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1162-L1162 | proof step
EDGE: step:p4:mm-bad | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1171-L1171 | proof step
EDGE: step:p4:mm-count | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1177-L1177 | proof step
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1145-L1145 | cover appearing in the conclusion
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1140-L1147 | Missing direct dependency on the explicit local package (SA), required by SPEC
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1142-L1142 | C_B^+ and L_+ in the definition of C_meas
EDGE: bp:p4:preimage-measure | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1142-L1142 | C_3^+ in C_meas is the G3 constant fixed for g(B) in preimage-measure
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:mm-count
KIND: step
TITLE: Measure count
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-count@L1177-L1183
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-count@L1177-L1183
CONTRACT_ID: step:p4:mm-count
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi 3/2-Lipschitz; bad sets measured
SOURCE_QUANTIFIERS: gamma
SOURCE_CONCLUSION: meas(F_B minus kamCover(eta_0))<=C_meas gamma by subadditivity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:lip-image, step:p4:mm-complement, step:p4:mm-bad, step:p4:mm-extension, bp:p4:good-actions, bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:lip-image | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1179-L1179 | measure of the Lipschitz image Psi(Q x (...))
EDGE: step:p4:mm-complement | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1183 | covering of the complement
EDGE: step:p4:mm-bad | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1181 | measure of Y and of the non-Diophantine set
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1179-L1181 | Psi is 3/2-Lipschitz
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1178 | Z, A_gamma
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1183 | Monotonicity and subadditivity are directly used in the measure count
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L1178-L1181 uses product-volume formulas for the action sets B intersect Z and Z^c minus A_gamma, and measures their products with cubes. E8 gives outer measure by box covers; E6 explicitly gives Fubini for continuous compact-box integrands. No measurable-indicator/product bridge for these sets is supplied here. Expose this use rather than claim E8 proves it.
```

```text
NODE: step:p4:dy-exhaust
KIND: step
TITLE: Dyadic exhaustion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1246-L1252
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1246-L1252
CONTRACT_ID: step:p4:dy-exhaust
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B open bounded; eta>0
SOURCE_QUANTIFIERS: j in N
SOURCE_CONCLUSION: for each j, D_j is the finite collection of generation-j closed dyadic cubes contained in B, and E_j=union D_j is closed; E_j subset E_(j+1), union_j E_j=B, and meas(B minus E_j)<=eta for some j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L1251-L1252 invokes continuity of Lebesgue measure from below for E_j, without a derivation from the E8 box-cover definition or an explicit reduction to E6 dominated convergence. E8 itself states only outer measure, monotonicity and countable subadditivity. This invocation must remain visible under the closed external-input policy.
```

```text
NODE: step:p4:hq-approx
KIND: step
TITLE: Inner approximation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1274-L1275
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1274-L1275
CONTRACT_ID: step:p4:hq-approx
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B nonempty open bounded; kappa>0
SOURCE_QUANTIFIERS: kappa
SOURCE_CONCLUSION: B' subset B open with meas(B minus B')<=(1/2)kappa meas B and boundary-layer constant C_B'
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:dyadic-approx, step:p4:hq-trivial
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:dyadic-approx | blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1275-L1275 | Dyadic approximation is invoked at L1275, not the heading
EDGE: step:p4:hq-trivial | blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1275-L1275 | 0<meas B<infty and kappa fixed
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:hq-transfer
KIND: step
TITLE: Transfer of the perturbation hypotheses
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1287-L1293
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1287-L1293
CONTRACT_ID: step:p4:hq-transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f, eps<=eps_0 satisfy HEAD-Q hypotheses for B
SOURCE_QUANTIFIERS: f,eps
SOURCE_CONCLUSION: hypotheses hold for B'; eps>=0; meas(F_B' minus kamCover_B'(C' sqrt eps))<=C' eps^{1/4}<=(1/2)kappa meas B
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:head, step:p4:hq-head, step:p4:hq-approx, step:p4:hq-trivial
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:head | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1291-L1291 | HEAD conclusion for B'
EDGE: step:p4:hq-head | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1288-L1288 | eps<=eps_0'; C', eps_0
EDGE: step:p4:hq-approx | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1289-L1289 | B' subset B
EDGE: step:p4:hq-trivial | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1290-L1291 | B is nonempty; as in the earlier argument, a point of D(s0,r0) and the original perturbation norm bound give epsilon>=0 directly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The reference "As in Step head-negative" is an analogy to its nonempty-domain argument, not an application requiring the HEAD boundary-layer data. Nonnegativity follows here from the original HEAD-Q domain B, which is nonempty, even if the approximating Bprime is empty.
```

```text
NODE: step:p4:hq-cover
KIND: step
TITLE: Comparison of covers
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1295-L1302
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1295-L1302
CONTRACT_ID: step:p4:hq-cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: C' sqrt(eps)<=kappa; meas bound for F_B'; F_B subset ([0,1)^n x (B minus B')) u F_B'
SOURCE_QUANTIFIERS: f,eps
SOURCE_CONCLUSION: meas(F_B minus kamCover_B(kappa))<=kappa meas B = kappa meas F_B
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:cover-mono, step:p4:hq-transfer, step:p4:hq-approx, step:p4:hq-trivial, step:p4:hq-head, bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:cover-mono | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1296-L1296 | kamCover_B'(C' sqrt eps) subset kamCover_B(kappa)
EDGE: step:p4:hq-transfer | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1298-L1301 | The measure inequality is used at L1301, not the display delimiter L1300
EDGE: step:p4:hq-approx | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1298-L1301 | The approximation error is consumed in the final measure inequality
EDGE: step:p4:hq-trivial | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1301-L1301 | meas F_B = meas B
EDGE: step:p4:hq-head | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1296-L1296 | The chosen epsilon_0 supplies Cprime sqrt(epsilon)<=kappa; transfer only records the measure part
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1298-L1301 | monotonicity and subadditivity apply to the displayed cover of the complement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L1298-L1301 uses meas([0,1)^n x (B minus Bprime))=meas(B minus Bprime). The same product-volume bridge exposed in step:p4:mm-count is not supplied here by E8 (box-cover definition, monotonicity and subadditivity) or E6 (continuous compact-box Fubini). Keep this use visible; no new external or additional hypothesis is introduced.
```

Validation: 43 assigned nodes and 6 assigned coverage items have exactly one row each; 18 failed nodes have complete replacement blocks; replacement DEPS and EDGE target sets match. All five corpus SHA-256 pins match. No Lean, build, source-lint, #print axioms or state-changing git command was run, under DELTA-BRIEF's source-only restrictions. Axioms are not applicable to this graph-only change.

No new pinned-paper erratum is asserted; the retained SOURCE_GAP notes are corpus-input accounting, not independently verified paper errata. No mathematical deviation was introduced.

Input identity snapshot at delta handoff:

```text
1ff6410ee7457ae6b4e9b906f853423a72ee99385e2510cca6a7dc99de15032e  docs/graph/K/SPEC.md
4ea54097cade1bf70b3de9be982538cc751512298de9bb1ce93dffd12b70b7b5  docs/graph/K/packets/K-p4b.nodes.md
a40ac9e112a977026f04da2346764d7e6c4cce5910b2444f3f93460858bdb8a2  docs/graph/K/packets/K-p4b.coverage.md
403dbf9a7ee4cb0eec4d1af63c324903e4113778a3f9e45e8a046854ef37adce  blueprint/parts/p4-measure.tex
```

Report-structure receipt:

```text
K-p4b: 49 of 49 assigned-record rows; 18 complete replacements; required fields and DEPS/EDGE checks PASS.
```
