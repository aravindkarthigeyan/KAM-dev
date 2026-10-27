NODE: bp:p1:iteration
KIND: lemma
TITLE: Quadratic iteration on nested strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1009-L1014
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1016-L1030
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
EDGE: step:p1:it-super | blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1017-L1022 | proof step of this result
EDGE: step:p1:it-linear | blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1024-L1029 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: PROVED
LEAN_REF: KAM.quadratic_iteration
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:it-super
KIND: step
TITLE: Super-exponential decay
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-super@L1017-L1022
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-super@L1017-L1022
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
LEAN_STATUS: PROVED
LEAN_REF: KAM.quadratic_iteration_super
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:it-linear
KIND: step
TITLE: The form linear in $y_0$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-linear@L1024-L1029
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-linear@L1024-L1029
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
LEAN_STATUS: PROVED
LEAN_REF: KAM.quadratic_iteration_linear
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: bp:p1:real-restriction-consequences
KIND: claim
TITLE: Real restrictions of linear and primary maps
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1039-L1045
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1039-L1045
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
LEAN_STATUS: PROVED
LEAN_REF: KAM.real_restriction_consequences
LEAN_NOTE: prover evidence + independent audits docs/campaign/audits/I-STRIP-5-audit-1.md and -audit-2.md; kernel replay passed (2026-10-27)
NOTE: Self-contained remark; proof is inline (real h with |h|<=1 are a subset of complex ones; primarity identity at the real point x).
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1043-L1044 | unfold primarity at the real point x
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1043-L1044 | the restriction takes real values
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1043-L1044 | real x belongs to the positive-width strip

NODE: bp:p1:real-restriction
KIND: lemma
TITLE: Real restriction
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1047-L1051
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1053-L1071
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
EDGE: step:p1:rr-analytic | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1057-L1059 | proof step of this result
EDGE: step:p1:rr-derivative | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1061-L1065 | proof step of this result
EDGE: step:p1:rr-consequences | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1067-L1070 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: PROVED
LEAN_REF: KAM.real_restriction
LEAN_NOTE: prover evidence + independent audits docs/campaign/audits/I-STRIP-5-audit-1.md and -audit-2.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:rr-analytic
KIND: step
TITLE: Analyticity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1057-L1059
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1057-L1059
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
EDGE: bp:p1:holomorphic-analytic | blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1058-L1059 | part (b) with U=T_rho, m=n, W=C^p gives real analyticity of the restriction
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: PROVED
LEAN_REF: KAM.analyticOnNhd_realRestriction
LEAN_NOTE: prover evidence + independent audits docs/campaign/audits/I-STRIP-5-audit-1.md and -audit-2.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:rr-derivative
KIND: step
TITLE: The derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-derivative@L1061-L1065
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-derivative@L1061-L1065
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
LEAN_STATUS: PROVED
LEAN_REF: KAM.realRestriction_fderiv
LEAN_NOTE: prover evidence + independent audits docs/campaign/audits/I-STRIP-5-audit-1.md and -audit-2.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:rr-consequences
KIND: step
TITLE: Norm and primarity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1067-L1070
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1067-L1070
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
EDGE: step:p1:rr-derivative | blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1068-L1069 | previous step: Dk(x) is the restriction of DK(x)
EDGE: bp:p1:real-restriction-consequences | blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1069-L1070 | remark gives the norm bound and the primary identity
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.norm_fderiv_realRestriction_le, KAM.realRestriction_add_int
LEAN_NOTE: prover evidence + independent audits docs/campaign/audits/I-STRIP-5-audit-1.md and -audit-2.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: bp:p1:hamiltonian-real
KIND: lemma
TITLE: Real and complex Hamiltonian fields
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1073-L1079
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1081-L1108
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
EDGE: step:p1:hr-derivative | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1085-L1091 | proof step of this result
EDGE: step:p1:hr-components | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1093-L1099 | proof step of this result
EDGE: step:p1:hr-matrix | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1101-L1107 | proof step of this result
EDGE: bp:p0:hamiltonian#hamiltonianVectorField | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1075-L1076 | X_H in the statement is the frozen real vector field
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1075-L1076 | X_h, X_varphi in the statement is the frozen complex vector field
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1077-L1078 | Omega_0 in the statement
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.hamiltonian_real
LEAN_NOTE: prover evidence + independent audits docs/campaign/audits/I-STRIP-5-audit-1.md and -audit-2.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:hr-derivative
KIND: step
TITLE: The real derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-derivative@L1085-L1091
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-derivative@L1085-L1091
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
LEAN_STATUS: PROVED
LEAN_REF: KAM.hamiltonian_real_fderiv
LEAN_NOTE: prover evidence + independent audits docs/campaign/audits/I-STRIP-5-audit-1.md and -audit-2.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:hr-components
KIND: step
TITLE: Components
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1093-L1099
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1093-L1099
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
EDGE: step:p1:hr-derivative | blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1099-L1099 | previous step with e=(0,e_i) and e=(e_i,0)
EDGE: bp:p0:hamiltonian#hamiltonianVectorField | blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1094-L1096 | component formula for X_H by the frozen definition
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1094-L1097 | component formula for X_h by the frozen definition
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.hamiltonianVectorField_eq_of_real
LEAN_NOTE: prover evidence + independent audits docs/campaign/audits/I-STRIP-5-audit-1.md and -audit-2.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:hr-matrix
KIND: step
TITLE: Matrix form
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1101-L1107
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1101-L1107
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
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1103-L1104 | frozen formula for X_phi
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1105-L1105 | Omega_0 identified with -J
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1105-L1106 | Omega_0^2=-I gives J=-Omega_0=Omega_0^{-1}
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: PROVED
LEAN_REF: KAM.hamiltonianVectorFieldℂ_eq_neg_omegaZero, KAM.omegaZero_hamiltonianVectorFieldℂ
LEAN_NOTE: prover evidence + independent audits docs/campaign/audits/I-STRIP-5-audit-1.md and -audit-2.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: bp:p1:lip-image-product
KIND: claim
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1118-L1122
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1118-L1122
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
EDGE: bp:p1:ext-measure | blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1121-L1121 | product of Lebesgue measures is Lebesgue measure on R^2n, cited as (E11)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: PROVED
LEAN_REF: KAM.lip_image_product
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: the identification is (E11); repaired F1

