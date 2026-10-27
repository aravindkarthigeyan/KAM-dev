# K-p0: independent source-topology review

Reviewer: sol-review-r1. Verdict: **FAIL**.

Scope: the assigned raw source in SPEC, every packet node and coverage disposition, and the source statements reached by its edges. This is a topology review, not a Lean proof-status determination. No Lean command, source lint, build, or state-changing git command was run. The review brief expressly prohibits Lean and permits edits only to these review files.

All five corpus SHA-256 values were independently checked against CORPUS.sha256 and match. The 25 track-K anchor file/export/id/contract/version/ABI identity fields match the manifest; frozen statement signatures and definition bodies were read only as the approved source interface. No frozen defect was identified.

Source-premise policy: a step inherits the original mathematical data of its enclosing argument. Estimates and theorems proved or invoked in that argument belong in DEPS; they do not become additional source hypotheses. Definitions and names for already constructed objects are typing data. The replacements below preserve the existing proof edges unless an edge correction is stated.

| Node | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| `bp:p0:diophantine#IsDiophantine` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:diophantine@L32-L38 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:domains#complexStrip` | FAIL | blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45 ; blueprint/parts/p0-conventions.tex L19-L20 | The stated strip definition is at L19, outside the supplied L40-L45 span. |
| `bp:p0:domains#actionNbhd` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:domains#fundamentalDomain` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:hamiltonian#hamiltonianVectorField` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:hamiltonian@L47-L55 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:hamiltonian#hamiltonianVectorFieldC` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:hamiltonian@L47-L55 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:hamiltonian#symplecticForm` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:hamiltonian@L47-L55 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:hamiltonian#omegaZero` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:hamiltonian@L47-L55 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:nearlyintegrable#realHamiltonian` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:nearlyintegrable@L65-L71 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:nearlyintegrable#frequencyMap` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:nearlyintegrable@L65-L71 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:torus#IsInvariantLagrangianTorus` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:torus@L73-L81 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:cover#kamCover` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:cover@L83-L89 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:stripdata#IsPrimaryOnStrip` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:stripdata#IsRealOnReals` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:stripdata#invarianceError` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:stripdata#dotC` | FAIL | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101 | The anchor carrier is phase vectors C^n x C^n; arbitrary C^m is a generalized interface absent from this frozen export. |
| `bp:p0:stripdata#gramMatrix` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:stripdata#normalFrame` | FAIL | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101 | The record adds Gram invertibility as a premise to a total definition; neither L91-L101 nor the frozen definition has that premise. |
| `bp:p0:stripdata#torsion` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:stripdata#torsionAverage` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:head` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:head@L105-L115 ; blueprint/parts/p4-measure.tex#bp:p0:head@L1200-L1230 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:headq` | FAIL | blueprint/parts/p0-conventions.tex#bp:p0:headq@L117-L122 ; blueprint/parts/p4-measure.tex#bp:p0:headq@L1268-L1303 | The HEAD edge is located at a statement comparison, rather than the actual application at Part 4 L1278-L1292; its cover EDGE incorrectly says C sqrt(epsilon). |
| `bp:p0:g1` | FAIL | blueprint/parts/p0-conventions.tex#bp:p0:g1@L124-L140 ; blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1094-L1107 ; blueprint/parts/p2-aposteriori.tex L1109-L1142 | PROOF_SOURCE is the Part 2 statement rather than its proof; the anchor-to-result EDGE also needs the consumer conclusion site.  |
| `bp:p0:g2` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:g2@L142-L155 ; blueprint/parts/p3-uniqueness.tex#bp:p0:g2@L512-L568 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p0:g3` | PASS | blueprint/parts/p0-conventions.tex#bp:p0:g3@L157-L162 ; blueprint/parts/p4-measure.tex#bp:p0:g3@L104-L128 | Source fields, direct prerequisites and locators agree with the text. |

Coverage failures:

