NODE: bpI:p7:near-circular
KIND: lemma
TITLE: The preimage of the near-circular region
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:near-circular@L261-L270
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:near-circular@L271-L277
CONTRACT_ID: bpI:p7:near-circular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a_-, a_+, e_-, e_+ in R; N = N(a_-,a_+,e_-,e_+) of Definition nearcircular
SOURCE_QUANTIFIERS: a_-, a_+, e_-, e_+
SOURCE_CONCLUSION: N = {(q,p) in C : a_- < a(q,p) < a_+, e_- < e(q,p) < e_+} = Q({(ell,g,L,G) in D_R : a_- < L^2 < a_+, e_- < e(L,G) < e_+}); the witnesses r, a, e of NearCircular are |q|_2, a(q,p), e(q,p) and unique; N is open, nonempty iff there is (L,G) in C_0 with a_- < L^2 < a_+, e_- < e(L,G) < e_+
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:nearcircular#NearCircular, bpI:p7:elements, bpI:p7:orbit-maps, stepI:p7:nc-sub, stepI:p7:nc-sup, stepI:p7:nc-image
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:nearcircular#NearCircular | blueprint-I/parts/p7-delaunay.tex#bpI:p7:near-circular@L262-L262 | the frozen set N
EDGE: bpI:p7:elements | blueprint-I/parts/p7-delaunay.tex#bpI:p7:near-circular@L264-L264 | C, a(q,p), e(q,p)
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#bpI:p7:near-circular@L265-L265 | Q and D_R
EDGE: stepI:p7:nc-sub | blueprint-I/parts/p7-delaunay.tex#bpI:p7:near-circular@L272-L272 | proof step
EDGE: stepI:p7:nc-sup | blueprint-I/parts/p7-delaunay.tex#bpI:p7:near-circular@L274-L274 | proof step
EDGE: stepI:p7:nc-image | blueprint-I/parts/p7-delaunay.tex#bpI:p7:near-circular@L276-L276 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:nc-sub
KIND: step
TITLE: $\subseteq$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-sub@L272-L272
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-sub@L272-L272
CONTRACT_ID: stepI:p7:nc-sub
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (q,p) in N with witnesses r, a, e
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: q != 0, r = |q|_2, a = -1/(2E) forced, Gamma > 0, Gamma^2 < -1/(2E), so (q,p) in C with a = a(q,p), e = e(q,p), and the bounds hold
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:nearcircular#NearCircular, bpI:p7:elements
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:nearcircular#NearCircular | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-sub@L272-L272 | defining equations E = -1/(2a), Gamma^2 = a(1-e^2), 0 < ... bounds
EDGE: bpI:p7:elements | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-sub@L272-L272 | C, a(q,p), e(q,p)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:nc-sup
KIND: step
TITLE: $\supseteq$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-sup@L274-L274
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-sup@L274-L274
CONTRACT_ID: stepI:p7:nc-sup
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (q,p) in C with a_- < a < a_+, e_- < e < e_+
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: witnesses r = |q|_2, a = a(q,p), e = e(q,p) satisfy the equations of NearCircular, so (q,p) in N
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:elements, bpI:p0:nearcircular#NearCircular
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:elements | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-sup@L274-L274 | E = -1/(2a), Gamma^2 = a(1 - e^2) are the definitions
EDGE: bpI:p0:nearcircular#NearCircular | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-sup@L274-L274 | equations to be verified
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:nc-image
KIND: step
TITLE: Image of the chart
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-image@L276-L276
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-image@L276-L276
CONTRACT_ID: stepI:p7:nc-image
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps nc-sub, nc-sup; Theorem chart; Proposition orbit-identities (c)
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: the elements of Q(ell,g,L,G) are (L,G,L^2,e(L,G)); N is the Q-image of the stated set; N is open since a, e are continuous on the open set C
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:chart, bpI:p7:orbit-identities, bpI:p7:orbit-maps, stepI:p7:nc-sub, stepI:p7:nc-sup, bpI:p7:elements
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:chart | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-image@L276-L276 | Q maps onto C
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-image@L276-L276 | (c): elements of Q(ell,g,L,G)
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-image@L276-L276 | Q
EDGE: stepI:p7:nc-sub | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-image@L276-L276 | first description of N
EDGE: stepI:p7:nc-sup | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-image@L276-L276 | first description of N
EDGE: bpI:p7:elements | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nc-image@L276-L276 | a(.), e(.) continuous on the open set C
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:h0
KIND: lemma
TITLE: Unperturbed Hamiltonian in Delaunay variables
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L279-L283
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L284-L286
CONTRACT_ID: bpI:p7:h0
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H^K(q,p) = E(q,p) - Gamma(q,p) for q != 0
SOURCE_QUANTIFIERS: (ell,g,L,G) in D_R; collision-free z at mu = 0
SOURCE_CONCLUSION: H^K o Q(ell,g,L,G) = -1/(2L^2) - G on D_R; H^R3_0(z) = H^K(z) for collision-free z
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-maps, bpI:p0:restricted#restrictedHamiltonian, stepI:p7:h0-formula
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L280-L280 | Q on D_R
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L281-L281 | H^R3_0
EDGE: stepI:p7:h0-formula | blueprint-I/parts/p7-delaunay.tex#bpI:p7:h0@L285-L285 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:h0-formula
KIND: step
TITLE: Formula
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285
CONTRACT_ID: stepI:p7:h0-formula
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: q_1 p_0 - q_0 p_1 = -Gamma(q,p)
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: H^K = E - Gamma, equal to -1/(2L^2) - G along Q; at mu = 0 H^R3_0 has (1-0)/r_1 = 1/|q| and 0/r_2 = 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-identities, bpI:p0:restricted#restrictedHamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285 | (b),(c): Gamma = G, E = -1/(2L^2)
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:h0-formula@L285-L285 | H^R3_0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:complex-domain
KIND: lemma
TITLE: Eccentricity on a complex neighbourhood
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:complex-domain@L337-L343
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:complex-domain@L344-L349
CONTRACT_ID: bpI:p7:complex-domain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K as in section data; delta_E of Proposition kepler-eq; tau := min{e_-^2/2, e_- delta_E}
SOURCE_QUANTIFIERS: K first, then delta_1 depending only on K, then (L,G) in K_{delta_1} with nearest (L',G') in K
SOURCE_CONCLUSION: there is delta_1 in (0, min{delta_K, m_L, m_G}/2], depending only on K, such that for (L,G) in K_{delta_1}: Re L > m_L/2, L != 0, |G^2/L^2 - G'^2/L'^2| < tau, so e(L,G) = sqrt(1 - G^2/L^2) (principal branch) is holomorphic on K_{delta_1}, real positive at real points of C_0 within K_{delta_1}, e^2 = 1 - G^2/L^2, |e(L,G) - e(L',G')| < delta_E, dist(e,[-e_1,e_1]) < delta_E, |e| < e_2; real points of K_{delta_1} lie in C_0; Q is holomorphic on U(delta_1), 2pi-periodic in ell and g, real at real points where it agrees with the real orbit map
CONSTANT_SCOPE: delta_1 depends only on K
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:sec-complex#data, bpI:p7:kepler-eq, bpI:p7:orbit-maps-e, bpI:p7:orbit-maps, stepI:p7:cd-uc, stepI:p7:cd-branch
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#bpI:p7:complex-domain@L338-L338 | K, K_delta, m_L, m_G, e_-, e_1, e_2, delta_K, U(delta)
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#bpI:p7:complex-domain@L339-L339 | delta_E, P(e_1), delta_K
EDGE: bpI:p7:orbit-maps-e | blueprint-I/parts/p7-delaunay.tex#bpI:p7:complex-domain@L341-L341 | holomorphy, periodicity and reality of Q_el on P(e_1)
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#bpI:p7:complex-domain@L341-L341 | Q = Q_el(ell,g,L,e(L,G),G/L) and the real orbit map
EDGE: stepI:p7:cd-uc | blueprint-I/parts/p7-delaunay.tex#bpI:p7:complex-domain@L345-L345 | proof step
EDGE: stepI:p7:cd-branch | blueprint-I/parts/p7-delaunay.tex#bpI:p7:complex-domain@L347-L347 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:cd-uc
KIND: step
TITLE: Uniform continuity
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345
CONTRACT_ID: stepI:p7:cd-uc
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K as in section data
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: (L,G) -> G^2/L^2 is uniformly continuous on the compact set {dist_inf((L,G),K) <= min{delta_K,m_L,m_G}/2} on which |L| >= m_L/2, so some delta_1 exists with Re L > m_L/2 and reality assertions (G > m_G/2 > 0 at real points)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:sec-complex#data, bpI:p7:kepler-eq
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345 | K, m_L, m_G, delta_K
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-uc@L345-L345 | delta_K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: uses uniform continuity on a compact set (Heine-Cantor) and closedness-boundedness of the compact neighbourhood; not listed among Part 7 externals, treated as routine analysis (reported as uncertainty)

