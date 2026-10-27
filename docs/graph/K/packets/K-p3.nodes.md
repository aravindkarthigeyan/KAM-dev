NODE: bp:p3:standing
KIND: definition
TITLE: Two invariant tori
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L55-L93
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
DEPS: bp:p0:diophantine#IsDiophantine, bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals, bp:p0:stripdata#invarianceError, bp:p0:stripdata#gramMatrix, bp:p0:stripdata#normalFrame, bp:p0:stripdata#torsion, bp:p0:stripdata#torsionAverage, bp:p2:standing, bp:p2:objects
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
EDGE: bp:p2:standing | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L74-L77 | S1-S2 supply the Part 2 standing package with the same n,tau,M,sigma parameters; S3 supplies the additional torus premises when a Part 2 result is applied
EDGE: bp:p2:objects | blueprint/parts/p3-uniqueness.tex#bp:p3:standing@L77-L88 | the frame, torsion and error notation are specialized from the objects of Part 2 at K=K_1
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r3
REVIEWER: sol-review-r1
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.{Params, S1, S2, S3, S4}, KAM.Uniq.standing_of
LEAN_NOTE: standing data and constants per the audited design; audit docs/campaign/audits/P3-0-audit-1.md; kernel replay passed (2026-10-27)
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.matrix_norms
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P3-1-audit-1.md; kernel replay passed (2026-10-27)
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.lagrangian
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P3-1-audit-1.md; kernel replay passed (2026-10-27)
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
LEAN_STATUS: BYPASSED
LEAN_REF: -
LEAN_NOTE: route substitution (D27): KAM.Uniq.lagrangian uses the operator a-priori bound of KAM.Apost.cohomological with H = 0 instead of uniqueness with g = 0; audit docs/campaign/audits/P3-1-audit-1.md (D1) confirms validity
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.frequency_bound
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P3-1-audit-1.md; kernel replay passed (2026-10-27)
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.reducibility
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P3-1-audit-1.md; kernel replay passed (2026-10-27)
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.torsion_bound
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P3-1-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p3:torsion-holomorphy
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L248-L252
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L248-L252
CONTRACT_ID: step:p3:torsion-holomorphy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed parameters of Part 3 at L50; hypotheses (S1)-(S3) of bp:p3:standing; the frame and torsion objects at K_1 have the definitions at L81-L88
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: X_N and T=BL^T X_N are holomorphic, hence continuous on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, bp:p2:hamiltonian, bp:p1:holomorphic-regularity, bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L249 | N holomorphic; T=BL^T X_N
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L250-L251 | (a) gives holomorphic X_h on the open domain; the derivative-regularity edge gives holomorphic DX_h
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L251 | derivatives of N and X_h are holomorphic on the relevant open domains
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:torsion-holomorphy@L249-L252 | S1-S3 supply the Part 2 Hamiltonian package and holomorphic K_1 with its image in the open ambient domain for composition
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3+sol-review-d2
REVIEWER: sol-review-d3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.phase (def KAM.Uniq.diffMap)
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P3-2-audit-1.md; kernel replay passed (2026-10-27)
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.PhaseAux.im_integrand
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P3-2-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p3:phase-fixed-point
KIND: step
TITLE: Fixed-point form
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L302-L312
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L302-L312
CONTRACT_ID: step:p3:phase-fixed-point
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed parameters of Part 3 at L50; hypotheses (S1)-(S4) of bp:p3:standing; eta=sup_{T_rho}|K_2-K_1|; eta<=rho/(4n C_P(1+2 C_P sigma_K)); W=K_2-K_1; frame objects have their source definitions
SOURCE_QUANTIFIERS: theta,psi in R^n
SOURCE_CONCLUSION: normalization holds iff Phi(psi)=psi for Phi(psi)=-avg(BL^T(W(.+psi)+K_1(.+psi)-K_1-L psi))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:phase-real, bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:phase-real | blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L308-L310 | the two averaged integrands are real, so Phi is a map R^n to R^n
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r1
REVIEWER: sol-review-d2
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.PhaseAux.exists_fixedPoint
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P3-2-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:phase-fixed-point@L303-L306 | B=(L^T L)^{-1} at L85 and invertibility in S3 give BL^T L=I for the fixed-point identity

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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.PhaseAux.norm_sub_le_real, norm_taylor_defect_le
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P3-2-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p3:phase-contraction
KIND: step
TITLE: Contraction
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L322-L337
PROOF_SOURCE: blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L322-L337
CONTRACT_ID: step:p3:phase-contraction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the fixed parameters of Part 3 at L50; hypotheses (S1)-(S4) of bp:p3:standing; eta=sup_{T_rho}|K_2-K_1|; eta<=rho/(4n C_P(1+2 C_P sigma_K)); W=K_2-K_1; frame objects have their source definitions; Phi is defined at L308-L310; Y={psi in R^n: |psi|<=2 C_P eta}
SOURCE_QUANTIFIERS: psi,psi' in Y
SOURCE_CONCLUSION: Phi maps Y into Y and is a contraction with constant 1/2
CONSTANT_SCOPE: C_P as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p3:phase-derivatives, step:p3:phase-fixed-point, bp:p3:matrix-norms, bp:p1:ext-integral, bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p3:phase-derivatives | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L328-L328 | Lipschitz bounds on W and L
EDGE: step:p3:phase-fixed-point | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L332-L332 | definition of Phi
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L330-L330 | abs BL^Tabs <=C_P
EDGE: bp:p1:ext-integral | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L325-L336 | fundamental theorem of calculus along the real segment and norm-of-integral bounds for the segment integral and the averages
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:phase-contraction@L323-L337 | the inherited phase-lemma package fixes the reference frame and real tori used in the segment integral; the local phase-small bound is L281-L282
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3+sol-review-d2
REVIEWER: sol-review-d3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.PhaseAux.norm_phaseMap_sub_le
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P3-2-audit-1.md; kernel replay passed (2026-10-27)
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.phase
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/P3-2-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: bp:p3:difference-equation
KIND: lemma
TITLE: The difference in the frame
STATEMENT_SOURCE: blueprint/parts/p3-uniqueness.tex#bp:p3:difference-equation@L350-L373
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r3
REVIEWER: sol-review-r1
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
SOURCE_HYPOTHESES: the fixed parameters of Part 3 at L50; hypotheses (S1)-(S4) of bp:p3:standing; psi in R^n; Delta(theta)=K_2(theta+psi)-K_1(theta) on T_rho; ||Delta||_rho<mu; R=X_h(K_1+Delta)-X_h(K_1)-DX_h(K_1)Delta, xi=P^{-1}Delta and q=P^{-1}R are the constructions at L363-L367
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: Delta,xi,q holomorphic; Delta,xi 1-periodic; Delta=P xi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, bp:p2:periodicity, bp:p2:hamiltonian, bp:p1:holomorphic-regularity, bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L382-L382 | P^{-1} holomorphic, explicit formula
EDGE: bp:p2:periodicity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L384-L384 | L is 1-periodic
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L378-L380 | S1-S2 supply the Part 2 standing package; X_h is holomorphic on B and the ball inclusion puts the composed arguments there
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L380-L380 | DX_h is holomorphic because X_h is holomorphic on the open domain, so the remainder R is holomorphic
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:diff-regularity@L377-L384 | S3-S4 supply holomorphy and primarity of both tori, and S3 supplies the radius-mu ball in the ambient domain
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3+sol-review-d2
REVIEWER: sol-review-d3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
SOURCE_HYPOTHESES: the fixed parameters of Part 3 at L50; hypotheses (S1)-(S4) of bp:p3:standing; psi in R^n; Delta(theta)=K_2(theta+psi)-K_1(theta) on T_rho; ||Delta||_rho<mu; R=X_h(K_1+Delta)-X_h(K_1)-DX_h(K_1)Delta, xi=P^{-1}Delta and q=P^{-1}R are the constructions at L363-L367
SOURCE_QUANTIFIERS: on T_rho
SOURCE_CONCLUSION: d_omega xi=Lambda xi+q, i.e. part (b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:reducibility, step:p3:diff-linearized, step:p3:diff-regularity, bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L395-L395 | triangular reduction identity
EDGE: step:p3:diff-linearized | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L394 | linearized equation for Delta
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L394 | the established identity Delta=P xi permits substitution into the differential equation
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:diff-triangular@L394-L397 | S1-S3 are the local source package for the exact reducibility application; S4 is inherited from the difference-lemma data
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3+sol-review-d2
REVIEWER: sol-review-d3
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
SOURCE_HYPOTHESES: the fixed parameters of Part 3 at L50; hypotheses (S1)-(S4) of bp:p3:standing; psi in R^n; Delta(theta)=K_2(theta+psi)-K_1(theta) on T_rho; ||Delta||_rho<mu; R=X_h(K_1+Delta)-X_h(K_1)-DX_h(K_1)Delta, xi=P^{-1}Delta and q=P^{-1}R are the constructions at L363-L367
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: |xi|<=C_P|Delta|, |Delta|<=C_P|xi|, |R|<=(1/2)M|Delta|^2, |q|<=(1/2)C_P M|Delta|^2
CONSTANT_SCOPE: C_P as in the setting
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p3:matrix-norms, bp:p1:taylor, bp:p2:hamiltonian, step:p3:diff-regularity, bp:p1:holomorphic-regularity, bp:p3:reducibility, bp:p3:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p3:matrix-norms | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401 | abs Pabs ,abs P^{-1}abs <=C_P
EDGE: bp:p1:taylor | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L401-L401 | second-order Taylor bound on R
EDGE: bp:p2:hamiltonian | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L402-L402 | (a): X_h holomorphic on B
EDGE: step:p3:diff-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L403-L403 | segment lies in B
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L405-L405 | abs D^2X_habs =abs D(DX_h)abs
EDGE: bp:p3:reducibility | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L400-L401 | P^{-1}=(BL^T;-L^T Omega_0), so the stacked-matrix bound of matrix-norms applies to P^{-1}
EDGE: bp:p3:standing | blueprint/parts/p3-uniqueness.tex#step:p3:diff-bounds@L400-L405 | S1 supplies the bilinear second-derivative bound M in the Taylor application; S3 supplies the frame bounds
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3+sol-review-d2
REVIEWER: sol-review-d3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
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
SOURCE_HYPOTHESES: n>=2, tau>=n-1, rho>0, M,sigma_K,sigma_B,sigma_T>0; c(n,tau) is the constant of bp:p1:cohomological; no B,h,K_1,K_2,omega,gamma or package (S1)-(S4) is assumed
SOURCE_QUANTIFIERS: n,tau,rho,M,sigma_K,sigma_B,sigma_T fixed before any data; then C_P, Gamma, C_tor, C_coh, C^N, C^L, C_quad
SOURCE_CONCLUSION: defines C_P=2n sigma_K(1+sigma_B), Gamma=C_P M, C_tor=C_P^2 M(1+4n C_P/rho), C_coh=c(n,tau), C^N=(1/2)C_P M[(1+sigma_T C_tor)C_coh+sigma_T Gamma rho^{tau+n}], C^L=C_coh[C_tor C^N+(1/2)C_P M Gamma rho^{tau+n}], C_quad=C_P max{C^L,Gamma rho^{tau+n} C^N}; forward descriptions at L113-L117 add no dependencies
CONSTANT_SCOPE: all constants depend only on n,tau,rho,M,sigma_K,sigma_B,sigma_T (C_coh only on n,tau; C_P only on n,sigma_K,sigma_B); not on gamma, mu or the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p3-uniqueness.tex#bp:p3:standing#constants@L104-L104 | C_coh is the constant c(n,tau) of that lemma
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3+sol-review-r3
REVIEWER: sol-review-r1
LEAN_STATUS: PROVED
LEAN_REF: KAM.Uniq.{C_P, C_Gamma, C_tor, C_coh, C_N, C_L, C_quad}, KAM.Uniq.threshold
LEAN_NOTE: standing data and constants per the audited design; audit docs/campaign/audits/P3-0-audit-1.md; kernel replay passed (2026-10-27)
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p3
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: ADDED step: reused intermediate inequality (eq:p3:absorb), used in four steps
