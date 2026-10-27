# K-p4b: delta2 topology review

Reviewer: `sol-review-d2` (d2). Verdict for the assigned records: **FAIL**.

Scope: exactly the d2 nodes in `delta2-assignments.json`. I wrote none of the packet records under review. Earlier delta findings were checked against the current packets and the raw pinned blueprint. Verdicts concern source topology, not proof closure or the entire slice.

Re-read source/conditional-input context: Part 4 L138-L163, L183-L237, L294-L330, L406-L466, L468-L496, L583-L665, L677-L743, L800-L911, L1009-L1184 and L1235-L1303; Part 1 L73-L97, L1035-L1039 and L1106-L1115. Frozen G1, HEAD, HEAD-Q, torus and cover contracts were checked directly. Each row also includes every original EDGE consumer span.

| Record ID | Verdict | Source spans re-read | Finding / repair check |
|---|---|---|---|
| `step:p4:shift-phase` | PASS | `blueprint/parts/p4-measure.tex#step:p4:shift-phase@L711-L717`; `blueprint/parts/p4-measure.tex#step:p4:shift-phase@L714-L714`; `blueprint/parts/p4-measure.tex#step:p4:shift-phase@L712-L714`; `blueprint/parts/p4-measure.tex#step:p4:shift-phase@L715-L715`; `blueprint/parts/p4-measure.tex#step:p4:shift-phase@L714-L717` | PASS: phase-average EDGE now covers L712-L714, where u_K and ph are actually used; periodicity is derived from primarity and the integral bound is explicit. |
| `bp:p4:normalized-torus` | PASS | `blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L720-L726`; `blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L721-L721`; `blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L723-L723`; `blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L724-L724` | PASS: unnecessary parameters edge removed; SA, APPLY, phase-average and inverse-freq are the actual direct suppliers of the construction. |
| `step:p4:normalize-proof` | FAIL | `blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L737-L741`; `blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L738-L738`; `blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L738-L741` | The normalized-torus locator is repaired. SOURCE_HYPOTHESES still adds the derived APPLY closeness bound as a premise. The source assumes SA and omega in Omega_gamma and constructs K^infty by APPLY; its bound belongs to the existing APPLY dependency. |
| `bp:p4:lip-error` | PASS | `blueprint/parts/p4-measure.tex#bp:p4:lip-error@L820-L829`; `blueprint/parts/p4-measure.tex#bp:p4:lip-error@L831-L874`; `blueprint/parts/p4-measure.tex#bp:p4:lip-error@L823-L824`; `blueprint/parts/p4-measure.tex#bp:p4:lip-error@L821-L821`; `blueprint/parts/p4-measure.tex#bp:p4:lip-error@L832-L832`; `blueprint/parts/p4-measure.tex#bp:p4:lip-error@L838-L838`; `blueprint/parts/p4-measure.tex#bp:p4:lip-error@L853-L853`; `blueprint/parts/p4-measure.tex#bp:p4:lip-error@L860-L860`; `blueprint/parts/p4-measure.tex#bp:p4:lip-error@L867-L867`; `blueprint/parts/p4-measure.tex#bp:p4:lip-error@L871-L871` | PASS: normalized-torus EDGE now reaches K_omega,W_omega at L823-L824; parameters at L821 supplies lambda_*, and the proof steps supply the asserted error estimate. |
| `bp:p4:lip` | FAIL | `blueprint/parts/p4-measure.tex#bp:p4:lip@L876-L882`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L884-L946`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L877-L877`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L880-L880`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L885-L885`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L892-L892`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L913-L913`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L929-L929`; `blueprint/parts/p4-measure.tex#bp:p4:lip@L936-L936` | The W_omega locator is repaired. The parameters EDGE remains at L877, which only assumes SA and specifies the frequency/strip quantifiers; A_3 is consumed in the inequality at L880. Keep the actual constant-definition dependency at that line. |
| `step:p4:lip-g1` | FAIL | `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L892-L911`; `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L893-L893`; `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L897-L897`; `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L898-L901`; `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L900-L903`; `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L899-L905`; `blueprint/parts/p4-measure.tex#step:p4:lip-g1@L895-L895` | The delta locators largely repair the first finding, but the smallness EDGE L899-L905 omits the direct (s1) use at L897. SOURCE_HYPOTHESES also assumes the proved error estimate and omits explicit membership of both frequencies in Omega_gamma. Restore the L876-L890 source data and retain the error bound as the lip-error dependency. |
| `bp:p4:real-torus` | FAIL | `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1009-L1021`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1023-L1069`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1010-L1010`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1013-L1014`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1016-L1016`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1020-L1020`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1024-L1024`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1028-L1028`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1035-L1035`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1039-L1039`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1045-L1045`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1052-L1052`; `blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1063-L1063` | The SA, frozen torus-predicate and corrected Hamiltonian locators resolve the delta findings. The source also directly invokes real-restriction in the definition of k_omega at L1011, independently of the subsequent rt-analytic proof step; that direct dependency is absent. |
| `step:p4:rt-analytic` | FAIL | `blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1024-L1026`; `blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1025-L1026`; `blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1026-L1026` | Removing the merely transitive holomorphic-analytic edge is correct. SOURCE_HYPOTHESES nevertheless replaces the theorem source data by the holomorphy/primarity/reality conclusion of normalize. Restore SA and omega in Omega_gamma; keep those properties in the normalize dependency, and represent the assumed SA package directly. |
| `bp:p4:good-actions` | PASS | `blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1102-L1111`; `blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1109-L1109`; `blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1107-L1107` | PASS: unnecessary parameters edge removed; SA supplies Omega_gamma and inverse-freq supplies I_{g(I)}=I; G_0 uses the real torus construction. |
| `bp:p4:map-lipschitz` | PASS | `blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1113-L1116`; `blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1118-L1138`; `blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1119-L1119`; `blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1123-L1123`; `blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1133-L1133`; `blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1114-L1114` | PASS: unnecessary parameters edge removed; all three proof branches and the direct SA/definition edges remain. |
| `step:p4:ml-size` | PASS | `blueprint/parts/p4-measure.tex#step:p4:ml-size@L1119-L1121`; `blueprint/parts/p4-measure.tex#step:p4:ml-size@L1121-L1121`; `blueprint/parts/p4-measure.tex#step:p4:ml-size@L1120-L1121` | PASS: good-actions EDGE now covers actual uses at L1120-L1121; gamma>0 gives disjointness and normalize supplies the size bound (zero on Z by definition). |
| `step:p4:ml-good` | FAIL | `blueprint/parts/p4-measure.tex#step:p4:ml-good@L1123-L1131`; `blueprint/parts/p4-measure.tex#step:p4:ml-good@L1124-L1124`; `blueprint/parts/p4-measure.tex#step:p4:ml-good@L1126-L1126`; `blueprint/parts/p4-measure.tex#step:p4:ml-good@L1129-L1129`; `blueprint/parts/p4-measure.tex#step:p4:ml-good@L1124-L1129`; `blueprint/parts/p4-measure.tex#step:p4:ml-good@L1125-L1129` | The delta locator repairs and mean-value edge are correct. SOURCE_HYPOTHESES still adds the derivative estimate proved in rt-small as a new premise; L1124-L1126 invokes that result rather than assuming the estimate. |
| `bp:p4:main-measure` | PASS | `blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1140-L1147`; `blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1149-L1184`; `blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1150-L1150`; `blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1158-L1158`; `blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1162-L1162`; `blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1171-L1171`; `blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1177-L1177`; `blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1145-L1145`; `blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1142-L1142` | PASS: unnecessary parameters edge removed; data and preimage-measure now supply C_B^+,L_+ and C_3^+ directly in C_meas. The assigned record does not hide the downstream product gap. |
| `step:p4:mm-count` | FAIL | `blueprint/parts/p4-measure.tex#step:p4:mm-count@L1177-L1183`; `blueprint/parts/p4-measure.tex#step:p4:mm-count@L1179-L1179`; `blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1183`; `blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1181`; `blueprint/parts/p4-measure.tex#step:p4:mm-count@L1179-L1181`; `blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1178` | The product-volume SOURCE_GAP and corrected consumer locators are retained. SOURCE_HYPOTHESES still assumes the proved Lipschitz and bad-set bounds instead of the main-measure source data. Restore SA and the fixed nonempty HEAD setting, with Psi,Q and C_meas as local constructions; add the package edge required by SPEC. |
| `step:p4:dy-exhaust` | PASS | `blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1246-L1252` | PASS: E_j is now correctly a closed finite union of generation-j cubes, not a single cube. The continuity-from-below invocation remains explicitly SOURCE_GAP. |
| `step:p4:hq-approx` | PASS | `blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1274-L1275`; `blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1275-L1275` | PASS: the hq-trivial EDGE now points at the eta choice at L1275; positivity/finiteness and dyadic-approx provide the conditional hypotheses. |
| `step:p4:hq-transfer` | PASS | `blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1287-L1293`; `blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1291-L1291`; `blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1288-L1288`; `blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1289-L1289`; `blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1290-L1291` | PASS: hq-approx EDGE now covers the domain inclusion; the original nonempty B supplies epsilon>=0 without importing a boundary-layer hypothesis on B or requiring B_prime nonempty. |
| `step:p4:hq-cover` | FAIL | `blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1295-L1302`; `blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1296-L1296`; `blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1298-L1301`; `blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1301-L1301` | The new product-volume SOURCE_GAP correctly resolves the delta finding. SOURCE_HYPOTHESES still assumes the chosen radius comparison, the proved measure estimate, and the covering inclusion obtained in this step. Restore the actual nonempty HEAD-Q branch and its constructions; keep the derived inputs in hq-head, hq-transfer and hq-approx. |