NODE: stepI:p7:cd-branch
KIND: step
TITLE: Branches
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-branch@L347-L348
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-branch@L347-L348
CONTRACT_ID: stepI:p7:cd-branch
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step cd-uc; w = 1 - G^2/L^2, w' = e'^2 with e' = e(L',G') in [e_-, e_1]
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: Re(1 - G^2/L^2) >= e_-^2/2 > 0; e(L,G) holomorphic; |e - e'| <= |w - w'|/e_- < delta_E, so dist(e,[-e_1,e_1]) < delta_E; real points: e^2 in (0,1) so (L,G) in C_0; remaining statements from orbit-maps-e and u = u_R
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:cd-uc, bpI:p7:sec-complex#data, bpI:p7:kepler-eq, bpI:p7:x-hol, bpI:p7:orbit-maps-e
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:cd-uc | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-branch@L347-L347 | ¦w - w'¦ < tau
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-branch@L347-L347 | e_-, e_1
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-branch@L347-L347 | delta_E; u = u_R on real points
EDGE: bpI:p7:x-hol | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-branch@L347-L347 | principal square root holomorphic on Re z > 0
EDGE: bpI:p7:orbit-maps-e | blueprint-I/parts/p7-delaunay.tex#stepI:p7:cd-branch@L348-L348 | remaining statements follow from the holomorphy of Q_el on P(e_1)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:shift-def
KIND: definition
TITLE: Potential of the shift
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift-def@L354-L360
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:shift-def
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S = {Re z > 0}; Xi = {(q,mu) in C^2 x C : vartheta(q), vartheta(q + mu e), vartheta(q - (1-mu) e) in S}
SOURCE_QUANTIFIERS: (q,mu) in Xi
SOURCE_CONCLUSION: defines w(q) = vartheta(q)^{-1/2}, Psi(q,mu) = (1-mu) vartheta(q + mu e)^{-1/2} + mu vartheta(q - (1-mu) e)^{-1/2}, Psi(q,0) = w(q), holomorphic on the open set Xi; for real q, mu: (q,mu) in Xi iff q != 0 and q collision free for mu, and then w(q) = 1/rad(q), Psi(q,mu) = (1-mu)/rad(q - a_1(mu)) + mu/rad(q - a_2(mu))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:x-hol, bpI:p0:primaries#CollisionFree, bpI:p0:primaries#radius, bpI:p0:primaries#primary1, bpI:p0:primaries#primary2
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:x-hol | blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift-def@L358-L358 | holomorphy of the quotient and the principal power on Re z > 0
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift-def@L359-L359 | collision freedom for mu in the real characterization of Xi
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift-def@L359-L359 | rad in w(q) and Psi
EDGE: bpI:p0:primaries#primary1 | blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift-def@L359-L359 | a_1(mu) = -mu e
EDGE: bpI:p0:primaries#primary2 | blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift-def@L359-L359 | a_2(mu) = (1-mu) e
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: standing definition package of Parts 7-8 (SPEC)

