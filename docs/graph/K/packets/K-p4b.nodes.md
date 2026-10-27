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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: PROVED
LEAN_REF: KAM.Head.angleDisplacement, phaseAverage, IsNormalized, phaseShift (+ continuous_angleDisplacement_ofReal, angleDisplacement_ofReal_im, ofReal_phaseAverage_eq_integral)
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P4A-audit-1.md; kernel replay passed (2026-10-27)
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: PROVED
LEAN_REF: KAM.Head.phase_shift
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P4B-audit-1.md; kernel replay passed (2026-10-27)
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: PROVED
LEAN_REF: KAM.Head.{differentiableOn,isPrimaryOnStrip,isRealOnReals}_phaseShift, fderiv_phaseShift, invarianceError_phaseShift, phaseShift_transfer
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P4B-audit-1.md; kernel replay passed (2026-10-27)
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
DEPS: bp:p1:periodic-average, bp:p4:phase-average, bp:p4:data, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:periodic-average | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L714-L714 | real parts of u_K(i(x+a)) averaged over the period cell, shift invariance
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L712-L714 | u_K, ph(K) defined there
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L715-L715 | K0_{I*} and u_{K0}=0
EDGE: bp:p1:ext-integral | blueprint/parts/p4-measure.tex#step:p4:shift-phase@L714-L717 | The bound on the phase uses the integral norm bound on a unit-volume cube
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
LEAN_STATUS: PROVED
LEAN_REF: KAM.Head.phaseAverage_phaseShift, isNormalized_phaseShift_iff, norm_phaseAverage_le, norm_phaseShift_sub_le
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P4B-audit-1.md; kernel replay passed (2026-10-27)
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
DEPS: bp:p4:apply, bp:p4:phase-average, bp:p4:inverse-freq, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:apply | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L721-L721 | K^inf_omega is a torus given by APPLY
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L723-L723 | ph and the shift K^[a] defined there
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L724-L724 | K0_omega=K0_{I_omega}, I_omega
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:normalized-torus@L720-L726 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
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
DEPS: bp:p4:normalized-torus, bp:p4:parameters, step:p4:normalize-proof, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalized-torus | blueprint/parts/p4-measure.tex#bp:p4:normalize@L729-L729 | K_omega, W_omega defined there
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:normalize@L729-L729 | standing assumption (SA), sigma_K, mu, eta_0
EDGE: step:p4:normalize-proof | blueprint/parts/p4-measure.tex#bp:p4:normalize@L737-L737 | proof step of this result
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:normalize@L728-L734 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d2
REVIEWER: sol-review-d3
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
EDGE: step:p4:mixed-proof | blueprint/parts/p4-measure.tex#bp:p4:mixed-difference@L809-L817 | Use the actual proof step rather than the bare proof-environment line L808
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: PROVED
LEAN_REF: KAM.Head.mixed_difference
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P4B-audit-1.md; kernel replay passed (2026-10-27)
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
EDGE: bp:p1:ext-mvt | blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L810-L817 | Mean value inequality is applied on the parallelogram segments
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:mixed-proof@L812-L813 | Holomorphic regularity is used at L812-L813, not L811
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: PROVED
LEAN_REF: KAM.Head.mixed_difference_of_finiteDimensional
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P4B-audit-1.md; kernel replay passed (2026-10-27)
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
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
DEPS: bp:p4:inverse-freq, bp:p4:smallness, bp:p4:parameters, bp:p4:SA, bp:p4:normalize
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:le-basic@L834-L834 | /Delta I/<=L_+/Delta omega/
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:le-basic@L835-L836 | (s3) is consumed at L836, not L835
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:le-basic@L834-L835 | Definition of lambda_* in the action-shift bound
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:le-basic@L832-L836 | Missing direct dependency on the explicit local package (SA), required by SPEC
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:le-basic@L833-L836 | Holomorphy, primarity, reality and ¦W_omega¦<=eta_0 must be supplied, not inferred from smallness alone
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
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
EDGE: bp:p4:mixed-difference | blueprint/parts/p4-measure.tex#step:p4:le-h@L854-L858 | The mixed-difference lemma is invoked at L857, not L856
EDGE: step:p4:le-split | blueprint/parts/p4-measure.tex#step:p4:le-h@L854-L858 | P_h from the error decomposition is consumed in the estimate
EDGE: step:p4:le-basic | blueprint/parts/p4-measure.tex#step:p4:le-h@L854-L858 | Parallelogram containment uses the earlier action-shift bound
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:le-h@L854-L858 | The estimate uses ¦v_omega¦<=eta_0
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
EDGE: bp:p1:increments-open | blueprint/parts/p4-measure.tex#step:p4:le-f@L861-L865 | The increment lemma is invoked at L864, not L863
EDGE: bp:p4:derivative-bounds | blueprint/parts/p4-measure.tex#step:p4:le-f@L863-L865 | The DX_f bound is used at L864
EDGE: step:p4:le-split | blueprint/parts/p4-measure.tex#step:p4:le-f@L861-L865 | The P_f expression is consumed in this increment estimate
EDGE: step:p4:le-basic | blueprint/parts/p4-measure.tex#step:p4:le-f@L861-L861 | 3delta_*/4 bound
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d2
REVIEWER: sol-review-d3
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
DEPS: bp:p4:normalize, bp:p4:lip-error, bp:p4:parameters, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:lip-far@L886-L886 | /W_omega/<=eta_0
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-far@L888-L888 | K',E' for close pairs
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:lip-far@L887-L887 | lambda_*, A_0, A_1
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:lip-far@L885-L890 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d2
REVIEWER: sol-review-d3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
DEPS: bp:p1:periodic-average, step:p4:lip-g2, bp:p4:normalize, bp:p4:phase-average, step:p4:lip-g1, bp:p4:lip-error, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:periodic-average | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L930-L934 | The average lemma is invoked at L931
EDGE: step:p4:lip-g2 | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L930-L930 | The shifted-torus identity is used in the first formula, not the heading
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L931-L931 | ph(K_omega')=ph(K_omega)=0
EDGE: bp:p4:phase-average | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L930-L930 | u_K, ph
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L933-L933 | /K~-K'/<=d_1
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L932-L932 | K' and K_omega share angle component
EDGE: bp:p1:ext-integral | blueprint/parts/p4-measure.tex#step:p4:lip-phase@L933-L934 | The bound ¦phi¦<=d_1 uses the integral norm inequality
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
EDGE: bp:p1:increments | blueprint/parts/p4-measure.tex#step:p4:lip-close@L940-L944 | The increment lemma is invoked at L942, not the display delimiter at L941
EDGE: step:p4:lip-phase | blueprint/parts/p4-measure.tex#step:p4:lip-close@L940-L940 | The phase bound is used in the last inequality at L940
EDGE: step:p4:lip-g1 | blueprint/parts/p4-measure.tex#step:p4:lip-close@L940-L944 | The G1 distance and derivative bounds are used at L940-L944
EDGE: step:p4:lip-g2 | blueprint/parts/p4-measure.tex#step:p4:lip-close@L937-L937 | K_omega'(theta)=K~(theta-i phi)
EDGE: bp:p4:lip-error | blueprint/parts/p4-measure.tex#step:p4:lip-close@L938-L938 | W_omega'-W_omega=K_omega'-K'
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:lip-close@L944-L944 | A_2, A_3 definitions
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
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
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:lag-regular@L975-L978 | DK holomorphy is cited at L977
EDGE: bp:p1:periodic-bounded | blueprint/parts/p4-measure.tex#step:p4:lag-regular@L977-L978 | The periodic boundedness lemma is cited at L978
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
EDGE: step:p4:lag-regular | blueprint/parts/p4-measure.tex#step:p4:lag-exact@L987-L988 | The averages application consumes bounded periodic holomorphic factors
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
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
EDGE: bp:p1:cohomological | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1002-L1005 | Cohomological uniqueness is invoked at L1002, not the heading
EDGE: step:p4:lag-exact | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1004-L1004 | avg Lambda_ij=0
EDGE: step:p4:lag-transport | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1004-L1005 | The transport step is invoked at L1005
EDGE: bp:p1:strip-identity | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1006-L1006 | extension from T_{rho/4} to T_rho
EDGE: step:p4:lag-regular | blueprint/parts/p4-measure.tex#step:p4:lag-unique@L1003-L1003 | Lambda holomorphic periodic
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d2
REVIEWER: sol-review-d3
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d2
REVIEWER: sol-review-d3
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
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-small@L1031-L1033 | The real derivative restriction is used at L1032
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:rt-small@L1031-L1031 | (s3): 16 n eta_0/s<=1/2
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-small@L1029-L1029 | W_omega bounded and holomorphic
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
EDGE: step:p4:rt-small | blueprint/parts/p4-measure.tex#step:p4:rt-immersion@L1036-L1037 | The derivative bound is consumed in the lower bound, not the heading
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
DEPS: step:p4:rt-small, bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:rt-small | blueprint/parts/p4-measure.tex#step:p4:rt-embedding@L1041-L1041 | /D u~/<=1/2 and periodicity of u~
EDGE: bp:p1:ext-mvt | blueprint/parts/p4-measure.tex#step:p4:rt-embedding@L1041-L1043 | The derivative bound is integrated along the real segment on the convex set R^n
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
EDGE: bp:p4:lagrangian | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1046-L1050 | The Lagrangian lemma is applied at L1046
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1046-L1046 | K_omega properties
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1049-L1050 | Matrix-form comparison with the real symplectic form occurs at L1049-L1050
EDGE: bp:p1:real-restriction | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1049-L1049 | derivative of real restriction
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:rt-lagrangian@L1048-L1048 | (s1): eps<=1
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
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
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1097-L1098 | Inverse Lipschitz use is at L1097-L1098, not the heading
EDGE: bp:p1:lip-image | blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1099-L1099 | The image-measure lemma is invoked at L1099
EDGE: bp:p0:g3 | blueprint/parts/p4-measure.tex#step:p4:pm-proof@L1099-L1099 | measure of non-Diophantine frequencies
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
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
DEPS: bp:p4:inverse-freq, bp:p4:real-torus, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1109-L1109 | g(I) in Omega_gamma and I_{g(I)}=I
EDGE: bp:p4:real-torus | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1107-L1107 | k_omega, real restriction of K_omega
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:good-actions@L1102-L1111 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:map-lipschitz
KIND: lemma
TITLE: The displacement is small and $\tfrac12$-Lipschitz
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1113-L1116
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:map-lipschitz@L1118-L1140
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
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
DEPS: bp:p4:normalize, bp:p4:good-actions, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:normalize | blueprint/parts/p4-measure.tex#step:p4:ml-size@L1121-L1121 | /W_omega/<=eta_0
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:ml-size@L1120-L1121 | A_gamma, Z, G_0
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:ml-size@L1119-L1121 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d2
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:ml-mixed
KIND: step
TITLE: A good action and a boundary action
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1139
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1139
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
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1137-L1137 | (s7): eta_0<=gamma/2
EDGE: step:p4:ml-size | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1138-L1138 | /G_0/<=eta_0
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1134-L1136 | A_gamma, Z, G_0
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:ml-mixed@L1133-L1139 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d3
REVIEWER: sol-review-d4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: repaired F1: the 1-Lipschitz property of infDist(.,B^c) is now proved inline in the step

NODE: bp:p4:main-measure
KIND: theorem
TITLE: Measure of the complement at a given $\gamma$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1142-L1149
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1151-L1186
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
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1152-L1152 | proof step
EDGE: step:p4:mm-tori | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1160-L1160 | proof step
EDGE: step:p4:mm-complement | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1164-L1164 | proof step
EDGE: step:p4:mm-bad | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1173-L1173 | proof step
EDGE: step:p4:mm-count | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1179-L1179 | proof step
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1147-L1147 | cover appearing in the conclusion
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1142-L1149 | Missing direct dependency on the explicit local package (SA), required by SPEC
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1144-L1144 | C_B^+ and L_+ in the definition of C_meas
EDGE: bp:p4:preimage-measure | blueprint/parts/p4-measure.tex#bp:p4:main-measure@L1144-L1144 | C_3^+ in C_meas is the G3 constant fixed for g(B) in preimage-measure
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-extension
KIND: step
TITLE: Extension and lipeomorphism
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1152-L1158
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1152-L1158
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
EDGE: bp:p4:map-lipschitz | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1153-L1153 | G_0 bounded and 1/2-Lipschitz on S
EDGE: bp:p1:mcshane | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1153-L1153 | McShane extension with clamping
EDGE: bp:p1:lipeo | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1157-L1157 | id+Gbar is a lipeomorphism
EDGE: bp:p1:lip-image-product | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1157-L1157 | product-space image estimate
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1155-L1155 | S and G_0
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:mm-extension@L1157-L1157 | (s7): eta_0<=1/2
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-tori
KIND: step
TITLE: Good actions lie on tori
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1160-L1162
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1160-L1162
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
EDGE: bp:p4:real-torus | blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1161-L1161 | k_omega in kamCover(eta_0) for omega=g(I) in Omega_gamma
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1160-L1160 | Psi=id+Gbar, Gbar=G_0 on S
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-tori@L1160-L1160 | G_0(theta,I)=k_{g(I)}(theta)-(theta,I)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-complement
KIND: step
TITLE: The complement is the image of bad actions
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1164-L1171
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1164-L1171
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
EDGE: step:p4:mm-tori | blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1166-L1166 | x not in R^n x A_gamma
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1165-L1165 | Psi surjective on R^n x Z^c, /Gbar/<=1/2
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-complement@L1164-L1164 | Z, A_gamma
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-bad
KIND: step
TITLE: Bad actions
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1173-L1177
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1173-L1177
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
EDGE: bp:p4:preimage-measure | blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1176-L1177 | The preimage-measure bound is invoked at L1175
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-bad@L1174-L1174 | A_gamma, Z
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:mm-count
KIND: step
TITLE: Measure count
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-count@L1179-L1185
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:mm-count@L1179-L1185
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
DEPS: bp:p1:lip-image, step:p4:mm-complement, step:p4:mm-bad, step:p4:mm-extension, bp:p4:good-actions, bp:p1:ext-lebesgue, bp:p4:SA, bp:p1:ext-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:lip-image | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1181-L1181 | measure of the Lipschitz image Psi(Q x (...))
EDGE: step:p4:mm-complement | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1180-L1185 | covering of the complement
EDGE: step:p4:mm-bad | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1180-L1183 | measure of Y and of the non-Diophantine set
EDGE: step:p4:mm-extension | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1181-L1183 | Psi is 3/2-Lipschitz
EDGE: bp:p4:good-actions | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1180-L1180 | Z, A_gamma
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1180-L1185 | Monotonicity and subadditivity are directly used in the measure count
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1180-L1185 | the inherited main-measure source setting assumes the local SA package; gamma is the positive width used in the bad-action estimates
EDGE: bp:p1:ext-measure | blueprint/parts/p4-measure.tex#step:p4:mm-count@L1180-L1180 | product volume of action sets times the angle cube (E11)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d2+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: repaired F1: uses product volume of action sets times the angle cube (E11); formerly a source gap before (E11) was listed

NODE: bp:p4:cover-mono
KIND: lemma
TITLE: Monotonicity of the cover
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:cover-mono@L1188-L1191
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:cover-mono@L1193-L1200
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
EDGE: step:p4:cm-proof | blueprint/parts/p4-measure.tex#bp:p4:cover-mono@L1194-L1194 | proof step
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#bp:p4:cover-mono@L1189-L1189 | cover definition
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: PROVED
LEAN_REF: KAM.Head.kamCover_mono
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P4A-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p4:cm-proof
KIND: step
TITLE: Same witnesses
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:cm-proof@L1194-L1199
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:cm-proof@L1194-L1199
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
EDGE: bp:p0:cover#kamCover | blueprint/parts/p4-measure.tex#step:p4:cm-proof@L1195-L1195 | clauses of the cover definition
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: PROVED
LEAN_REF: KAM.Head.kamCover_mono
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P4A-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p4:head-empty
KIND: step
TITLE: Empty action domain
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-empty@L1203-L1204
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-empty@L1203-L1204
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
EDGE: bp:p0:domains#fundamentalDomain | blueprint/parts/p4-measure.tex#step:p4:head-empty@L1204-L1204 | The empty case unfolds F_B
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:head-constants
KIND: step
TITLE: Constants
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-constants@L1206-L1214
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-constants@L1206-L1214
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
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:head-constants@L1207-L1207 | c_*, A_0
EDGE: bp:p4:main-measure | blueprint/parts/p4-measure.tex#step:p4:head-constants@L1207-L1207 | C_meas
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:head-negative
KIND: step
TITLE: Negative $\varepsilon$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-negative@L1216-L1218
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-negative@L1216-L1218
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
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#step:p4:head-negative@L1217-L1218 | The nonempty domain and the perturbation bound from the fixed data supply epsilon>=0
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:head-positive
KIND: step
TITLE: Positive $\varepsilon$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-positive@L1220-L1226
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-positive@L1220-L1226
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
DEPS: bp:p4:cover-mono, bp:p4:main-measure, step:p4:head-constants, bp:p4:parameters, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:cover-mono | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1223-L1223 | kamCover(eta_0) subset kamCover(C sqrt eps)
EDGE: bp:p4:main-measure | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1223-L1223 | measure bound C_meas gamma
EDGE: step:p4:head-constants | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1221-L1221 | C, eps_0, c_*
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1221-L1222 | use c_*>0 and A_0 in the choice of gamma and in eta_0=A_0 epsilon gamma^-2
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:head-positive@L1221-L1222 | the chosen gamma lies in (0,1] and epsilon=c_* gamma^4, supplying the local package required by main-measure
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-global-K
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:head-zero
KIND: step
TITLE: Vanishing perturbation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-zero@L1228-L1231
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:head-zero@L1228-L1231
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
DEPS: bp:p4:main-measure, bp:p4:parameters, step:p4:head-constants, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:main-measure | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1230-L1231 | measure bound for each gamma in (0,1]
EDGE: step:p4:head-constants | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1229-L1231 | constant C
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1229-L1230 | use c_*>0 and eta_0=A_0 epsilon gamma^-2 at epsilon=0
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:head-zero@L1229-L1230 | epsilon=0 supplies (SA) for every gamma in (0,1], before applying main-measure
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d3
REVIEWER: sol-review-d4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: - [final: main-measure EDGE locator set to L1230-L1231 exactly as sol-review-d4 specified; the writer verified mechanically that these lines contain the ref to bp:p4:main-measure and its bound]

NODE: bp:p4:dyadic-approx
KIND: lemma
TITLE: Inner dyadic approximation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1241-L1245
PROOF_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1247-L1268
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
EDGE: step:p4:dy-exhaust | blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1248-L1248 | proof step
EDGE: step:p4:dy-open | blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1256-L1256 | proof step
EDGE: step:p4:dy-layer | blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1261-L1261 | proof step
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: PROVED
LEAN_REF: KAM.Head.dyadic_approx
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P4A-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p4:dy-exhaust
KIND: step
TITLE: Dyadic exhaustion
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1248-L1254
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1248-L1254
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
DEPS: bp:p1:ext-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-measure | blueprint/parts/p4-measure.tex#step:p4:dy-exhaust@L1253-L1254 | continuity of Lebesgue measure from below (E11)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d3
REVIEWER: sol-review-d4
LEAN_STATUS: PROVED
LEAN_REF: KAM.Head.exists_dyadicUnion_diff_le
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P4A-audit-1.md; kernel replay passed (2026-10-27)
NOTE: repaired F1: uses continuity of Lebesgue measure from below (E11); formerly a source gap before (E11) was listed

NODE: step:p4:dy-open
KIND: step
TITLE: The open set
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-open@L1256-L1259
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-open@L1256-L1259
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
DEPS: step:p4:dy-exhaust, bp:p1:ext-measure
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:dy-exhaust | blueprint/parts/p4-measure.tex#step:p4:dy-open@L1257-L1257 | cubes D_j and E_j with measure bound
EDGE: bp:p1:ext-measure | blueprint/parts/p4-measure.tex#step:p4:dy-open@L1258-L1259 | null boundaries of boxes (E11)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d3
REVIEWER: sol-review-d4
LEAN_STATUS: PROVED
LEAN_REF: KAM.Head.volume_diff_dyadicInterior_le
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P4A-audit-1.md; kernel replay passed (2026-10-27)
NOTE: repaired F1: uses null boundaries of boxes (E11); formerly a source gap before (E11) was listed

NODE: step:p4:dy-layer
KIND: step
TITLE: Boundary layer
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-layer@L1261-L1267
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:dy-layer@L1261-L1267
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
EDGE: step:p4:dy-open | blueprint/parts/p4-measure.tex#step:p4:dy-layer@L1262-L1262 | B' and its cubes
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: PROVED
LEAN_REF: KAM.Head.volume_layer_dyadicInterior_le
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P4A-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p4:hq-trivial
KIND: step
TITLE: Trivial cases
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1271-L1274
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1271-L1274
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
DEPS: bp:p0:domains#fundamentalDomain, bp:p1:ext-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:domains#fundamentalDomain | blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1272-L1273 | unfold F_B as the half-open unit angle cube times B; the volume identity remains the explicit source gap
EDGE: bp:p1:ext-measure | blueprint/parts/p4-measure.tex#step:p4:hq-trivial@L1273-L1273 | product volume meas([0,1)^n x B) = meas B (E11)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-global-K+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: repaired F1: uses product volume meas([0,1)^n x B) = meas B (E11); formerly a source gap before (E11) was listed

NODE: step:p4:hq-approx
KIND: step
TITLE: Inner approximation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1276-L1277
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1276-L1277
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
EDGE: bp:p4:dyadic-approx | blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1277-L1277 | Dyadic approximation is invoked at L1275, not the heading
EDGE: step:p4:hq-trivial | blueprint/parts/p4-measure.tex#step:p4:hq-approx@L1277-L1277 | 0<meas B<infty and kappa fixed
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hq-head
KIND: step
TITLE: HEAD for $B'$
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-head@L1279-L1287
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-head@L1279-L1287
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
EDGE: bp:p0:head | blueprint/parts/p4-measure.tex#step:p4:hq-head@L1280-L1280 | HEAD applied to B' to obtain C',eps_0'
EDGE: step:p4:hq-approx | blueprint/parts/p4-measure.tex#step:p4:hq-head@L1279-L1279 | B' and C_B'
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p4:hq-transfer
KIND: step
TITLE: Transfer of the perturbation hypotheses
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1289-L1295
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1289-L1295
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
EDGE: bp:p0:head | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1293-L1293 | HEAD conclusion for B'
EDGE: step:p4:hq-head | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1290-L1290 | eps<=eps_0'; C', eps_0
EDGE: step:p4:hq-approx | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1291-L1291 | B' subset B
EDGE: step:p4:hq-trivial | blueprint/parts/p4-measure.tex#step:p4:hq-transfer@L1292-L1293 | B is nonempty; as in the earlier argument, a point of D(s0,r0) and the original perturbation norm bound give epsilon>=0 directly
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-r2
REVIEWER: sol-review-d2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The reference "As in Step head-negative" is an analogy to its nonempty-domain argument, not an application requiring the HEAD boundary-layer data. Nonnegativity follows here from the original HEAD-Q domain B, which is nonempty, even if the approximating Bprime is empty.

NODE: step:p4:hq-cover
KIND: step
TITLE: Comparison of covers
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1297-L1304
PROOF_SOURCE: blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1297-L1304
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
DEPS: bp:p4:cover-mono, step:p4:hq-transfer, step:p4:hq-approx, step:p4:hq-trivial, step:p4:hq-head, bp:p1:ext-lebesgue, bp:p1:ext-measure
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:cover-mono | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1298-L1298 | kamCover_B'(C' sqrt eps) subset kamCover_B(kappa)
EDGE: step:p4:hq-transfer | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1300-L1303 | The measure inequality is used at L1301, not the display delimiter L1300
EDGE: step:p4:hq-approx | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1300-L1303 | The approximation error is consumed in the final measure inequality
EDGE: step:p4:hq-trivial | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1303-L1303 | meas F_B = meas B
EDGE: step:p4:hq-head | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1298-L1298 | The chosen epsilon_0 supplies Cprime sqrt(epsilon)<=kappa; transfer only records the measure part
EDGE: bp:p1:ext-lebesgue | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1300-L1303 | monotonicity and subadditivity apply to the displayed cover of the complement
EDGE: bp:p1:ext-measure | blueprint/parts/p4-measure.tex#step:p4:hq-cover@L1303-L1303 | product volume meas([0,1)^n x S) = meas S (E11)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4b+sol-review-d2+claude-main-orchestrator
REVIEWER: sol-review-d3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: repaired F1: uses product volume meas([0,1)^n x S) = meas S (E11); formerly a source gap before (E11) was listed
