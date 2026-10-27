# K-p4b: independent topology review

Reviewer: `sol-review-r4` (requested marker `graph-review-r4`).

**Verdict: FAIL.**

All 64 packet nodes and every coverage entry were reviewed against the complete assigned raw source, including unlabelled paragraphs. PASS below is local to that record and does not certify prerequisites or mathematical proof completion. Failures in dependencies do not automatically turn every consumer into a second failure.

The review used the binding SPEC, repository rules, PLAN, DECISIONS, review brief, the identity fields of the 25 track-K manifest entries, the frozen definition contracts and theorem statements, Part 0 conventions and gates, and the relevant Part 1 inputs. No implementation or provider module was consulted. No Lean commands, builds or state-changing git commands were run. Only this report and the other assigned slice report were written.

Input SHA-256:

- `docs/graph/K/SPEC.md`: `191fa7f502ff882869b537f43ccfe76ea381dde4a4a83d9678f5078cc8a35f8f`
- `docs/graph/K/packets/K-p4b.nodes.md`: `035588e1109a6923edc97159e2b72ab64bd4514cd19507280cefcdadc9b3164a`
- `docs/graph/K/packets/K-p4b.coverage.md`: `727b58f1917c5924372a79018e5f5d657b0baa1c02c07ccc8f86f04247dbb865`
- `blueprint/parts/p4-measure.tex`: `403dbf9a7ee4cb0eec4d1af63c324903e4113778a3f9e45e8a046854ef37adce`

Cross-slice source spans re-read: `blueprint/parts/p0-conventions.tex` L11-L164; `blueprint/parts/p1-analysis.tex` L54-L98, L107-L162, L165-L194 (Neumann), L215-L225, L284-L304 (analyticity), L392-L421, L462-L468, L505-L563, L634-L702, L875-L885, L1035-L1078, L1106-L1215. Norms are max/row-sum, Fourier characters have period one, and G1/G2 retain their frozen margins and quantifier order.