NODE: bpI:p7:shift
KIND: lemma
TITLE: The shift potential is analytic with the factor $\mu$ removed
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift@L362-L376
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift@L377-L391
CONTRACT_ID: bpI:p7:shift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < r_min <= rho_max < 1; eps_0 > 0 with eps_0(eps_0 + 2 rho_max) < r_min^2 and eps_0(eps_0 + 4) < (1 - rho_max)^2; mu_2 = eps_0/2, c_* = min{r_min^2 - eps_0(eps_0 + 2 rho_max), (1 - rho_max)^2 - eps_0(eps_0 + 4)}, O = {q in C^2 : exists q' in R^2, r_min <= |q'|_2 <= rho_max, |q - q'|_2 < eps_0/2}
SOURCE_QUANTIFIERS: r_min, rho_max, then eps_0 (hence mu_2, c_*, O, C_sh), then (q, mu)
SOURCE_CONCLUSION: O x closed disc D(0,mu_2) subset Xi; there Re vartheta >= c_* for the three arguments, so |w|, |vartheta^{-1/2}| <= c_*^{-1/2}; there is a holomorphic f : O x D(0,mu_2) -> C with mu f(q,mu) = w(q) - Psi(q,mu), f(q,mu) = -int_0^1 d_mu Psi(q, t mu) dt, |f| <= C_sh := 6/(eps_0 sqrt(c_*)); f(q,0) = 1/|q| + q_0/|q|^3 - 1/|q - e|; for real q in O and real |mu| < mu_2 the point (q,mu) is collision free and f(q,mu) is real
CONSTANT_SCOPE: C_sh, mu_2 depend only on (r_min, rho_max)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:shift-def, bpI:p0:primaries#CollisionFree, stepI:p7:sh-pos, stepI:p7:sh-bound, stepI:p7:sh-div, stepI:p7:sh-zero, stepI:p7:sh-real
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:shift-def | blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift@L363-L363 | Xi, w, Psi
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift@L374-L374 | collision freedom for real q in O and real mu
EDGE: stepI:p7:sh-pos | blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift@L378-L378 | proof step
EDGE: stepI:p7:sh-bound | blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift@L384-L384 | proof step
EDGE: stepI:p7:sh-div | blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift@L386-L386 | proof step
EDGE: stepI:p7:sh-zero | blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift@L388-L388 | proof step
EDGE: stepI:p7:sh-real | blueprint-I/parts/p7-delaunay.tex#bpI:p7:shift@L390-L390 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:sh-pos
KIND: step
TITLE: Positivity of the radicands
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-pos@L378-L382
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-pos@L378-L382
CONTRACT_ID: stepI:p7:sh-pos
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: q in O with q' as in the definition; |mu| <= mu_2
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: the three radicands have Re vartheta >= c_*; hence O x closed disc subset Xi and |vartheta^{-1/2}| <= (Re vartheta)^{-1/2} <= c_*^{-1/2}; radicands real and positive for real q, mu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:shift-def, bpI:p7:x-hol
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:shift-def | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-pos@L378-L378 | Xi and the radicands of w, Psi
EDGE: bpI:p7:x-hol | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-pos@L382-L382 | bound ¦z^{-1/2}¦ <= (Re z)^{-1/2}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:sh-bound
KIND: step
TITLE: Bound of the numerator
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-bound@L384-L384
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-bound@L384-L384
CONTRACT_ID: stepI:p7:sh-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step sh-pos
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: |Psi| <= (3/2) c_*^{-1/2}, |w| <= c_*^{-1/2}; g_q(mu) = w(q) - Psi(q,mu) satisfies |g_q| <= 3 c_*^{-1/2} on the closed disc and g_q(0) = 0; g_q holomorphic near the closed disc
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sh-pos, bpI:p7:shift-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sh-pos | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-bound@L384-L384 | bounds on the radicands
EDGE: bpI:p7:shift-def | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-bound@L384-L384 | Psi(q,0) = w(q) and the definition of Psi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:sh-div
KIND: step
TITLE: Division by $\mu$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386
CONTRACT_ID: stepI:p7:sh-div
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps sh-pos, sh-bound
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: f(q,mu) = -int_0^1 d_mu Psi(q,t mu) dt is holomorphic on O x D(0,mu_2), mu f = g_q, and |f| <= 6/(eps_0 sqrt(c_*)) (by continuity at mu = 0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:shift-def, stepI:p7:sh-pos, stepI:p7:sh-bound, bpI:p7:x-param, bpI:p7:x-schwarz
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:shift-def | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | Psi
EDGE: stepI:p7:sh-pos | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | {q} x closed disc subset Xi
EDGE: stepI:p7:sh-bound | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | ¦g_q¦ <= 3 c_*^{-1/2}, g_q(0) = 0
EDGE: bpI:p7:x-param | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | holomorphy of the parameter integral
EDGE: bpI:p7:x-schwarz | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-div@L386-L386 | Schwarz lemma bound
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:sh-zero
KIND: step
TITLE: Value at $\mu=0$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-zero@L388-L388
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-zero@L388-L388
CONTRACT_ID: stepI:p7:sh-zero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step sh-div
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: f(q,0) = -d_mu Psi(q,0) = w(q) + q_0 vartheta(q)^{-3/2} - vartheta(q - e)^{-1/2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sh-div, bpI:p7:shift-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sh-div | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-zero@L388-L388 | definition of f
EDGE: bpI:p7:shift-def | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-zero@L388-L388 | Psi and w
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:sh-real
KIND: step
TITLE: Reality
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-real@L390-L390
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-real@L390-L390
CONTRACT_ID: stepI:p7:sh-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps sh-pos, sh-div, sh-zero; real (q,mu)
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: f is real for real q in O and real mu: f = (w - Psi)/mu for mu != 0 and the formula of sh-zero for mu = 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:sh-pos, stepI:p7:sh-div, stepI:p7:sh-zero, bpI:p7:shift-def
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:sh-pos | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-real@L390-L390 | radicands real positive
EDGE: stepI:p7:sh-div | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-real@L390-L390 | mu f = w - Psi
EDGE: stepI:p7:sh-zero | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-real@L390-L390 | value at mu = 0
EDGE: bpI:p7:shift-def | blueprint-I/parts/p7-delaunay.tex#stepI:p7:sh-real@L390-L390 | real characterization of Xi, w, Psi
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:exact-ham
KIND: proposition
TITLE: Exact restricted Hamiltonian in Delaunay variables
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L393-L411
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L412-L423
CONTRACT_ID: bpI:p7:exact-ham
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K subset C_0 nonempty compact with rho_max = max_K L^2(1+e) < 1; r_min, eps_0, mu_2, c_*, C_sh as in Lemma shift for (r_min, rho_max)
SOURCE_QUANTIFIERS: K first, then (r_min, rho_max, eps_0, mu_2, c_*, C_sh), then delta_2 and F, then real (w, mu)
SOURCE_CONCLUSION: there exist delta_2 in (0,delta_1] and holomorphic F : U(delta_2) x D(0,mu_2) -> C, F_mu(w) = f(q(w),mu), q(w) the position part of Q(w), with (i) |F_mu(w)| <= C_F := C_sh = 6/(eps_0 sqrt(c_*)); (ii) F_mu(ell+2pi,g,L,G) = F_mu(ell,g+2pi,L,G) = F_mu(w), F_mu(w) real for real w in U(delta_2), real |mu| < mu_2; (iii) for real w in U(delta_2), real |mu| < mu_2: (L,G) in C_0, Q(w) collision free, H^R3_mu(Q(w)) = -1/(2L^2) - G + mu F_mu(w); (iv) every real (ell,g,L,G) with (L,G) in K lies in U(delta_2)
CONSTANT_SCOPE: constants (delta_2, mu_2, C_F) depend on K only (not on mu)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:shift, bpI:p7:sec-complex#data, bpI:p7:complex-domain, bpI:p7:orbit-maps, bpI:p0:restricted#restrictedHamiltonian, bpI:p0:primaries#CollisionFree, stepI:p7:eh-shell, stepI:p7:eh-delta, stepI:p7:eh-hol, stepI:p7:eh-exact
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:shift | blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L394-L394 | Lemma shift for (r_min, rho_max); f, O, C_sh
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L394-L394 | K, r_min, rho_max, U(delta)
EDGE: bpI:p7:complex-domain | blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L394-L394 | delta_1 and holomorphy of Q on U(delta_1)
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L396-L396 | Q and its position part q(w)
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L402-L402 | frozen H^R3_mu in (iii)
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L402-L402 | collision-freeness in (iii)
EDGE: stepI:p7:eh-shell | blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L413-L413 | proof step
EDGE: stepI:p7:eh-delta | blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L415-L415 | proof step
EDGE: stepI:p7:eh-hol | blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L418-L418 | proof step
EDGE: stepI:p7:eh-exact | blueprint-I/parts/p7-delaunay.tex#bpI:p7:exact-ham@L420-L420 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: [pre-extract: dropped reference to bpI:p0:r3bp, which part p7 proves or sets up]

NODE: stepI:p7:eh-shell
KIND: step
TITLE: The real shell
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-shell@L413-L413
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-shell@L413-L413
CONTRACT_ID: stepI:p7:eh-shell
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: real w with (L',G') in K
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: r = |q(w)|_2 lies in [L'^2(1-e'), L'^2(1+e')] subset [r_min, rho_max]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:orbit-identities, bpI:p7:sec-complex#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-shell@L413-L413 | (a): L^2(1-e) <= r <= L^2(1+e)
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-shell@L413-L413 | r_min and rho_max
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:eh-delta
KIND: step
TITLE: Choice of $\delta_2$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L416
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L416
CONTRACT_ID: stepI:p7:eh-delta
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps eh-shell; delta_* = delta_1/2
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: there is delta_2 <= delta_* (depending only on K) such that every w in U(delta_2) has a real w' with (L',G') in K and |Q(w) - Q(w')|_2 < eps_0/2, hence q(w) in O
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:complex-domain, stepI:p7:eh-shell, bpI:p7:shift, bpI:p7:sec-complex#data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:complex-domain | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | Q holomorphic on U(delta_1), real on real points, periodic
EDGE: stepI:p7:eh-shell | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | q' = q(w') has r_min <= ¦q'¦ <= rho_max
EDGE: bpI:p7:shift | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | eps_0 and the set O
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-delta@L415-L415 | U(delta), K
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: uses compactness and uniform continuity of Q on a compact set (routine analysis, not a Part 7 external; reported as uncertainty)

