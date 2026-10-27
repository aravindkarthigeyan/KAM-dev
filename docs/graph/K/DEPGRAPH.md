# Proof dependency database — track K

GRAPH_VERSION: 4
ROOTS: bp:p0:head, bp:p0:headq, bp:p0:g1, bp:p0:g2, bp:p0:g3
CORPUS: blueprint/parts/{p0-conventions,p1-analysis,p2-aposteriori,p3-uniqueness,p4-measure}.tex pinned by SHA-256 in docs/graph/K/CORPUS.sha256 (KAM-dev, 2026-10-27)
CONVENTIONS: docs/graph/K/SPEC.md "Conventions to watch": max norm on C^m and induced operator norm; sup norms on strips T_rho; weighted l1 only inside the cohomological equation (D12); 1-periodicity, averages over [0,1]^n; |k.omega| >= gamma |k|_1^{-tau}; d=n, A=0, primary tori, Omega_0; stated constant dependences; G1 uniform in gamma <= gammabar with mu/2 margins; HEAD rate eps^{1/4}
STANDING_ASSUMPTIONS: -
EXTERNAL_POLICY: the ten Mathlib-level inputs (E1)-(E10) of Part 1 are KIND external nodes bp:p1:ext-*; any other unproved fact is a step node with NOTE SOURCE_GAP
FROZEN_ANCHORS: bp:p0:diophantine#IsDiophantine, bp:p0:domains#complexStrip, bp:p0:domains#actionNbhd, bp:p0:domains#fundamentalDomain, bp:p0:hamiltonian#hamiltonianVectorField, bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p0:hamiltonian#symplecticForm, bp:p0:hamiltonian#omegaZero, bp:p0:nearlyintegrable#realHamiltonian, bp:p0:nearlyintegrable#frequencyMap, bp:p0:torus#IsInvariantLagrangianTorus, bp:p0:cover#kamCover, bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals, bp:p0:stripdata#invarianceError, bp:p0:stripdata#dotC, bp:p0:stripdata#gramMatrix, bp:p0:stripdata#normalFrame, bp:p0:stripdata#torsion, bp:p0:stripdata#torsionAverage, bp:p0:head, bp:p0:headq, bp:p0:g1, bp:p0:g2, bp:p0:g3
FROZEN_MANIFEST: manifest/frozen-anchors.json | sha256:8be8871b726f78aca2d9ad235157c693662486bef05830c229ee5d5440d06ca8
WRITER: claude-main-orchestrator
GLOBAL_REVIEWER: -
GLOBAL_REVIEW_REF: -

The dependency direction is `NODE -> prerequisite`. Node blocks are assembled from `docs/graph/K/packets/<slice>.nodes.md`; edit those, then re-run `scripts/depgraph_assemble.py`.

## Nodes

NODE: bp:p0:diophantine#IsDiophantine
KIND: definition
TITLE: Diophantine vectors: KAM.IsDiophantine
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:diophantine@L32-L38
PROOF_SOURCE: -
CONTRACT_ID: kam.IsDiophantine
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: gamma, tau real; omega in R^n; k in Z^n, |k|_1 = sum_i |k_i|
SOURCE_QUANTIFIERS: gamma,tau in R, omega in R^n (n fixed), for every k in Z^n \ {0}
SOURCE_CONCLUSION: defines omega in Dio_{gamma,tau} iff gamma/|k|_1^tau <= |k.omega| for every nonzero integer k
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/IsDiophantine.lean
FROZEN_DECL: KAM.IsDiophantine
FROZEN_ANCHOR_ID: kam.IsDiophantine.v1
FROZEN_ABI_SHA256: 24a486c6ccc5648791465ec3577c2e37fd464ecaec8f0dab9c74a5588535e717
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

NODE: bp:p0:domains#complexStrip
KIND: definition
TITLE: Complex neighbourhoods and the fundamental domain: KAM.complexStrip
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45
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

NODE: bp:p0:domains#actionNbhd
KIND: definition
TITLE: Complex neighbourhoods and the fundamental domain: KAM.actionNbhd
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45
PROOF_SOURCE: -
CONTRACT_ID: kam.actionNbhd
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B subset R^n; r > 0
SOURCE_QUANTIFIERS: B subset R^n, r > 0
SOURCE_CONCLUSION: defines the complex neighbourhood B_r = {I in C^n : exists J in B, |I-J| < r} (max norm)
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/ActionNbhd.lean
FROZEN_DECL: KAM.actionNbhd
FROZEN_ANCHOR_ID: kam.actionNbhd.v1
FROZEN_ABI_SHA256: b05e2aeddf393c0b232bd809f64d9d8040e0fdf54248c4f880ab1ad98c040f21
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

NODE: bp:p0:domains#fundamentalDomain
KIND: definition
TITLE: Complex neighbourhoods and the fundamental domain: KAM.fundamentalDomain
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:domains@L40-L45
PROOF_SOURCE: -
CONTRACT_ID: kam.fundamentalDomain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B subset R^n
SOURCE_QUANTIFIERS: B subset R^n
SOURCE_CONCLUSION: defines the fundamental domain F_B = [0,1)^n x B of T^n x B, with product Lebesgue measure
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/FundamentalDomain.lean
FROZEN_DECL: KAM.fundamentalDomain
FROZEN_ANCHOR_ID: kam.fundamentalDomain.v1
FROZEN_ABI_SHA256: 810177265bdc6565103c4424a87272ae1769c4479cde418f98ce4b0c917946c2
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

NODE: bp:p0:hamiltonian#hamiltonianVectorField
KIND: definition
TITLE: Hamiltonian vector fields, symplectic form: KAM.hamiltonianVectorField
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:hamiltonian@L47-L55
PROOF_SOURCE: -
CONTRACT_ID: kam.hamiltonianVectorField
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H : R^n x R^n -> R
SOURCE_QUANTIFIERS: H real function on R^n x R^n, point z
SOURCE_CONCLUSION: defines X_H(z) = (d_I H(z), -d_theta H(z))
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/HamiltonianVectorField.lean
FROZEN_DECL: KAM.hamiltonianVectorField
FROZEN_ANCHOR_ID: kam.hamiltonianVectorField.v1
FROZEN_ABI_SHA256: 427a145572df4c3e14079cf88feb16d60e1cd92fcd1770faddd36ad706562ca6
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

NODE: bp:p0:hamiltonian#hamiltonianVectorFieldC
KIND: definition
TITLE: Hamiltonian vector fields, symplectic form: KAM.hamiltonianVectorFieldℂ
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:hamiltonian@L47-L55
PROOF_SOURCE: -
CONTRACT_ID: kam.hamiltonianVectorFieldℂ
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h holomorphic on an open subset of C^n x C^n
SOURCE_QUANTIFIERS: h holomorphic on an open subset of C^n x C^n, point z
SOURCE_CONCLUSION: defines X_h by the same formula as X_H with complex derivatives: X_h(z) = (d_I h(z), -d_theta h(z))
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/HamiltonianVectorFieldC.lean
FROZEN_DECL: KAM.hamiltonianVectorFieldℂ
FROZEN_ANCHOR_ID: kam.hamiltonianVectorFieldℂ.v1
FROZEN_ABI_SHA256: 482764b7e8e1691b3c3c182bca9b959f0d657e126c6b21b837ff0516f91e4f0d
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

NODE: bp:p0:hamiltonian#symplecticForm
KIND: definition
TITLE: Hamiltonian vector fields, symplectic form: KAM.symplecticForm
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:hamiltonian@L47-L55
PROOF_SOURCE: -
CONTRACT_ID: kam.symplecticForm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: vectors (a,b),(c,d) in R^n x R^n)
SOURCE_QUANTIFIERS: (a,b),(c,d) in R^n x R^n
SOURCE_CONCLUSION: defines omega_0((a,b),(c,d)) = sum_i (b_i c_i - a_i d_i), i.e. omega_0 = sum_i dI_i ^ dtheta_i
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/SymplecticForm.lean
FROZEN_DECL: KAM.symplecticForm
FROZEN_ANCHOR_ID: kam.symplecticForm.v1
FROZEN_ABI_SHA256: 542b8d8eb08283f5c961a969dd96003cbb23fc447da8ea444498cb92a48f6d75
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

NODE: bp:p0:hamiltonian#omegaZero
KIND: definition
TITLE: Hamiltonian vector fields, symplectic form: KAM.omegaZero
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:hamiltonian@L47-L55
PROOF_SOURCE: -
CONTRACT_ID: kam.omegaZero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: (a,b) in vectors of R^n x R^n or C^n x C^n)
SOURCE_QUANTIFIERS: (a,b) in R^n x R^n (and its complexification)
SOURCE_CONCLUSION: defines Omega_0(a,b) = (-b,a), the matrix [[0,-I],[I,0]] of omega_0
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/OmegaZero.lean
FROZEN_DECL: KAM.omegaZero
FROZEN_ANCHOR_ID: kam.omegaZero.v1
FROZEN_ABI_SHA256: 32a39d2730c3b399c1bb81f1b709931dbdea47635807e8036db3b25116ef457b
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

NODE: bp:p0:nearlyintegrable#realHamiltonian
KIND: definition
TITLE: The integrable part, the perturbation, the frequency map: KAM.realHamiltonian
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:nearlyintegrable@L65-L71
PROOF_SOURCE: -
CONTRACT_ID: kam.realHamiltonian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h : C^n -> C; f : C^n x C^n -> C
SOURCE_QUANTIFIERS: h, f as stated; (theta,I) real points
SOURCE_CONCLUSION: defines the real Hamiltonian H(theta,I) = Re(h(I) + f(theta,I)) at real points
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/RealHamiltonian.lean
FROZEN_DECL: KAM.realHamiltonian
FROZEN_ANCHOR_ID: kam.realHamiltonian.v1
FROZEN_ABI_SHA256: ea510392f643a3fce65df6d4bc826d902d7b2277f67b0c009e3522d5659a0fab
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

NODE: bp:p0:nearlyintegrable#frequencyMap
KIND: definition
TITLE: The integrable part, the perturbation, the frequency map: KAM.frequencyMap
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:nearlyintegrable@L65-L71
PROOF_SOURCE: -
CONTRACT_ID: kam.frequencyMap
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h : C^n -> C; I real
SOURCE_QUANTIFIERS: h as stated, I real
SOURCE_CONCLUSION: defines the frequency map nabla h(I), the real gradient of I -> Re h(I) at real I
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/FrequencyMap.lean
FROZEN_DECL: KAM.frequencyMap
FROZEN_ANCHOR_ID: kam.frequencyMap.v1
FROZEN_ABI_SHA256: c9326077b299282bff92fdb8a3a849f512167fd4dc8e859bb0fdf1662f525cc5
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

NODE: bp:p0:torus#IsInvariantLagrangianTorus
KIND: definition
TITLE: Invariant Lagrangian torus: KAM.IsInvariantLagrangianTorus
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:torus@L73-L81
PROOF_SOURCE: -
CONTRACT_ID: kam.IsInvariantLagrangianTorus
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H : R^n x R^n -> R; omega in R^n; K : R^n -> R^n x R^n
SOURCE_QUANTIFIERS: H, omega, K; (i)-(vi) quantified over theta, theta' in R^n, k in Z^n, u,v, t in R as displayed
SOURCE_CONCLUSION: defines K an invariant Lagrangian torus of H with frequency omega: (i) K real-analytic; (ii) K(theta+k)=K(theta)+(k,0); (iii) K(theta')=K(theta)+(k,0) implies theta'=theta+k; (iv) DK(theta) injective; (v) omega_0(DK u, DK v)=0; (vi) d/dt K(theta+t omega) = X_H(K(theta+t omega))
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/IsInvariantLagrangianTorus.lean
FROZEN_DECL: KAM.IsInvariantLagrangianTorus
FROZEN_ANCHOR_ID: kam.IsInvariantLagrangianTorus.v1
FROZEN_ABI_SHA256: 6b48dce61c4419bba274f6bb9fb3d9ae3eb888906c7eb1b5b35e1345d36fb925
DEPS: bp:p0:hamiltonian#symplecticForm, bp:p0:hamiltonian#hamiltonianVectorField
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:hamiltonian#symplecticForm | blueprint/parts/p0-conventions.tex#bp:p0:torus@L77-L77 | condition (v) uses omega_0
EDGE: bp:p0:hamiltonian#hamiltonianVectorField | blueprint/parts/p0-conventions.tex#bp:p0:torus@L78-L78 | condition (vi) uses X_H
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p0:cover#kamCover
KIND: definition
TITLE: The KAM cover: KAM.kamCover
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:cover@L83-L89
PROOF_SOURCE: -
CONTRACT_ID: kam.kamCover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h, f, B, r_0, tau, delta given
SOURCE_QUANTIFIERS: h,f,B,r_0,tau,delta; z; then exists K,omega,gamma,I_0
SOURCE_CONCLUSION: defines the KAM cover K(delta): the set of z in K(R^n) such that for some K,omega,gamma,I_0: gamma>0; omega in Dio_{gamma,tau}; K invariant Lagrangian torus of H with frequency omega; every action K(theta)_2 within r_0 of B; I_0 in B and nabla h(I_0)=omega; |K(theta)-(theta,I_0)| <= delta for all theta
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/KamCover.lean
FROZEN_DECL: KAM.kamCover
FROZEN_ANCHOR_ID: kam.kamCover.v1
FROZEN_ABI_SHA256: f9c676f0007ab98884cb96e9c3f8fb979465c5dcf587d8178451fb7846709f62
DEPS: bp:p0:diophantine#IsDiophantine, bp:p0:torus#IsInvariantLagrangianTorus, bp:p0:nearlyintegrable#realHamiltonian, bp:p0:nearlyintegrable#frequencyMap
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p0-conventions.tex#bp:p0:cover@L85-L85 | omega in Dio_{gamma,tau}
EDGE: bp:p0:torus#IsInvariantLagrangianTorus | blueprint/parts/p0-conventions.tex#bp:p0:cover@L85-L86 | K invariant Lagrangian torus of H
EDGE: bp:p0:nearlyintegrable#realHamiltonian | blueprint/parts/p0-conventions.tex#bp:p0:cover@L86-L86 | H is the real Hamiltonian built from h,f
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p0-conventions.tex#bp:p0:cover@L87-L87 | nabla h(I_0)=omega
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p0:stripdata#IsPrimaryOnStrip
KIND: definition
TITLE: Torus data on strips: KAM.IsPrimaryOnStrip
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101
PROOF_SOURCE: -
CONTRACT_ID: kam.IsPrimaryOnStrip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K : C^n -> C^n x C^n; rho
SOURCE_QUANTIFIERS: K, rho; theta in T_rho, k in Z^n
SOURCE_CONCLUSION: defines K primary on T_rho: K(theta+k)=K(theta)+(k,0) for theta in T_rho, k in Z^n
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/IsPrimaryOnStrip.lean
FROZEN_DECL: KAM.IsPrimaryOnStrip
FROZEN_ANCHOR_ID: kam.IsPrimaryOnStrip.v1
FROZEN_ABI_SHA256: 3e3ec50a4ddc91e4ce8c9cc082a1bfb7387ad08b9dba70baed76847df2f86680
DEPS: bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L92-L92 | strip T_rho used in the definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p0:stripdata#IsRealOnReals
KIND: definition
TITLE: Torus data on strips: KAM.IsRealOnReals
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101
PROOF_SOURCE: -
CONTRACT_ID: kam.IsRealOnReals
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K : C^n -> C^n x C^n
SOURCE_QUANTIFIERS: K
SOURCE_CONCLUSION: defines K real on reals: K(R^n) subset R^n x R^n
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/IsRealOnReals.lean
FROZEN_DECL: KAM.IsRealOnReals
FROZEN_ANCHOR_ID: kam.IsRealOnReals.v1
FROZEN_ABI_SHA256: 6549c22016139f44ca97ba901aa4927905970838ce283fef53b30c223dfabbb5
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

NODE: bp:p0:stripdata#invarianceError
KIND: definition
TITLE: Torus data on strips: KAM.invarianceError
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101
PROOF_SOURCE: -
CONTRACT_ID: kam.invarianceError
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K : C^n -> C^n x C^n; h holomorphic; omega in R^n
SOURCE_QUANTIFIERS: h, K, omega, theta
SOURCE_CONCLUSION: defines the invariance error E(theta) = X_h(K(theta)) - DK(theta) omega
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/InvarianceError.lean
FROZEN_DECL: KAM.invarianceError
FROZEN_ANCHOR_ID: kam.invarianceError.v1
FROZEN_ABI_SHA256: 775e46d01cc020277055f39825a2dbea7f42d822652ba4c92b95c3159fc0a273
DEPS: bp:p0:hamiltonian#hamiltonianVectorFieldC
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L94-L94 | E uses X_h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p0:stripdata#dotC
KIND: definition
TITLE: Torus data on strips: KAM.dotℂ
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101
PROOF_SOURCE: -
CONTRACT_ID: kam.dotℂ
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: complex vectors of equal length)
SOURCE_QUANTIFIERS: vectors u,v in C^m
SOURCE_CONCLUSION: defines the bilinear (non-conjugated) transpose pairing u^T v used in L^T L and N^T Omega_0 X_N
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

NODE: bp:p0:stripdata#gramMatrix
KIND: definition
TITLE: Torus data on strips: KAM.gramMatrix
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101
PROOF_SOURCE: -
CONTRACT_ID: kam.gramMatrix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K : C^n -> C^n x C^n; L = DK (a 2n x n matrix)
SOURCE_QUANTIFIERS: K, theta
SOURCE_CONCLUSION: defines the Gram matrix L^T L with L = DK and the bilinear transpose
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/GramMatrix.lean
FROZEN_DECL: KAM.gramMatrix
FROZEN_ANCHOR_ID: kam.gramMatrix.v1
FROZEN_ABI_SHA256: 3990b90567c6199a3443b1021021aab73e8e5b521b377b96f62981c2b57834ef
DEPS: bp:p0:stripdata#dotC
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:stripdata#dotC | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L95-L95 | Gram matrix uses the bilinear transpose
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p0:stripdata#normalFrame
KIND: definition
TITLE: Torus data on strips: KAM.normalFrame
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101
PROOF_SOURCE: -
CONTRACT_ID: kam.normalFrame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K as above; L^T L (assumed invertible for the formula to be meaningful)
SOURCE_QUANTIFIERS: K, theta
SOURCE_CONCLUSION: defines B = (L^T L)^{-1} and the normal frame N = Omega_0 L B
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

NODE: bp:p0:stripdata#torsion
KIND: definition
TITLE: Torus data on strips: KAM.torsion
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101
PROOF_SOURCE: -
CONTRACT_ID: kam.torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K, h, omega as above; N the normal frame
SOURCE_QUANTIFIERS: h, K, omega, theta
SOURCE_CONCLUSION: defines X_N = DX_h(K) N - DN[omega] and the torsion T = N^T Omega_0 X_N
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/Torsion.lean
FROZEN_DECL: KAM.torsion
FROZEN_ANCHOR_ID: kam.torsion.v1
FROZEN_ABI_SHA256: 6248d8a94564264c3e8525e65f1a6a645815608c795c7def60f04eea1c61a493
DEPS: bp:p0:stripdata#normalFrame, bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p0:hamiltonian#omegaZero, bp:p0:stripdata#dotC
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:stripdata#normalFrame | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L96-L97 | X_N and T use the normal frame N
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L96-L96 | X_N uses DX_h
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L97-L97 | T = N^T Omega_0 X_N
EDGE: bp:p0:stripdata#dotC | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L97-L97 | N^T ... uses the bilinear transpose
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p0:stripdata#torsionAverage
KIND: definition
TITLE: Torus data on strips: KAM.torsionAverage
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L91-L101
PROOF_SOURCE: -
CONTRACT_ID: kam.torsionAverage
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K, h, omega as above
SOURCE_QUANTIFIERS: h, K, omega
SOURCE_CONCLUSION: defines the torsion average avg(T) = int_{[0,1]^n} T(theta) dtheta
CONSTANT_SCOPE: none
FROZEN_FILE: KAM/Frozen/Defs/TorsionAverage.lean
FROZEN_DECL: KAM.torsionAverage
FROZEN_ANCHOR_ID: kam.torsionAverage.v1
FROZEN_ABI_SHA256: 40ce1d2056d5a44fae79b3f6a61108242c23a931d7d577028d8a70b9352e655d
DEPS: bp:p0:stripdata#torsion
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:stripdata#torsion | blueprint/parts/p0-conventions.tex#bp:p0:stripdata@L97-L97 | average of T
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p0:head
KIND: theorem
TITLE: HEAD: positive-measure KAM with rate
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:head@L105-L115
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p0:head@L1200-L1230
CONTRACT_ID: kam.kam_positive_measure
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 2; tau > n-1; s_0, r_0 > 0; B subset R^n open and bounded with meas{I in B : dist(I,B^c) < delta} <= C_B delta for all delta > 0; h holomorphic on B_{r_0}, real on real points, with |I-J| <= L |nabla h(I) - nabla h(J)| on closure of B; f holomorphic on D(s_0,r_0)=T_{s_0} x B_{r_0}, 1-periodic in theta, real on real points; epsilon <= epsilon_0 with |f| <= epsilon on D(s_0,r_0)
SOURCE_QUANTIFIERS: n,tau,s_0,r_0,B,h (with witnesses C_B, L) fixed first; then exists C, epsilon_0 > 0; then for all f, epsilon
SOURCE_CONCLUSION: meas(F_B \ K(C sqrt(epsilon))) <= C epsilon^{1/4}
CONSTANT_SCOPE: C, epsilon_0 depend only on the data n, tau, s_0, r_0, B, h (and the witnesses C_B, L); not on f or epsilon
FROZEN_FILE: KAM/Frozen/Theorems/KamPositiveMeasure.lean
FROZEN_DECL: KAM.kam_positive_measure
FROZEN_ANCHOR_ID: kam.kam_positive_measure.v1
FROZEN_ABI_SHA256: 4c734e37b56b161f141cf03c217a4b47c7014dac1370c1f7863676c39c7c1538
DEPS: step:p4:head-empty, step:p4:head-constants, step:p4:head-negative, step:p4:head-positive, step:p4:head-zero, bp:p0:domains#complexStrip, bp:p0:domains#actionNbhd, bp:p0:domains#fundamentalDomain, bp:p0:cover#kamCover, bp:p0:nearlyintegrable#frequencyMap
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:head-empty | blueprint/parts/p4-measure.tex#bp:p0:head@L1201-L1201 | proof step of this result
EDGE: step:p4:head-constants | blueprint/parts/p4-measure.tex#bp:p0:head@L1204-L1204 | proof step of this result
EDGE: step:p4:head-negative | blueprint/parts/p4-measure.tex#bp:p0:head@L1214-L1214 | proof step of this result
EDGE: step:p4:head-positive | blueprint/parts/p4-measure.tex#bp:p0:head@L1218-L1218 | proof step of this result
EDGE: step:p4:head-zero | blueprint/parts/p4-measure.tex#bp:p0:head@L1226-L1226 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p0-conventions.tex#bp:p0:head@L109-L109 | strip T_{s_0} in D(s_0,r_0)
EDGE: bp:p0:domains#actionNbhd | blueprint/parts/p0-conventions.tex#bp:p0:head@L108-L108 | B_{r_0} in the phase domain and in h holomorphic on B_{r_0}
EDGE: bp:p0:domains#fundamentalDomain | blueprint/parts/p0-conventions.tex#bp:p0:head@L112-L112 | F_B in the conclusion
EDGE: bp:p0:cover#kamCover | blueprint/parts/p0-conventions.tex#bp:p0:head@L112-L112 | K(C sqrt eps) in the conclusion
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p0-conventions.tex#bp:p0:head@L108-L108 | nabla h in the nondegeneracy inequality
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: bp:p0:head | blueprint/parts/p0-conventions.tex#bp:p0:headq@L118-L118 | cited at this line (statement; \ref{bp:p0:head})
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p0-conventions.tex#bp:p0:headq@L119-L119 | strip T_{s_0} in D(s_0,r_0)
EDGE: bp:p0:domains#actionNbhd | blueprint/parts/p0-conventions.tex#bp:p0:headq@L119-L119 | B_{r_0} in the phase domain and in h holomorphic on B_{r_0}
EDGE: bp:p0:domains#fundamentalDomain | blueprint/parts/p0-conventions.tex#bp:p0:headq@L120-L120 | F_B in the conclusion
EDGE: bp:p0:cover#kamCover | blueprint/parts/p0-conventions.tex#bp:p0:headq@L120-L120 | K(C sqrt eps) in the conclusion
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p0-conventions.tex#bp:p0:headq@L119-L119 | nabla h in the nondegeneracy inequality
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p0:g1
KIND: theorem
TITLE: G1: a-posteriori KAM at fixed frequency
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:g1@L124-L140
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1094-L1107
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
EDGE: bp:p2:g1 | blueprint/parts/p2-aposteriori.tex#bp:p0:g1@L1094-L1094 | this result carries \frozen{KAM.aposteriori_kam}: it proves the anchor
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

NODE: bp:p0:g2
KIND: theorem
TITLE: G2: local uniqueness for flows
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:g2@L142-L155
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p0:g2@L512-L568
CONTRACT_ID: kam.local_uniqueness_flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n >= 2; tau >= n-1; rho > 0; M, sigma_K, sigma_B, sigma_T, mu > 0; mathfrak B open and Z^n-invariant; h holomorphic, periodic, real, |Dh|,|X_h|,|DX_h|,|D^2X_h| <= M; omega in Dio_{gamma,tau} with gamma > 0 (no upper bound, no smallness); K_1 holomorphic on T_rho, primary, real on reals, B_mu(K_1(theta)) subset mathfrak B, |DK_1| <= sigma_K - mu, L^T L invertible with |B| <= sigma_B - mu on T_rho, avg(T) invertible with |avg(T)^{-1}| <= sigma_T - mu, E_1 = 0 on T_rho; K_2 holomorphic on T_rho, primary, real on reals, K_2(T_rho) subset mathfrak B, E_2 = 0; |K_1 - K_2| <= c gamma^2 rho^{2 tau} on T_rho
SOURCE_QUANTIFIERS: n,tau,rho,M,sigma_K,sigma_B,sigma_T,mu fixed; exists c > 0; for all mathfrak B,h,K_1,K_2,omega,gamma satisfying the hypotheses
SOURCE_CONCLUSION: exists phi in R^n with K_2(theta) = K_1(theta+phi) on T_{rho/2}
CONSTANT_SCOPE: c > 0 depends only on n,tau,rho,M,sigma_K,sigma_B,sigma_T,mu; not on gamma, mathfrak B, h, K_1, K_2, omega
FROZEN_FILE: KAM/Frozen/Theorems/LocalUniquenessFlow.lean
FROZEN_DECL: KAM.local_uniqueness_flow
FROZEN_ANCHOR_ID: kam.local_uniqueness_flow.v1
FROZEN_ABI_SHA256: 60351404d1e73fe60603199359120cf75ed2012677c70fc7a56d21e117a0f2e7
DEPS: step:p3:g2-constant, step:p3:g2-smallness, step:p3:g2-phase, step:p3:g2-size, step:p3:g2-iteration, step:p3:g2-conclusion, bp:p0:diophantine#IsDiophantine, bp:p0:domains#complexStrip, bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals, bp:p0:stripdata#invarianceError, bp:p0:stripdata#gramMatrix, bp:p0:stripdata#torsionAverage
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:g2-constant | blueprint/parts/p3-uniqueness.tex#bp:p0:g2@L513-L513 | proof step of this result
EDGE: step:p3:g2-smallness | blueprint/parts/p3-uniqueness.tex#bp:p0:g2@L526-L526 | proof step of this result
EDGE: step:p3:g2-phase | blueprint/parts/p3-uniqueness.tex#bp:p0:g2@L535-L535 | proof step of this result
EDGE: step:p3:g2-size | blueprint/parts/p3-uniqueness.tex#bp:p0:g2@L540-L540 | proof step of this result
EDGE: step:p3:g2-iteration | blueprint/parts/p3-uniqueness.tex#bp:p0:g2@L549-L549 | proof step of this result
EDGE: step:p3:g2-conclusion | blueprint/parts/p3-uniqueness.tex#bp:p0:g2@L565-L565 | proof step of this result
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p0-conventions.tex#bp:p0:g2@L145-L145 | omega in Dio_{gamma,tau}
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p0-conventions.tex#bp:p0:g2@L146-L146 | strips T_rho
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p0-conventions.tex#bp:p0:g2@L145-L145 | X_h bounds
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p0-conventions.tex#bp:p0:g2@L146-L146 | K primary
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p0-conventions.tex#bp:p0:g2@L146-L146 | K real on reals
EDGE: bp:p0:stripdata#invarianceError | blueprint/parts/p0-conventions.tex#bp:p0:g2@L149-L149 | error E
EDGE: bp:p0:stripdata#gramMatrix | blueprint/parts/p0-conventions.tex#bp:p0:g2@L147-L147 | L^T L and B
EDGE: bp:p0:stripdata#torsionAverage | blueprint/parts/p0-conventions.tex#bp:p0:g2@L148-L148 | avg(T)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p0:g3
KIND: theorem
TITLE: G3: measure of the non-Diophantine set
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:g3@L157-L162
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p0:g3@L104-L128
CONTRACT_ID: kam.volume_not_diophantine_le
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: tau > n-1; Omega subset R^n bounded
SOURCE_QUANTIFIERS: n,tau,Omega fixed; exists C; for every alpha > 0
SOURCE_CONCLUSION: meas{omega in Omega : omega not in Dio_{alpha,tau}} <= C alpha
CONSTANT_SCOPE: C depends only on n, tau and Omega (via a bound R with Omega subset [-R,R]^n); not on alpha
FROZEN_FILE: KAM/Frozen/Theorems/VolumeNotDiophantineLe.lean
FROZEN_DECL: KAM.volume_not_diophantine_le
FROZEN_ANCHOR_ID: kam.volume_not_diophantine_le.v1
FROZEN_ABI_SHA256: 719393036634dc4d232cc3586abd37667f6ec654c42eb21f15aac7eaeb4f374a
DEPS: step:p4:g3-n0, step:p4:g3-cube, step:p4:g3-union, step:p4:g3-sum, bp:p0:diophantine#IsDiophantine
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:g3-n0 | blueprint/parts/p4-measure.tex#bp:p0:g3@L105-L105 | proof step of this result
EDGE: step:p4:g3-cube | blueprint/parts/p4-measure.tex#bp:p0:g3@L109-L109 | proof step of this result
EDGE: step:p4:g3-union | blueprint/parts/p4-measure.tex#bp:p0:g3@L114-L114 | proof step of this result
EDGE: step:p4:g3-sum | blueprint/parts/p4-measure.tex#bp:p0:g3@L122-L122 | proof step of this result
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p0-conventions.tex#bp:p0:g3@L159-L159 | complement of Dio_{alpha,tau}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-cauchy
KIND: external
TITLE: Cauchy's formulas in one variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-cauchy@L54-L64
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi holomorphic on an open subset of C containing the closed disc |zeta-c|<=r, with values in W
SOURCE_QUANTIFIERS: phi, an open set, c, r, W fixed in the statement; then w with |w-c|<r
SOURCE_CONCLUSION: phi(w)=(2 pi i)^-1 oint_{|zeta-c|=r} phi(zeta)/(zeta-w) dzeta for |w-c|<r; phi'(c)=(2 pi i)^-1 oint phi(zeta)/(zeta-c)^2 dzeta; hence |phi'(c)|<=r^-1 max_{|zeta-c|=r}|phi(zeta)|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-rectangle
KIND: external
TITLE: Cauchy's theorem for rectangles
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-rectangle@L65-L68
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-rectangle
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi holomorphic (values in W) on an open subset of C containing a closed rectangle R with sides parallel to the axes
SOURCE_QUANTIFIERS: phi, R arbitrary with the stated properties
SOURCE_CONCLUSION: the integral of phi over the boundary of R vanishes
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-identity
KIND: external
TITLE: Identity theorem in one variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-identity@L69-L72
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-identity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi holomorphic on a connected open set S in C; phi vanishes on a nonempty open interval of R contained in S
SOURCE_QUANTIFIERS: S, phi, interval arbitrary with the stated properties
SOURCE_CONCLUSION: phi=0 on S
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-mvt
KIND: external
TITLE: Mean value inequality
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-mvt@L73-L76
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-mvt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: C a convex subset of a real or complex normed space; f differentiable at every point of C; |Df|<=A on C
SOURCE_QUANTIFIERS: C, f, A fixed; then x,y in C
SOURCE_CONCLUSION: |f(y)-f(x)|<=A|y-x|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-schwarz
KIND: external
TITLE: Symmetry of second derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-schwarz@L77-L79
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-schwarz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f differentiable near z; Df differentiable at z
SOURCE_QUANTIFIERS: f, z arbitrary with the stated properties
SOURCE_CONCLUSION: the bilinear map D^2f(z) is symmetric
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-integral
KIND: external
TITLE: Integrals
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-integral@L80-L84
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-integral
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: continuous function on a compact box; phi in C^1([a,b]); F W-valued with any norm on W; uniformly convergent series of continuous functions on a box; dominated convergence setting
SOURCE_QUANTIFIERS: the objects named in each clause
SOURCE_CONCLUSION: continuous function on a compact box is integrable and Fubini applies; int_a^b phi'=phi(b)-phi(a); |int F|<=int|F|; term-by-term integration of a uniformly convergent series of continuous functions on a box; dominated convergence theorem holds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-fourier
KIND: external
TITLE: Fourier series on the torus
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-fourier@L85-L89
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-fourier
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v:R^n->C continuous and 1-periodic; sum_k |hat v_k|<infinity
SOURCE_QUANTIFIERS: v arbitrary with the stated properties; then x in R^n
SOURCE_CONCLUSION: v(x)=sum_k hat v_k chi_k(x) for every x in R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-lebesgue
KIND: external
TITLE: Lebesgue outer measure
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-lebesgue@L90-L92
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-lebesgue
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S subset of R^d
SOURCE_QUANTIFIERS: S arbitrary subset of R^d
SOURCE_CONCLUSION: meas S is the infimum of sum_j vol(R_j) over all countable covers of S by closed boxes R_j; meas is monotone and countably subadditive
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-banach
KIND: external
TITLE: Banach's fixed point theorem
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-banach@L93-L94
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-banach
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a contraction of a nonempty complete metric space
SOURCE_QUANTIFIERS: the metric space and contraction arbitrary
SOURCE_CONCLUSION: the contraction has a fixed point
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-cramer
KIND: external
TITLE: Cramer's rule
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-cramer@L95-L97
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-cramer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M a square matrix with det M != 0
SOURCE_QUANTIFIERS: M arbitrary
SOURCE_CONCLUSION: M is invertible and M^-1=(det M)^-1 adj M; entries of adj M and det M are polynomials with integer coefficients in the entries of M
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:operator-norms
KIND: lemma
TITLE: Operator norms, blocks, $\Omega_0$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L107-L111
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L113-L134
CONTRACT_ID: bp:p1:operator-norms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: max norms of Part 0 on vectors; matrices M; block matrices (A B; C D)
SOURCE_QUANTIFIERS: all matrices and blocks of any compatible sizes
SOURCE_CONCLUSION: operator norm of a matrix = max_i sum_j |M_ij|; block matrix norm <= max{|A|+|B|,|C|+|D|}; |Omega_0|=1, Omega_0^T=-Omega_0, Omega_0^2=-I
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:opn-rowsum, step:p1:opn-blocks, step:p1:opn-omega
EDGE: step:p1:opn-rowsum | blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L114-L114 | proof step of this result
EDGE: step:p1:opn-blocks | blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L123-L123 | proof step of this result
EDGE: step:p1:opn-omega | blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L128-L128 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:opn-rowsum
KIND: step
TITLE: Row sums
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-rowsum@L114-L121
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-rowsum@L114-L121
CONTRACT_ID: step:p1:opn-rowsum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M in C^{p x q}; v in C^q with |v|<=1
SOURCE_QUANTIFIERS: for every row i; i_0 a row of largest sum
SOURCE_CONCLUSION: sup_{|v|<=1}|Mv| = max_i sum_j |M_ij| (operator norm equals the largest row sum, also for linear maps identified with matrices)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:opn-blocks
KIND: step
TITLE: Blocks
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L123-L126
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L123-L126
CONTRACT_ID: step:p1:opn-blocks
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: operator norm = largest row sum (row-sum step); block matrix (A B; C D)
SOURCE_QUANTIFIERS: rows of the upper and lower block rows
SOURCE_CONCLUSION: upper block-row sums <= |A|+|B|, lower <= |C|+|D|, so block norm <= max{|A|+|B|,|C|+|D|}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:opn-rowsum
EDGE: step:p1:opn-rowsum | blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L124-L124 | norm as largest row sum
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:opn-omega
KIND: step
TITLE: The matrix $\Omega_0$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L128-L133
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L128-L133
CONTRACT_ID: step:p1:opn-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition of Omega_0(a,b)=(-b,a) (Part 0); operator norm = largest row sum
SOURCE_QUANTIFIERS: a,b in C^n
SOURCE_CONCLUSION: Omega_0^2=-I, Omega_0^T=-Omega_0, every row has one nonzero entry +-1, so |Omega_0|=1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#omegaZero, step:p1:opn-rowsum
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L129-L129 | Omega_0(a,b)=(-b,a) definition
EDGE: step:p1:opn-rowsum | blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L133-L133 | norm equals largest row sum
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:matrix-norms
KIND: lemma
TITLE: Max-norm matrix facts
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L136-L141
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L143-L163
CONTRACT_ID: bp:p1:matrix-norms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: norm |M|=max_i sum_j |M_ij|
SOURCE_QUANTIFIERS: M,N matrices of compatible sizes, v vector; M of size m x m' for the transpose bound; M of size 2n x q resp. p x 2n; M_1,M_2 stacked
SOURCE_CONCLUSION: |MN|<=|M||N|; |Mv|<=|M||v|; |M^T|<=m|M| (m x m' matrices); |Omega_0 M|=|M| (2n x q); |M Omega_0|=|M| (p x 2n); |(M_1;M_2)|=max{|M_1|,|M_2|}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:mn-products, step:p1:mn-transpose, step:p1:mn-signed
EDGE: step:p1:mn-products | blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L144-L144 | proof step of this result
EDGE: step:p1:mn-transpose | blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L150-L150 | proof step of this result
EDGE: step:p1:mn-signed | blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L155-L155 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mn-products
KIND: step
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-products@L144-L148
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-products@L144-L148
CONTRACT_ID: step:p1:mn-products
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |M|=sup_{|v|<=1}|Mv| (operator norms lemma)
SOURCE_QUANTIFIERS: all compatible M,N,v
SOURCE_CONCLUSION: |Mv|<=|M||v| and |MN|<=|M||N|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:mn-products@L145-L145 | cited at this line (step; \ref{bp:p1:operator-norms})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mn-transpose
KIND: step
TITLE: Transposes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-transpose@L150-L153
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-transpose@L150-L153
CONTRACT_ID: step:p1:mn-transpose
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M an m x m' matrix
SOURCE_QUANTIFIERS: row j of M^T
SOURCE_CONCLUSION: |M_ij|<=|M| and |M^T|<=m|M|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mn-signed
KIND: step
TITLE: $\Omega_0$ and stacked blocks
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-signed@L155-L162
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-signed@L155-L162
CONTRACT_ID: step:p1:mn-signed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Omega_0(a,b)=(-b,a) (Part 0): signed permutation matrix
SOURCE_QUANTIFIERS: M of sizes 2n x q, p x 2n; M_1,M_2 stacked
SOURCE_CONCLUSION: |Omega_0 M|=|M Omega_0|=|M| and |(M_1;M_2)|=max{|M_1|,|M_2|}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#omegaZero
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#step:p1:mn-signed@L156-L156 | Omega_0(a,b)=(-b,a) definition
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:neumann
KIND: lemma
TITLE: Neumann series
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:neumann@L165-L169
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:neumann@L171-L191
CONTRACT_ID: bp:p1:neumann
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A invertible; |A^-1||Delta|<=1/2; for the pointwise version A(theta), Delta(theta) matrix-valued with sup norms
SOURCE_QUANTIFIERS: A,Delta square matrices of the same size; pointwise version for theta in a set
SOURCE_CONCLUSION: A+Delta invertible, |(A+Delta)^-1|<=2|A^-1|, |(A+Delta)^-1-A^-1|<=2|A^-1|^2|Delta|; same pointwise for matrix-valued functions with sup norms
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:neu-series, step:p1:neu-inverse, step:p1:neu-difference, step:p1:neu-pointwise
EDGE: step:p1:neu-series | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L172-L172 | proof step of this result
EDGE: step:p1:neu-inverse | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L179-L179 | proof step of this result
EDGE: step:p1:neu-difference | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L183-L183 | proof step of this result
EDGE: step:p1:neu-pointwise | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L187-L187 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:neu-series
KIND: step
TITLE: The Neumann series
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-series@L172-L177
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-series@L172-L177
CONTRACT_ID: step:p1:neu-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X=A^-1 Delta; |A^-1||Delta|<=1/2; matrix norm facts; |I|=1
SOURCE_QUANTIFIERS: square matrices
SOURCE_CONCLUSION: |X^j|<=2^-j, S=sum_j (-X)^j converges absolutely, |S|<=2, S(I+X)=(I+X)S=I
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms, bp:p1:operator-norms
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-series@L173-L173 | cited at this line (step; \ref{bp:p1:matrix-norms})
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-series@L176-L176 | cited at this line (step; \ref{bp:p1:operator-norms})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:neu-inverse
KIND: step
TITLE: The inverse of $A+\Delta$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L179-L181
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L179-L181
CONTRACT_ID: step:p1:neu-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A+Delta=A(I+X); S=(I+X)^-1 with |S|<=2
SOURCE_QUANTIFIERS: A,Delta as in lemma
SOURCE_CONCLUSION: A+Delta invertible with inverse S A^-1 and |(A+Delta)^-1|<=2|A^-1|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:neu-series, bp:p1:matrix-norms
EDGE: step:p1:neu-series | blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L180-L180 | S is the inverse of I+X with norm at most 2
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L181-L181 | submultiplicativity
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:neu-difference
KIND: step
TITLE: The difference
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L183-L185
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L183-L185
CONTRACT_ID: step:p1:neu-difference
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A+Delta invertible, |(A+Delta)^-1|<=2|A^-1|
SOURCE_QUANTIFIERS: as in lemma
SOURCE_CONCLUSION: (A+Delta)^-1-A^-1=-(A+Delta)^-1 Delta A^-1 and |.|<=2|A^-1|^2|Delta|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:neu-inverse, bp:p1:matrix-norms
EDGE: step:p1:neu-inverse | blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L184-L184 | inverse and its bound
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L185-L185 | submultiplicativity
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:neu-pointwise
KIND: step
TITLE: Matrix-valued functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L187-L190
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L187-L190
CONTRACT_ID: step:p1:neu-pointwise
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A(theta) invertible, Delta(theta) for theta in S'; sup|A^-1| sup|Delta|<=1/2
SOURCE_QUANTIFIERS: theta in a set S'
SOURCE_CONCLUSION: hypothesis and conclusions hold at every theta, and pass to the suprema over S'
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:neu-inverse, step:p1:neu-difference
EDGE: step:p1:neu-inverse | blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L190-L190 | conclusions applied at each theta
EDGE: step:p1:neu-difference | blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L190-L190 | conclusions applied at each theta
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:real-inverse
KIND: lemma
TITLE: Real inverses
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L193-L196
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L198-L204
CONTRACT_ID: bp:p1:real-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A an invertible real matrix; A(theta) real for real theta and invertible
SOURCE_QUANTIFIERS: A, theta arbitrary
SOURCE_CONCLUSION: A^-1 is real; A(theta)^-1 real for real theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ri-adjugate
EDGE: step:p1:ri-adjugate | blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L199-L199 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ri-adjugate
KIND: step
TITLE: Adjugate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L199-L203
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L199-L203
CONTRACT_ID: step:p1:ri-adjugate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A real invertible; Cramer's rule
SOURCE_QUANTIFIERS: A real invertible
SOURCE_CONCLUSION: A^-1=(det A)^-1 adj A is real; the pointwise claim is the same at each real theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cramer
EDGE: bp:p1:ext-cramer | blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L202-L202 | cited at this line (step; \ref{bp:p1:ext-cramer})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:holomorphic-regularity
KIND: lemma
TITLE: Derivatives of holomorphic maps
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L215-L224
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L226-L282
CONTRACT_ID: bp:p1:holomorphic-regularity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U in C^m open; F:U->W holomorphic
SOURCE_QUANTIFIERS: U,F,W,m arbitrary; z in U; v,w in C^m; j>=1
SOURCE_CONCLUSION: DF:U->L(C^m,W) holomorphic; D^jF exists and is holomorphic for every j>=1, F is C^infty; |D^{j+1}F(z)|=|D^j(DF)(z)|=|D(D^jF)(z)|; D^2F(z)[v,w]=D^2F(z)[w,v]; d_i d_j F=d_j d_i F on U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-line, step:p1:hreg-integral, step:p1:hreg-differentiate, step:p1:hreg-full, step:p1:hreg-orders, step:p1:hreg-symmetry
EDGE: step:p1:hreg-line | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L227-L227 | proof step of this result
EDGE: step:p1:hreg-integral | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L235-L235 | proof step of this result
EDGE: step:p1:hreg-differentiate | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L244-L244 | proof step of this result
EDGE: step:p1:hreg-full | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L262-L262 | proof step of this result
EDGE: step:p1:hreg-orders | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L269-L269 | proof step of this result
EDGE: step:p1:hreg-symmetry | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L278-L278 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-line
KIND: step
TITLE: Cauchy's estimate along lines
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L227-L233
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L227-L233
CONTRACT_ID: step:p1:hreg-line
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x in U, r>0 with closed polydisc P-bar(x,r) in U and |F|<=A on it; v with |v|=1; Cauchy formulas (E1)
SOURCE_QUANTIFIERS: x,r,A,v arbitrary with those properties
SOURCE_CONCLUSION: |DF(x)v|<=A/r for |v|=1 and hence |DF(x)|<=A/r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cauchy
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L231-L231 | cited at this line (step; \ref{bp:p1:ext-cauchy})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-integral
KIND: step
TITLE: A Cauchy integral for the derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L235-L242
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L235-L242
CONTRACT_ID: step:p1:hreg-integral
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: z_0 in U, r>0, P-bar(z_0,3r) in U, A=max |F| there; |v|=1; x in P(z_0,r); Cauchy formula (E1)
SOURCE_QUANTIFIERS: z_0,r,A fixed; v, x then arbitrary
SOURCE_CONCLUSION: DF(x)v=(2 pi i)^-1 oint_{|zeta|=r} F(x+zeta v)/zeta^2 dzeta for x in P(z_0,r)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cauchy
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L239-L239 | cited at this line (step; \ref{bp:p1:ext-cauchy})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-differentiate
KIND: step
TITLE: Differentiation under the integral
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L244-L260
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L244-L260
CONTRACT_ID: step:p1:hreg-differentiate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Cauchy integral for DF(x)v; |DF(y)|<=A/r on P-bar(z_0,2r) (line estimate); x in P(z_0,r); |h|<r-|x-z_0|; MVT and dominated convergence (E4,E6)
SOURCE_QUANTIFIERS: z_0,r,A,v fixed; x; then h
SOURCE_CONCLUSION: x->DF(x)v is complex differentiable at x in P(z_0,r) with derivative h->(2 pi i)^-1 oint DF(x+zeta v)h zeta^-2 dzeta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-line, step:p1:hreg-integral, bp:p1:ext-mvt, bp:p1:ext-integral
EDGE: step:p1:hreg-line | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L246-L246 | line-estimate bound on DF(y)
EDGE: step:p1:hreg-integral | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L257-L257 | Cauchy integral for DF(x)v
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L251-L251 | bound on R(h,zeta)
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L253-L253 | dominated convergence
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-full
KIND: step
TITLE: The full derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L262-L267
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L262-L267
CONTRACT_ID: step:p1:hreg-full
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x->DF(x)v is holomorphic on P(z_0,r) for v=e_1..e_m
SOURCE_QUANTIFIERS: z_0 in U arbitrary
SOURCE_CONCLUSION: DF is holomorphic on P(z_0,r), hence on U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-differentiate
EDGE: step:p1:hreg-differentiate | blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L263-L263 | cited at this line (step; \ref{step:p1:hreg-differentiate})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-orders
KIND: step
TITLE: All orders
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L269-L276
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L269-L276
CONTRACT_ID: step:p1:hreg-orders
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: DF holomorphic for every holomorphic F with values in a finite-dimensional space; canonical isometry L(C^m,L^j(C^m,W)) = L^{j+1}(C^m,W)
SOURCE_QUANTIFIERS: j>=1; F, DF as the maps
SOURCE_CONCLUSION: every D^jF exists and is holomorphic, F is C^infty, and the norm identities |D^{j+1}F|=|D^j(DF)|=|D(D^jF)|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-full
EDGE: step:p1:hreg-full | blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L272-L272 | DF holomorphic, applied inductively to D^jF
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-symmetry
KIND: step
TITLE: Symmetry
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L278-L281
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L278-L281
CONTRACT_ID: step:p1:hreg-symmetry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F differentiable on open U; DF differentiable at every z in U (full-derivative step); Schwarz (E5)
SOURCE_QUANTIFIERS: z in U; v,w
SOURCE_CONCLUSION: D^2F(z) symmetric; d_i d_j F=d_j d_i F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-full, bp:p1:ext-schwarz
EDGE: step:p1:hreg-full | blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L279-L279 | DF differentiable
EDGE: bp:p1:ext-schwarz | blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L280-L280 | symmetry of D^2F(z)
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:holomorphic-analytic
KIND: lemma
TITLE: Holomorphic maps are analytic
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L284-L300
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L302-L350
CONTRACT_ID: bp:p1:holomorphic-analytic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U in C^m open; F:U->W holomorphic; (a) z_0 in U, r>0 with P-bar(z_0,r) in U, A=max_{P-bar(z_0,r)}|F|; (b) U_R=U cap R^m, x_0 in U_R; W=C^p and F(U_R) in R^p for the real clause
SOURCE_QUANTIFIERS: F,U,W,m; then z_0,r (A determined); alpha in N^m
SOURCE_CONCLUSION: (a) exist c_alpha in W with |c_alpha|<=A r^-|alpha| and F(z)=sum_alpha c_alpha (z-z_0)^alpha on P(z_0,r), absolutely convergent; F analytic on U; (b) F|U_R real-analytic near each x_0 (power series in x-x_0, absolutely convergent); real coefficients if W=C^p and F(U_R) in R^p
CONSTANT_SCOPE: c_alpha depends on F,z_0,r only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-margin, step:p1:han-cauchy, step:p1:han-series, step:p1:han-bounds, step:p1:han-real
EDGE: step:p1:han-margin | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L303-L303 | proof step of this result
EDGE: step:p1:han-cauchy | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L307-L307 | proof step of this result
EDGE: step:p1:han-series | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L321-L321 | proof step of this result
EDGE: step:p1:han-bounds | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L333-L333 | proof step of this result
EDGE: step:p1:han-real | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L340-L340 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-margin
KIND: step
TITLE: A larger polydisc
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-margin@L303-L305
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-margin@L303-L305
CONTRACT_ID: step:p1:han-margin
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P-bar(z_0,r) in U compact, U open, F continuous
SOURCE_QUANTIFIERS: z_0,r as in (a)
SOURCE_CONCLUSION: exists r_1>r with P-bar(z_0,r_1) in U; A is finite
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-cauchy
KIND: step
TITLE: Iterated Cauchy formula
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L307-L319
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L307-L319
CONTRACT_ID: step:p1:han-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r_1>r margin; w in P(z_0,r); circles C_j of radius r; Cauchy formula (E1); Fubini (E6)
SOURCE_QUANTIFIERS: w in P(z_0,r); circles C_j around z_{0,j}
SOURCE_CONCLUSION: F(w)=(2 pi i)^-m oint_{C_1}...oint_{C_m} F(zeta)/prod(zeta_j-w_j) dzeta, as an integral over the torus C_1x...xC_m
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-margin, bp:p1:ext-cauchy, bp:p1:ext-integral
EDGE: step:p1:han-margin | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L311-L311 | r_1>r so integrand holomorphic on larger disc
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L312-L312 | first Cauchy formula in each variable
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L319-L319 | Fubini
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-series
KIND: step
TITLE: Geometric expansion
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-series@L321-L331
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-series@L321-L331
CONTRACT_ID: step:p1:han-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Iterated Cauchy formula; t=|w-z_0|/r<1; term-by-term integration (E6)
SOURCE_QUANTIFIERS: w in P(z_0,r); zeta on the torus
SOURCE_CONCLUSION: F(w)=sum_alpha c_alpha (w-z_0)^alpha with c_alpha=(2 pi i)^-m oint...oint F(zeta)/prod(zeta_j-z_{0,j})^{alpha_j+1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-cauchy, bp:p1:ext-integral
EDGE: step:p1:han-cauchy | blueprint/parts/p1-analysis.tex#step:p1:han-series@L322-L322 | iterated Cauchy formula expanded
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:han-series@L326-L326 | term-by-term integration
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-bounds
KIND: step
TITLE: Coefficient bounds
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L333-L338
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L333-L338
CONTRACT_ID: step:p1:han-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: coefficient formula for c_alpha; |F|<=A on the torus; circles of length 2 pi r
SOURCE_QUANTIFIERS: alpha in N^m; w in P(z_0,r)
SOURCE_CONCLUSION: |c_alpha|<=A r^-|alpha|; sum |c_alpha||(w-z_0)^alpha|<=A(1-t)^-m; part (a) holds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-series, bp:p1:ext-integral
EDGE: step:p1:han-series | blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L334-L334 | coefficient formula
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L334-L334 | integral estimate by length times sup
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-real
KIND: step
TITLE: Real points
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-real@L340-L349
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-real@L340-L349
CONTRACT_ID: step:p1:han-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: part (a); x_0 in U_R, r>0 with P-bar(x_0,r) in U
SOURCE_QUANTIFIERS: real x with |x-x_0|<r; W=C^p with F real on U_R for the second clause
SOURCE_CONCLUSION: F|U_R is a real power series in x-x_0, absolutely convergent near x_0; with real F, F(x)=sum (Re c_alpha)(x-x_0)^alpha, |Re c_alpha|<=|c_alpha|; this is (b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-bounds
EDGE: step:p1:han-bounds | blueprint/parts/p1-analysis.tex#step:p1:han-real@L341-L341 | part (a) established
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:uniform-limits
KIND: lemma
TITLE: Uniform limits
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L352-L356
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L358-L390
CONTRACT_ID: bp:p1:uniform-limits
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_s holomorphic on an open set V; K_s->K pointwise; DK_s->Lambda uniformly on V; for V=T_r, every K_s primary on T_r, respectively real on reals
SOURCE_QUANTIFIERS: V,K_s,K,Lambda; sequence index s
SOURCE_CONCLUSION: K holomorphic on V and DK=Lambda; if V=T_r and all K_s primary (resp. real on reals) then K is primary (resp. real on reals)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ul-differences, step:p1:ul-limit, step:p1:ul-derivative, step:p1:ul-primary
EDGE: step:p1:ul-differences | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L362-L362 | proof step of this result
EDGE: step:p1:ul-limit | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L369-L369 | proof step of this result
EDGE: step:p1:ul-derivative | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L376-L376 | proof step of this result
EDGE: step:p1:ul-primary | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L384-L384 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ul-differences
KIND: step
TITLE: Linearization error of the differences
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L362-L367
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L362-L367
CONTRACT_ID: step:p1:ul-differences
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V in C^m open; eta_s=sup_V|DK_s-Lambda| finite and ->0 for large s; x in V, r>0 with P(x,r) in V; MVT (E4)
SOURCE_QUANTIFIERS: x,r fixed; indices s,t; y in P(x,r)
SOURCE_CONCLUSION: |phi_st(y)-phi_st(x)|<=2(eta_s+eta_t)|y-x| for phi_st(y)=K_s(y)-K_t(y)-(DK_s(x)-DK_t(x))(y-x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-mvt
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L366-L366 | cited at this line (step; \ref{bp:p1:ext-mvt})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ul-limit
KIND: step
TITLE: Passage to the limit
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L369-L374
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L369-L374
CONTRACT_ID: step:p1:ul-limit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: difference estimate for K_s-K_t; K_t->K pointwise, DK_t(x)->Lambda(x), eta_t->0
SOURCE_QUANTIFIERS: x,r,s fixed; y in P(x,r); t->infinity
SOURCE_CONCLUSION: |K_s(y)-K(y)-(K_s(x)-K(x))-(DK_s(x)-Lambda(x))(y-x)|<=2 eta_s|y-x|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ul-differences
EDGE: step:p1:ul-differences | blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L370-L370 | difference estimate passed to limit
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ul-derivative
KIND: step
TITLE: Differentiability of the limit
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L376-L382
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L376-L382
CONTRACT_ID: step:p1:ul-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: limit estimate with 2 eta_s|y-x|; K_s differentiable at x; eps>0
SOURCE_QUANTIFIERS: eps>0, then s, then r'<=r
SOURCE_CONCLUSION: |K(y)-K(x)-Lambda(x)(y-x)|<=eps|y-x| for |y-x|<r'; Lambda(x) complex linear; K complex differentiable at x with DK(x)=Lambda(x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ul-limit
EDGE: step:p1:ul-limit | blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L379-L379 | cited at this line (step; \ref{step:p1:ul-limit})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ul-primary
KIND: step
TITLE: Periodicity and realness
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L384-L389
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L384-L389
CONTRACT_ID: step:p1:ul-primary
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V=T_r, W=C^n x C^n; every K_s primary on T_r (resp. 1-periodic, resp. real on reals)
SOURCE_QUANTIFIERS: theta in T_r, k in Z^n; x in R^n
SOURCE_CONCLUSION: K(theta+k)=K(theta)+(k,0), K is 1-periodic where each K_s is, and K(R^n) in R^n x R^n since the latter is closed
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals, bp:p0:domains#complexStrip
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L385-L385 | primary on T_r
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L388-L388 | real on reals
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L385-L385 | strip T_r
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:holomorphic-inverse
KIND: lemma
TITLE: Holomorphic inverse
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L392-L395
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L397-L411
CONTRACT_ID: bp:p1:holomorphic-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A holomorphic matrix-valued function on an open set V with det A != 0 there
SOURCE_QUANTIFIERS: A:V->C^{p x p}, V open
SOURCE_CONCLUSION: A^-1 is holomorphic on V and D(A^-1)=-A^-1 (DA) A^-1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hi-holomorphic, step:p1:hi-derivative
EDGE: step:p1:hi-holomorphic | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L400-L400 | proof step of this result
EDGE: step:p1:hi-derivative | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L406-L406 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hi-holomorphic
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L400-L404
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L400-L404
CONTRACT_ID: step:p1:hi-holomorphic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A:V->C^{p x p} holomorphic, det A != 0; Cramer (E10)
SOURCE_QUANTIFIERS: on V
SOURCE_CONCLUSION: A^-1=(det A)^-1 adj A is holomorphic on V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cramer
EDGE: bp:p1:ext-cramer | blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L401-L401 | cited at this line (step; \ref{bp:p1:ext-cramer})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hi-derivative
KIND: step
TITLE: Derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L406-L410
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L406-L410
CONTRACT_ID: step:p1:hi-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A^-1 holomorphic on V; A(z)A(z)^-1=I
SOURCE_QUANTIFIERS: z in V; direction v
SOURCE_CONCLUSION: D(A^-1)(z)v=-A(z)^-1 (DA(z)v) A(z)^-1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hi-holomorphic
EDGE: step:p1:hi-holomorphic | blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L407-L407 | A^-1 differentiable so product rule applies
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:increments-open
KIND: lemma
TITLE: Increments on open sets
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L413-L416
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L418-L422
CONTRACT_ID: bp:p1:increments-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F holomorphic on open U in C^m; |DF|<=A on U; segment [z,z+w] in U
SOURCE_QUANTIFIERS: U,F,A; z,w
SOURCE_CONCLUSION: |F(z+w)-F(z)|<=A|w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:io-mvt
EDGE: step:p1:io-mvt | blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L419-L419 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:io-mvt
KIND: step
TITLE: Mean value inequality
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L419-L421
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L419-L421
CONTRACT_ID: step:p1:io-mvt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: [z,z+w] convex in U; F differentiable on it; |DF|<=A there; MVT (E4)
SOURCE_QUANTIFIERS: z,w
SOURCE_CONCLUSION: |F(z+w)-F(z)|<=A|w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-mvt
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L421-L421 | cited at this line (step; \ref{bp:p1:ext-mvt})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:taylor
KIND: lemma
TITLE: Second-order Taylor bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:taylor@L424-L427
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:taylor@L429-L440
CONTRACT_ID: bp:p1:taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F holomorphic on open U in C^m; |D^2F|<=A on U; segment [z,z+w] in U
SOURCE_QUANTIFIERS: U,F,A; z,w
SOURCE_CONCLUSION: |F(z+w)-F(z)-DF(z)w|<=(A/2)|w|^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:tay-lipschitz, step:p1:tay-integrate
EDGE: step:p1:tay-lipschitz | blueprint/parts/p1-analysis.tex#bp:p1:taylor@L430-L430 | proof step of this result
EDGE: step:p1:tay-integrate | blueprint/parts/p1-analysis.tex#bp:p1:taylor@L435-L435 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:tay-lipschitz
KIND: step
TITLE: The derivative along the segment
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L430-L433
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L430-L433
CONTRACT_ID: step:p1:tay-lipschitz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: DF holomorphic on U (derivative regularity); |D(DF)|=|D^2F|<=A; [z,z+w] in U
SOURCE_QUANTIFIERS: t in [0,1]
SOURCE_CONCLUSION: |DF(z+tw)-DF(z)|<=A t|w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:increments-open
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L431-L431 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
EDGE: bp:p1:increments-open | blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L432-L432 | cited at this line (step; \ref{bp:p1:increments-open})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:tay-integrate
KIND: step
TITLE: Integration
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L435-L439
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L435-L439
CONTRACT_ID: step:p1:tay-integrate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lipschitz bound on DF along the segment; g(t)=F(z+tw)-F(z)-t DF(z)w C^1 on an open interval containing [0,1], g(0)=0; FTC and |int|<=int|.| (E6)
SOURCE_QUANTIFIERS: z,w fixed; t in [0,1]
SOURCE_CONCLUSION: |g(1)|<=int_0^1 A t|w|^2 dt = (A/2)|w|^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:tay-lipschitz, bp:p1:holomorphic-regularity, bp:p1:ext-integral
EDGE: step:p1:tay-lipschitz | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L438-L438 | bound on g'
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L437-L437 | DF continuous so g is C^1
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L438-L438 | fundamental theorem of calculus and norm of an integral
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cauchy-open
KIND: lemma
TITLE: Cauchy estimate on open sets
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L462-L467
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L469-L496
CONTRACT_ID: bp:p1:cauchy-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f holomorphic on open U in C^m with |f|<=A on U; closed polydisc of radius delta>0 around z lies in U
SOURCE_QUANTIFIERS: U,f,A,delta>0,z; l; c(m,j) depends only on m and j
SOURCE_CONCLUSION: |d_l f(z)|<=A/delta; |D^j f(z)|<=c(m,j) A delta^-j for j=1,2,3 (iterated Frechet derivative, operator norm)
CONSTANT_SCOPE: c(m,j) depends only on m,j
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-first, step:p1:co-second, step:p1:co-third, step:p1:co-constants
EDGE: step:p1:co-first | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L472-L472 | proof step of this result
EDGE: step:p1:co-second | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L478-L478 | proof step of this result
EDGE: step:p1:co-third | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L487-L487 | proof step of this result
EDGE: step:p1:co-constants | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L494-L494 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:co-first
KIND: step
TITLE: First derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-first@L472-L476
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-first@L472-L476
CONTRACT_ID: step:p1:co-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: only |f|<=A on P-bar(z,delta) is used; line estimate of derivative regularity with x=z, r=delta
SOURCE_QUANTIFIERS: l
SOURCE_CONCLUSION: |Df(z)|<=A/delta and |d_l f(z)|<=A/delta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-line
EDGE: step:p1:hreg-line | blueprint/parts/p1-analysis.tex#step:p1:co-first@L473-L473 | line estimate with x=z, r=delta
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:co-second
KIND: step
TITLE: Second derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-second@L478-L485
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-second@L478-L485
CONTRACT_ID: step:p1:co-second
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P-bar(z,delta) in U, |f|<=A there; first-derivative bound; Df holomorphic
SOURCE_QUANTIFIERS: y in P-bar(z,delta/2)
SOURCE_CONCLUSION: |Df(y)|<=2A/delta on P-bar(z,delta/2) and |D^2f(z)|<=4A/delta^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-first, bp:p1:holomorphic-regularity
EDGE: step:p1:co-first | blueprint/parts/p1-analysis.tex#step:p1:co-second@L481-L481 | cited at this line (step; \ref{step:p1:co-first})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:co-second@L482-L482 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:co-third
KIND: step
TITLE: Third derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-third@L487-L492
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-third@L487-L492
CONTRACT_ID: step:p1:co-third
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: second-derivative bound; Df holomorphic with |Df|<=2A/delta on P-bar(z,delta/2)
SOURCE_QUANTIFIERS: z, radius delta/2
SOURCE_CONCLUSION: |D^2(Df)(z)|<=32A/delta^3 and |D^3f(z)|<=32A/delta^3
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-second, bp:p1:holomorphic-regularity
EDGE: step:p1:co-second | blueprint/parts/p1-analysis.tex#step:p1:co-third@L488-L488 | cited at this line (step; \ref{step:p1:co-second})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:co-third@L491-L491 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:co-constants
KIND: step
TITLE: Constants
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-constants@L494-L495
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-constants@L494-L495
CONTRACT_ID: step:p1:co-constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: first, second and third derivative bounds
SOURCE_QUANTIFIERS: j=1,2,3
SOURCE_CONCLUSION: the lemma holds with c(m,1)=1, c(m,2)=4, c(m,3)=32, independent of m
CONSTANT_SCOPE: constants are absolute (independent of m)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-first, step:p1:co-second, step:p1:co-third
EDGE: step:p1:co-first | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L495-L495 | c(m,1)=1
EDGE: step:p1:co-second | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L495-L495 | c(m,2)=4
EDGE: step:p1:co-third | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L495-L495 | c(m,3)=32
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:periodic-bounded
KIND: lemma
TITLE: Periodic functions are bounded on smaller strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L505-L507
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L509-L517
CONTRACT_ID: bp:p1:periodic-bounded
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic and 1-periodic on T_rho, values in W
SOURCE_QUANTIFIERS: rho>0; u; 0<... rho' < rho (every rho' < rho)
SOURCE_CONCLUSION: u is bounded on T_rho'
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:pb-compact, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:pb-compact | blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L510-L510 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L505-L505 | strip T_rho used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:pb-compact
KIND: step
TITLE: A compact fundamental set
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pb-compact@L510-L516
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pb-compact@L510-L516
CONTRACT_ID: step:p1:pb-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic 1-periodic on T_rho; 0<rho'<rho
SOURCE_QUANTIFIERS: rho, rho', u fixed
SOURCE_CONCLUSION: sup over T_rho' of |u| <= max over compact S of |u|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:strip-identity
KIND: lemma
TITLE: Identity theorem on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L519-L522
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L524-L534
CONTRACT_ID: bp:p1:strip-identity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0; v holomorphic on T_r with values in W; v(x)=0 for all real x
SOURCE_QUANTIFIERS: r>0 ; v
SOURCE_CONCLUSION: v=0 on T_r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:si-induction, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:si-induction | blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L525-L525 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L520-L520 | strip T_r used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:si-induction
KIND: step
TITLE: One coordinate at a time
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:si-induction@L525-L533
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:si-induction@L525-L533
CONTRACT_ID: step:p1:si-induction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v holomorphic on T_r, vanishing on R^n
SOURCE_QUANTIFIERS: j from 1 to n; theta in T_r with theta_{j+1..n} real
SOURCE_CONCLUSION: claim (S_n): v=0 on T_r, by induction on (S_j)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-identity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-identity | blueprint/parts/p1-analysis.tex#step:p1:si-induction@L532-L532 | one-variable identity theorem applied to coordinates of phi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:increments
KIND: lemma
TITLE: Increments
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments@L539-L543
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments@L545-L554
CONTRACT_ID: bp:p1:increments
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic on T_rho; 0<delta<rho; theta, theta+v in T_{rho-delta}; (second claim) u bounded on T_rho
SOURCE_QUANTIFIERS: rho, delta, u; theta, v
SOURCE_CONCLUSION: |u(theta+v)-u(theta)| <= ||Du||_{rho-delta}|v|; if u bounded, this is <= n delta^-1 ||u||_rho |v|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:inc-mvt, step:p1:inc-cauchy, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:inc-mvt | blueprint/parts/p1-analysis.tex#bp:p1:increments@L546-L546 | proof step of this result
EDGE: step:p1:inc-cauchy | blueprint/parts/p1-analysis.tex#bp:p1:increments@L551-L551 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:increments@L540-L540 | strip T_rho used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:inc-mvt
KIND: step
TITLE: Mean value inequality
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L546-L549
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L546-L549
CONTRACT_ID: step:p1:inc-mvt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic on T_rho; 0<delta<rho; theta, theta+v in T_{rho-delta} (convex)
SOURCE_QUANTIFIERS: theta, v
SOURCE_CONCLUSION: |u(theta+v)-u(theta)| <= ||Du||_{rho-delta}|v|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L548-L548 | mean value inequality on the segment
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:inc-cauchy
KIND: step
TITLE: With the Cauchy estimate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L551-L553
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L551-L553
CONTRACT_ID: step:p1:inc-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u bounded holomorphic on T_rho; 0<delta<rho
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: ||Du||_{rho-delta} <= n delta^-1 ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L552-L552 | Cauchy estimate on strips
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cauchy-strip
KIND: lemma
TITLE: Cauchy estimate on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L556-L562
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L564-L585
CONTRACT_ID: bp:p1:cauchy-strip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic and bounded on T_rho; 0<delta<rho; u scalar, vector (max norm) or matrix (operator norm) valued
SOURCE_QUANTIFIERS: rho, delta, u; every ell
SOURCE_CONCLUSION: ||d_ell u||_{rho-delta} <= delta^-1 ||u||_rho and ||Du||_{rho-delta} <= n delta^-1 ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs-coordinate, step:p1:cs-full, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L567-L567 | proof step of this result
EDGE: step:p1:cs-full | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L577-L577 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L557-L557 | strip T_rho used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cs-coordinate
KIND: step
TITLE: One coordinate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L567-L575
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L567-L575
CONTRACT_ID: step:p1:cs-coordinate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic bounded on T_rho, 0<delta<rho, theta in T_{rho-delta}, 1<=ell<=n
SOURCE_QUANTIFIERS: theta, ell
SOURCE_CONCLUSION: |d_ell u(theta)| <= delta^-1 ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L572-L572 | one-variable Cauchy estimate on the circle of radius delta
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cs-full
KIND: step
TITLE: The full derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-full@L577-L584
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-full@L577-L584
CONTRACT_ID: step:p1:cs-full
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: coordinate bound of the previous step; theta in T_{rho-delta}
SOURCE_QUANTIFIERS: v in C^n
SOURCE_CONCLUSION: |Du(theta)| <= n delta^-1 ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs-coordinate, bp:p1:operator-norms
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#step:p1:cs-full@L578-L578 | previous step: bound on each d_ell u
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:cs-full@L583-L583 | operator norm equals row-sum norm of the Jacobian
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cauchy-corollaries
KIND: lemma
TITLE: Cauchy corollaries
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L605-L609
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L611-L625
CONTRACT_ID: bp:p1:cauchy-corollaries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f holomorphic and bounded on T_rho; 0<delta<rho; f valued in C^p (first claim) or C^p / C^{pxq} (second claim)
SOURCE_QUANTIFIERS: rho, delta, f, omega
SOURCE_CONCLUSION: ||(Df)^T||_{rho-delta} <= p delta^-1 ||f||_rho; ||d_omega f||_{rho-delta} <= |omega|_1 delta^-1 ||f||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cc-transpose, step:p1:cc-omega, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cc-transpose | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L614-L614 | proof step of this result
EDGE: step:p1:cc-omega | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L621-L621 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L606-L606 | strip T_rho used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cc-transpose
KIND: step
TITLE: Transposed derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L614-L619
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L614-L619
CONTRACT_ID: step:p1:cc-transpose
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f holomorphic bounded on T_rho with values in C^p; theta in T_{rho-delta}
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: row sums of (Df(theta))^T are <= p delta^-1 ||f||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs-coordinate
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L618-L618 | coordinate Cauchy bound for d_ell f
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cc-omega
KIND: step
TITLE: Derivative along $\omega$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L621-L624
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L621-L624
CONTRACT_ID: step:p1:cc-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f holomorphic bounded on T_rho with values in any W; theta in T_{rho-delta}
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: |d_omega f(theta)| <= |omega|_1 delta^-1 ||f||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs-coordinate
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L622-L622 | coordinate Cauchy bound for d_ell f
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:averages-real
KIND: lemma
TITLE: Averages of functions on the real torus
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L634-L637
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L639-L651
CONTRACT_ID: bp:p1:averages-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v:R^n->C continuous, 1-periodic, differentiable with continuous derivative
SOURCE_QUANTIFIERS: v; ell; omega
SOURCE_CONCLUSION: <d_ell v>=0 and <Dv omega>=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ar-one, step:p1:ar-fubini
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:ar-one | blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L640-L640 | proof step of this result
EDGE: step:p1:ar-fubini | blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L646-L646 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ar-one
KIND: step
TITLE: One variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-one@L640-L644
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-one@L640-L644
CONTRACT_ID: step:p1:ar-one
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v as in the lemma; ell and the other coordinates x' fixed
SOURCE_QUANTIFIERS: x' in [0,1]^(n-1)
SOURCE_CONCLUSION: integral over [0,1] of d_ell v in x_ell is 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:ar-one@L643-L643 | fundamental theorem of calculus on [0,1]
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ar-fubini
KIND: step
TITLE: Fubini
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L646-L650
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L646-L650
CONTRACT_ID: step:p1:ar-fubini
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: d_ell v continuous on [0,1]^n; previous step
SOURCE_QUANTIFIERS: ell
SOURCE_CONCLUSION: <d_ell v>=0 and <Dv omega>=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral, step:p1:ar-one
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L647-L647 | Fubini
EDGE: step:p1:ar-one | blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L648-L648 | inner integral vanishes
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:averages
KIND: lemma
TITLE: Averages
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages@L653-L657
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages@L659-L672
CONTRACT_ID: bp:p1:averages
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v holomorphic, bounded and 1-periodic on T_rho; scalar, C^p or C^{pxq} valued
SOURCE_QUANTIFIERS: rho, v; ell; omega
SOURCE_CONCLUSION: <d_theta_ell v>=0, <Dv omega>=0, |avg(v)| <= ||v||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:av-derivatives, step:p1:av-bound, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:av-derivatives | blueprint/parts/p1-analysis.tex#bp:p1:averages@L660-L660 | proof step of this result
EDGE: step:p1:av-bound | blueprint/parts/p1-analysis.tex#bp:p1:averages@L667-L667 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:averages@L654-L654 | strip T_rho used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:av-derivatives
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L660-L665
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L660-L665
CONTRACT_ID: step:p1:av-derivatives
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v holomorphic 1-periodic on T_rho
SOURCE_QUANTIFIERS: ell; omega
SOURCE_CONCLUSION: <d_ell v>=0 and <Dv omega>=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:averages-real
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L662-L662 | d_ell v holomorphic hence continuous
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L664-L664 | averages of derivatives on the real torus
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:av-bound
KIND: step
TITLE: The bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-bound@L667-L671
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-bound@L667-L671
CONTRACT_ID: step:p1:av-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v bounded on T_rho; [0,1]^n has measure 1
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: |avg(v)| <= sup over R^n of |v| <= ||v||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:av-bound@L668-L668 | norm of an integral is at most integral of the norm
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:averages-matrix
KIND: lemma
TITLE: Averages of matrix-valued functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L674-L677
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L679-L687
CONTRACT_ID: bp:p1:averages-matrix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M continuous, 1-periodic and matrix valued on R^n; (second claim) M is C^1
SOURCE_QUANTIFIERS: M; omega
SOURCE_CONCLUSION: |avg(M)| <= sup over R^n of |M|; and <d_omega M>=0 if M is C^1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:am-bound, step:p1:am-derivative
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:am-bound | blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L680-L680 | proof step of this result
EDGE: step:p1:am-derivative | blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L684-L684 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:am-bound
KIND: step
TITLE: The bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-bound@L680-L682
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-bound@L680-L682
CONTRACT_ID: step:p1:am-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M continuous 1-periodic matrix valued
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: |avg(M)| <= sup |M| (operator norm)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:am-bound@L681-L681 | norm of an integral is at most integral of the norm
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:am-derivative
KIND: step
TITLE: Derivative along $\omega$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-derivative@L684-L686
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-derivative@L684-L686
CONTRACT_ID: step:p1:am-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M is C^1, 1-periodic
SOURCE_QUANTIFIERS: omega
SOURCE_CONCLUSION: <d_omega M>=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:averages-real
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:am-derivative@L686-L686 | applied to each entry
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:periodic-average
KIND: lemma
TITLE: Translation invariance of averages
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L689-L691
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L693-L705
CONTRACT_ID: bp:p1:periodic-average
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v continuous and 1-periodic on R^n
SOURCE_QUANTIFIERS: v; a in R^n
SOURCE_CONCLUSION: avg(v(.+a)) = avg(v)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:pa-one, step:p1:pa-induction
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:pa-one | blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L694-L694 | proof step of this result
EDGE: step:p1:pa-induction | blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L699-L699 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:pa-one
KIND: step
TITLE: One variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-one@L694-L697
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-one@L694-L697
CONTRACT_ID: step:p1:pa-one
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: psi:R->C continuous 1-periodic
SOURCE_QUANTIFIERS: b in R
SOURCE_CONCLUSION: integral over [0,1] of psi(x+b) dx equals integral of psi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:pa-one@L696-L696 | differentiation of the integral in its limits
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:pa-induction
KIND: step
TITLE: One coordinate at a time
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L699-L704
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L699-L704
CONTRACT_ID: step:p1:pa-induction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v continuous 1-periodic; a^(j)=(a_1..a_j,0..0)
SOURCE_QUANTIFIERS: 1<=j<=n
SOURCE_CONCLUSION: avg(v(.+a^(j))) = avg(v(.+a^(j-1))), hence avg(v(.+a))=avg(v)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral, step:p1:pa-one
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L701-L701 | Fubini
EDGE: step:p1:pa-one | blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L702-L702 | one-variable shift invariance
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:exp-sums
KIND: lemma
TITLE: Exponential sums over $\Z^n$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L715-L722
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L724-L743
CONTRACT_ID: bp:p1:exp-sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; (a) y>=0, a>0, tau>=0; (b) x>0; (c) x>0
SOURCE_QUANTIFIERS: n; y, a, tau, x
SOURCE_CONCLUSION: (a) y^tau e^{-ay} <= (tau/(ea))^tau; (b) sum over Z^n of e^{-x|k|_1} = coth(x/2)^n and coth(x/2) <= 1+2/x; (c) sum over k!=0 of e^{-x|k|_1} <= (8n/x)^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:es-power, step:p1:es-product, step:p1:es-nonzero
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:es-power | blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L725-L725 | proof step of this result
EDGE: step:p1:es-product | blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L730-L730 | proof step of this result
EDGE: step:p1:es-nonzero | blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L735-L735 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:es-power
KIND: step
TITLE: The power times the exponential
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-power@L725-L728
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-power@L725-L728
CONTRACT_ID: step:p1:es-power
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: y>=0, a>0, tau>=0
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: (a) y^tau e^{-ay} <= (tau/(ea))^tau
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:es-product
KIND: step
TITLE: Product structure
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-product@L730-L733
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-product@L730-L733
CONTRACT_ID: step:p1:es-product
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x>0
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: (b) sum over Z^n of e^{-x|k|_1} = coth(x/2)^n and coth(x/2) <= 1+2/x
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:es-nonzero
KIND: step
TITLE: Nonzero modes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L735-L742
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L735-L742
CONTRACT_ID: step:p1:es-nonzero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x>0; parts (a) and (b)
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: (c) sum over k!=0 of e^{-x|k|_1} <= (8n/x)^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:es-product, step:p1:es-power
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:es-product | blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L736-L736 | part (b) with x/2
EDGE: step:p1:es-power | blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L741-L741 | part (a) for x^n e^{-x/2}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:fourier-basic
KIND: lemma
TITLE: Fourier coefficients of periodic functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L745-L756
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L758-L772
CONTRACT_ID: bp:p1:fourier-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v C-valued (componentwise for vector/matrix); (a) v continuous, 1-periodic, C^1; (b) v continuous, 1-periodic, sum |hat v_k| finite; (c) r>0, v holomorphic and 1-periodic on T_r, not necessarily bounded, all hat v_k=0
SOURCE_QUANTIFIERS: v; k in Z^n; ell; omega in C^n; r
SOURCE_CONCLUSION: (a) hat(d_ell v)_k = 2 pi i k_ell hat v_k and hat(d_omega v)_k = 2 pi i (k.omega) hat v_k; (b) v(x)=sum hat v_k chi_k(x) for all x, so v=0 if all hat v_k=0; (c) v=0 on T_r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:fb-derivative, step:p1:fb-series, step:p1:fb-holomorphic, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:fb-derivative | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L759-L759 | proof step of this result
EDGE: step:p1:fb-series | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L766-L766 | proof step of this result
EDGE: step:p1:fb-holomorphic | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L769-L769 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L753-L753 | strip T_r used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:fb-derivative
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-derivative@L759-L764
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-derivative@L759-L764
CONTRACT_ID: step:p1:fb-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: part (a): v continuous, 1-periodic, C^1; w=v chi_{-k}
SOURCE_QUANTIFIERS: k; ell
SOURCE_CONCLUSION: hat(d_ell v)_k = 2 pi i k_ell hat v_k; same for d_omega
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:averages-real
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:fb-derivative@L761-L761 | <d_ell w>=0 for w=v chi_{-k}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:fb-series
KIND: step
TITLE: Fourier series
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-series@L766-L767
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-series@L766-L767
CONTRACT_ID: step:p1:fb-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: part (b): v continuous, 1-periodic, summable coefficients
SOURCE_QUANTIFIERS: x in R^n
SOURCE_CONCLUSION: v(x)=sum hat v_k chi_k(x); v=0 if all coefficients vanish
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-fourier
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-fourier | blueprint/parts/p1-analysis.tex#step:p1:fb-series@L767-L767 | Fourier series of a continuous periodic function with summable coefficients
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:fb-holomorphic
KIND: step
TITLE: Holomorphic functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L769-L771
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L769-L771
CONTRACT_ID: step:p1:fb-holomorphic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: part (c): v holomorphic 1-periodic on T_r with vanishing coefficients; part (b)
SOURCE_QUANTIFIERS: r
SOURCE_CONCLUSION: v=0 on T_r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:fb-series, bp:p1:strip-identity
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:fb-series | blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L771-L771 | part (b): v=0 on R^n
EDGE: bp:p1:strip-identity | blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L771-L771 | identity theorem on strips
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:decay
KIND: lemma
TITLE: Coefficient decay
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay@L774-L777
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay@L779-L807
CONTRACT_ID: bp:p1:decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic, bounded and 1-periodic on T_rho
SOURCE_QUANTIFIERS: rho, u; k in Z^n; rho' with 0<=rho'<rho
SOURCE_CONCLUSION: |hat u_k| <= e^{-2 pi |k|_1 rho'} ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:dec-shift, step:p1:dec-bound, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:dec-shift | blueprint/parts/p1-analysis.tex#bp:p1:decay@L788-L788 | proof step of this result
EDGE: step:p1:dec-bound | blueprint/parts/p1-analysis.tex#bp:p1:decay@L801-L801 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:decay@L775-L775 | strip T_rho used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:dec-shift
KIND: step
TITLE: Shifting one variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L788-L799
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L788-L799
CONTRACT_ID: step:p1:dec-shift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic 1-periodic on T_rho, k, rho'<rho, t_j=-rho' sgn(k_j); I_j integrals
SOURCE_QUANTIFIERS: 1<=j<=n; x_l for l!=j
SOURCE_CONCLUSION: I_{j-1}=I_j for 1<=j<=n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-rectangle, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-rectangle | blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L794-L794 | Cauchy theorem on the rectangle
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L799-L799 | Fubini over the remaining coordinates
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:dec-bound
KIND: step
TITLE: The bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L801-L806
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L801-L806
CONTRACT_ID: step:p1:dec-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: I_n=hat u_k via the shifts; |u|<=||u||_rho
SOURCE_QUANTIFIERS: k; rho'
SOURCE_CONCLUSION: |hat u_k| = |I_n| <= e^{-2 pi rho' |k|_1} ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:dec-shift
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:dec-shift | blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L806-L806 | hat u_k = I_0 = ... = I_n
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:summation
KIND: lemma
TITLE: Summation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:summation@L812-L819
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:summation@L821-L863
CONTRACT_ID: bp:p1:summation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (forward) sum_k |a_k| e^{2 pi |k|_1 rho} finite; (converse) u as in decay, 0<delta<rho
SOURCE_QUANTIFIERS: rho, a_k, u, delta
SOURCE_CONCLUSION: u=sum a_k e^{2 pi i k.theta} holomorphic and 1-periodic on T_rho, hat u_k=a_k, ||u||_rho <= sum |a_k| e^{2 pi |k|_1 rho}; conversely sum |hat u_k| e^{2 pi |k|_1(rho-delta)} <= coth(pi delta)^n ||u||_rho and u equals its Fourier series on T_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:sum-bound, step:p1:sum-holo, step:p1:sum-coeff, step:p1:sum-converse, step:p1:sum-representation, bp:p1:decay, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#bp:p1:summation@L824-L824 | proof step of this result
EDGE: step:p1:sum-holo | blueprint/parts/p1-analysis.tex#bp:p1:summation@L829-L829 | proof step of this result
EDGE: step:p1:sum-coeff | blueprint/parts/p1-analysis.tex#bp:p1:summation@L841-L841 | proof step of this result
EDGE: step:p1:sum-converse | blueprint/parts/p1-analysis.tex#bp:p1:summation@L849-L849 | proof step of this result
EDGE: step:p1:sum-representation | blueprint/parts/p1-analysis.tex#bp:p1:summation@L857-L857 | proof step of this result
EDGE: bp:p1:decay | blueprint/parts/p1-analysis.tex#bp:p1:summation@L816-L816 | converse part is stated for u as in the decay lemma
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:summation@L813-L813 | strip T_rho used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-bound
KIND: step
TITLE: Convergence and the bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-bound@L824-L827
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-bound@L824-L827
CONTRACT_ID: step:p1:sum-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M=sum |a_k| e^{2 pi |k|_1 rho} finite; S_N partial sums
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: series converges absolutely and uniformly on T_rho, |u|<=M, u 1-periodic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-holo
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L829-L839
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L829-L839
CONTRACT_ID: step:p1:sum-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M finite; u the uniform limit of S_N on T_rho
SOURCE_QUANTIFIERS: epsilon in (0,rho)
SOURCE_CONCLUSION: u holomorphic on T_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:exp-sums, bp:p1:uniform-limits, step:p1:sum-bound
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L831-L831 | part (a) with tau=1 bounds D chi_k terms
EDGE: bp:p1:uniform-limits | blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L837-L837 | uniform limit of holomorphic functions with uniformly convergent derivatives
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L837-L837 | S_N converges to u uniformly
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-coeff
KIND: step
TITLE: Coefficients
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L841-L847
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L841-L847
CONTRACT_ID: step:p1:sum-coeff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: series converges uniformly on [0,1]^n
SOURCE_QUANTIFIERS: k
SOURCE_CONCLUSION: hat u_k = a_k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral, step:p1:sum-bound
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L842-L842 | term-by-term integration
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L842-L842 | uniform convergence of the series
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-converse
KIND: step
TITLE: The converse estimate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L849-L855
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L849-L855
CONTRACT_ID: step:p1:sum-converse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic, bounded, 1-periodic on T_rho; 0<delta<rho; limit form of decay
SOURCE_QUANTIFIERS: delta
SOURCE_CONCLUSION: sum |hat u_k| e^{2 pi |k|_1 (rho-delta)} <= coth(pi delta)^n ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:decay, bp:p1:exp-sums
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:decay | blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L850-L850 | limit form hat u_k <= e^{-2 pi k_1 rho}u_rho
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L851-L851 | part (b) with x=2 pi delta
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-representation
KIND: step
TITLE: Fourier representation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L857-L862
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L857-L862
CONTRACT_ID: step:p1:sum-representation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u as in decay; converse estimate; first part of the lemma
SOURCE_QUANTIFIERS: theta in T_rho; delta with max|Im theta_j|<rho-delta
SOURCE_CONCLUSION: u equals sum hat u_k chi_k at theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:sum-converse, step:p1:sum-bound, step:p1:sum-holo, step:p1:sum-coeff, bp:p1:fourier-basic
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:sum-converse | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L859-L859 | summability of weighted coefficients
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L859-L859 | first part of the lemma: boundedness and periodicity
EDGE: step:p1:sum-holo | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L859-L859 | first part of the lemma: holomorphy
EDGE: step:p1:sum-coeff | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L860-L860 | first part of the lemma: hat v_k = hat u_k
EDGE: bp:p1:fourier-basic | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L862-L862 | part (c): vanishing coefficients imply zero
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cohomological
KIND: lemma
TITLE: Cohomological equation on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L875-L885
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L887-L957
CONTRACT_ID: bp:p1:cohomological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega in Dio_{gamma,tau}, gamma>0, tau>=0; g holomorphic, bounded, 1-periodic on T_rho with avg(g)=0; 0<delta<rho; g real on real points (for realness); vector/matrix valued componentwise
SOURCE_QUANTIFIERS: gamma, tau, rho, omega, g, delta; then u; c(n,tau)
SOURCE_CONCLUSION: there is a unique u holomorphic and 1-periodic on T_{rho-delta} (no boundedness assumed) with avg(u)=0 and Du(theta) omega=g(theta); u is bounded and ||u||_{rho-delta} <= c(n,tau) gamma^-1 delta^-(tau+n) ||g||_rho; u real on real points if g is
CONSTANT_SCOPE: c(n,tau) depends only on n and tau (not on gamma, rho, delta, omega, g)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coh-data, step:p1:coh-coefficients, step:p1:coh-weighted, step:p1:coh-existence, step:p1:coh-equation, step:p1:coh-unique, step:p1:coh-real, step:p1:coh-vector, bp:p0:diophantine#IsDiophantine, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coh-data | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L894-L894 | proof step of this result
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L898-L898 | proof step of this result
EDGE: step:p1:coh-weighted | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L905-L905 | proof step of this result
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L922-L922 | proof step of this result
EDGE: step:p1:coh-equation | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L927-L927 | proof step of this result
EDGE: step:p1:coh-unique | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L934-L934 | proof step of this result
EDGE: step:p1:coh-real | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L943-L943 | proof step of this result
EDGE: step:p1:coh-vector | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L950-L950 | proof step of this result
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L876-L876 | omega in Dio_{gamma,tau}
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L876-L876 | strip T_rho used by name
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-data
KIND: step
TITLE: Coefficients of the datum
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-data@L894-L896
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-data@L894-L896
CONTRACT_ID: step:p1:coh-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g scalar holomorphic bounded 1-periodic on T_rho, avg(g)=0
SOURCE_QUANTIFIERS: k in Z^n
SOURCE_CONCLUSION: hat g_0=0 and |hat g_k| <= e^{-2 pi |k|_1 rho}||g||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:decay
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:decay | blueprint/parts/p1-analysis.tex#step:p1:coh-data@L895-L895 | limit form of coefficient decay
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-coefficients
KIND: step
TITLE: The coefficient solution
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L898-L903
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L898-L903
CONTRACT_ID: step:p1:coh-coefficients
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega Diophantine (gamma,tau); k!=0
SOURCE_QUANTIFIERS: k in Z^n
SOURCE_CONCLUSION: a_0=0, a_k=hat g_k/(2 pi i k.omega) satisfy 2 pi i (k.omega) a_k=hat g_k and |a_k| <= (2 pi gamma)^-1 |k|_1^tau |hat g_k|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:diophantine#IsDiophantine
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L899-L899 | k.omega >= gamma k_1^-tau
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-weighted
KIND: step
TITLE: Weighted estimate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L905-L920
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L905-L920
CONTRACT_ID: step:p1:coh-weighted
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: coefficient bounds of coh-data and coh-coefficients; s=2 pi(rho-delta/2)
SOURCE_QUANTIFIERS: delta in (0,rho)
SOURCE_CONCLUSION: sum |a_k| e^{2 pi |k|_1 (rho-delta)} <= c(n,tau) gamma^-1 delta^-(tau+n) ||g||_rho with c(n,tau)=(2 pi)^-1 (tau/(e pi))^tau (8n/pi)^n
CONSTANT_SCOPE: c(n,tau) depends only on n and tau
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coh-data, step:p1:coh-coefficients, bp:p1:exp-sums
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coh-data | blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L906-L906 | decay of hat g_k
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L915-L915 | bound on a_k
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L906-L906 | parts (c) and (a)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-existence
KIND: step
TITLE: Existence
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L922-L925
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L922-L925
CONTRACT_ID: step:p1:coh-existence
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: weighted estimate; a_k
SOURCE_QUANTIFIERS: delta in (0,rho)
SOURCE_CONCLUSION: u=sum a_k chi_k is holomorphic, 1-periodic, bounded on T_{rho-delta}, hat u_k=a_k, avg(u)=0, norm bound
CONSTANT_SCOPE: c(n,tau) as stated
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:summation, step:p1:coh-weighted, step:p1:coh-coefficients
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:summation | blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L923-L923 | summation at radius rho-delta
EDGE: step:p1:coh-weighted | blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L925-L925 | weighted sum of a_k
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L924-L924 | a_0=0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-equation
KIND: step
TITLE: The equation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L927-L932
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L927-L932
CONTRACT_ID: step:p1:coh-equation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u=sum a_k chi_k on T_rho-delta
SOURCE_QUANTIFIERS: theta in T_{rho-delta}
SOURCE_CONCLUSION: Du omega=g on T_{rho-delta}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:fourier-basic, step:p1:coh-existence, step:p1:coh-coefficients
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L928-L928 | Du omega - g holomorphic
EDGE: bp:p1:fourier-basic | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L930-L930 | (a) coefficients of derivative, (c) vanishing coefficients
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L931-L931 | hat u_k=a_k
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L931-L931 | 2 pi i (k.omega) a_k=hat g_k
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-unique
KIND: step
TITLE: Uniqueness
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L934-L941
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L934-L941
CONTRACT_ID: step:p1:coh-unique
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u~ holomorphic and 1-periodic on T_{rho-delta}, avg(u~)=0, Du~ omega=g (no bound)
SOURCE_QUANTIFIERS: u~
SOURCE_CONCLUSION: u~=u; for g=0 only u=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:fourier-basic, step:p1:coh-coefficients, step:p1:coh-existence
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:fourier-basic | blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L937-L937 | (a) and (c)
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L938-L938 | hat u~_k=a_k
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L938-L938 | compare with the constructed u
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-real@L943-L948
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-real@L943-L948
CONTRACT_ID: step:p1:coh-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g real on R^n
SOURCE_QUANTIFIERS: x in R^n
SOURCE_CONCLUSION: u real on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coh-coefficients, step:p1:coh-existence
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-real@L945-L945 | a_k formula and conjugate symmetry
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#step:p1:coh-real@L947-L947 | series representation of u
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-vector
KIND: step
TITLE: Vector- and matrix-valued data
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L950-L956
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L950-L956
CONTRACT_ID: step:p1:coh-vector
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: scalar case (existence, bound, equation, uniqueness, realness)
SOURCE_QUANTIFIERS: components i (and entries ij)
SOURCE_CONCLUSION: C^p-valued g: unique u with the same constant, norm = max of component norms; matrix entries componentwise
CONSTANT_SCOPE: c(n,tau) same as scalar
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coh-existence, step:p1:coh-equation, step:p1:coh-unique, step:p1:coh-real
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L951-L951 | scalar existence and bound per component
EDGE: step:p1:coh-equation | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L951-L951 | scalar equation per component
EDGE: step:p1:coh-unique | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L952-L952 | scalar uniqueness per component
EDGE: step:p1:coh-real | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L951-L951 | scalar realness per component
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cohomological-operator
KIND: lemma
TITLE: Cohomological equation in operator norms, a-priori bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L959-L962
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L964-L992
CONTRACT_ID: bp:p1:cohomological-operator
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the cohomological lemma; g:T_rho->C^{pxq} holomorphic bounded 1-periodic, avg(g)=0, operator norm; (second claim) u holomorphic periodic with avg(u)=0
SOURCE_QUANTIFIERS: gamma, tau, rho, omega, delta, g, u
SOURCE_CONCLUSION: the cohomological lemma holds for matrix g with the operator norm, and every holomorphic periodic u with avg(u)=0 solving the equation satisfies the same bound
CONSTANT_SCOPE: c(n,tau) as in bp:p1:cohomological
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coo-entries, step:p1:coo-vectors, step:p1:coo-norm, step:p1:coo-apriori, bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L968-L968 | proof step of this result
EDGE: step:p1:coo-vectors | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L973-L973 | proof step of this result
EDGE: step:p1:coo-norm | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L980-L980 | proof step of this result
EDGE: step:p1:coo-apriori | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L985-L985 | proof step of this result
EDGE: bp:p1:cohomological | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L960-L960 | the lemma extended to the operator norm
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coo-entries
KIND: step
TITLE: The entrywise solution
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L968-L971
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L968-L971
CONTRACT_ID: step:p1:coo-entries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g matrix valued; cohomological lemma applied entrywise
SOURCE_QUANTIFIERS: entries
SOURCE_CONCLUSION: unique entrywise solution u on T_{rho-delta} with avg(u)=0, Du omega=g; every zero-average periodic solution equals u
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L969-L969 | applied to each entry
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coo-vectors
KIND: step
TITLE: Testing against vectors
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L973-L978
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L973-L978
CONTRACT_ID: step:p1:coo-vectors
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v in C^q, |v|<=1; u from coo-entries
SOURCE_QUANTIFIERS: v; theta in T_{rho-delta}
SOURCE_CONCLUSION: |u(theta)v| <= Gamma ||g||_rho, Gamma=c(n,tau) gamma^-1 delta^-(tau+n)
CONSTANT_SCOPE: Gamma depends on n, tau, gamma, delta
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms, step:p1:coo-entries, bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L975-L975 | g v <= g v
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L976-L976 | uv solves the equation with data gv; uniqueness
EDGE: bp:p1:cohomological | blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L977-L977 | uniqueness and bound for C^p-valued data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coo-norm
KIND: step
TITLE: Operator norm
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L980-L983
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L980-L983
CONTRACT_ID: step:p1:coo-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: vector bound of previous step; u from coo-entries
SOURCE_QUANTIFIERS: theta in T_{rho-delta}
SOURCE_CONCLUSION: |u(theta)| <= Gamma ||g||_rho, for every zero-average periodic solution
CONSTANT_SCOPE: Gamma as above
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms, step:p1:coo-vectors, step:p1:coo-entries
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L981-L981 | operator norm as sup over v<=1
EDGE: step:p1:coo-vectors | blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L981-L981 | bound on u(theta)v
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L982-L982 | every solution equals u
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coo-apriori
KIND: step
TITLE: A-priori form
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L985-L991
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L985-L991
CONTRACT_ID: step:p1:coo-apriori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic 1-periodic on T_rho, C^p or C^{pxq} valued, avg(u)=0, ||Du omega||_rho <= H < infinity
SOURCE_QUANTIFIERS: H; delta in (0,rho)
SOURCE_CONCLUSION: ||u||_{rho-delta} <= Gamma H
CONSTANT_SCOPE: Gamma as above
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:averages-real, step:p1:coo-entries, step:p1:coo-norm
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L988-L988 | g=Du omega holomorphic
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L989-L989 | avg(g)=0 from entries of the real restriction
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L990-L990 | u restricted is a solution in the class
EDGE: step:p1:coo-norm | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L991-L991 | bound for every zero-average periodic solution
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:iteration
KIND: lemma
TITLE: Quadratic iteration on nested strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:iteration@L997-L1002
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1004-L1018
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
EDGE: step:p1:it-super | blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1005-L1010 | proof step of this result
EDGE: step:p1:it-linear | blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1012-L1017 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:it-super
KIND: step
TITLE: Super-exponential decay
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-super@L1005-L1010
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-super@L1005-L1010
CONTRACT_ID: step:p1:it-super
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Q>0; p>=0; y_{m+1}<=Q 2^{pm} y_m^2; Q 2^p y_0<=1/2
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

NODE: step:p1:it-linear
KIND: step
TITLE: The form linear in $y_0$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-linear@L1012-L1017
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:it-linear@L1012-L1017
CONTRACT_ID: step:p1:it-linear
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Q>0; p>=0; y_{m+1}<=Q 2^{pm} y_m^2; q=Q 2^p y_0<=1
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
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Self-contained remark; proof is inline (real h with |h|<=1 are a subset of complex ones; primarity identity at the real point x).

NODE: bp:p1:real-restriction
KIND: lemma
TITLE: Real restriction
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1035-L1039
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1041-L1059
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
EDGE: step:p1:rr-analytic | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1045-L1047 | proof step of this result
EDGE: step:p1:rr-derivative | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1049-L1053 | proof step of this result
EDGE: step:p1:rr-consequences | blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1055-L1058 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:rr-analytic
KIND: step
TITLE: Analyticity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1045-L1047
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1045-L1047
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
EDGE: bp:p1:holomorphic-analytic | blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1046-L1047 | part (b) with U=T_rho, m=n, W=C^p gives real analyticity of the restriction
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:rr-derivative
KIND: step
TITLE: The derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-derivative@L1049-L1053
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-derivative@L1049-L1053
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:rr-consequences
KIND: step
TITLE: Norm and primarity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1055-L1058
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1055-L1058
CONTRACT_ID: step:p1:rr-consequences
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Dk(x) is the restriction of the C-linear map DK(x) with DK(x)(R^n) in R^p (previous step); K primary when claimed
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
DEPS: step:p1:hr-derivative, step:p1:hr-components, step:p1:hr-matrix, bp:p0:hamiltonian#hamiltonianVectorField, bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p0:hamiltonian#omegaZero, bp:p0:hamiltonian#symplecticForm
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:hr-derivative | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1073-L1079 | proof step of this result
EDGE: step:p1:hr-components | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1081-L1087 | proof step of this result
EDGE: step:p1:hr-matrix | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1089-L1095 | proof step of this result
EDGE: bp:p0:hamiltonian#hamiltonianVectorField | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1063-L1064 | X_H in the statement is the frozen real vector field
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1063-L1064 | X_h, X_varphi in the statement is the frozen complex vector field
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1065-L1066 | Omega_0 in the statement
EDGE: bp:p0:hamiltonian#symplecticForm | blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1065-L1066 | symplectic form Omega_0 in the statement
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hr-derivative
KIND: step
TITLE: The real derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-derivative@L1073-L1079
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-derivative@L1073-L1079
CONTRACT_ID: step:p1:hr-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V_R={y in R^n x R^n: y in V} open neighbourhood of z; H=Re h near z; h real at real points
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

NODE: step:p1:hr-components
KIND: step
TITLE: Components
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1081-L1087
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-components@L1081-L1087
CONTRACT_ID: step:p1:hr-components
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the previous step; frozen definitions of X_H and X_h
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

NODE: step:p1:hr-matrix
KIND: step
TITLE: Matrix form
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1089-L1095
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1089-L1095
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
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1091-L1092 | frozen formula for X_phi
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1093-L1093 | Omega_0 identified with -J
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:hr-matrix@L1093-L1094 | Omega_0^2=-I gives J=-Omega_0=Omega_0^{-1}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:lip-image-product
KIND: claim
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1106-L1109
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1106-L1109
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
DEPS: bp:p1:lip-image-product#product-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:lip-image-product#product-lebesgue | blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1107-L1108 | stated without proof; see SOURCE_GAP
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Stated without proof.

NODE: bp:p1:lip-image-product#product-lebesgue
KIND: step
TITLE: Product of Lebesgue measures is Lebesgue measure on R^{2n}
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1107-L1108
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image-product@L1107-L1108
CONTRACT_ID: bp:p1:lip-image-product#product-lebesgue
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: R^n x R^n = R^{2n}
SOURCE_QUANTIFIERS: n
SOURCE_CONCLUSION: the product of the Lebesgue measures on R^n x R^n is Lebesgue measure on R^{2n}
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
NOTE: SOURCE_GAP: the identification of the product Lebesgue measure with Lebesgue measure on R^{2n} is asserted without proof and is not among (E1)-(E10).

NODE: bp:p1:lip-image
KIND: lemma
TITLE: Lipschitz images and preimages
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1111-L1116
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1118-L1153
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
EDGE: step:p1:li-cubes | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1122-L1129 | proof step of this result
EDGE: step:p1:li-image | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1131-L1135 | proof step of this result
EDGE: step:p1:li-sum | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1137-L1142 | proof step of this result
EDGE: step:p1:li-preimage | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1144-L1148 | proof step of this result
EDGE: step:p1:li-product | blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1150-L1152 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:li-cubes
KIND: step
TITLE: Covers by cubes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1122-L1129
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-cubes@L1122-L1129
CONTRACT_ID: step:p1:li-cubes
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S subset R^d; eps>0; (E3) Lebesgue outer measure as infimum over box covers
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

NODE: step:p1:li-sum
KIND: step
TITLE: Summation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1137-L1142
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-sum@L1137-L1142
CONTRACT_ID: step:p1:li-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: cube cover Q_j of S with total volume <= meas S+eps; image bound for each cube
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
DEPS: step:p1:li-sum
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

NODE: step:p1:li-product
KIND: step
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-product@L1150-L1152
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:li-product@L1150-L1152
CONTRACT_ID: step:p1:li-product
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the previous steps; remark on products
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

NODE: bp:p1:mcshane
KIND: lemma
TITLE: McShane extension
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1155-L1158
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1160-L1181
CONTRACT_ID: bp:p1:mcshane
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X metric space; S subset X; Lambda>=0; phi:S->R^d Lambda-Lipschitz (max norm); optionally |phi|<=beta on S
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
EDGE: step:p1:mc-component | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1164-L1170 | proof step of this result
EDGE: step:p1:mc-components | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1172-L1175 | proof step of this result
EDGE: step:p1:mc-clamp | blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1177-L1180 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mc-component
KIND: step
TITLE: One component
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-component@L1164-L1170
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-component@L1164-L1170
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mc-components
KIND: step
TITLE: All components
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1172-L1175
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-components@L1172-L1175
CONTRACT_ID: step:p1:mc-components
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: each component phi_j has a Lambda-Lipschitz extension U_j
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

NODE: step:p1:mc-clamp
KIND: step
TITLE: Clamping
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1177-L1180
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mc-clamp@L1177-L1180
CONTRACT_ID: step:p1:mc-clamp
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |phi|<=beta on S; U the extension
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
NOTE: -

NODE: bp:p1:lipeo-fixed
KIND: claim
TITLE: Bijections fixing a set
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo-fixed@L1183-L1188
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo-fixed@L1183-L1188
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Self-contained remark; proof is inline (injectivity argument).

NODE: bp:p1:lipeo
KIND: lemma
TITLE: Lipeomorphisms
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1190-L1194
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1196-L1212
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
EDGE: step:p1:lipeo-bounds | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1199-L1202 | proof step of this result
EDGE: step:p1:lipeo-onto | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1204-L1207 | proof step of this result
EDGE: step:p1:lipeo-zero | blueprint/parts/p1-analysis.tex#bp:p1:lipeo@L1209-L1211 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:lipeo-bounds
KIND: step
TITLE: Bi-Lipschitz bounds
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-bounds@L1199-L1202
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-bounds@L1199-L1202
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:lipeo-onto
KIND: step
TITLE: Surjectivity
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1204-L1207
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1204-L1207
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
EDGE: bp:p1:ext-banach | blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1205-L1206 | fixed point of the contraction x->y-G(x)
EDGE: step:p1:lipeo-bounds | blueprint/parts/p1-analysis.tex#step:p1:lipeo-onto@L1206-L1207 | injectivity and Lipschitz inverse from the lower bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1c
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:lipeo-zero
KIND: step
TITLE: The set where $G$ vanishes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1209-L1211
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:lipeo-zero@L1209-L1211
CONTRACT_ID: step:p1:lipeo-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G=0 on Z'; Psi a bijection
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

NODE: bp:p2:standing
KIND: definition
TITLE: Standing data of Part~\ref{bp:p2}
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:standing@L56-L65
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:standing
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (this is the package of typing data)
SOURCE_QUANTIFIERS: fixed once for all of Part 2 (outermost): n>=2, tau>=n-1, M,sigma_K,sigma_B,sigma_T>0, B(frak) open in C^n x C^n invariant under (theta,I)->(theta+k,I), h, gamma>0, omega
SOURCE_CONCLUSION: defines the standing data: h holomorphic on B(frak), 1-periodic in theta, real at real points; |X_h|,|DX_h|,|D^2X_h| <= M on B(frak) (bilinear operator norm for D^2X_h); gamma>0 and omega in Dio_{gamma,tau}
CONSTANT_SCOPE: M, sigma_K, sigma_B, sigma_T, n, tau, gamma, omega, h, B(frak) are fixed for all of Part 2; nothing depends on later quantities
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p0:diophantine#IsDiophantine
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p2-aposteriori.tex#bp:p2:standing@L62-L62 | X_h in the bounds is the Hamiltonian vector field
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p2-aposteriori.tex#bp:p2:standing@L64-L64 | omega in Dio_{gamma,tau}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:constants
KIND: definition
TITLE: Exponents and constants
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:constants@L78-L108
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: tau>=0, n>=1 (here n>=2, tau>=n-1); c(n,tau) the constant of the cohomological lemma; M,sigma_K,sigma_B,sigma_T>0; mu>0 and 0<rho_inf<rho for c_* and delta_0
SOURCE_QUANTIFIERS: for the data (n,tau,M,sigma_K,sigma_B,sigma_T) in order; then for mu>0 and 0<rho_inf<rho
SOURCE_CONCLUSION: defines kappa=tau+n, a=2kappa+2, c_R, m(frak), Theta=4n m^3, the constants C_X,C_T,C_Omega,C_sym,C_red,C_xi0,C_xiN,C_g,C_xi,C_DeltaK,C_lin,C_E,C_G,C_B,C_DeltaN,C_DeltaX,C_DeltaT,c_step,c_sum, and c_*, delta_0; all >=1
CONSTANT_SCOPE: kappa,a,c_R,m,Theta,C_* and c_step,c_sum depend only on (n,tau,M,sigma_K,sigma_B,sigma_T); c_* = c_*(n,tau,M,sigma_K,sigma_B,sigma_T,mu); delta_0 = delta_0(rho,rho_inf)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p2-aposteriori.tex#bp:p2:constants@L79-L79 | c(n,tau) is the constant of the cohomological lemma
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:constants@L99-L99 | the constants are functions of the standing parameters n,tau,M,sigma_K,sigma_B,sigma_T
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:matrix
KIND: corollary
TITLE: Matrix norms
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L122-L139
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L141-L156
CONTRACT_ID: bp:p2:matrix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standard matrix and vector norms (max norm on vectors, |M|=max_i sum_j |M_ij|, operator norm on bilinear/matrix maps); Omega_0 the canonical 2n x 2n matrix
SOURCE_QUANTIFIERS: for all p,q and all p x q complex matrices M, M_1, M_2, M_ij, vectors v; block matrices conformal; matrices U_1,U_2 with n rows
SOURCE_CONCLUSION: (a) max|M_ij|<=|M|=sup_{|v|<=1}|Mv| and |M^T|<=p|M|; (b) |M_1M_2|<=|M_1||M_2|, |Mv|<=|M||v|; (c) block bounds and |diag(M_1,M_2)|=max{|M_1|,|M_2|}; (d) Omega_0^T=-Omega_0=Omega_0^{-1}, Omega_0^2=-I, Omega_0^T Omega_0=I, |Omega_0|=1, Omega_0(U_1;U_2)=(-U_2;U_1)
CONSTANT_SCOPE: none (constants are absolute, no parameters)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:matrix-op, step:p2:matrix-transpose, step:p2:matrix-blocks, bp:p0:hamiltonian#omegaZero
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:matrix-op | blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L142-L142 | proof step of this result
EDGE: step:p2:matrix-transpose | blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L146-L146 | proof step of this result
EDGE: step:p2:matrix-blocks | blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L149-L149 | proof step of this result
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L134-L134 | Omega_0 in (d)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:matrix-op
KIND: step
TITLE: Operator norm
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:matrix-op@L142-L144
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:matrix-op@L142-L144
CONTRACT_ID: step:p2:matrix-op
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M a p x q matrix
SOURCE_QUANTIFIERS: for all p x q matrices M
SOURCE_CONCLUSION: |M|=max_i sum_j|M_ij|=sup_{|v|<=1}|Mv| and |M_ij|<=|M|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:operator-norms | blueprint/parts/p2-aposteriori.tex#step:p2:matrix-op@L143-L143 | operator norm as row sum and sup
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:matrix-transpose
KIND: step
TITLE: Transpose and products
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:matrix-transpose@L146-L147
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:matrix-transpose@L146-L147
CONTRACT_ID: step:p2:matrix-transpose
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M, M_1, M_2 matrices of compatible sizes
SOURCE_QUANTIFIERS: for all such matrices
SOURCE_CONCLUSION: |M^T|<=p|M| and |M_1M_2|<=|M_1||M_2|, |Mv|<=|M||v|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:matrix-norms | blueprint/parts/p2-aposteriori.tex#step:p2:matrix-transpose@L147-L147 | transpose bound and product bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:matrix-blocks
KIND: step
TITLE: Blocks and $\Omega_0$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:matrix-blocks@L149-L155
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:matrix-blocks@L149-L155
CONTRACT_ID: step:p2:matrix-blocks
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block matrices M_1,M_2,M_ij; matrices U_1,U_2 with n rows
SOURCE_QUANTIFIERS: for all such block matrices
SOURCE_CONCLUSION: block bounds in (c), |diag(M_1,M_2)|=max{|M_1|,|M_2|}, and the identities of (d) for Omega_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms, bp:p1:matrix-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:operator-norms | blueprint/parts/p2-aposteriori.tex#step:p2:matrix-blocks@L150-L150 | block bounds, Omega_0^T=-Omega_0, Omega_0^2=-I, ~Omega_0~=1
EDGE: bp:p1:matrix-norms | blueprint/parts/p2-aposteriori.tex#step:p2:matrix-blocks@L151-L151 | stacked-block identity for diag(M_1,M_2)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:averages
KIND: corollary
TITLE: Averages
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L158-L167
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L169-L180
CONTRACT_ID: bp:p2:averages
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (a) f: R^n->C^{pxq} continuous and 1-periodic; (b) v holomorphic and 1-periodic on T_r (not necessarily bounded), values in C, C^p or C^{pxq}
SOURCE_QUANTIFIERS: for all p,q, r>0, f resp. v; averages over [0,1]^n
SOURCE_CONCLUSION: (a) f integrable on [0,1]^n, avg f linear in f, real if f is, |avg f|<=sup_{[0,1]^n}|f|; (b) avg(d_{theta_l} v)=0 for every l and avg(d_omega v)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:avg-bound, step:p2:avg-deriv, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:avg-bound | blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L170-L170 | proof step of (a)
EDGE: step:p2:avg-deriv | blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L175-L175 | proof step of (b)
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L162-L162 | T_r in (b)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:avg-bound
KIND: step
TITLE: Integrability and the bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-bound@L170-L173
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-bound@L170-L173
CONTRACT_ID: step:p2:avg-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f continuous 1-periodic on R^n with values in matrices
SOURCE_QUANTIFIERS: for all such f
SOURCE_CONCLUSION: f integrable, avg f linear and real for real f, |avg f|<=sup|f|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral, bp:p1:averages-matrix
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p2-aposteriori.tex#step:p2:avg-bound@L171-L171 | continuous functions are integrable on a compact box
EDGE: bp:p1:averages-matrix | blueprint/parts/p2-aposteriori.tex#step:p2:avg-bound@L172-L172 | ~avg f~<=sup_{R^n}~f~
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:avg-deriv
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L175-L179
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L175-L179
CONTRACT_ID: step:p2:avg-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v holomorphic and 1-periodic on T_r; restriction to R^n is continuous, periodic, C^1
SOURCE_QUANTIFIERS: for all such v and l
SOURCE_CONCLUSION: avg(d_{theta_l} v)=0 and avg(d_omega v)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:averages-real
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:averages-real | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L178-L178 | average of the derivative of a periodic C^1 function vanishes
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: the parenthetical alternative proof (periodic-bounded, averages) at L178-L179 is not used by the main route; edges to bp:p1:periodic-bounded and bp:p1:averages dropped

NODE: bp:p2:cohomological
KIND: corollary
TITLE: Cohomological equation in operator norms
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:cohomological@L186-L198
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:cohomological@L200-L212
CONTRACT_ID: bp:p2:cohomological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<delta<r; Gamma_delta=c_R gamma^{-1} delta^{-kappa}; the standing data of Part 2 (gamma, tau, omega in Dio_{gamma,tau}); (a) g:T_r->C^p holomorphic, 1-periodic, |g|<=H, avg g=0; (b) u:T_r->C^{pxq} holomorphic, 1-periodic, avg u=0, |d_omega u|<=H on T_r
SOURCE_QUANTIFIERS: for all 0<delta<r, p,q, H; g resp. u as stated (outermost: standing data)
SOURCE_CONCLUSION: (a) unique u=Rg holomorphic 1-periodic on T_{r-delta}, avg u=0, d_omega u=g, |u|<=Gamma_delta H, real on reals if g is; (b) |u|<=Gamma_delta H on T_{r-delta}
CONSTANT_SCOPE: c_R depends only on (n,tau); kappa=tau+n; Gamma_delta depends on gamma, delta, n, tau only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:coh-components, step:p2:coh-apriori, bp:p2:constants, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:coh-components | blueprint/parts/p2-aposteriori.tex#bp:p2:cohomological@L201-L201 | proof step of (a)
EDGE: step:p2:coh-apriori | blueprint/parts/p2-aposteriori.tex#bp:p2:cohomological@L207-L207 | proof step of (b)
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:cohomological@L187-L187 | c_R and kappa in Gamma_delta
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:cohomological@L187-L187 | gamma, tau, omega of the package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:coh-components
KIND: step
TITLE: Componentwise solution
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:coh-components@L201-L205
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:coh-components@L201-L205
CONTRACT_ID: step:p2:coh-components
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g:T_r->C^p holomorphic, 1-periodic, |g|<=H, avg g=0; 0<delta<r
SOURCE_QUANTIFIERS: for each component g_i; delta fixed
SOURCE_CONCLUSION: unique componentwise solution u, |u|<=Gamma_delta H, real if g real; uniqueness of u
CONSTANT_SCOPE: c(n,tau)<=c_R
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:coh-components@L202-L202 | solve each component
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:coh-components@L204-L204 | c(n,tau)<=c_R and Gamma_delta
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:coh-apriori
KIND: step
TITLE: The a-priori bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L207-L211
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L207-L211
CONTRACT_ID: step:p2:coh-apriori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u:T_r->C^{pxq} holomorphic 1-periodic, avg u=0, |d_omega u|<=H on T_r
SOURCE_QUANTIFIERS: for all such u; 0<delta<r
SOURCE_CONCLUSION: |u|<=Gamma_delta H on T_{r-delta}
CONSTANT_SCOPE: c(n,tau)<=c_R
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:averages, bp:p1:cohomological-operator, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L209-L209 | avg d_omega u=0
EDGE: bp:p1:cohomological-operator | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L210-L210 | a-priori bound for periodic solutions of Du omega=g
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L211-L211 | c(n,tau)<=c_R, Gamma_delta
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:hamiltonian
KIND: lemma
TITLE: The Hamiltonian vector field
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L214-L230
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L232-L258
CONTRACT_ID: bp:p2:hamiltonian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing)
SOURCE_QUANTIFIERS: z in B(frak), k in Z^n, beta>0, w with |w|<beta and B_beta(z) subset B(frak); M from the standing data
SOURCE_CONCLUSION: (a) X_h holomorphic, DX_h and D^2X_h exist, |D(DX_h)|=|D^2X_h|<=M; (b) X_h and DX_h are invariant under z->z+(k,0); (c) X_h,DX_h real at real z; (d) Omega_0 X_h=(Dh)^T, Omega_0 DX_h symmetric, DX_h^T Omega_0+Omega_0 DX_h=0; (e) |DX_h(z+w)-DX_h(z)|<=M|w| and |X_h(z+w)-X_h(z)-DX_h(z)w|<=M|w|^2
CONSTANT_SCOPE: constants are M and the standing data only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ham-regular, step:p2:ham-periodic, step:p2:ham-real, step:p2:ham-symplectic, step:p2:ham-mvt, bp:p2:standing, bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p0:hamiltonian#omegaZero
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ham-regular | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L233-L233 | proof step (a)
EDGE: step:p2:ham-periodic | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L238-L238 | proof step (b)
EDGE: step:p2:ham-real | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L243-L243 | proof step (c)
EDGE: step:p2:ham-symplectic | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L248-L248 | proof step (d)
EDGE: step:p2:ham-mvt | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L253-L253 | proof step (e)
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L215-L215 | the lemma is stated under the standing assumption
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L217-L217 | X_h
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L221-L221 | Omega_0 in (d)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ham-regular
KIND: step
TITLE: Regularity
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-regular@L233-L236
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-regular@L233-L236
CONTRACT_ID: step:p2:ham-regular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing): h holomorphic on B(frak)
SOURCE_QUANTIFIERS: z in B(frak)
SOURCE_CONCLUSION: Dh and all derivatives holomorphic; X_h holomorphic on B(frak); |D(DX_h)|=|D^2X_h|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:ham-regular@L234-L234 | derivatives of holomorphic h are holomorphic
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p2-aposteriori.tex#step:p2:ham-regular@L235-L235 | X_h=(d_I h,-d_theta h) by definition
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:ham-regular@L234-L234 | h holomorphic on B(frak)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ham-periodic
KIND: step
TITLE: Periodicity
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-periodic@L238-L241
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-periodic@L238-L241
CONTRACT_ID: step:p2:ham-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing): B(frak) invariant under t_k=(theta,I)->(theta+k,I), h o t_k=h
SOURCE_QUANTIFIERS: k in Z^n, z in B(frak)
SOURCE_CONCLUSION: X_h o t_k=X_h and DX_h o t_k=DX_h
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:ham-periodic@L239-L239 | invariance of B(frak) and periodicity of h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ham-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-real@L243-L246
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-real@L243-L246
CONTRACT_ID: step:p2:ham-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing): h real at real points of B(frak)
SOURCE_QUANTIFIERS: real z in B(frak)
SOURCE_CONCLUSION: Dh, X_h and DX_h are real at real points
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:ham-real@L244-L244 | h real at real points
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ham-symplectic
KIND: step
TITLE: Symplectic identity
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-symplectic@L248-L251
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-symplectic@L248-L251
CONTRACT_ID: step:p2:ham-symplectic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h holomorphic on B(frak); Omega_0^T=-Omega_0
SOURCE_QUANTIFIERS: z in B(frak)
SOURCE_CONCLUSION: Omega_0 X_h=(Dh)^T, Omega_0 DX_h=D^2h symmetric, DX_h^T Omega_0=-Omega_0 DX_h
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:hamiltonian-real, bp:p1:holomorphic-regularity, bp:p2:matrix
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:hamiltonian-real | blueprint/parts/p2-aposteriori.tex#step:p2:ham-symplectic@L249-L249 | Omega_0 X_h=(Dh)^T
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:ham-symplectic@L250-L250 | symmetry of the Hessian
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:ham-symplectic@L251-L251 | Omega_0^T=-Omega_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ham-mvt
KIND: step
TITLE: Mean value estimates
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-mvt@L253-L257
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-mvt@L253-L257
CONTRACT_ID: step:p2:ham-mvt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); B_beta(z) subset B(frak), |w|<beta; (a): |D(DX_h)|<=M
SOURCE_QUANTIFIERS: z in B(frak), w with |w|<beta
SOURCE_CONCLUSION: |DX_h(z+w)-DX_h(z)|<=M|w| and |X_h(z+w)-X_h(z)-DX_h(z)w|<=(M/2)|w|^2<=M|w|^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:increments-open, bp:p1:taylor, step:p2:ham-regular, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:increments-open | blueprint/parts/p2-aposteriori.tex#step:p2:ham-mvt@L255-L255 | mean value estimate on the convex ball
EDGE: bp:p1:taylor | blueprint/parts/p2-aposteriori.tex#step:p2:ham-mvt@L256-L256 | second order Taylor bound with A=M
EDGE: step:p2:ham-regular | blueprint/parts/p2-aposteriori.tex#step:p2:ham-mvt@L256-L256 | ~D(DX_h)~<=M by (a)
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:ham-mvt@L256-L256 | bounds by M
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:objects
KIND: definition
TITLE: Objects attached to a parameterization
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L270-L293
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:objects
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0; K:C^n->C^n x C^n holomorphic on T_r with K(T_r) subset B(frak) (data of the standing package); for the second group det G != 0 on T_r; for avg T, T continuous on R^n
SOURCE_QUANTIFIERS: for all r>0, K, theta in T_r; the standing data fixed outermost
SOURCE_CONCLUSION: defines L=DK, G=L^T L, E=X_h o K - L omega, A=DX_h o K, Omega_K=L^T Omega_0 L; and where det G != 0: B=G^{-1}, N=Omega_0 L B, P=(L N), X_N=AN-d_omega N, T=N^T Omega_0 X_N, E_sym=P^T Omega_0 P-Omega_0, Q=-Omega_0 P^T Omega_0, eta=Omega_0 P^T Omega_0 E=(eta^L;eta^N)=(-N^T Omega_0 E; L^T Omega_0 E); avg T=int_{[0,1]^n} T
CONSTANT_SCOPE: none (definitions; depend on K, h, omega only)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:standing, bp:p0:domains#complexStrip, bp:p0:hamiltonian#hamiltonianVectorFieldC, bp:p0:hamiltonian#omegaZero
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L271-L271 | B(frak), h, omega of the package
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L271-L271 | T_r
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L275-L275 | X_h
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L275-L275 | Omega_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:frozen-agreement
KIND: claim
TITLE: Agreement with the frozen definitions
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L295-L304
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L295-L304
CONTRACT_ID: bp:p2:frozen-agreement
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: on the open strip T_r: the objects of bp:p2:objects; det G a unit where inverse is used; T continuous on R^n for avg T
SOURCE_QUANTIFIERS: for all r>0, K as in bp:p2:objects; frozen definitions in their stated arguments
SOURCE_CONCLUSION: the frozen gramMatrix, normalFrame, torsion, invarianceError coincide with G, N, T, E; the frozen matrix inverse is the true inverse where det is a unit; the frozen torsionAverage equals avg T at real points; each use of B,N,T is preceded by det G != 0 and each use of avg T by continuity of T on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:objects, bp:p0:stripdata#gramMatrix, bp:p0:stripdata#normalFrame, bp:p0:stripdata#torsion, bp:p0:stripdata#invarianceError, bp:p0:stripdata#torsionAverage
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L296-L296 | G,N,T,E,avg T compared with the frozen definitions
EDGE: bp:p0:stripdata#gramMatrix | blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L296-L296 | frozen G
EDGE: bp:p0:stripdata#normalFrame | blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L297-L297 | frozen N
EDGE: bp:p0:stripdata#torsion | blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L298-L298 | frozen T
EDGE: bp:p0:stripdata#invarianceError | blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L299-L299 | frozen E
EDGE: bp:p0:stripdata#torsionAverage | blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L300-L300 | frozen avg T
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: a bridge claim between the frozen definitions and the Part 2 objects; kept because Part 2 conclusion step nodes consume it; the reference to bp:p0:totality (excluded in K-p0 as an administrative note) is a pointer, so the former edge was dropped

NODE: bp:p2:admissible
KIND: definition
TITLE: Admissible parameterization
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:admissible@L306-L317
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:admissible
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0, beta>0, 0<=epsilon<=1; the standing data of Part 2 (B(frak), sigma_K, sigma_B, sigma_T)
SOURCE_QUANTIFIERS: for all r,beta,epsilon, K:C^n->C^n x C^n
SOURCE_CONCLUSION: defines (r,beta,epsilon)-admissible: (A1) K holomorphic, primary and real on reals on T_r; (A2) B_beta(K(theta)) subset B(frak) for all theta in T_r; (A3) |DK|<=sigma_K on T_r; (A4) det G != 0 and |B|<=sigma_B on T_r; (A5) avg T invertible and |avg T^{-1}|<=sigma_T; (A6) |E|<=epsilon on T_r
CONSTANT_SCOPE: none (definition; uses sigma_K,sigma_B,sigma_T of the standing data)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:standing, bp:p2:objects, bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals, bp:p0:stripdata#torsionAverage
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:admissible@L311-L311 | B(frak) and sigma_K,sigma_B,sigma_T
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:admissible@L313-L313 | G, B, E, T, avg T
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p2-aposteriori.tex#bp:p2:admissible@L310-L310 | primary on T_r
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p2-aposteriori.tex#bp:p2:admissible@L310-L310 | real on reals
EDGE: bp:p0:stripdata#torsionAverage | blueprint/parts/p2-aposteriori.tex#bp:p2:admissible@L314-L314 | avg T
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:periodicity
KIND: lemma
TITLE: Periodicity and realness of the attached objects
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L324-L333
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L335-L355
CONTRACT_ID: bp:p2:periodicity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K holomorphic and primary on T_r with K(T_r) subset B(frak); for B,N,P,X_N,T,E_sym,eta: det G != 0 on T_r; for realness: K real on reals
SOURCE_QUANTIFIERS: for all r>0, K as stated
SOURCE_CONCLUSION: L,G,E,A,Omega_K,h o K, K^I and f_j=(K^I)^T d_{theta_j}K^theta (j=1..n) are 1-periodic on T_r; if det G != 0 then B,N,P,X_N,T,E_sym,eta are 1-periodic; if also K real on reals, all these objects and avg T are real at real points
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:per-dk, step:p2:per-compose, step:p2:per-real, bp:p2:standing, bp:p2:objects, bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:per-dk | blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L336-L336 | proof step
EDGE: step:p2:per-compose | blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L342-L342 | proof step
EDGE: step:p2:per-real | blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L348-L348 | proof step
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L325-L325 | h periodic on B(frak)
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L325-L325 | the objects L,G,E,A,...
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L325-L325 | primary K
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L329-L329 | real on reals
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:per-dk
KIND: step
TITLE: Periodicity of $DK$ and $K^I$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-dk@L336-L340
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-dk@L336-L340
CONTRACT_ID: step:p2:per-dk
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic and primary on T_r, i.e. K(theta+k)=K(theta)+(k,0) on T_r
SOURCE_QUANTIFIERS: k in Z^n, theta in T_r
SOURCE_CONCLUSION: K^I, DK and D^2K are 1-periodic on T_r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:stripdata#IsPrimaryOnStrip
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p2-aposteriori.tex#step:p2:per-dk@L337-L337 | primary identity K(theta+k)=K(theta)+(k,0)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:per-compose
KIND: step
TITLE: Periodicity of the composed objects
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L342-L346
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L342-L346
CONTRACT_ID: step:p2:per-compose
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K primary, K(T_r) subset B(frak); periodicity of DK, K^I
SOURCE_QUANTIFIERS: k in Z^n, theta in T_r
SOURCE_CONCLUSION: X_h o K, DX_h o K, h o K and every algebraic expression in them and in L, K^I (products, transposes, inverse, derivatives) are 1-periodic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p2:standing, step:p2:per-dk, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L343-L343 | periodicity of X_h, DX_h under (k,0)
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L343-L343 | h periodic
EDGE: step:p2:per-dk | blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L343-L343 | K(theta+k)=K(theta)+(k,0), periodic L and K^I
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:per-compose@L344-L344 | the objects are algebraic expressions in L, X_h o K, A, K^I
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:per-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L348-L354
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L348-L354
CONTRACT_ID: step:p2:per-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K real on reals, periodic objects
SOURCE_QUANTIFIERS: real x
SOURCE_CONCLUSION: all listed objects are real at real points and avg T is real
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p1:real-inverse, bp:p2:averages, bp:p0:stripdata#IsRealOnReals, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L350-L350 | X_h, DX_h real at real points
EDGE: bp:p1:real-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L352-L352 | inverse of real invertible matrix is real
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L354-L354 | avg of real function is real
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L349-L349 | K real on reals
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L353-L353 | definitions of the objects
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:frequency
KIND: lemma
TITLE: Frequency bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L357-L365
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L367-L380
CONTRACT_ID: bp:p2:frequency
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K satisfies (A3),(A4),(A6) on T_r with epsilon<=1 and K(T_r) subset B(frak)
SOURCE_QUANTIFIERS: for all r>0, epsilon in [0,1], K as stated
SOURCE_CONCLUSION: gamma<=|omega|<=2n sigma_K sigma_B (M+epsilon)<=Theta
CONSTANT_SCOPE: gamma, omega from the standing data; Theta=4n m^3 depends only on (n,M,sigma_K,sigma_B,sigma_T)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:freq-solve, step:p2:freq-upper, step:p2:freq-lower, bp:p2:admissible, bp:p2:standing, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:freq-solve | blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L368-L368 | proof step
EDGE: step:p2:freq-upper | blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L372-L372 | proof step
EDGE: step:p2:freq-lower | blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L377-L377 | proof step
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L358-L358 | (A3),(A4),(A6)
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L361-L361 | M, gamma, omega
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L361-L361 | Theta and m
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:freq-solve
KIND: step
TITLE: Solving for $\omega$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:freq-solve@L368-L370
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:freq-solve@L368-L370
CONTRACT_ID: step:p2:freq-solve
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K satisfies (A4): det G != 0 on T_r; E=X_h(K)-L omega, B L^T L=I_n
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: omega=B(theta)L(theta)^T(X_h(K(theta))-E(theta))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:freq-solve@L369-L369 | definitions of E and B=G^{-1}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:freq-upper
KIND: step
TITLE: Upper bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:freq-upper@L372-L375
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:freq-upper@L372-L375
CONTRACT_ID: step:p2:freq-upper
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); (A3),(A4),(A6), epsilon<=1; omega formula of the previous step
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: |omega|<=2n sigma_K sigma_B (M+epsilon)<=Theta
CONSTANT_SCOPE: m, Theta of bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:freq-solve, bp:p2:matrix, bp:p2:admissible, bp:p2:standing, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:freq-solve | blueprint/parts/p2-aposteriori.tex#step:p2:freq-upper@L374-L374 | formula for omega
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:freq-upper@L373-L373 | ~L^T~<=2n~L~ and product bound
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:freq-upper@L373-L373 | ~DK~<=sigma_K, ~B~<=sigma_B, ~E~<=epsilon
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:freq-upper@L374-L374 | ~X_h~<=M
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:freq-upper@L375-L375 | m and Theta, M+epsilon<=2m
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:freq-lower
KIND: step
TITLE: Lower bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:freq-lower@L377-L379
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:freq-lower@L377-L379
CONTRACT_ID: step:p2:freq-lower
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing): omega in Dio_{gamma,tau}
SOURCE_QUANTIFIERS: k=e_1
SOURCE_CONCLUSION: gamma<=|omega_1|<=|omega|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:diophantine#IsDiophantine, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p2-aposteriori.tex#step:p2:freq-lower@L378-L378 | Diophantine inequality at k=e_1
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:freq-lower@L378-L378 | omega in Dio_{gamma,tau}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:frame-basic
KIND: lemma
TITLE: Regularity and bounds of the frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L382-L398
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L400-L425
CONTRACT_ID: bp:p2:frame-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K holomorphic on T_r satisfying (A2)-(A4) (primary and real not needed); (c) (A6); (d) |omega|<=Theta, 0<delta<=1, delta<r
SOURCE_QUANTIFIERS: for all r>0, K, epsilon, delta as stated
SOURCE_CONCLUSION: (a) L,G,E,A,Omega_K,B,N,P,X_N,T,E_sym,Q,eta holomorphic on T_r, B symmetric, T continuous on R^n so avg T defined; (b) |L|<=m, |L^T|<=2n m, |B|<=m, |N|<=m^2, |N^T|<=2n m^2, |P|<=2m^2, |A|<=m on T_r; (c) |eta^L|<=2n m^2 epsilon, |eta^N|<=2n m epsilon on T_r; (d) |X_N|<=C_X/delta, |T|<=C_T/delta on T_{r-delta}
CONSTANT_SCOPE: m, C_X, C_T depend only on (n,tau,M,sigma_K,sigma_B,sigma_T)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:fb-holo, step:p2:fb-bounds, step:p2:fb-eta, step:p2:fb-torsion, bp:p2:admissible, bp:p2:objects, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:fb-holo | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L401-L401 | proof step (a)
EDGE: step:p2:fb-bounds | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L408-L408 | proof step (b)
EDGE: step:p2:fb-eta | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L414-L414 | proof step (c)
EDGE: step:p2:fb-torsion | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L418-L418 | proof step (d)
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L383-L383 | (A2)-(A4)
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L386-L386 | the objects
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L388-L388 | m, Theta, C_X, C_T
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fb-holo
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406
CONTRACT_ID: step:p2:fb-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic on T_r with (A2),(A4)
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: all listed objects holomorphic on T_r; B symmetric; T continuous on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p2:admissible, bp:p1:holomorphic-inverse, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L402-L402 | X_h, DX_h holomorphic on B(frak)
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L403-L403 | (A4): det G != 0
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L404-L404 | inverse of a holomorphic invertible matrix is holomorphic
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L404-L404 | definitions of N,P,X_N,T,E_sym,Q,eta
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fb-bounds
KIND: step
TITLE: Frame bounds
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-bounds@L408-L412
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-bounds@L408-L412
CONTRACT_ID: step:p2:fb-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); (A3),(A4) on T_r
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: |L|<=m,|L^T|<=2n m,|N|<=m^2,|N^T|<=2n m^2,|P|<=2m^2,|A|<=M<=m
CONSTANT_SCOPE: m=max{1,M,sigma_K,sigma_B,sigma_T}
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible, bp:p2:matrix, bp:p2:standing, bp:p2:objects, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:fb-bounds@L409-L409 | (A3),(A4)
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:fb-bounds@L409-L409 | ~Omega_0~=1, transpose and product bounds
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:fb-bounds@L412-L412 | ~DX_h~<=M
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fb-bounds@L410-L410 | N,P definitions
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:fb-bounds@L409-L409 | m
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fb-eta
KIND: step
TITLE: Bounds on $\eta$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-eta@L414-L416
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-eta@L414-L416
CONTRACT_ID: step:p2:fb-eta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (A6): |E|<=epsilon; bounds of the previous step; eta^L=-N^T Omega_0 E, eta^N=L^T Omega_0 E
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: |eta^L|<=2n m^2 epsilon and |eta^N|<=2n m epsilon
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:objects, step:p2:fb-bounds, bp:p2:matrix, bp:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fb-eta@L415-L415 | eta^L,eta^N formulas
EDGE: step:p2:fb-bounds | blueprint/parts/p2-aposteriori.tex#step:p2:fb-eta@L415-L415 | ~N^T~,~L^T~
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:fb-eta@L415-L415 | ~Omega_0~=1 and product bound
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:fb-eta@L415-L415 | (A6)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fb-torsion
KIND: step
TITLE: Torsion bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-torsion@L418-L424
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-torsion@L418-L424
CONTRACT_ID: step:p2:fb-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |N|<=m^2 on T_r; |omega|<=Theta; 0<delta<=1, delta<r; N holomorphic
SOURCE_QUANTIFIERS: theta in T_{r-delta}
SOURCE_CONCLUSION: |d_omega N|<=4n^2 m^5/delta, |X_N|<=C_X/delta, |T|<=C_T/delta
CONSTANT_SCOPE: C_X=5n^2 m^5, C_T=2n m^2 C_X
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-corollaries, step:p2:fb-bounds, step:p2:fb-holo, bp:p2:matrix, bp:p2:objects, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-corollaries | blueprint/parts/p2-aposteriori.tex#step:p2:fb-torsion@L419-L419 | Cauchy estimate for d_omega N
EDGE: step:p2:fb-bounds | blueprint/parts/p2-aposteriori.tex#step:p2:fb-torsion@L419-L419 | ~N~<=m^2, ~A~<=m, ~N^T~<=2n m^2
EDGE: step:p2:fb-holo | blueprint/parts/p2-aposteriori.tex#step:p2:fb-torsion@L419-L419 | N holomorphic
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:fb-torsion@L422-L422 | product bounds
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fb-torsion@L422-L422 | X_N and T definitions
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:fb-torsion@L423-L423 | Theta, C_X, C_T
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:frame-identities
KIND: lemma
TITLE: Frame identities
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L441-L463
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L465-L513
CONTRACT_ID: bp:p2:frame-identities
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K holomorphic on T_r, K(T_r) subset B(frak), det G != 0 on T_r
SOURCE_QUANTIFIERS: for all r>0, K as stated; identities on T_r
SOURCE_CONCLUSION: (a) L^T Omega_0 N=-I_n, N^T Omega_0 L=I_n, N^T Omega_0 N=B Omega_K B; (b) P^T Omega_0 P=Omega_0+E_sym, E_sym=diag(Omega_K, B Omega_K B); (c) d_omega L=AL-DE; (d) d_omega Omega_K=-(DE)^T Omega_0 L-L^T Omega_0 DE; (e) Q(AP-d_omega P)=Lambda+E_red with Lambda=[[0,T],[0,0]], E_red as stated; (f) QP=I_{2n}-Omega_0 E_sym and QE=-eta
CONSTANT_SCOPE: none (exact identities)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:fi-products, step:p2:fi-sym, step:p2:fi-dl, step:p2:fi-domegak, step:p2:fi-blocks, step:p2:fi-22, step:p2:fi-q, bp:p2:objects, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:fi-products | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L466-L466 | proof step (a)
EDGE: step:p2:fi-sym | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L471-L471 | proof step (b)
EDGE: step:p2:fi-dl | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L477-L477 | proof step (c)
EDGE: step:p2:fi-domegak | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L483-L483 | proof step (d)
EDGE: step:p2:fi-blocks | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L489-L489 | proof step (e) first part
EDGE: step:p2:fi-22 | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L499-L499 | proof step (e) second part
EDGE: step:p2:fi-q | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L509-L509 | proof step (f)
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L441-L441 | the objects
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L442-L442 | A=DX_h o K, B(frak)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fi-products
KIND: step
TITLE: Products with $\Omega_0$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-products@L466-L469
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-products@L466-L469
CONTRACT_ID: step:p2:fi-products
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Omega_0^2=-I, Omega_0^T=-Omega_0, B^T=B, L^T L=G=B^{-1}
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: (a): L^T Omega_0 N=-I_n, N^T Omega_0 L=I_n, N^T Omega_0 N=B Omega_K B
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:matrix, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:fi-products@L467-L467 | Omega_0^2=-I, Omega_0^T=-Omega_0
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fi-products@L467-L467 | definitions of N,B,G,Omega_K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fi-sym
KIND: step
TITLE: Symplecticity defect
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-sym@L471-L475
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-sym@L471-L475
CONTRACT_ID: step:p2:fi-sym
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (a)
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: (b): P^T Omega_0 P=Omega_0+diag(Omega_K, B Omega_K B)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:fi-products, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:fi-products | blueprint/parts/p2-aposteriori.tex#step:p2:fi-sym@L473-L473 | (a) gives the blocks
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fi-sym@L472-L472 | definitions of P, E_sym
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fi-dl
KIND: step
TITLE: Derivative of the frame along $\omega$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-dl@L477-L481
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-dl@L477-L481
CONTRACT_ID: step:p2:fi-dl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic on T_r; L omega = X_h o K - E
SOURCE_QUANTIFIERS: theta in T_r, j
SOURCE_CONCLUSION: (c): d_omega L=AL-DE
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:fi-dl@L478-L478 | mixed partials commute
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fi-dl@L479-L479 | definitions of L, E, A
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fi-domegak
KIND: step
TITLE: Derivative of $\Omega_K$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-domegak@L483-L487
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-domegak@L483-L487
CONTRACT_ID: step:p2:fi-domegak
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); (c); DX_h^T Omega_0+Omega_0 DX_h=0 at K(theta) in B(frak)
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: (d): d_omega Omega_K=-(DE)^T Omega_0 L-L^T Omega_0 DE
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:fi-dl, bp:p2:hamiltonian, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:fi-dl | blueprint/parts/p2-aposteriori.tex#step:p2:fi-domegak@L484-L484 | (c)
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:fi-domegak@L487-L487 | (d): A^T Omega_0+Omega_0 A=0
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fi-domegak@L485-L485 | definition of Omega_K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fi-blocks
KIND: step
TITLE: Block form of the reduced field
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-blocks@L489-L497
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-blocks@L489-L497
CONTRACT_ID: step:p2:fi-blocks
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (c); Omega_0 block form; X_L=AL-d_omega L, X_N=AN-d_omega N
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: Q(AP-d_omega P) has the block form with X_L=DE and N^T Omega_0 X_N=T
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:matrix, step:p2:fi-dl, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:fi-blocks@L491-L491 | Omega_0(U_1;U_2)=(-U_2;U_1)
EDGE: step:p2:fi-dl | blueprint/parts/p2-aposteriori.tex#step:p2:fi-blocks@L497-L497 | X_L=DE by (c)
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fi-blocks@L490-L490 | definitions of X_N, Q, T
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fi-22
KIND: step
TITLE: The $(2,2)$ block
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-22@L499-L507
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-22@L499-L507
CONTRACT_ID: step:p2:fi-22
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); (a),(c); L^T Omega_0 N=-I_n constant
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: L^T Omega_0 X_N=-(DE)^T Omega_0 N; hence (e)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:fi-products, step:p2:fi-dl, bp:p2:hamiltonian, step:p2:fi-blocks, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:fi-products | blueprint/parts/p2-aposteriori.tex#step:p2:fi-22@L500-L500 | (a): L^T Omega_0 N=-I_n
EDGE: step:p2:fi-dl | blueprint/parts/p2-aposteriori.tex#step:p2:fi-22@L501-L501 | (c)
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:fi-22@L502-L502 | (d): Omega_0 A+A^T Omega_0=0
EDGE: step:p2:fi-blocks | blueprint/parts/p2-aposteriori.tex#step:p2:fi-22@L507-L507 | block form of the reduced field
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fi-22@L500-L500 | definition of X_N
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:fi-q
KIND: step
TITLE: The products with $Q$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-q@L509-L512
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fi-q@L509-L512
CONTRACT_ID: step:p2:fi-q
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (b); definition of eta; Q=-Omega_0 P^T Omega_0
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: (f): QP=I_{2n}-Omega_0 E_sym and QE=-eta, with the block form of eta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:fi-sym, bp:p2:objects, bp:p2:matrix
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:fi-sym | blueprint/parts/p2-aposteriori.tex#step:p2:fi-q@L510-L510 | (b)
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fi-q@L510-L510 | definitions of Q and eta
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:fi-q@L512-L512 | Omega_0(U_1;U_2)=(-U_2;U_1)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:exactness
KIND: lemma
TITLE: Exactness: two vanishing averages
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L515-L523
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L525-L547
CONTRACT_ID: bp:p2:exactness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K holomorphic and primary on T_r with K(T_r) subset B(frak); for eta^N: det G != 0
SOURCE_QUANTIFIERS: for all r>0, K as stated
SOURCE_CONCLUSION: avg Omega_K=0 and avg(L^T Omega_0 E)=0, i.e. avg eta^N=0 when det G != 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ex-curl, step:p2:ex-avg-omega, step:p2:ex-gradient, step:p2:ex-avg-eta, bp:p0:stripdata#IsPrimaryOnStrip, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ex-curl | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L526-L526 | proof step
EDGE: step:p2:ex-avg-omega | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L534-L534 | proof step
EDGE: step:p2:ex-gradient | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L538-L538 | proof step
EDGE: step:p2:ex-avg-eta | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L543-L543 | proof step
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L516-L516 | primary K
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L518-L518 | Omega_K, eta^N
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ex-curl
KIND: step
TITLE: $\Omega_K$ is a curl of periodic functions
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-curl@L526-L532
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-curl@L526-L532
CONTRACT_ID: step:p2:ex-curl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K=(K^theta,K^I) holomorphic and primary on T_r
SOURCE_QUANTIFIERS: i,j
SOURCE_CONCLUSION: (Omega_K)_{ij}=d_{theta_i} f_j - d_{theta_j} f_i with f_j=(K^I)^T d_{theta_j}K^theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p2:objects, bp:p0:hamiltonian#omegaZero
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:ex-curl@L531-L531 | symmetry of second derivatives
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:ex-curl@L527-L527 | definition of Omega_K
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p2-aposteriori.tex#step:p2:ex-curl@L527-L527 | formula for u^T Omega_0 v
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ex-avg-omega
KIND: step
TITLE: Average of $\Omega_K$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-omega@L534-L536
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-omega@L534-L536
CONTRACT_ID: step:p2:ex-avg-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f_j holomorphic and 1-periodic on T_r
SOURCE_QUANTIFIERS: i,j
SOURCE_CONCLUSION: avg Omega_K=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:periodicity, bp:p2:averages, step:p2:ex-curl
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-omega@L535-L535 | f_j holomorphic and periodic
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-omega@L536-L536 | average of a derivative vanishes
EDGE: step:p2:ex-curl | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-omega@L536-L536 | Omega_K as a curl of the f_j
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ex-gradient
KIND: step
TITLE: The gradient identity
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-gradient@L538-L541
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-gradient@L538-L541
CONTRACT_ID: step:p2:ex-gradient
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K holomorphic on T_r, K(T_r) subset B(frak)
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: L^T Omega_0 E=(D(h o K))^T-Omega_K omega
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:ex-gradient@L539-L539 | (d): Omega_0 X_h=(Dh)^T
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:ex-gradient@L541-L541 | definitions of E, Omega_K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ex-avg-eta
KIND: step
TITLE: Average of $L^\top\Omega_0E$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L543-L546
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L543-L546
CONTRACT_ID: step:p2:ex-avg-eta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h o K holomorphic and periodic on T_r; avg Omega_K=0; gradient identity
SOURCE_QUANTIFIERS: theta in T_r
SOURCE_CONCLUSION: avg(L^T Omega_0 E)=0 and eta^N=L^T Omega_0 E
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:periodicity, bp:p2:averages, step:p2:ex-gradient, step:p2:ex-avg-omega, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L544-L544 | h o K holomorphic and periodic
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L545-L545 | partial derivatives have zero average
EDGE: step:p2:ex-gradient | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L546-L546 | gradient identity
EDGE: step:p2:ex-avg-omega | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L545-L545 | avg Omega_K=0
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:ex-avg-eta@L546-L546 | eta^N=L^T Omega_0 E
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:geometry
KIND: lemma
TITLE: Approximate Lagrangian property, symplecticity and reducibility
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L549-L563
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L565-L596
CONTRACT_ID: bp:p2:geometry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K (r,beta,epsilon)-admissible with epsilon<=1; 0<delta<=1, 2delta<r
SOURCE_QUANTIFIERS: for all r,beta,epsilon,delta, K as stated
SOURCE_CONCLUSION: on T_{r-delta}: |DE|<=n epsilon/delta, |(DE)^T|<=2n epsilon/delta, |d_omega Omega_K|<=2n(n+1) m epsilon/delta, |E_red|<=C_red epsilon/delta; on T_{r-2delta}: |Omega_K|<=C_Omega epsilon/(gamma delta^{kappa+1}), |E_sym|<=C_sym epsilon/(gamma delta^{kappa+1})
CONSTANT_SCOPE: C_red, C_Omega, C_sym, kappa, m depend only on (n,tau,M,sigma_K,sigma_B,sigma_T); gamma from the standing data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:geo-de, step:p2:geo-domegak, step:p2:geo-ered, step:p2:geo-omegak, step:p2:geo-esym, bp:p2:admissible, bp:p2:constants, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:geo-de | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L566-L566 | proof step
EDGE: step:p2:geo-domegak | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L571-L571 | proof step
EDGE: step:p2:geo-ered | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L576-L576 | proof step
EDGE: step:p2:geo-omegak | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L582-L582 | proof step
EDGE: step:p2:geo-esym | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L589-L589 | proof step
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L550-L550 | hypothesis: admissible K
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L554-L554 | m, kappa, C_red, C_Omega, C_sym
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:geometry@L550-L550 | standing data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:geo-de
KIND: step
TITLE: Derivatives of the error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-de@L566-L569
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-de@L566-L569
CONTRACT_ID: step:p2:geo-de
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E holomorphic on T_r, |E|<=epsilon, 2n components; 0<delta<=1
SOURCE_QUANTIFIERS: theta in T_{r-delta}
SOURCE_CONCLUSION: |DE|<=n epsilon/delta and |(DE)^T|<=2n epsilon/delta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip, bp:p1:cauchy-corollaries, bp:p2:admissible, bp:p2:frame-basic
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p2-aposteriori.tex#step:p2:geo-de@L568-L568 | Cauchy bound for DE
EDGE: bp:p1:cauchy-corollaries | blueprint/parts/p2-aposteriori.tex#step:p2:geo-de@L568-L568 | bound for the transpose, p=2n
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:geo-de@L567-L567 | (A6)
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:geo-de@L567-L567 | E holomorphic (a)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:geo-domegak
KIND: step
TITLE: Bound on $\partial_\omega\Omega_K$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L571-L574
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L571-L574
CONTRACT_ID: step:p2:geo-domegak
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (d) and (b) of frame lemmas; bounds on DE, (DE)^T
SOURCE_QUANTIFIERS: theta in T_{r-delta}
SOURCE_CONCLUSION: |d_omega Omega_K|<=2n(n+1) m epsilon/delta
CONSTANT_SCOPE: m
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities, bp:p2:frame-basic, step:p2:geo-de
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L572-L572 | (d)
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L572-L572 | (b): ~L~,~L^T~
EDGE: step:p2:geo-de | blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L573-L573 | ~DE~,~(DE)^T~
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:geo-ered
KIND: step
TITLE: Bound on $E_{\mathrm{red}}$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L576-L580
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L576-L580
CONTRACT_ID: step:p2:geo-ered
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (e) of frame identities; bounds on DE, N, L
SOURCE_QUANTIFIERS: theta in T_{r-delta}
SOURCE_CONCLUSION: |E_red|<=C_red epsilon/delta
CONSTANT_SCOPE: C_red=2n(n+1)m^2
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities, bp:p2:matrix, bp:p2:frame-basic, step:p2:geo-de, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L577-L577 | (e): block form of E_red
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L577-L577 | block bound (c)
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L578-L578 | (b): ~N^T~,~L^T~,~N~
EDGE: step:p2:geo-de | blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L578-L578 | ~DE~,~(DE)^T~
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L580-L580 | C_red
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:geo-omegak
KIND: step
TITLE: The Lagrangian defect by the cohomological equation
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L582-L587
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L582-L587
CONTRACT_ID: step:p2:geo-omegak
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Omega_K holomorphic and periodic on T_{r-delta}; avg Omega_K=0; |d_omega Omega_K|<=2n(n+1) m epsilon/delta on T_{r-delta}; delta<r-delta
SOURCE_QUANTIFIERS: theta in T_{r-2delta}
SOURCE_CONCLUSION: |Omega_K|<=C_Omega epsilon/(gamma delta^{kappa+1}) on T_{r-2delta}
CONSTANT_SCOPE: C_Omega=2n(n+1) c_R m
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:exactness, bp:p2:cohomological, bp:p2:periodicity, bp:p2:frame-basic, bp:p2:admissible, step:p2:geo-domegak, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:exactness | blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L583-L583 | avg Omega_K=0
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L585-L585 | (b): a-priori bound
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L583-L583 | Omega_K periodic
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L583-L583 | Omega_K holomorphic
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L583-L583 | K primary (A1)
EDGE: step:p2:geo-domegak | blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L584-L584 | bound on d_omega Omega_K
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:geo-omegak@L587-L587 | c_R, kappa, C_Omega
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:geo-esym
KIND: step
TITLE: The symplecticity defect
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-esym@L589-L595
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-esym@L589-L595
CONTRACT_ID: step:p2:geo-esym
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (b) of frame identities; |B|<=m; bound on Omega_K
SOURCE_QUANTIFIERS: theta in T_{r-2delta}
SOURCE_CONCLUSION: |E_sym|<=C_sym epsilon/(gamma delta^{kappa+1})
CONSTANT_SCOPE: C_sym=m^2 C_Omega
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities, bp:p2:matrix, bp:p2:frame-basic, step:p2:geo-omegak, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#step:p2:geo-esym@L590-L590 | (b): E_sym=diag(Omega_K,B Omega_K B)
EDGE: bp:p2:matrix | blueprint/parts/p2-aposteriori.tex#step:p2:geo-esym@L590-L590 | block norm of diag
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:geo-esym@L592-L592 | ~B~<=m
EDGE: step:p2:geo-omegak | blueprint/parts/p2-aposteriori.tex#step:p2:geo-esym@L595-L595 | bound on Omega_K
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:geo-esym@L595-L595 | C_sym
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:triangular
KIND: lemma
TITLE: The triangular system
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L616-L644
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L646-L668
CONTRACT_ID: bp:p2:triangular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: δ>0, 2δ<r; η^L,η^N:T_r→C^n holomorphic, 1-periodic, |η^L|≤H_L, |η^N|≤H_N on T_r, average of η^N is 0; T:T_r→C^{n×n} holomorphic, 1-periodic, |T|≤H_T on T_{r−δ}, avg T invertible with |avg T^{-1}|≤σ; Γ_δ=c_Rγ^{-1}δ^{-ϰ}; R from Cor. bp:p2:cohomological(a) (uses ω,γ,τ of the standing data of Part 2); u^N:=Rη^N, ξ^N_0:=avgT^{-1}(avg η^L+avg(Tu^N)), ξ^N:=ξ^N_0−u^N, g^L:=Tξ^N−η^L, ξ^L:=Rg^L, ξ:=(ξ^L,ξ^N)
SOURCE_QUANTIFIERS: standing data (n,τ,ω,γ) fixed; for all r,δ with 0<δ, 2δ<r, all H_L,H_N,H_T,σ (reals bounding as stated), all η^L,η^N,T
SOURCE_CONCLUSION: (a) avg g^L=0 so ξ^L defined; ξ^N,g^L holomorphic periodic on T_{r−δ}, ξ on T_{r−2δ}; (b) ∂_ωξ^N=−η^N on T_{r−δ}, ∂_ωξ^L=g^L on T_{r−2δ}, i.e. Λξ−∂_ωξ=η on T_{r−2δ} with Λ=[[0,T],[0,0]]; (c) |ξ^N_0|≤σ(H_L+H_TΓ_δH_N), |ξ^N|≤|ξ^N_0|+Γ_δH_N and |g^L|≤H_T sup|ξ^N|+H_L on T_{r−δ}, |ξ^L|≤Γ_δ sup|g^L| on T_{r−2δ}; (d) if η^L,η^N,T real on reals then ξ^N_0, ξ, g^L real
CONSTANT_SCOPE: Γ_δ uses c_R,ϰ of bp:p2:constants (dependence on n,τ only); H_L,H_N,H_T,σ are free parameters (bounds), no other constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:tri-first, step:p2:tri-xi0, step:p2:tri-second, step:p2:tri-form, step:p2:tri-real, bp:p2:cohomological, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:tri-first | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L647-L647 | proof step of this result
EDGE: step:p2:tri-xi0 | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L652-L652 | proof step of this result
EDGE: step:p2:tri-second | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L657-L657 | proof step of this result
EDGE: step:p2:tri-form | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L662-L662 | proof step of this result
EDGE: step:p2:tri-real | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L665-L665 | proof step of this result
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L628-L628 | R is the solution operator of the cohomological corollary
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:triangular@L617-L617 | Γ_δ, c_R, ϰ defined in the constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-first
KIND: step
TITLE: First cohomological equation
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-first@L647-L650
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-first@L647-L650
CONTRACT_ID: step:p2:tri-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data; η^N holomorphic periodic with |η^N|≤H_N on T_r, avg η^N=0; u^N=Rη^N
SOURCE_QUANTIFIERS: δ, T_r, T_{r−δ} as in the lemma
SOURCE_CONCLUSION: u^N holomorphic, periodic, real if η^N is, avg u^N=0, ∂_ωu^N=η^N, |u^N|≤Γ_δH_N on T_{r−δ}; hence ∂_ωξ^N=−η^N and |ξ^N|≤|ξ^N_0|+Γ_δH_N
CONSTANT_SCOPE: Γ_δ=c_Rγ^{-1}δ^{-ϰ} (constants of bp:p2:constants)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:tri-first@L648-L648 | cohomological corollary (a) solves ∂_ωu^N=η^N with the loss-δ bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-xi0
KIND: step
TITLE: The torsion average fixes $\xi^N_0$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-xi0@L652-L655
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-xi0@L652-L655
CONTRACT_ID: step:p2:tri-xi0
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T continuous on R^n; |T|≤H_T on T_{r−δ}; |u^N|≤Γ_δH_N (previous step); avg T invertible, |avg T^{-1}|≤σ
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: |avg(Tu^N)|≤H_TΓ_δH_N, |avg η^L|≤H_L, so |ξ^N_0|≤σ(H_L+H_TΓ_δH_N); and avg g^L=avgT ξ^N_0−avg(Tu^N)−avg η^L=0
CONSTANT_SCOPE: none beyond the lemma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:averages, step:p2:tri-first
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:tri-xi0@L654-L654 | average of a bounded function is bounded by the same bound
EDGE: step:p2:tri-first | blueprint/parts/p2-aposteriori.tex#step:p2:tri-xi0@L653-L653 | the bound u^N≤Γ_δH_N and u^N periodic holomorphic
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-second
KIND: step
TITLE: Second cohomological equation
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L657-L660
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L657-L660
CONTRACT_ID: step:p2:tri-second
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g^L=Tξ^N−η^L holomorphic periodic on T_{r−δ}, |g^L|≤H_T sup|ξ^N|+H_L, avg g^L=0 (previous step); δ<r−δ
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: ξ^L=Rg^L on T_{r−2δ} with ∂_ωξ^L=g^L and |ξ^L|≤Γ_δ sup|g^L|
CONSTANT_SCOPE: Γ_δ as in the lemma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:cohomological, step:p2:tri-xi0, step:p2:tri-first
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L659-L659 | cohomological corollary applied on T_{r−δ} with loss δ
EDGE: step:p2:tri-xi0 | blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L658-L658 | g^L has zero average
EDGE: step:p2:tri-first | blueprint/parts/p2-aposteriori.tex#step:p2:tri-second@L658-L658 | ξ^N bound used for the bound of g^L
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-form
KIND: step
TITLE: Triangular form
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-form@L662-L663
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-form@L662-L663
CONTRACT_ID: step:p2:tri-form
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ∂_ωξ^N=−η^N, ∂_ωξ^L=g^L=Tξ^N−η^L
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: Λξ−∂_ωξ=(Tξ^N−∂_ωξ^L, −∂_ωξ^N)=(η^L,η^N)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:tri-first, step:p2:tri-second
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:tri-first | blueprint/parts/p2-aposteriori.tex#step:p2:tri-form@L663-L663 | first equation ∂_ωξ^N=−η^N
EDGE: step:p2:tri-second | blueprint/parts/p2-aposteriori.tex#step:p2:tri-form@L663-L663 | second equation ∂_ωξ^L=g^L
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:tri-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-real@L665-L667
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:tri-real@L665-L667
CONTRACT_ID: step:p2:tri-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: data η^L,η^N,T real on reals
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: avg T, avg η^L, avg(Tu^N) real, so ξ^N_0 real; with realness of R, ξ^N, g^L, ξ real
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:cohomological, step:p2:tri-xi0
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:tri-real@L667-L667 | R preserves realness
EDGE: step:p2:tri-xi0 | blueprint/parts/p2-aposteriori.tex#step:p2:tri-real@L666-L666 | definition of ξ^N_0 and the average bounds
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:correction
KIND: lemma
TITLE: Size of the correction
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L670-L682
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L684-L721
CONTRACT_ID: bp:p2:correction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K is (r,β,ε)-admissible (bp:p2:admissible: A1–A6 with σ_K,σ_B,σ_T); 0<δ≤1, 2δ<r; η^L,η^N,T the objects of K (bp:p2:objects); ξ, ΔK:=Pξ on T_{r−2δ} from the triangular lemma; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: standing data fixed; for all r>0,β>0,ε≥0 (as in admissibility), 0<δ≤1 with 2δ<r, all admissible K
SOURCE_CONCLUSION: ξ and ΔK holomorphic, 1-periodic, real on reals; |ξ^N|≤C_{ξN}ε/(γδ^{ϰ+1}), |g^L|≤C_gε/(γδ^{ϰ+2}) on T_{r−δ}; |ξ|≤C_ξε/(γ²δ^a), |ΔK|≤C_{ΔK}ε/(γ²δ^a), |∂_ωξ|≤C_gε/(γδ^{ϰ+2}) on T_{r−2δ}
CONSTANT_SCOPE: C_{ξN},C_g,C_ξ,C_{ΔK},ϰ,a are the constants of bp:p2:constants: depend only on (n,τ,M,σ_K,σ_B,σ_T); not on r,β,ε,δ,γ,K
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:cor-data, step:p2:cor-absorb, step:p2:cor-xin, step:p2:cor-xi, step:p2:cor-dxi, step:p2:cor-reg, bp:p2:triangular, bp:p2:admissible, bp:p2:constants, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:cor-data | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L685-L685 | proof step of this result
EDGE: step:p2:cor-absorb | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L691-L691 | proof step of this result
EDGE: step:p2:cor-xin | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L696-L696 | proof step of this result
EDGE: step:p2:cor-xi | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L704-L704 | proof step of this result
EDGE: step:p2:cor-dxi | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L711-L711 | proof step of this result
EDGE: step:p2:cor-reg | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L718-L718 | proof step of this result
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L672-L672 | the correction is built from the triangular system
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L671-L671 | hypothesis class of K
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L675-L675 | constants C_{ξN},C_g,C_ξ,C_{ΔK}
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:correction@L672-L672 | η, T, P of K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-data
KIND: step
TITLE: The data of the triangular system
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L685-L689
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L685-L689
CONTRACT_ID: step:p2:cor-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K is (r,β,ε)-admissible (bp:p2:admissible: A1–A6 with σ_K,σ_B,σ_T); 0<δ≤1; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: |ω|≤Θ, γ≤Θ; η^L,η^N,T holomorphic periodic real; H_L=2n𝔪²ε, H_N=2n𝔪ε, H_T=C_T/δ; avg η^N=0; σ=σ_T≤𝔪
CONSTANT_SCOPE: Θ,𝔪,C_T from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency, bp:p2:periodicity, bp:p2:frame-basic, bp:p2:exactness, bp:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L686-L686 | ω≤Θ and γ≤Θ
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L687-L687 | periodicity and realness of η,T
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L687-L687 | bounds on η and T (parts c,d) and holomorphy
EDGE: bp:p2:exactness | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L687-L687 | avg η^N=0
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:cor-data@L689-L689 | σ_T bound from A5
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-absorb
KIND: step
TITLE: Absorbing powers of $\gamma\delta$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-absorb@L691-L694
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-absorb@L691-L694
CONTRACT_ID: step:p2:cor-absorb
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: γ≤Θ (previous step), δ≤1
SOURCE_QUANTIFIERS: i,j≥0
SOURCE_CONCLUSION: γδ^j≤Θ; ε≤Θε/(γδ^j); ε/(γδ^j)≤Θε/(γ²δ^{j+i})
CONSTANT_SCOPE: Θ from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:cor-data
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:cor-data | blueprint/parts/p2-aposteriori.tex#step:p2:cor-absorb@L692-L692 | γ≤Θ established there
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-xin
KIND: step
TITLE: Bounds on $\xi^N$ and $g^L$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L696-L702
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L696-L702
CONTRACT_ID: step:p2:cor-xin
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: triangular lemma (c) with the data H_L,H_N,H_T,σ of the data step; absorption inequalities
SOURCE_QUANTIFIERS: on T_{r−δ}
SOURCE_CONCLUSION: |ξ^N_0|≤C_{ξ0}ε/(γδ^{ϰ+1}); |ξ^N|≤C_{ξN}ε/(γδ^{ϰ+1}); |g^L|≤C_gε/(γδ^{ϰ+2})
CONSTANT_SCOPE: C_{ξ0},C_{ξN},C_g from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:triangular, step:p2:cor-data, step:p2:cor-absorb, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L697-L697 | bounds (c) on ξ^N_0, ξ^N, g^L
EDGE: step:p2:cor-data | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L697-L697 | values of H_L,H_N,H_T,σ
EDGE: step:p2:cor-absorb | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L702-L702 | absorbing powers of γδ
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xin@L699-L699 | explicit constants C_{ξ0},C_{ξN},C_g
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-xi
KIND: step
TITLE: Bounds on $\xi$ and $\Delta K$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L704-L709
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L704-L709
CONTRACT_ID: step:p2:cor-xi
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bounds on ξ^N and g^L on T_{r−δ}; triangular lemma (c); |P|≤2𝔪²
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |ξ|≤C_ξε/(γ²δ^a); |ΔK|≤2𝔪²C_ξε/(γ²δ^a)
CONSTANT_SCOPE: C_ξ=c_RC_g+ΘC_{ξN}, C_{ΔK}=2𝔪²C_ξ
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:triangular, step:p2:cor-xin, step:p2:cor-absorb, bp:p2:frame-basic, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L705-L705 | ξ^L≤Γ_δ supg^L from (c)
EDGE: step:p2:cor-xin | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L705-L705 | bounds on g^L and ξ^N
EDGE: step:p2:cor-absorb | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L707-L707 | absorbing powers of γδ
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L708-L708 | P≤2𝔪²
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:cor-xi@L708-L708 | C_ξ, C_{ΔK}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-dxi
KIND: step
TITLE: Bound on $\partial_\omega\xi$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L711-L716
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L711-L716
CONTRACT_ID: step:p2:cor-dxi
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ∂_ωξ=(g^L,−η^N); |η^N|≤2n𝔪ε
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |∂_ωξ|≤C_gε/(γδ^{ϰ+2})
CONSTANT_SCOPE: C_g from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:triangular, step:p2:cor-absorb, step:p2:cor-xin, step:p2:cor-data
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L712-L712 | ∂_ωξ=(g^L,−η^N)
EDGE: step:p2:cor-absorb | blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L712-L712 | absorbing powers of γδ
EDGE: step:p2:cor-xin | blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L712-L712 | bound on g^L
EDGE: step:p2:cor-data | blueprint/parts/p2-aposteriori.tex#step:p2:cor-dxi@L712-L712 | η^N≤2n𝔪ε
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:cor-reg
KIND: step
TITLE: Regularity of the correction
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L718-L720
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L718-L720
CONTRACT_ID: step:p2:cor-reg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P and ξ holomorphic periodic real
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: ΔK=Pξ holomorphic, periodic, real on reals
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:periodicity, bp:p2:frame-basic, bp:p2:triangular
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:periodicity | blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L719-L719 | P periodic real
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L720-L720 | P holomorphic
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:cor-reg@L720-L720 | ξ holomorphic periodic real
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:newton-error
KIND: lemma
TITLE: The new invariance error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L723-L740
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L742-L785
CONTRACT_ID: bp:p2:newton-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of bp:p2:correction (K admissible, 0<δ≤1, 2δ<r); C_{ΔK}ε/(γ²δ^a)<β; C_sym ε/(γδ^{ϰ+1})≤1/2; K̄:=K+ΔK on T_{r−2δ}, K̄:=K elsewhere; S:=I_{2n}−Ω_0E_sym; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: as in bp:p2:correction; for all admissible K, r,β,ε,δ satisfying the two inequalities
SOURCE_CONCLUSION: K̄(T_{r−2δ})⊂𝔅; S invertible with |S^{-1}|≤2 on T_{r−2δ}; Ē=PS^{-1}E_lin+Δ²X with E_lin:=E_redξ+Ω_0E_sym∂_ωξ, Δ²X:=X_h(K̄)−X_h(K)−AΔK on T_{r−2δ}; consequently |Ē|≤C_Eε²/(γ⁴δ^{2a}) on T_{r−2δ}
CONSTANT_SCOPE: C_E,C_ΔK,C_sym,ϰ,a from bp:p2:constants: depend only on (n,τ,M,σ_K,σ_B,σ_T)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ne-invert, step:p2:ne-domain, step:p2:ne-expand, step:p2:ne-reduce, step:p2:ne-lin, step:p2:ne-quad, step:p2:ne-total, bp:p2:correction, bp:p2:constants, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ne-invert | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L743-L743 | proof step of this result
EDGE: step:p2:ne-domain | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L749-L749 | proof step of this result
EDGE: step:p2:ne-expand | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L754-L754 | proof step of this result
EDGE: step:p2:ne-reduce | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L759-L759 | proof step of this result
EDGE: step:p2:ne-lin | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L765-L765 | proof step of this result
EDGE: step:p2:ne-quad | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L772-L772 | proof step of this result
EDGE: step:p2:ne-total | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L776-L776 | proof step of this result
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L724-L724 | setting and ΔK of the correction lemma
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L727-L727 | constants C_ΔK,C_sym,C_E
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:newton-error@L730-L730 | E_sym, E, A, P of K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-invert
KIND: step
TITLE: Invertibility of $S$ and of $Q$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L743-L747
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L743-L747
CONTRACT_ID: step:p2:ne-invert
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |Ω_0E_sym|≤1/2 on T_{r−2δ}; QP=S
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: S invertible with |S^{-1}|≤2; Q invertible with Q^{-1}=PS^{-1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:geometry, bp:p1:neumann, bp:p2:frame-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:geometry | blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L744-L744 | Ω_0E_sym≤1/2
EDGE: bp:p1:neumann | blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L745-L745 | Neumann inversion of I−(small)
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#step:p2:ne-invert@L746-L746 | QP=S
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-domain
KIND: step
TITLE: The corrected torus stays in the domain
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-domain@L749-L752
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-domain@L749-L752
CONTRACT_ID: step:p2:ne-domain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |ΔK(θ)|<β on T_{r−2δ} (smallness assumption and the correction bound); A2
SOURCE_QUANTIFIERS: θ∈T_{r−2δ}
SOURCE_CONCLUSION: K̄(θ)∈B_β(K(θ))⊂𝔅 and the segment [K(θ),K̄(θ)] lies in the ball
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible, bp:p2:correction
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:ne-domain@L751-L751 | A2: the β-ball around K lies in 𝔅
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:ne-domain@L750-L750 | ΔK≤C_ΔKε/(γ²δ^a)<β
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-expand
KIND: step
TITLE: Expansion of the new error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L754-L757
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L754-L757
CONTRACT_ID: step:p2:ne-expand
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K̄ holomorphic on T_{r−2δ}
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: Ē=E+AΔK−∂_ωΔK+Δ²X and AΔK−∂_ωΔK=(AP−∂_ωP)ξ−P∂_ωξ
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:ne-expand@L756-L756 | definitions of E and A
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-reduce
KIND: step
TITLE: Reduction by $Q$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L759-L763
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L759-L763
CONTRACT_ID: step:p2:ne-reduce
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: frame identities (e),(f); triangular system Λξ−∂_ωξ=η; step ne-expand
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: Q(E+AΔK−∂_ωΔK)=E_lin; hence Ē=PS^{-1}E_lin+Δ²X
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities, bp:p2:triangular, step:p2:ne-expand, step:p2:ne-invert
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L760-L760 | identities for Q(AP−∂_ωP) and QP=S
EDGE: bp:p2:triangular | blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L763-L763 | Λξ−∂_ωξ=η
EDGE: step:p2:ne-expand | blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L761-L761 | expansion of Ē
EDGE: step:p2:ne-invert | blueprint/parts/p2-aposteriori.tex#step:p2:ne-reduce@L763-L763 | Q^{-1}=PS^{-1}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-lin
KIND: step
TITLE: Estimate of the linear part
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-lin@L765-L770
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-lin@L765-L770
CONTRACT_ID: step:p2:ne-lin
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: correction bounds for ξ,∂_ωξ; reducibility and symplecticity bounds of bp:p2:geometry; 2ϰ+3=a+1
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |E_red ξ|≤C_redC_ξε²/(γ²δ^{a+1}), |Ω_0E_sym∂_ωξ|≤C_symC_gε²/(γ²δ^{2ϰ+3}); |E_lin|≤C_linε²/(γ²δ^{a+1})
CONSTANT_SCOPE: C_red,C_sym,C_lin from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:geometry, bp:p2:correction
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:geometry | blueprint/parts/p2-aposteriori.tex#step:p2:ne-lin@L766-L766 | bounds on E_red, E_sym
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:ne-lin@L766-L766 | bounds on ξ and ∂_ωξ
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-quad
KIND: step
TITLE: Estimate of the quadratic part
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L772-L774
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L772-L774
CONTRACT_ID: step:p2:ne-quad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma ham (e) with z=K(θ), w=ΔK(θ); segment in 𝔅 (ne-domain)
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |Δ²X|≤M|ΔK|²≤𝔪C_ΔK²ε²/(γ⁴δ^{2a})
CONSTANT_SCOPE: M≤𝔪; C_ΔK from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p2:correction, step:p2:ne-domain
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L773-L773 | second-order Taylor remainder of X_h
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L774-L774 | ΔK bound
EDGE: step:p2:ne-domain | blueprint/parts/p2-aposteriori.tex#step:p2:ne-quad@L773-L773 | segment [K,K̄] in 𝔅
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ne-total
KIND: step
TITLE: The quadratic estimate
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L776-L784
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L776-L784
CONTRACT_ID: step:p2:ne-total
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |P|≤2𝔪², |S^{-1}|≤2, E_lin and Δ²X bounds, γ²δ^{a−1}≤Θ²
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |Ē|≤|P||S^{-1}||E_lin|+|Δ²X|≤C_Eε²/(γ⁴δ^{2a})
CONSTANT_SCOPE: C_E=4𝔪²Θ²C_lin+𝔪C_ΔK²
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency, step:p2:ne-reduce, step:p2:ne-invert, bp:p2:frame-basic, step:p2:ne-lin, step:p2:ne-quad
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L783-L783 | γ≤Θ
EDGE: step:p2:ne-reduce | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L779-L779 | formula Ē=PS^{-1}E_lin+Δ²X
EDGE: step:p2:ne-invert | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L777-L777 | S^{-1}≤2
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L777-L777 | P≤2𝔪²
EDGE: step:p2:ne-lin | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L779-L779 | bound on E_lin
EDGE: step:p2:ne-quad | blueprint/parts/p2-aposteriori.tex#step:p2:ne-total@L779-L779 | bound on Δ²X
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:perturbation
KIND: lemma
TITLE: Perturbation of the frame and the torsion
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L798-L820
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L822-L878
CONTRACT_ID: bp:p2:perturbation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0, 0<δ≤1, 2δ<r; |ω|≤Θ; K holomorphic on T_r with B_β(K(θ))⊂𝔅, |DK|≤σ_K, det G≠0, |B|≤σ_B on T_r, avg T invertible with |avg T^{-1}|≤σ_T; K̃ holomorphic on T_r with |K̃−K|≤d on T_r; d<β and 2𝔪C_{ΔT}d/δ²≤1; standing data of Part 2 (via 𝔅,h,M)
SOURCE_QUANTIFIERS: standing data fixed; for all r,δ,β>0,d≥0, all ω with |ω|≤Θ, all such K,K̃
SOURCE_CONCLUSION: (a) B_{β−d}(K̃(θ))⊂𝔅 on T_r; (b) |DK̃−DK|≤nd/δ on T_{r−δ}; (c) det G̃≠0, |B̃|≤2𝔪, |B̃−B|≤C_Bd/δ on T_{r−δ}; (d) |Ñ−N|≤C_{ΔN}d/δ, |Ñ|≤2𝔪² on T_{r−δ}; (e) |T̃−T|≤C_{ΔT}d/δ² on T_{r−2δ}; (f) T̃ continuous on R^n, avg T̃ invertible, |avgT̃^{-1}−avgT^{-1}|≤2𝔪²C_{ΔT}d/δ²
CONSTANT_SCOPE: C_B,C_ΔN,C_ΔT,Θ,𝔪 from bp:p2:constants: depend only on (n,τ,M,σ_K,σ_B,σ_T); not on r,δ,β,d,K,K̃
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:pt-small, step:p2:pt-domain, step:p2:pt-dl, step:p2:pt-gram, step:p2:pt-binv, step:p2:pt-n, step:p2:pt-xn, step:p2:pt-torsion, step:p2:pt-twist, bp:p2:constants, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L823-L823 | proof step of this result
EDGE: step:p2:pt-domain | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L834-L834 | proof step of this result
EDGE: step:p2:pt-dl | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L839-L839 | proof step of this result
EDGE: step:p2:pt-gram | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L844-L844 | proof step of this result
EDGE: step:p2:pt-binv | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L848-L848 | proof step of this result
EDGE: step:p2:pt-n | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L853-L853 | proof step of this result
EDGE: step:p2:pt-xn | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L859-L859 | proof step of this result
EDGE: step:p2:pt-torsion | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L866-L866 | proof step of this result
EDGE: step:p2:pt-twist | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L873-L873 | proof step of this result
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L804-L804 | constants C_B,C_ΔN,C_ΔT
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:perturbation@L801-L801 | G,B,N,T of a parameterization
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-small
KIND: step
TITLE: Consequences of the smallness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-small@L823-L832
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-small@L823-L832
CONTRACT_ID: step:p2:pt-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: d<β, 2𝔪C_ΔTd/δ²≤1, δ≤1; definitions of the constants
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: C_ΔT≥max{n,C_G,C_ΔN}; nd/δ≤1/(2𝔪)≤𝔪, 𝔪C_Gd/δ≤1/2, C_ΔNd/δ≤1/(2𝔪)≤𝔪², 𝔪C_ΔTd/δ²≤1/2
CONSTANT_SCOPE: constants of bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:pt-small@L824-L824 | explicit definitions of C_ΔT,C_ΔN,C_B,C_G,C_X
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-domain
KIND: step
TITLE: Domain
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-domain@L834-L837
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-domain@L834-L837
CONTRACT_ID: step:p2:pt-domain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |z−K̃(θ)|<β−d; A2-type ball inclusion for K; |ω|≤Θ
SOURCE_QUANTIFIERS: θ∈T_r
SOURCE_CONCLUSION: B_{β−d}(K̃(θ))⊂𝔅; segment [K,K̃]⊂B_β(K); |Ã−A|≤Md≤𝔪d on T_r
CONSTANT_SCOPE: M≤𝔪
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:pt-domain@L837-L837 | Lipschitz bound on DX_h along the segment
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-dl
KIND: step
TITLE: Tangent frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L839-L842
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L839-L842
CONTRACT_ID: step:p2:pt-dl
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K̃−K holomorphic on T_r with |K̃−K|≤d; |L|≤𝔪
SOURCE_QUANTIFIERS: on T_{r−δ}
SOURCE_CONCLUSION: |L̃−L|≤nd/δ, |(L̃−L)^T|≤2nd/δ; |L̃|≤2𝔪, |L̃^T|≤4n𝔪
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip, bp:p1:cauchy-corollaries, step:p2:pt-small
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L840-L840 | Cauchy estimate for the derivative on a strip
EDGE: bp:p1:cauchy-corollaries | blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L840-L840 | Cauchy corollaries: transposes (p=2n)
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#step:p2:pt-dl@L841-L841 | nd/δ≤𝔪 used to get L̃≤2𝔪
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-gram
KIND: step
TITLE: Gram matrix
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-gram@L844-L846
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-gram@L844-L846
CONTRACT_ID: step:p2:pt-gram
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: L̃−L bounds, |L̃^T|≤4n𝔪, |L|≤𝔪
SOURCE_QUANTIFIERS: on T_{r−δ}
SOURCE_CONCLUSION: G̃−G=L̃^T(L̃−L)+(L̃−L)^TL and |G̃−G|≤C_Gd/δ
CONSTANT_SCOPE: C_G=6n²𝔪
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:pt-dl, bp:p2:frame-basic
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:pt-dl | blueprint/parts/p2-aposteriori.tex#step:p2:pt-gram@L845-L845 | bounds on L̃−L, L̃^T
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:pt-gram@L845-L845 | L≤𝔪
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-binv
KIND: step
TITLE: Gram inverse (invertibility before use)
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L848-L851
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L848-L851
CONTRACT_ID: step:p2:pt-binv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |B||G̃−G|≤𝔪C_Gd/δ≤1/2 on T_{r−δ}
SOURCE_QUANTIFIERS: on T_{r−δ}
SOURCE_CONCLUSION: G̃ invertible; |B̃|≤2|B|≤2𝔪; |B̃−B|≤2𝔪²C_Gd/δ=C_Bd/δ (part (c))
CONSTANT_SCOPE: C_B=2𝔪²C_G
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:neumann, step:p2:pt-gram, step:p2:pt-small
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:neumann | blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L850-L850 | Neumann perturbation of the inverse
EDGE: step:p2:pt-gram | blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L849-L849 | bound on G̃−G
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#step:p2:pt-binv@L849-L849 | smallness 𝔪C_Gd/δ≤1/2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-n
KIND: step
TITLE: Normal frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L853-L857
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L853-L857
CONTRACT_ID: step:p2:pt-n
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Ñ=Ω_0L̃B̃; bounds on L̃−L, B̃−B, |L|≤𝔪
SOURCE_QUANTIFIERS: on T_{r−δ}
SOURCE_CONCLUSION: Ñ−N=Ω_0((L̃−L)B̃+L(B̃−B)); |Ñ−N|≤C_ΔNd/δ, |Ñ|≤2𝔪², |Ñ^T|≤4n𝔪², |(Ñ−N)^T|≤2nC_ΔNd/δ
CONSTANT_SCOPE: C_ΔN=2n𝔪+𝔪C_B
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:pt-dl, step:p2:pt-binv, step:p2:pt-small, bp:p2:frame-basic
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:pt-dl | blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L854-L854 | bound on L̃−L
EDGE: step:p2:pt-binv | blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L854-L854 | bounds on B̃, B̃−B
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L855-L855 | C_ΔNd/δ≤𝔪²
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:pt-n@L855-L855 | N≤𝔪²
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-xn
KIND: step
TITLE: Displacement of the normal frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L859-L864
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L859-L864
CONTRACT_ID: step:p2:pt-xn
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X̃_Ñ−X_N=(Ã−A)Ñ+A(Ñ−N)−∂_ω(Ñ−N); |ω|≤Θ; Ñ−N bound on T_{r−δ}
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |X̃_Ñ−X_N|≤C_ΔXd/δ²
CONSTANT_SCOPE: C_ΔX=2𝔪³+(𝔪+nΘ)C_ΔN
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:pt-domain, step:p2:pt-n, bp:p1:cauchy-corollaries, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:pt-domain | blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L860-L860 | Ã−A≤𝔪d
EDGE: step:p2:pt-n | blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L860-L860 | bounds on Ñ, Ñ−N
EDGE: bp:p1:cauchy-corollaries | blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L862-L862 | Cauchy bound on ∂_ω(Ñ−N) with ω_1≤nΘ
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:pt-xn@L864-L864 | definition of C_ΔX
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-torsion
KIND: step
TITLE: Torsion
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L866-L871
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L866-L871
CONTRACT_ID: step:p2:pt-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T̃−T=Ñ^TΩ_0(X̃_Ñ−X_N)+(Ñ−N)^TΩ_0X_N; |X_N|≤C_X/δ on T_{r−δ} (bp:p2:frame-basic(d))
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: |T̃−T|≤C_ΔTd/δ²
CONSTANT_SCOPE: C_ΔT=4n𝔪²C_ΔX+2nC_ΔNC_X
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-basic, step:p2:pt-xn, step:p2:pt-n, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-basic | blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L868-L868 | X_N≤C_X/δ
EDGE: step:p2:pt-xn | blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L870-L870 | bound on X̃_Ñ−X_N
EDGE: step:p2:pt-n | blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L870-L870 | bounds on Ñ^T,(Ñ−N)^T
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:pt-torsion@L870-L870 | definition of C_ΔT
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:pt-twist
KIND: step
TITLE: Twist (integrability and invertibility before use)
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L873-L877
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L873-L877
CONTRACT_ID: step:p2:pt-twist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Ñ holomorphic on T_{r−δ}⊃R^n; |avg T̃−avg T|≤C_ΔTd/δ²; |avgT^{-1}|≤σ_T≤𝔪
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: T̃ continuous on R^n, avg T̃ defined; avg T̃ invertible with |avgT̃^{-1}−avgT^{-1}|≤2𝔪²C_ΔTd/δ²
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:averages, bp:p1:neumann, step:p2:pt-torsion, step:p2:pt-binv, step:p2:pt-small
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L875 | average of T̃−T is bounded by its sup
EDGE: bp:p1:neumann | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L877-L877 | Neumann inversion of avg T̃
EDGE: step:p2:pt-torsion | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L875-L875 | bound T̃−T≤C_ΔTd/δ²
EDGE: step:p2:pt-binv | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L874-L874 | Ñ holomorphic via det G̃≠0 (part c)
EDGE: step:p2:pt-small | blueprint/parts/p2-aposteriori.tex#step:p2:pt-twist@L877-L877 | 𝔪C_ΔTd/δ²≤1/2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:step
KIND: proposition
TITLE: The KAM step
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:step@L883-L903
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:step@L905-L929
CONTRACT_ID: bp:p2:step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0, 0<δ≤1, 4δ<r, β>0, 0≤ε≤1; K is (r,β,ε)-admissible; 𝔠_step ε/(γ⁴δ^{2a})≤min{1,β}; K̄ the map of bp:p2:newton-error; d:=C_ΔKε/(γ²δ^a); standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: standing data fixed; for all r,δ,β,ε as stated and all admissible K
SOURCE_CONCLUSION: (a) K̄ holomorphic, primary on T_{r−2δ}, real on reals; (b) |K̄−K|≤d≤β/2 on T_{r−2δ} and B_{β−d}(K̄(θ))⊂𝔅 for θ∈T_{r−2δ}; (c) |Ē|≤C_Eε²/(γ⁴δ^{2a}) on T_{r−2δ}; (d) |DK̄−DK|≤nd/δ on T_{r−3δ}; (e) det Ḡ≠0 and |B̄−B|≤C_Bd/δ on T_{r−3δ}; (f) avg T̄ invertible and |avgT̄^{-1}−avgT^{-1}|≤2𝔪²C_ΔTd/δ²
CONSTANT_SCOPE: 𝔠_step,C_ΔK,C_E,C_B,C_ΔT,a from bp:p2:constants: depend only on (n,τ,M,σ_K,σ_B,σ_T); not on r,δ,β,ε,γ,K
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:st-small, step:p2:st-error, step:p2:st-ball, step:p2:st-perturb, bp:p2:newton-error, bp:p2:admissible, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:st-small | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L906-L906 | proof step of this result
EDGE: step:p2:st-error | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L915-L915 | proof step of this result
EDGE: step:p2:st-ball | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L921-L921 | proof step of this result
EDGE: step:p2:st-perturb | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L924-L924 | proof step of this result
EDGE: bp:p2:newton-error | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L889-L889 | K̄ is the map defined there
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L885-L885 | hypothesis class of K
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:step@L887-L887 | 𝔠_step, C_ΔK
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:st-small
KIND: step
TITLE: The smallness conditions used
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-small@L906-L913
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-small@L906-L913
CONTRACT_ID: step:p2:st-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing and admissibility; 𝔠_step ε/(γ⁴δ^{2a})≤min{1,β}; Θ≥1; ϰ+1≤2a, a+2≤2a
SOURCE_QUANTIFIERS: as in the proposition
SOURCE_CONCLUSION: C_sym ε/(γδ^{ϰ+1})≤1/2; d≤β/2; 2𝔪C_ΔTd/δ²≤1/2
CONSTANT_SCOPE: Θ,𝔠_step from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:st-small@L907-L907 | γ≤Θ
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:st-small@L908-L908 | definition of 𝔠_step as a max of the three constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:st-error
KIND: step
TITLE: Correction and new error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L915-L919
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L915-L919
CONTRACT_ID: step:p2:st-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 2δ<r; the smallness step; d<β
SOURCE_QUANTIFIERS: on T_{r−2δ}
SOURCE_CONCLUSION: correction and new-error lemmas apply, giving (a), the bound |K̄−K|≤d in (b), and (c)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:correction, bp:p2:newton-error, step:p2:st-small
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:correction | blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L916-L916 | size of ΔK, periodicity and realness
EDGE: bp:p2:newton-error | blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L916-L916 | bound on Ē and K̄(T)⊂𝔅
EDGE: step:p2:st-small | blueprint/parts/p2-aposteriori.tex#step:p2:st-error@L917-L917 | hypotheses of the new-error lemma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:st-ball
KIND: step
TITLE: Ball margin
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L921-L922
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L921-L922
CONTRACT_ID: step:p2:st-ball
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |z−K̄(θ)|<β−d; d≥|K̄−K|
SOURCE_QUANTIFIERS: θ∈T_{r−2δ}
SOURCE_CONCLUSION: B_{β−d}(K̄(θ))⊂𝔅
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:st-ball@L922-L922 | A2: β-ball around K lies in 𝔅
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:st-perturb
KIND: step
TITLE: Perturbation on the strip $T_{r-2\delta}$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L924-L928
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L924-L928
CONTRACT_ID: step:p2:st-perturb
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K satisfies the hypotheses of the perturbation lemma on T_{r−2δ}; K̃:=K̄ with |K̄−K|≤d<β, 2𝔪C_ΔTd/δ²≤1; 2δ<r−2δ
SOURCE_QUANTIFIERS: on T_{r−2δ}, then T_{r−3δ}
SOURCE_CONCLUSION: (d), (e) on T_{r−3δ} and (f)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:perturbation, bp:p2:admissible, bp:p2:frequency, step:p2:st-small, step:p2:st-error
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:perturbation | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L925-L925 | frame/torsion perturbation
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L925-L925 | A2–A5 supply the lemma hypotheses
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L926-L926 | ω≤Θ
EDGE: step:p2:st-small | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L928-L928 | d<β and 2𝔪C_ΔTd/δ²≤1
EDGE: step:p2:st-error | blueprint/parts/p2-aposteriori.tex#step:p2:st-perturb@L926-L926 | K̄ holomorphic with K̄−K≤d
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:schedule
KIND: definition
TITLE: Schedule of the iteration
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:schedule@L934-L946
PROOF_SOURCE: -
CONTRACT_ID: bp:p2:schedule
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<ρ_∞<ρ, γ>0, e≥0; δ_0 from bp:p2:constants
SOURCE_QUANTIFIERS: for given ρ_∞<ρ, γ, e
SOURCE_CONCLUSION: defines δ_s:=2^{-s}δ_0, r_s:=ρ−8δ_0(1−2^{-s}), ε_0:=e, ε_{s+1}:=C_Eε_s²/(γ⁴δ_s^{2a}), d_s:=C_ΔKε_s/(γ²δ_s^a); with r_0=ρ, r_{s+1}=r_s−4δ_s, ρ_∞≤ρ−8δ_0<r_s, δ_s≤1, 4δ_s<r_s
CONSTANT_SCOPE: δ_0=δ_0(ρ,ρ_∞); C_E,C_ΔK,a from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:schedule@L936-L936 | δ_0, C_E, C_ΔK, a
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:error-decay
KIND: lemma
TITLE: Decay of the errors
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L951-L956
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L958-L968
CONTRACT_ID: bp:p2:error-decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: schedule (bp:p2:schedule); q:=2^{2a}C_E e/(γ⁴δ_0^{2a})≤1
SOURCE_QUANTIFIERS: all s≥0; 0≤j≤2a; 0≤j≤2a−1 for the sums
SOURCE_CONCLUSION: ε_s≤q^{2^s−1}2^{-2as}e≤2^{-2as}e; ε_s/δ_s^j≤2^{-(2a−j)s}e/δ_0^j≤e/δ_0^j for 0≤j≤2a; Σ_sε_s/δ_s^j≤2e/δ_0^j for 0≤j≤2a−1
CONSTANT_SCOPE: a,C_E from bp:p2:constants (n,τ,M,σ_*); δ_0=δ_0(ρ,ρ_∞); none depends on s
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ed-errors, step:p2:ed-sums, bp:p2:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ed-errors | blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L959-L959 | proof step of this result
EDGE: step:p2:ed-sums | blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L965-L965 | proof step of this result
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#bp:p2:error-decay@L952-L952 | ε_s,δ_s of the schedule
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ed-errors
KIND: step
TITLE: The errors of the schedule
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ed-errors@L959-L963
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ed-errors@L959-L963
CONTRACT_ID: step:p2:ed-errors
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: schedule recursion ε_{s+1}=C_Eε_s²/(γ⁴δ_s^{2a}), δ_s^{-2a}=2^{2as}δ_0^{-2a}; q≤1
SOURCE_QUANTIFIERS: all s≥0
SOURCE_CONCLUSION: ε_{s+1}=Q′2^{2as}ε_s² with Q′=C_E/(γ⁴δ_0^{2a}); ε_s≤q^{2^s−1}2^{-2as}e≤2^{-2as}e
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:schedule, bp:p1:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:ed-errors@L960-L960 | recursion for ε_s
EDGE: bp:p1:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:ed-errors@L962-L962 | quadratic iteration bound linear in y_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:ed-sums
KIND: step
TITLE: Sums
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ed-sums@L965-L967
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ed-sums@L965-L967
CONTRACT_ID: step:p2:ed-sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ε_s≤2^{-2as}e; δ_s=2^{-s}δ_0
SOURCE_QUANTIFIERS: 0≤j≤2a−1
SOURCE_CONCLUSION: ε_sδ_s^{-j}≤2^{-(2a−j)s}e/δ_0^j and Σ_sε_s/δ_s^j≤2e/δ_0^j (geometric series ≤2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:ed-errors
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ed-errors | blueprint/parts/p2-aposteriori.tex#step:p2:ed-sums@L966-L966 | bound ε_s≤2^{-2as}e
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:iteration
KIND: proposition
TITLE: The induction
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L970-L990
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L992-L1029
CONTRACT_ID: bp:p2:iteration
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<ρ_∞<ρ, μ>0; K holomorphic, primary, real on reals on T_ρ; B_μ(K(θ))⊂𝔅; |DK|≤σ_K−μ; det G≠0, |B|≤σ_B−μ; avg T invertible with |avgT^{-1}|≤σ_T−μ; |E|≤e on T_ρ; e≤1 and 𝔠_* e/(γ⁴δ_0^{2a})≤1; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: standing data fixed; for all ρ_∞<ρ, μ>0, e, γ, ω and K as stated; then there exist K_s (s≥0), K_0=K, with D_s:=Σ_{j<s}d_j
SOURCE_CONCLUSION: for every s≥0: (i) K_s is (r_s,μ−D_s,ε_s)-admissible and ε_s≤e≤1; (ii) D_s≤μ/4 and |K_s−K|≤D_s on T_{r_s}; (iii) |DK_s|≤σ_K−μ+Σ_{j<s}nd_j/δ_j≤σ_K−μ/2 on T_{r_s}; (iv) |B_s|≤σ_B−μ+Σ_{j<s}C_Bd_j/δ_j≤σ_B−μ/2; (v) |avgT_s^{-1}|≤σ_T−μ+Σ_{j<s}2𝔪²C_ΔTd_j/δ_j²≤σ_T−μ/2; (vi) |K_{s+1}−K_s|≤d_s and |DK_{s+1}−DK_s|≤nd_s/δ_s on T_{r_{s+1}}
CONSTANT_SCOPE: 𝔠_*=𝔠_*(n,τ,M,σ_K,σ_B,σ_T,μ), δ_0=δ_0(ρ,ρ_∞), 𝔠_step,C_*,a from bp:p2:constants; r_s,δ_s,ε_s,d_s from bp:p2:schedule (depend on ρ,ρ_∞,γ,e)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:it-sums, step:p2:it-stepsmall, step:p2:it-base, step:p2:it-step, bp:p2:admissible, bp:p2:schedule, bp:p2:constants, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:it-sums | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L993-L993 | proof step of this result
EDGE: step:p2:it-stepsmall | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1008-L1008 | proof step of this result
EDGE: step:p2:it-base | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1016-L1016 | proof step of this result
EDGE: step:p2:it-step | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L1020-L1020 | proof step of this result
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L981-L981 | admissibility of K_s
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L978-L978 | r_s,δ_s,ε_s,d_s
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L976-L976 | 𝔠_*, δ_0
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:iteration@L973-L973 | G,B,T,E of K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:it-sums
KIND: step
TITLE: Summed bounds
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L993-L1006
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L993-L1006
CONTRACT_ID: step:p2:it-sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: γ≤Θ; 𝔠_*≥2^{2a}C_E, 𝔠_*≥2𝔠_sum/μ; a≥3; e≤1
SOURCE_QUANTIFIERS: j=a,a+1,a+2≤2a−1
SOURCE_CONCLUSION: Σd_j≤μ/4, Σnd_j/δ_j≤μ/4, ΣC_Bd_j/δ_j≤μ/4, Σ2𝔪²C_ΔTd_j/δ_j²≤μ/2; giving the right-hand inequalities in (ii)–(v)
CONSTANT_SCOPE: 𝔠_sum,𝔠_*,Θ,C_* from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency, bp:p2:error-decay, bp:p2:constants, bp:p2:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L994-L994 | γ≤Θ
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L996-L996 | Σ_sε_s/δ_s^j≤2e/δ_0^j
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L995-L995 | 𝔠_*,𝔠_sum,a≥3
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:it-sums@L1000-L1000 | d_j of the schedule
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:it-stepsmall
KIND: step
TITLE: Step smallness at every stage
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1008-L1014
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1008-L1014
CONTRACT_ID: step:p2:it-stepsmall
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ε_s≤e≤1, ε_s/δ_s^{2a}≤e/δ_0^{2a}; 𝔠_*≥𝔠_step max{1,2/μ}; μ−D_s≥μ/2 when (ii) holds
SOURCE_QUANTIFIERS: all s
SOURCE_CONCLUSION: 𝔠_stepε_s/(γ⁴δ_s^{2a})≤min{1,μ/2}≤min{1,μ−D_s}: smallness hypothesis of bp:p2:step holds for (r_s,δ_s,μ−D_s,ε_s)
CONSTANT_SCOPE: 𝔠_*,𝔠_step from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:error-decay, bp:p2:step, bp:p2:schedule, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1009 | ε_s≤e and ε_s/δ_s^{2a}≤e/δ_0^{2a}
EDGE: bp:p2:step | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1012-L1012 | the hypothesis being verified
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1009-L1009 | ε_s,δ_s notation
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:it-stepsmall@L1011-L1011 | 𝔠_*≥𝔠_step max{1,2/μ}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:it-base
KIND: step
TITLE: Base case
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-base@L1016-L1018
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-base@L1016-L1018
CONTRACT_ID: step:p2:it-base
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_0=K with the hypotheses H2–H4 of the proposition
SOURCE_QUANTIFIERS: s=0
SOURCE_CONCLUSION: K_0 is (ρ,μ,e)-admissible; (ii)–(v) hold with empty sums
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:it-base@L1017-L1017 | A1–A6 for K_0 from the hypotheses with margins σ−μ≤σ
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:it-step
KIND: step
TITLE: Inductive step
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1020-L1028
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1020-L1028
CONTRACT_ID: step:p2:it-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (i)–(v) at s; summed bounds; smallness at stage s; 4δ_s<r_s, δ_s≤1
SOURCE_QUANTIFIERS: induction step s→s+1
SOURCE_CONCLUSION: K_{s+1}:=K̄_s satisfies (vi) and (i)–(v) at s+1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:step, bp:p2:admissible, step:p2:it-stepsmall, step:p2:it-sums, bp:p2:schedule
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:step | blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1021-L1021 | the KAM step produces K̄_s and its bounds
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1028-L1028 | A1,A3–A5 for K_{s+1}
EDGE: step:p2:it-stepsmall | blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1021-L1021 | smallness hypothesis of the step
EDGE: step:p2:it-sums | blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1027-L1027 | right-hand inequalities (ii)–(v)
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:it-step@L1022-L1022 | r_{s+1}=r_s−4δ_s
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:limit
KIND: proposition
TITLE: The limit torus
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1031-L1051
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1053-L1089
CONTRACT_ID: bp:p2:limit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of bp:p2:iteration (0<ρ_∞<ρ, μ, K, e, γ, ω with the iteration hypotheses); K_∞:=lim K_s on T_{ρ_∞}, K_∞:=K elsewhere; standing data of Part 2 (bp:p2:standing): n≥2, τ≥n−1, M,σ_K,σ_B,σ_T>0, 𝔅 open and Z^n-translation invariant, h holomorphic, 1-periodic in θ, real at real points, |X_h|,|DX_h|,|D²X_h|≤M on 𝔅, γ>0, ω∈Dio_{γ,τ}
SOURCE_QUANTIFIERS: as in bp:p2:iteration
SOURCE_CONCLUSION: (a) K_s→K_∞ and DK_s→DK_∞ uniformly on T_{ρ_∞}, K_∞ holomorphic on T_{ρ_∞}; (b) K_∞ primary on T_{ρ_∞}, real on reals; (c) |K_∞−K|≤2C_ΔKe/(γ²δ_0^a)≤μ/4 on T_{ρ_∞}; (d) B_{μ/2}(K_∞(θ))⊂𝔅 and |DK_∞(θ)|≤σ_K−μ/2 for θ∈T_{ρ_∞}; (e) E_∞(θ)=X_h(K_∞(θ))−DK_∞(θ)ω=0 for θ∈T_{ρ_∞}
CONSTANT_SCOPE: C_ΔK,a from bp:p2:constants; δ_0=δ_0(ρ,ρ_∞); all explicit
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:lim-k, step:p2:lim-dk, step:p2:lim-holo, step:p2:lim-primary, step:p2:lim-close, step:p2:lim-margins, step:p2:lim-invariance, bp:p2:iteration, bp:p2:constants, bp:p2:objects
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1054-L1054 | proof step of this result
EDGE: step:p2:lim-dk | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1060-L1060 | proof step of this result
EDGE: step:p2:lim-holo | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1064-L1064 | proof step of this result
EDGE: step:p2:lim-primary | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1070-L1070 | proof step of this result
EDGE: step:p2:lim-close | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1074-L1074 | proof step of this result
EDGE: step:p2:lim-margins | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1079-L1079 | proof step of this result
EDGE: step:p2:lim-invariance | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1084-L1084 | proof step of this result
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1032-L1032 | the sequence K_s
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1042-L1042 | C_ΔK, δ_0
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:limit@L1045-L1045 | E_∞ is the invariance error E of K_∞
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-k
KIND: step
TITLE: Uniform convergence of $K_s$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1054-L1058
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1054-L1058
CONTRACT_ID: step:p2:lim-k
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T_{ρ_∞}⊂T_{r_s}; |K_{s+1}−K_s|≤d_s; Σd_s≤2C_ΔKe/(γ²δ_0^a)
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: (K_s) uniformly Cauchy, converges uniformly to K_∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:schedule, bp:p2:iteration, bp:p2:error-decay
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:schedule | blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1055-L1055 | T_{ρ_∞}⊂T_{r_s}
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1056-L1056 | K_{s+1}−K_s≤d_s
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-k@L1057-L1057 | Σd_s finite via the sum bound with j=a
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-dk
KIND: step
TITLE: Uniform convergence of $DK_s$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1060-L1062
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1060-L1062
CONTRACT_ID: step:p2:lim-dk
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |DK_{s+1}−DK_s|≤nd_s/δ_s on T_{ρ_∞}; Σnd_s/δ_s<∞
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: DK_s converges uniformly to some Λ_∞ (values in C-linear maps)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p2:error-decay, step:p2:lim-k
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1061 | (vi): DK_{s+1}−DK_s≤nd_s/δ_s
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1061 | finiteness of Σnd_s/δ_s via the sum bound with j=a+1
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-dk@L1061-L1061 | same Cauchy argument
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-holo
KIND: step
TITLE: Holomorphy of the limit
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1064-L1068
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1064-L1068
CONTRACT_ID: step:p2:lim-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_s holomorphic on the open T_{ρ_∞}; K_s→K_∞ pointwise; DK_s→Λ_∞ uniformly
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: K_∞ holomorphic with DK_∞=Λ_∞ (this is (a))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:uniform-limits, step:p2:lim-k, step:p2:lim-dk, bp:p2:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:uniform-limits | blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1066-L1066 | limit of holomorphic maps with uniformly convergent derivatives
EDGE: step:p2:lim-k | blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1065-L1065 | pointwise (uniform) limit K_∞
EDGE: step:p2:lim-dk | blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1066-L1066 | uniform convergence DK_s→Λ_∞
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-holo@L1065-L1065 | K_s holomorphic by (i)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-primary
KIND: step
TITLE: Primary and real
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1070-L1072
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1070-L1072
CONTRACT_ID: step:p2:lim-primary
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: each K_s primary on T_{ρ_∞} and real on reals
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: K_∞ primary and real on reals (this is (b))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p1:uniform-limits
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | K_s primary and real
EDGE: bp:p1:uniform-limits | blueprint/parts/p2-aposteriori.tex#step:p2:lim-primary@L1072-L1072 | primary and real are preserved under uniform limits
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-close
KIND: step
TITLE: Closeness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1074-L1077
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1074-L1077
CONTRACT_ID: step:p2:lim-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |K_s−K|≤D_s≤Σd_s; Σd_s≤2C_ΔKe/(γ²δ_0^a)≤μ/4
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: |K_∞−K|≤2C_ΔKe/(γ²δ_0^a)≤μ/4 (this is (c))
CONSTANT_SCOPE: C_ΔK from bp:p2:constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, step:p2:it-sums
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1075 | K_s−K≤D_s (ii)
EDGE: step:p2:it-sums | blueprint/parts/p2-aposteriori.tex#step:p2:lim-close@L1075-L1075 | Σd_s≤2Θ²C_ΔKe/(γ⁴δ_0^{2a})≤μ/4
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-margins
KIND: step
TITLE: Margins
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1079-L1082
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1079-L1082
CONTRACT_ID: step:p2:lim-margins
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |K_∞−K|≤μ/4; hypothesis H2 B_μ(K(θ))⊂𝔅; |DK_s|≤σ_K−μ/2
SOURCE_QUANTIFIERS: θ∈T_{ρ_∞}
SOURCE_CONCLUSION: B_{μ/2}(K_∞(θ))⊂𝔅 and |DK_∞(θ)|≤σ_K−μ/2 (this is (d))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:lim-close, bp:p2:iteration, step:p2:lim-holo
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:lim-close | blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1080-L1080 | K_∞−K≤μ/4
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1082-L1082 | DK_s≤σ_K−μ/2
EDGE: step:p2:lim-holo | blueprint/parts/p2-aposteriori.tex#step:p2:lim-margins@L1081-L1081 | DK_∞=lim DK_s
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:lim-invariance
KIND: step
TITLE: Invariance
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1084-L1088
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1084-L1088
CONTRACT_ID: step:p2:lim-invariance
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_∞(θ)∈𝔅; X_h continuous on 𝔅; |E_s(θ)|≤ε_s≤2^{-2as}e
SOURCE_QUANTIFIERS: θ∈T_{ρ_∞}
SOURCE_CONCLUSION: E_∞(θ)=0 (this is (e))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p2:error-decay, bp:p2:hamiltonian, step:p2:lim-margins, step:p2:lim-holo
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1087-L1087 | E_s≤ε_s
EDGE: bp:p2:error-decay | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1088-L1088 | ε_s≤2^{-2as}e→0
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1085 | X_h holomorphic hence continuous
EDGE: step:p2:lim-margins | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1085-L1085 | K_∞(θ)∈𝔅 by the margin ball
EDGE: step:p2:lim-holo | blueprint/parts/p2-aposteriori.tex#step:p2:lim-invariance@L1086-L1086 | DK_s→DK_∞ pointwise
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p2:g1
KIND: theorem
TITLE: G1 with explicit constants
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1094-L1107
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1109-L1142
CONTRACT_ID: bp:p2:g1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n≥2, τ≥n−1, 0<ρ_∞<ρ, M,σ_K,σ_B,σ_T,μ,γ̄>0; C_1:=ρ^{4τ}max{γ̄⁴,𝔠_*δ_0^{-2a}}, C_2:=2C_ΔKρ^{2τ}δ_0^{-a}; hypotheses of bp:p0:g1 on 𝔅,h,K,ω,γ,e (including γ≤γ̄)
SOURCE_QUANTIFIERS: for the given n,τ,ρ,ρ_∞,M,σ_*,μ,γ̄; then for all 𝔅,h,K,ω,γ,e satisfying the hypotheses of bp:p0:g1
SOURCE_CONCLUSION: C_1,C_2>0 and the conclusion (seven clauses) of bp:p0:g1 holds with these constants
CONSTANT_SCOPE: C_1 depends only on (n,τ,ρ,ρ_∞,M,σ_K,σ_B,σ_T,μ,γ̄); C_2 only on (n,τ,ρ,ρ_∞,M,σ_K,σ_B,σ_T)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:g1-constants, step:p2:g1-standing, step:p2:g1-e, step:p2:g1-apply, step:p2:g1-check, bp:p2:constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:g1-constants | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1110-L1110 | proof step of this result
EDGE: step:p2:g1-standing | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1115-L1115 | proof step of this result
EDGE: step:p2:g1-e | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1121-L1121 | proof step of this result
EDGE: step:p2:g1-apply | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1126-L1126 | proof step of this result
EDGE: step:p2:g1-check | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1131-L1131 | proof step of this result
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:g1@L1096-L1096 | 𝔠_*, δ_0, C_ΔK, a
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:g1-constants
KIND: step
TITLE: The constants
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-constants@L1110-L1113
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-constants@L1110-L1113
CONTRACT_ID: step:p2:g1-constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: constants of bp:p2:constants finite and ≥1, δ_0∈(0,1], ρ>0
SOURCE_QUANTIFIERS: as in the theorem
SOURCE_CONCLUSION: C_1≥ρ^{4τ}γ̄⁴>0, C_2≥2ρ^{2τ}>0; dependence of C_1,C_2 read off from the definitions (c(n,τ) enters through c_R)
CONSTANT_SCOPE: C_1,C_2 as stated in the theorem
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:constants, bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:g1-constants@L1111-L1111 | finiteness, ≥1, and dependence of the constants
EDGE: bp:p1:cohomological | blueprint/parts/p2-aposteriori.tex#step:p2:g1-constants@L1113-L1113 | c(n,τ) enters through c_R
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:g1-standing
KIND: step
TITLE: The standing assumptions
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-standing@L1115-L1119
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-standing@L1115-L1119
CONTRACT_ID: step:p2:g1-standing
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses H1 and H5 of bp:p0:g1
SOURCE_QUANTIFIERS: as in the theorem
SOURCE_CONCLUSION: H1 and H5 are the standing data of Part 2; the frozen norms are the operator norms of Part 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:standing, bp:p2:frozen-agreement
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:g1-standing@L1118-L1118 | H1 and H5 coincide with the standing package
EDGE: bp:p2:frozen-agreement | blueprint/parts/p2-aposteriori.tex#step:p2:g1-standing@L1119-L1119 | frozen norms and objects agree with Part 2 conventions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:g1-e
KIND: step
TITLE: Size of the error
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-e@L1121-L1124
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-e@L1121-L1124
CONTRACT_ID: step:p2:g1-e
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T_ρ≠∅; |E|≤e on T_ρ; C_1e/(γ⁴ρ^{4τ})<1; γ≤γ̄
SOURCE_QUANTIFIERS: as in the theorem
SOURCE_CONCLUSION: 0≤|E(0)|≤e; e<γ⁴/γ̄⁴≤1; 𝔠_*e/(γ⁴δ_0^{2a})<1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p2:g1-constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:g1-constants | blueprint/parts/p2-aposteriori.tex#step:p2:g1-e@L1122-L1122 | C_1≥ρ^{4τ}γ̄⁴ and C_1≥ρ^{4τ}𝔠_*δ_0^{-2a}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:g1-apply
KIND: step
TITLE: Iteration and limit
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1126-L1129
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1126-L1129
CONTRACT_ID: step:p2:g1-apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H2–H4 of bp:p0:g1; e≤1 and 𝔠_*e/(γ⁴δ_0^{2a})≤1; standing data
SOURCE_QUANTIFIERS: as in the theorem
SOURCE_CONCLUSION: H2–H4 are the hypotheses of bp:p2:iteration; iteration and limit propositions apply and produce K_∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:iteration, bp:p2:limit, step:p2:g1-e, step:p2:g1-standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:iteration | blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1127-L1127 | the induction produces K_s
EDGE: bp:p2:limit | blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1129-L1129 | the limit torus K_∞
EDGE: step:p2:g1-e | blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1128-L1128 | e≤1 and 𝔠_*e/(γ⁴δ_0^{2a})<1
EDGE: step:p2:g1-standing | blueprint/parts/p2-aposteriori.tex#step:p2:g1-apply@L1127-L1127 | standing package supplied (H1, H5)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:g1-check
KIND: step
TITLE: Checking the conclusion
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1131-L1141
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1131-L1141
CONTRACT_ID: step:p2:g1-check
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_∞ with properties (a)–(e) of bp:p2:limit; frozen agreement
SOURCE_QUANTIFIERS: on T_{ρ_∞}
SOURCE_CONCLUSION: the seven clauses of the conclusion of bp:p0:g1 with |K_∞−K|≤2C_ΔKe/(γ²δ_0^a)=C_2e/(γ²ρ^{2τ})
CONSTANT_SCOPE: C_2=2C_ΔKρ^{2τ}δ_0^{-a}
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:limit, bp:p2:frozen-agreement, step:p2:g1-apply, step:p2:g1-constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:limit | blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1132-L1132 | properties (a)–(e) of K_∞
EDGE: bp:p2:frozen-agreement | blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1141-L1141 | derivative, invariance error and ball agree with the frozen ones
EDGE: step:p2:g1-apply | blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1132-L1132 | K_∞ produced by the previous step
EDGE: step:p2:g1-constants | blueprint/parts/p2-aposteriori.tex#step:p2:g1-check@L1137-L1137 | C_2=2C_ΔKρ^{2τ}δ_0^{-a}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:standing
KIND: definition
TITLE: Two invariant tori
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L55-L72
PROOF_SOURCE: -
CONTRACT_ID: bp:p3:standing
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none beyond the typing data: B, h, K_1, K_2, omega, gamma; (S1) B open, invariant under integer shifts of theta, h holomorphic on B, 1-periodic in theta, real at real points of B, and |Dh|,|X_h|,|DX_h|,|D^2X_h|<=M on B; (S2) gamma>0, omega in Dio_{gamma,tau}; (S3) K_1 holomorphic, primary, real on reals on T_rho, ball of radius mu around K_1(theta) in B, |DK_1|<=sigma_K-mu, L^T L invertible, |B|<=sigma_B-mu, avg T invertible with |avg T^{-1}|<=sigma_T-mu, E_1=0 on T_rho; (S4) K_2 holomorphic, primary, real on reals on T_rho, K_2(T_rho) in B, E_2=0 on T_rho
SOURCE_QUANTIFIERS: n>=2, tau>=n-1, rho>0, M,sigma_K,sigma_B,sigma_T,mu>0 fixed; then data B,h,K_1,K_2,omega,gamma; theta ranges over T_rho in (S3)
SOURCE_CONCLUSION: defines the hypothesis package (S1)-(S4): the hypotheses of G2 without the closeness hypothesis (S1-S2 contain bp:p2:standing)
CONSTANT_SCOPE: M,sigma_K,sigma_B,sigma_T,mu are fixed constants of the part, independent of gamma; no derived constants here
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:diophantine#IsDiophantine, bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals, bp:p0:stripdata#invarianceError, bp:p0:stripdata#gramMatrix, bp:p0:stripdata#normalFrame, bp:p0:stripdata#torsion, bp:p0:stripdata#torsionAverage
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L63-L63 | (S2) omega in Dio_{gamma,tau}
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L64-L64 | (S3),(S4) primary on T_rho
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L64-L64 | (S3),(S4) real on reals
EDGE: bp:p0:stripdata#invarianceError | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L68-L68 | E_i = X_h(K_i) - DK_i omega
EDGE: bp:p0:stripdata#gramMatrix | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L66-L66 | Gram matrix L^T L
EDGE: bp:p0:stripdata#normalFrame | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L85-L85 | N, P of the frame, B = (L^T L)^{-1}
EDGE: bp:p0:stripdata#torsion | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L87-L87 | torsion T = N^T Omega_0 X_N
EDGE: bp:p0:stripdata#torsionAverage | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L87-L87 | avg T used in (S3)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: standing hypotheses of Part 3, a local package (SPEC): (S1)-(S4)

NODE: bp:p3:matrix-norms
KIND: lemma
TITLE: Matrix norms of the frame
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:matrix-norms@L124-L131
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:matrix-norms@L133-L140
CONTRACT_ID: bp:p3:matrix-norms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S3) (assumed for the lemma)
SOURCE_QUANTIFIERS: for every theta in T_rho; constants as in the setting
SOURCE_CONCLUSION: |L|<=sigma_K, |B|<=sigma_B, |N|<=sigma_K sigma_B, |BL^T|<=C_P, |L^T Omega_0|<=C_P, |P|<=C_P, and the stacked matrix (BL^T; -L^T Omega_0) has norm <=C_P
CONSTANT_SCOPE: C_P=2n sigma_K(1+sigma_B), depends only on n,sigma_K,sigma_B
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:standing, bp:p3:standing#constants, step:p3:norms-frame
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#bp:p3:matrix-norms@L125-L125 | assumes (S3)
EDGE: bp:p3:standing#constants | blueprint/parts/p3-uniqueness.tex#bp:p3:matrix-norms@L128-L128 | bounds are stated through C_P
EDGE: step:p3:norms-frame | blueprint/parts/p3-uniqueness.tex#bp:p3:matrix-norms@L134-L134 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:norms-frame
KIND: step
TITLE: The frame
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:norms-frame@L134-L139
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:norms-frame@L134-L139
CONTRACT_ID: step:p3:norms-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S3): |DK_1|<=sigma_K-mu, |B|<=sigma_B-mu on T_rho; operator norm convention
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: the seven bounds of the lemma
CONSTANT_SCOPE: C_P as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms, bp:p1:operator-norms, bp:p3:standing#constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:norms-frame@L136-L136 | bounds abs LBabs , abs L^Tabs , abs BL^Tabs  and the stacked-block identity
EDGE: bp:p1:operator-norms | blueprint/parts/p3-uniqueness.tex#step:p3:norms-frame@L139-L139 | block-row bound abs Pabs <=abs Labs +abs Nabs 
EDGE: bp:p3:standing#constants | blueprint/parts/p3-uniqueness.tex#step:p3:norms-frame@L137-L137 | C_P bounds the products
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:lagrangian
KIND: lemma
TITLE: The reference torus is Lagrangian
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:lagrangian@L149-L151
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:lagrangian@L153-L171
CONTRACT_ID: bp:p3:lagrangian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S1)-(S3)
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: Omega_{K_1}=L^T Omega_0 L=0 on T_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:standing, step:p3:lagrangian-transport, step:p3:lagrangian-unique
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#bp:p3:lagrangian@L150-L150 | assumes (S1)-(S3)
EDGE: step:p3:lagrangian-transport | blueprint/parts/p3-uniqueness.tex#bp:p3:lagrangian@L154-L154 | proof step
EDGE: step:p3:lagrangian-unique | blueprint/parts/p3-uniqueness.tex#bp:p3:lagrangian@L160-L160 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:lagrangian-transport
KIND: step
TITLE: Invariance of $\Omega_{K_1}$ along the flow
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-transport@L154-L158
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-transport@L154-L158
CONTRACT_ID: step:p3:lagrangian-transport
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S3): K_1(T_rho) in B, det(L^T L)!=0, E_1=0 on the open set T_rho
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: d_omega Omega_{K_1}=0, Omega_{K_1} is 1-periodic, avg Omega_{K_1}=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities, bp:p2:periodicity, bp:p2:exactness
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-transport@L156-L156 | (d) gives d_omega Omega_{K_1}=0 for DE_1=0
EDGE: bp:p2:periodicity | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-transport@L157-L157 | Omega_{K_1} 1-periodic
EDGE: bp:p2:exactness | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-transport@L157-L157 | zero average of Omega_{K_1} for primary K_1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:lagrangian-unique
KIND: step
TITLE: Nonresonance
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-unique@L160-L170
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-unique@L160-L170
CONTRACT_ID: step:p3:lagrangian-unique
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Omega_{K_1} holomorphic and bounded on T_rho by 2n sigma_K^2, zero average, d_omega Omega_{K_1}=0, periodic (previous step); omega in Dio (S2)
SOURCE_QUANTIFIERS: 0<delta<rho; each entry of Omega_{K_1}
SOURCE_CONCLUSION: Omega_{K_1}=0 on T_{rho-delta}, hence on T_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms, bp:p3:matrix-norms, bp:p1:cohomological, step:p3:lagrangian-transport
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-unique@L161-L161 | bound abs L^Tabs abs Omega_0 Labs 
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-unique@L162-L162 | abs Labs <=sigma_K
EDGE: bp:p1:cohomological | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-unique@L167-L167 | uniqueness part with g=0
EDGE: step:p3:lagrangian-transport | blueprint/parts/p3-uniqueness.tex#step:p3:lagrangian-unique@L168-L168 | entries have zero average, periodic, Du omega=0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:frequency-bound
KIND: lemma
TITLE: A priori bound on the frequency
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:frequency-bound@L176-L178
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:frequency-bound@L180-L191
CONTRACT_ID: bp:p3:frequency-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S1)-(S3)
SOURCE_QUANTIFIERS: n,tau,rho,M,sigma_K,sigma_B,sigma_T fixed; Gamma=C_P M
SOURCE_CONCLUSION: |omega|<=Gamma and gamma<=Gamma
CONSTANT_SCOPE: Gamma depends only on n,sigma_K,sigma_B,M, not on gamma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:standing, bp:p3:standing#constants, step:p3:frequency-omega, step:p3:frequency-gamma
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#bp:p3:frequency-bound@L177-L177 | assumes (S1)-(S3)
EDGE: bp:p3:standing#constants | blueprint/parts/p3-uniqueness.tex#bp:p3:frequency-bound@L177-L177 | Gamma = C_P M
EDGE: step:p3:frequency-omega | blueprint/parts/p3-uniqueness.tex#bp:p3:frequency-bound@L181-L181 | proof step
EDGE: step:p3:frequency-gamma | blueprint/parts/p3-uniqueness.tex#bp:p3:frequency-bound@L188-L188 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:frequency-omega
KIND: step
TITLE: Bound on $\omega$
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:frequency-omega@L181-L186
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:frequency-omega@L181-L186
CONTRACT_ID: step:p3:frequency-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_1(T_rho) in B; K_1 satisfies A3, A4 on T_rho and A6 with eps=0 (from (S3))
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: |omega|<=2n sigma_K sigma_B M<=C_P M=Gamma
CONSTANT_SCOPE: Gamma as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:admissible, bp:p2:frequency
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:admissible | blueprint/parts/p3-uniqueness.tex#step:p3:frequency-omega@L182-L182 | K_1 satisfies A3, A4, A6 with eps=0
EDGE: bp:p2:frequency | blueprint/parts/p3-uniqueness.tex#step:p3:frequency-omega@L183-L183 | frequency bound with eps=0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:frequency-gamma
KIND: step
TITLE: Bound on $\gamma$
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:frequency-gamma@L188-L190
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:frequency-gamma@L188-L190
CONTRACT_ID: step:p3:frequency-gamma
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega in Dio_{gamma,tau}; |omega|<=Gamma
SOURCE_QUANTIFIERS: k=e_1
SOURCE_CONCLUSION: gamma<=|omega|<=Gamma
CONSTANT_SCOPE: Gamma as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frequency, bp:p0:diophantine#IsDiophantine, step:p3:frequency-omega
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frequency | blueprint/parts/p3-uniqueness.tex#step:p3:frequency-gamma@L189-L189 | gamma<=abs omegaabs 
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p3-uniqueness.tex#step:p3:frequency-gamma@L190-L190 | Diophantine inequality at k=e_1
EDGE: step:p3:frequency-omega | blueprint/parts/p3-uniqueness.tex#step:p3:frequency-gamma@L190-L190 | abs omegaabs <=Gamma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:reducibility
KIND: lemma
TITLE: Exact reducibility
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L193-L203
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L205-L234
CONTRACT_ID: bp:p3:reducibility
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S1)-(S3)
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: B,N,P holomorphic on T_rho; P invertible with P^{-1}=(BL^T;-L^T Omega_0), P^T Omega_0 P=Omega_0; T=BL^T X_N; DX_h(K_1)P-d_omega P=P Lambda with Lambda=(0 T;0 0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:standing, step:p3:red-holomorphy, step:p3:red-frame, step:p3:red-tangent, step:p3:red-normal, step:p3:red-assembly
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L194-L194 | assumes (S1)-(S3)
EDGE: step:p3:red-holomorphy | blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L206-L206 | proof step
EDGE: step:p3:red-frame | blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L212-L212 | proof step
EDGE: step:p3:red-tangent | blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L222-L222 | proof step
EDGE: step:p3:red-normal | blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L226-L226 | proof step
EDGE: step:p3:red-assembly | blueprint/parts/p3-uniqueness.tex#bp:p3:reducibility@L231-L231 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:red-holomorphy
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-holomorphy@L206-L210
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-holomorphy@L206-L210
CONTRACT_ID: step:p3:red-holomorphy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S3): det(L^T L)!=0 on T_rho
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: L, L^T L, B=(L^T L)^{-1}, N, P are holomorphic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:holomorphic-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:red-holomorphy@L207-L207 | L=DK_1 holomorphic
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p3-uniqueness.tex#step:p3:red-holomorphy@L209-L209 | B holomorphic
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:red-frame
KIND: step
TITLE: Symplectic frame
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-frame@L212-L220
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-frame@L212-L220
CONTRACT_ID: step:p3:red-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Omega_{K_1}=0 on T_rho; B symmetric
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: P^T Omega_0 P=Omega_0; P invertible with P^{-1}=Q=(BL^T;-L^T Omega_0); T=BL^T X_N
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:lagrangian, bp:p2:frame-identities, bp:p2:matrix
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:lagrangian | blueprint/parts/p3-uniqueness.tex#step:p3:red-frame@L213-L213 | E_sym=0 from Omega_{K_1}=0
EDGE: bp:p2:frame-identities | blueprint/parts/p3-uniqueness.tex#step:p3:red-frame@L214-L214 | (b) and (f): symplectic frame, QP=I
EDGE: bp:p2:matrix | blueprint/parts/p3-uniqueness.tex#step:p3:red-frame@L216-L216 | (d): formula for Q
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:red-tangent
KIND: step
TITLE: Tangent columns
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-tangent@L222-L224
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-tangent@L222-L224
CONTRACT_ID: step:p3:red-tangent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E_1=0 on T_rho
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: X_L=DX_h(K_1)L-d_omega L=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p3-uniqueness.tex#step:p3:red-tangent@L223-L223 | (c) with E_1=0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:red-normal
KIND: step
TITLE: Normal columns
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-normal@L226-L229
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-normal@L226-L229
CONTRACT_ID: step:p3:red-normal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: DE_1=0 on T_rho; Q=P^{-1}
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: X_N=LT
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:frame-identities, step:p3:red-frame
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:frame-identities | blueprint/parts/p3-uniqueness.tex#step:p3:red-normal@L227-L227 | (e): Q(X_L X_N)=Lambda
EDGE: step:p3:red-frame | blueprint/parts/p3-uniqueness.tex#step:p3:red-normal@L229-L229 | Q^{-1}=P
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:red-assembly
KIND: step
TITLE: Assembly
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-assembly@L231-L233
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:red-assembly@L231-L233
CONTRACT_ID: step:p3:red-assembly
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X_L=0 and X_N=LT
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: DX_h(K_1)P-d_omega P=P Lambda
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:red-tangent, step:p3:red-normal
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:red-tangent | blueprint/parts/p3-uniqueness.tex#step:p3:red-assembly@L232-L232 | columns (X_L X_N), X_L=0
EDGE: step:p3:red-normal | blueprint/parts/p3-uniqueness.tex#step:p3:red-assembly@L232-L232 | X_N=LT
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:torsion-bound
KIND: lemma
TITLE: The torsion
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:torsion-bound@L241-L245
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:torsion-bound@L247-L268
CONTRACT_ID: bp:p3:torsion-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S1)-(S3)
SOURCE_QUANTIFIERS: n,tau,rho,M,sigma_K,sigma_B fixed; C_tor as in the setting
SOURCE_CONCLUSION: T holomorphic on T_rho, continuous on R^n, ||T||_{3rho/4}<=C_tor; T integrable on [0,1]^n and avg T in (S3) is the integral of a continuous function
CONSTANT_SCOPE: C_tor=C_P^2 M(1+4nC_P/rho), depends only on n,rho,M,sigma_K,sigma_B
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:standing, bp:p3:standing#constants, step:p3:torsion-holomorphy, step:p3:torsion-bound-step
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#bp:p3:torsion-bound@L242-L242 | assumes (S1)-(S3)
EDGE: bp:p3:standing#constants | blueprint/parts/p3-uniqueness.tex#bp:p3:torsion-bound@L243-L243 | C_tor
EDGE: step:p3:torsion-holomorphy | blueprint/parts/p3-uniqueness.tex#bp:p3:torsion-bound@L248-L248 | proof step
EDGE: step:p3:torsion-bound-step | blueprint/parts/p3-uniqueness.tex#bp:p3:torsion-bound@L254-L254 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:torsion-holomorphy
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L248-L252
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L248-L252
CONTRACT_ID: step:p3:torsion-holomorphy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: N holomorphic on T_rho; K_1(T_rho) in B; DX_h holomorphic on B
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: X_N and T=BL^T X_N are holomorphic, hence continuous on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, bp:p2:hamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L249 | N holomorphic; T=BL^T X_N
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L251-L251 | (a): DX_h holomorphic on B
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:torsion-bound-step
KIND: step
TITLE: Bound
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-bound-step@L254-L267
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-bound-step@L254-L267
CONTRACT_ID: step:p3:torsion-bound-step
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ||N||_rho<=sigma_K sigma_B; |omega|<=Gamma; |DX_h|<=M; |BL^T|<=C_P
SOURCE_QUANTIFIERS: strip T_{3rho/4}, delta=rho/4
SOURCE_CONCLUSION: ||d_omega N||<=4n Gamma sigma_K sigma_B/rho; ||X_N||_{3rho/4}<=sigma_K sigma_B M(1+4nC_P/rho); ||T||_{3rho/4}<=C_tor
CONSTANT_SCOPE: C_tor as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:matrix-norms, bp:p1:cauchy-strip, bp:p3:frequency-bound, bp:p3:reducibility
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-bound-step@L255-L255 | abs abs Nabs abs <=sigma_K sigma_B and abs BL^Tabs <=C_P
EDGE: bp:p1:cauchy-strip | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-bound-step@L255-L255 | Cauchy estimate with delta=rho/4
EDGE: bp:p3:frequency-bound | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-bound-step@L257-L257 | abs omegaabs <=Gamma
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-bound-step@L265-L265 | T=BL^T X_N
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:phase
KIND: lemma
TITLE: Phase normalization
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L279-L288
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L290-L342
CONTRACT_ID: bp:p3:phase
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S1)-(S4); eta=sup_{T_rho}|K_2-K_1| satisfies eta<=rho/(4nC_P(1+2C_P sigma_K))
SOURCE_QUANTIFIERS: real shifts psi; constants as in the setting
SOURCE_CONCLUSION: exists psi in R^n with |psi|<=2C_P eta and avg(BL^T(K_2(.+psi)-K_1))=0
CONSTANT_SCOPE: C_P depends only on n,sigma_K,sigma_B
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:standing, bp:p3:standing#constants, step:p3:phase-real, step:p3:phase-fixed-point, step:p3:phase-derivatives, step:p3:phase-contraction, step:p3:phase-conclusion
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L280-L280 | assumes (S1)-(S4)
EDGE: bp:p3:standing#constants | blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L280-L280 | C_P
EDGE: step:p3:phase-real | blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L294-L294 | proof step
EDGE: step:p3:phase-fixed-point | blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L302-L302 | proof step
EDGE: step:p3:phase-derivatives | blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L314-L314 | proof step
EDGE: step:p3:phase-contraction | blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L322-L322 | proof step
EDGE: step:p3:phase-conclusion | blueprint/parts/p3-uniqueness.tex#bp:p3:phase@L339-L339 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:phase-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-real@L294-L300
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-real@L294-L300
CONTRACT_ID: step:p3:phase-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_1,K_2 real on reals (S3),(S4); W=K_2-K_1 holomorphic, periodic, bounded by eta
SOURCE_QUANTIFIERS: theta, psi in R^n
SOURCE_CONCLUSION: L, L^T L, B real on R^n; averages of the two integrands are real and the integrands continuous on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:real-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:real-inverse | blueprint/parts/p3-uniqueness.tex#step:p3:phase-real@L297-L297 | B real as inverse of real matrix
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:phase-fixed-point
KIND: step
TITLE: Fixed-point form
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L302-L312
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L302-L312
CONTRACT_ID: step:p3:phase-fixed-point
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: BL^T L=I; W=K_2-K_1
SOURCE_QUANTIFIERS: theta,psi in R^n
SOURCE_CONCLUSION: normalization holds iff Phi(psi)=psi for Phi(psi)=-avg(BL^T(W(.+psi)+K_1(.+psi)-K_1-L psi))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:phase-derivatives
KIND: step
TITLE: Derivative bounds on the real torus
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-derivatives@L314-L320
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-derivatives@L314-L320
CONTRACT_ID: step:p3:phase-derivatives
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: W holomorphic on T_rho bounded by eta; L holomorphic bounded by sigma_K
SOURCE_QUANTIFIERS: theta,y,y' in R^n
SOURCE_CONCLUSION: |W(theta+y)-W(theta+y')|<=(2n eta/rho)|y-y'| and |L(theta+y)-L(theta)|<=(2n sigma_K/rho)|y|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:increments, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:increments | blueprint/parts/p3-uniqueness.tex#step:p3:phase-derivatives@L315-L315 | increment estimate with delta=rho/2
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:phase-derivatives@L316-L316 | L holomorphic
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:phase-contraction
KIND: step
TITLE: Contraction
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L322-L337
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L322-L337
CONTRACT_ID: step:p3:phase-contraction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: derivative bounds on the real torus; |BL^T|<=C_P; eta<=rho/(4nC_P(1+2C_P sigma_K)); Y={|psi|<=2C_P eta}
SOURCE_QUANTIFIERS: psi,psi' in Y
SOURCE_CONCLUSION: Phi maps Y into Y and is a contraction with constant 1/2
CONSTANT_SCOPE: C_P as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:phase-derivatives, step:p3:phase-fixed-point, step:p3:phase-real, bp:p3:matrix-norms
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:phase-derivatives | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L328-L328 | Lipschitz bounds on W and L
EDGE: step:p3:phase-fixed-point | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L332-L332 | definition of Phi
EDGE: step:p3:phase-real | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L335-L335 | Phi real-valued on R^n
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L330-L330 | abs BL^Tabs <=C_P
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:phase-conclusion
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-conclusion@L339-L341
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-conclusion@L339-L341
CONTRACT_ID: step:p3:phase-conclusion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Phi maps the closed set Y into itself and is a contraction
SOURCE_QUANTIFIERS: Y complete metric space
SOURCE_CONCLUSION: exists psi in Y with Phi(psi)=psi, i.e. the normalization
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-banach, step:p3:phase-fixed-point, step:p3:phase-contraction
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-banach | blueprint/parts/p3-uniqueness.tex#step:p3:phase-conclusion@L340-L340 | Banach fixed point theorem
EDGE: step:p3:phase-fixed-point | blueprint/parts/p3-uniqueness.tex#step:p3:phase-conclusion@L341-L341 | fixed point equals normalization
EDGE: step:p3:phase-contraction | blueprint/parts/p3-uniqueness.tex#step:p3:phase-conclusion@L340-L340 | Phi maps Y to Y, contraction
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:difference-equation
KIND: lemma
TITLE: The difference in the frame
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L359-L373
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L375-L406
CONTRACT_ID: bp:p3:difference-equation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S1)-(S4); psi in R^n; Delta=K_2(.+psi)-K_1 with ||Delta||_rho<mu
SOURCE_QUANTIFIERS: R, xi=P^{-1}Delta, q=P^{-1}R defined on T_rho
SOURCE_CONCLUSION: (a) Delta,xi,q holomorphic; Delta,xi 1-periodic; Delta=P xi; (b) d_omega xi^L=T xi^N+q^L, d_omega xi^N=q^N; (c) |xi|<=C_P|Delta|, |Delta|<=C_P|xi|, |q|<=(1/2)C_P M|Delta|^2
CONSTANT_SCOPE: C_P depends only on n,sigma_K,sigma_B
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:standing, bp:p3:standing#constants, step:p3:diff-regularity, step:p3:diff-linearized, step:p3:diff-triangular, step:p3:diff-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L360-L360 | assumes (S1)-(S4)
EDGE: bp:p3:standing#constants | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L371-L371 | C_P
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L376-L376 | proof step
EDGE: step:p3:diff-linearized | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L386-L386 | proof step
EDGE: step:p3:diff-triangular | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L393-L393 | proof step
EDGE: step:p3:diff-bounds | blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L399-L399 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:diff-regularity
KIND: step
TITLE: Regularity and periodicity
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L376-L384
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L376-L384
CONTRACT_ID: step:p3:diff-regularity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_1,K_2 holomorphic and primary; ball of radius mu around K_1(theta) in B; ||Delta||_rho<mu; P^{-1} formula
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: Delta,xi,q holomorphic; Delta,xi 1-periodic; Delta=P xi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, bp:p2:periodicity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L382-L382 | P^{-1} holomorphic, explicit formula
EDGE: bp:p2:periodicity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L384-L384 | L is 1-periodic
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:diff-linearized
KIND: step
TITLE: Linearized equation
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-linearized@L386-L391
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-linearized@L386-L391
CONTRACT_ID: step:p3:diff-linearized
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E_1=E_2=0 (S3),(S4)
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: d_omega Delta=DX_h(K_1)Delta+R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:diff-triangular
KIND: step
TITLE: Triangular system
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L393-L397
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L393-L397
CONTRACT_ID: step:p3:diff-triangular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: d_omega Delta=DX_h(K_1)Delta+R; DX_h(K_1)P-d_omega P=P Lambda
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: d_omega xi=Lambda xi+q, i.e. part (b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, step:p3:diff-linearized
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L395-L395 | triangular reduction identity
EDGE: step:p3:diff-linearized | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L394 | linearized equation for Delta
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:diff-bounds
KIND: step
TITLE: Bounds
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L399-L405
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L399-L405
CONTRACT_ID: step:p3:diff-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |P^{-1}|,|P|<=C_P; X_h holomorphic on B with |D^2X_h|<=M; segment K_1(theta)+tDelta in B
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: |xi|<=C_P|Delta|, |Delta|<=C_P|xi|, |R|<=(1/2)M|Delta|^2, |q|<=(1/2)C_P M|Delta|^2
CONSTANT_SCOPE: C_P as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:matrix-norms, bp:p1:taylor, bp:p2:hamiltonian, step:p3:diff-regularity, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401 | abs Pabs ,abs P^{-1}abs <=C_P
EDGE: bp:p1:taylor | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401 | second-order Taylor bound on R
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L402-L402 | (a): X_h holomorphic on B
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L403-L403 | segment lies in B
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L405-L405 | abs D^2X_habs =abs D(DX_h)abs 
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:quadratic
KIND: proposition
TITLE: Quadratic estimate
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L415-L425
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L427-L500
CONTRACT_ID: bp:p3:quadratic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (S1)-(S4); psi in R^n; Delta=K_2(.+psi)-K_1 with ||Delta||_rho<mu and avg(BL^T Delta)=0
SOURCE_QUANTIFIERS: psi real; 0<rho''<rho'<=3rho/4, delta=(rho'-rho'')/2; C_quad as in the setting
SOURCE_CONCLUSION: ||Delta||_{rho''}<=C_quad gamma^{-2} delta^{-2(tau+n)} ||Delta||_{rho'}^2
CONSTANT_SCOPE: C_quad depends only on n,tau,rho,M,sigma_K,sigma_B,sigma_T, not on gamma, mu, psi, rho', rho''
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:standing, bp:p3:standing#constants, bp:p3:difference-equation, bp:p3:quadratic#absorb, step:p3:quad-remainder, step:p3:quad-normal-osc, step:p3:quad-normal-avg, step:p3:quad-normal, step:p3:quad-tangent, step:p3:quad-combine
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L416-L416 | assumes (S1)-(S4)
EDGE: bp:p3:standing#constants | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L421-L421 | C_quad
EDGE: bp:p3:difference-equation | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L428-L428 | xi, q and their equations
EDGE: bp:p3:quadratic#absorb | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L431-L431 | absorption inequality used repeatedly
EDGE: step:p3:quad-remainder | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L435-L435 | proof step
EDGE: step:p3:quad-normal-osc | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L438-L438 | proof step
EDGE: step:p3:quad-normal-avg | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L450-L450 | proof step
EDGE: step:p3:quad-normal | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L463-L463 | proof step
EDGE: step:p3:quad-tangent | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L470-L470 | proof step
EDGE: step:p3:quad-combine | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic@L488-L488 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:quad-remainder
KIND: step
TITLE: The remainder
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-remainder@L435-L436
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-remainder@L435-L436
CONTRACT_ID: step:p3:quad-remainder
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |q|<=(1/2)C_P M|Delta|^2 on T_rho
SOURCE_QUANTIFIERS: on T_rho'
SOURCE_CONCLUSION: ||q||_{rho'}<=(1/2)C_P M ||Delta||_{rho'}^2
CONSTANT_SCOPE: C_P as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:difference-equation
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:difference-equation | blueprint/parts/p3-uniqueness.tex#step:p3:quad-remainder@L436-L436 | (c) bound on q
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:quad-normal-osc
KIND: step
TITLE: Oscillating part of the normal coordinate
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-osc@L438-L448
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-osc@L438-L448
CONTRACT_ID: step:p3:quad-normal-osc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: d_omega xi^N=q^N; xi^N holomorphic, bounded, 1-periodic on T_rho'
SOURCE_QUANTIFIERS: delta; strips T_rho', T_{rho'-delta}
SOURCE_CONCLUSION: avg q^N=0 and ||xi^N-avg xi^N||_{rho'-delta}<=(1/2)C_P M C_coh gamma^{-1} delta^{-(tau+n)}||Delta||_rho'^2
CONSTANT_SCOPE: C_coh=c(n,tau)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:difference-equation, bp:p1:averages, bp:p1:cohomological, step:p3:quad-remainder
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:difference-equation | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-osc@L440-L440 | (b): d_omega xi^N=q^N, regularity
EDGE: bp:p1:averages | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-osc@L441-L441 | avg of d_omega of a periodic function is 0
EDGE: bp:p1:cohomological | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-osc@L443-L443 | uniqueness and estimate
EDGE: step:p3:quad-remainder | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-osc@L447-L447 | abs abs q^Nabs abs <=(1/2)C_P Mabs abs Deltaabs abs ^2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:quad-normal-avg
KIND: step
TITLE: Average of the normal coordinate
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-avg@L450-L461
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-avg@L450-L461
CONTRACT_ID: step:p3:quad-normal-avg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: d_omega xi^L=T xi^N+q^L; avg T invertible, |avg T^{-1}|<=sigma_T-mu; |T|<=C_tor on real theta
SOURCE_QUANTIFIERS: averages over [0,1]^n
SOURCE_CONCLUSION: avg xi^N=-avg T^{-1}(avg(T xi~^N)+avg q^L); |avg xi^N|<=sigma_T(C_tor||xi~^N||+(1/2)C_P M||Delta||_rho'^2)
CONSTANT_SCOPE: C_tor,sigma_T as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:difference-equation, bp:p1:averages, bp:p3:torsion-bound, step:p3:quad-normal-osc, step:p3:quad-remainder
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:difference-equation | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-avg@L453-L453 | (b): equation for xi^L
EDGE: bp:p1:averages | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-avg@L452-L452 | avg d_omega xi^L=0
EDGE: bp:p3:torsion-bound | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-avg@L459-L459 | abs Tabs <=C_tor
EDGE: step:p3:quad-normal-osc | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-avg@L453-L453 | splitting xi^N, bound on xi~^N
EDGE: step:p3:quad-remainder | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal-avg@L461-L461 | bound on q^L
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:quad-normal
KIND: step
TITLE: The normal coordinate
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal@L463-L468
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal@L463-L468
CONTRACT_ID: step:p3:quad-normal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bounds on xi~^N and avg xi^N; eq:p3:absorb
SOURCE_QUANTIFIERS: strip T_{rho'-delta}
SOURCE_CONCLUSION: ||xi^N||_{rho'-delta}<=C^N gamma^{-1} delta^{-(tau+n)}||Delta||_rho'^2
CONSTANT_SCOPE: C^N as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:quad-normal-osc, step:p3:quad-normal-avg, bp:p3:quadratic#absorb, bp:p3:standing#constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:quad-normal-osc | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal@L464-L464 | oscillating part
EDGE: step:p3:quad-normal-avg | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal@L464-L464 | average part
EDGE: bp:p3:quadratic#absorb | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal@L464-L464 | absorb term without small divisor
EDGE: bp:p3:standing#constants | blueprint/parts/p3-uniqueness.tex#step:p3:quad-normal@L467-L467 | C^N
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:quad-tangent
KIND: step
TITLE: The tangential coordinate
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L470-L486
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L470-L486
CONTRACT_ID: step:p3:quad-tangent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g=d_omega xi^L=T xi^N+q^L; avg xi^L=0 by hypothesis; |T|<=C_tor on T_{3rho/4}
SOURCE_QUANTIFIERS: strips T_{rho'-delta}, T_{rho''}
SOURCE_CONCLUSION: ||xi^L||_{rho''}<=C^L gamma^{-2} delta^{-2(tau+n)}||Delta||_rho'^2
CONSTANT_SCOPE: C^L, C_coh as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:difference-equation, step:p3:quad-normal-avg, step:p3:quad-normal, bp:p3:torsion-bound, step:p3:quad-remainder, bp:p3:quadratic#absorb, bp:p1:cohomological, bp:p3:standing#constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:difference-equation | blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L471-L471 | (b): d_omega xi^L=g
EDGE: step:p3:quad-normal-avg | blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L472-L472 | g has zero average
EDGE: step:p3:quad-normal | blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L479-L479 | bound on xi^N
EDGE: bp:p3:torsion-bound | blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L475-L475 | abs Tabs <=C_tor on T_{3rho/4}
EDGE: step:p3:quad-remainder | blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L475-L475 | bound on q^L
EDGE: bp:p3:quadratic#absorb | blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L476-L476 | absorb term without small divisor
EDGE: bp:p1:cohomological | blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L481-L481 | uniqueness and estimate for xi^L
EDGE: bp:p3:standing#constants | blueprint/parts/p3-uniqueness.tex#step:p3:quad-tangent@L485-L485 | C^L
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:quad-combine
KIND: step
TITLE: Return to $\Delta$
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-combine@L488-L499
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:quad-combine@L488-L499
CONTRACT_ID: step:p3:quad-combine
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: bounds on xi^L and xi^N; Delta=P xi; |P|<=C_P
SOURCE_QUANTIFIERS: strip T_{rho''}
SOURCE_CONCLUSION: ||Delta||_{rho''}<=C_quad gamma^{-2} delta^{-2(tau+n)}||Delta||_rho'^2
CONSTANT_SCOPE: C_quad as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:quad-normal, step:p3:quad-tangent, bp:p3:quadratic#absorb, bp:p3:difference-equation, bp:p3:matrix-norms, bp:p3:standing#constants
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:quad-normal | blueprint/parts/p3-uniqueness.tex#step:p3:quad-combine@L489-L489 | bound on xi^N
EDGE: step:p3:quad-tangent | blueprint/parts/p3-uniqueness.tex#step:p3:quad-combine@L496-L496 | bound on xi^L
EDGE: bp:p3:quadratic#absorb | blueprint/parts/p3-uniqueness.tex#step:p3:quad-combine@L489-L489 | absorb for xi^N
EDGE: bp:p3:difference-equation | blueprint/parts/p3-uniqueness.tex#step:p3:quad-combine@L494-L494 | Delta=P xi
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:quad-combine@L494-L494 | abs Pabs <=C_P
EDGE: bp:p3:standing#constants | blueprint/parts/p3-uniqueness.tex#step:p3:quad-combine@L499-L499 | definition of C_quad
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:g2-constant
KIND: step
TITLE: Choice of the threshold
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-constant@L513-L524
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-constant@L513-L524
CONTRACT_ID: step:p3:g2-constant
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G2 hypotheses: (S1)-(S4) data and closeness; constants of the setting
SOURCE_QUANTIFIERS: n,tau,rho,M,sigma_K,sigma_B,sigma_T,mu fixed first; then c; then data B,h,K_1,K_2,omega,gamma
SOURCE_CONCLUSION: c := (1/(1+2C_P sigma_K)) min{...} (eq:p3:c) is >0 and depends only on n,tau,rho,M,sigma_K,sigma_B,sigma_T,mu; the data satisfy bp:p3:standing and eta<=c gamma^2 rho^{2tau}
CONSTANT_SCOPE: c depends only on n,tau,rho,M,sigma_K,sigma_B,sigma_T,mu; not on gamma
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:standing, bp:p3:standing#constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:g2-constant@L520-L520 | hypotheses of G2 give the standing package
EDGE: bp:p3:standing#constants | blueprint/parts/p3-uniqueness.tex#step:p3:g2-constant@L514-L514 | constants enter the definition of c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:g2-smallness
KIND: step
TITLE: The three smallness conditions
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-smallness@L526-L533
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-smallness@L526-L533
CONTRACT_ID: step:p3:g2-smallness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: eta<=c gamma^2 rho^{2tau}; gamma<=Gamma
SOURCE_QUANTIFIERS: eta, c as in the previous step
SOURCE_CONCLUSION: eta<=rho/(4nC_P(1+2C_P sigma_K)); (1+2C_P sigma_K)eta<=mu/2; (1+2C_P sigma_K)eta<=gamma^2(rho/32)^{2(tau+n)}/(2C_quad)
CONSTANT_SCOPE: c depends only on n,tau,rho,M,sigma_K,sigma_B,sigma_T,mu
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:frequency-bound, step:p3:g2-constant
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:frequency-bound | blueprint/parts/p3-uniqueness.tex#step:p3:g2-smallness@L527-L527 | gamma<=Gamma gives eta<=c Gamma^2 rho^{2tau}
EDGE: step:p3:g2-constant | blueprint/parts/p3-uniqueness.tex#step:p3:g2-smallness@L528-L528 | the three terms of the minimum in (eq:p3:c)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:g2-phase
KIND: step
TITLE: Phase
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-phase@L535-L538
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-phase@L535-L538
CONTRACT_ID: step:p3:g2-phase
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: first smallness condition; (S1)-(S4)
SOURCE_QUANTIFIERS: Lemma phase applied to eta
SOURCE_CONCLUSION: exists psi in R^n with |psi|<=2C_P eta and avg(BL^T Delta)=0, Delta=K_2(.+psi)-K_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:phase, step:p3:g2-smallness, step:p3:g2-constant
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:phase | blueprint/parts/p3-uniqueness.tex#step:p3:g2-phase@L536-L536 | phase normalization
EDGE: step:p3:g2-smallness | blueprint/parts/p3-uniqueness.tex#step:p3:g2-phase@L536-L536 | first smallness condition
EDGE: step:p3:g2-constant | blueprint/parts/p3-uniqueness.tex#step:p3:g2-phase@L536-L536 | data satisfy the standing package
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:g2-size
KIND: step
TITLE: Size of the difference
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-size@L540-L547
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-size@L540-L547
CONTRACT_ID: step:p3:g2-size
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |psi|<=2C_P eta; (1+2C_P sigma_K)eta<=mu/2; |DK_1|<=sigma_K on convex open T_rho
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: ||Delta||_rho<=(1+2C_P sigma_K)eta<=mu/2<mu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:increments-open, step:p3:g2-phase, step:p3:g2-smallness
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:increments-open | blueprint/parts/p3-uniqueness.tex#step:p3:g2-size@L543-L543 | K_1(theta+psi)-K_1(theta) bounded on convex T_rho
EDGE: step:p3:g2-phase | blueprint/parts/p3-uniqueness.tex#step:p3:g2-size@L541-L541 | abs psiabs <=2C_P eta
EDGE: step:p3:g2-smallness | blueprint/parts/p3-uniqueness.tex#step:p3:g2-size@L544-L544 | second condition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:g2-iteration
KIND: step
TITLE: Iteration on shrinking strips
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L549-L563
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L549-L563
CONTRACT_ID: step:p3:g2-iteration
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ||Delta||_rho<mu; avg(BL^T Delta)=0; third smallness condition; rho_m=(1/2+2^{-m-2})rho
SOURCE_QUANTIFIERS: m>=0; y_m=||Delta||_{rho_m}; Q=C_quad gamma^{-2}(rho/16)^{-2(tau+n)}, p=2(tau+n)
SOURCE_CONCLUSION: y_{m+1}<=Q 2^{pm} y_m^2, Q 2^p y_0<=1/2, y_m->0, hence Delta=0 on T_{rho/2}
CONSTANT_SCOPE: Q depends on gamma through gamma^{-2}; absorbed by the third smallness condition
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:quadratic, step:p3:g2-size, step:p3:g2-phase, step:p3:g2-smallness, step:p3:g2-constant, bp:p1:iteration
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:quadratic | blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L552-L552 | quadratic estimate on rho_m, rho_{m+1}
EDGE: step:p3:g2-size | blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L558-L558 | abs abs Deltaabs abs _rho<mu and bound on y_0
EDGE: step:p3:g2-phase | blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L552-L552 | average hypothesis of the quadratic estimate
EDGE: step:p3:g2-smallness | blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L558-L558 | third condition gives Q 2^p y_0<=1/2
EDGE: step:p3:g2-constant | blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L552-L552 | standing package for the data
EDGE: bp:p1:iteration | blueprint/parts/p3-uniqueness.tex#step:p3:g2-iteration@L562-L562 | quadratic iteration gives y_m->0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p3:g2-conclusion
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-conclusion@L565-L567
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:g2-conclusion@L565-L567
CONTRACT_ID: step:p3:g2-conclusion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Delta=0 on T_{rho/2}; psi real
SOURCE_QUANTIFIERS: phi:=-psi in R^n
SOURCE_CONCLUSION: K_2=K_1(.+phi) on T_{rho/2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:g2-iteration, step:p3:g2-phase
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:g2-iteration | blueprint/parts/p3-uniqueness.tex#step:p3:g2-conclusion@L566-L566 | Delta=0 on T_{rho/2}
EDGE: step:p3:g2-phase | blueprint/parts/p3-uniqueness.tex#step:p3:g2-conclusion@L566-L566 | psi real, so phi real
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p3:standing#constants
KIND: step
TITLE: Constants of Part 3
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:standing#constants@L95-L117
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:standing#constants@L95-L117
CONTRACT_ID: bp:p3:standing#constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing package bp:p3:standing (S1)-(S4) for the data on which the constants are evaluated; bp:p1:cohomological supplies c(n,tau)
SOURCE_QUANTIFIERS: n,tau,rho,M,sigma_K,sigma_B,sigma_T fixed before any data; then C_P, Gamma, C_tor, C_coh, C^N, C^L, C_quad
SOURCE_CONCLUSION: defines C_P=2n sigma_K(1+sigma_B), Gamma=C_P M, C_tor=C_P^2 M(1+4nC_P/rho), C_coh=c(n,tau), C^N, C^L, C_quad=C_P max{C^L,Gamma rho^{tau+n} C^N} by (eq:p3:constants),(eq:p3:Cquad)
CONSTANT_SCOPE: all constants depend only on n,tau,rho,M,sigma_K,sigma_B,sigma_T (C_coh only on n,tau; C_P only on n,sigma_K,sigma_B); not on gamma, mu or the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p3-uniqueness.tex#bp:p3:standing#constants@L104-L104 | C_coh is the constant c(n,tau) of that lemma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: ADDED step: the constants paragraph of the setting (L95-117) is a construction reused throughout; not a labelled environment

NODE: bp:p3:quadratic#absorb
KIND: step
TITLE: Absorption inequality
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic#absorb@L428-L433
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic#absorb@L428-L433
CONTRACT_ID: bp:p3:quadratic#absorb
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: delta<rho (from rho''<rho'<=3rho/4); gamma<=Gamma
SOURCE_QUANTIFIERS: delta=(rho'-rho'')/2
SOURCE_CONCLUSION: 1<=Gamma rho^{tau+n} gamma^{-1} delta^{-(tau+n)} (eq:p3:absorb)
CONSTANT_SCOPE: Gamma as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:frequency-bound
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:frequency-bound | blueprint/parts/p3-uniqueness.tex#bp:p3:quadratic#absorb@L430-L430 | gamma<=Gamma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: ADDED step: reused intermediate inequality (eq:p3:absorb), used in four steps

NODE: bp:p4:lattice-count
KIND: lemma
TITLE: Counting lattice points on $\ell^1$ spheres
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lattice-count@L53-L55
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lattice-count@L57-L64
CONTRACT_ID: bp:p4:lattice-count
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1, m>=1 integers
SOURCE_QUANTIFIERS: n,m integers
SOURCE_CONCLUSION: #{k in Z^n : |k|_1=m} <= 2(2m+1)^{n-1} <= 2*3^{n-1} m^{n-1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:count-projection
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:count-projection | blueprint/parts/p4-measure.tex#bp:p4:lattice-count@L58-L58 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:count-projection
KIND: step
TITLE: Projection to the first $n-1$ coordinates
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:count-projection@L58-L63
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:count-projection@L58-L63
CONTRACT_ID: step:p4:count-projection
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n,m>=1; |k|_1=m
SOURCE_QUANTIFIERS: P(k)=(k_1..k_{n-1}) and its fibres
SOURCE_CONCLUSION: image of P lies in {-m..m}^{n-1}, fibres have <=2 points, so count <= 2(2m+1)^{n-1}, and 2m+1<=3m
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:lattice-sum
KIND: lemma
TITLE: Lattice sum
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lattice-sum@L66-L71
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lattice-sum@L73-L82
CONTRACT_ID: bp:p4:lattice-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1, tau>n-1
SOURCE_QUANTIFIERS: n, tau, then the sum
SOURCE_CONCLUSION: sum_{k in Z^n\{0}} |k|_1^{-tau-1} <= S(n,tau)=2*3^{n-1}(tau+2-n)/(tau+1-n)
CONSTANT_SCOPE: S depends only on n, tau
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:latsum-shells, step:p4:latsum-integral
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:latsum-shells | blueprint/parts/p4-measure.tex#bp:p4:lattice-sum@L74-L74 | proof step of this result
EDGE: step:p4:latsum-integral | blueprint/parts/p4-measure.tex#bp:p4:lattice-sum@L78-L78 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:latsum-shells
KIND: step
TITLE: Summation by shells
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:latsum-shells@L74-L76
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:latsum-shells@L74-L76
CONTRACT_ID: step:p4:latsum-shells
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1, tau>n-1
SOURCE_QUANTIFIERS: m=|k|_1>=1, p=tau+2-n>1
SOURCE_CONCLUSION: sum <= 2*3^{n-1} sum_{m>=1} m^{-p}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:lattice-count
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:lattice-count | blueprint/parts/p4-measure.tex#step:p4:latsum-shells@L75-L75 | shell cardinalities
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:latsum-integral
KIND: step
TITLE: Integral comparison
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:latsum-integral@L78-L81
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:latsum-integral@L78-L81
CONTRACT_ID: step:p4:latsum-integral
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: p>1
SOURCE_QUANTIFIERS: p>1
SOURCE_CONCLUSION: sum_{m>=1} m^{-p} <= p/(p-1), hence the claimed bound with p=tau+2-n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:slab
KIND: lemma
TITLE: Slabs in a cube
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:slab@L84-L89
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:slab@L91-L102
CONTRACT_ID: bp:p4:slab
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1, R>0, a>0, k in Z^n\{0}
SOURCE_QUANTIFIERS: n,R,a,k
SOURCE_CONCLUSION: meas{omega in [-R,R]^n : |k.omega|<a} <= 2n(2R)^{n-1} a/|k|_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:slab-coordinate, step:p4:slab-fubini
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:slab-coordinate | blueprint/parts/p4-measure.tex#bp:p4:slab@L92-L92 | proof step of this result
EDGE: step:p4:slab-fubini | blueprint/parts/p4-measure.tex#bp:p4:slab@L95-L95 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:slab-coordinate
KIND: step
TITLE: A dominant coordinate
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:slab-coordinate@L92-L93
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:slab-coordinate@L92-L93
CONTRACT_ID: step:p4:slab-coordinate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: k in Z^n\{0}
SOURCE_QUANTIFIERS: index i
SOURCE_CONCLUSION: |k_i|=max_j|k_j| >=1 and |k|_1 <= n|k_i|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:slab-fubini
KIND: step
TITLE: Fubini in the coordinate $\omega_i$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L95-L101
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L95-L101
CONTRACT_ID: step:p4:slab-fubini
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: dominant coordinate i with |k|_1<=n|k_i|; R,a>0
SOURCE_QUANTIFIERS: fixed other coordinates omega' in [-R,R]^{n-1}
SOURCE_CONCLUSION: each section in omega_i has length <= 2a/|k_i|, so by Fubini the slab has measure <= (2R)^{n-1} 2a/|k_i| <= 2n(2R)^{n-1}a/|k|_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:slab-coordinate, bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:slab-coordinate | blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L101-L101 | dominant coordinate bound
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L99-L99 | Fubini for Lebesgue measure
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:g3-n0
KIND: step
TITLE: The case $n=0$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-n0@L105-L107
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-n0@L105-L107
CONTRACT_ID: step:p4:g3-n0
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n=0 (hypotheses of G3)
SOURCE_QUANTIFIERS: Omega, alpha, tau
SOURCE_CONCLUSION: every omega is (alpha,tau)-Diophantine, the exceptional set is empty, any C works
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:diophantine#IsDiophantine
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p4-measure.tex#step:p4:g3-n0@L106-L106 | Diophantine condition is vacuous for k=0 only
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:g3-cube
KIND: step
TITLE: Bounding cube and constant
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-cube@L109-L112
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-cube@L109-L112
CONTRACT_ID: step:p4:g3-cube
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; Omega bounded; tau>n-1
SOURCE_QUANTIFIERS: R>0 with Omega in [-R,R]^n
SOURCE_CONCLUSION: C=2n(2R)^{n-1}S(n,tau) depends only on n,tau,R
CONSTANT_SCOPE: C depends only on n, tau, R
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:lattice-sum
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:lattice-sum | blueprint/parts/p4-measure.tex#step:p4:g3-cube@L111-L111 | S(n,tau) from the lattice sum
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:g3-union
KIND: step
TITLE: Union of slabs
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-union@L114-L120
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-union@L114-L120
CONTRACT_ID: step:p4:g3-union
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; alpha>0; Omega in [-R,R]^n
SOURCE_QUANTIFIERS: alpha>0
SOURCE_CONCLUSION: {omega in Omega not in Dio_{alpha,tau}} is contained in the union over k!=0 of {omega in [-R,R]^n : |k.omega|<alpha|k|_1^{-tau}}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:diophantine#IsDiophantine, step:p4:g3-cube
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p4-measure.tex#step:p4:g3-union@L115-L115 | negation of the Diophantine condition
EDGE: step:p4:g3-cube | blueprint/parts/p4-measure.tex#step:p4:g3-union@L110-L110 | bounding cube R
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:g3-sum
KIND: step
TITLE: Summation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-sum@L122-L127
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:g3-sum@L122-L127
CONTRACT_ID: step:p4:g3-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: slab inclusion of the union step; constant C of the cube step; Lemma slab; Lemma lattice-sum
SOURCE_QUANTIFIERS: alpha>0
SOURCE_CONCLUSION: meas{omega in Omega not in Dio_{alpha,tau}} <= sum_k 2n(2R)^{n-1} alpha |k|_1^{-tau-1} <= C alpha
CONSTANT_SCOPE: C as in the cube step
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:slab, bp:p4:lattice-sum, step:p4:g3-union, step:p4:g3-cube, bp:p1:ext-lebesgue
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:slab | blueprint/parts/p4-measure.tex#step:p4:g3-sum@L123-L123 | slab measure with a=alpha k-norm^-tau
EDGE: bp:p4:lattice-sum | blueprint/parts/p4-measure.tex#step:p4:g3-sum@L124-L124 | lattice sum bound
EDGE: step:p4:g3-union | blueprint/parts/p4-measure.tex#step:p4:g3-sum@L126-L126 | union inclusion
EDGE: step:p4:g3-cube | blueprint/parts/p4-measure.tex#step:p4:g3-sum@L126-L126 | constant C
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p4-measure.tex#step:p4:g3-sum@L123-L123 | monotonicity and countable subadditivity of outer measure
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:data
KIND: definition
TITLE: Shrunken domains and basic constants
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:data@L154-L163
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of HEAD of Section sec-data: the data of HEAD of Section sec-data (n>=2, tau>n-1, s0,r0>0, B open bounded nonempty, h holomorphic on B_{r0} and real at real points, witnesses L_h, C_B) and f, eps as in HEAD
SOURCE_QUANTIFIERS: L_h, C_B, s0, r0, B, h fixed; then s, delta_*, mu, D, D' defined; c(m,j) from Cauchy-open
SOURCE_CONCLUSION: defines L_+=max(L_h,1), C_B^+, s=min(s0,1), delta_*=min(s,r0)/4, mu=delta_*/2, D=T_{s/2} x B_{r0/2}, D'=T_{3s/4} x B_{3r0/4}, cbar=max{1,c(n,j),c(2n,j)}, and the unperturbed torus K^0_{I*}(theta)=(theta,iota I*)
CONSTANT_SCOPE: all constants depend only on n,tau,s0,r0,B,h,L_h,C_B
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-open
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-open | blueprint/parts/p4-measure.tex#bp:p4:data@L160-L160 | cbar uses the constants c(m,j) of Cauchy-open
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:h-bounded
KIND: lemma
TITLE: $h$ is bounded on a shrunken neighbourhood
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:h-bounded@L168-L170
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:h-bounded@L172-L181
CONTRACT_ID: bp:p4:h-bounded
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of HEAD
SOURCE_QUANTIFIERS: M_h
SOURCE_CONCLUSION: M_h:=sup{|h(I)| : I in B_{3r0/4}} is finite
CONSTANT_SCOPE: M_h depends only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:hbdd-compact, step:p4:hbdd-continuity
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:hbdd-compact | blueprint/parts/p4-measure.tex#bp:p4:h-bounded@L173-L173 | proof step of this result
EDGE: step:p4:hbdd-continuity | blueprint/parts/p4-measure.tex#bp:p4:h-bounded@L178-L178 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hbdd-compact
KIND: step
TITLE: A compact set between the neighbourhoods
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hbdd-compact@L173-L176
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hbdd-compact@L173-L176
CONTRACT_ID: step:p4:hbdd-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B bounded; h holomorphic on B_{r0}
SOURCE_QUANTIFIERS: Q:={I : infDist(I,iota B)<=3r0/4}
SOURCE_CONCLUSION: Q is compact and B_{3r0/4} subset Q subset B_{r0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hbdd-continuity
KIND: step
TITLE: Continuity
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hbdd-continuity@L178-L180
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hbdd-continuity@L178-L180
CONTRACT_ID: step:p4:hbdd-continuity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Q compact, Q subset B_{r0}, h holomorphic on B_{r0}
SOURCE_QUANTIFIERS: sup over Q
SOURCE_CONCLUSION: |h| is bounded on Q hence on B_{3r0/4}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:hbdd-compact
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:hbdd-compact | blueprint/parts/p4-measure.tex#step:p4:hbdd-continuity@L179-L179 | uses Q compact inside B_{r0}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:derivative-bounds
KIND: lemma
TITLE: Derivative bounds
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L183-L195
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L197-L223
CONTRACT_ID: bp:p4:derivative-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of HEAD; shrunken domains of Definition data; (d) additionally eps<=1
SOURCE_QUANTIFIERS: H_j=cbar M_h delta_*^{-j}, F_j=cbar delta_*^{-j} (j=1,2,3), M=cbar(M_h+1)delta_*^{-3}; z, I points
SOURCE_CONCLUSION: (a) polydiscs of radius delta_* around D lie in D' and around B_{r0/2} in B_{3r0/4}; (b) |D^j h|<=H_j on B_{r0/2}; (c) |D^j f|<=F_j eps on D, |X_f|<=F_1 eps, |DX_f|<=F_2 eps; (d) if eps<=1, |Dh~|,|X_h~|,|DX_h~|,|D^2 X_h~|<=M on D
CONSTANT_SCOPE: H_j,F_j,M depend only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:db-polydisc, step:p4:db-cauchy, step:p4:db-vectorfield, bp:p4:data, bp:p4:h-bounded
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:db-polydisc | blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L198-L198 | proof step of this result
EDGE: step:p4:db-cauchy | blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L204-L204 | proof step of this result
EDGE: step:p4:db-vectorfield | blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L210-L210 | proof step of this result
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L184-L184 | delta_*, D, D', cbar of Definition data
EDGE: bp:p4:h-bounded | blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L184-L184 | M_h in the constants
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:db-polydisc
KIND: step
TITLE: Polydiscs
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-polydisc@L198-L202
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-polydisc@L198-L202
CONTRACT_ID: step:p4:db-polydisc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: z in D, |w-z|<=delta_*
SOURCE_QUANTIFIERS: w, J in B
SOURCE_CONCLUSION: (a): polydiscs of radius delta_* around D lie in D' and those around B_{r0/2} lie in B_{3r0/4}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:db-polydisc@L200-L200 | delta_*, D, D' of Definition data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:db-cauchy
KIND: step
TITLE: Cauchy estimates
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L204-L208
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L204-L208
CONTRACT_ID: step:p4:db-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (a); |h|<=M_h on B_{3r0/4} (h-bounded); |f|<=eps on D'
SOURCE_QUANTIFIERS: j=1,2,3
SOURCE_CONCLUSION: (b), (c) for D^j f, and |D^j h~|<=cbar(M_h+eps)delta_*^{-j} on D
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:h-bounded, bp:p1:cauchy-open, step:p4:db-polydisc
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:h-bounded | blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L205-L205 |  h <=M_h on B_{3r0/4}
EDGE: bp:p1:cauchy-open | blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L206-L206 | Cauchy estimates on polydiscs
EDGE: step:p4:db-polydisc | blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L206-L206 | polydiscs of (a)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:db-vectorfield
KIND: step
TITLE: From $D\pfh$ to $X_\pfh$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L210-L222
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L210-L222
CONTRACT_ID: step:p4:db-vectorfield
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: holomorphic phi; Cauchy bounds of the previous step
SOURCE_QUANTIFIERS: phi=f and phi=h~
SOURCE_CONCLUSION: X_phi=J D phi with |X_phi|<=|D phi|, |DX_phi|<=|D^2 phi|, |D^2 X_phi|<=|D^3 phi|; completes (c) and gives (d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#hamiltonianVectorFieldC, step:p4:db-cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L211-L211 | frozen complex Hamiltonian vector field is J D phi
EDGE: step:p4:db-cauchy | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L219-L219 | Cauchy bounds on D^j f and D^j h~
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:freq-map
KIND: lemma
TITLE: The frequency map
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:freq-map@L225-L237
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:freq-map@L239-L272
CONTRACT_ID: bp:p4:freq-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of HEAD; derivative bounds H_1,H_2
SOURCE_QUANTIFIERS: U, g=frequencyMap h, I
SOURCE_CONCLUSION: (i) U open, contains closure of B; (ii) g(I)=grad h(iota I) real; (iii) g differentiable on U with Dg=nabla^2 h symmetric real; (iv) |g|<=H_1, |nabla^2 h|<=H_2 on iota I in B_{r0/2}; (v) g is Lambda_g-Lipschitz on B, Lambda_g=max(H_2,2H_1/delta_*), |g(B)|<=W_inf=H_1
CONSTANT_SCOPE: Lambda_g, W_inf depend only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:fm-domain, step:p4:fm-gradient, step:p4:fm-hessian, step:p4:fm-bounds, step:p4:fm-lipschitz, bp:p0:nearlyintegrable#frequencyMap
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:fm-domain | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L240-L240 | proof step of this result
EDGE: step:p4:fm-gradient | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L244-L244 | proof step of this result
EDGE: step:p4:fm-hessian | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L254-L254 | proof step of this result
EDGE: step:p4:fm-bounds | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L262-L262 | proof step of this result
EDGE: step:p4:fm-lipschitz | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L267-L267 | proof step of this result
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L226-L226 | g is the frozen frequencyMap h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:fm-domain
KIND: step
TITLE: The real domain
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-domain@L240-L242
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-domain@L240-L242
CONTRACT_ID: step:p4:fm-domain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B open; h holomorphic on B_{r0}
SOURCE_QUANTIFIERS: J in closure of B
SOURCE_CONCLUSION: (i)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:fm-gradient
KIND: step
TITLE: Guarded fact: the frozen frequency map is the gradient
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-gradient@L244-L252
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-gradient@L244-L252
CONTRACT_ID: step:p4:fm-gradient
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h holomorphic on B_{r0}, real at real points
SOURCE_QUANTIFIERS: J in U
SOURCE_CONCLUSION: (ii): the frozen g is the real gradient on U (guarded fact of totality)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:nearlyintegrable#frequencyMap
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p4-measure.tex#step:p4:fm-gradient@L250-L250 | the Re h composition in the definition of g
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:fm-hessian
KIND: step
TITLE: The Hessian
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-hessian@L254-L260
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-hessian@L254-L260
CONTRACT_ID: step:p4:fm-hessian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (ii); holomorphy of d_i h
SOURCE_QUANTIFIERS: I in U
SOURCE_CONCLUSION: (iii): g differentiable on U with real symmetric Hessian
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, step:p4:fm-gradient
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:fm-hessian@L255-L255 | d_i h holomorphic and symmetry of mixed derivatives
EDGE: step:p4:fm-gradient | blueprint/parts/p4-measure.tex#step:p4:fm-hessian@L257-L257 | gradient argument and reality (ii)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:fm-bounds
KIND: step
TITLE: Bounds
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-bounds@L262-L265
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-bounds@L262-L265
CONTRACT_ID: step:p4:fm-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (iii); derivative bounds (b)
SOURCE_QUANTIFIERS: I with iota I in B_{r0/2}
SOURCE_CONCLUSION: (iv)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:derivative-bounds, step:p4:fm-gradient
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:fm-bounds@L265-L265 | bounds (b)
EDGE: step:p4:fm-gradient | blueprint/parts/p4-measure.tex#step:p4:fm-bounds@L263-L263 | g(I)=Dh(iota I)e_i
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:fm-lipschitz
KIND: step
TITLE: Lipschitz bound on $B$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-lipschitz@L267-L271
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:fm-lipschitz@L267-L271
CONTRACT_ID: step:p4:fm-lipschitz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (iii),(iv); I,J in B
SOURCE_QUANTIFIERS: I,J in B
SOURCE_CONCLUSION: (v): Lipschitz bound with Lambda_g, and boundedness of g(B) by W_inf
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:fm-bounds, step:p4:fm-hessian, bp:p1:ext-mvt, bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:fm-bounds | blueprint/parts/p4-measure.tex#step:p4:fm-lipschitz@L269-L269 | uses (iv)
EDGE: step:p4:fm-hessian | blueprint/parts/p4-measure.tex#step:p4:fm-lipschitz@L269-L269 | differentiability (iii) for the mean value inequality
EDGE: bp:p1:ext-mvt | blueprint/parts/p4-measure.tex#step:p4:fm-lipschitz@L269-L269 | mean value inequality
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:fm-lipschitz@L268-L268 | delta_* of Definition data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:hessian-inverse
KIND: lemma
TITLE: Kolmogorov nondegeneracy at a point
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:hessian-inverse@L274-L278
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:hessian-inverse@L280-L292
CONTRACT_ID: bp:p4:hessian-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of HEAD incl. nondegeneracy witness L_h; L_+=max(L_h,1)
SOURCE_QUANTIFIERS: I in B, v in R^n
SOURCE_CONCLUSION: |v|<=L_+|nabla^2 h(iota I)v|; nabla^2 h(iota I) invertible with real inverse, |nabla^2 h(iota I)^{-1}|<=L_+ in the row-sum norm, also as a complex matrix
CONSTANT_SCOPE: L_+ depends only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:hess-quotient, step:p4:hess-norm
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:hess-quotient | blueprint/parts/p4-measure.tex#bp:p4:hessian-inverse@L281-L281 | proof step of this result
EDGE: step:p4:hess-norm | blueprint/parts/p4-measure.tex#bp:p4:hessian-inverse@L287-L287 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hess-quotient
KIND: step
TITLE: Difference quotients
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hess-quotient@L281-L285
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hess-quotient@L281-L285
CONTRACT_ID: step:p4:hess-quotient
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: nondegeneracy hypothesis of HEAD with L_h<=L_+; B open
SOURCE_QUANTIFIERS: I in B, v, small t>0
SOURCE_CONCLUSION: |v|<=L_+|nabla^2 h(iota I)v|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:freq-map, bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#step:p4:hess-quotient@L285-L285 | Dg=nabla^2 h by freq-map(iii)
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:hess-quotient@L282-L282 | L_+ of Definition data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hess-norm
KIND: step
TITLE: Inverse and its norm
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hess-norm@L287-L291
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hess-norm@L287-L291
CONTRACT_ID: step:p4:hess-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |v|<=L_+|Av| for a real square A
SOURCE_QUANTIFIERS: A=nabla^2 h(iota I)
SOURCE_CONCLUSION: A invertible, |A^{-1}|<=L_+ in the row-sum norm, also as complex operator norm
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:hess-quotient
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:hess-quotient | blueprint/parts/p4-measure.tex#step:p4:hess-norm@L288-L288 | the inequality  v <=L_+ Av  for A=nabla^2 h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:inverse-freq
KIND: lemma
TITLE: The inverse frequency map
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:inverse-freq@L294-L300
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:inverse-freq@L302-L307
CONTRACT_ID: bp:p4:inverse-freq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of HEAD; Omega=g(B)
SOURCE_QUANTIFIERS: omega in Omega
SOURCE_CONCLUSION: g injective on closure of B with L_+-Lipschitz inverse; I_omega unique in B with g(I_omega)=omega, |I_omega-I_omega'|<=L_+|omega-omega'|, |omega|<=W_inf
CONSTANT_SCOPE: L_+, W_inf depend only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:invfreq-proof
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:invfreq-proof | blueprint/parts/p4-measure.tex#bp:p4:inverse-freq@L303-L303 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:invfreq-proof
KIND: step
TITLE: Inverse Lipschitz bound
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:invfreq-proof@L303-L306
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:invfreq-proof@L303-L306
CONTRACT_ID: step:p4:invfreq-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |I-J|<=L_+|g(I)-g(J)| on closure of B; (v)
SOURCE_QUANTIFIERS: omega,omega' in Omega
SOURCE_CONCLUSION: injectivity, Lipschitz inverse, |omega|<=W_inf
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:hess-quotient, bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:hess-quotient | blueprint/parts/p4-measure.tex#step:p4:invfreq-proof@L305-L305 | inequality on closure of B
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#step:p4:invfreq-proof@L306-L306 | norm omega bounded by W_inf by (v)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:h1
KIND: lemma
TITLE: The Hamiltonian hypothesis H1
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:h1@L309-L313
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:h1@L315-L331
CONTRACT_ID: bp:p4:h1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: eps<=1; the data of HEAD; D and h~=h+f
SOURCE_QUANTIFIERS: (D,h~)
SOURCE_CONCLUSION: D and h~ satisfy the H1 block of G1 and G2 (D open, Z^n-invariant in theta; h~ holomorphic, periodic, real; four derivative bounds by M) with M of derivative-bounds
CONSTANT_SCOPE: M depends only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:h1-open, step:p4:h1-holo, step:p4:h1-bounds, bp:p4:derivative-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:h1-open | blueprint/parts/p4-measure.tex#bp:p4:h1@L316-L316 | proof step of this result
EDGE: step:p4:h1-holo | blueprint/parts/p4-measure.tex#bp:p4:h1@L321-L321 | proof step of this result
EDGE: step:p4:h1-bounds | blueprint/parts/p4-measure.tex#bp:p4:h1@L329-L329 | proof step of this result
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#bp:p4:h1@L312-L312 | the constant M
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Candidate edges to G1/G2 dropped: the statement only names the H1 block being verified, it does not consume their conclusions.

NODE: step:p4:h1-open
KIND: step
TITLE: Openness and invariance
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-open@L316-L319
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-open@L316-L319
CONTRACT_ID: step:p4:h1-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D=T_{s/2} x B_{r0/2}
SOURCE_QUANTIFIERS: k in Z^n
SOURCE_CONCLUSION: D open and Z^n-invariant in theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:h1-open@L317-L317 | D of Definition data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:h1-holo
KIND: step
TITLE: Holomorphy, periodicity, reality
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-holo@L321-L327
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-holo@L321-L327
CONTRACT_ID: step:p4:h1-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h holomorphic on B_{r0}, real at real points; f holomorphic, 1-periodic, real on D(s0,r0)
SOURCE_QUANTIFIERS: z in D, k in Z^n
SOURCE_CONCLUSION: h~ holomorphic on D, periodic in theta, real at real points of D
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:h1-holo@L322-L322 | D and h~ of Definition data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:h1-bounds
KIND: step
TITLE: Derivative bounds
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-bounds@L329-L330
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-bounds@L329-L330
CONTRACT_ID: step:p4:h1-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: eps<=1
SOURCE_QUANTIFIERS: on D
SOURCE_CONCLUSION: |Dh~|,|X_h~|,|DX_h~|,|D^2X_h~|<=M
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:derivative-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:h1-bounds@L330-L330 | part (d)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:unperturbed
KIND: lemma
TITLE: Geometry of the unperturbed torus
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L341-L361
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L363-L404
CONTRACT_ID: bp:p4:unperturbed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: eps<=1; I_* in B, omega in R^n; K^0=K^0_{I_*}; for (e) L_+F_2 eps<=1/2; for (f) omega=g(I_*)
SOURCE_QUANTIFIERS: I_*, omega, theta
SOURCE_CONCLUSION: (a) K^0 holomorphic, primary on strips, real on reals, DK^0=L^0, |L^0|=1; (b) G=Id, det unit, |G^{-1}|=1; (c) N^0 constant, DN^0[omega]=0; (d) T^0=nabla^2 h+d_I^2 f continuous, avg T^0 formula; (e) avg T^0 invertible with |avg T^0 ^{-1}|<=2L_+; (f) E^0=X_f(theta,iota I_*), |E^0|<=F_1 eps; (g) ball of radius delta_* around K^0(theta), theta in T_{s/4}, lies in D
CONSTANT_SCOPE: none (constants of derivative-bounds and data)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:unp-frame, step:p4:unp-normal, step:p4:unp-torsion, step:p4:unp-twist, step:p4:unp-error, step:p4:unp-ball, bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:unp-frame | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L364-L364 | proof step of this result
EDGE: step:p4:unp-normal | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L371-L371 | proof step of this result
EDGE: step:p4:unp-torsion | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L376-L376 | proof step of this result
EDGE: step:p4:unp-twist | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L386-L386 | proof step of this result
EDGE: step:p4:unp-error | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L393-L393 | proof step of this result
EDGE: step:p4:unp-ball | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L400-L400 | proof step of this result
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#bp:p4:unperturbed@L342-L342 | K^0_{I_*} of Definition data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:unp-frame
KIND: step
TITLE: Frame and Gram matrix
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-frame@L364-L369
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-frame@L364-L369
CONTRACT_ID: step:p4:unp-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K^0 affine
SOURCE_QUANTIFIERS: theta, v
SOURCE_CONCLUSION: (a) and (b): DK^0=L^0, |L^0|=1, G=Id, det 1, G^{-1}=Id
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:data, bp:p0:stripdata#gramMatrix, bp:p0:stripdata#dotC, bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:unp-frame@L365-L365 | K^0_{I_*} of Definition data
EDGE: bp:p0:stripdata#gramMatrix | blueprint/parts/p4-measure.tex#step:p4:unp-frame@L367-L367 | frozen Gram matrix
EDGE: bp:p0:stripdata#dotC | blueprint/parts/p4-measure.tex#step:p4:unp-frame@L367-L367 | bilinear dot product
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p4-measure.tex#step:p4:unp-frame@L365-L365 | primarity K^0(theta+k)=K^0(theta)+(k,0)
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p4-measure.tex#step:p4:unp-frame@L366-L366 | reality of K^0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:unp-normal
KIND: step
TITLE: Normal frame
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-normal@L371-L374
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-normal@L371-L374
CONTRACT_ID: step:p4:unp-normal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: G=Id
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: N^0(theta)e_j=(0,e_j), constant, DN^0[omega]=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:stripdata#normalFrame, bp:p0:hamiltonian#omegaZero, step:p4:unp-frame
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:stripdata#normalFrame | blueprint/parts/p4-measure.tex#step:p4:unp-normal@L372-L372 | frozen normal frame
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p4-measure.tex#step:p4:unp-normal@L372-L372 | Omega_0(a,b)=(-b,a)
EDGE: step:p4:unp-frame | blueprint/parts/p4-measure.tex#step:p4:unp-normal@L372-L372 | G^{-1}=Id
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:unp-torsion
KIND: step
TITLE: Torsion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L376-L384
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L376-L384
CONTRACT_ID: step:p4:unp-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: z=(theta,iota I_*) in D; N^0 constant
SOURCE_QUANTIFIERS: theta in T_{s/2}
SOURCE_CONCLUSION: (d): T^0=d_I^2 h~, omega does not enter, T^0 continuous, avg T^0=nabla^2 h+avg of d_I^2 f
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:db-vectorfield, step:p4:unp-normal, bp:p0:stripdata#torsion, bp:p0:stripdata#dotC, bp:p0:hamiltonian#omegaZero, bp:p0:stripdata#torsionAverage
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:db-vectorfield | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L377-L377 | DX_h~ via D^2 h~
EDGE: step:p4:unp-normal | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L381-L381 | derivative term vanishes
EDGE: bp:p0:stripdata#torsion | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L379-L379 | frozen torsion
EDGE: bp:p0:stripdata#dotC | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L380-L380 | dot product in torsion
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L380-L380 | Omega_0
EDGE: bp:p0:stripdata#torsionAverage | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L383-L383 | frozen torsionAverage
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:unp-twist
KIND: step
TITLE: Twist
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-twist@L386-L391
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-twist@L386-L391
CONTRACT_ID: step:p4:unp-twist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (d); L_+F_2 eps<=1/2
SOURCE_QUANTIFIERS: row sums
SOURCE_CONCLUSION: (e): avg T^0 invertible with inverse norm <=2L_+
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:derivative-bounds, bp:p1:ext-integral, bp:p4:hessian-inverse, bp:p1:neumann, step:p4:unp-torsion
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:unp-twist@L387-L387 |  D^2 f <=F_2 eps by (c)
EDGE: bp:p1:ext-integral | blueprint/parts/p4-measure.tex#step:p4:unp-twist@L388-L388 | integral bounded by sup
EDGE: bp:p4:hessian-inverse | blueprint/parts/p4-measure.tex#step:p4:unp-twist@L390-L390 |  A^{-1} <=L_+
EDGE: bp:p1:neumann | blueprint/parts/p4-measure.tex#step:p4:unp-twist@L391-L391 | Neumann series for A+Delta
EDGE: step:p4:unp-torsion | blueprint/parts/p4-measure.tex#step:p4:unp-twist@L389-L389 | avg T^0 = A + Delta
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:unp-error
KIND: step
TITLE: Invariance error
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-error@L393-L398
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-error@L393-L398
CONTRACT_ID: step:p4:unp-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega=g(I_*)
SOURCE_QUANTIFIERS: z
SOURCE_CONCLUSION: (f): E^0=X_f, |E^0|<=F_1 eps
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:freq-map, bp:p4:derivative-bounds, bp:p0:stripdata#invarianceError, step:p4:db-vectorfield
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#step:p4:unp-error@L395-L395 | grad h(iota I_*)=g(I_*)=omega by (ii)
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:unp-error@L398-L398 |  X_f <=F_1 eps by (c)
EDGE: bp:p0:stripdata#invarianceError | blueprint/parts/p4-measure.tex#step:p4:unp-error@L396-L396 | frozen invariance error
EDGE: step:p4:db-vectorfield | blueprint/parts/p4-measure.tex#step:p4:unp-error@L394-L394 | X_h~ computation
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:unp-ball
KIND: step
TITLE: Neighbourhood
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-ball@L400-L403
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:unp-ball@L400-L403
CONTRACT_ID: step:p4:unp-ball
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: theta in T_{s/4}, I_* in B
SOURCE_QUANTIFIERS: (theta',I')
SOURCE_CONCLUSION: (g)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:unp-ball@L401-L401 | delta_*, D of Definition data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:parameters
KIND: definition
TITLE: Parameters of the applications of G1 and G2
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:parameters@L406-L436
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:parameters
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of HEAD; frozen G1 and G2 with their side conditions
SOURCE_QUANTIFIERS: tuples for G1 (two) and G2 (one); constants C_1^(i),C_2^(i),c_G from G1,G2
SOURCE_CONCLUSION: defines sigma_K=sigma_B=2+mu, sigma_T=4L_++mu, gammabar=1, A_0..A_4, lambda_*, c_T, eta_*(delta), c_*=min of eight numbers; all depend only on the data
CONSTANT_SCOPE: C_1^(i),C_2^(i) are the constants of G1 for the stated tuple, c_G of G2; all derived constants depend only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:g1, bp:p0:g2, bp:p4:data, bp:p4:derivative-bounds, bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g1 | blueprint/parts/p4-measure.tex#bp:p4:parameters@L411-L411 | G1 tuples and constants C_1,C_2
EDGE: bp:p0:g2 | blueprint/parts/p4-measure.tex#bp:p4:parameters@L414-L414 | G2 tuple and constant c_G
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#bp:p4:parameters@L409-L409 | mu, s, L_+, delta_*
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#bp:p4:parameters@L419-L419 | H_3,F_1,F_2,M
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#bp:p4:parameters@L425-L425 | W_inf, Lambda_g
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:smallness
KIND: lemma
TITLE: Smallness consequences
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:smallness@L445-L456
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:smallness@L458-L466
CONTRACT_ID: bp:p4:smallness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA): 0<gamma<=1 and 0<=eps<=c_* gamma^4
SOURCE_QUANTIFIERS: gamma, eps
SOURCE_CONCLUSION: (s1)-(s7): eps<=1, L_+F_2 eps<=1/2; the G1 smallness quantities (s2),(s4); eta_0<=eta_*(s/32), eta_0<=mu, 16n eta_0/s<=1/2; (s5); (s6); eta_0<=gamma^2/2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:small-proof
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:small-proof | blueprint/parts/p4-measure.tex#bp:p4:smallness@L459-L459 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:small-proof
KIND: step
TITLE: Reduction to $c_*$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:small-proof@L459-L465
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:small-proof@L459-L465
CONTRACT_ID: step:p4:small-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); definition of c_* as a minimum
SOURCE_QUANTIFIERS: gamma,eps
SOURCE_CONCLUSION: each of (s1)-(s7) is an entry of the minimum defining c_*
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:small-proof@L460-L460 | entries of c_*, eta_*, c_T
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:apply
KIND: theorem
TITLE: APPLY: a torus for every Diophantine frequency
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:apply@L468-L474
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:apply@L476-L496
CONTRACT_ID: bp:p4:apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of HEAD; (SA); omega in Omega_gamma=g(B) cap Dio_{gamma,tau}
SOURCE_QUANTIFIERS: omega
SOURCE_CONCLUSION: exists K^inf_omega holomorphic and primary on T_{s/8}, real on reals, invariant with frequency omega, B_{mu/2}(K)subset D, |DK|<=sigma_K-mu/2, |K-K^0_omega|<=eta_0/2 on T_{s/8}
CONSTANT_SCOPE: K^inf depends on omega,eps,gamma; constants depend only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:apply-g1, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:apply-g1 | blueprint/parts/p4-measure.tex#bp:p4:apply@L477-L477 | proof step of this result
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:apply@L469-L469 | SA, Omega_gamma, sigma_K, mu
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:apply-g1
KIND: step
TITLE: Application of G1 at the unperturbed torus
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:apply-g1@L477-L495
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:apply-g1@L477-L495
CONTRACT_ID: step:p4:apply-g1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H1-H5 and error hypotheses of G1 checked at K^0_omega with e=F_1 eps; (SA); omega in Omega_gamma
SOURCE_QUANTIFIERS: first G1 tuple, D, h~, K=K^0_omega
SOURCE_CONCLUSION: K^inf_omega with all stated properties on T_{s/8} and |K^inf-K^0|<=eta_0/2
CONSTANT_SCOPE: constants C_1^(1),C_2^(1) from G1
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:g1, bp:p4:parameters, bp:p4:h1, bp:p4:unperturbed, bp:p4:smallness, bp:p4:inverse-freq, bp:p0:diophantine#IsDiophantine
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g1 | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L478-L478 | G1 applied
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L478-L478 | tuple and constants
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L483-L483 | H1
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L485-L485 | H2,H3,H4 and error from unperturbed
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L483-L483 | (s1),(s2)
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L488-L488 | I_omega in B, g(I_omega)=omega
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L489-L489 | omega in Dio_{gamma,tau} (H5)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:matrix-norms
KIND: corollary
TITLE: Matrix norms
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L518-L533
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L535-L544
CONTRACT_ID: bp:p4:matrix-norms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A in C^{p x q}; continuous A on [0,1]^n; L^0,N^0 of unperturbed
SOURCE_QUANTIFIERS: A, p, q, x, y
SOURCE_CONCLUSION: (i) row-sum norm is the operator norm, submultiplicative; (ii) |A^T|<=p|A|; (iii) |Omega_0|=|L^0|=|L^0T|=|N^0|=|N^0T|=1; (iv) dotC(x,Omega_0 y)=x^T Omega_0 y, Omega_0^T Omega_0=Id, Omega_0^2=-Id, symplecticForm(x,y)=(iota x)^T Omega_0 (iota y); (v) |int A|<=sup|A|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:mn-rowsum, bp:p4:unperturbed, bp:p0:stripdata#dotC, bp:p0:hamiltonian#symplecticForm, bp:p0:hamiltonian#omegaZero
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:mn-rowsum | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L536-L536 | proof step of this result
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L526-L526 | L^0,N^0
EDGE: bp:p0:stripdata#dotC | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L528-L528 | bilinear dot product
EDGE: bp:p0:hamiltonian#symplecticForm | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L530-L530 | symplecticForm
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p4-measure.tex#bp:p4:matrix-norms@L525-L525 | Omega_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mn-rowsum
KIND: step
TITLE: Row sums
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L536-L543
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L536-L543
CONTRACT_ID: step:p4:mn-rowsum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Part 1 norm lemmas
SOURCE_QUANTIFIERS: A, p, q
SOURCE_CONCLUSION: (i)-(v)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#symplecticForm, bp:p0:hamiltonian#omegaZero, bp:p4:unperturbed
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:hamiltonian#symplecticForm | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L541-L541 | frozen formula of symplecticForm
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L541-L541 | Omega_0
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L539-L539 | rows of L^0,N^0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:torsion-regular
KIND: lemma
TITLE: Guarded facts for the frame and the torsion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L546-L561
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L563-L581
CONTRACT_ID: bp:p4:torsion-regular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: rho>0; K holomorphic on T_rho, K(T_rho) in D, det G_K != 0; omega in R^n
SOURCE_QUANTIFIERS: rho, K, omega
SOURCE_CONCLUSION: (a) Lean G_K^{-1} is the inverse, holomorphic with derivative formula; (b) N=Omega_0 L G^{-1} holomorphic and the derivative term of the frozen torsion is d_omega N; (c) T=N^T Omega_0 X_N holomorphic, avg T an integral of a continuous function; (d) if K primary, u,v,L,G,N,T are Z^n-periodic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:tr-inverse, step:p4:tr-torsion, step:p4:tr-periodic, bp:p4:data, bp:p0:stripdata#gramMatrix, bp:p0:stripdata#normalFrame, bp:p0:stripdata#torsion, bp:p0:stripdata#torsionAverage, bp:p0:stripdata#IsPrimaryOnStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:tr-inverse | blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L564-L564 | proof step of this result
EDGE: step:p4:tr-torsion | blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L570-L570 | proof step of this result
EDGE: step:p4:tr-periodic | blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L576-L576 | proof step of this result
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L547-L547 | D of Definition data
EDGE: bp:p0:stripdata#gramMatrix | blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L548-L548 | G_K
EDGE: bp:p0:stripdata#normalFrame | blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L554-L554 | N
EDGE: bp:p0:stripdata#torsion | blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L555-L555 | frozen torsion
EDGE: bp:p0:stripdata#torsionAverage | blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L557-L557 | avg T
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p4-measure.tex#bp:p4:torsion-regular@L558-L558 | primary K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:tr-inverse
KIND: step
TITLE: Inverse
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L564-L568
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L564-L568
CONTRACT_ID: step:p4:tr-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic on T_rho, det G!=0
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: (a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:stripdata#gramMatrix
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:stripdata#gramMatrix | blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L566-L566 | frozen Gram matrix and Lean inverse
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:tr-torsion
KIND: step
TITLE: Frame and torsion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L570-L574
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L570-L574
CONTRACT_ID: step:p4:tr-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (a)
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: (b),(c)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:tr-inverse, bp:p0:stripdata#normalFrame, bp:p0:stripdata#torsion, bp:p4:h1
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:tr-inverse | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L571-L571 | N holomorphic by (a)
EDGE: bp:p0:stripdata#normalFrame | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L571-L571 | frozen normal frame
EDGE: bp:p0:stripdata#torsion | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L571-L571 | frozen torsion
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L572-L572 | X_h~ holomorphic on D
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:tr-periodic
KIND: step
TITLE: Periodicity
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L576-L580
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L576-L580
CONTRACT_ID: step:p4:tr-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K primary on T_rho
SOURCE_QUANTIFIERS: k in Z^n
SOURCE_CONCLUSION: (d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:stripdata#IsPrimaryOnStrip
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L577-L577 | K(theta+k)=K(theta)+(k,0)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:stab
KIND: theorem
TITLE: STAB
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:stab@L583-L601
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:stab@L603-L665
CONTRACT_ID: bp:p4:stab
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: eps<=1, L_+F_2 eps<=1/2; I_* in B; |omega|<=W_inf; 0<delta<rho<=s/4; K holomorphic on T_rho with |K-K^0_{I_*}|<=eta on T_rho, eta<=eta_*(delta)
SOURCE_QUANTIFIERS: I_*, omega, delta, rho, K, eta
SOURCE_CONCLUSION: on T_{rho-delta}: (a) |DK-L^0|<=n eta/delta, |DK|<=2; (b) B_mu(K) in D; (c) det G_K!=0, |G_K^{-1}|<=2; (d) |T-T^0|<=c_T eta delta^{-2}, avg T invertible with |avg T^{-1}|<=4L_+; if K primary and real on reals, K satisfies H2-H4 of G1 relative to (D,h~) with sigma_K,sigma_B,sigma_T,mu of parameters
CONSTANT_SCOPE: c_T and eta_* are those of parameters (depend only on the data); eta,delta,rho free
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:stab-small, step:p4:stab-cauchy, step:p4:stab-ball, step:p4:stab-gram, step:p4:stab-frame, step:p4:stab-xn, step:p4:stab-torsion, step:p4:stab-twist, step:p4:stab-h2h4, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:stab-small | blueprint/parts/p4-measure.tex#bp:p4:stab@L604-L604 | proof step of this result
EDGE: step:p4:stab-cauchy | blueprint/parts/p4-measure.tex#bp:p4:stab@L610-L610 | proof step of this result
EDGE: step:p4:stab-ball | blueprint/parts/p4-measure.tex#bp:p4:stab@L619-L619 | proof step of this result
EDGE: step:p4:stab-gram | blueprint/parts/p4-measure.tex#bp:p4:stab@L624-L624 | proof step of this result
EDGE: step:p4:stab-frame | blueprint/parts/p4-measure.tex#bp:p4:stab@L631-L631 | proof step of this result
EDGE: step:p4:stab-xn | blueprint/parts/p4-measure.tex#bp:p4:stab@L638-L638 | proof step of this result
EDGE: step:p4:stab-torsion | blueprint/parts/p4-measure.tex#bp:p4:stab@L649-L649 | proof step of this result
EDGE: step:p4:stab-twist | blueprint/parts/p4-measure.tex#bp:p4:stab@L654-L654 | proof step of this result
EDGE: step:p4:stab-h2h4 | blueprint/parts/p4-measure.tex#bp:p4:stab@L661-L661 | proof step of this result
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:stab@L587-L587 | eta_*, c_T, sigma_K,sigma_B,sigma_T,mu
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-small
KIND: step
TITLE: Smallness bookkeeping
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-small@L604-L608
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-small@L604-L608
CONTRACT_ID: step:p4:stab-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: eta<=eta_*(delta) with c_T>=304n^3, L_+>=1, delta<s/4<=1
SOURCE_QUANTIFIERS: Delta=K-K^0, a=n eta/delta, b=4n^2W_inf eta delta^{-2}
SOURCE_CONCLUSION: 12 n a<=1 and c_T eta delta^{-2}<=1/16
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:stab-small@L606-L606 | c_T>=304n^3, eta_*
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-cauchy
KIND: step
TITLE: Cauchy estimates
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-cauchy@L610-L617
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-cauchy@L610-L617
CONTRACT_ID: step:p4:stab-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic on T_rho, |Delta|<=eta
SOURCE_QUANTIFIERS: Delta
SOURCE_CONCLUSION: |D Delta|<=a on T_{rho-delta}; |d_m d_l Delta|<=4eta/delta^2; |d_omega L|<=b; |L|<=2; this is (a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip, bp:p1:holomorphic-regularity, step:p4:stab-small, bp:p4:unperturbed
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p4-measure.tex#step:p4:stab-cauchy@L611-L611 | Cauchy estimate on strips
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:stab-cauchy@L613-L613 | d_l Delta holomorphic
EDGE: step:p4:stab-small | blueprint/parts/p4-measure.tex#step:p4:stab-cauchy@L611-L611 | a, b bookkeeping
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-cauchy@L617-L617 |  L^0 =1 and D^2K^0=0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-ball
KIND: step
TITLE: Neighbourhood
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-ball@L619-L622
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-ball@L619-L622
CONTRACT_ID: step:p4:stab-ball
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |K-K^0|<=eta<=mu
SOURCE_QUANTIFIERS: theta in T_{rho-delta}
SOURCE_CONCLUSION: (b): B_mu(K(theta)) in D and K(T_{rho-delta}) in D
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:unperturbed, bp:p4:parameters, bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-ball@L621-L621 | (g): ball around K^0 lies in D
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:stab-ball@L620-L620 | eta<=eta_*(delta)<=mu
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:stab-ball@L621-L621 | 2mu=delta_*
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-gram
KIND: step
TITLE: Gram matrix
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-gram@L624-L629
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-gram@L624-L629
CONTRACT_ID: step:p4:stab-gram
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: L=L^0+D Delta, |D Delta|<=a, 12na<=1
SOURCE_QUANTIFIERS: theta in T_{rho-delta}
SOURCE_CONCLUSION: (c): |G_K-Id|<=5na<=1/2, G_K invertible, |G^{-1}|<=2, |G^{-1}-Id|<=10na; torsion-regular applies on T_{rho-delta}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:matrix-norms, bp:p1:neumann, bp:p4:torsion-regular, step:p4:stab-cauchy, bp:p4:unperturbed, step:p4:stab-small
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L625-L625 | transpose and L^0 norms
EDGE: bp:p1:neumann | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L627-L627 | Neumann series with A=Id
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L629-L629 | applies once det G_K!=0
EDGE: step:p4:stab-cauchy | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L625-L625 | a and  L <=2
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L626-L626 | G_{K^0}=Id, L^0
EDGE: step:p4:stab-small | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L626-L626 | 5na<=1/2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-frame
KIND: step
TITLE: Normal frame
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-frame@L631-L636
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-frame@L631-L636
CONTRACT_ID: step:p4:stab-frame
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (c); a,b; |L|<=2
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: |N-N^0|<=12na, |N|<=2, |d_omega G|<=8nb, |d_omega G^{-1}|<=32nb, |d_omega N|<=66nb
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:torsion-regular, step:p4:stab-gram, step:p4:stab-cauchy, bp:p4:matrix-norms, bp:p4:unperturbed
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L633-L633 | derivative formula (a) for G^{-1}
EDGE: step:p4:stab-gram | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L632 | bounds on G^{-1}
EDGE: step:p4:stab-cauchy | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L632 |  L-L^0 <=a,  d_omega L <=b
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L632 |  Omega_0 =1, transpose norms
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L632 | N^0,L^0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-xn
KIND: step
TITLE: The vector $X_N$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-xn@L638-L647
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-xn@L638-L647
CONTRACT_ID: step:p4:stab-xn
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K(T_{rho-delta}) in D; frame bounds
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: |X_N-X_N^0|<=c_T eta delta^{-2}, |X_N|<=M+1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:h1, bp:p1:increments-open, bp:p4:unperturbed, step:p4:stab-frame, bp:p4:parameters, step:p4:stab-small
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:stab-xn@L640-L640 |  D^2 X_h~ <=M on D
EDGE: bp:p1:increments-open | blueprint/parts/p4-measure.tex#step:p4:stab-xn@L641-L641 | increment estimate on the ball
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-xn@L643-L643 | (g) ball in D; (c) torsion vector of K^0
EDGE: step:p4:stab-frame | blueprint/parts/p4-measure.tex#step:p4:stab-xn@L645-L645 |  N ,  N-N^0 ,  d_omega N 
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:stab-xn@L645-L645 | c_T
EDGE: step:p4:stab-small | blueprint/parts/p4-measure.tex#step:p4:stab-xn@L645-L645 | delta<=1, c_T eta delta^{-2}<=1/16
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-torsion
KIND: step
TITLE: Torsion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L649-L652
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L649-L652
CONTRACT_ID: step:p4:stab-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: T=N^T Omega_0 X_N; frame and X_N bounds
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: (d) first part: |T-T^0|<=c_T eta delta^{-2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:matrix-norms, step:p4:stab-frame, step:p4:stab-xn, bp:p4:torsion-regular, bp:p4:unperturbed
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L651-L651 | norm calculus
EDGE: step:p4:stab-frame | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L650-L650 |  N-N^0 
EDGE: step:p4:stab-xn | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L650-L650 |  X_N-X_N^0 ,  X_N <=M+1
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L650-L650 | T=N^T Omega_0 X_N
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L650-L650 | T^0 from N^0, X_N^0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-twist
KIND: step
TITLE: Twist
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-twist@L654-L659
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-twist@L654-L659
CONTRACT_ID: step:p4:stab-twist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: torsion bound; (e) of unperturbed
SOURCE_QUANTIFIERS: avg over unit cube
SOURCE_CONCLUSION: (d) second part: |avg T - avg T^0|<=c_T eta delta^{-2}; avg T invertible with |avg T^{-1}|<=4L_+
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:torsion-regular, bp:p4:unperturbed, bp:p4:matrix-norms, bp:p1:neumann, step:p4:stab-torsion, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-twist@L655-L655 | avg T integral of continuous function
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-twist@L655-L655 | avg T^0 integral;  avg T0^{-1} <=2L_+
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-twist@L656-L656 |  int A <=sup A 
EDGE: bp:p1:neumann | blueprint/parts/p4-measure.tex#step:p4:stab-twist@L658-L658 | Neumann series
EDGE: step:p4:stab-torsion | blueprint/parts/p4-measure.tex#step:p4:stab-twist@L657-L657 |  T-T^0  bound
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:stab-twist@L658-L658 | 2L_+ c_T eta delta^{-2}<=1/8 from eta<=eta_*
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:stab-h2h4
KIND: step
TITLE: The hypotheses H2--H4
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-h2h4@L661-L664
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:stab-h2h4@L661-L664
CONTRACT_ID: step:p4:stab-h2h4
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K primary and real on reals; (a)-(d)
SOURCE_QUANTIFIERS: theta in T_{rho-delta}
SOURCE_CONCLUSION: H2,H3,H4 of G1 on T_{rho-delta} with sigma_K,sigma_B,sigma_T,mu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:stab-cauchy, step:p4:stab-ball, step:p4:stab-gram, step:p4:stab-twist, bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:stab-cauchy | blueprint/parts/p4-measure.tex#step:p4:stab-h2h4@L663-L663 | (a)
EDGE: step:p4:stab-ball | blueprint/parts/p4-measure.tex#step:p4:stab-h2h4@L663-L663 | (b)
EDGE: step:p4:stab-gram | blueprint/parts/p4-measure.tex#step:p4:stab-h2h4@L663-L663 | (c)
EDGE: step:p4:stab-twist | blueprint/parts/p4-measure.tex#step:p4:stab-h2h4@L664-L664 | (d)
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p4-measure.tex#step:p4:stab-h2h4@L662-L662 | primarity restricts
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p4-measure.tex#step:p4:stab-h2h4@L662-L662 | reality restricts
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:phase-average
KIND: definition
TITLE: Angle displacement and phase average
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:phase-average@L677-L684
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:phase-average
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic on T_rho, primary on T_rho, real on reals
SOURCE_QUANTIFIERS: rho>0; K; (then a in R^n for K^[a])
SOURCE_CONCLUSION: defines u_K(theta)=K_1(theta)-theta, ph(K)=int_[0,1]^n Re u_K(ix)dx in R^n, K normalized iff ph(K)=0, K^[a](theta)=K(theta+i a)
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
NOTE: -

NODE: bp:p4:shift
KIND: lemma
TITLE: Phase shifts
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:shift@L686-L701
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:shift@L703-L718
CONTRACT_ID: bp:p4:shift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic and primary on T_rho, real on reals; a,omega in R^n; (e) I_* in R^n
SOURCE_QUANTIFIERS: K,rho; a,omega in R^n; I_* in R^n
SOURCE_CONCLUSION: (a) K^[a] holomorphic, primary, real on reals, DK^[a](theta)=DK(theta+ia); (b) E_{K^[a]}(theta)=E_K(theta+ia), invariance preserved; (c) pointwise bounds transfer; (d) ph(K^[a])=ph(K)+a, unique normalized shift K^[-ph K], K and K^[a] normalized => a=0; (e) |ph K|<=sup_x |K(ix)-K0_{I*}(ix)| and |K^[a]-K0_{I*}|(theta)<=|K-K0_{I*}|(theta+ia)+|a|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:phase-average, bp:p4:data, step:p4:shift-translation, step:p4:shift-phase
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#bp:p4:shift@L687-L687 | K^[a], ph(K) used by name
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#bp:p4:shift@L698-L698 | unperturbed torus K0_{I*} in (e)
EDGE: step:p4:shift-translation | blueprint/parts/p4-measure.tex#bp:p4:shift@L704-L704 | proof step of this result
EDGE: step:p4:shift-phase | blueprint/parts/p4-measure.tex#bp:p4:shift@L711-L711 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:shift-translation
KIND: step
TITLE: Translation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:shift-translation@L704-L709
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:shift-translation@L704-L709
CONTRACT_ID: step:p4:shift-translation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic, primary on T_rho, real on reals; a in R^n
SOURCE_QUANTIFIERS: K,rho,a,omega
SOURCE_CONCLUSION: (a),(b),(c) of Lemma shift: K^[a] holomorphic with derivative DK(.+ia), primary, real; E_{K^[a]}=E_K(.+ia); bounds transfer
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:phase-average
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#step:p4:shift-translation@L705-L705 | K^[a] defined there
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p1:periodic-average, bp:p4:phase-average, bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:periodic-average | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L714-L714 | real parts of u_K(i(x+a)) averaged over the period cell, shift invariance
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L711-L711 | u_K, ph(K) defined there
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L715-L715 | K0_{I*} and u_{K0}=0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p4:apply, bp:p4:phase-average, bp:p4:inverse-freq, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:apply | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L721-L721 | K^inf_omega is a torus given by APPLY
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L723-L723 | ph and the shift K^[a] defined there
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L724-L724 | K0_omega=K0_{I_omega}, I_omega
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L721-L721 | standing assumption (SA) and Omega_gamma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p4:normalized-torus, bp:p4:parameters, step:p4:normalize-proof
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:normalize@L729-L729 | K_omega, W_omega defined there
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:normalize@L729-L729 | standing assumption (SA), sigma_K, mu, eta_0
EDGE: step:p4:normalize-proof | blueprint/parts/p4-measure.tex#bp:p4:normalize@L737-L737 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p4:apply, bp:p4:shift, bp:p4:normalized-torus
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:apply | blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L738-L738 | properties of K^inf_omega on T_{s/8} and the eta_0/2 closeness
EDGE: bp:p4:shift | blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L738-L738 | parts (a)-(e) of the phase shift lemma
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#step:p4:normalize-proof@L737-L737 | K_omega=(K^inf)^[-ph]
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: step:p4:mixed-proof | blueprint/parts/p4-measure.tex#bp:p4:mixed-difference@L808-L808 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: bp:p1:ext-mvt | blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L810-L810 | mean value inequality on the segments of the parallelogram
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L811-L811 | DF holomorphic, /D(DF)/=/D^2F/
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: L809-810 references Lemma bp:p1:mixed-difference only as the model of the argument; the proof here is self-contained, so no edge.

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
DEPS: bp:p4:normalized-torus, bp:p4:parameters, step:p4:le-basic, step:p4:le-split, step:p4:le-h, step:p4:le-f, step:p4:le-transport, step:p4:le-sum
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p4:inverse-freq, bp:p4:smallness, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:le-basic@L834-L834 | /Delta I/<=L_+/Delta omega/
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:le-basic@L835-L835 | (s3) eta_0<=mu=delta_*/2
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:le-basic@L834-L834 | lambda_*=delta_*/(4 L_+)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:le-split
KIND: step
TITLE: Splitting the error
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-split@L838-L851
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-split@L838-L851
CONTRACT_ID: step:p4:le-split
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega,omega' close; K_omega invariant on T_{s/8}; K'=K_omega+(0,i Delta I); pfh=h+f; Delta omega=grad h(i I_omega+i Delta I)-grad h(i I_omega)
SOURCE_QUANTIFIERS: theta in T_{s/8}
SOURCE_CONCLUSION: E'=(P_h,0)+P_f-DW_omega Delta omega with P_h the mixed difference of grad h and P_f=X_f(K'(theta))-X_f(K_omega(theta))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:normalize, bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:le-split@L839-L839 | X_pfh(K_omega)=DK_omega omega
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#step:p4:le-split@L842-L842 | (ii): g=grad h at real points, Delta omega as gradient difference
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: bp:p4:mixed-difference | blueprint/parts/p4-measure.tex#step:p4:le-h@L856-L856 | mixed second difference of grad h
EDGE: step:p4:le-split | blueprint/parts/p4-measure.tex#step:p4:le-h@L853-L853 | P_h defined there
EDGE: step:p4:le-basic | blueprint/parts/p4-measure.tex#step:p4:le-h@L853-L853 | 3delta_*/4 bound and /Delta I/<=L_+/Delta omega/
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:le-h@L853-L853 | /v_omega/<=/W_omega/<=eta_0, I_omega in B
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: bp:p1:increments-open | blueprint/parts/p4-measure.tex#step:p4:le-f@L863-L863 | increment bound for X_f on the convex ball
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:le-f@L862-L862 | (c): /DX_f/<=F_2 eps on D
EDGE: step:p4:le-split | blueprint/parts/p4-measure.tex#step:p4:le-f@L860-L860 | P_f defined there
EDGE: step:p4:le-basic | blueprint/parts/p4-measure.tex#step:p4:le-f@L861-L861 | 3delta_*/4 bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:le-transport
KIND: step
TITLE: The transport term
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-transport@L867-L869
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-transport@L867-L869
CONTRACT_ID: step:p4:le-transport
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: W_omega holomorphic on T_{s/8} with |W_omega|<=eta_0
SOURCE_QUANTIFIERS: theta in T_{3s/32}
SOURCE_CONCLUSION: |DW_omega|<=32 n eta_0/s
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip, bp:p4:normalize
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p4-measure.tex#step:p4:le-transport@L868-L868 | Cauchy estimate with loss s/32
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:le-transport@L868-L868 | W_omega holomorphic on T_{s/8} with /W_omega/<=eta_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:le-sum
KIND: step
TITLE: Sum
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-sum@L871-L873
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:le-sum@L871-L873
CONTRACT_ID: step:p4:le-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the three bounds for P_h, P_f, DW_omega Delta omega; gamma<=1
SOURCE_QUANTIFIERS: theta in T_{3s/32}
SOURCE_CONCLUSION: |E'|<=A_1 eps gamma^-2 |Delta omega|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:le-split, step:p4:le-h, step:p4:le-f, step:p4:le-transport, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:le-split | blueprint/parts/p4-measure.tex#step:p4:le-sum@L871-L871 | E' decomposition
EDGE: step:p4:le-h | blueprint/parts/p4-measure.tex#step:p4:le-sum@L871-L871 | bound on P_h
EDGE: step:p4:le-f | blueprint/parts/p4-measure.tex#step:p4:le-sum@L871-L871 | bound on P_f
EDGE: step:p4:le-transport | blueprint/parts/p4-measure.tex#step:p4:le-sum@L871-L871 | bound on DW_omega
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:le-sum@L872-L872 | definition of A_1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p4:parameters, bp:p4:normalized-torus, step:p4:lip-far, step:p4:lip-g1, step:p4:lip-g2, step:p4:lip-phase, step:p4:lip-close
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:lip@L877-L877 | standing assumption (SA), A_3
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:lip@L878-L878 | W_omega defined there
EDGE: step:p4:lip-far | blueprint/parts/p4-measure.tex#bp:p4:lip@L885-L885 | proof step of this result
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#bp:p4:lip@L892-L892 | proof step of this result
EDGE: step:p4:lip-g2 | blueprint/parts/p4-measure.tex#bp:p4:lip@L913-L913 | proof step of this result
EDGE: step:p4:lip-phase | blueprint/parts/p4-measure.tex#bp:p4:lip@L929-L929 | proof step of this result
EDGE: step:p4:lip-close | blueprint/parts/p4-measure.tex#bp:p4:lip@L936-L936 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p4:normalize, bp:p4:lip-error, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:lip-far@L886-L886 | /W_omega/<=eta_0
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-far@L888-L888 | K',E' for close pairs
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:lip-far@L887-L887 | lambda_*, A_0, A_1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p0:g1, bp:p4:parameters, bp:p4:h1, bp:p4:stab, bp:p4:lip-error, bp:p4:smallness, bp:p4:inverse-freq, step:p4:lip-far
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g1 | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L893-L893 | frozen a-posteriori theorem applied
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L893-L893 | second tuple, constants C_1^(2), C_2^(2)
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L895-L895 | H1
EDGE: bp:p4:stab | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L897-L897 | H2-H4 on T_{3s/32}
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L898-L898 | K' primary, real, close to K0_omega', /E'/<=e'
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L898-L898 | (s3) and (s4)
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L897-L897 | I_omega' in B, /omega'/<=W_inf
EDGE: step:p4:lip-far | blueprint/parts/p4-measure.tex#step:p4:lip-g1@L892-L892 | definition of e' and close-pair assumption
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p0:g2, bp:p4:parameters, bp:p4:h1, bp:p4:stab, bp:p4:normalize, bp:p4:smallness, step:p4:lip-g1, bp:p4:lip-error, bp:p4:inverse-freq
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g2 | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L914-L914 | frozen local uniqueness theorem applied
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L914-L914 | tuple and c_G
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L916-L916 | H1
EDGE: bp:p4:stab | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L918-L918 | H2-H4 for K_omega' on T_{s/16}
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L920-L920 | K_omega' primary, real, E_1=0, Diophantine
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L919-L919 | (s3), (s5) closeness
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L914-L914 | K~ and d_1, balls B_{mu/2}(K~) in D
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L924-L924 | K'-K0_omega'=W_omega, /K0_omega'-K'/ closeness
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:lip-g2@L918-L918 | I_omega' in B
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p1:periodic-average, step:p4:lip-g2, bp:p4:normalize, bp:p4:phase-average, step:p4:lip-g1, bp:p4:lip-error
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:periodic-average | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L930-L930 | averaging the shifted real part
EDGE: step:p4:lip-g2 | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L929-L929 | phi from G2
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L931-L931 | ph(K_omega')=ph(K_omega)=0
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L930-L930 | u_K, ph
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L933-L933 | /K~-K'/<=d_1
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L932-L932 | K' and K_omega share angle component
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: bp:p1:increments | blueprint/parts/p4-measure.tex#step:p4:lip-close@L941-L941 | increment bound on real segment theta to theta-i phi
EDGE: step:p4:lip-phase | blueprint/parts/p4-measure.tex#step:p4:lip-close@L937-L937 | /phi/<=d_1
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#step:p4:lip-close@L937-L937 | d_1 and /DK~/<=sigma_K
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

NODE: bp:p4:lagrangian
KIND: lemma
TITLE: Invariant tori with nonresonant frequency are Lagrangian
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L961-L966
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L973-L1007
CONTRACT_ID: bp:p4:lagrangian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: eps<=1; rho>0, gamma>0, omega in Dio_{gamma,tau}; K holomorphic and primary on T_rho, K(T_rho) in D, DK bounded on T_rho, E=0 at omega on T_rho
SOURCE_QUANTIFIERS: rho,gamma,omega,K; theta in T_rho
SOURCE_CONCLUSION: Lambda(theta)=DK(theta)^T Omega_0 DK(theta)=0 on T_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:lag-regular, step:p4:lag-exact, step:p4:lag-transport, step:p4:lag-unique, bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:lag-regular | blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L974-L974 | proof step
EDGE: step:p4:lag-exact | blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L980-L980 | proof step
EDGE: step:p4:lag-transport | blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L990-L990 | proof step
EDGE: step:p4:lag-unique | blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L1001-L1001 | proof step
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#bp:p4:lagrangian@L962-L962 | D and pfh fixed there
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:lag-regular@L975-L975 | DK holomorphic
EDGE: bp:p1:periodic-bounded | blueprint/parts/p4-measure.tex#step:p4:lag-regular@L977-L977 | u,v,Du bounded on T_{rho/2}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: step:p4:lag-regular | blueprint/parts/p4-measure.tex#step:p4:lag-exact@L985-L985 | boundedness and periodicity on T_{rho/2}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:lag-transport
KIND: step
TITLE: $\Lambda$ is constant along $\omega$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-transport@L990-L999
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:lag-transport@L990-L999
CONTRACT_ID: step:p4:lag-transport
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X_pfh(K)=DK omega on T_rho; S symmetric complex Hessian of pfh
SOURCE_QUANTIFIERS: rho,omega
SOURCE_CONCLUSION: partial_omega Lambda_ij=0 on T_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, step:p4:db-vectorfield, bp:p4:matrix-norms
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:lag-transport@L991-L991 | symmetry of D^2K
EDGE: step:p4:db-vectorfield | blueprint/parts/p4-measure.tex#step:p4:lag-transport@L993-L993 | DX_pfh=-Omega_0 S with S symmetric
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:lag-transport@L996-L996 | (iv): Omega_0 identities
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: bp:p1:cohomological | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1001-L1001 | uniqueness for the cohomological equation with g=0
EDGE: step:p4:lag-exact | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1004-L1004 | avg Lambda_ij=0
EDGE: step:p4:lag-transport | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1004-L1004 | Lambda_ij constant along omega
EDGE: bp:p1:strip-identity | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1006-L1006 | extension from T_{rho/4} to T_rho
EDGE: step:p4:lag-regular | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1003-L1003 | Lambda holomorphic periodic
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p4:parameters, bp:p4:normalized-torus, bp:p0:nearlyintegrable#realHamiltonian, bp:p0:nearlyintegrable#frequencyMap, bp:p0:cover#kamCover, step:p4:rt-analytic, step:p4:rt-small, step:p4:rt-immersion, step:p4:rt-embedding, step:p4:rt-lagrangian, step:p4:rt-ode, step:p4:rt-cover
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1010-L1010 | standing assumption (SA)
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1010-L1010 | K_omega
EDGE: bp:p0:nearlyintegrable#realHamiltonian | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1014-L1014 | H=realHamiltonian h f
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1019-L1019 | g(I_omega)=omega
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1020-L1020 | conclusion membership in the cover
EDGE: step:p4:rt-analytic | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1024-L1024 | proof step of this result
EDGE: step:p4:rt-small | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1028-L1028 | proof step of this result
EDGE: step:p4:rt-immersion | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1035-L1035 | proof step of this result
EDGE: step:p4:rt-embedding | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1039-L1039 | proof step of this result
EDGE: step:p4:rt-lagrangian | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1045-L1045 | proof step of this result
EDGE: step:p4:rt-ode | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1052-L1052 | proof step of this result
EDGE: step:p4:rt-cover | blueprint/parts/p4-measure.tex#bp:p4:real-torus@L1063-L1063 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:rt-analytic
KIND: step
TITLE: Analyticity and primarity
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1024-L1026
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1024-L1026
CONTRACT_ID: step:p4:rt-analytic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_omega holomorphic and primary on T_{s/8}, real on reals
SOURCE_QUANTIFIERS: omega
SOURCE_CONCLUSION: k_omega is real analytic and Z^n-periodic in the sense of the real restriction lemma
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:real-restriction, bp:p1:holomorphic-analytic, bp:p4:normalize
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1024-L1024 | real restriction of a holomorphic real-on-reals map
EDGE: bp:p1:holomorphic-analytic | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1025-L1025 | holomorphic implies analytic
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-analytic@L1026-L1026 | K_omega holomorphic, primary, real
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-small@L1031-L1031 | derivative of real restriction
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:rt-small@L1031-L1031 | (s3): 16 n eta_0/s<=1/2
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-small@L1029-L1029 | W_omega bounded and holomorphic
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: step:p4:rt-small | blueprint/parts/p4-measure.tex#step:p4:rt-immersion@L1035-L1035 | /D u~/<=1/2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: step:p4:rt-small
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:rt-small | blueprint/parts/p4-measure.tex#step:p4:rt-embedding@L1041-L1041 | /D u~/<=1/2 and periodicity of u~
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: bp:p4:lagrangian | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1045-L1045 | Lambda=0 on T_{s/8}
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1046-L1046 | K_omega properties
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1048-L1048 | (iv): symplectic form as bilinear form
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1049-L1049 | derivative of real restriction
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1048-L1048 | (s1): eps<=1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:rt-ode
KIND: step
TITLE: Hamilton's equations
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1052-L1061
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:rt-ode@L1052-L1061
CONTRACT_ID: step:p4:rt-ode
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_omega invariant on T_{s/8}; pfh holomorphic on D and real at real points
SOURCE_QUANTIFIERS: x,t in R; y=x+t omega
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
DEPS: bp:p4:normalize, bp:p4:inverse-freq, bp:p0:cover#kamCover, bp:p4:smallness
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1064-L1064 | /W_omega/<=eta_0
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1067-L1067 | (iii) I_omega in B, g(I_omega)=omega
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1067-L1067 | clauses of the cover definition
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:rt-cover@L1065-L1065 | (s3): eta_0<=mu<r0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:preimage-measure
KIND: lemma
TITLE: Actions with non-Diophantine frequency
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:preimage-measure@L1087-L1093
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:preimage-measure@L1095-L1100
CONTRACT_ID: bp:p4:preimage-measure
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: C_3 the constant of G3 for the bounded set Omega=g(B); C_3^+=max(C_3,0)
SOURCE_QUANTIFIERS: alpha>0
SOURCE_CONCLUSION: meas{I in B: g(I) not in Dio_{alpha,tau}}<=L_+^n C_3^+ alpha
CONSTANT_SCOPE: C_3 is the G3 constant for Omega=g(B), depends only on (n,tau,Omega); L_+ depends only on L_h
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:pm-proof, bp:p0:g3, bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:pm-proof | blueprint/parts/p4-measure.tex#bp:p4:preimage-measure@L1096-L1096 | proof step
EDGE: bp:p0:g3 | blueprint/parts/p4-measure.tex#bp:p4:preimage-measure@L1088-L1088 | constant C_3 of G3
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#bp:p4:preimage-measure@L1088-L1088 | (v): g(B) bounded
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1096-L1096 | L_+-Lipschitz inverse of g
EDGE: bp:p1:lip-image | blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1098-L1098 | measure of a Lipschitz image
EDGE: bp:p0:g3 | blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1099-L1099 | measure of non-Diophantine frequencies
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p4:inverse-freq, bp:p4:real-torus, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1109-L1109 | g(I) in Omega_gamma and I_{g(I)}=I
EDGE: bp:p4:real-torus | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1107-L1107 | k_omega, real restriction of K_omega
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1103-L1103 | standing assumption (SA), Omega_gamma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: step:p4:ml-size, step:p4:ml-good, step:p4:ml-mixed, bp:p4:good-actions, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:ml-size | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1119-L1119 | proof step
EDGE: step:p4:ml-good | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1123-L1123 | proof step
EDGE: step:p4:ml-mixed | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1133-L1133 | proof step
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1114-L1114 | G_0, A_gamma, Z
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1114-L1114 | standing assumption (SA)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p4:normalize, bp:p4:good-actions
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:ml-size@L1121-L1121 | /W_omega/<=eta_0
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:ml-size@L1119-L1119 | A_gamma, Z, G_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: step:p4:rt-small, bp:p4:lip, bp:p4:freq-map, bp:p4:smallness, bp:p4:good-actions, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:rt-small | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1124-L1124 | derivative bound 16 n eta_0/s on R^n
EDGE: bp:p4:lip | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1126-L1126 | Lipschitz dependence on omega
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1126-L1126 | (v): g is Lambda_g-Lipschitz on B
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1129-L1129 | (s6)
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1123-L1123 | G_0, A_gamma
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:ml-good@L1124-L1124 | A_4, A_3, Lambda_g definitions
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:ml-mixed
KIND: step
TITLE: A good action and a boundary action
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1137
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1137
CONTRACT_ID: step:p4:ml-mixed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (SA); |G_0|<=eta_0; infDist 1-Lipschitz
SOURCE_QUANTIFIERS: I in A_gamma, J in Z
SOURCE_CONCLUSION: |G_0(theta,I)-G_0(theta',J)|<=(1/2)|(theta,I)-(theta',J)|; two boundary actions give 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:smallness, step:p4:ml-size, bp:p4:good-actions
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1135-L1135 | (s7): eta_0<=gamma/2
EDGE: step:p4:ml-size | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1135-L1135 | /G_0/<=eta_0
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1134-L1134 | A_gamma, Z, G_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: step:p4:mm-extension, step:p4:mm-tori, step:p4:mm-complement, step:p4:mm-bad, step:p4:mm-count, bp:p4:parameters, bp:p0:cover#kamCover
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1150-L1150 | proof step
EDGE: step:p4:mm-tori | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1158-L1158 | proof step
EDGE: step:p4:mm-complement | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1162-L1162 | proof step
EDGE: step:p4:mm-bad | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1171-L1171 | proof step
EDGE: step:p4:mm-count | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1177-L1177 | proof step
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1141-L1141 | standing assumption (SA)
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1145-L1145 | cover appearing in the conclusion
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-extension
KIND: step
TITLE: Extension and lipeomorphism
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1150-L1156
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1150-L1156
CONTRACT_ID: step:p4:mm-extension
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |G_0|<=eta_0<=1/2 and G_0 is 1/2-Lipschitz on S=R^n x (A_gamma u Z)
SOURCE_QUANTIFIERS: gamma,eps
SOURCE_CONCLUSION: exists Gbar:R^{2n}->R^{2n}, 1/2-Lipschitz, =G_0 on S, |Gbar|<=eta_0<=1/2; Psi=id+Gbar is a bijection of R^{2n}, 3/2-Lipschitz, mapping R^n x Z^c onto itself
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:map-lipschitz, bp:p1:mcshane, bp:p1:lipeo, bp:p1:lip-image-product, bp:p4:good-actions, bp:p4:smallness
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:map-lipschitz | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1151-L1151 | G_0 bounded and 1/2-Lipschitz on S
EDGE: bp:p1:mcshane | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1151-L1151 | McShane extension with clamping
EDGE: bp:p1:lipeo | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1155-L1155 | id+Gbar is a lipeomorphism
EDGE: bp:p1:lip-image-product | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1155-L1155 | product-space image estimate
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1153-L1153 | S and G_0
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1155-L1155 | (s7): eta_0<=1/2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-tori
KIND: step
TITLE: Good actions lie on tori
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1158-L1160
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1158-L1160
CONTRACT_ID: step:p4:mm-tori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi=id+Gbar with Gbar=G_0 on R^n x A_gamma
SOURCE_QUANTIFIERS: I in A_gamma; theta in R^n
SOURCE_CONCLUSION: Psi(theta,I)=k_{g(I)}(theta) in kamCover(eta_0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:real-torus, step:p4:mm-extension, bp:p4:good-actions
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:real-torus | blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1159-L1159 | k_omega in kamCover(eta_0) for omega=g(I) in Omega_gamma
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1158-L1158 | Psi=id+Gbar, Gbar=G_0 on S
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1158-L1158 | G_0(theta,I)=k_{g(I)}(theta)-(theta,I)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-complement
KIND: step
TITLE: The complement is the image of bad actions
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1162-L1169
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1162-L1169
CONTRACT_ID: step:p4:mm-complement
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Psi bijection, |Gbar|<=1/2, Psi maps R^n x Z^c onto itself; good actions lie on tori
SOURCE_QUANTIFIERS: y in F_B minus kamCover(eta_0)
SOURCE_CONCLUSION: F_B minus kamCover(eta_0) is contained in ([0,1)^n x (B cap Z)) u Psi(Q x (Z^c minus A_gamma)), Q=[-1/2,3/2]^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:mm-tori, step:p4:mm-extension, bp:p4:good-actions
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:mm-tori | blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1164-L1164 | x not in R^n x A_gamma
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1163-L1163 | Psi surjective on R^n x Z^c, /Gbar/<=1/2
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1162-L1162 | Z, A_gamma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p4:preimage-measure, step:p4:mm-complement, bp:p4:good-actions
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:preimage-measure | blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1174-L1174 | measure of the non-Diophantine action set
EDGE: step:p4:mm-complement | blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1171-L1171 | the sets B cap Z and Z^c minus A_gamma
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1172-L1172 | A_gamma, Z
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: bp:p1:lip-image, step:p4:mm-complement, step:p4:mm-bad, step:p4:mm-extension, bp:p4:good-actions
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:lip-image | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1179-L1179 | measure of the Lipschitz image Psi(Q x (...))
EDGE: step:p4:mm-complement | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1177-L1177 | covering of the complement
EDGE: step:p4:mm-bad | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1182-L1182 | measure of Y and of the non-Diophantine set
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1180-L1180 | Psi is 3/2-Lipschitz
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1178-L1178 | Z, A_gamma
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:cover-mono
KIND: lemma
TITLE: Monotonicity of the cover
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:cover-mono@L1186-L1189
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:cover-mono@L1191-L1198
CONTRACT_ID: bp:p4:cover-mono
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B' subset B; kappa'<=kappa
SOURCE_QUANTIFIERS: h,f,B',B,r0,tau,kappa',kappa
SOURCE_CONCLUSION: kamCover h f B' r0 tau kappa' subset kamCover h f B r0 tau kappa
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:cm-proof, bp:p0:cover#kamCover
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:cm-proof | blueprint/parts/p4-measure.tex#bp:p4:cover-mono@L1192-L1192 | proof step
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#bp:p4:cover-mono@L1187-L1187 | cover definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:cm-proof
KIND: step
TITLE: Same witnesses
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:cm-proof@L1192-L1197
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:cm-proof@L1192-L1197
CONTRACT_ID: step:p4:cm-proof
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B' subset B; kappa'<=kappa; z in kamCover(B',kappa')
SOURCE_QUANTIFIERS: z
SOURCE_CONCLUSION: the same witnesses K,omega,gamma,I_0 show z in kamCover(B,kappa)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:cover#kamCover
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#step:p4:cm-proof@L1193-L1193 | clauses of the cover definition
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:head-empty
KIND: step
TITLE: Empty action domain
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-empty@L1201-L1202
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-empty@L1201-L1202
CONTRACT_ID: step:p4:head-empty
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: fixed HEAD data (n>=2, tau>n-1, s0,r0>0, B open bounded nonempty, h holomorphic on B_{r0} and real at real points, witnesses L_h, C_B) (B possibly empty)
SOURCE_QUANTIFIERS: B
SOURCE_CONCLUSION: if B empty then F_B empty and C=eps_0=1 work; otherwise continue with B nonempty
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
NOTE: -

NODE: step:p4:head-constants
KIND: step
TITLE: Constants
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-constants@L1204-L1212
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-constants@L1204-L1212
CONTRACT_ID: step:p4:head-constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B nonempty; c_*, A_0 from Definition parameters; C_meas from Theorem main-measure
SOURCE_QUANTIFIERS: f, eps<=eps_0 as in HEAD
SOURCE_CONCLUSION: C=max(1,A_0 c_*^{1/2},C_meas c_*^{-1/4}), eps_0=c_*, both positive and depending only on data n,tau,s0,r0,B,h and witnesses L_h,C_B
CONSTANT_SCOPE: C, eps_0 depend only on n,tau,s0,r0,B,h and the witnesses L_h, C_B (fixed once before choosing C, eps_0); not on f, eps
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:parameters, bp:p4:main-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:head-constants@L1205-L1205 | c_*, A_0
EDGE: bp:p4:main-measure | blueprint/parts/p4-measure.tex#step:p4:head-constants@L1205-L1205 | C_meas
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:head-positive
KIND: step
TITLE: Positive $\varepsilon$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-positive@L1218-L1224
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-positive@L1218-L1224
CONTRACT_ID: step:p4:head-positive
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B nonempty; 0<eps<=c_*; eps<=eps_0
SOURCE_QUANTIFIERS: eps
SOURCE_CONCLUSION: with gamma=(eps/c_*)^{1/4}, (SA) holds, eta_0<=C sqrt(eps), meas(F_B minus kamCover(C sqrt eps))<=C eps^{1/4}
CONSTANT_SCOPE: gamma=(eps/c_*)^{1/4}; C as in head-constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:cover-mono, bp:p4:main-measure, step:p4:head-constants, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:cover-mono | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1221-L1221 | kamCover(eta_0) subset kamCover(C sqrt eps)
EDGE: bp:p4:main-measure | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1221-L1221 | measure bound C_meas gamma
EDGE: step:p4:head-constants | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1219-L1219 | C, eps_0, c_*
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1218-L1218 | (SA) and eta_0=A_0 eps gamma^-2
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:head-zero
KIND: step
TITLE: Vanishing perturbation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-zero@L1226-L1229
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-zero@L1226-L1229
CONTRACT_ID: step:p4:head-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B nonempty; eps=0
SOURCE_QUANTIFIERS: gamma in (0,1]
SOURCE_CONCLUSION: (SA) holds for every gamma, eta_0=0, so meas(F_B minus kamCover(0))<=C_meas gamma for all gamma, hence =0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:main-measure, bp:p4:parameters, step:p4:head-constants
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:main-measure | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1227-L1227 | measure bound for each gamma in (0,1]
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1226-L1226 | (SA) holds for eps=0
EDGE: step:p4:head-constants | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1226-L1226 | constant C
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:dyadic-approx
KIND: lemma
TITLE: Inner dyadic approximation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1239-L1243
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1245-L1266
CONTRACT_ID: bp:p4:dyadic-approx
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B in R^n open and bounded; eta>0
SOURCE_QUANTIFIERS: B,eta
SOURCE_CONCLUSION: exists B' open subset of B with meas(B minus B')<=eta and C_B' with meas{I in B': infDist(I,B'^c)<t}<=C_B' t for all t>0
CONSTANT_SCOPE: C_B' depends on B' (number and side of cubes); chosen after B', eta
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:dy-exhaust, step:p4:dy-open, step:p4:dy-layer
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:dy-exhaust | blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1246-L1246 | proof step
EDGE: step:p4:dy-open | blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1254-L1254 | proof step
EDGE: step:p4:dy-layer | blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1259-L1259 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
NOTE: -

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
NOTE: -

NODE: step:p4:dy-layer
KIND: step
TITLE: Boundary layer
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-layer@L1259-L1265
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-layer@L1259-L1265
CONTRACT_ID: step:p4:dy-layer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B' union of interiors of N cubes of side l=2^-j
SOURCE_QUANTIFIERS: t>0; I in B'
SOURCE_CONCLUSION: meas{I in B': infDist(I,B'^c)<t}<=2 n N l^{n-1} t, so C_B'=2nNl^{n-1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:dy-open
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:dy-open | blueprint/parts/p4-measure.tex#step:p4:dy-layer@L1260-L1260 | B' and its cubes
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hq-trivial
KIND: step
TITLE: Trivial cases
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1269-L1272
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1269-L1272
CONTRACT_ID: step:p4:hq-trivial
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: HEAD-Q data (n>=2, tau>n-1, s0,r0>0, B open bounded, h holomorphic and real on B_{r0}, nondegeneracy on closure of B); kappa>0
SOURCE_QUANTIFIERS: B,kappa
SOURCE_CONCLUSION: if B empty, eps_0=1 works; otherwise 0<meas B<infty and meas F_B=meas B
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
NOTE: -

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
EDGE: bp:p4:dyadic-approx | blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1274-L1274 | inner approximation
EDGE: step:p4:hq-trivial | blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1274-L1274 | 0<meas B<infty and kappa fixed
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hq-head
KIND: step
TITLE: HEAD for $B'$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-head@L1277-L1285
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-head@L1277-L1285
CONTRACT_ID: step:p4:hq-head
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B' from inner approximation; HEAD-Q data for B
SOURCE_QUANTIFIERS: kappa
SOURCE_CONCLUSION: (n,tau,s0,r0,B',h) satisfy HEAD's hypotheses; HEAD gives C',eps_0'>0; eps_0=min(eps_0',(kappa/C')^2,(kappa meas B/(2C'))^4)>0
CONSTANT_SCOPE: C', eps_0' depend on B' (hence on kappa, B) and n,tau,s0,r0,h; eps_0 chosen after kappa
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:head, step:p4:hq-approx
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:head | blueprint/parts/p4-measure.tex#step:p4:hq-head@L1278-L1278 | HEAD applied to B' to obtain C',eps_0'
EDGE: step:p4:hq-approx | blueprint/parts/p4-measure.tex#step:p4:hq-head@L1277-L1277 | B' and C_B'
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
EDGE: step:p4:head-negative | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1290-L1290 | eps>=0 as in HEAD
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
DEPS: bp:p4:cover-mono, step:p4:hq-transfer, step:p4:hq-approx, step:p4:hq-trivial
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:cover-mono | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1296-L1296 | kamCover_B'(C' sqrt eps) subset kamCover_B(kappa)
EDGE: step:p4:hq-transfer | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1300-L1300 | measure bound for F_B' minus cover
EDGE: step:p4:hq-approx | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1300-L1300 | meas(B minus B')<=(1/2)kappa meas B
EDGE: step:p4:hq-trivial | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1301-L1301 | meas F_B = meas B
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

<!-- BEGIN PROOF DEPGRAPH GENERATED -->
Regenerated by `proof_depgraph.py`; do not hand-edit.

### Dashboard

* Total nodes: **449**
* Frozen anchors: **25**
* Versioned statement contracts: **449**
* Total edges: **1301**
* Root-closure nodes: **449**
* Dependency leaves in root closure: **51**
* Assumption boundary leaves: **0**
* External boundary leaves: **10**
* Alternative routes: **0**
* Topology review queue: **449**
* Explicit source gaps: **1**
* Coverage items: **557**; excluded: **104**

### Roots

* `bp:p0:head` [PROPOSED; frozen] — contract `kam.kam_positive_measure@1`
* `bp:p0:headq` [PROPOSED; frozen] — contract `kam.kam_positive_measure_qualitative@1`
* `bp:p0:g1` [PROPOSED; frozen] — contract `kam.aposteriori_kam@1`
* `bp:p0:g2` [PROPOSED; frozen] — contract `kam.local_uniqueness_flow@1`
* `bp:p0:g3` [PROPOSED; frozen] — contract `kam.volume_not_diophantine_le@1`

### Topology review queue

* `bp:p0:cover#kamCover` [PROPOSED] — The KAM cover: KAM.kamCover
* `bp:p0:diophantine#IsDiophantine` [PROPOSED] — Diophantine vectors: KAM.IsDiophantine
* `bp:p0:domains#actionNbhd` [PROPOSED] — Complex neighbourhoods and the fundamental domain: KAM.actionNbhd
* `bp:p0:domains#complexStrip` [PROPOSED] — Complex neighbourhoods and the fundamental domain: KAM.complexStrip
* `bp:p0:domains#fundamentalDomain` [PROPOSED] — Complex neighbourhoods and the fundamental domain: KAM.fundamentalDomain
* `bp:p0:g1` [PROPOSED] — G1: a-posteriori KAM at fixed frequency
* `bp:p0:g2` [PROPOSED] — G2: local uniqueness for flows
* `bp:p0:g3` [PROPOSED] — G3: measure of the non-Diophantine set
* `bp:p0:hamiltonian#hamiltonianVectorField` [PROPOSED] — Hamiltonian vector fields, symplectic form: KAM.hamiltonianVectorField
* `bp:p0:hamiltonian#hamiltonianVectorFieldC` [PROPOSED] — Hamiltonian vector fields, symplectic form: KAM.hamiltonianVectorFieldℂ
* `bp:p0:hamiltonian#omegaZero` [PROPOSED] — Hamiltonian vector fields, symplectic form: KAM.omegaZero
* `bp:p0:hamiltonian#symplecticForm` [PROPOSED] — Hamiltonian vector fields, symplectic form: KAM.symplecticForm
* `bp:p0:head` [PROPOSED] — HEAD: positive-measure KAM with rate
* `bp:p0:headq` [PROPOSED] — HEAD-Q: qualitative form
* `bp:p0:nearlyintegrable#frequencyMap` [PROPOSED] — The integrable part, the perturbation, the frequency map: KAM.frequencyMap
* `bp:p0:nearlyintegrable#realHamiltonian` [PROPOSED] — The integrable part, the perturbation, the frequency map: KAM.realHamiltonian
* `bp:p0:stripdata#IsPrimaryOnStrip` [PROPOSED] — Torus data on strips: KAM.IsPrimaryOnStrip
* `bp:p0:stripdata#IsRealOnReals` [PROPOSED] — Torus data on strips: KAM.IsRealOnReals
* `bp:p0:stripdata#dotC` [PROPOSED] — Torus data on strips: KAM.dotℂ
* `bp:p0:stripdata#gramMatrix` [PROPOSED] — Torus data on strips: KAM.gramMatrix
* `bp:p0:stripdata#invarianceError` [PROPOSED] — Torus data on strips: KAM.invarianceError
* `bp:p0:stripdata#normalFrame` [PROPOSED] — Torus data on strips: KAM.normalFrame
* `bp:p0:stripdata#torsion` [PROPOSED] — Torus data on strips: KAM.torsion
* `bp:p0:stripdata#torsionAverage` [PROPOSED] — Torus data on strips: KAM.torsionAverage
* `bp:p0:torus#IsInvariantLagrangianTorus` [PROPOSED] — Invariant Lagrangian torus: KAM.IsInvariantLagrangianTorus
* `bp:p1:averages` [PROPOSED] — Averages
* `bp:p1:averages-matrix` [PROPOSED] — Averages of matrix-valued functions
* `bp:p1:averages-real` [PROPOSED] — Averages of functions on the real torus
* `bp:p1:cauchy-corollaries` [PROPOSED] — Cauchy corollaries
* `bp:p1:cauchy-open` [PROPOSED] — Cauchy estimate on open sets
* `bp:p1:cauchy-strip` [PROPOSED] — Cauchy estimate on strips
* `bp:p1:cohomological` [PROPOSED] — Cohomological equation on strips
* `bp:p1:cohomological-operator` [PROPOSED] — Cohomological equation in operator norms, a-priori bound
* `bp:p1:decay` [PROPOSED] — Coefficient decay
* `bp:p1:exp-sums` [PROPOSED] — Exponential sums over $\Z^n$
* `bp:p1:ext-banach` [PROPOSED] — Banach's fixed point theorem
* `bp:p1:ext-cauchy` [PROPOSED] — Cauchy's formulas in one variable
* `bp:p1:ext-cramer` [PROPOSED] — Cramer's rule
* `bp:p1:ext-fourier` [PROPOSED] — Fourier series on the torus
* `bp:p1:ext-identity` [PROPOSED] — Identity theorem in one variable
* `bp:p1:ext-integral` [PROPOSED] — Integrals
* `bp:p1:ext-lebesgue` [PROPOSED] — Lebesgue outer measure
* `bp:p1:ext-mvt` [PROPOSED] — Mean value inequality
* `bp:p1:ext-rectangle` [PROPOSED] — Cauchy's theorem for rectangles
* `bp:p1:ext-schwarz` [PROPOSED] — Symmetry of second derivatives
* `bp:p1:fourier-basic` [PROPOSED] — Fourier coefficients of periodic functions
* `bp:p1:hamiltonian-real` [PROPOSED] — Real and complex Hamiltonian fields
* `bp:p1:holomorphic-analytic` [PROPOSED] — Holomorphic maps are analytic
* `bp:p1:holomorphic-inverse` [PROPOSED] — Holomorphic inverse
* `bp:p1:holomorphic-regularity` [PROPOSED] — Derivatives of holomorphic maps
* `bp:p1:increments` [PROPOSED] — Increments
* `bp:p1:increments-open` [PROPOSED] — Increments on open sets
* `bp:p1:iteration` [PROPOSED] — Quadratic iteration on nested strips
* `bp:p1:lip-image` [PROPOSED] — Lipschitz images and preimages
* `bp:p1:lip-image-product` [PROPOSED] — Products
* `bp:p1:lip-image-product#product-lebesgue` [PROPOSED] — Product of Lebesgue measures is Lebesgue measure on R^{2n}
* `bp:p1:lipeo` [PROPOSED] — Lipeomorphisms
* `bp:p1:lipeo-fixed` [PROPOSED] — Bijections fixing a set
* `bp:p1:matrix-norms` [PROPOSED] — Max-norm matrix facts
* `bp:p1:mcshane` [PROPOSED] — McShane extension
* `bp:p1:neumann` [PROPOSED] — Neumann series
* `bp:p1:operator-norms` [PROPOSED] — Operator norms, blocks, $\Omega_0$
* `bp:p1:periodic-average` [PROPOSED] — Translation invariance of averages
* `bp:p1:periodic-bounded` [PROPOSED] — Periodic functions are bounded on smaller strips
* `bp:p1:real-inverse` [PROPOSED] — Real inverses
* `bp:p1:real-restriction` [PROPOSED] — Real restriction
* `bp:p1:real-restriction-consequences` [PROPOSED] — Real restrictions of linear and primary maps
* `bp:p1:strip-identity` [PROPOSED] — Identity theorem on strips
* `bp:p1:summation` [PROPOSED] — Summation
* `bp:p1:taylor` [PROPOSED] — Second-order Taylor bound
* `bp:p1:uniform-limits` [PROPOSED] — Uniform limits
* `bp:p2:admissible` [PROPOSED] — Admissible parameterization
* `bp:p2:averages` [PROPOSED] — Averages
* `bp:p2:cohomological` [PROPOSED] — Cohomological equation in operator norms
* `bp:p2:constants` [PROPOSED] — Exponents and constants
* `bp:p2:correction` [PROPOSED] — Size of the correction
* `bp:p2:error-decay` [PROPOSED] — Decay of the errors
* `bp:p2:exactness` [PROPOSED] — Exactness: two vanishing averages
* `bp:p2:frame-basic` [PROPOSED] — Regularity and bounds of the frame
* `bp:p2:frame-identities` [PROPOSED] — Frame identities
* `bp:p2:frequency` [PROPOSED] — Frequency bound
* `bp:p2:frozen-agreement` [PROPOSED] — Agreement with the frozen definitions
* `bp:p2:g1` [PROPOSED] — G1 with explicit constants
* `bp:p2:geometry` [PROPOSED] — Approximate Lagrangian property, symplecticity and reducibility
* `bp:p2:hamiltonian` [PROPOSED] — The Hamiltonian vector field
* `bp:p2:iteration` [PROPOSED] — The induction
* `bp:p2:limit` [PROPOSED] — The limit torus
* `bp:p2:matrix` [PROPOSED] — Matrix norms
* `bp:p2:newton-error` [PROPOSED] — The new invariance error
* `bp:p2:objects` [PROPOSED] — Objects attached to a parameterization
* `bp:p2:periodicity` [PROPOSED] — Periodicity and realness of the attached objects
* `bp:p2:perturbation` [PROPOSED] — Perturbation of the frame and the torsion
* `bp:p2:schedule` [PROPOSED] — Schedule of the iteration
* `bp:p2:standing` [PROPOSED] — Standing data of Part~\ref{bp:p2}
* `bp:p2:step` [PROPOSED] — The KAM step
* `bp:p2:triangular` [PROPOSED] — The triangular system
* `bp:p3:difference-equation` [PROPOSED] — The difference in the frame
* `bp:p3:frequency-bound` [PROPOSED] — A priori bound on the frequency
* `bp:p3:lagrangian` [PROPOSED] — The reference torus is Lagrangian
* `bp:p3:matrix-norms` [PROPOSED] — Matrix norms of the frame
* `bp:p3:phase` [PROPOSED] — Phase normalization
* `bp:p3:quadratic` [PROPOSED] — Quadratic estimate
* `bp:p3:quadratic#absorb` [PROPOSED] — Absorption inequality
* `bp:p3:reducibility` [PROPOSED] — Exact reducibility
* `bp:p3:standing` [PROPOSED] — Two invariant tori
* `bp:p3:standing#constants` [PROPOSED] — Constants of Part 3
* `bp:p3:torsion-bound` [PROPOSED] — The torsion
* `bp:p4:apply` [PROPOSED] — APPLY: a torus for every Diophantine frequency
* `bp:p4:cover-mono` [PROPOSED] — Monotonicity of the cover
* `bp:p4:data` [PROPOSED] — Shrunken domains and basic constants
* `bp:p4:derivative-bounds` [PROPOSED] — Derivative bounds
* `bp:p4:dyadic-approx` [PROPOSED] — Inner dyadic approximation
* `bp:p4:freq-map` [PROPOSED] — The frequency map
* `bp:p4:good-actions` [PROPOSED] — Good actions and the displacement
* `bp:p4:h-bounded` [PROPOSED] — $h$ is bounded on a shrunken neighbourhood
* `bp:p4:h1` [PROPOSED] — The Hamiltonian hypothesis H1
* `bp:p4:hessian-inverse` [PROPOSED] — Kolmogorov nondegeneracy at a point
* `bp:p4:inverse-freq` [PROPOSED] — The inverse frequency map
* `bp:p4:lagrangian` [PROPOSED] — Invariant tori with nonresonant frequency are Lagrangian
* `bp:p4:lattice-count` [PROPOSED] — Counting lattice points on $\ell^1$ spheres
* `bp:p4:lattice-sum` [PROPOSED] — Lattice sum
* `bp:p4:lip` [PROPOSED] — LIP
* `bp:p4:lip-error` [PROPOSED] — The error of the shifted torus
* `bp:p4:main-measure` [PROPOSED] — Measure of the complement at a given $\gamma$
* `bp:p4:map-lipschitz` [PROPOSED] — The displacement is small and $\tfrac12$-Lipschitz
* `bp:p4:matrix-norms` [PROPOSED] — Matrix norms
* `bp:p4:mixed-difference` [PROPOSED] — Mixed second differences
* `bp:p4:normalize` [PROPOSED] — Properties of $K_\omega$
* `bp:p4:normalized-torus` [PROPOSED] — The normalized torus $K_\omega$
* `bp:p4:parameters` [PROPOSED] — Parameters of the applications of G1 and G2
* `bp:p4:phase-average` [PROPOSED] — Angle displacement and phase average
* `bp:p4:preimage-measure` [PROPOSED] — Actions with non-Diophantine frequency
* `bp:p4:real-torus` [PROPOSED] — The real tori are KAM tori
* `bp:p4:shift` [PROPOSED] — Phase shifts
* `bp:p4:slab` [PROPOSED] — Slabs in a cube
* `bp:p4:smallness` [PROPOSED] — Smallness consequences
* `bp:p4:stab` [PROPOSED] — STAB
* `bp:p4:torsion-regular` [PROPOSED] — Guarded facts for the frame and the torsion
* `bp:p4:unperturbed` [PROPOSED] — Geometry of the unperturbed torus
* `step:p1:am-bound` [PROPOSED] — The bound
* `step:p1:am-derivative` [PROPOSED] — Derivative along $\omega$
* `step:p1:ar-fubini` [PROPOSED] — Fubini
* `step:p1:ar-one` [PROPOSED] — One variable
* `step:p1:av-bound` [PROPOSED] — The bound
* `step:p1:av-derivatives` [PROPOSED] — Derivatives
* `step:p1:cc-omega` [PROPOSED] — Derivative along $\omega$
* `step:p1:cc-transpose` [PROPOSED] — Transposed derivative
* `step:p1:co-constants` [PROPOSED] — Constants
* `step:p1:co-first` [PROPOSED] — First derivatives
* `step:p1:co-second` [PROPOSED] — Second derivatives
* `step:p1:co-third` [PROPOSED] — Third derivatives
* `step:p1:coh-coefficients` [PROPOSED] — The coefficient solution
* `step:p1:coh-data` [PROPOSED] — Coefficients of the datum
* `step:p1:coh-equation` [PROPOSED] — The equation
* `step:p1:coh-existence` [PROPOSED] — Existence
* `step:p1:coh-real` [PROPOSED] — Realness
* `step:p1:coh-unique` [PROPOSED] — Uniqueness
* `step:p1:coh-vector` [PROPOSED] — Vector- and matrix-valued data
* `step:p1:coh-weighted` [PROPOSED] — Weighted estimate
* `step:p1:coo-apriori` [PROPOSED] — A-priori form
* `step:p1:coo-entries` [PROPOSED] — The entrywise solution
* `step:p1:coo-norm` [PROPOSED] — Operator norm
* `step:p1:coo-vectors` [PROPOSED] — Testing against vectors
* `step:p1:cs-coordinate` [PROPOSED] — One coordinate
* `step:p1:cs-full` [PROPOSED] — The full derivative
* `step:p1:dec-bound` [PROPOSED] — The bound
* `step:p1:dec-shift` [PROPOSED] — Shifting one variable
* `step:p1:es-nonzero` [PROPOSED] — Nonzero modes
* `step:p1:es-power` [PROPOSED] — The power times the exponential
* `step:p1:es-product` [PROPOSED] — Product structure
* `step:p1:fb-derivative` [PROPOSED] — Derivatives
* `step:p1:fb-holomorphic` [PROPOSED] — Holomorphic functions
* `step:p1:fb-series` [PROPOSED] — Fourier series
* `step:p1:han-bounds` [PROPOSED] — Coefficient bounds
* `step:p1:han-cauchy` [PROPOSED] — Iterated Cauchy formula
* `step:p1:han-margin` [PROPOSED] — A larger polydisc
* `step:p1:han-real` [PROPOSED] — Real points
* `step:p1:han-series` [PROPOSED] — Geometric expansion
* `step:p1:hi-derivative` [PROPOSED] — Derivative
* `step:p1:hi-holomorphic` [PROPOSED] — Holomorphy
* `step:p1:hr-components` [PROPOSED] — Components
* `step:p1:hr-derivative` [PROPOSED] — The real derivative
* `step:p1:hr-matrix` [PROPOSED] — Matrix form
* `step:p1:hreg-differentiate` [PROPOSED] — Differentiation under the integral
* `step:p1:hreg-full` [PROPOSED] — The full derivative
* `step:p1:hreg-integral` [PROPOSED] — A Cauchy integral for the derivative
* `step:p1:hreg-line` [PROPOSED] — Cauchy's estimate along lines
* `step:p1:hreg-orders` [PROPOSED] — All orders
* `step:p1:hreg-symmetry` [PROPOSED] — Symmetry
* `step:p1:inc-cauchy` [PROPOSED] — With the Cauchy estimate
* `step:p1:inc-mvt` [PROPOSED] — Mean value inequality
* `step:p1:io-mvt` [PROPOSED] — Mean value inequality
* `step:p1:it-linear` [PROPOSED] — The form linear in $y_0$
* `step:p1:it-super` [PROPOSED] — Super-exponential decay
* `step:p1:li-cubes` [PROPOSED] — Covers by cubes
* `step:p1:li-image` [PROPOSED] — Image of one cube
* `step:p1:li-preimage` [PROPOSED] — Preimages of null sets
* `step:p1:li-product` [PROPOSED] — Products
* `step:p1:li-sum` [PROPOSED] — Summation
* `step:p1:lipeo-bounds` [PROPOSED] — Bi-Lipschitz bounds
* `step:p1:lipeo-onto` [PROPOSED] — Surjectivity
* `step:p1:lipeo-zero` [PROPOSED] — The set where $G$ vanishes
* `step:p1:mc-clamp` [PROPOSED] — Clamping
* `step:p1:mc-component` [PROPOSED] — One component
* `step:p1:mc-components` [PROPOSED] — All components
* `step:p1:mn-products` [PROPOSED] — Products
* `step:p1:mn-signed` [PROPOSED] — $\Omega_0$ and stacked blocks
* `step:p1:mn-transpose` [PROPOSED] — Transposes
* `step:p1:neu-difference` [PROPOSED] — The difference
* `step:p1:neu-inverse` [PROPOSED] — The inverse of $A+\Delta$
* `step:p1:neu-pointwise` [PROPOSED] — Matrix-valued functions
* `step:p1:neu-series` [PROPOSED] — The Neumann series
* `step:p1:opn-blocks` [PROPOSED] — Blocks
* `step:p1:opn-omega` [PROPOSED] — The matrix $\Omega_0$
* `step:p1:opn-rowsum` [PROPOSED] — Row sums
* `step:p1:pa-induction` [PROPOSED] — One coordinate at a time
* `step:p1:pa-one` [PROPOSED] — One variable
* `step:p1:pb-compact` [PROPOSED] — A compact fundamental set
* `step:p1:ri-adjugate` [PROPOSED] — Adjugate
* `step:p1:rr-analytic` [PROPOSED] — Analyticity
* `step:p1:rr-consequences` [PROPOSED] — Norm and primarity
* `step:p1:rr-derivative` [PROPOSED] — The derivative
* `step:p1:si-induction` [PROPOSED] — One coordinate at a time
* `step:p1:sum-bound` [PROPOSED] — Convergence and the bound
* `step:p1:sum-coeff` [PROPOSED] — Coefficients
* `step:p1:sum-converse` [PROPOSED] — The converse estimate
* `step:p1:sum-holo` [PROPOSED] — Holomorphy
* `step:p1:sum-representation` [PROPOSED] — Fourier representation
* `step:p1:tay-integrate` [PROPOSED] — Integration
* `step:p1:tay-lipschitz` [PROPOSED] — The derivative along the segment
* `step:p1:ul-derivative` [PROPOSED] — Differentiability of the limit
* `step:p1:ul-differences` [PROPOSED] — Linearization error of the differences
* `step:p1:ul-limit` [PROPOSED] — Passage to the limit
* `step:p1:ul-primary` [PROPOSED] — Periodicity and realness
* `step:p2:avg-bound` [PROPOSED] — Integrability and the bound
* `step:p2:avg-deriv` [PROPOSED] — Derivatives
* `step:p2:coh-apriori` [PROPOSED] — The a-priori bound
* `step:p2:coh-components` [PROPOSED] — Componentwise solution
* `step:p2:cor-absorb` [PROPOSED] — Absorbing powers of $\gamma\delta$
* `step:p2:cor-data` [PROPOSED] — The data of the triangular system
* `step:p2:cor-dxi` [PROPOSED] — Bound on $\partial_\omega\xi$
* `step:p2:cor-reg` [PROPOSED] — Regularity of the correction
* `step:p2:cor-xi` [PROPOSED] — Bounds on $\xi$ and $\Delta K$
* `step:p2:cor-xin` [PROPOSED] — Bounds on $\xi^N$ and $g^L$
* `step:p2:ed-errors` [PROPOSED] — The errors of the schedule
* `step:p2:ed-sums` [PROPOSED] — Sums
* `step:p2:ex-avg-eta` [PROPOSED] — Average of $L^\top\Omega_0E$
* `step:p2:ex-avg-omega` [PROPOSED] — Average of $\Omega_K$
* `step:p2:ex-curl` [PROPOSED] — $\Omega_K$ is a curl of periodic functions
* `step:p2:ex-gradient` [PROPOSED] — The gradient identity
* `step:p2:fb-bounds` [PROPOSED] — Frame bounds
* `step:p2:fb-eta` [PROPOSED] — Bounds on $\eta$
* `step:p2:fb-holo` [PROPOSED] — Holomorphy
* `step:p2:fb-torsion` [PROPOSED] — Torsion bound
* `step:p2:fi-22` [PROPOSED] — The $(2,2)$ block
* `step:p2:fi-blocks` [PROPOSED] — Block form of the reduced field
* `step:p2:fi-dl` [PROPOSED] — Derivative of the frame along $\omega$
* `step:p2:fi-domegak` [PROPOSED] — Derivative of $\Omega_K$
* `step:p2:fi-products` [PROPOSED] — Products with $\Omega_0$
* `step:p2:fi-q` [PROPOSED] — The products with $Q$
* `step:p2:fi-sym` [PROPOSED] — Symplecticity defect
* `step:p2:freq-lower` [PROPOSED] — Lower bound
* `step:p2:freq-solve` [PROPOSED] — Solving for $\omega$
* `step:p2:freq-upper` [PROPOSED] — Upper bound
* `step:p2:g1-apply` [PROPOSED] — Iteration and limit
* `step:p2:g1-check` [PROPOSED] — Checking the conclusion
* `step:p2:g1-constants` [PROPOSED] — The constants
* `step:p2:g1-e` [PROPOSED] — Size of the error
* `step:p2:g1-standing` [PROPOSED] — The standing assumptions
* `step:p2:geo-de` [PROPOSED] — Derivatives of the error
* `step:p2:geo-domegak` [PROPOSED] — Bound on $\partial_\omega\Omega_K$
* `step:p2:geo-ered` [PROPOSED] — Bound on $E_{\mathrm{red}}$
* `step:p2:geo-esym` [PROPOSED] — The symplecticity defect
* `step:p2:geo-omegak` [PROPOSED] — The Lagrangian defect by the cohomological equation
* `step:p2:ham-mvt` [PROPOSED] — Mean value estimates
* `step:p2:ham-periodic` [PROPOSED] — Periodicity
* `step:p2:ham-real` [PROPOSED] — Realness
* `step:p2:ham-regular` [PROPOSED] — Regularity
* `step:p2:ham-symplectic` [PROPOSED] — Symplectic identity
* `step:p2:it-base` [PROPOSED] — Base case
* `step:p2:it-step` [PROPOSED] — Inductive step
* `step:p2:it-stepsmall` [PROPOSED] — Step smallness at every stage
* `step:p2:it-sums` [PROPOSED] — Summed bounds
* `step:p2:lim-close` [PROPOSED] — Closeness
* `step:p2:lim-dk` [PROPOSED] — Uniform convergence of $DK_s$
* `step:p2:lim-holo` [PROPOSED] — Holomorphy of the limit
* `step:p2:lim-invariance` [PROPOSED] — Invariance
* `step:p2:lim-k` [PROPOSED] — Uniform convergence of $K_s$
* `step:p2:lim-margins` [PROPOSED] — Margins
* `step:p2:lim-primary` [PROPOSED] — Primary and real
* `step:p2:matrix-blocks` [PROPOSED] — Blocks and $\Omega_0$
* `step:p2:matrix-op` [PROPOSED] — Operator norm
* `step:p2:matrix-transpose` [PROPOSED] — Transpose and products
* `step:p2:ne-domain` [PROPOSED] — The corrected torus stays in the domain
* `step:p2:ne-expand` [PROPOSED] — Expansion of the new error
* `step:p2:ne-invert` [PROPOSED] — Invertibility of $S$ and of $Q$
* `step:p2:ne-lin` [PROPOSED] — Estimate of the linear part
* `step:p2:ne-quad` [PROPOSED] — Estimate of the quadratic part
* `step:p2:ne-reduce` [PROPOSED] — Reduction by $Q$
* `step:p2:ne-total` [PROPOSED] — The quadratic estimate
* `step:p2:per-compose` [PROPOSED] — Periodicity of the composed objects
* `step:p2:per-dk` [PROPOSED] — Periodicity of $DK$ and $K^I$
* `step:p2:per-real` [PROPOSED] — Realness
* `step:p2:pt-binv` [PROPOSED] — Gram inverse (invertibility before use)
* `step:p2:pt-dl` [PROPOSED] — Tangent frame
* `step:p2:pt-domain` [PROPOSED] — Domain
* `step:p2:pt-gram` [PROPOSED] — Gram matrix
* `step:p2:pt-n` [PROPOSED] — Normal frame
* `step:p2:pt-small` [PROPOSED] — Consequences of the smallness
* `step:p2:pt-torsion` [PROPOSED] — Torsion
* `step:p2:pt-twist` [PROPOSED] — Twist (integrability and invertibility before use)
* `step:p2:pt-xn` [PROPOSED] — Displacement of the normal frame
* `step:p2:st-ball` [PROPOSED] — Ball margin
* `step:p2:st-error` [PROPOSED] — Correction and new error
* `step:p2:st-perturb` [PROPOSED] — Perturbation on the strip $T_{r-2\delta}$
* `step:p2:st-small` [PROPOSED] — The smallness conditions used
* `step:p2:tri-first` [PROPOSED] — First cohomological equation
* `step:p2:tri-form` [PROPOSED] — Triangular form
* `step:p2:tri-real` [PROPOSED] — Realness
* `step:p2:tri-second` [PROPOSED] — Second cohomological equation
* `step:p2:tri-xi0` [PROPOSED] — The torsion average fixes $\xi^N_0$
* `step:p3:diff-bounds` [PROPOSED] — Bounds
* `step:p3:diff-linearized` [PROPOSED] — Linearized equation
* `step:p3:diff-regularity` [PROPOSED] — Regularity and periodicity
* `step:p3:diff-triangular` [PROPOSED] — Triangular system
* `step:p3:frequency-gamma` [PROPOSED] — Bound on $\gamma$
* `step:p3:frequency-omega` [PROPOSED] — Bound on $\omega$
* `step:p3:g2-conclusion` [PROPOSED] — Conclusion
* `step:p3:g2-constant` [PROPOSED] — Choice of the threshold
* `step:p3:g2-iteration` [PROPOSED] — Iteration on shrinking strips
* `step:p3:g2-phase` [PROPOSED] — Phase
* `step:p3:g2-size` [PROPOSED] — Size of the difference
* `step:p3:g2-smallness` [PROPOSED] — The three smallness conditions
* `step:p3:lagrangian-transport` [PROPOSED] — Invariance of $\Omega_{K_1}$ along the flow
* `step:p3:lagrangian-unique` [PROPOSED] — Nonresonance
* `step:p3:norms-frame` [PROPOSED] — The frame
* `step:p3:phase-conclusion` [PROPOSED] — Conclusion
* `step:p3:phase-contraction` [PROPOSED] — Contraction
* `step:p3:phase-derivatives` [PROPOSED] — Derivative bounds on the real torus
* `step:p3:phase-fixed-point` [PROPOSED] — Fixed-point form
* `step:p3:phase-real` [PROPOSED] — Realness
* `step:p3:quad-combine` [PROPOSED] — Return to $\Delta$
* `step:p3:quad-normal` [PROPOSED] — The normal coordinate
* `step:p3:quad-normal-avg` [PROPOSED] — Average of the normal coordinate
* `step:p3:quad-normal-osc` [PROPOSED] — Oscillating part of the normal coordinate
* `step:p3:quad-remainder` [PROPOSED] — The remainder
* `step:p3:quad-tangent` [PROPOSED] — The tangential coordinate
* `step:p3:red-assembly` [PROPOSED] — Assembly
* `step:p3:red-frame` [PROPOSED] — Symplectic frame
* `step:p3:red-holomorphy` [PROPOSED] — Holomorphy
* `step:p3:red-normal` [PROPOSED] — Normal columns
* `step:p3:red-tangent` [PROPOSED] — Tangent columns
* `step:p3:torsion-bound-step` [PROPOSED] — Bound
* `step:p3:torsion-holomorphy` [PROPOSED] — Holomorphy
* `step:p4:apply-g1` [PROPOSED] — Application of G1 at the unperturbed torus
* `step:p4:cm-proof` [PROPOSED] — Same witnesses
* `step:p4:count-projection` [PROPOSED] — Projection to the first $n-1$ coordinates
* `step:p4:db-cauchy` [PROPOSED] — Cauchy estimates
* `step:p4:db-polydisc` [PROPOSED] — Polydiscs
* `step:p4:db-vectorfield` [PROPOSED] — From $D\pfh$ to $X_\pfh$
* `step:p4:dy-exhaust` [PROPOSED] — Dyadic exhaustion
* `step:p4:dy-layer` [PROPOSED] — Boundary layer
* `step:p4:dy-open` [PROPOSED] — The open set
* `step:p4:fm-bounds` [PROPOSED] — Bounds
* `step:p4:fm-domain` [PROPOSED] — The real domain
* `step:p4:fm-gradient` [PROPOSED] — Guarded fact: the frozen frequency map is the gradient
* `step:p4:fm-hessian` [PROPOSED] — The Hessian
* `step:p4:fm-lipschitz` [PROPOSED] — Lipschitz bound on $B$
* `step:p4:g3-cube` [PROPOSED] — Bounding cube and constant
* `step:p4:g3-n0` [PROPOSED] — The case $n=0$
* `step:p4:g3-sum` [PROPOSED] — Summation
* `step:p4:g3-union` [PROPOSED] — Union of slabs
* `step:p4:h1-bounds` [PROPOSED] — Derivative bounds
* `step:p4:h1-holo` [PROPOSED] — Holomorphy, periodicity, reality
* `step:p4:h1-open` [PROPOSED] — Openness and invariance
* `step:p4:hbdd-compact` [PROPOSED] — A compact set between the neighbourhoods
* `step:p4:hbdd-continuity` [PROPOSED] — Continuity
* `step:p4:head-constants` [PROPOSED] — Constants
* `step:p4:head-empty` [PROPOSED] — Empty action domain
* `step:p4:head-negative` [PROPOSED] — Negative $\varepsilon$
* `step:p4:head-positive` [PROPOSED] — Positive $\varepsilon$
* `step:p4:head-zero` [PROPOSED] — Vanishing perturbation
* `step:p4:hess-norm` [PROPOSED] — Inverse and its norm
* `step:p4:hess-quotient` [PROPOSED] — Difference quotients
* `step:p4:hq-approx` [PROPOSED] — Inner approximation
* `step:p4:hq-cover` [PROPOSED] — Comparison of covers
* `step:p4:hq-head` [PROPOSED] — HEAD for $B'$
* `step:p4:hq-transfer` [PROPOSED] — Transfer of the perturbation hypotheses
* `step:p4:hq-trivial` [PROPOSED] — Trivial cases
* `step:p4:invfreq-proof` [PROPOSED] — Inverse Lipschitz bound
* `step:p4:lag-exact` [PROPOSED] — $\Lambda$ is a sum of derivatives
* `step:p4:lag-regular` [PROPOSED] — Regularity and periodicity
* `step:p4:lag-transport` [PROPOSED] — $\Lambda$ is constant along $\omega$
* `step:p4:lag-unique` [PROPOSED] — Uniqueness for the cohomological equation
* `step:p4:latsum-integral` [PROPOSED] — Integral comparison
* `step:p4:latsum-shells` [PROPOSED] — Summation by shells
* `step:p4:le-basic` [PROPOSED] — Elementary properties
* `step:p4:le-f` [PROPOSED] — The perturbation
* `step:p4:le-h` [PROPOSED] — The integrable part: a mixed difference
* `step:p4:le-split` [PROPOSED] — Splitting the error
* `step:p4:le-sum` [PROPOSED] — Sum
* `step:p4:le-transport` [PROPOSED] — The transport term
* `step:p4:lip-close` [PROPOSED] — Conclusion for close pairs
* `step:p4:lip-far` [PROPOSED] — Far pairs
* `step:p4:lip-g1` [PROPOSED] — Re-application of G1 at $\omega'$
* `step:p4:lip-g2` [PROPOSED] — Local uniqueness at $\omega'$
* `step:p4:lip-phase` [PROPOSED] — The phase is controlled by normalization
* `step:p4:mixed-proof` [PROPOSED] — Two mean value inequalities
* `step:p4:ml-good` [PROPOSED] — Two good actions
* `step:p4:ml-mixed` [PROPOSED] — A good action and a boundary action
* `step:p4:ml-size` [PROPOSED] — Disjointness and size
* `step:p4:mm-bad` [PROPOSED] — Bad actions
* `step:p4:mm-complement` [PROPOSED] — The complement is the image of bad actions
* `step:p4:mm-count` [PROPOSED] — Measure count
* `step:p4:mm-extension` [PROPOSED] — Extension and lipeomorphism
* `step:p4:mm-tori` [PROPOSED] — Good actions lie on tori
* `step:p4:mn-rowsum` [PROPOSED] — Row sums
* `step:p4:normalize-proof` [PROPOSED] — Shift of the G1 output
* `step:p4:pm-proof` [PROPOSED] — Image under the inverse frequency map
* `step:p4:rt-analytic` [PROPOSED] — Analyticity and primarity
* `step:p4:rt-cover` [PROPOSED] — Cover clauses
* `step:p4:rt-embedding` [PROPOSED] — Embedding modulo $\Z^n$
* `step:p4:rt-immersion` [PROPOSED] — Immersion
* `step:p4:rt-lagrangian` [PROPOSED] — Lagrangian
* `step:p4:rt-ode` [PROPOSED] — Hamilton's equations
* `step:p4:rt-small` [PROPOSED] — Small angle displacement
* `step:p4:shift-phase` [PROPOSED] — Phase average
* `step:p4:shift-translation` [PROPOSED] — Translation
* `step:p4:slab-coordinate` [PROPOSED] — A dominant coordinate
* `step:p4:slab-fubini` [PROPOSED] — Fubini in the coordinate $\omega_i$
* `step:p4:small-proof` [PROPOSED] — Reduction to $c_*$
* `step:p4:stab-ball` [PROPOSED] — Neighbourhood
* `step:p4:stab-cauchy` [PROPOSED] — Cauchy estimates
* `step:p4:stab-frame` [PROPOSED] — Normal frame
* `step:p4:stab-gram` [PROPOSED] — Gram matrix
* `step:p4:stab-h2h4` [PROPOSED] — The hypotheses H2--H4
* `step:p4:stab-small` [PROPOSED] — Smallness bookkeeping
* `step:p4:stab-torsion` [PROPOSED] — Torsion
* `step:p4:stab-twist` [PROPOSED] — Twist
* `step:p4:stab-xn` [PROPOSED] — The vector $X_N$
* `step:p4:tr-inverse` [PROPOSED] — Inverse
* `step:p4:tr-periodic` [PROPOSED] — Periodicity
* `step:p4:tr-torsion` [PROPOSED] — Frame and torsion
* `step:p4:unp-ball` [PROPOSED] — Neighbourhood
* `step:p4:unp-error` [PROPOSED] — Invariance error
* `step:p4:unp-frame` [PROPOSED] — Frame and Gram matrix
* `step:p4:unp-normal` [PROPOSED] — Normal frame
* `step:p4:unp-torsion` [PROPOSED] — Torsion
* `step:p4:unp-twist` [PROPOSED] — Twist

### Dependency leaves in root closure

* `bp:p0:diophantine#IsDiophantine` [PROPOSED] — Diophantine vectors: KAM.IsDiophantine
* `bp:p0:domains#actionNbhd` [PROPOSED] — Complex neighbourhoods and the fundamental domain: KAM.actionNbhd
* `bp:p0:domains#complexStrip` [PROPOSED] — Complex neighbourhoods and the fundamental domain: KAM.complexStrip
* `bp:p0:domains#fundamentalDomain` [PROPOSED] — Complex neighbourhoods and the fundamental domain: KAM.fundamentalDomain
* `bp:p0:hamiltonian#hamiltonianVectorField` [PROPOSED] — Hamiltonian vector fields, symplectic form: KAM.hamiltonianVectorField
* `bp:p0:hamiltonian#hamiltonianVectorFieldC` [PROPOSED] — Hamiltonian vector fields, symplectic form: KAM.hamiltonianVectorFieldℂ
* `bp:p0:hamiltonian#omegaZero` [PROPOSED] — Hamiltonian vector fields, symplectic form: KAM.omegaZero
* `bp:p0:hamiltonian#symplecticForm` [PROPOSED] — Hamiltonian vector fields, symplectic form: KAM.symplecticForm
* `bp:p0:nearlyintegrable#frequencyMap` [PROPOSED] — The integrable part, the perturbation, the frequency map: KAM.frequencyMap
* `bp:p0:nearlyintegrable#realHamiltonian` [PROPOSED] — The integrable part, the perturbation, the frequency map: KAM.realHamiltonian
* `bp:p0:stripdata#IsRealOnReals` [PROPOSED] — Torus data on strips: KAM.IsRealOnReals
* `bp:p0:stripdata#dotC` [PROPOSED] — Torus data on strips: KAM.dotℂ
* `bp:p1:ext-banach` [PROPOSED] — Banach's fixed point theorem
* `bp:p1:ext-cauchy` [PROPOSED] — Cauchy's formulas in one variable
* `bp:p1:ext-cramer` [PROPOSED] — Cramer's rule
* `bp:p1:ext-fourier` [PROPOSED] — Fourier series on the torus
* `bp:p1:ext-identity` [PROPOSED] — Identity theorem in one variable
* `bp:p1:ext-integral` [PROPOSED] — Integrals
* `bp:p1:ext-lebesgue` [PROPOSED] — Lebesgue outer measure
* `bp:p1:ext-mvt` [PROPOSED] — Mean value inequality
* `bp:p1:ext-rectangle` [PROPOSED] — Cauchy's theorem for rectangles
* `bp:p1:ext-schwarz` [PROPOSED] — Symmetry of second derivatives
* `bp:p1:lip-image-product#product-lebesgue` [PROPOSED] — Product of Lebesgue measures is Lebesgue measure on R^{2n}
* `bp:p1:lipeo-fixed` [PROPOSED] — Bijections fixing a set
* `bp:p1:real-restriction-consequences` [PROPOSED] — Real restrictions of linear and primary maps
* `bp:p4:phase-average` [PROPOSED] — Angle displacement and phase average
* `step:p1:es-power` [PROPOSED] — The power times the exponential
* `step:p1:es-product` [PROPOSED] — Product structure
* `step:p1:han-margin` [PROPOSED] — A larger polydisc
* `step:p1:hr-derivative` [PROPOSED] — The real derivative
* `step:p1:it-linear` [PROPOSED] — The form linear in $y_0$
* `step:p1:it-super` [PROPOSED] — Super-exponential decay
* `step:p1:li-image` [PROPOSED] — Image of one cube
* `step:p1:lipeo-bounds` [PROPOSED] — Bi-Lipschitz bounds
* `step:p1:mc-component` [PROPOSED] — One component
* `step:p1:mn-transpose` [PROPOSED] — Transposes
* `step:p1:opn-rowsum` [PROPOSED] — Row sums
* `step:p1:pb-compact` [PROPOSED] — A compact fundamental set
* `step:p1:rr-derivative` [PROPOSED] — The derivative
* `step:p1:sum-bound` [PROPOSED] — Convergence and the bound
* `step:p3:diff-linearized` [PROPOSED] — Linearized equation
* `step:p3:phase-fixed-point` [PROPOSED] — Fixed-point form
* `step:p4:count-projection` [PROPOSED] — Projection to the first $n-1$ coordinates
* `step:p4:dy-exhaust` [PROPOSED] — Dyadic exhaustion
* `step:p4:fm-domain` [PROPOSED] — The real domain
* `step:p4:hbdd-compact` [PROPOSED] — A compact set between the neighbourhoods
* `step:p4:head-empty` [PROPOSED] — Empty action domain
* `step:p4:head-negative` [PROPOSED] — Negative $\varepsilon$
* `step:p4:hq-trivial` [PROPOSED] — Trivial cases
* `step:p4:latsum-integral` [PROPOSED] — Integral comparison
* `step:p4:slab-coordinate` [PROPOSED] — A dominant coordinate

### Assumption boundary leaves

* _(none)_

### External boundary leaves

* `bp:p1:ext-banach` [PROPOSED] — Banach's fixed point theorem
* `bp:p1:ext-cauchy` [PROPOSED] — Cauchy's formulas in one variable
* `bp:p1:ext-cramer` [PROPOSED] — Cramer's rule
* `bp:p1:ext-fourier` [PROPOSED] — Fourier series on the torus
* `bp:p1:ext-identity` [PROPOSED] — Identity theorem in one variable
* `bp:p1:ext-integral` [PROPOSED] — Integrals
* `bp:p1:ext-lebesgue` [PROPOSED] — Lebesgue outer measure
* `bp:p1:ext-mvt` [PROPOSED] — Mean value inequality
* `bp:p1:ext-rectangle` [PROPOSED] — Cauchy's theorem for rectangles
* `bp:p1:ext-schwarz` [PROPOSED] — Symmetry of second derivatives

### Uncovered graph nodes

* _(none)_

### Nodes outside every root closure

* _(none)_

### Explicit source gaps

* `bp:p1:lip-image-product#product-lebesgue` [PROPOSED] — Product of Lebesgue measures is Lebesgue measure on R^{2n}
<!-- END PROOF DEPGRAPH GENERATED -->