| Node ID | Verdict | Part 4 spans re-read (statement; proof) | Reason for FAIL |
|---|---|---|---|
| `bp:p4:phase-average` | PASS | L677-L684; - | — |
| `bp:p4:shift` | PASS | L686-L701; L703-L718 | — |
| `step:p4:shift-translation` | PASS | L704-L709; L704-L709 | — |
| `step:p4:shift-phase` | FAIL | L711-L717; L711-L717 | The bound on the phase uses the integral norm bound on a unit-volume cube |
| `bp:p4:normalized-torus` | FAIL | L720-L726; - | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `bp:p4:normalize` | FAIL | L728-L734; L736-L742 | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `step:p4:normalize-proof` | FAIL | L737-L741; L737-L741 | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `bp:p4:mixed-difference` | FAIL | L800-L806; L808-L818 | Use the actual proof step rather than the bare proof-environment line L808 |
| `step:p4:mixed-proof` | FAIL | L809-L817; L809-L817 | Mean value inequality is applied on the parallelogram segments; Holomorphic regularity is used at L812-L813, not L811 |
| `bp:p4:lip-error` | FAIL | L820-L829; L831-L874 | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `step:p4:le-basic` | FAIL | L832-L836; L832-L836 | Missing direct dependency on the explicit local package (SA), required by SPEC; Holomorphy, primarity, reality and &#124;W_omega&#124;<=eta_0 must be supplied, not inferred from smallness alone; (s3) is consumed at L836, not L835; Definition of lambda_* in the action-shift bound |
| `step:p4:le-split` | PASS | L838-L851; L838-L851 | — |
| `step:p4:le-h` | FAIL | L853-L858; L853-L858 | The mixed-difference lemma is invoked at L857, not L856; P_h from the error decomposition is consumed in the estimate; Parallelogram containment uses the earlier action-shift bound; The estimate uses &#124;v_omega&#124;<=eta_0 |
| `step:p4:le-f` | FAIL | L860-L865; L860-L865 | The increment lemma is invoked at L864, not L863; The DX_f bound is used at L864; The P_f expression is consumed in this increment estimate |
| `step:p4:le-transport` | PASS | L867-L869; L867-L869 | — |
| `step:p4:le-sum` | PASS | L871-L873; L871-L873 | — |
| `bp:p4:lip` | FAIL | L876-L882; L884-L946 | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `step:p4:lip-far` | FAIL | L885-L890; L885-L890 | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `step:p4:lip-g1` | FAIL | L892-L911; L892-L911 | Missing direct dependency on the explicit local package (SA), required by SPEC; H1 use is L897, not L895; STAB application is at L898-L901, not L897; The reference action and frequency bounds are used in the STAB application |
| `step:p4:lip-g2` | FAIL | L913-L927; L913-L927 | Missing direct dependency on the explicit local package (SA), required by SPEC; H1 use is L917, not the itemize delimiter at L916; G1 output properties and closeness are consumed here, not on L914 |
| `step:p4:lip-phase` | FAIL | L929-L934; L929-L934 | The average lemma is invoked at L931; The shifted-torus identity is used in the first formula, not the heading; The bound &#124;phi&#124;<=d_1 uses the integral norm inequality |
| `step:p4:lip-close` | FAIL | L936-L945; L936-L945 | The increment lemma is invoked at L942, not the display delimiter at L941; The phase bound is used in the last inequality at L940; The G1 distance and derivative bounds are used at L940-L944 |
| `bp:p4:lagrangian` | PASS | L961-L966; L973-L1007 | — |
| `step:p4:lag-regular` | FAIL | L974-L978; L974-L978 | DK holomorphy is cited at L977; The periodic boundedness lemma is cited at L978 |
| `step:p4:lag-exact` | FAIL | L980-L988; L980-L988 | The averages application consumes bounded periodic holomorphic factors |
| `step:p4:lag-transport` | PASS | L990-L999; L990-L999 | — |
| `step:p4:lag-unique` | FAIL | L1001-L1006; L1001-L1006 | Cohomological uniqueness is invoked at L1002, not the heading; The transport step is invoked at L1005 |
| `bp:p4:real-torus` | FAIL | L1009-L1021; L1023-L1069 | Missing direct dependency on the explicit local package (SA), required by SPEC; The frequency identity is on L1016, not the cover-membership line L1019 |
| `step:p4:rt-analytic` | FAIL | L1024-L1026; L1024-L1026 | The restriction lemma is used at L1025, not the heading; Primary equivariance is not periodicity of k_omega |
| `step:p4:rt-small` | FAIL | L1028-L1033; L1028-L1033 | The real derivative restriction is used at L1032 |
| `step:p4:rt-immersion` | FAIL | L1035-L1037; L1035-L1037 | The derivative bound is consumed in the lower bound, not the heading |
| `step:p4:rt-embedding` | FAIL | L1039-L1043; L1039-L1043 | The derivative bound is integrated along the real segment on the convex set R^n |
| `step:p4:rt-lagrangian` | FAIL | L1045-L1050; L1045-L1050 | The Lagrangian lemma is applied at L1046; Matrix-form comparison with the real symplectic form occurs at L1049-L1050 |
| `step:p4:rt-ode` | FAIL | L1052-L1061; L1052-L1061 | The quantified x is a vector, not a scalar real |
| `step:p4:rt-cover` | FAIL | L1063-L1068; L1063-L1068 | Inverse-frequency clause (iii) is invoked at L1066; Cover membership requires the already established analytic and primary clauses; Missing direct discharge of the invariant Lagrangian torus premise in the cover application |
| `bp:p4:preimage-measure` | PASS | L1087-L1093; L1095-L1100 | — |
| `step:p4:pm-proof` | FAIL | L1096-L1099; L1096-L1099 | Inverse Lipschitz use is at L1097-L1098, not the heading; The image-measure lemma is invoked at L1099 |
| `bp:p4:good-actions` | FAIL | L1102-L1111; - | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `bp:p4:map-lipschitz` | FAIL | L1113-L1116; L1118-L1138 | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `step:p4:ml-size` | FAIL | L1119-L1121; L1119-L1121 | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `step:p4:ml-good` | FAIL | L1123-L1131; L1123-L1131 | Missing direct dependency on the explicit local package (SA), required by SPEC; The real derivative bound is converted to a difference bound on convex R^n |
| `step:p4:ml-mixed` | FAIL | L1133-L1137; L1133-L1137 | Missing direct dependency on the explicit local package (SA), required by SPEC; Unexposed source input: L1134 invokes the 1-Lipschitz property of infDist(.,B^c) without proof; none of E1-E10 is a distance-to-set theorem. The existing labelled separation step exposes this local missing input; SOURCE_HYPOTHESES must not present it as an extra source assumption.; Distance-to-set regularity is an unpaid proof input, not an additional permitted premise |
| `bp:p4:main-measure` | FAIL | L1140-L1147; L1149-L1184 | Missing direct dependency on the explicit local package (SA), required by SPEC |
| `step:p4:mm-extension` | PASS | L1150-L1156; L1150-L1156 | — |
| `step:p4:mm-tori` | PASS | L1158-L1160; L1158-L1160 | — |
| `step:p4:mm-complement` | PASS | L1162-L1169; L1162-L1169 | — |
| `step:p4:mm-bad` | FAIL | L1171-L1175; L1171-L1175 | The preimage-measure bound is invoked at L1175; The bad-action inclusions and estimates are proved from Z and A_gamma; the preceding complement inclusion is not a prerequisite |
| `step:p4:mm-count` | FAIL | L1177-L1183; L1177-L1183 | Monotonicity and subadditivity are directly used in the measure count; Unexposed source input: L1178-L1181 uses product-volume formulas for the action sets B intersect Z and Z^c minus A_gamma, and measures their products with cubes. E8 gives outer measure by box covers; E6 explicitly gives Fubini for continuous compact-box integrands. No measurable-indicator/product bridge for these sets is supplied here. Expose this use rather than claim E8 proves it. |
| `bp:p4:cover-mono` | PASS | L1186-L1189; L1191-L1198 | — |
| `step:p4:cm-proof` | PASS | L1192-L1197; L1192-L1197 | — |
| `step:p4:head-empty` | FAIL | L1201-L1202; L1201-L1202 | The hypotheses simultaneously say B nonempty and B possibly empty; remove the contradictory added premise; The empty case unfolds F_B |
| `step:p4:head-constants` | PASS | L1204-L1212; L1204-L1212 | — |
| `step:p4:head-negative` | FAIL | L1214-L1216; L1214-L1216 | The nonempty domain and the perturbation bound from the fixed data supply epsilon>=0 |
| `step:p4:head-positive` | PASS | L1218-L1224; L1218-L1224 | — |
| `step:p4:head-zero` | PASS | L1226-L1229; L1226-L1229 | — |
| `bp:p4:dyadic-approx` | PASS | L1239-L1243; L1245-L1266 | — |
| `step:p4:dy-exhaust` | FAIL | L1246-L1252; L1246-L1252 | Unexposed source input: L1251-L1252 invokes continuity of Lebesgue measure from below for E_j, without a derivation from the E8 box-cover definition or an explicit reduction to E6 dominated convergence. E8 itself states only outer measure, monotonicity and countable subadditivity. This invocation must remain visible under the closed external-input policy. |
| `step:p4:dy-open` | FAIL | L1254-L1257; L1254-L1257 | Unexposed source input: L1256-L1257 uses that the finite union of cube boundaries is null, without a box-cover estimate in the corpus or an E1-E10 statement of this result. Retain the claimed approximation but expose this missing measure input. |
| `step:p4:dy-layer` | PASS | L1259-L1265; L1259-L1265 | — |
| `step:p4:hq-trivial` | PASS | L1269-L1272; L1269-L1272 | — |
| `step:p4:hq-approx` | FAIL | L1274-L1275; L1274-L1275 | Dyadic approximation is invoked at L1275, not the heading |
| `step:p4:hq-head` | PASS | L1277-L1285; L1277-L1285 | — |
| `step:p4:hq-transfer` | FAIL | L1287-L1293; L1287-L1293 | Nonnegative epsilon is invoked at L1291 |
| `step:p4:hq-cover` | FAIL | L1295-L1302; L1295-L1302 | The measure inequality is used at L1301, not the display delimiter L1300; The approximation error is consumed in the final measure inequality; The chosen epsilon_0 supplies Cprime sqrt(epsilon)<=kappa; transfer only records the measure part |

Coverage findings:

| Coverage item | Verdict | Source span | Reason |
|---|---|---|---|
| `p4:sourcegap-L792` | FAIL | L792-L798 | Source range includes only the opening line of a multi-line source-gap annotation. |
| `p4:sourcegap-L970` | FAIL | L970-L971 | Source range includes only the opening line of a multi-line source-gap annotation. |
| `p4:source-L674` | FAIL | L674-L675 | Citation range includes only the opening line; record the complete provenance annotation. |
| `p4:source-L790` | FAIL | L790-L791 | Citation range includes only the opening line; record the complete provenance annotation. |
| `p4:source-L968` | FAIL | L968-L969 | Citation range includes only the opening line; record the complete provenance annotation. |
| `p4:source-L1083` | FAIL | L1083-L1085 | Citation range includes only the opening line; record the complete provenance annotation. |

all other coverage items PASS. A correct mapping to a node is a coverage PASS even if the mapped node needs a topology or source-contract correction. Excluding the unused normalized-uniqueness corollary and its two proof steps in K-p4b is valid under the root-reachability policy; its raw proof was nevertheless re-read at L744-L777.

The new SA node belongs to K-p4a. The K-p4b review replacements refer to that node, so these findings must be adjudicated together. SA remains a local package; no global assumption leaf is introduced. The far/close pair split is a case split requiring both cases, not alternative proof routes. The mixed-difference proof is self-contained and needs no edge to its Part 1 template.