NODE: stepI:p7:eh-hol
KIND: step
TITLE: Holomorphy and bound
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418
CONTRACT_ID: stepI:p7:eh-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps eh-delta; Lemma shift
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: F_mu(w) = f(q(w),mu) holomorphic with |F| <= C_sh: (i); periodicity of q(.) and reality of f and Q give (ii); (iv): delta_2 > 0 and K subset K_{delta_2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:eh-delta, bpI:p7:shift, bpI:p7:complex-domain, bpI:p7:orbit-maps
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:eh-delta | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | q(w) in O
EDGE: bpI:p7:shift | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | holomorphy, bound C_sh and reality of f
EDGE: bpI:p7:complex-domain | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | holomorphy and periodicity of Q on U(delta_1)
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-hol@L418-L418 | reality of Q on real points
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:eh-exact
KIND: step
TITLE: Exactness
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L422
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L422
CONTRACT_ID: stepI:p7:eh-exact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: real w in U(delta_2), real |mu| < mu_2; Lemma h0; Lemma shift
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: (L,G) in C_0, Q(w) collision free and H^R3_mu(Q(w)) = H^R3_0(q,p) + [w(q) - Psi(q,mu)] = -1/(2L^2) - G + mu f(q,mu)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:complex-domain, stepI:p7:eh-delta, bpI:p7:shift, bpI:p7:shift-def, bpI:p7:h0, bpI:p0:restricted#restrictedHamiltonian, bpI:p0:primaries#CollisionFree, bpI:p0:primaries#radius, bpI:p0:primaries#radiusSq
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:complex-domain | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | (L,G) in C_0 for real w in U(delta_1)
EDGE: stepI:p7:eh-delta | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | q(w) is a real point of O
EDGE: bpI:p7:shift | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | (q,mu) in Xi with real positive radicands; mu f = w - Psi
EDGE: bpI:p7:shift-def | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | Xi, Psi, rad(q - a_j) = sqrt(vartheta(...))
EDGE: bpI:p7:h0 | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L422-L422 | H^R3_0 = ... - w(q) and H^K o Q = -1/(2L^2) - G
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L421-L421 | H^R3_mu formula
EDGE: bpI:p0:primaries#CollisionFree | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | collision freedom
EDGE: bpI:p0:primaries#radius | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | rad(q - a_j(mu))
EDGE: bpI:p0:primaries#radiusSq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:eh-exact@L420-L420 | radiusSq
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:period-one
KIND: corollary
TITLE: Period-one form: the data of I-HEAD
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L425-L439
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L440-L446
CONTRACT_ID: bpI:p7:period-one
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K, delta_2, mu_2, C_F, F as in Proposition exact-ham; s_0 = delta_2/(2 pi), r_0 = 2 pi delta_2; B subset 2 pi K arbitrary; S the conversion; h~ = h_{(2pi)^2, 1/(2pi)}; real mu with |mu| < mu_2; f~_mu(theta,I) = mu F_mu(S(theta,I)) on T_{s_0} x B_{r_0}
SOURCE_QUANTIFIERS: K first (then delta_2, mu_2, C_F, s_0, r_0), then B, then mu, (theta, I)
SOURCE_CONCLUSION: (a) S(T_{s_0} x B_{r_0}) subset U(delta_2); (b) h~ holomorphic on B_{r_0} with Re I_1 > pi m_L > 0 there, real at real I; (c) f~_mu holomorphic on T_{s_0} x B_{r_0}, 1-periodic in theta, real at real theta and real I in B_{r_0} for real mu, |f~_mu| <= eps := |mu| C_F; (d) H^R3_mu(Q(S(theta,I))) = h~(I) + f~_mu(theta,I) = realHamiltonian h~ f~_mu (theta,I) for real theta and real I in B_{r_0}, with Q o S symplectic; (e) s_0, r_0, mu_2, C_F depend on K only and eps = C_F |mu|; the hypotheses on (h,f,eps) of I-HEAD other than nondegeneracy hold with eps = mu C_F
CONSTANT_SCOPE: s_0, r_0, mu_2, C_F depend on K only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:exact-ham, bpI:p6:conversion-map, bpI:p6:kep-ham, bpI:p0:realham#realHamiltonian, bpI:p0:domains#complexStrip, bpI:p0:domains#actionNbhd, bpI:p7:sec-complex#data, stepI:p7:po-dom, stepI:p7:po-prop, stepI:p7:po-exact
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L426-L426 | delta_2, mu_2, C_F, F
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L426-L426 | the conversion S
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L426-L426 | h~ = h_{(2pi)^2,1/(2pi)}
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L433-L433 | frozen realHamiltonian
EDGE: bpI:p0:domains#complexStrip | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L428-L428 | T_{s_0} is the frozen complex strip
EDGE: bpI:p0:domains#actionNbhd | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L428-L428 | B_{r_0} is the frozen action neighbourhood
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L426-L426 | K and 2 pi K
EDGE: stepI:p7:po-dom | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L441-L441 | proof step
EDGE: stepI:p7:po-prop | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L443-L443 | proof step
EDGE: stepI:p7:po-exact | blueprint-I/parts/p7-delaunay.tex#bpI:p7:period-one@L445-L445 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:po-dom
KIND: step
TITLE: Domains
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-dom@L441-L441
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-dom@L441-L441
CONTRACT_ID: stepI:p7:po-dom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: theta in T_{s_0}; I in B_{r_0}
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: |Im 2 pi theta_i| < delta_2; I/(2 pi) in K_{delta_2}, so S(T_{s_0} x B_{r_0}) subset U(delta_2); Re(I_1/(2 pi)) > m_L/2 > 0, so I_1 != 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:domains#complexStrip, bpI:p0:domains#actionNbhd, bpI:p6:conversion-map, bpI:p7:exact-ham, bpI:p7:sec-complex#data, bpI:p7:complex-domain
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:domains#complexStrip | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-dom@L441-L441 | theta in T_{s_0}
EDGE: bpI:p0:domains#actionNbhd | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-dom@L441-L441 | I in B_{r_0}: within r_0 of some J in B
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-dom@L441-L441 | S, I/(2 pi)
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-dom@L441-L441 | delta_2 and U(delta_2)
EDGE: bpI:p7:sec-complex#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-dom@L441-L441 | K_{delta}, U(delta), m_L
EDGE: bpI:p7:complex-domain | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-dom@L441-L441 | Re L > m_L/2 on K_{delta_1}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:po-prop
KIND: step
TITLE: Properties
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443
CONTRACT_ID: stepI:p7:po-prop
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step po-dom; Proposition exact-ham (i),(ii); Lemma conversion (b)
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: (b) h~ holomorphic on B_{r_0}, Re I_1 > pi m_L, real at real I; (c) f~_mu holomorphic, 1-periodic in theta, real, bounded by |mu| C_F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:conversion, bpI:p6:nondeg, stepI:p7:po-dom, bpI:p7:exact-ham, bpI:p6:conversion-map
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | (b): h~ = h_{(2pi)^2, 1/(2pi)} holomorphic where I_1 != 0, real at real I
EDGE: bpI:p6:nondeg | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | Corollary nondeg: h~ holomorphic on B_{r_0}, I_1 != 0 and real I in B_{r_0} has I_1 > 0 (its domain argument)
EDGE: stepI:p7:po-dom | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | S maps the domain into U(delta_2)
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | (i),(ii): bound, periodicity, reality of F
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-prop@L443-L443 | periodicity: theta -> theta + k becomes (ell,g) -> (ell,g) + 2 pi k
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:po-exact
KIND: step
TITLE: Exactness
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445
CONTRACT_ID: stepI:p7:po-exact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Proposition exact-ham (iii); Lemma conversion (a),(b) with kappa = Omega = 1
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: H^R3_mu(Q(S(theta,I))) = h~(I) + f~_mu = realHamiltonian h~ f~_mu; Q o S symplectic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:exact-ham, bpI:p6:conversion, bpI:p6:kep-ham, bpI:p0:realham#realHamiltonian, stepI:p7:po-dom, bpI:p7:symplectic, bpI:p6:conversion-map
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | (iii) at w = S(theta,I)
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | (b) h_{1,1}(L,G) = h~(I); (a) symplectic S
EDGE: bpI:p6:kep-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | h_{1,1}(L,G) = -1/(2L^2) - G
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | realHamiltonian is the real part of the same real number
EDGE: stepI:p7:po-dom | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | S(theta,I) in U(delta_2)
EDGE: bpI:p7:symplectic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | Q symplectic
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:po-exact@L445-L445 | S
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:transfer
KIND: proposition
TITLE: Transfer of Delaunay solutions to the physical problem
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L448-L453
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L454-L460
CONTRACT_ID: bpI:p7:transfer
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the setting of Corollary period-one; mu in R with |mu| < mu_2; J subset R; z~ : R -> R^2 x R^2 with Sol(realHamiltonian h~ f~_mu, B, J, z~) (Definition hamsol)
SOURCE_QUANTIFIERS: the data of period-one, then mu, J, z~
SOURCE_CONCLUSION: z := Q o S o z~ satisfies RSol_mu(J,z); for t in J with z~(t) = (theta, I): rad(q(t)) = L^2(1 - e cos u) in [a(1-e), a(1+e)], a = L^2 = I_1^2/(2pi)^2, elements of z(t) are (L,G) = I/(2 pi), and H^R3_mu(z(t)) = realHamiltonian h~ f~_mu (z~(t))
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p0:hamsol#IsHamiltonianSolutionOn, bpI:p0:restricted#IsRestrictedSolutionOn, bpI:p0:realham#realHamiltonian, bpI:p6:conversion-map, bpI:p7:orbit-maps, stepI:p7:tr-cf, stepI:p7:tr-open, stepI:p7:tr-chain
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L449 | setting of Corollary period-one
EDGE: bpI:p0:hamsol#IsHamiltonianSolutionOn | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L449 | Sol predicate
EDGE: bpI:p0:restricted#IsRestrictedSolutionOn | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L449 | RSol_mu
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L449 | realHamiltonian
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L449 | S
EDGE: bpI:p7:orbit-maps | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L449-L449 | Q
EDGE: stepI:p7:tr-cf | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L455-L455 | proof step
EDGE: stepI:p7:tr-open | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L457-L457 | proof step
EDGE: stepI:p7:tr-chain | blueprint-I/parts/p7-delaunay.tex#bpI:p7:transfer@L459-L459 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:tr-cf
KIND: step
TITLE: Collision freedom and real-analyticity
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455
CONTRACT_ID: stepI:p7:tr-cf
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: t in J; z~(t)_2 in B
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: S z~(t) is real with (L,G) in K, lies in U(delta_2); z(t) = Q(S z~(t)) is collision free, i.e. in W_mu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:exact-ham, bpI:p7:sec-ham#data, bpI:p6:conversion-map
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:exact-ham | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | (iv) and (iii): U(delta_2) contains the real points over K, collision freedom
EDGE: bpI:p7:sec-ham#data | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | W_mu
EDGE: bpI:p6:conversion-map | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-cf@L455-L455 | S
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:tr-open
KIND: step
TITLE: Agreement of Hamiltonians on an open set
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457
CONTRACT_ID: stepI:p7:tr-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V = {(theta,I) in R^4 : exists J in B, |I - J| < r_0} open
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: realHamiltonian h~ f~_mu = H^R3_mu o Q o S on V; both sides real-analytic, so real derivatives and Hamiltonian fields coincide at z~(t)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p0:realham#realHamiltonian, bpI:p0:restricted#restrictedHamiltonian, bpI:p7:chart
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | (d) exactness on B_{r_0}
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | realHamiltonian
EDGE: bpI:p0:restricted#restrictedHamiltonian | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | H^R3_mu
EDGE: bpI:p7:chart | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-open@L457-L457 | Q real-analytic
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:tr-chain
KIND: step
TITLE: Chain rule
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459
CONTRACT_ID: stepI:p7:tr-chain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: steps tr-cf, tr-open; Proposition symplectic; Lemma conversion (a); Lemma ham-eq
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: z~'(t) = X_{realHamiltonian h~ f~_mu}(z~(t)) = X_{H o Q o S}(z~(t)); d/dt z = D(Q o S) z~' = X_{H^R3_mu}(z(t)) = V_mu(z(t)); the formulas for rad(q) and the energy
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p7:tr-open, bpI:p0:hamsol#IsHamiltonianSolutionOn, bpI:p7:symplectic, bpI:p6:conversion, bpI:p7:ham-eq, bpI:p7:orbit-identities, bpI:p7:period-one, stepI:p7:tr-cf
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p7:tr-open | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | agreement of the Hamiltonians and fields
EDGE: bpI:p0:hamsol#IsHamiltonianSolutionOn | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | Sol gives z~'(t) = X(z~(t))
EDGE: bpI:p7:symplectic | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | D Q symplectic, chain rule for Q
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | (a) symplectic S
EDGE: bpI:p7:ham-eq | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | X_{H^R3_mu} = V_mu and RSol_mu
EDGE: bpI:p7:orbit-identities | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | (a) rad(q)
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | (d) energy
EDGE: stepI:p7:tr-cf | blueprint-I/parts/p7-delaunay.tex#stepI:p7:tr-chain@L459-L459 | z(t) in W_mu
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:nondeg
KIND: proposition
TITLE: Isoenergetic nondegeneracy of the Delaunay Hamiltonian
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L465-L469
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L470-L473
CONTRACT_ID: bpI:p7:nondeg
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the setting of Corollary period-one; real I in B_{r_0}
SOURCE_QUANTIFIERS: the data of period-one, then real I
SOURCE_CONCLUSION: det borderedHessian h~ I = 3/I_1^4 > 0 for every real I in B_{r_0}, indeed for every real I with I_1 > 0; in conventional variables B_{h_{1,1}}(L,G) = K_{1,1}(L) with det = 3/L^4; h~ satisfies the nondegeneracy hypothesis of I-HEAD on all real points of B_{r_0}, for every B subset 2 pi K
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one, bpI:p0:bordered#borderedHessian, bpI:p0:keplerborder#keplerBorder, stepI:p7:nd-dom, stepI:p7:nd-det
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L466 | the setting: h~, B_{r_0}
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L466 | borderedHessian
EDGE: bpI:p0:keplerborder#keplerBorder | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L466-L466 | K_{1,1}(L)
EDGE: stepI:p7:nd-dom | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L471-L471 | proof step
EDGE: stepI:p7:nd-det | blueprint-I/parts/p7-delaunay.tex#bpI:p7:nondeg@L472-L472 | proof step
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:nd-dom
KIND: step
TITLE: Reality of the domain
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471
CONTRACT_ID: stepI:p7:nd-dom
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Corollary period-one (b); real I in B_{r_0}
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: real I in B_{r_0} has I_1 > 0 (Re I_1/(2 pi) > m_L/2 > 0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p7:period-one
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p7:period-one | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-dom@L471-L471 | (b): Re I_1 > pi m_L on B_{r_0}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p7:nd-det
KIND: step
TITLE: Determinant
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472
PROOF_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472
CONTRACT_ID: stepI:p7:nd-det
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: step nd-dom; kappa = Omega = 1
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: det borderedHessian h~ I = 3/I_1^4 for real I with I_1 > 0 (Lemma kep-border and Lemma conversion (d)); the conventional statement is Lemma kep-border at kappa = Omega = 1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p6:kep-border, bpI:p6:conversion, stepI:p7:nd-dom
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p6:kep-border | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | determinant of the bordered Hessian of h_{1,1}
EDGE: bpI:p6:conversion | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | (d) conversion of the bordered Hessian determinant
EDGE: stepI:p7:nd-dom | blueprint-I/parts/p7-delaunay.tex#stepI:p7:nd-det@L472-L472 | I_1 > 0 on real I in B_{r_0}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p7:sec-complex#data
KIND: definition
TITLE: Data of section A common complex neighbourhood: K, e_pm, m_L, m_G, r_min, rho_max, K_delta, U(delta)
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-complex@L325-L335
PROOF_SOURCE: -
CONTRACT_ID: bpI:p7:sec-complex#data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K a nonempty compact subset of C_0 (the safe action region)
SOURCE_QUANTIFIERS: K, then delta > 0 (delta <= delta_K for U(delta))
SOURCE_CONCLUSION: defines e_- = min_K e > 0, e_1 = max_K e < 1, e_2 = (1+e_1)/2, m_L = min_K L > 0, m_G = min_K G > 0, r_min = min_K L^2(1-e) > 0, rho_max = max_K L^2(1+e), delta_K = delta_K(e_1) and P(e_1) from Proposition kepler-eq, K_delta = {(L,G) in C^2 : exists (L',G') in K, |(L,G)-(L',G')|_inf < delta} (open), U(delta) = {(ell,g,L,G) in C^4 : |Im ell| < delta, |Im g| < delta, (L,G) in K_delta}
CONSTANT_SCOPE: all quantities depend only on K
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p8:x-topo, bpI:p7:kepler-eq
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p8:x-topo | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-complex#data@L327-L327 | minima and maxima of continuous functions on the nonempty compact K exist and are attained, so e_- > 0, e_1 < 1, m_L, m_G, r_min > 0
EDGE: bpI:p7:kepler-eq | blueprint-I/parts/p7-delaunay.tex#bpI:p7:sec-complex#data@L332-L332 | delta_K(e_1) and P(e_1)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p7b
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: section data node (SPEC, Part 7 L325-335)
