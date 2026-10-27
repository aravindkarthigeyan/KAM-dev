# K-p1c: independent source-topology review

Reviewer: sol-review-r1. Verdict: **FAIL**.

Scope: the assigned raw source in SPEC, every packet node and coverage disposition, and the source statements reached by its edges. This is a topology review, not a Lean proof-status determination. No Lean command, source lint, build, or state-changing git command was run. The review brief expressly prohibits Lean and permits edits only to these review files.

All five corpus SHA-256 values were independently checked against CORPUS.sha256 and match. The 25 track-K anchor file/export/id/contract/version/ABI identity fields match the manifest; frozen statement signatures and definition bodies were read only as the approved source interface. No frozen defect was identified.

Source-premise policy: a step inherits the original mathematical data of its enclosing argument. Estimates and theorems proved or invoked in that argument belong in DEPS; they do not become additional source hypotheses. Definitions and names for already constructed objects are typing data. The replacements below preserve the existing proof edges unless an edge correction is stated.

| Node | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| `bp:p1:iteration` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:iteration@L997-L1002 ; blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1004-L1018 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:it-super` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:it-super@L1005-L1010 | The nonnegativity of every y_m from L998 is missing; it is needed for squaring bounds and the convergence claim. |
| `step:p1:it-linear` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:it-linear@L1012-L1017 | The nonnegativity of every y_m from L998 is missing; it is needed for squaring bounds and the convergence claim. |
| `bp:p1:real-restriction-consequences` | FAIL | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1027-L1033 | The self-contained remark still directly unfolds strip primarity and realness; those definition uses are missing. |
| `bp:p1:real-restriction` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1035-L1039 ; blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1041-L1059 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:rr-analytic` | PASS | blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1045-L1047 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:rr-derivative` | PASS | blueprint/parts/p1-analysis.tex#step:p1:rr-derivative@L1049-L1053 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:rr-consequences` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1055-L1058 | The derivative restriction being proved earlier is recorded as a new hypothesis instead of keeping the original K premises. |
| `bp:p1:hamiltonian-real` | FAIL | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1061-L1067 ; blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1069-L1096 | The symplectic bilinear form is not used here: the displayed object is its matrix Omega_0, already represented by omegaZero. |
| `step:p1:hr-derivative` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:hr-derivative@L1073-L1079 | The record omits holomorphy of h and z membership while replacing them with a constructed real neighbourhood. |
| `step:p1:hr-components` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1081-L1087 | The unnamed previous step is a dependency, not a replacement for the original source premises. |
| `step:p1:hr-matrix` | PASS | blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1089-L1095 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:lip-image-product` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1106-L1109 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:lip-image-product#product-lebesgue` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1107-L1108 | PASS as exposed SOURCE_GAP; the asserted measure identification is not one of E1-E10. No missing proof was supplied. |
| `bp:p1:lip-image` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1111-L1116 ; blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1118-L1153 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:li-cubes` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1122-L1129 | The definition of outer measure is a proof dependency, not a premise; it is also E8, not the recorded E3. |
| `step:p1:li-image` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:li-image@L1131-L1135 | The image-cube comparison directly uses the box-volume bound and monotonicity of E8, but has no edge to it. |
| `step:p1:li-sum` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1137-L1142 | The cube cover and its image estimate are already-proved obligations, not source premises for the final image bound. |
| `step:p1:li-preimage` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1144-L1148 | Nullity of N cap Phi(A) uses monotonicity directly; that use is missing. |
| `step:p1:li-product` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:li-product@L1150-L1152 | The previous steps and remark are proof prerequisites, not the hypotheses of the product-space instance. |
| `bp:p1:mcshane` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1155-L1158 ; blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1160-L1181 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:mc-component` | PASS | blueprint/parts/p1-analysis.tex#step:p1:mc-component@L1164-L1170 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:mc-components` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1172-L1175 | The componentwise extensions are constructed by the proof, not extra premises of the vector extension. |
| `step:p1:mc-clamp` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1177-L1180 | The source does not require beta>=0. With empty S the stated bound permits beta<0 and the claimed bounded extension on nonempty X is impossible; this needs SOURCE_GAP, not a silent extra hypothesis. |
| `bp:p1:lipeo-fixed` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:lipeo-fixed@L1183-L1188 | Source fields, direct prerequisites and locators agree with the text. |
| `bp:p1:lipeo` | PASS | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1190-L1194 ; blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1196-L1212 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:lipeo-bounds` | PASS | blueprint/parts/p1-analysis.tex#step:p1:lipeo-bounds@L1199-L1202 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:lipeo-onto` | PASS | blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1204-L1207 | Source fields, direct prerequisites and locators agree with the text. |
| `step:p1:lipeo-zero` | FAIL | blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1209-L1211 | Bijectivity is an earlier proved result and must be represented by its existing edge, not added as a source premise. |