NODE: bp:p1:lip-image
KIND: lemma
TITLE: Lipschitz images and preimages
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1124-L1129
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1131-L1166
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
EDGE: step:p1:li-cubes | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1135-L1142 | proof step of this result
EDGE: step:p1:li-image | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1144-L1148 | proof step of this result
EDGE: step:p1:li-sum | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1150-L1155 | proof step of this result
EDGE: step:p1:li-preimage | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1157-L1161 | proof step of this result
EDGE: step:p1:li-product | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1163-L1165 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: PROVED
LEAN_REF: KAM.lip_image (+ KAM.lip_image_prod, KAM.lip_preimage_null, KAM.lip_preimage_null_prod)
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27); proved by the blueprint's stated alternative route (Mathlib hausdorffMeasure_pi_real + LipschitzOnWith.hausdorffMeasure_image_le), so steps li-cubes and li-image are bypassed
NOTE: -

NODE: step:p1:li-cubes
KIND: step
TITLE: Covers by cubes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1135-L1142
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1135-L1142
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
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1137-L1138 | definition of outer measure by closed box covers gives boxes R_j
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: BYPASSED
LEAN_REF: -
LEAN_NOTE: not formalized as a separate declaration; its parent bp:p1:lip-image is PROVED by the blueprint's alternative Mathlib route (docs/campaign/audits/I-LIP-audit-1.md, note N1)
NOTE: -

NODE: step:p1:li-image
KIND: step
TITLE: Image of one cube
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-image@L1144-L1148
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-image@L1144-L1148
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
LEAN_STATUS: BYPASSED
LEAN_REF: -
LEAN_NOTE: not formalized as a separate declaration; its parent bp:p1:lip-image is PROVED by the blueprint's alternative Mathlib route (docs/campaign/audits/I-LIP-audit-1.md, note N1)
NOTE: -
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-image@L1146-L1148 | image lies in a cube; outer measure is bounded by its box volume