| Coverage item | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| None | — | Entire assigned slice and supplied inventory | No failed dispositions. Node-field failures above do not by themselves invalidate an item-to-node mapping. |

All other coverage items PASS.

The totality remark is correctly excluded as administrative. Definitions are not conditional on their later analytic/invertibility guards. HEAD and HEAD-Q retain the stated quantifier order, including all real epsilon; no positivity premise was invented. G2 retains no upper bound on gamma. G3 is dimension-general, consistent with the explicit n=0 branch in Part 4.

Cross-slice source statements read: Part 2 G1 L1094-L1107 and its proof L1109-L1142; Part 3 G2 proof L512-L568; Part 4 G3 proof L104-L128, HEAD proof L1200-L1230, and HEAD-Q proof L1268-L1303. Their step edges are proof decompositions, not assumptions that their conclusions hold. Conditional-premise discharge for HEAD-Q is explicit at L1278-L1292.

Replacement fragments follow. Each complete NODE block replaces the named packet block only; identity metadata is unchanged. Missing-node fragments are additions. Only the orchestrator may set reviewed statuses.

## Replacement: bp:p0:domains#complexStrip

```text
NODE: bp:p0:domains#complexStrip
KIND: definition
TITLE: Complex neighbourhoods and the fundamental domain: KAM.complexStrip
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:conventions@L19-L20
PROOF_SOURCE: -
CONTRACT_ID: kam.complexStrip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: rho > 0; n fixed
SOURCE_QUANTIFIERS: n, rho > 0
SOURCE_CONCLUSION: defines the complex strip T_rho = {theta in C^n : |Im theta_i| < rho for all i}
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/ComplexStrip.lean
FROZEN_DECL: KAM.complexStrip
FROZEN_ANCHOR_ID: kam.complexStrip.v1
FROZEN_ABI_SHA256: 91cedb11be4f33139d30fcc5103f7ed5370fa5d89a68f9a3aaf0b061ae2920e7
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: bp:p0:stripdata#dotC

```text
NODE: bp:p0:stripdata#dotC
KIND: definition
TITLE: Torus data on strips: KAM.dotℂ
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101
PROOF_SOURCE: -
CONTRACT_ID: kam.dotℂ
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing data: u,v in C^n x C^n
SOURCE_QUANTIFIERS: n fixed; u,v in C^n x C^n
SOURCE_CONCLUSION: defines dotC(u,v)=sum_i (u_1i v_1i + u_2i v_2i), the bilinear non-conjugated pairing used by the transpose formulas
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/DotC.lean
FROZEN_DECL: KAM.dotℂ
FROZEN_ANCHOR_ID: kam.dotℂ.v1
FROZEN_ABI_SHA256: 6d938a769932067b5668f7e0b3bb92a62331b9be8f6a13b7a625af3b5eed362b
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: bp:p0:stripdata#normalFrame