Coverage failures:

| Coverage item | Verdict | Source spans re-read | Reason |
|---|---|---|---|
| None | — | Entire assigned slice and supplied inventory | No failed dispositions. Node-field failures above do not by themselves invalidate an item-to-node mapping. |

All other coverage items PASS.

Cross-slice source statements read: Part 1 E8 L90-L92, E9 L93-L94, operator norms L107-L134, and holomorphic analyticity L284-L350; Part 0 strip/primary/realness and Hamiltonian definitions L19-L20, L47-L55, L91-L101. The real-analyticity application supplies U=T_rho, m=n, W=C^p and reality at L1042-L1047; Banach supplies the nonempty complete space R^d and the lambda-contraction at L1205-L1206.

The optional "Alternative route in Mathlib" at L1140-L1142 is an implementation suggestion, not a second demonstrated source proof: its Hausdorff-measure bridge is not established in the corpus or among E1-E10. It is not an extra conjunctive dependency of li-sum. If later selected as a mathematical route, it must receive a separate route node and exposed source gaps. The present cube-cover proof remains the selected source route.

Suspected blueprint defect: L1178-L1180 says "Let |phi|<=beta on S" and concludes "|Phi|<=beta on X" without beta>=0, despite explicitly allowing S empty at L1165. For nonempty X and negative beta the premise is vacuous and the conclusion impossible. This is a blueprint scope issue; no claim is made about the cited Mathlib theorem or pinned papers. The replacement marks the existing clamping step SOURCE_GAP and preserves the literal source statement.

Replacement fragments follow. Each complete NODE block replaces the named packet block only; identity metadata is unchanged. Missing-node fragments are additions. Only the orchestrator may set reviewed statuses.

## Replacement: step:p1:it-super

```text
NODE: step:p1:it-super
KIND: step
TITLE: Super-exponential decay
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-super@L1005-L1010
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-super@L1005-L1010
CONTRACT_ID: step:p1:it-super
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: real sequence (y_m) with y_m>=0 for every m>=0; Q>0; p>=0; y_{m+1}<=Q 2^{pm} y_m^2; Q 2^p y_0<=1/2
SOURCE_QUANTIFIERS: x_m:=Q 2^{p(m+1)} y_m, induction on m>=0
SOURCE_CONCLUSION: x_m<=2^{-2^m}, i.e. y_m<=Q^{-1} 2^{-p(m+1)} 2^{-2^m}, and y_m->0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:it-linear

```text
NODE: step:p1:it-linear
KIND: step
TITLE: The form linear in $y_0$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-linear@L1012-L1017
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-linear@L1012-L1017
CONTRACT_ID: step:p1:it-linear
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: real sequence (y_m) with y_m>=0 for every m>=0; Q>0; p>=0; y_{m+1}<=Q 2^{pm} y_m^2; q=Q 2^p y_0<=1
SOURCE_QUANTIFIERS: induction on m>=0
SOURCE_CONCLUSION: y_m<=q^{2^m-1} 2^{-pm} y_0 for all m>=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:rr-consequences

```text
NODE: step:p1:rr-consequences
KIND: step
TITLE: Norm and primarity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1055-L1058
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1055-L1058
CONTRACT_ID: step:p1:rr-consequences
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K:T_rho->C^p holomorphic and real on reals; k its real restriction; x in R^n; K primary when the primarity clause is claimed
SOURCE_QUANTIFIERS: x in R^n
SOURCE_CONCLUSION: |Dk(x)|<=|DK(x)|; for primary K (p=2n), k(x+m)=k(x)+(m,0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:rr-derivative, bp:p1:real-restriction-consequences
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:rr-derivative | blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1056-L1057 | previous step: Dk(x) is the restriction of DK(x)
EDGE: bp:p1:real-restriction-consequences | blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1057-L1058 | remark gives the norm bound and the primary identity
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: bp:p1:real-restriction-consequences

```text
NODE: bp:p1:real-restriction-consequences
KIND: claim
TITLE: Real restrictions of linear and primary maps
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1027-L1033
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1027-L1033
CONTRACT_ID: bp:p1:real-restriction-consequences
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: l:C^n->C^p C-linear with l(R^n) in R^p, l_R its restriction; K:T_rho->C^n x C^n primary on T_rho and real on reals, k its restriction to R^n
SOURCE_QUANTIFIERS: for all such l, K, rho; x in R^n, m in Z^n
SOURCE_CONCLUSION: |l_R|<=|l| (operator norms of max norms); k(x+m)=k(x)+(m,0) for x in R^n, m in Z^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Self-contained remark; proof is inline (real h with |h|<=1 are a subset of complex ones; primarity identity at the real point x).
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1031-L1032 | unfold primarity at the real point x
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1031-L1032 | the restriction takes real values
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1031-L1032 | real x belongs to the positive-width strip
```

## Replacement: bp:p1:hamiltonian-real

```text
NODE: bp:p1:hamiltonian-real
KIND: lemma
TITLE: Real and complex Hamiltonian fields
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1061-L1067
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1069-L1096
CONTRACT_ID: bp:p1:hamiltonian-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V open in C^n x C^n; h holomorphic on V and real at real points of V; z in V cap (R^n x R^n); H:R^n x R^n->R agrees with Re h near z; (second claim) phi holomorphic; X_H frozen vector field, J=-Omega_0
SOURCE_QUANTIFIERS: for all V, h, z, H; for all holomorphic phi
SOURCE_CONCLUSION: H differentiable at z and X_H(z)=X_h(z); X_phi=J (Dphi)^T with J=[[0,I],[-I,0]]=-Omega_0, equivalently Omega_0 X_phi=(Dphi)^T
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hr-derivative, step:p1:hr-components, step:p1:hr-matrix, bp:p0:hamiltonian#hamiltonianVectorField, bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p0:hamiltonian#omegaZero
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:hr-derivative | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1073-L1079 | proof step of this result
EDGE: step:p1:hr-components | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1081-L1087 | proof step of this result
EDGE: step:p1:hr-matrix | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1089-L1095 | proof step of this result
EDGE: bp:p0:hamiltonian#hamiltonianVectorField | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1063-L1064 | X_H in the statement is the frozen real vector field
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1063-L1064 | X_h, X_varphi in the statement is the frozen complex vector field
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1065-L1066 | Omega_0 in the statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:hr-derivative

