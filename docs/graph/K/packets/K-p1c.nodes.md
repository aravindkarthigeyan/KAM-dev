NODE: bp:p1:iteration
KIND: lemma
TITLE: Quadratic iteration on nested strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1007-L1012
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1014-L1028
CONTRACT_ID: bp:p1:iteration
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Q>0; p>=0; reals y_0,y_1,...>=0 with y_{m+1}<=Q 2^{pm} y_m^2 for all m>=0; Q 2^p y_0<=1/2 (second claim: only q:=Q 2^p y_0<=1)
SOURCE_QUANTIFIERS: for all Q>0, p>=0, sequences (y_m) satisfying the recursion; then for all m>=0
SOURCE_CONCLUSION: y_m<=Q^{-1} 2^{-p(m+1)} 2^{-2^m} for all m>=0 (so y_m->0); under q<=1 only: y_m<=q^{2^m-1} 2^{-pm} y_0 for all m>=0
CONSTANT_SCOPE: none (Q, p, y_0 arbitrary; no constants introduced)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:it-super, step:p1:it-linear
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:it-super | blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1015-L1020 | proof step of this result
EDGE: step:p1:it-linear | blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1022-L1027 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:it-super
KIND: step
TITLE: Super-exponential decay
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-super@L1015-L1020
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-super@L1015-L1020
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:it-linear
KIND: step
TITLE: The form linear in $y_0$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-linear@L1022-L1027
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-linear@L1022-L1027
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:real-restriction-consequences
KIND: claim
TITLE: Real restrictions of linear and primary maps
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1037-L1043
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1037-L1043
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Self-contained remark; proof is inline (real h with |h|<=1 are a subset of complex ones; primarity identity at the real point x).
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1041-L1042 | unfold primarity at the real point x
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1041-L1042 | the restriction takes real values
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1041-L1042 | real x belongs to the positive-width strip

NODE: bp:p1:real-restriction
KIND: lemma
TITLE: Real restriction
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1045-L1049
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1051-L1069
CONTRACT_ID: bp:p1:real-restriction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic on T_rho and real on reals; for the primary claim, K primary on T_rho (p=2n)
SOURCE_QUANTIFIERS: K, rho, p (=2n in applications); x in R^n; m in Z^n
SOURCE_CONCLUSION: k=K|_{R^n} real-analytic with real derivative the restriction of the complex derivative; |Dk(x)|<=|DK(x)| for x in R^n; if K primary, k(x+m)=k(x)+(m,0) for m in Z^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:rr-analytic, step:p1:rr-derivative, step:p1:rr-consequences
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:rr-analytic | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1055-L1057 | proof step of this result
EDGE: step:p1:rr-derivative | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1059-L1063 | proof step of this result
EDGE: step:p1:rr-consequences | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1065-L1068 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:rr-analytic
KIND: step
TITLE: Analyticity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1055-L1057
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1055-L1057
CONTRACT_ID: step:p1:rr-analytic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K:T_rho->C^p holomorphic with K(R^n) in R^p; T_rho open, T_rho cap R^n=R^n
SOURCE_QUANTIFIERS: k=K|_{R^n}
SOURCE_CONCLUSION: k is real-analytic on R^n as a map into R^p
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-analytic
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-analytic | blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1056-L1057 | part (b) with U=T_rho, m=n, W=C^p gives real analyticity of the restriction
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:rr-derivative
KIND: step
TITLE: The derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-derivative@L1059-L1063
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-derivative@L1059-L1063
CONTRACT_ID: step:p1:rr-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic on T_rho, K(R^n) in R^p; x in R^n
SOURCE_QUANTIFIERS: real h->0
SOURCE_CONCLUSION: k differentiable at x and Dk(x)h=DK(x)h for h in R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:rr-consequences
KIND: step
TITLE: Norm and primarity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1065-L1068
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1065-L1068
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
EDGE: step:p1:rr-derivative | blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1066-L1067 | previous step: Dk(x) is the restriction of DK(x)
EDGE: bp:p1:real-restriction-consequences | blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1067-L1068 | remark gives the norm bound and the primary identity
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:hamiltonian-real
KIND: lemma
TITLE: Real and complex Hamiltonian fields
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1071-L1077
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1079-L1106
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
EDGE: step:p1:hr-derivative | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1083-L1089 | proof step of this result
EDGE: step:p1:hr-components | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1091-L1097 | proof step of this result
EDGE: step:p1:hr-matrix | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1099-L1105 | proof step of this result
EDGE: bp:p0:hamiltonian#hamiltonianVectorField | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1073-L1074 | X_H in the statement is the frozen real vector field
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1073-L1074 | X_h, X_varphi in the statement is the frozen complex vector field
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1075-L1076 | Omega_0 in the statement
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hr-derivative
KIND: step
TITLE: The real derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-derivative@L1083-L1089
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-derivative@L1083-L1089
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hr-components
KIND: step
TITLE: Components
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1091-L1097
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1091-L1097
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
EDGE: step:p1:hr-derivative | blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1097-L1097 | previous step with e=(0,e_i) and e=(e_i,0)
EDGE: bp:p0:hamiltonian#hamiltonianVectorField | blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1092-L1094 | component formula for X_H by the frozen definition
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1092-L1095 | component formula for X_h by the frozen definition
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hr-matrix
KIND: step
TITLE: Matrix form
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1099-L1105
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1099-L1105
CONTRACT_ID: step:p1:hr-matrix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi holomorphic; frozen formula X_phi=(d_I phi,-d_theta phi)
SOURCE_QUANTIFIERS: phi holomorphic
SOURCE_CONCLUSION: X_phi=J(Dphi)^T with J=-Omega_0=Omega_0^{-1}; equivalently Omega_0 X_phi=(Dphi)^T; J as a map L(C^{2n},C)->C^{2n}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p0:hamiltonian#omegaZero, bp:p1:operator-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1101-L1102 | frozen formula for X_phi
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1103-L1103 | Omega_0 identified with -J
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1103-L1104 | Omega_0^2=-I gives J=-Omega_0=Omega_0^{-1}
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:lip-image-product
KIND: claim
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1116-L1120
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1116-L1120
CONTRACT_ID: bp:p1:lip-image-product
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: R^n x R^n identified with R^{2n}
SOURCE_QUANTIFIERS: n
SOURCE_CONCLUSION: the identification is an isometry for the max norm of the two components and carries the product of Lebesgue measures to Lebesgue measure on R^{2n}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-measure | blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1119-L1119 | product of Lebesgue measures is Lebesgue measure on R^2n, cited as (E11)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the identification is (E11); repaired F1