Accounting: 18 assigned nodes; 8 FAIL; 10 PASS. No coverage items are assigned to d2. The corresponding inventory entries were checked for node disposition; this does not claim a review of unassigned coverage.

The supplied reachability adjudications are preserved: none of these records is an excluded item. No genuine root consumer of the excluded normalized-unique result is introduced; L913-L945 uses G2 directly. The existing product-volume and continuity-of-measure gaps remain visible.

Complete proposed replacement blocks follow. They are review proposals only; packets are unchanged.

```text
NODE: step:p4:normalize-proof
KIND: step
TITLE: Shift of the G1 output
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L737-L741
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L737-L741
CONTRACT_ID: step:p4:normalize-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed HEAD data and perturbation hypotheses of Part 4; (SA); omega in Omega_gamma; K^infty_omega is the torus chosen from APPLY and K_omega is the construction in normalized-torus, without an added closeness premise
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
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
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
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:lip@L880-L880 | A_3 is the data-dependent constant defined in parameters; SA has its separate package edge
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:lip@L880-L880 | W_omega defined there
EDGE: step:p4:lip-far | blueprint/parts/p4-measure.tex#bp:p4:lip@L885-L885 | proof step of this result
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#bp:p4:lip@L892-L892 | proof step of this result
EDGE: step:p4:lip-g2 | blueprint/parts/p4-measure.tex#bp:p4:lip@L913-L913 | proof step of this result
EDGE: step:p4:lip-phase | blueprint/parts/p4-measure.tex#bp:p4:lip@L929-L929 | proof step of this result
EDGE: step:p4:lip-close | blueprint/parts/p4-measure.tex#bp:p4:lip@L936-L936 | proof step of this result
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:lip@L876-L882 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
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
SOURCE_HYPOTHESES: the fixed HEAD data and perturbation hypotheses of Part 4; (SA); omega,omega_prime in Omega_gamma with |Delta omega|<=lambda_* gamma^2; Delta omega=omega_prime-omega, Delta I=I_omega_prime-I_omega, K_prime=K_omega+(0,iota Delta I), and e_prime=A_1 epsilon gamma^(-2)|Delta omega| as constructed at L888-L890; no additional error-bound premise
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
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L897-L905 | (s1) supplies epsilon<=1 for H1 and STAB, (s3) supplies the STAB threshold, and (s4) supplies strict G1 smallness via a bound by 1/2
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L898-L901 | The reference action and frequency bounds are used in the STAB application
EDGE: step:p4:lip-far | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L895-L895 | definition of e' and close-pair assumption
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L892-L911 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
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
DEPS: bp:p4:normalized-torus, bp:p0:nearlyintegrable#realHamiltonian, bp:p0:nearlyintegrable#frequencyMap, bp:p0:cover#kamCover, step:p4:rt-analytic, step:p4:rt-small, step:p4:rt-immersion, step:p4:rt-embedding, step:p4:rt-lagrangian, step:p4:rt-ode, step:p4:rt-cover, bp:p4:SA, bp:p0:torus#IsInvariantLagrangianTorus, bp:p1:real-restriction
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
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1010-L1011 | k_omega is defined as the real restriction of K_omega using the cited real-restriction lemma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
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
SOURCE_HYPOTHESES: the fixed HEAD data and perturbation hypotheses of Part 4; (SA); omega in Omega_gamma; K_omega is the normalized-torus construction and k_omega its real restriction as defined at L1010-L1011
SOURCE_QUANTIFIERS: gamma,epsilon satisfying (SA); omega in Omega_gamma; x in R^n and m in Z^n for the primarity conclusion
SOURCE_CONCLUSION: k_omega is real analytic and primary: k_omega(x+m)=k_omega(x)+(m,0) for every real x and integer m
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:real-restriction, bp:p4:normalize, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1025-L1026 | The restriction lemma is used at L1025, not the heading
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1026-L1026 | K_omega holomorphic, primary, real
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1025-L1026 | the inherited local SA package and omega in Omega_gamma are the premises for normalize at K_omega
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
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
SOURCE_HYPOTHESES: the fixed HEAD data and perturbation hypotheses of Part 4; (SA); Z,A_gamma,G_0 as defined in good-actions; the derivative estimate is supplied by rt-small, not assumed
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
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
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
SOURCE_HYPOTHESES: the fixed HEAD data and perturbation hypotheses of Part 4 L138-L152; (SA); B nonempty; Z and A_gamma are defined in good-actions; Psi=id+Gbar and Q=[-1/2,3/2]^n are the constructions at L1151-L1166; C_meas=2 C_B^++(9/2)^n(2 C_B^++L_+^n C_3^+) as defined at L1142; no extra Lipschitz, bad-set-estimate or measurability premise
SOURCE_QUANTIFIERS: gamma,epsilon satisfying (SA), in the fixed main-measure setting
SOURCE_CONCLUSION: meas(F_B minus kamCover(eta_0))<=C_meas gamma by subadditivity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:lip-image, step:p4:mm-complement, step:p4:mm-bad, step:p4:mm-extension, bp:p4:good-actions, bp:p1:ext-lebesgue, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:lip-image | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1179-L1179 | measure of the Lipschitz image Psi(Q x (...))
EDGE: step:p4:mm-complement | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1183 | covering of the complement
EDGE: step:p4:mm-bad | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1181 | measure of Y and of the non-Diophantine set
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1179-L1181 | Psi is 3/2-Lipschitz
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1178 | Z, A_gamma
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1183 | Monotonicity and subadditivity are directly used in the measure count
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1183 | the inherited main-measure source setting assumes the local SA package; gamma is the positive width used in the bad-action estimates
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L1178-L1181 uses product-volume formulas for the action sets B intersect Z and Z^c minus A_gamma, and measures their products with cubes. E8 gives outer measure by box covers; E6 explicitly gives Fubini for continuous compact-box integrands. No measurable-indicator/product bridge for these sets is supplied here. Expose this use rather than claim E8 proves it.
```