```text
NODE: bp:p0:stripdata#normalFrame
KIND: definition
TITLE: Torus data on strips: KAM.normalFrame
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101
PROOF_SOURCE: -
CONTRACT_ID: kam.normalFrame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing data: K:C^n->C^n x C^n and theta in C^n; L=DK; no invertibility premise
SOURCE_QUANTIFIERS: K, theta
SOURCE_CONCLUSION: defines B=(L^T L)^{-1} using the total matrix inverse and N=Omega_0 L B; invertibility is a later theorem hypothesis, not a premise of this definition
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/NormalFrame.lean
FROZEN_DECL: KAM.normalFrame
FROZEN_ANCHOR_ID: kam.normalFrame.v1
FROZEN_ABI_SHA256: 86b86c14c2624b16a514c56a00d7ae7b1798ef789d9f1556d2a2c2ac8c4af95b
DEPS: bp:p0:stripdata#gramMatrix, bp:p0:hamiltonian#omegaZero
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:stripdata#gramMatrix | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L96-L96 | B=(L^T L)^{-1} from the Gram matrix
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L96-L96 | N = Omega_0 L B
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: bp:p0:g1

```text
NODE: bp:p0:g1
KIND: theorem
TITLE: G1: a-posteriori KAM at fixed frequency
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:g1@L124-L140
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1109-L1142
CONTRACT_ID: kam.aposteriori_kam
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 2; tau >= n-1; 0 < rho_inf < rho; M, sigma_K, sigma_B, sigma_T, mu, gammabar > 0; mathfrak B subset C^n x C^n open and invariant under theta -> theta+k; h holomorphic on mathfrak B, 1-periodic in theta, real on real points, |Dh|,|X_h|,|DX_h|,|D^2X_h| <= M on mathfrak B; K holomorphic on T_rho, primary, real on reals, B_mu(K(theta)) subset mathfrak B and |DK| <= sigma_K - mu on T_rho; L^T L invertible with |B| <= sigma_B - mu on T_rho; avg(T) invertible with |avg(T)^{-1}| <= sigma_T - mu; 0 < gamma <= gammabar and omega in Dio_{gamma,tau}; |E| <= e on T_rho; C_1 e/(gamma^4 rho^{4 tau}) < 1
SOURCE_QUANTIFIERS: n,tau,rho_inf,rho,M,sigma_K,sigma_B,sigma_T,mu,gammabar fixed; exists C_1,C_2 > 0; for all mathfrak B,h,K,omega,gamma,e satisfying the hypotheses
SOURCE_CONCLUSION: exists K_inf holomorphic on T_{rho_inf}, primary, real on reals, with E_inf = 0 on T_{rho_inf}, B_{mu/2}(K_inf(theta)) subset mathfrak B, |DK_inf| <= sigma_K - mu/2, and |K_inf - K| <= C_2 e/(gamma^2 rho^{2 tau}) on T_{rho_inf}
CONSTANT_SCOPE: C_1, C_2 > 0 chosen after the fixed data (n,tau,rho_inf,rho,M,sigma_K,sigma_B,sigma_T,mu,gammabar) and before mathfrak B,h,K,omega,gamma,e; independent of these (in particular of gamma below gammabar, and of the torus)
FROZEN_FILE: KAM/Frozen/Theorems/AposterioriKam.lean
FROZEN_DECL: KAM.aposteriori_kam
FROZEN_ANCHOR_ID: kam.aposteriori_kam.v1
FROZEN_ABI_SHA256: 15dbaab5a036f69e52d0659874d64abe6fdd36e0f235973db368792c615ee293
DEPS: bp:p2:g1, bp:p0:diophantine#IsDiophantine, bp:p0:domains#complexStrip, bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals, bp:p0:stripdata#invarianceError, bp:p0:stripdata#gramMatrix, bp:p0:stripdata#torsionAverage
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:g1 | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1131-L1141 | the explicit-constant theorem verifies all seven clauses of the frozen G1 conclusion
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p0-conventions.tex#bp:p0:g1@L132-L132 | omega in Dio_{gamma,tau}
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p0-conventions.tex#bp:p0:g1@L130-L130 | strips T_rho
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p0-conventions.tex#bp:p0:g1@L129-L129 | X_h bounds
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p0-conventions.tex#bp:p0:g1@L130-L130 | K primary
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p0-conventions.tex#bp:p0:g1@L130-L130 | K real on reals
EDGE: bp:p0:stripdata#invarianceError | blueprint/parts/p0-conventions.tex#bp:p0:g1@L133-L133 | error E
EDGE: bp:p0:stripdata#gramMatrix | blueprint/parts/p0-conventions.tex#bp:p0:g1@L131-L131 | L^T L and B
EDGE: bp:p0:stripdata#torsionAverage | blueprint/parts/p0-conventions.tex#bp:p0:g1@L131-L131 | avg(T)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: bp:p0:headq