NODE: bp:p1:lip-image
KIND: lemma
TITLE: Lipschitz images and preimages
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1122-L1127
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1129-L1164
CONTRACT_ID: bp:p1:lip-image
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S subset R^d; F:S->R^d with |F(x)-F(y)|<=Lambda|x-y|; Phi:A->R^d injective with Lipschitz inverse Phi^{-1}:Phi(A)->A; R^d with max norm
SOURCE_QUANTIFIERS: for all d, S, F, Lambda; for all A, Phi, N
SOURCE_CONCLUSION: outer measure meas F(S)<=Lambda^d meas S; meas N=0 implies meas Phi^{-1}(N)=0; both hold on R^n x R^n with the max norm of the components and the product Lebesgue measure
CONSTANT_SCOPE: Lambda is the Lipschitz constant of F (arbitrary)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:li-cubes, step:p1:li-image, step:p1:li-sum, step:p1:li-preimage, step:p1:li-product
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:li-cubes | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1133-L1140 | proof step of this result
EDGE: step:p1:li-image | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1142-L1146 | proof step of this result
EDGE: step:p1:li-sum | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1148-L1153 | proof step of this result
EDGE: step:p1:li-preimage | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1155-L1159 | proof step of this result
EDGE: step:p1:li-product | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1161-L1163 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:li-cubes
KIND: step
TITLE: Covers by cubes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1133-L1140
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1133-L1140
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
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1135-L1136 | definition of outer measure by closed box covers gives boxes R_j
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:li-image
KIND: step
TITLE: Image of one cube
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-image@L1142-L1146
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-image@L1142-L1146
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-image@L1144-L1146 | image lies in a cube; outer measure is bounded by its box volume

NODE: step:p1:li-sum
KIND: step
TITLE: Summation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1148-L1153
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1148-L1153
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
EDGE: step:p1:li-cubes | blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1149-L1150 | cube cover
EDGE: step:p1:li-image | blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1149-L1150 | image of one cube
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1149-L1149 | countable subadditivity
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:li-preimage
KIND: step
TITLE: Preimages of null sets
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1155-L1159
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1155-L1159
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
EDGE: step:p1:li-sum | blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1158-L1159 | Lipschitz image estimate applied to Phi^{-1} on Phi(A)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1157-L1159 | N cap Phi(A) subset N, so its outer measure is zero