Replacement fragments follow. Each existing-node block replaces that whole packet record; new nodes/items are additions. These are review proposals only. They preserve ordinary Lean initialization and do not amend any frozen declaration or manifest identity.

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
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L711-L711 | u_K, ph(K) defined there
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L715-L715 | K0_{I*} and u_{K0}=0
EDGE: bp:p1:ext-integral | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L714-L717 | The bound on the phase uses the integral norm bound on a unit-volume cube
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
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
DEPS: bp:p4:apply, bp:p4:phase-average, bp:p4:inverse-freq, bp:p4:parameters, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:apply | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L721-L721 | K^inf_omega is a torus given by APPLY
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L723-L723 | ph and the shift K^[a] defined there
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L724-L724 | K0_omega=K0_{I_omega}, I_omega
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L721-L721 | standing assumption (SA) and Omega_gamma
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L720-L726 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:normalize
KIND: lemma
TITLE: Properties of $K_\omega$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:normalize@L728-L734
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:normalize@L736-L742
CONTRACT_ID: bp:p4:normalize
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing assumption (SA) 0<gamma<=1 and 0<=eps<=c_* gamma^4 (display bp:p4:SA); omega in Omega_gamma
SOURCE_QUANTIFIERS: gamma,eps with (SA); omega in Omega_gamma; theta in T_{s/8}
SOURCE_CONCLUSION: K_omega holomorphic and primary on T_{s/8}, real on reals, invariant with frequency omega on T_{s/8}, normalized (avg u_omega=0), B_{mu/2}(K_omega(theta)) in D, |DK_omega|<=sigma_K-mu/2, |W_omega|<=eta_0
CONSTANT_SCOPE: all named constants (c_*, A_0..A_4, lambda_*, L_+, delta_*, mu, M, W_inf, Lambda_g, sigma_K, sigma_B, sigma_T, c_T, eta_*) depend only on the data n,tau,s0,r0,B,h,L_h,C_B (never on f, eps, gamma); eta_0=A_0 eps gamma^-2 depends also on eps,gamma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:normalized-torus, bp:p4:parameters, step:p4:normalize-proof, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:normalize@L729-L729 | K_omega, W_omega defined there
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:normalize@L729-L729 | standing assumption (SA), sigma_K, mu, eta_0
EDGE: step:p4:normalize-proof | blueprint/parts/p4-measure.tex#bp:p4:normalize@L737-L737 | proof step of this result
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:normalize@L728-L734 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
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
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L737-L737 | K_omega=(K^inf)^[-ph]
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L737-L741 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: bp:p4:mixed-difference
KIND: corollary
TITLE: Mixed second differences
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:mixed-difference@L800-L806
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:mixed-difference@L808-L818
CONTRACT_ID: bp:p4:mixed-difference
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U in C^n open; F:U->C^n holomorphic; a,v,w in C^n with a+tv+t'w in U for t,t' in [0,1]; |D^2F|<=Q at these points
SOURCE_QUANTIFIERS: U,F,a,v,w,Q
SOURCE_CONCLUSION: |F(a+v+w)-F(a+v)-F(a+w)+F(a)|<=Q|v||w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:mixed-proof
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:mixed-proof | blueprint/parts/p4-measure.tex#bp:p4:mixed-difference@L809-L817 | Use the actual proof step rather than the bare proof-environment line L808
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:mixed-proof
KIND: step
TITLE: Two mean value inequalities
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L809-L817
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L809-L817
CONTRACT_ID: step:p4:mixed-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F holomorphic on U; parallelogram {a+tv+t'w} in U; |D^2F|<=Q there
SOURCE_QUANTIFIERS: U,F,a,v,w,Q
SOURCE_CONCLUSION: the mixed second difference bound Q|v||w| via two mean value inequalities
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-mvt, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-mvt | blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L810-L817 | Mean value inequality is applied on the parallelogram segments
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L812-L813 | Holomorphic regularity is used at L812-L813, not L811
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: L809-810 references Lemma bp:p1:mixed-difference only as the model of the argument; the proof here is self-contained, so no edge.
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
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L821-L821 | K_omega, W_omega
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L821-L821 | standing assumption (SA), lambda_*, A_1
EDGE: step:p4:le-basic | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L832-L832 | proof step of this result
EDGE: step:p4:le-split | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L838-L838 | proof step of this result
EDGE: step:p4:le-h | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L853-L853 | proof step of this result
EDGE: step:p4:le-f | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L860-L860 | proof step of this result
EDGE: step:p4:le-transport | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L867-L867 | proof step of this result
EDGE: step:p4:le-sum | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L871-L871 | proof step of this result
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:lip-error@L820-L829 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:le-basic
KIND: step
TITLE: Elementary properties
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-basic@L832-L836
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-basic@L832-L836
CONTRACT_ID: step:p4:le-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); omega,omega' close; K'=K_omega+(0,i Delta I)
SOURCE_QUANTIFIERS: omega,omega',gamma,eps
SOURCE_CONCLUSION: K' holomorphic, primary, real; K0_omega'=K0_omega+(0,i Delta I); |Delta I|<=L_+ |Delta omega|<=delta_*/4; |W_omega|+|Delta I|<=3 delta_*/4
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:inverse-freq, bp:p4:smallness, bp:p4:parameters, bp:p4:SA, bp:p4:normalize
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:le-basic@L834-L834 | /Delta I/<=L_+/Delta omega/
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:le-basic@L835-L836 | (s3) is consumed at L836, not L835
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:le-basic@L834-L835 | Definition of lambda_* in the action-shift bound
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:le-basic@L832-L836 | Missing direct dependency on the explicit local package (SA), required by SPEC
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:le-basic@L833-L836 | Holomorphy, primarity, reality and |W_omega|<=eta_0 must be supplied, not inferred from smallness alone
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:le-h
KIND: step
TITLE: The integrable part: a mixed difference
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-h@L853-L858
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-h@L853-L858
CONTRACT_ID: step:p4:le-h
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |W_omega|+|Delta I|<=3delta_*/4; points a+tv+t' i Delta I in B_{r0/2}
SOURCE_QUANTIFIERS: theta in T_{3s/32}; t,t' in [0,1]
SOURCE_CONCLUSION: |P_h|<=H_3 eta_0 L_+ |Delta omega|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:derivative-bounds, bp:p4:mixed-difference, step:p4:le-split, step:p4:le-basic, bp:p4:normalize
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:le-h@L855-L855 | (b): /D^3 h/<=H_3
EDGE: bp:p4:mixed-difference | blueprint/parts/p4-measure.tex#step:p4:le-h@L854-L858 | The mixed-difference lemma is invoked at L857, not L856
EDGE: step:p4:le-split | blueprint/parts/p4-measure.tex#step:p4:le-h@L854-L858 | P_h from the error decomposition is consumed in the estimate
EDGE: step:p4:le-basic | blueprint/parts/p4-measure.tex#step:p4:le-h@L854-L858 | Parallelogram containment uses the earlier action-shift bound
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:le-h@L854-L858 | The estimate uses |v_omega|<=eta_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:le-f
KIND: step
TITLE: The perturbation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-f@L860-L865
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-f@L860-L865
CONTRACT_ID: step:p4:le-f
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: segment from K_omega(theta) to K'(theta) stays within 3delta_*/4 of K0_omega(theta); |DX_f|<=F_2 eps on D
SOURCE_QUANTIFIERS: theta in T_{3s/32}
SOURCE_CONCLUSION: |P_f|<=F_2 eps |Delta I|<=F_2 eps L_+ |Delta omega|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:unperturbed, bp:p1:increments-open, bp:p4:derivative-bounds, step:p4:le-split, step:p4:le-basic
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:le-f@L862-L862 | (g): ball B_{delta_*}(K0_omega(theta)) in D
EDGE: bp:p1:increments-open | blueprint/parts/p4-measure.tex#step:p4:le-f@L861-L865 | The increment lemma is invoked at L864, not L863
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:le-f@L863-L865 | The DX_f bound is used at L864
EDGE: step:p4:le-split | blueprint/parts/p4-measure.tex#step:p4:le-f@L861-L865 | The P_f expression is consumed in this increment estimate
EDGE: step:p4:le-basic | blueprint/parts/p4-measure.tex#step:p4:le-f@L861-L861 | 3delta_*/4 bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
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
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:lip@L878-L878 | W_omega defined there
EDGE: step:p4:lip-far | blueprint/parts/p4-measure.tex#bp:p4:lip@L885-L885 | proof step of this result
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#bp:p4:lip@L892-L892 | proof step of this result
EDGE: step:p4:lip-g2 | blueprint/parts/p4-measure.tex#bp:p4:lip@L913-L913 | proof step of this result
EDGE: step:p4:lip-phase | blueprint/parts/p4-measure.tex#bp:p4:lip@L929-L929 | proof step of this result
EDGE: step:p4:lip-close | blueprint/parts/p4-measure.tex#bp:p4:lip@L936-L936 | proof step of this result
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:lip@L876-L882 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:lip-far
KIND: step
TITLE: Far pairs
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-far@L885-L890
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-far@L885-L890
CONTRACT_ID: step:p4:lip-far
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); omega,omega' in Omega_gamma
SOURCE_QUANTIFIERS: omega,omega'
SOURCE_CONCLUSION: if |Delta omega|>lambda_* gamma^2 then |W_omega'-W_omega|<=(2A_0/lambda_*) eps gamma^-4 |Delta omega|; otherwise set e'=A_1 eps gamma^-2|Delta omega|<=A_1 lambda_* eps
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:normalize, bp:p4:lip-error, bp:p4:parameters, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:lip-far@L886-L886 | /W_omega/<=eta_0
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-far@L888-L888 | K',E' for close pairs
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:lip-far@L887-L887 | lambda_*, A_0, A_1
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:lip-far@L885-L890 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
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
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L898-L898 | K' primary, real, close to K0_omega', /E'/<=e'
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L898-L898 | (s3) and (s4)
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L898-L901 | The reference action and frequency bounds are used in the STAB application
EDGE: step:p4:lip-far | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L892-L892 | definition of e' and close-pair assumption
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L892-L911 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:lip-g2
KIND: step
TITLE: Local uniqueness at $\omega'$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-g2@L913-L927
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-g2@L913-L927
CONTRACT_ID: step:p4:lip-g2
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); K~ from the G1 step; K_omega' normalized
SOURCE_QUANTIFIERS: omega',gamma; G2 applied with rho=s/16, K_1=K_omega', K_2=K~
SOURCE_CONCLUSION: exists phi in R^n with K~(theta)=K_omega'(theta+i phi) for theta in T_{s/32}
CONSTANT_SCOPE: all named constants (c_*, A_0..A_4, lambda_*, L_+, delta_*, mu, M, W_inf, Lambda_g, sigma_K, sigma_B, sigma_T, c_T, eta_*) depend only on the data n,tau,s0,r0,B,h,L_h,C_B (never on f, eps, gamma); eta_0=A_0 eps gamma^-2 depends also on eps,gamma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:g2, bp:p4:parameters, bp:p4:h1, bp:p4:stab, bp:p4:normalize, bp:p4:smallness, step:p4:lip-g1, bp:p4:lip-error, bp:p4:inverse-freq, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g2 | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L914-L914 | frozen local uniqueness theorem applied
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L914-L914 | tuple and c_G
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L917-L917 | H1 use is L917, not the itemize delimiter at L916
EDGE: bp:p4:stab | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L918-L918 | H2-H4 for K_omega' on T_{s/16}
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L920-L920 | K_omega' primary, real, E_1=0, Diophantine
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L919-L919 | (s3), (s5) closeness
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L921-L924 | G1 output properties and closeness are consumed here, not on L914
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L924-L924 | K'-K0_omega'=W_omega, /K0_omega'-K'/ closeness
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L918-L918 | I_omega' in B
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L913-L927 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:lip-phase
KIND: step
TITLE: The phase is controlled by normalization
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-phase@L929-L934
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-phase@L929-L934
CONTRACT_ID: step:p4:lip-phase
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K~=K_omega'(.+i phi) on real points; ph(K_omega')=ph(K_omega)=0; angle components of K' and K_omega coincide
SOURCE_QUANTIFIERS: phi in R^n
SOURCE_CONCLUSION: ph(K~)=phi and |phi|<=d_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:periodic-average, step:p4:lip-g2, bp:p4:normalize, bp:p4:phase-average, step:p4:lip-g1, bp:p4:lip-error, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:periodic-average | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L930-L934 | The average lemma is invoked at L931
EDGE: step:p4:lip-g2 | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L930-L930 | The shifted-torus identity is used in the first formula, not the heading
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L931-L931 | ph(K_omega')=ph(K_omega)=0
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L930-L930 | u_K, ph
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L933-L933 | /K~-K'/<=d_1
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L932-L932 | K' and K_omega share angle component
EDGE: bp:p1:ext-integral | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L933-L934 | The bound |phi|<=d_1 uses the integral norm inequality
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:lip-close
KIND: step
TITLE: Conclusion for close pairs
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-close@L936-L945
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lip-close@L936-L945
CONTRACT_ID: step:p4:lip-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K~(theta)=K_omega'(theta+i phi); |phi|<=d_1; |DK~|<=sigma_K on T_{s/16}
SOURCE_QUANTIFIERS: theta in T_{s/32}
SOURCE_CONCLUSION: |W_omega'(theta)-W_omega(theta)|<=(sigma_K+1)d_1=A_2 eps gamma^-4|Delta omega|<=A_3 eps gamma^-4|Delta omega|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:increments, step:p4:lip-phase, step:p4:lip-g1, step:p4:lip-g2, bp:p4:lip-error, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:increments | blueprint/parts/p4-measure.tex#step:p4:lip-close@L940-L944 | The increment lemma is invoked at L942, not the display delimiter at L941
EDGE: step:p4:lip-phase | blueprint/parts/p4-measure.tex#step:p4:lip-close@L940-L940 | The phase bound is used in the last inequality at L940
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#step:p4:lip-close@L940-L944 | The G1 distance and derivative bounds are used at L940-L944
EDGE: step:p4:lip-g2 | blueprint/parts/p4-measure.tex#step:p4:lip-close@L937-L937 | K_omega'(theta)=K~(theta-i phi)
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-close@L938-L938 | W_omega'-W_omega=K_omega'-K'
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:lip-close@L944-L944 | A_2, A_3 definitions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:lag-regular
KIND: step
TITLE: Regularity and periodicity
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-regular@L974-L978
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-regular@L974-L978
CONTRACT_ID: step:p4:lag-regular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K=(theta+u,v) primary on T_rho, DK bounded, K holomorphic
SOURCE_QUANTIFIERS: rho
SOURCE_CONCLUSION: DK periodic and holomorphic; Lambda holomorphic, periodic, bounded on T_rho; u,v,Du bounded on T_{rho/2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:periodic-bounded
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:lag-regular@L975-L978 | DK holomorphy is cited at L977
EDGE: bp:p1:periodic-bounded | blueprint/parts/p4-measure.tex#step:p4:lag-regular@L977-L978 | The periodic boundedness lemma is cited at L978
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:lag-exact
KIND: step
TITLE: $\Lambda$ is a sum of derivatives
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-exact@L980-L988
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-exact@L980-L988
CONTRACT_ID: step:p4:lag-exact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lambda holomorphic, periodic, bounded on T_rho; u,v,Du bounded on T_{rho/2}
SOURCE_QUANTIFIERS: rho
SOURCE_CONCLUSION: avg Lambda=0: each entry is a sum of partial derivatives of bounded periodic holomorphic functions
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:matrix-norms, bp:p1:averages, step:p4:lag-regular
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:lag-exact@L981-L981 | (iv): Lambda_ij formula
EDGE: bp:p1:averages | blueprint/parts/p4-measure.tex#step:p4:lag-exact@L987-L987 | average of a derivative of a periodic holomorphic function is 0
EDGE: step:p4:lag-regular | blueprint/parts/p4-measure.tex#step:p4:lag-exact@L987-L988 | The averages application consumes bounded periodic holomorphic factors
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:lag-unique
KIND: step
TITLE: Uniqueness for the cohomological equation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1001-L1006
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1001-L1006
CONTRACT_ID: step:p4:lag-unique
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: avg Lambda=0 and partial_omega Lambda=0 on T_{rho/2}; omega in Dio_{gamma,tau}
SOURCE_QUANTIFIERS: rho,gamma,omega; entries i,j
SOURCE_CONCLUSION: Lambda=0 on T_{rho/4}, hence on T_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological, step:p4:lag-exact, step:p4:lag-transport, bp:p1:strip-identity, step:p4:lag-regular
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1002-L1005 | Cohomological uniqueness is invoked at L1002, not the heading
EDGE: step:p4:lag-exact | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1004-L1004 | avg Lambda_ij=0
EDGE: step:p4:lag-transport | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1004-L1005 | The transport step is invoked at L1005
EDGE: bp:p1:strip-identity | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1006-L1006 | extension from T_{rho/4} to T_rho
EDGE: step:p4:lag-regular | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1003-L1003 | Lambda holomorphic periodic
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
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
DEPS: bp:p4:parameters, bp:p4:normalized-torus, bp:p0:nearlyintegrable#realHamiltonian, bp:p0:nearlyintegrable#frequencyMap, bp:p0:cover#kamCover, step:p4:rt-analytic, step:p4:rt-small, step:p4:rt-immersion, step:p4:rt-embedding, step:p4:rt-lagrangian, step:p4:rt-ode, step:p4:rt-cover, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1010-L1010 | standing assumption (SA)
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1010-L1010 | K_omega
EDGE: bp:p0:nearlyintegrable#realHamiltonian | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1014-L1014 | H=realHamiltonian h f
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
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
DEPS: bp:p1:real-restriction, bp:p1:holomorphic-analytic, bp:p4:normalize
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1025-L1026 | The restriction lemma is used at L1025, not the heading
EDGE: bp:p1:holomorphic-analytic | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1025-L1025 | holomorphic implies analytic
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1026-L1026 | K_omega holomorphic, primary, real
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:rt-small
KIND: step
TITLE: Small angle displacement
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-small@L1028-L1033
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-small@L1028-L1033
CONTRACT_ID: step:p4:rt-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: W_omega holomorphic on T_{s/8}, |W_omega|<=eta_0
SOURCE_QUANTIFIERS: omega
SOURCE_CONCLUSION: |DW_omega|<=16 n eta_0/s<=1/2 on T_{s/16}; |D u~(x)|<=1/2 for real x; u~ Z^n-periodic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip, bp:p1:real-restriction, bp:p4:smallness, bp:p4:normalize
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p4-measure.tex#step:p4:rt-small@L1030-L1030 | Cauchy estimate with loss s/16
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-small@L1031-L1033 | The real derivative restriction is used at L1032
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:rt-small@L1031-L1031 | (s3): 16 n eta_0/s<=1/2
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-small@L1029-L1029 | W_omega bounded and holomorphic
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:rt-immersion
KIND: step
TITLE: Immersion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-immersion@L1035-L1037
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-immersion@L1035-L1037
CONTRACT_ID: step:p4:rt-immersion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |D u~|<=1/2 on R^n
SOURCE_QUANTIFIERS: x,v
SOURCE_CONCLUSION: Dk_omega(x) is injective
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:rt-small
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:rt-small | blueprint/parts/p4-measure.tex#step:p4:rt-immersion@L1036-L1037 | The derivative bound is consumed in the lower bound, not the heading
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:rt-embedding
KIND: step
TITLE: Embedding modulo $\Z^n$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-embedding@L1039-L1043
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-embedding@L1039-L1043
CONTRACT_ID: step:p4:rt-embedding
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |D u~|<=1/2 on R^n; u~ Z^n-periodic
SOURCE_QUANTIFIERS: x,x' in R^n, m in Z^n
SOURCE_CONCLUSION: k_omega(x')=k_omega(x)+(m,0) implies x'=x+m
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:rt-small, bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:rt-small | blueprint/parts/p4-measure.tex#step:p4:rt-embedding@L1041-L1041 | /D u~/<=1/2 and periodicity of u~
EDGE: bp:p1:ext-mvt | blueprint/parts/p4-measure.tex#step:p4:rt-embedding@L1041-L1043 | The derivative bound is integrated along the real segment on the convex set R^n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:rt-lagrangian
KIND: step
TITLE: Lagrangian
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1045-L1050
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1045-L1050
CONTRACT_ID: step:p4:rt-lagrangian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma lagrangian hypotheses for K_omega on T_{s/8}
SOURCE_QUANTIFIERS: x,u,v in R^n
SOURCE_CONCLUSION: symplecticForm(Dk_omega(x)u,Dk_omega(x)v)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:lagrangian, bp:p4:normalize, bp:p4:matrix-norms, bp:p1:real-restriction, bp:p4:smallness
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:lagrangian | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1046-L1050 | The Lagrangian lemma is applied at L1046
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1046-L1046 | K_omega properties
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1049-L1050 | Matrix-form comparison with the real symplectic form occurs at L1049-L1050
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1049-L1049 | derivative of real restriction
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1048-L1048 | (s1): eps<=1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:rt-ode
KIND: step
TITLE: Hamilton's equations
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1052-L1061
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1052-L1061
CONTRACT_ID: step:p4:rt-ode
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_omega invariant on T_{s/8}; pfh holomorphic on D and real at real points
SOURCE_QUANTIFIERS: x in R^n, t in R; y=x+t omega
SOURCE_CONCLUSION: d/dt' k_omega(x+t' omega)=X_H(k_omega(y)), clause (vi) of Definition torus
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:hamiltonian-real, bp:p4:h1, bp:p0:nearlyintegrable#realHamiltonian, bp:p1:real-restriction, bp:p0:torus#IsInvariantLagrangianTorus, bp:p4:normalize, bp:p4:smallness
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:hamiltonian-real | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1054-L1054 | real and complex Hamiltonian fields agree at real points
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1055-L1055 | pfh holomorphic on D and real
EDGE: bp:p0:nearlyintegrable#realHamiltonian | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1056-L1056 | H=Re pfh o iota at real points
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1060-L1060 | derivative of real restriction
EDGE: bp:p0:torus#IsInvariantLagrangianTorus | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1061-L1061 | clause (vi) of the torus definition
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1058-L1058 | invariance at i y in T_{s/8}, K_omega(iy) in D
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1055-L1055 | (s1) for H1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:rt-cover
KIND: step
TITLE: Cover clauses
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1063-L1068
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1063-L1068
CONTRACT_ID: step:p4:rt-cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |W_omega|<=eta_0 on T_{s/8}; eta_0<=mu<r0
SOURCE_QUANTIFIERS: x in R^n
SOURCE_CONCLUSION: clauses (ii),(iii),(iv) and all clauses of Definition cover with radius eta_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:normalize, bp:p4:inverse-freq, bp:p0:cover#kamCover, bp:p4:smallness, step:p4:rt-analytic, step:p4:rt-immersion, step:p4:rt-embedding, step:p4:rt-lagrangian, step:p4:rt-ode
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1064-L1064 | /W_omega/<=eta_0
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1066-L1066 | Inverse-frequency clause (iii) is invoked at L1066
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1067-L1067 | clauses of the cover definition
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1065-L1065 | (s3): eta_0<=mu<r0
EDGE: step:p4:rt-analytic | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1066-L1068 | Cover membership requires the already established analytic and primary clauses
EDGE: step:p4:rt-immersion | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1066-L1068 | Missing direct discharge of the invariant Lagrangian torus premise in the cover application
EDGE: step:p4:rt-embedding | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1066-L1068 | Missing direct discharge of the invariant Lagrangian torus premise in the cover application
EDGE: step:p4:rt-lagrangian | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1066-L1068 | Missing direct discharge of the invariant Lagrangian torus premise in the cover application
EDGE: step:p4:rt-ode | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1066-L1068 | Missing direct discharge of the invariant Lagrangian torus premise in the cover application
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:pm-proof
KIND: step
TITLE: Image under the inverse frequency map
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1096-L1099
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1096-L1099
CONTRACT_ID: step:p4:pm-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g inverse is L_+-Lipschitz on g(bar B); G3 bound for {omega in g(B) not in Dio_{alpha,tau}}
SOURCE_QUANTIFIERS: alpha>0
SOURCE_CONCLUSION: the action set has measure <=L_+^n C_3^+ alpha
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:inverse-freq, bp:p1:lip-image, bp:p0:g3
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1097-L1098 | Inverse Lipschitz use is at L1097-L1098, not the heading
EDGE: bp:p1:lip-image | blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1099-L1099 | The image-measure lemma is invoked at L1099
EDGE: bp:p0:g3 | blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1099-L1099 | measure of non-Diophantine frequencies
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
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
DEPS: bp:p4:inverse-freq, bp:p4:real-torus, bp:p4:parameters, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1109-L1109 | g(I) in Omega_gamma and I_{g(I)}=I
EDGE: bp:p4:real-torus | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1107-L1107 | k_omega, real restriction of K_omega
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1103-L1103 | standing assumption (SA), Omega_gamma
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1102-L1111 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
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
DEPS: step:p4:ml-size, step:p4:ml-good, step:p4:ml-mixed, bp:p4:good-actions, bp:p4:parameters, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:ml-size | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1119-L1119 | proof step
EDGE: step:p4:ml-good | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1123-L1123 | proof step
EDGE: step:p4:ml-mixed | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1133-L1133 | proof step
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1114-L1114 | G_0, A_gamma, Z
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1114-L1114 | standing assumption (SA)
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1113-L1116 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
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
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:ml-size@L1119-L1119 | A_gamma, Z, G_0
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:ml-size@L1119-L1121 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
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
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1123-L1123 | G_0, A_gamma
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1124-L1124 | A_4, A_3, Lambda_g definitions
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1123-L1131 | Missing direct dependency on the explicit local package (SA), required by SPEC
EDGE: bp:p1:ext-mvt | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1124-L1129 | The real derivative bound is converted to a difference bound on convex R^n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:ml-mixed
KIND: step
TITLE: A good action and a boundary action
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1137
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1137
CONTRACT_ID: step:p4:ml-mixed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); I in A_gamma, J in Z; theta,theta_prime in R^n; G_0 as defined in good-actions
SOURCE_QUANTIFIERS: I in A_gamma, J in Z
SOURCE_CONCLUSION: |G_0(theta,I)-G_0(theta',J)|<=(1/2)|(theta,I)-(theta',J)|; two boundary actions give 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:smallness, step:p4:ml-size, bp:p4:good-actions, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1135-L1135 | (s7): eta_0<=gamma/2
EDGE: step:p4:ml-size | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1135-L1135 | /G_0/<=eta_0
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1134-L1134 | A_gamma, Z, G_0
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1137 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L1134 invokes the 1-Lipschitz property of infDist(.,B^c) without proof; none of E1-E10 is a distance-to-set theorem. The existing labelled separation step exposes this local missing input; SOURCE_HYPOTHESES must not present it as an extra source assumption.
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
DEPS: step:p4:mm-extension, step:p4:mm-tori, step:p4:mm-complement, step:p4:mm-bad, step:p4:mm-count, bp:p4:parameters, bp:p0:cover#kamCover, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1150-L1150 | proof step
EDGE: step:p4:mm-tori | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1158-L1158 | proof step
EDGE: step:p4:mm-complement | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1162-L1162 | proof step
EDGE: step:p4:mm-bad | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1171-L1171 | proof step
EDGE: step:p4:mm-count | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1177-L1177 | proof step
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1141-L1141 | standing assumption (SA)
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1145-L1145 | cover appearing in the conclusion
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1140-L1147 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:mm-bad
KIND: step
TITLE: Bad actions
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1171-L1175
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1171-L1175
CONTRACT_ID: step:p4:mm-bad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: boundary-layer hypothesis meas{I in B: infDist(I,B^c)<delta}<=C_B delta for all delta>0 (HEAD hypothesis, witness C_B)
SOURCE_QUANTIFIERS: gamma
SOURCE_CONCLUSION: Z^c in B, B cap Z in Y, Z^c minus A_gamma in Y u {g not Dio}; meas Y<=2C_B^+ gamma and meas{I in B: g(I) not in Dio_{gamma,tau}}<=L_+^n C_3^+ gamma
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:preimage-measure, bp:p4:good-actions
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:preimage-measure | blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1174-L1175 | The preimage-measure bound is invoked at L1175
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1172-L1172 | A_gamma, Z
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
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
EDGE: step:p4:mm-complement | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1177-L1177 | covering of the complement
EDGE: step:p4:mm-bad | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1182-L1182 | measure of Y and of the non-Diophantine set
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1180-L1180 | Psi is 3/2-Lipschitz
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1178 | Z, A_gamma
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1183 | Monotonicity and subadditivity are directly used in the measure count
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L1178-L1181 uses product-volume formulas for the action sets B intersect Z and Z^c minus A_gamma, and measures their products with cubes. E8 gives outer measure by box covers; E6 explicitly gives Fubini for continuous compact-box integrands. No measurable-indicator/product bridge for these sets is supplied here. Expose this use rather than claim E8 proves it.
```

```text
NODE: step:p4:head-empty
KIND: step
TITLE: Empty action domain
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-empty@L1201-L1202
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-empty@L1201-L1202
CONTRACT_ID: step:p4:head-empty
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: HEAD data, allowing B empty: n>=2, tau>n-1, s0,r0>0, B open bounded, boundary-layer witness C_B, h holomorphic and real on B_{r0}, inverse-frequency witness L_h on closure B
SOURCE_QUANTIFIERS: B
SOURCE_CONCLUSION: if B empty then F_B empty and C=eps_0=1 work; otherwise continue with B nonempty
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:domains#fundamentalDomain
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:domains#fundamentalDomain | blueprint/parts/p4-measure.tex#step:p4:head-empty@L1202-L1202 | The empty case unfolds F_B
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
NODE: step:p4:head-negative
KIND: step
TITLE: Negative $\varepsilon$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-negative@L1214-L1216
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-negative@L1214-L1216
CONTRACT_ID: step:p4:head-negative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B nonempty, so D(s0,r0) nonempty; |f|<=eps on D(s0,r0)
SOURCE_QUANTIFIERS: eps
SOURCE_CONCLUSION: eps>=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:head-negative@L1215-L1216 | The nonempty domain and the perturbation bound from the fixed data supply epsilon>=0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
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
SOURCE_CONCLUSION: closed dyadic cubes E_j in B, increasing, union = B, and meas(B minus E_j)<=eta for some j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L1251-L1252 invokes continuity of Lebesgue measure from below for E_j, without a derivation from the E8 box-cover definition or an explicit reduction to E6 dominated convergence. E8 itself states only outer measure, monotonicity and countable subadditivity. This invocation must remain visible under the closed external-input policy.
```

```text
NODE: step:p4:dy-open
KIND: step
TITLE: The open set
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-open@L1254-L1257
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-open@L1254-L1257
CONTRACT_ID: step:p4:dy-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E_j from dyadic exhaustion with meas(B minus E_j)<=eta
SOURCE_QUANTIFIERS: j
SOURCE_CONCLUSION: B'=union of interiors of the N cubes of D_j is open, B' in B, meas(B minus B')<=eta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:dy-exhaust
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:dy-exhaust | blueprint/parts/p4-measure.tex#step:p4:dy-open@L1255-L1255 | cubes D_j and E_j with measure bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L1256-L1257 uses that the finite union of cube boundaries is null, without a box-cover estimate in the corpus or an E1-E10 statement of this result. Retain the claimed approximation but expose this missing measure input.
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
EDGE: step:p4:hq-trivial | blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1274-L1274 | 0<meas B<infty and kappa fixed
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
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
DEPS: step:p4:head-negative, bp:p0:head, step:p4:hq-head, step:p4:hq-approx
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:head-negative | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1290-L1291 | Nonnegative epsilon is invoked at L1291
EDGE: bp:p0:head | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1291-L1291 | HEAD conclusion for B'
EDGE: step:p4:hq-head | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1288-L1288 | eps<=eps_0'; C', eps_0
EDGE: step:p4:hq-approx | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1287-L1287 | B' subset B
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
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
DEPS: bp:p4:cover-mono, step:p4:hq-transfer, step:p4:hq-approx, step:p4:hq-trivial, step:p4:hq-head
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:cover-mono | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1296-L1296 | kamCover_B'(C' sqrt eps) subset kamCover_B(kappa)
EDGE: step:p4:hq-transfer | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1298-L1301 | The measure inequality is used at L1301, not the display delimiter L1300
EDGE: step:p4:hq-approx | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1298-L1301 | The approximation error is consumed in the final measure inequality
EDGE: step:p4:hq-trivial | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1301-L1301 | meas F_B = meas B
EDGE: step:p4:hq-head | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1296-L1296 | The chosen epsilon_0 supplies Cprime sqrt(epsilon)<=kappa; transfer only records the measure part
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

```text
ITEM: p4:sourcegap-L792
KIND: proof-region
SOURCE: blueprint/parts/p4-measure.tex#sourcegap@L792-L798
DISPOSITION: NODE bp:p4:lip
REASON: gap note on CCdlL13 Cor. 30: the blueprint supplies the stability (Theorem STAB) and the action shift in the proofs of lip-error and LIP; no unproved input remains
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
```

```text
ITEM: p4:sourcegap-L970
KIND: proof-region
SOURCE: blueprint/parts/p4-measure.tex#sourcegap@L970-L971
DISPOSITION: NODE bp:p4:lagrangian
REASON: gap note on HL19 eq. (2.3): isotropy from quasi-periodicity is proved in this lemma, so no missing input
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
```

Application audit: APPLY supplies the first G1 torus; normalization supplies primarity/reality/invariance and the C0 bound; inverse-freq supplies I_omega in B and the frequency bound; smallness supplies (s1)-(s5); STAB supplies H2-H4 on the stated thinner strips. LIP-G1 uses loss s/32; LIP-G2 uses loss s/16 at the normalized reference torus. The frozen G2 comparison torus needs only image inclusion, which the G1 output balls provide. G3 is applied to the bounded set g(B), and the inverse-frequency map supplies its action-space preimage estimate. HEAD-Q restricts h, f and the nondegeneracy inequality to Bprime with the same radii; its constants are chosen before f and epsilon. None of these applications authorizes treating their proved premises as additional hypotheses.

Uncertainties/source obligations: the strict external-input boundary needs adjudication for the distance-to-set and measure bridges identified above. These are not counterexamples to the asserted mathematics. No pinned-paper erratum was newly verified and no source or mathematical deviation was introduced.

Validation: `sha256sum -c docs/graph/K/CORPUS.sha256` returned five `OK` lines (Parts 0-4). Report validation checks one table row per assigned packet node, one replacement block per failed node, and source ranges within the assigned corpus. Source lint, builds and `#print axioms` are not applicable to this source-only review and were not run, as required by REVIEW-BRIEF.

Replacement coverage fragment:

```text
ITEM: p4:source-L674
KIND: citation
SOURCE: blueprint/parts/p4-measure.tex#source@L674-L675
DISPOSITION: EXCLUDED
REASON: provenance note only; the cited result is proved in the blueprint
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
```

Replacement coverage fragment:

```text
ITEM: p4:source-L790
KIND: citation
SOURCE: blueprint/parts/p4-measure.tex#source@L790-L791
DISPOSITION: EXCLUDED
REASON: provenance note only; the cited result is proved in the blueprint
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
```

Replacement coverage fragment:

```text
ITEM: p4:source-L968
KIND: citation
SOURCE: blueprint/parts/p4-measure.tex#source@L968-L969
DISPOSITION: EXCLUDED
REASON: provenance note only; the cited result is proved in the blueprint
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
```

Replacement coverage fragment:

```text
ITEM: p4:source-L1083
KIND: citation
SOURCE: blueprint/parts/p4-measure.tex#source@L1083-L1085
DISPOSITION: EXCLUDED
REASON: provenance note only; the cited result is proved in the blueprint
COVERAGE_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
```

Final report checks: 64 node rows; 21 PASS, 43 FAIL; all failed nodes have exactly one full replacement; DEPS/EDGE sets and source ranges valid.