```text
NODE: step:p1:hr-derivative
KIND: step
TITLE: The real derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-derivative@L1073-L1079
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-derivative@L1073-L1079
CONTRACT_ID: step:p1:hr-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V subset C^n x C^n open; h holomorphic on V and real at real points; z in V cap R^{2n}; H:R^{2n}->R agrees with Re h near z
SOURCE_QUANTIFIERS: e in R^n x R^n
SOURCE_CONCLUSION: H differentiable at z with DH(z)e=Dh(z)e (real number)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:hr-components

```text
NODE: step:p1:hr-components
KIND: step
TITLE: Components
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1081-L1087
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1081-L1087
CONTRACT_ID: step:p1:hr-components
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V subset C^n x C^n open; h holomorphic on V and real at real points; z in V cap R^{2n}; H:R^{2n}->R agrees with Re h near z
SOURCE_QUANTIFIERS: z, i=1..n
SOURCE_CONCLUSION: X_H(z)=X_h(z)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hr-derivative, bp:p0:hamiltonian#hamiltonianVectorField, bp:p0:hamiltonian#hamiltonianVectorFieldC
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:hr-derivative | blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1087-L1087 | previous step with e=(0,e_i) and e=(e_i,0)
EDGE: bp:p0:hamiltonian#hamiltonianVectorField | blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1082-L1084 | component formula for X_H by the frozen definition
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1082-L1085 | component formula for X_h by the frozen definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:li-cubes

```text
NODE: step:p1:li-cubes
KIND: step
TITLE: Covers by cubes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1122-L1129
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1122-L1129
CONTRACT_ID: step:p1:li-cubes
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S subset R^d; epsilon>0; R^d carries Lebesgue outer measure
SOURCE_QUANTIFIERS: eps>0
SOURCE_CONCLUSION: countably many closed cubes Q_j cover S with sum vol(Q_j)<=meas S+eps
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1124-L1125 | definition of outer measure by closed box covers gives boxes R_j
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:li-image

```text
NODE: step:p1:li-image
KIND: step
TITLE: Image of one cube
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-image@L1131-L1135
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-image@L1131-L1135
CONTRACT_ID: step:p1:li-image
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F:S->R^d Lambda-Lipschitz on S; Q closed cube of side ell
SOURCE_QUANTIFIERS: Q
SOURCE_CONCLUSION: meas F(S cap Q)<=Lambda^d ell^d = Lambda^d vol(Q)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-image@L1133-L1135 | image lies in a cube; outer measure is bounded by its box volume
```

## Replacement: step:p1:li-sum

```text
NODE: step:p1:li-sum
KIND: step
TITLE: Summation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1137-L1142
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1137-L1142
CONTRACT_ID: step:p1:li-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S subset R^d; F:S->R^d Lambda-Lipschitz in the max norm; epsilon>0
SOURCE_QUANTIFIERS: eps>0
SOURCE_CONCLUSION: meas F(S)<=Lambda^d meas S
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:li-cubes, step:p1:li-image, bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:li-cubes | blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1138-L1139 | cube cover
EDGE: step:p1:li-image | blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1138-L1139 | image of one cube
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1138-L1138 | countable subadditivity
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:li-preimage