NODE: step:p1:li-product
KIND: step
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-product@L1161-L1163
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-product@L1161-L1163
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
EDGE: bp:p1:lip-image-product | blueprint/parts/p1-analysis.tex#step:p1:li-product@L1162-L1162 | identification of R^n x R^n with R^{2n}
EDGE: step:p1:li-sum | blueprint/parts/p1-analysis.tex#step:p1:li-product@L1162-L1163 | case d=2n of the image estimate
EDGE: step:p1:li-preimage | blueprint/parts/p1-analysis.tex#step:p1:li-product@L1162-L1163 | case d=2n of the preimage claim
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:mcshane
KIND: lemma
TITLE: McShane extension
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1166-L1169
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1171-L1192
CONTRACT_ID: bp:p1:mcshane
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X metric space; S subset X; Lambda>=0; phi:S->R^d Lambda-Lipschitz (max norm); optionally |phi|<=beta on S; beta >= 0 (for the clamped extension)
SOURCE_QUANTIFIERS: for all X, S, Lambda, phi, beta
SOURCE_CONCLUSION: phi extends to a Lambda-Lipschitz map on X; the extension can be chosen with |Phi|<=beta on X
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:mc-component, step:p1:mc-components, step:p1:mc-clamp
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:mc-component | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1175-L1181 | proof step of this result
EDGE: step:p1:mc-components | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1183-L1186 | proof step of this result
EDGE: step:p1:mc-clamp | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1188-L1191 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mc-component
KIND: step
TITLE: One component
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-component@L1175-L1181
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-component@L1175-L1181
CONTRACT_ID: step:p1:mc-component
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi_j:S->R Lambda-Lipschitz
SOURCE_QUANTIFIERS: component j
SOURCE_CONCLUSION: U_j(x)=inf_{y in S}(phi_j(y)+Lambda dist(x,y)) is finite, Lambda-Lipschitz and equals phi_j on S (S empty: extension 0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mc-components
KIND: step
TITLE: All components
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1183-L1186
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1183-L1186
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
EDGE: step:p1:mc-component | blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1183-L1185 | componentwise extensions
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mc-clamp
KIND: step
TITLE: Clamping
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1188-L1191
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1188-L1191
CONTRACT_ID: step:p1:mc-clamp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X metric space; S subset X; Lambda>=0; phi:S->R^d Lambda-Lipschitz in max norm; |phi|<=beta on S; U is the preceding constructed extension; beta >= 0 (for the clamped extension)
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
EDGE: step:p1:mc-components | blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1189-L1190 | clamp the extension U
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: repaired F1: the statement now assumes beta >= 0 (blueprint fix)

NODE: bp:p1:lipeo-fixed
KIND: claim
TITLE: Bijections fixing a set
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo-fixed@L1194-L1199
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo-fixed@L1194-L1199
CONTRACT_ID: bp:p1:lipeo-fixed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi a bijection of R^d with Psi(x)=x for x in Z' subset R^d
SOURCE_QUANTIFIERS: Psi, Z'
SOURCE_CONCLUSION: Psi maps R^d minus Z' onto itself
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Self-contained remark; proof is inline (injectivity argument).

NODE: bp:p1:lipeo
KIND: lemma
TITLE: Lipeomorphisms
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1201-L1205
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1207-L1223
CONTRACT_ID: bp:p1:lipeo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G:R^d->R^d lambda-Lipschitz with lambda<1; Psi=id+G; (second claim) G=0 on Z'
SOURCE_QUANTIFIERS: for all d, lambda<1, G, Z'
SOURCE_CONCLUSION: Psi is a bijection of R^d with (1-lambda)|x-y|<=|Psi(x)-Psi(y)|<=(1+lambda)|x-y|; if G=0 on Z' then Psi maps R^d minus Z' onto itself
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:lipeo-bounds, step:p1:lipeo-onto, step:p1:lipeo-zero
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:lipeo-bounds | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1210-L1213 | proof step of this result
EDGE: step:p1:lipeo-onto | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1215-L1218 | proof step of this result
EDGE: step:p1:lipeo-zero | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1220-L1222 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:lipeo-bounds
KIND: step
TITLE: Bi-Lipschitz bounds
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-bounds@L1210-L1213
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-bounds@L1210-L1213
CONTRACT_ID: step:p1:lipeo-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G lambda-Lipschitz, lambda<1
SOURCE_QUANTIFIERS: x,y in R^d
SOURCE_CONCLUSION: (1-lambda)|x-y|<=|Psi(x)-Psi(y)|<=(1+lambda)|x-y|; Psi injective with (1-lambda)^{-1}-Lipschitz inverse on the image
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:lipeo-onto
KIND: step
TITLE: Surjectivity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1215-L1218
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1215-L1218
CONTRACT_ID: step:p1:lipeo-onto
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G lambda-Lipschitz, lambda<1; R^d complete
SOURCE_QUANTIFIERS: y in R^d
SOURCE_CONCLUSION: Psi surjective, hence a bijection of R^d with (1-lambda)^{-1}-Lipschitz inverse
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-banach, step:p1:lipeo-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-banach | blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1216-L1217 | fixed point of the contraction x->y-G(x)
EDGE: step:p1:lipeo-bounds | blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1217-L1218 | injectivity and Lipschitz inverse from the lower bound
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:lipeo-zero
KIND: step
TITLE: The set where $G$ vanishes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1220-L1222
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1220-L1222
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
EDGE: bp:p1:lipeo-fixed | blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1221-L1222 | bijection fixing Z' pointwise preserves the complement
EDGE: step:p1:lipeo-onto | blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1221-L1221 | Psi is a bijection of R^d
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