```text
NODE: step:p4:hq-cover
KIND: step
TITLE: Comparison of covers
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1295-L1302
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1295-L1302
CONTRACT_ID: step:p4:hq-cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed HEAD-Q data (n>=2, tau>n-1, s0,r0>0, B open bounded, h holomorphic on B_{r0}, real at real points, and the inverse-frequency inequality on closure B); in the B nonempty branch fix kappa>0; B_prime,C_B_prime,C_prime,epsilon_0_prime,epsilon_0 are the constructions at L1274-L1284; f and epsilon<=epsilon_0 satisfy the original HEAD-Q perturbation hypotheses on B; no boundary-layer hypothesis on B is added
SOURCE_QUANTIFIERS: fixed HEAD-Q data; kappa>0; the previously chosen epsilon_0>0; for every f and epsilon satisfying the perturbation hypotheses and epsilon<=epsilon_0
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
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L1298-L1301 uses meas([0,1)^n x (B minus Bprime))=meas(B minus Bprime). The same product-volume bridge exposed in step:p4:mm-count is not supplied here by E8 (box-cover definition, monotonicity and subadditivity) or E6 (continuous compact-box Fubini). Keep this use visible; no new external or additional hypothesis is introduced.
```

Validation: all five pinned corpus SHA-256 checks PASS. Assignment-row coverage, one complete replacement per FAIL, DEPS/EDGE equality, and locator bounds were mechanically checked. No Lean command, build, source lint, implementation/provider read, state-changing git command, packet edit, frozen edit or manifest edit was performed. The review brief confines this task to reports and forbids Lean execution.

Uncertainties / errata / deviations: no pinned paper was used as an authority beyond the blueprint corpus, and no new pinned-paper erratum is claimed. Findings are graph-record defects; existing SOURCE_GAP notes are preserved. No source mathematics or frozen statement was changed.

Reviewed packet SHA-256: `d980e341bca43d29322b540c1aef67e39da75e6fac8bf173545a26bafad60202`.

Final check receipt: `K-p4b: 18 rows, 8 complete FAIL replacements; DEPS/EDGE, targets, planning fields and locator bounds PASS`. Global accounting: `39/39 assigned node rows PASS accounting`. `sha256sum -c docs/graph/K/CORPUS.sha256`: Parts 0–4 each `OK`. All 64 fingerprinted inputs unchanged. `git diff --check -- <the five delta2 report paths>`: exit 0, no output. No Lean results were created, so `#print axioms` is not applicable.