```text
NODE: step:p1:li-preimage
KIND: step
TITLE: Preimages of null sets
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1144-L1148
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1144-L1148
CONTRACT_ID: step:p1:li-preimage
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Phi:A->R^d injective with Lambda-Lipschitz inverse; meas N=0
SOURCE_QUANTIFIERS: N
SOURCE_CONCLUSION: meas Phi^{-1}(N)=0
CONSTANT_SCOPE: Lambda is the Lipschitz constant of the inverse
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:li-sum, bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:li-sum | blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1147-L1148 | Lipschitz image estimate applied to Phi^{-1} on Phi(A)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1146-L1148 | N cap Phi(A) subset N, so its outer measure is zero
```

## Replacement: step:p1:li-product

```text
NODE: step:p1:li-product
KIND: step
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-product@L1150-L1152
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-product@L1150-L1152
CONTRACT_ID: step:p1:li-product
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S subset R^n x R^n; F:S->R^n x R^n Lambda-Lipschitz in the max norm; for the preimage claim Phi:A->R^n x R^n injective with Lipschitz inverse and N of outer measure zero; product Lebesgue measure
SOURCE_QUANTIFIERS: n; d=2n
SOURCE_CONCLUSION: both claims hold on R^n x R^n with max norm and product Lebesgue measure
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:lip-image-product, step:p1:li-sum, step:p1:li-preimage
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:lip-image-product | blueprint/parts/p1-analysis.tex#step:p1:li-product@L1151-L1151 | identification of R^n x R^n with R^{2n}
EDGE: step:p1:li-sum | blueprint/parts/p1-analysis.tex#step:p1:li-product@L1151-L1152 | case d=2n of the image estimate
EDGE: step:p1:li-preimage | blueprint/parts/p1-analysis.tex#step:p1:li-product@L1151-L1152 | case d=2n of the preimage claim
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:mc-components

```text
NODE: step:p1:mc-components
KIND: step
TITLE: All components
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1172-L1175
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1172-L1175
CONTRACT_ID: step:p1:mc-components
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X metric space; S subset X; Lambda>=0; phi:S->R^d Lambda-Lipschitz in max norm; U_j is the scalar extension constructed in the preceding step
SOURCE_QUANTIFIERS: max norm on R^d
SOURCE_CONCLUSION: U=(U_j) is a Lambda-Lipschitz extension of phi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:mc-component
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:mc-component | blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1172-L1174 | componentwise extensions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

## Replacement: step:p1:mc-clamp

```text
NODE: step:p1:mc-clamp
KIND: step
TITLE: Clamping
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1177-L1180
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1177-L1180
CONTRACT_ID: step:p1:mc-clamp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X metric space; S subset X; Lambda>=0; phi:S->R^d Lambda-Lipschitz in max norm; |phi|<=beta on S; U is the preceding constructed extension
SOURCE_QUANTIFIERS: clamping Phi_j=max(-beta,min(beta,U_j))
SOURCE_CONCLUSION: Phi is a Lambda-Lipschitz extension of phi with |Phi|<=beta on X
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:mc-components
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:mc-components | blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1178-L1179 | clamp the extension U
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L1178-L1180 uses the interval [-beta,beta] and claims |Phi|<=beta but does not assume beta>=0. For nonempty X, S empty and beta<0, the premise is vacuous and no such bounded extension exists. Report the missing source restriction; do not silently add it to SOURCE_HYPOTHESES. The extension without the optional sup bound is unaffected.
```

## Replacement: step:p1:lipeo-zero

```text
NODE: step:p1:lipeo-zero
KIND: step
TITLE: The set where $G$ vanishes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1209-L1211
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1209-L1211
CONTRACT_ID: step:p1:lipeo-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G:R^d->R^d lambda-Lipschitz with lambda<1; Psi=id+G; G=0 on Z-prime subset R^d
SOURCE_QUANTIFIERS: Z'
SOURCE_CONCLUSION: Psi maps R^d minus Z' onto itself
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:lipeo-fixed, step:p1:lipeo-onto
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:lipeo-fixed | blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1210-L1211 | bijection fixing Z' pointwise preserves the complement
EDGE: step:p1:lipeo-onto | blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1210-L1210 | Psi is a bijection of R^d
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
```

Checks: corpus hashes PASS (5/5); anchor identity comparisons PASS (25/25); every supplied node has one review-table row; every supplied coverage item was read and its mapping/exclusion checked. Source implementation files and providers were not consulted. #print axioms is inapplicable because this task forbids Lean execution.

Uncertainties: these fragments require orchestrator adjudication and assembly; no graph patch is applied here. Pinned-paper errata: none identified in the permitted corpus review. Deviations introduced: none; only review reports were written.
