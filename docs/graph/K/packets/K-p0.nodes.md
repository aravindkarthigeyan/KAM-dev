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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0+sol-review-r1
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0+sol-review-r1
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0+sol-review-r1
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
EDGE: bp:p0:head | blueprint/parts/p4-measure.tex#step:p4:hq-head@L1278-L1284 | HEAD applied to B-prime; its premises are supplied at L1278-L1282, with perturbation restriction at L1288-L1292
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p0-conventions.tex#bp:p0:headq@L119-L119 | strip T_{s_0} in D(s_0,r_0)
EDGE: bp:p0:domains#actionNbhd | blueprint/parts/p0-conventions.tex#bp:p0:headq@L119-L119 | B_{r_0} in the phase domain and in h holomorphic on B_{r_0}
EDGE: bp:p0:domains#fundamentalDomain | blueprint/parts/p0-conventions.tex#bp:p0:headq@L120-L120 | F_B in the conclusion
EDGE: bp:p0:cover#kamCover | blueprint/parts/p0-conventions.tex#bp:p0:headq@L120-L120 | K(kappa) in the qualitative conclusion
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p0-conventions.tex#bp:p0:headq@L119-L119 | nabla h in the nondegeneracy inequality
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0+sol-review-r1
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p0
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