```text
NODE: bp:p0:headq
KIND: theorem
TITLE: HEAD-Q: qualitative form
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:headq@L117-L122
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p0:headq@L1268-L1303
CONTRACT_ID: kam.kam_positive_measure_qualitative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: same data as HEAD (n >= 2; tau > n-1; s_0, r_0 > 0; B open bounded; h holomorphic on B_{r_0}, real on real points, nondegeneracy |I-J| <= L|nabla h(I)-nabla h(J)| on closure of B) but without the boundary-layer condition; f, epsilon as in HEAD with epsilon <= epsilon_0
SOURCE_QUANTIFIERS: n,tau,s_0,r_0,B,h fixed; for every kappa > 0 there exists epsilon_0 > 0; then for all f, epsilon
SOURCE_CONCLUSION: meas(F_B \ K(kappa)) <= kappa meas(F_B)
CONSTANT_SCOPE: epsilon_0 depends on kappa and the data n, tau, s_0, r_0, B, h; not on f or epsilon
FROZEN_FILE: KAM/Frozen/Theorems/KamPositiveMeasureQualitative.lean
FROZEN_DECL: KAM.kam_positive_measure_qualitative
FROZEN_ANCHOR_ID: kam.kam_positive_measure_qualitative.v1
FROZEN_ABI_SHA256: 3cac1e4650a580f08a539ba876442f6608e36106126a0d57948d4e246c090a21
DEPS: step:p4:hq-trivial, step:p4:hq-approx, step:p4:hq-head, step:p4:hq-transfer, step:p4:hq-cover, bp:p0:head, bp:p0:domains#complexStrip, bp:p0:domains#actionNbhd, bp:p0:domains#fundamentalDomain, bp:p0:cover#kamCover, bp:p0:nearlyintegrable#frequencyMap
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:hq-trivial | blueprint/parts/p4-measure.tex#bp:p0:headq@L1269-L1269 | proof step of this result
EDGE: step:p4:hq-approx | blueprint/parts/p4-measure.tex#bp:p0:headq@L1274-L1274 | proof step of this result
EDGE: step:p4:hq-head | blueprint/parts/p4-measure.tex#bp:p0:headq@L1277-L1277 | proof step of this result
EDGE: step:p4:hq-transfer | blueprint/parts/p4-measure.tex#bp:p0:headq@L1287-L1287 | proof step of this result
EDGE: step:p4:hq-cover | blueprint/parts/p4-measure.tex#bp:p0:headq@L1295-L1295 | proof step of this result
EDGE: bp:p0:head | blueprint/parts/p4-measure.tex#step:p4:hq-head@L1278-L1284 | HEAD applied to B-prime; its premises are supplied at L1278-L1282, with perturbation restriction at L1288-L1292
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p0-conventions.tex#bp:p0:headq@L119-L119 | strip T_{s_0} in D(s_0,r_0)
EDGE: bp:p0:domains#actionNbhd | blueprint/parts/p0-conventions.tex#bp:p0:headq@L119-L119 | B_{r_0} in the phase domain and in h holomorphic on B_{r_0}
EDGE: bp:p0:domains#fundamentalDomain | blueprint/parts/p0-conventions.tex#bp:p0:headq@L120-L120 | F_B in the conclusion
EDGE: bp:p0:cover#kamCover | blueprint/parts/p0-conventions.tex#bp:p0:headq@L120-L120 | K(kappa) in the qualitative conclusion
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p0-conventions.tex#bp:p0:headq@L119-L119 | nabla h in the nondegeneracy inequality
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Checks: corpus hashes PASS (5/5); anchor identity comparisons PASS (25/25); every supplied node has one review-table row; every supplied coverage item was read and its mapping/exclusion checked. Source implementation files and providers were not consulted. #print axioms is inapplicable because this task forbids Lean execution.

Uncertainties: these fragments require orchestrator adjudication and assembly; no graph patch is applied here. Pinned-paper errata: none identified in the permitted corpus review. Deviations introduced: none; only review reports were written.