NODE: step:p1:li-sum
KIND: step
TITLE: Summation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1150-L1155
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1150-L1155
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
EDGE: step:p1:li-cubes | blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1151-L1152 | cube cover
EDGE: step:p1:li-image | blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1151-L1152 | image of one cube
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1151-L1151 | countable subadditivity
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.lip_image
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:li-preimage
KIND: step
TITLE: Preimages of null sets
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1157-L1161
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1157-L1161
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
EDGE: step:p1:li-sum | blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1160-L1161 | Lipschitz image estimate applied to Phi^{-1} on Phi(A)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.lip_preimage_null
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p1-analysis.tex#step:p1:li-preimage@L1159-L1161 | N cap Phi(A) subset N, so its outer measure is zero

NODE: step:p1:li-product
KIND: step
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-product@L1163-L1165
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-product@L1163-L1165
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
EDGE: bp:p1:lip-image-product | blueprint/parts/p1-analysis.tex#step:p1:li-product@L1164-L1164 | identification of R^n x R^n with R^{2n}
EDGE: step:p1:li-sum | blueprint/parts/p1-analysis.tex#step:p1:li-product@L1164-L1165 | case d=2n of the image estimate
EDGE: step:p1:li-preimage | blueprint/parts/p1-analysis.tex#step:p1:li-product@L1164-L1165 | case d=2n of the preimage claim
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.lip_image_prod, KAM.lip_preimage_null_prod
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: bp:p1:mcshane
KIND: lemma
TITLE: McShane extension
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1168-L1171
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1173-L1194
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
EDGE: step:p1:mc-component | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1177-L1183 | proof step of this result
EDGE: step:p1:mc-components | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1185-L1188 | proof step of this result
EDGE: step:p1:mc-clamp | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1190-L1193 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: PROVED
LEAN_REF: KAM.mcshane (+ KAM.mcshane_prod)
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:mc-component
KIND: step
TITLE: One component
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-component@L1177-L1183
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-component@L1177-L1183
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
LEAN_STATUS: PROVED
LEAN_REF: KAM.mcshane_component
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:mc-components
KIND: step
TITLE: All components
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1185-L1188
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1185-L1188
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
EDGE: step:p1:mc-component | blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1185-L1187 | componentwise extensions
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.mcshane_components
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:mc-clamp
KIND: step
TITLE: Clamping
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1190-L1193
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1190-L1193
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
EDGE: step:p1:mc-components | blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1191-L1192 | clamp the extension U
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: PROVED
LEAN_REF: KAM.mcshane_clamp
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: repaired F1: the statement now assumes beta >= 0 (blueprint fix)

NODE: bp:p1:lipeo-fixed
KIND: claim
TITLE: Bijections fixing a set
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo-fixed@L1196-L1201
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo-fixed@L1196-L1201
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
LEAN_STATUS: PROVED
LEAN_REF: KAM.lipeo_fixed
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: Self-contained remark; proof is inline (injectivity argument).

NODE: bp:p1:lipeo
KIND: lemma
TITLE: Lipeomorphisms
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1203-L1207
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1209-L1225
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
EDGE: step:p1:lipeo-bounds | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1212-L1215 | proof step of this result
EDGE: step:p1:lipeo-onto | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1217-L1220 | proof step of this result
EDGE: step:p1:lipeo-zero | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1222-L1224 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: PROVED
LEAN_REF: KAM.lipeo (via KAM.lipeo_complete; constants KAM.lipeo_half)
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:lipeo-bounds
KIND: step
TITLE: Bi-Lipschitz bounds
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-bounds@L1212-L1215
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-bounds@L1212-L1215
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
LEAN_STATUS: PROVED
LEAN_REF: KAM.lipeo_bounds
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:lipeo-onto
KIND: step
TITLE: Surjectivity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1217-L1220
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1217-L1220
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
EDGE: bp:p1:ext-banach | blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1218-L1219 | fixed point of the contraction x->y-G(x)
EDGE: step:p1:lipeo-bounds | blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1219-L1220 | injectivity and Lipschitz inverse from the lower bound
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: sol-review-r1
LEAN_STATUS: PROVED
LEAN_REF: KAM.lipeo_onto
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:lipeo-zero
KIND: step
TITLE: The set where $G$ vanishes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1222-L1224
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1222-L1224
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
EDGE: bp:p1:lipeo-fixed | blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1223-L1224 | bijection fixing Z' pointwise preserves the complement
EDGE: step:p1:lipeo-onto | blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1223-L1223 | Psi is a bijection of R^d
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1c+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.lipeo_zero
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-LIP-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -
