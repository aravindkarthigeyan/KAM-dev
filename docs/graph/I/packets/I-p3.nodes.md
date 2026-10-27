NODE: bpI:p3:setting
KIND: definition
TITLE: Data of Part~\ref{bpI:p3}
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:setting@L34-L46
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data and standing hypotheses of Part 3: the I-HEAD data with n=2, B' nonempty, tau := 2)
SOURCE_QUANTIFIERS: B, s_0, r_0, h, B', eta, f, epsilon fixed (outermost); H := h+f
SOURCE_CONCLUSION: defines the data of Part 3: the data of I-HEAD with n=2: B in R^2 open, bounded, nonempty; s_0,r_0>0; h holomorphic on B_{r_0}, Im h = 0 and det B_h != 0 at every real I in B_{r_0}; B' in R^2 open with compact closure in B; eta>0; B' != empty; tau := 2 (> n-1 = 1); f: C^2 x C^2 -> C holomorphic on T_{s_0} x B_{r_0}, 1-periodic in theta there, real at real theta and real I in B_{r_0}, epsilon in R, 0<=epsilon, ¦f¦<=epsilon on T_{s_0} x B_{r_0}; H := h+f; iota: R^2 -> C^2 the inclusion, U := iota^{-1}(B_{r_0}) open with B in U
CONSTANT_SCOPE: all objects are fixed by the package; no dependence
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:bordered#borderedHessian, bpI:p0:domains#complexStrip, K:bp:p4:freq-map
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:setting@L36-L36 | det B_h
EDGE: bpI:p0:domains#complexStrip | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:setting@L42-L42 | strip T_{s_0}
EDGE: K:bp:p4:freq-map | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:setting@L45-L45 | (i): iota B in B_{r_0}, so B in U
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: No edge to bpI:p0:head: the data are those of the I-HEAD statement (naming the hypotheses, not consuming the conclusion). No bridge edge: the K Part 4 bridge itself depends on this package.

NODE: bpI:p3:setting#k-bridge
KIND: step
TITLE: Bridge: K's Part 4 data is the Part 3 data (without Kolmogorov and boundary-layer hypotheses)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:setting#k-bridge@L48-L50
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:setting#k-bridge@L48-L50
CONTRACT_ID: bpI:p3:setting#k-bridge
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting; K Assumption bp:p4:data
SOURCE_QUANTIFIERS: n=2, B open bounded, h holomorphic on B_{r_0}, f as in the data
SOURCE_CONCLUSION: the setting of K's Part 4 (K:bp:p4:data) is exactly Assumption bpI:p3:setting (n=2, B open bounded, h holomorphic on B_{r_0}, f as above), apart from K's Kolmogorov and boundary-layer hypotheses, which are not used; hence K's shrunken domains and constants (s, delta_*, mu, rho, rho_infty, D, D', M_h, ...) are taken verbatim and the K Part 4 results (freq-map, h1, h-bounded, derivative-bounds and their steps) apply; supplies the premises of every K Part 4 result applied in Part 3
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, K:bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:setting#k-bridge@L48-L48 | the package of Part 3
EDGE: K:bp:p4:data | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:setting#k-bridge@L48-L48 | K's Part 4 setting
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The paragraph asserts the identification of the settings without a check; the Part 3 data also fixes tau := 2, B' (nonempty, compact closure) and eta, which K's data does not have, and omit K's hypotheses that are not used. Modelled as a bridge step, not a source gap.

NODE: bpI:p3:constants
KIND: definition
TITLE: Constants of the data
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants@L52-L79
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (definition; the data of Part 3; the K Part 4 constants)
SOURCE_QUANTIFIERS: (B,s_0,r_0,h,B',eta) fixed; then s, delta_*, mu, rho, rho_infty, D, D', M_h, c, c-bar, F_j, M; then d_B, eta_1, S; then m_h, M_g, S_h; then nu, sigma_omega, sigma_K, sigma_B, sigma_T, eps_T, e
SOURCE_CONCLUSION: defines (a) s := min{s_0,1}, delta_* := (1/4)min{s,r_0}, mu := delta_*/2, rho := s/4, rho_infty := s/8, D-frak := T_{s/2} x B_{r_0/2}, D' := T_{3s/4} x B_{3r_0/4}, M_h := sup{¦h¦: B_{3r_0/4}}, c-bar := max{1,c(2,j),c(4,j): j=1,2,3}, F_j := c-bar delta_*^{-j}, M := c-bar(M_h+1) delta_*^{-3}; (b) d_B := inf{¦I-J¦: I in closure B', J in R^2 minus B} > 0, eta_1 := min{eta,d_B/2}, S := {I: dist(I, closure B') <= d_B/2}; (c) m_h := min_S ¦grad h¦, M_g := max_S ¦grad h¦, S_h := max_S ¦B_h^{-1}¦ (row-sum norm); (d) nu := m_h/4, sigma_omega := 4M_g/m_h + 2, sigma_K := sigma_B := 1+mu, sigma_T := 2S_h+mu, eps_T := 1/(4 S_h F_2), e := F_1 eps (C_e := F_1)
CONSTANT_SCOPE: all constants depend only on (B,s_0,r_0,h,B',eta) (eta only through eta_1), not on f, epsilon or any point
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, K:bp:p4:data, bpI:p3:setting#k-bridge, K:bp:p4:h-bounded, K:bp:p1:cauchy-open, bpI:p3:ext-compact, bpI:p0:bordered#borderedHessian
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants@L52-L52 | (B,s_0,r_0,h,B',eta)
EDGE: K:bp:p4:data | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants@L53-L53 | K constants s, delta_*, mu, rho, rho_infty, D, D'
EDGE: bpI:p3:setting#k-bridge | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants@L53-L53 | K's Part 4 constants taken verbatim
EDGE: K:bp:p4:h-bounded | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants@L58-L58 | M_h < infinity
EDGE: K:bp:p1:cauchy-open | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants@L58-L58 | constants c(m,j)
EDGE: bpI:p3:ext-compact | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants@L62-L62 | d_B > 0 for compact closure B' in open B
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:constants@L69-L69 | B_h^{-1} in S_h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:compact
KIND: lemma
TITLE: $\mathcal S$ and the constants are well defined
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:compact@L81-L83
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:compact@L84-L97
CONTRACT_ID: bpI:p3:compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting and Definition bpI:p3:constants
SOURCE_QUANTIFIERS: (B,s_0,r_0,h,B',eta) fixed
SOURCE_CONCLUSION: S is compact, closure B' in S in B, and 0<m_h<=M_g<infinity, 0<S_h<infinity
CONSTANT_SCOPE: m_h, M_g, S_h depend only on (B,s_0,r_0,h,B',eta)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, bpI:p3:constants, stepI:p3:cp-compact, stepI:p3:cp-grad, stepI:p3:cp-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:compact@L81-L81 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:compact@L81-L81 | S, m_h, M_g, S_h
EDGE: stepI:p3:cp-compact | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:compact@L85-L85 | proof step of this result
EDGE: stepI:p3:cp-grad | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:compact@L89-L89 | proof step of this result
EDGE: stepI:p3:cp-inverse | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:compact@L92-L92 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:cp-compact
KIND: step
TITLE: Compactness and inclusion
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-compact@L85-L88
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-compact@L85-L88
CONTRACT_ID: stepI:p3:cp-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: d_B definition; closure B' compact; B open bounded
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: S is closed and bounded, hence compact; if I not in B then dist(I, closure B') >= d_B > d_B/2, so S in B
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:constants, bpI:p3:setting, bpI:p3:ext-compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-compact@L86-L86 | S, d_B
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-compact@L86-L86 | B' with compact closure in the open bounded B
EDGE: bpI:p3:ext-compact | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-compact@L86-L86 | closed bounded sets in R^2 are compact; continuity of distance
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:cp-grad
KIND: step
TITLE: The gradient is nonzero
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-grad@L89-L91
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-grad@L89-L91
CONTRACT_ID: stepI:p3:cp-grad
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: det-identity(a); S in U; continuity of grad h
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: grad h != 0 on U (so on S); grad h continuous, so ¦grad h¦ attains a positive minimum m_h and a finite maximum M_g on S
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:det-identity, K:bp:p4:freq-map, bpI:p3:setting#k-bridge, bpI:p3:ext-compact, bpI:p3:constants, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:det-identity | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-grad@L90-L90 | (a): grad h(I) != 0 on U
EDGE: K:bp:p4:freq-map | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-grad@L91-L91 | (iii): grad h differentiable, hence continuous
EDGE: bpI:p3:setting#k-bridge | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-grad@L91-L91 | supplies the premises of the applied K Part 4 result under the Part 3 data
EDGE: bpI:p3:ext-compact | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-grad@L91-L91 | extrema on compact sets
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-grad@L91-L91 | S, m_h, M_g
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-grad@L90-L90 | S in B in U
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:cp-inverse
KIND: step
TITLE: The bordered inverse
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L92-L96
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L92-L96
CONTRACT_ID: stepI:p3:cp-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: det B_h != 0 on U; continuity of the entries of B_h
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: B_h^{-1} = adj B_h/det B_h has continuous real entries on U; its row-sum norm is continuous, hence bounded on S: 0<S_h<infinity
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:freq-map, bpI:p3:setting#k-bridge, K:bp:p1:holomorphic-regularity, K:bp:p1:ext-cramer, K:bp:p1:real-inverse, bpI:p3:ext-compact, bpI:p3:setting, bpI:p3:constants, bpI:p0:bordered#borderedHessian
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:freq-map | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L93-L93 | (iii): entries of B_h continuous
EDGE: bpI:p3:setting#k-bridge | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L93-L93 | supplies the premises of the applied K Part 4 result under the Part 3 data
EDGE: K:bp:p1:holomorphic-regularity | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L94-L94 | continuity of second derivatives of holomorphic h
EDGE: K:bp:p1:ext-cramer | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L95-L95 | B_h^{-1} = adj B_h/det B_h
EDGE: K:bp:p1:real-inverse | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L96-L96 | inverse of a real matrix is real
EDGE: bpI:p3:ext-compact | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L96-L96 | bounded on the compact S
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L94-L94 | det B_h != 0 on U (hypothesis), iota U in B_{r_0}
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L96-L96 | S_h
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cp-inverse@L93-L93 | entries of B_h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:ext-ift
KIND: external
TITLE: Inverse function theorem
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:ext-ift@L102-L104
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:ext-ift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Omega in R^m open, F: Omega -> R^m is C^1, DF(c) invertible
SOURCE_QUANTIFIERS: Omega, F, c
SOURCE_CONCLUSION: there is an open W containing c, W in Omega, with F|_W a homeomorphism onto an open set with C^1 inverse; the restriction to an open W' in W has the same property
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:ext-compact
KIND: external
TITLE: Compactness
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:ext-compact@L105-L106
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:ext-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K compact subset of R^2; continuous function on K; K covered by open sets
SOURCE_QUANTIFIERS: K, function, cover
SOURCE_CONCLUSION: the function attains its extrema; the cover has a finite subcover (Heine-Borel)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:ext-lebesgue
KIND: external
TITLE: Lebesgue measure on $\R^2$
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:ext-lebesgue@L107-L107
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:ext-lebesgue
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lebesgue measure on R^2
SOURCE_QUANTIFIERS: sets in R^2
SOURCE_CONCLUSION: monotone and countably subadditive on outer measures; a nonempty open set has positive measure; a bounded set has finite measure
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:det-identity
KIND: lemma
TITLE: The bordered determinant
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L116-L123
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L124-L132
CONTRACT_ID: bpI:p3:det-identity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting; I in U; g := grad h(I); grad^2 h(I) := D(grad h)(I) (real symmetric)
SOURCE_QUANTIFIERS: I in U
SOURCE_CONCLUSION: det B_h(I) = - g^perp . grad^2 h(I) g^perp; consequently (a) grad h(I) != 0 whenever det B_h(I) != 0 (in particular on U); (b) if g != 0 then det B_h(I) != 0 iff det(g, grad^2 h(I) g^perp) != 0, and det(g, grad^2 h(I) g^perp) = g^perp . grad^2 h(I) g^perp = - det B_h(I)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, K:bp:p4:freq-map, bpI:p3:setting#k-bridge, bpI:p0:bordered#borderedHessian, stepI:p3:di-expand, stepI:p3:di-conseq
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L117-L117 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
EDGE: K:bp:p4:freq-map | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L117-L117 | (iii): grad^2 h real symmetric
EDGE: bpI:p3:setting#k-bridge | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L117-L117 | supplies the premises of the applied K Part 4 result under the Part 3 data
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L118-L118 | det B_h(I)
EDGE: stepI:p3:di-expand | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L125-L125 | proof step of this result
EDGE: stepI:p3:di-conseq | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:det-identity@L130-L130 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:di-expand
KIND: step
TITLE: Expansion
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-expand@L125-L129
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-expand@L125-L129
CONTRACT_ID: stepI:p3:di-expand
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition of the bordered Hessian; trivial-torus lemma Step tr-compare; h_ab real, h_12 = h_21
SOURCE_QUANTIFIERS: I in U
SOURCE_CONCLUSION: B_h = [[h_11,h_12,h_1],[h_12,h_22,h_2],[h_1,h_2,0]]; det B_h = -(h_22 h_1^2 - 2 h_12 h_1 h_2 + h_11 h_2^2) = - g^perp . grad^2 h g^perp
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:bordered#borderedHessian, bpI:p1:trivial, stepI:p1:tr-compare
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:bordered#borderedHessian | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-expand@L126-L126 | definition of B_h
EDGE: bpI:p1:trivial | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-expand@L126-L126 | B_h as the torsion of the trivial torus
EDGE: stepI:p1:tr-compare | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-expand@L126-L126 | identification of the entries of B_h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:di-conseq
KIND: step
TITLE: Consequences
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-conseq@L130-L131
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-conseq@L130-L131
CONTRACT_ID: stepI:p3:di-conseq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: expansion of det B_h
SOURCE_QUANTIFIERS: I in U
SOURCE_CONCLUSION: (a) g=0 gives 0 = det B_h so det B_h != 0 forces g != 0; (b) det(g,w) = g^perp . w with w = grad^2 h g^perp
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:di-expand
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:di-expand | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:di-conseq@L131-L131 | the identity det B_h = - g^perp . grad^2 h g^perp
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:coordinates
KIND: definition
TITLE: Direction coordinates at a point
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:coordinates@L134-L149
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:coordinates
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting; c in closure B', g_c := grad h(c) != 0, q_c := g_c . g_c > 0
SOURCE_QUANTIFIERS: c fixed; then w in R^2; I in U_c
SOURCE_CONCLUSION: defines a_c(w) := g_c.w/q_c, b_c(w) := det(g_c,w)/q_c (w = a_c g_c + b_c g_c^perp); on {a_c>0} the slope sigma_c(w) := b_c(w)/a_c(w); U_c := {I in U: a_c(grad h(I)) > 0} open with c in U_c; m_c(I) := sigma_c(grad h(I)), Phi_c(I) := (h(I), m_c(I)); Phi_c is C^1 on U_c, Phi_c(c) = (h(c),0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, bpI:p3:det-identity, K:bp:p4:freq-map, bpI:p3:setting#k-bridge
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:coordinates@L135-L135 | c in closure B', U, h
EDGE: bpI:p3:det-identity | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:coordinates@L135-L135 | (a): g_c = grad h(c) != 0
EDGE: K:bp:p4:freq-map | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:coordinates@L148-L148 | grad h is C^1 on U
EDGE: bpI:p3:setting#k-bridge | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:coordinates@L148-L148 | supplies the premises of the applied K Part 4 result under the Part 3 data
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:slope-ray
KIND: claim
TITLE: Slopes encode rays
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:slope-ray@L151-L156
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:slope-ray@L151-L156
CONTRACT_ID: bpI:p3:slope-ray
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a_c(w), a_c(w') > 0; I in U_c; omega* with a_c(omega*) > 0
SOURCE_QUANTIFIERS: c, w, w', I, omega*
SOURCE_CONCLUSION: sigma_c(w) = sigma_c(w') iff w' = lambda w with lambda > 0, lambda = a_c(w')/a_c(w); m_c(I) = sigma_c(omega*) iff grad h(I) = s omega* with s = a_c(grad h(I))/a_c(omega*) > 0, and then s = ¦grad h(I)¦/¦omega*¦ for the max norm
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:coordinates
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:slope-ray@L152-L152 | a_c, sigma_c, m_c, U_c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Remark node kept: consumed by stepI:p3:pt-parallel (it supplies grad h(I_pm) = s omega*_pm).

NODE: bpI:p3:chart
KIND: lemma
TITLE: Local chart
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:chart@L158-L164
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:chart@L165-L175
CONTRACT_ID: bpI:p3:chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting; c in closure B'
SOURCE_QUANTIFIERS: c in closure B'; then W open in U_c
SOURCE_CONCLUSION: D Phi_c(c) is invertible with det D Phi_c(c) = - det B_h(c)/q_c != 0; hence there is an open W in U_c with c in W such that Phi_c|_W: W -> V := Phi_c(W) is a homeomorphism onto an open set with C^1 inverse, and W may be taken inside any prescribed open neighbourhood of c
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, bpI:p3:coordinates, stepI:p3:ch-deriv, stepI:p3:ch-det, stepI:p3:ch-ift
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:chart@L159-L159 | c in closure B', det B_h != 0
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:chart@L159-L159 | Phi_c, q_c
EDGE: stepI:p3:ch-deriv | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:chart@L166-L166 | proof step of this result
EDGE: stepI:p3:ch-det | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:chart@L170-L170 | proof step of this result
EDGE: stepI:p3:ch-ift | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:chart@L173-L173 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ch-deriv
KIND: step
TITLE: Derivative of $h$ and of $m_c$
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-deriv@L166-L169
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-deriv@L166-L169
CONTRACT_ID: stepI:p3:ch-deriv
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Dh(c)u = g_c.u; chain rule; D(grad h)(c) = grad^2 h(c) symmetric; Phi_c, sigma_c
SOURCE_QUANTIFIERS: c in closure B'
SOURCE_CONCLUSION: D sigma_c(g_c)[dw] = det(g_c,dw)/q_c; D m_c(c)u = (grad^2 h(c) g_c^perp).u/q_c
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:freq-map, bpI:p3:setting#k-bridge, bpI:p3:coordinates
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:freq-map | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-deriv@L167-L167 | (ii): Dh(c)u = g_c.u; (iii): symmetry
EDGE: bpI:p3:setting#k-bridge | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-deriv@L167-L167 | supplies the premises of the applied K Part 4 result under the Part 3 data
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-deriv@L167-L167 | sigma_c, m_c, q_c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ch-det
KIND: step
TITLE: Determinant
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-det@L170-L172
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-det@L170-L172
CONTRACT_ID: stepI:p3:ch-det
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: rows of D Phi_c(c); det-identity(b)
SOURCE_QUANTIFIERS: c in closure B'
SOURCE_CONCLUSION: det D Phi_c(c) = det(g_c, grad^2 h(c) g_c^perp)/q_c = - det B_h(c)/q_c != 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:ch-deriv, bpI:p3:det-identity, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:ch-deriv | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-det@L171-L171 | rows g_c^T and (grad^2 h(c) g_c^perp)^T/q_c
EDGE: bpI:p3:det-identity | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-det@L171-L171 | (b): det(g, grad^2 h g^perp) = - det B_h
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-det@L172-L172 | c in closure B' in B in U, iota U in B_{r_0}, det B_h != 0
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ch-ift
KIND: step
TITLE: Inverse function theorem
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-ift@L173-L174
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-ift@L173-L174
CONTRACT_ID: stepI:p3:ch-ift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U_c open; Phi_c C^1; D Phi_c(c) invertible
SOURCE_QUANTIFIERS: c in closure B'
SOURCE_CONCLUSION: the inverse function theorem gives W; intersecting with a prescribed neighbourhood of c keeps the conclusion
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:ext-ift, bpI:p3:coordinates, stepI:p3:ch-det
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:ext-ift | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-ift@L174-L174 | inverse function theorem (Y1)
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-ift@L174-L174 | U_c open, Phi_c C^1
EDGE: stepI:p3:ch-det | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ch-ift@L174-L174 | D Phi_c(c) invertible
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:patch
KIND: definition
TITLE: Patch
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch@L177-L186
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:patch
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting; c in closure B'; W as in the chart lemma; delta_E, delta_m, rho_c > 0; V = Phi_c(W)
SOURCE_QUANTIFIERS: (c, W, delta_E, delta_m, rho_c)
SOURCE_CONCLUSION: defines a patch p = (c,W,delta_E,delta_m,rho_c) with (P1) W in {¦I-c¦<eta_1/4} (so W in S); (P2) the box Q = [h(c)-delta_E, h(c)+delta_E] x [-delta_m,delta_m] lies in V; (P3) rho_c <= eta_1/4, {¦I-c¦<rho_c} in W and there ¦h(I)-h(c)¦<delta_E/2 and ¦m_c(I)¦<delta_m/4; Phi_p^{-1}: V -> W the inverse
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:chart, bpI:p3:coordinates, bpI:p3:constants, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:chart | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch@L178-L178 | W, V as in the chart lemma
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch@L178-L178 | Phi_c, m_c
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch@L181-L181 | eta_1, S
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch@L178-L178 | c in closure B'
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:cover
KIND: lemma
TITLE: Finite cover
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:cover@L188-L192
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:cover@L193-L199
CONTRACT_ID: bpI:p3:cover
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting and Definition bpI:p3:constants
SOURCE_QUANTIFIERS: (B,s_0,r_0,h,B',eta) fixed; then finitely many patches p_j
SOURCE_CONCLUSION: there are finitely many patches p_j = (c_j,W_j,delta_{E,j},delta_{m,j},rho_j), j in P, with closure B' in the union of {¦I-c_j¦<rho_j}; the family depends only on (B,s_0,r_0,h,B',eta)
CONSTANT_SCOPE: the family P, p_j depends only on (B,s_0,r_0,h,B',eta)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, bpI:p3:patch, bpI:p3:constants, stepI:p3:cv-local, stepI:p3:cv-compact
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:cover@L189-L189 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:cover@L189-L189 | the patches
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:cover@L189-L189 | eta_1
EDGE: stepI:p3:cv-local | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:cover@L194-L194 | proof step of this result
EDGE: stepI:p3:cv-compact | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:cover@L197-L197 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:cv-local
KIND: step
TITLE: A patch at every $c\in\overline{B'}$
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-local@L194-L196
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-local@L194-L196
CONTRACT_ID: stepI:p3:cv-local
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: chart lemma with neighbourhood {¦I-c¦<eta_1/4}; V open; h and m_c continuous on U_c, m_c(c)=0
SOURCE_QUANTIFIERS: c in closure B'
SOURCE_CONCLUSION: a patch exists at every c: W with (P1); delta_E, delta_m small for (P2); rho_c small for (P3)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:chart, bpI:p3:patch, bpI:p3:coordinates, bpI:p3:constants, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:chart | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-local@L195-L195 | W inside the neighbourhood
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-local@L195-L195 | (P1)-(P3)
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-local@L196-L196 | h, m_c continuous on U_c, m_c(c)=0, Phi_c(c)
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-local@L195-L195 | eta_1
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-local@L194-L194 | c in closure B'
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:cv-compact
KIND: step
TITLE: Compactness
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-compact@L197-L198
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-compact@L197-L198
CONTRACT_ID: stepI:p3:cv-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: balls {¦I-c¦<rho_c} cover the compact closure B'
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: finite subcover
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:cv-local, bpI:p3:ext-compact, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:cv-local | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-compact@L198-L198 | a patch at every c
EDGE: bpI:p3:ext-compact | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-compact@L198-L198 | Heine-Borel
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:cv-compact@L198-L198 | closure B' compact
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:dio-open
KIND: lemma
TITLE: Diophantine vectors in an open set
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:dio-open@L204-L209
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:dio-open@L210-L215
CONTRACT_ID: bpI:p3:dio-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: tau = 2; O in R^2 nonempty, open, bounded
SOURCE_QUANTIFIERS: O fixed; then gamma>0, omega
SOURCE_CONCLUSION: there are gamma>0 and omega in O cap Dio_{gamma,2}
CONSTANT_SCOPE: gamma depends on O (and tau=2)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p0:g3, bpI:p0:diophantine#IsDiophantine, stepI:p3:do-positive, stepI:p3:do-choice
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p0:g3 | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:dio-open@L212-L212 | measure estimate G3 (frozen KAM.volume_not_diophantine_le)
EDGE: bpI:p0:diophantine#IsDiophantine | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:dio-open@L205-L205 | Dio_{gamma,2}
EDGE: stepI:p3:do-positive | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:dio-open@L211-L211 | proof step of this result
EDGE: stepI:p3:do-choice | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:dio-open@L213-L213 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:do-positive
KIND: step
TITLE: Positive measure
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-positive@L211-L212
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-positive@L211-L212
CONTRACT_ID: stepI:p3:do-positive
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: O nonempty open bounded; n=2, tau=2>1
SOURCE_QUANTIFIERS: O fixed
SOURCE_CONCLUSION: 0<meas O<infinity and G3 gives C>=0 with meas{omega in O not in Dio_{alpha,2}} <= C alpha for all alpha>0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:ext-lebesgue, K:bp:p0:g3, bpI:p0:diophantine#IsDiophantine
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:ext-lebesgue | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-positive@L212-L212 | positivity and finiteness of the measure
EDGE: K:bp:p0:g3 | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-positive@L212-L212 | measure of non-Diophantine vectors
EDGE: bpI:p0:diophantine#IsDiophantine | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-positive@L212-L212 | Dio_{alpha,2}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:do-choice
KIND: step
TITLE: Choice of $\gamma$
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-choice@L213-L214
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-choice@L213-L214
CONTRACT_ID: stepI:p3:do-choice
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<meas O<infinity; measure bound meas{omega in O not in Dio_{alpha,2}} <= C alpha
SOURCE_QUANTIFIERS: O fixed
SOURCE_CONCLUSION: gamma := meas O/(2(C+1)) gives meas{omega in O not in Dio_{gamma,2}} <= C gamma < meas O so O cap Dio_{gamma,2} is nonempty
CONSTANT_SCOPE: gamma depends on O only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:do-positive, bpI:p3:ext-lebesgue, bpI:p0:diophantine#IsDiophantine
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:do-positive | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-choice@L214-L214 | the constant C and meas O
EDGE: bpI:p3:ext-lebesgue | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-choice@L214-L214 | subadditivity
EDGE: bpI:p0:diophantine#IsDiophantine | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:do-choice@L214-L214 | Dio_{gamma,2}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:rays
KIND: lemma
TITLE: Rays in a sector
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L217-L222
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L223-L230
CONTRACT_ID: bpI:p3:rays
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: c in closure B'; J in R nonempty open bounded interval; Assumption bpI:p3:setting and Definition bpI:p3:constants (m_h, coordinates a_c, sigma_c)
SOURCE_QUANTIFIERS: c, J fixed; then gamma>0 and omega*
SOURCE_CONCLUSION: there are gamma>0 and omega* in R^2 with omega* in Dio_{gamma,2}, a_c(omega*)>0, sigma_c(omega*) in J, m_h/4 < ¦omega*¦ < m_h/2
CONSTANT_SCOPE: gamma, omega* depend on (c,J) and the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, bpI:p3:constants, bpI:p3:coordinates, stepI:p3:ry-open, stepI:p3:ry-dio
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L218-L218 | c in closure B'
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L220-L220 | m_h
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L218-L218 | a_c, sigma_c
EDGE: stepI:p3:ry-open | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L224-L224 | proof step of this result
EDGE: stepI:p3:ry-dio | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:rays@L228-L228 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ry-open
KIND: step
TITLE: An open nonempty set
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-open@L224-L227
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-open@L224-L227
CONTRACT_ID: stepI:p3:ry-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: coordinates a_c, sigma_c; m_h; g_c != 0
SOURCE_QUANTIFIERS: c, J fixed
SOURCE_CONCLUSION: O := {a_c>0, sigma_c in J, m_h/4<¦omega¦<m_h/2} is open, bounded and nonempty (omega_t = t(g_c+varsigma g_c^perp) with t = (3/8)m_h/¦g_c+varsigma g_c^perp¦ lies in O)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:coordinates, bpI:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-open@L225-L225 | a_c, sigma_c, g_c^perp
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-open@L225-L225 | m_h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ry-dio
KIND: step
TITLE: Diophantine
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-dio@L228-L229
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-dio@L228-L229
CONTRACT_ID: stepI:p3:ry-dio
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: O open nonempty bounded (step ry-open)
SOURCE_QUANTIFIERS: c, J fixed
SOURCE_CONCLUSION: Lemma dio-open applied to O gives gamma>0 and omega* in O cap Dio_{gamma,2}
CONSTANT_SCOPE: gamma depends on O
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:dio-open, stepI:p3:ry-open
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:dio-open | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-dio@L229-L229 | Diophantine vector in the open set O
EDGE: stepI:p3:ry-open | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ry-dio@L229-L229 | O is open, bounded, nonempty
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:patch-rays
KIND: definition
TITLE: Rays of a patch
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch-rays@L232-L240
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:patch-rays
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting; patch p = (c,W,delta_E,delta_m,rho_c) of the cover
SOURCE_QUANTIFIERS: p fixed; then omega*_{p,+-}, gamma_{p,+-}, m_{p,+-}
SOURCE_CONCLUSION: for each patch choose by Lemma rays with J_+ = (delta_m/2,delta_m), J_- = (-delta_m,-delta_m/2) vectors omega*_{p,+-} and gamma_{p,+-}>0 with omega*_{p,+-} in Dio_{gamma_{p,+-},2}, a_c(omega*_{p,+-})>0, m_h/4<¦omega*_{p,+-}¦<m_h/2; m_{p,+-} := sigma_c(omega*_{p,+-}), m_{p,+} in (delta_m/2,delta_m), m_{p,-} in (-delta_m,-delta_m/2); 2¦P¦ rays, chosen once, depending only on (B,s_0,r_0,h,B',eta)
CONSTANT_SCOPE: omega*_{p,+-}, gamma_{p,+-} depend only on (B,s_0,r_0,h,B',eta)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:cover, bpI:p3:rays, bpI:p3:patch, bpI:p3:coordinates, bpI:p3:constants, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:cover | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch-rays@L233-L233 | the finite family of patches
EDGE: bpI:p3:rays | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch-rays@L233-L233 | Lemma rays with J_+-
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch-rays@L233-L233 | delta_m, c of the patch
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch-rays@L237-L237 | sigma_c, a_c
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch-rays@L235-L235 | m_h
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:patch-rays@L232-L232 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:points
KIND: lemma
TITLE: The two points on the energy curve
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L242-L257
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L258-L269
CONTRACT_ID: bpI:p3:points
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting; p a patch; E in R with ¦E-h(c)¦<=delta_E; omega*_+-, m_+- the data of Definition patch-rays
SOURCE_QUANTIFIERS: p, E fixed
SOURCE_CONCLUSION: (E,m_+-) in Q in V; I_+-(E) := Phi_p^{-1}(E,m_+-) in W real points; (a) h(I_+-)=E, m_c(I_+-)=m_+-, grad h(I_+-) = s_+-^o omega*_+- with s_+-^o = ¦grad h(I_+-)¦/¦omega*_+-¦ in (2, 4M_g/m_h); (b) ¦I_+--c¦<eta_1/4, I_+- in S in B, I_- != I_+, and ¦I_+--I_0¦<eta_1/2 for ¦I_0-c¦<rho_c; (c) m_c(I_-) <= -delta_m/2, m_c(I_+) >= delta_m/2, ¦m_c(I_0)¦<delta_m/4; Phi_p maps {I in W: h(I)=E, ¦m_c(I)¦<=delta_m} homeomorphically onto {E} x [-delta_m,delta_m]
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, bpI:p3:patch, bpI:p3:patch-rays, bpI:p3:constants, bpI:p3:coordinates, stepI:p3:pt-exist, stepI:p3:pt-parallel, stepI:p3:pt-position, stepI:p3:pt-segment
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L243-L243 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L243-L243 | patch, Q, V, (P1)-(P3)
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L243-L243 | omega*_+-, m_+-
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L250-L250 | M_g, m_h, eta_1, S
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L246-L246 | Phi_c, m_c
EDGE: stepI:p3:pt-exist | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L259-L259 | proof step of this result
EDGE: stepI:p3:pt-parallel | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L261-L261 | proof step of this result
EDGE: stepI:p3:pt-position | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L265-L265 | proof step of this result
EDGE: stepI:p3:pt-segment | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:points@L267-L267 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:pt-exist
KIND: step
TITLE: Existence
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-exist@L259-L260
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-exist@L259-L260
CONTRACT_ID: stepI:p3:pt-exist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ¦m_+-¦<delta_m; ¦E-h(c)¦<=delta_E; (P2)
SOURCE_QUANTIFIERS: p, E fixed
SOURCE_CONCLUSION: (E,m_+-) in Q in V = Phi_c(W)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:patch, bpI:p3:patch-rays
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-exist@L260-L260 | (P2): Q in V
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-exist@L260-L260 | m_+- in (+-delta_m/2, +-delta_m)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:pt-parallel
KIND: step
TITLE: Parallel gradient
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-parallel@L261-L264
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-parallel@L261-L264
CONTRACT_ID: stepI:p3:pt-parallel
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Phi_c(I_+-) = (E,m_+-); slope-ray; (P1); norm bounds on omega*_+-; S
SOURCE_QUANTIFIERS: p, E fixed
SOURCE_CONCLUSION: h(I_+-)=E, m_c(I_+-)=sigma_c(omega*_+-); grad h(I_+-) = s^o omega*_+- with s^o = ¦grad h(I_+-)¦/¦omega*_+-¦; I_+- in S so m_h <= ¦grad h(I_+-)¦ <= M_g; hence 2<s^o<4M_g/m_h
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:pt-exist, bpI:p3:slope-ray, bpI:p3:patch, bpI:p3:patch-rays, bpI:p3:constants, bpI:p3:coordinates
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:pt-exist | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-parallel@L262-L262 | I_+-(E) is defined
EDGE: bpI:p3:slope-ray | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-parallel@L263-L263 | grad h(I_+-) = s omega*_+-
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-parallel@L264-L264 | (P1): I_+- in W in S
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-parallel@L264-L264 | m_h/4<¦omega*_+-¦<m_h/2, a_c(omega*)>0
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-parallel@L264-L264 | m_h, M_g, eta_1, d_B, S
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-parallel@L262-L262 | Phi_c, a_c, U_c
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:pt-position
KIND: step
TITLE: Position
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-position@L265-L266
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-position@L265-L266
CONTRACT_ID: stepI:p3:pt-position
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (P1), (P3); ¦I_0-c¦<rho_c<=eta_1/4; m_+- vs (P3)
SOURCE_QUANTIFIERS: p, E fixed
SOURCE_CONCLUSION: ¦I_+--c¦<eta_1/4; ¦I_+--I_0¦<eta_1/2; I_- != I_+ since m_c(I_-)<0<m_c(I_+); ordering (c)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:patch, stepI:p3:pt-exist, bpI:p3:patch-rays
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-position@L266-L266 | (P1), (P3)
EDGE: stepI:p3:pt-exist | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-position@L266-L266 | I_+-(E) in W
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-position@L266-L266 | signs and ranges of m_+-
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:pt-segment
KIND: step
TITLE: Energy segment
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-segment@L267-L268
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-segment@L267-L268
CONTRACT_ID: stepI:p3:pt-segment
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Phi_p: W -> V homeomorphism; {E} x [-delta_m,delta_m] in Q in V
SOURCE_QUANTIFIERS: p, E fixed
SOURCE_CONCLUSION: the preimage of {E} x [-delta_m,delta_m] is exactly {I in W: h(I)=E, ¦m_c(I)¦<=delta_m}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:patch, bpI:p3:coordinates
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-segment@L268-L268 | Phi_p homeomorphism W to V and Q in V
EDGE: bpI:p3:coordinates | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:pt-segment@L268-L268 | Phi_c = (h, m_c)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:hypothesis-d
KIND: lemma
TITLE: The hypotheses (I1)--(I4) for $H=h+f$
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L274-L279
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L280-L287
CONTRACT_ID: bpI:p3:hypothesis-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting with epsilon <= 1; D := D-frak = T_{s/2} x B_{r_0/2}
SOURCE_QUANTIFIERS: as in the data; D, H
SOURCE_CONCLUSION: (I1)-(I4) of I-G1 hold for (D,H) with the constant M of Definition bpI:p3:constants; for z in D and j=1,2,3: ¦D^j f(z)¦ <= F_j epsilon, in particular ¦X_f(z)¦ <= F_1 epsilon and ¦D^2 f(z)¦ <= F_2 epsilon
CONSTANT_SCOPE: M, F_j depend only on (B,s_0,r_0,h,B',eta)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, bpI:p3:constants, K:bp:p4:h1, K:bp:p4:derivative-bounds, bpI:p3:setting#k-bridge, stepI:p3:hd-open, stepI:p3:hd-bounds
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L275-L275 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L276-L276 | M, F_j, D-frak
EDGE: K:bp:p4:h1 | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L278-L278 | (I1)-(I3) via K Part 4's H1
EDGE: K:bp:p4:derivative-bounds | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L278-L278 | Cauchy bounds on derivatives
EDGE: bpI:p3:setting#k-bridge | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L278-L278 | supplies the premises of the applied K Part 4 result under the Part 3 data
EDGE: stepI:p3:hd-open | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L281-L281 | proof step of this result
EDGE: stepI:p3:hd-bounds | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:hypothesis-d@L284-L284 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Preextract candidate edge to bpI:p0:g1 dropped: the statement only names hypotheses (I1)-(I4) of I-G1 (a check that they hold), it does not consume the conclusion.

NODE: stepI:p3:hd-open
KIND: step
TITLE: (I1)--(I3)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L281-L283
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L281-L283
CONTRACT_ID: stepI:p3:hd-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K Part 4 H1 steps h1-open, h1-holo; hypotheses of I-HEAD real at real points
SOURCE_QUANTIFIERS: D := D-frak
SOURCE_CONCLUSION: D open and invariant under theta -> theta+k; H holomorphic on D in T_{s_0} x B_{r_0}, 1-periodic in theta, real at real phase points of D
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:step:p4:h1-open, K:step:p4:h1-holo, K:bp:p4:h1, bpI:p3:setting#k-bridge, bpI:p3:constants, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: K:step:p4:h1-open | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L282-L282 | D open and translation invariant
EDGE: K:step:p4:h1-holo | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L282-L282 | H holomorphic, periodic
EDGE: K:bp:p4:h1 | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L282-L282 | H1 of K Part 4
EDGE: bpI:p3:setting#k-bridge | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L282-L282 | supplies the premises of the applied K Part 4 result under the Part 3 data
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L282-L282 | D-frak
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-open@L283-L283 | f real at real points; h real
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:hd-bounds
KIND: step
TITLE: (I4)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-bounds@L284-L286
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-bounds@L284-L286
CONTRACT_ID: stepI:p3:hd-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K derivative bounds (a),(c),(d) with epsilon<=1
SOURCE_QUANTIFIERS: D := D-frak
SOURCE_CONCLUSION: ¦DH¦,¦X_H¦,¦DX_H¦,¦D^2 X_H¦ <= M on D; ¦D^j H¦ <= c-bar(M_h+epsilon) delta_*^{-j} <= M for j=2; ¦D^j f¦ <= F_j epsilon
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p4:derivative-bounds, K:step:p4:db-cauchy, bpI:p3:setting#k-bridge, bpI:p3:constants, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p4:derivative-bounds | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-bounds@L285-L285 | (a),(c),(d)
EDGE: K:step:p4:db-cauchy | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-bounds@L285-L285 | Cauchy estimates step
EDGE: bpI:p3:setting#k-bridge | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-bounds@L285-L285 | supplies the premises of the applied K Part 4 result under the Part 3 data
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-bounds@L286-L286 | M, F_j, c-bar, M_h, delta_*
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:hd-bounds@L285-L285 | epsilon<=1
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:torus
KIND: lemma
TITLE: The flat torus of $H=h+f$
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L289-L302
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L303-L318
CONTRACT_ID: bpI:p3:torus
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting with epsilon <= 1; D = D-frak; I in B real; omega* in R^2, s' in R with grad h(I) = s' omega*; omega := s' omega*; K(theta) := (theta,I)
SOURCE_QUANTIFIERS: I, omega*, s' fixed; then for theta in T_{s/2}
SOURCE_CONCLUSION: for theta in T_{s/2}: (a) K holomorphic, primary, real on reals, K(T_{s/2}) in D, DK(theta)v = (v,0), ¦DK¦=1, G_K = I_2, ¦G_K^{-1}¦=1, N_{.j} = (0,e_j); for theta in T_rho: B_mu(K(theta)) in D; (b) E_{H,K,omega} = X_f(K(theta)), ¦E¦ <= F_1 epsilon; (c) T_H(theta) = B_h(I)+R(theta), ¦R¦ <= 2 F_2 epsilon, ¦avg T_H - B_h(I)¦ <= 2F_2 epsilon; (d) if I in S and epsilon <= eps_T then det avg T_H != 0, ¦avg T_H^{-1}¦ <= 2S_h = sigma_T - mu; (e) ¦Ebar_H(K)-h(I)¦ <= epsilon, hence ¦Ebar_H(K)-E_0¦ <= epsilon whenever h(I)=E_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, bpI:p3:constants, bpI:p0:stripdata#IsPrimaryOnStrip, bpI:p0:stripdata#IsRealOnReals, bpI:p0:stripdata#gramMatrix, bpI:p0:stripdata#normalFrame, bpI:p0:stripdata#invarianceError, bpI:p0:extended#extendedTorsionAverage, bpI:p0:extended#energyAverage, stepI:p3:to-torus, stepI:p3:to-error, stepI:p3:to-torsion, stepI:p3:to-neumann, stepI:p3:to-energy
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L290-L290 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L298-L298 | mu, rho, F_1, F_2, S_h, eps_T, sigma_T
EDGE: bpI:p0:stripdata#IsPrimaryOnStrip | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L293-L293 | K primary
EDGE: bpI:p0:stripdata#IsRealOnReals | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L293-L293 | K real on reals
EDGE: bpI:p0:stripdata#gramMatrix | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L293-L293 | G_K
EDGE: bpI:p0:stripdata#normalFrame | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L293-L293 | N_{.j}
EDGE: bpI:p0:stripdata#invarianceError | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L295-L295 | E_{H,K,omega}
EDGE: bpI:p0:extended#extendedTorsionAverage | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L297-L297 | avg T_H
EDGE: bpI:p0:extended#energyAverage | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L299-L299 | Ebar_H(K)
EDGE: stepI:p3:to-torus | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L304-L304 | proof step of this result
EDGE: stepI:p3:to-error | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L308-L308 | proof step of this result
EDGE: stepI:p3:to-torsion | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L310-L310 | proof step of this result
EDGE: stepI:p3:to-neumann | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L314-L314 | proof step of this result
EDGE: stepI:p3:to-energy | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:torus@L316-L316 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:to-torus
KIND: step
TITLE: The torus and its frame
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torus@L304-L307
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torus@L304-L307
CONTRACT_ID: stepI:p3:to-torus
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Steps tr-torus, tr-frame of the trivial-torus lemma (K and the frame do not involve the Hamiltonian); D-frak; mu<=s/8, mu<=r_0/8
SOURCE_QUANTIFIERS: I in B real
SOURCE_CONCLUSION: K affine, primary, real on reals, DK=(id,0), G_K=I_2, N_{.j}=(0,e_j) constant; ¦DK v¦=¦v¦; K(T_{s/2}) in T_{s/2} x B in D; for theta in T_rho, B_mu(K(theta)) in D
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p1:tr-torus, stepI:p1:tr-frame, bpI:p1:trivial, bpI:p3:constants, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p1:tr-torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torus@L305-L305 | K affine, primary, DK, G_K = I
EDGE: stepI:p1:tr-frame | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torus@L305-L305 | N_{.j} = (0,e_j)
EDGE: bpI:p1:trivial | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torus@L305-L305 | trivial-torus lemma (K and the frame do not involve the Hamiltonian)
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torus@L306-L306 | mu, rho, D-frak, s, r_0
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torus@L306-L306 | B in B_{r_0}, I real in B
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:to-error
KIND: step
TITLE: The error
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L308-L309
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L308-L309
CONTRACT_ID: stepI:p3:to-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X_H = ((d_I h + d_I f), -d_theta f); trivial-torus step tr-field; hypothesis-d
SOURCE_QUANTIFIERS: I in B real, omega = grad h(I)
SOURCE_CONCLUSION: E_{H,K,omega} = X_f(K(theta)) and ¦X_f¦ <= F_1 epsilon on D
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:trivial, stepI:p1:tr-field, stepI:p3:to-torus, bpI:p3:hypothesis-d, bpI:p3:constants, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:trivial | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L309-L309 | grad h(I) = omega as the frequency of the trivial torus
EDGE: stepI:p1:tr-field | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L309-L309 | (d_a h(I))_a = grad h(I) = omega
EDGE: stepI:p3:to-torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L309-L309 | DK omega = (omega,0)
EDGE: bpI:p3:hypothesis-d | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L309-L309 | ¦X_f¦ <= F_1 epsilon
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L309-L309 | F_1
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-error@L309-L309 | H = h+f
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:to-torsion
KIND: step
TITLE: Torsion and border
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L310-L313
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L310-L313
CONTRACT_ID: stepI:p3:to-torsion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: trivial-torus steps tr-torsion, tr-compare; Part 1 last-row (a) and extended-basic (a); D_theta N_{.j}=0; hypothesis-d
SOURCE_QUANTIFIERS: I in B real
SOURCE_CONCLUSION: T_ij = d_i d_j h(I) + d_{I_i}d_{I_j} f(theta,I); last column omega = grad h(I); last row Y_b = d_b h(I) + d_{I_b} f(theta,I); T_H = B_h(I) + R with R the f-part, ¦R¦ <= 2F_2 epsilon (row-sums), avg T_H defined (integrable) and ¦avg T_H - B_h(I)¦ <= 2F_2 epsilon, avg B_h = B_h
CONSTANT_SCOPE: F_2 from the constants
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:to-torsion#p1-setting, stepI:p1:tr-torsion, bpI:p1:last-row, stepI:p1:tr-compare, bpI:p3:hypothesis-d, bpI:p1:extended-basic, K:bp:p1:ext-integral, stepI:p3:to-torus, stepI:p3:to-error, bpI:p3:constants, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:to-torsion#p1-setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L311-L311 | Assumption bpI:p1:setting under which last-row and extended-basic are applied
EDGE: stepI:p1:tr-torsion | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L311-L311 | T_ij = d_i d_j H, as for the trivial torus
EDGE: bpI:p1:last-row | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L312-L312 | (a): last row Y = omega^T - (eta^L)^T
EDGE: stepI:p1:tr-compare | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | upper-left block and border of B_h(I)
EDGE: bpI:p3:hypothesis-d | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | ¦D^2 f¦ <= F_2 epsilon, ¦X_f¦ <= F_1 epsilon
EDGE: bpI:p1:extended-basic | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | (a): average defined, integrable
EDGE: K:bp:p1:ext-integral | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | ¦avg¦ <= sup
EDGE: stepI:p3:to-torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L311-L311 | frame N_{.j} = (0,e_j), D_theta N = 0
EDGE: stepI:p3:to-error | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L312-L312 | E = X_f so eta^L_b = -d_{I_b} f
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | F_1, F_2
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion@L313-L313 | H = h+f; B_h from h
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:to-torsion#p1-setting
KIND: step
TITLE: Part 1 setting for the flat torus of H = h+f (Part 1 lemmas applied in Part 3)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#p1-setting@L310-L313
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#p1-setting@L310-L313
CONTRACT_ID: stepI:p3:to-torsion#p1-setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p1:setting for (H, D-frak, K, omega) with K(theta) = (theta,I), omega = s' omega*; det G_K = 1
SOURCE_QUANTIFIERS: as in the torus lemma
SOURCE_CONCLUSION: Assumption bpI:p1:setting holds (so Part 1's last-row and extended-basic lemmas apply to H, K, omega on T_{s/2}): (I1)-(I4) by hypothesis-d, K holomorphic, primary, real on reals with K(T_{s/2}) in D, det G_K != 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p1:setting, bpI:p1:setting#k-bridge, bpI:p3:hypothesis-d, stepI:p3:to-torus, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p1:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#p1-setting@L312-L312 | Assumption bpI:p1:setting, needed by last-row and extended-basic
EDGE: bpI:p1:setting#k-bridge | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#p1-setting@L312-L312 | K standing data under the Part 1 setting
EDGE: bpI:p3:hypothesis-d | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#p1-setting@L312-L312 | (I1)-(I4) for (D,H)
EDGE: stepI:p3:to-torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#p1-setting@L312-L312 | K holomorphic, primary, real on reals; K(T_{s/2}) in D; det G_K = 1
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-torsion#p1-setting@L312-L312 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: Part 1's last-row and extended-basic lemmas assume Assumption bpI:p1:setting, which includes gamma>0 and omega in Dio_{gamma,tau}, but the torus lemma is stated for an arbitrary omega* in R^2 with grad h(I) = s' omega* (no Diophantine property); the blueprint cites these lemmas without checking the setting (Diophantine condition holds only in the application, bpI:p3:apply, via patch-rays).

NODE: stepI:p3:to-neumann
KIND: step
TITLE: Invertibility
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-neumann@L314-L315
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-neumann@L314-L315
CONTRACT_ID: stepI:p3:to-neumann
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ¦B_h^{-1}¦ <= S_h on S; ¦avg R¦ <= 2F_2 epsilon; epsilon <= eps_T = 1/(4 S_h F_2)
SOURCE_QUANTIFIERS: I in S
SOURCE_CONCLUSION: ¦B_h^{-1}¦¦avg R¦ <= 1/2 so avg T_H = B_h + avg R is invertible with ¦avg T_H^{-1}¦ <= 2 S_h = sigma_T - mu (real matrix)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: K:bp:p1:neumann, K:bp:p1:real-inverse, stepI:p3:to-torsion, bpI:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: K:bp:p1:neumann | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-neumann@L315-L315 | Neumann series
EDGE: K:bp:p1:real-inverse | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-neumann@L315-L315 | real inverse
EDGE: stepI:p3:to-torsion | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-neumann@L315-L315 | ¦avg R¦ <= 2F_2 epsilon, avg T_H = B_h + avg R
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-neumann@L315-L315 | S_h, F_2, eps_T, sigma_T, mu
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:to-energy
KIND: step
TITLE: Energy average
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-energy@L316-L317
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-energy@L316-L317
CONTRACT_ID: stepI:p3:to-energy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H(K(theta)) = h(I)+f(theta,I); ¦f¦<=epsilon on T_{s_0} x B_{r_0}
SOURCE_QUANTIFIERS: I in B real
SOURCE_CONCLUSION: ¦Ebar_H(K) - h(I)¦ = ¦int f(theta,I) dtheta¦ <= epsilon
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, bpI:p0:extended#energyAverage
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-energy@L317-L317 | ¦f¦ <= epsilon on T_{s_0} x B_{r_0}, H = h+f
EDGE: bpI:p0:extended#energyAverage | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:to-energy@L317-L317 | Ebar_H(K)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:apply
KIND: lemma
TITLE: One application of I-G1
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L320-L333
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L334-L349
CONTRACT_ID: bpI:p3:apply
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting; patch p with ray omega* = omega*_{p,+-}, gamma = gamma_{p,+-}; epsilon <= 1, epsilon <= eps_T, epsilon < eps^{p,+-} := gamma^4 rho^8/(C_1^{p,+-} F_1); E in R with ¦E-h(c)¦<=delta_E; I := I_+-(E), s' := s^o_+-
SOURCE_QUANTIFIERS: patch p fixed; I-G1 applied with n=2, tau=2, rho=s/4, rho_infty=s/8, the constants M, sigma_K, sigma_B, sigma_T, mu, sigma_omega, nu, gammabar := gamma, omega*; then C_i^{p,+-}; then for all f, epsilon, E
SOURCE_CONCLUSION: the hypotheses (I1)-(I13) of I-G1 hold for D = D-frak, H = h+f, K(theta) = (theta,I), s = s^o_+-, gamma, e = F_1 epsilon, E_0 = E; consequently there are K_infty and s_infty in (1,sigma_omega) with (O1)-(O6), in particular ¦K_infty-K¦ <= C_2 F_1 epsilon/(gamma^2 rho^4) on T_{rho_infty}, ¦(s_infty - s^o_+-) omega*¦ <= C_3 F_1 epsilon/(gamma^2 rho^4)
CONSTANT_SCOPE: C_i^{p,+-} (the I-G1 constants) depend only on (B,s_0,r_0,h,B',eta) and the ray
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, bpI:p3:constants, bpI:p0:g1, bpI:p3:patch, bpI:p3:patch-rays, bpI:p3:points, stepI:p3:ap-d, stepI:p3:ap-k, stepI:p3:ap-t, stepI:p3:ap-ray, stepI:p3:ap-error, stepI:p3:ap-small, stepI:p3:ap-conclusion
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L321-L321 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L322-L322 | M, sigma's, mu, sigma_omega, nu, rho, rho_infty, F_1, eps_T
EDGE: bpI:p0:g1 | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L321-L321 | I-G1 applied
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L327-L327 | delta_E, c, (E,m_+-)
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L321-L321 | omega*_{p,+-}, gamma_{p,+-}
EDGE: bpI:p3:points | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L327-L327 | I_+-(E), s^o_+-
EDGE: stepI:p3:ap-d | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L335-L335 | proof step of this result
EDGE: stepI:p3:ap-k | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L337-L337 | proof step of this result
EDGE: stepI:p3:ap-t | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L339-L339 | proof step of this result
EDGE: stepI:p3:ap-ray | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L341-L341 | proof step of this result
EDGE: stepI:p3:ap-error | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L343-L343 | proof step of this result
EDGE: stepI:p3:ap-small | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L345-L345 | proof step of this result
EDGE: stepI:p3:ap-conclusion | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:apply@L347-L347 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ap-d
KIND: step
TITLE: (I1)--(I4)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-d@L335-L336
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-d@L335-L336
CONTRACT_ID: stepI:p3:ap-d
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypothesis-d with epsilon <= 1
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: (I1)-(I4) of I-G1 hold for D-frak, H = h+f with the constant M
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:hypothesis-d, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:hypothesis-d | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-d@L336-L336 | (I1)-(I4)
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-d@L336-L336 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ap-k
KIND: step
TITLE: (I5)--(I7)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-k@L337-L338
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-k@L337-L338
CONTRACT_ID: stepI:p3:ap-k
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: torus (a) with I in B (points(b))
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: (I5)-(I7): K holomorphic, primary, real on reals on T_rho; B_mu(K) in D, ¦DK¦ = 1 = sigma_K - mu; det G_K = 1, ¦G_K^{-1}¦ = 1 = sigma_B - mu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:torus, bpI:p3:points, bpI:p3:constants, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-k@L338-L338 | (a)
EDGE: bpI:p3:points | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-k@L338-L338 | (b): I_+- in B
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-k@L338-L338 | sigma_K, sigma_B, mu, rho
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-k@L338-L338 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ap-t
KIND: step
TITLE: (I8)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-t@L339-L340
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-t@L339-L340
CONTRACT_ID: stepI:p3:ap-t
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: grad h(I) = s^o omega*; I in S; torus (d); epsilon <= eps_T
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: (I8): det avg T_H != 0 and ¦avg T_H^{-1}¦ <= sigma_T - mu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:points, bpI:p3:torus, bpI:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:points | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-t@L340-L340 | (a): grad h(I_+-) = s^o omega*; (b): I_+- in S
EDGE: bpI:p3:torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-t@L340-L340 | (d)
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-t@L340-L340 | sigma_T, mu, eps_T
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ap-ray
KIND: step
TITLE: (I9)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-ray@L341-L342
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-ray@L341-L342
CONTRACT_ID: stepI:p3:ap-ray
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: points(a): 2<s^o<4M_g/m_h; m_h/4<¦omega*¦<m_h/2
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: (I9): 1<s<sigma_omega, (s-1)¦omega*¦ > nu and (sigma_omega-s)¦omega*¦ > nu
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:points, bpI:p3:patch-rays, bpI:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:points | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-ray@L342-L342 | (a): s^o in (2, 4M_g/m_h)
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-ray@L342-L342 | m_h/4 < ¦omega*¦ < m_h/2
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-ray@L342-L342 | nu, sigma_omega
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ap-error
KIND: step
TITLE: (I10)--(I12)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-error@L343-L344
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-error@L343-L344
CONTRACT_ID: stepI:p3:ap-error
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: patch-rays: 0<gamma, omega* in Dio_{gamma,2}; torus (b),(e); h(I) = E; F_1>=1
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: (I10)-(I12): 0<gamma<=gammabar = gamma, omega* in Dio_{gamma,2}, e = F_1 epsilon >= 0; (I11) E bound from torus (b); (I12) ¦Ebar_H(K)-E_0¦ <= epsilon <= F_1 epsilon = e
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:patch-rays, bpI:p3:torus, bpI:p3:points, bpI:p3:constants, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-error@L344-L344 | gamma>0, omega* in Dio_{gamma,2}
EDGE: bpI:p3:torus | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-error@L344-L344 | (b), (e)
EDGE: bpI:p3:points | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-error@L344-L344 | (a): h(I) = E = E_0
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-error@L344-L344 | F_1 >= 1, e = F_1 epsilon
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-error@L344-L344 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ap-small
KIND: step
TITLE: (I13)
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-small@L345-L346
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-small@L345-L346
CONTRACT_ID: stepI:p3:ap-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: epsilon < eps^{p,+-} = gamma^4 rho^8/(C_1 F_1)
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: (I13): C_1 e/(gamma^4 rho^{4 tau}) = C_1 F_1 epsilon/(gamma^4 rho^8) < 1 (trivially if epsilon = 0)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:constants, bpI:p3:patch-rays
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-small@L346-L346 | e = F_1 epsilon, rho = s/4, tau = 2
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-small@L346-L346 | gamma = gamma_{p,+-}
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:ap-conclusion
KIND: step
TITLE: Conclusion
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L347-L348
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L347-L348
CONTRACT_ID: stepI:p3:ap-conclusion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: hypotheses (I1)-(I13) established in steps ap-d ... ap-small
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: Theorem I-G1 gives K_infty, s_infty in (1,sigma_omega) with (O1)-(O6); C_2 e/(gamma^2 rho^{2 tau}) = C_2 F_1 epsilon/(gamma^2 rho^4)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p0:g1, stepI:p3:ap-d, stepI:p3:ap-k, stepI:p3:ap-t, stepI:p3:ap-ray, stepI:p3:ap-error, stepI:p3:ap-small, bpI:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p0:g1 | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L348-L348 | I-G1 applied
EDGE: stepI:p3:ap-d | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L348-L348 | (I1)-(I4)
EDGE: stepI:p3:ap-k | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L348-L348 | (I5)-(I7)
EDGE: stepI:p3:ap-t | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L348-L348 | (I8)
EDGE: stepI:p3:ap-ray | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L348-L348 | (I9)
EDGE: stepI:p3:ap-error | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L348-L348 | (I10)-(I12)
EDGE: stepI:p3:ap-small | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L348-L348 | (I13)
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:ap-conclusion@L348-L348 | F_1, rho
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:uniform
KIND: definition
TITLE: Uniform constants
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:uniform@L359-L369
PROOF_SOURCE: -
CONTRACT_ID: bpI:p3:uniform
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the patches p_j (j in P) of the cover, their rays, and the constants C_i^{j,+-} of Lemma apply
SOURCE_QUANTIFIERS: the data, then patches, rays, gamma_{j,+-}, C_i^{j,+-}
SOURCE_CONCLUSION: defines C_K := max_{j,+-} F_1 max{C_2^{j,+-},C_3^{j,+-}}/(gamma_{j,+-}^2 rho^4) and eps_1 := min{1, eps_T, min_j delta_{E,j}/2, min_{j,+-} eps^{j,+-}, eta_1/(2C_K)} in (0,1]; neither depends on f, epsilon, E, I_0
CONSTANT_SCOPE: C_K, eps_1 depend only on (B,s_0,r_0,h,B',eta); order of choice (B,s_0,r_0,h,B',eta) -> D-frak, mu, delta_*, M, F_j, S, m_h, M_g, S_h, nu, sigma's -> patches -> rays, gamma_{j,+-} -> C_i^{j,+-} -> C_K, eps_1
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:cover, bpI:p3:patch-rays, bpI:p3:apply, bpI:p3:patch, bpI:p3:constants, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:cover | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:uniform@L360-L360 | patches p_j
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:uniform@L360-L360 | rays and gamma_{j,+-}
EDGE: bpI:p3:apply | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:uniform@L360-L360 | constants C_i^{j,+-}, eps^{j,+-}
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:uniform@L365-L365 | delta_{E,j}
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:uniform@L362-L362 | F_1, eps_T, eta_1, rho
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:uniform@L360-L360 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bpI:p3:tori
KIND: proposition
TITLE: Invariant tori on both sides: output of Part~\ref{bpI:p3}
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L371-L387
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L388-L405
CONTRACT_ID: bpI:p3:tori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Assumption bpI:p3:setting (the data of I-HEAD with n=2, B' nonempty, eta>0, tau=2); eps_1, C_K as in Definition uniform; rho_infty = s/8; f, epsilon with the hypotheses of I-HEAD and epsilon<eps_1; I_0 in closure B'; E in R with ¦E-h(I_0)¦<=epsilon
SOURCE_QUANTIFIERS: (B,s_0,r_0,h,B',eta) fixed; then eps_1, C_K, P, p_j; then for all f, epsilon<eps_1, I_0, E: there are j, then for each sign K_+-, s_+-, I_+-
SOURCE_CONCLUSION: there are j in P with ¦I_0-c_j¦<rho_j and for each sign a map K_+-, s_+- in (1,sigma_omega) and a real point I_+- in R^2 with, for H = h+f, omega*_+- = omega*_{j,+-}, omega_+- = s_+- omega*_+-: (T1) K_+- holomorphic on T_{rho_infty}, primary, real on reals, real-analytic on R^2; (T2) E_{H,K_+-,omega_+-} = 0 on T_{rho_infty}, omega*_+- in Dio_{gamma_{j,+-},2}, omega_+- in R^2 minus {0}; (T3) H(K_+-(theta)) = E on T_{rho_infty} (pointwise), Ham_{h,f}(K_+-(theta)) = E for real theta; (T4) ¦K_+-(theta) - (theta,I_+-)¦ <= C_K epsilon on T_{rho_infty}, u_+-, v_+- holomorphic 1-periodic with ¦u¦,¦v¦ <= C_K epsilon, ¦Du¦,¦Dv¦ <= 4C_K epsilon/rho_infty on T_{rho_infty/2}; (T5) h(I_+-) = E, grad h(I_+-) = s^o_+- omega*_+- with s^o in (2,4M_g/m_h), ¦omega_+- - grad h(I_+-)¦ <= C_K epsilon, positive multiples of omega*_+-; (T6) I_+- in B, ¦I_+--I_0¦<eta_1/2<=eta/2, ¦K_+-(theta)_2 - I_0¦<eta and K_+-(theta)_2 in S in B for real theta, B_{mu/2}(K_+-(theta)) in D-frak and ¦DK_+-¦ <= sigma_K - mu/2 on T_{rho_infty}; (T7) ordering of slopes: I_+- = Phi_j^{-1}(E,m_{j,+-}), m_{c_j}(I_-) <= -delta_{m,j}/2, m_{c_j}(I_+) >= delta_{m,j}/2, ¦m_{c_j}(I_0)¦<delta_{m,j}/4
CONSTANT_SCOPE: eps_1, C_K, rho_infty, P, sigma_omega, M_g depend only on (B,s_0,r_0,h,B',eta); K_+-, s_+-, I_+-, j depend on f, epsilon, E, I_0
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:setting, bpI:p3:uniform, bpI:p3:constants, bpI:p0:domains#complexStrip, bpI:p0:stripdata#IsPrimaryOnStrip, bpI:p0:stripdata#IsRealOnReals, bpI:p0:stripdata#invarianceError, bpI:p0:realham#realHamiltonian, stepI:p3:tori-patch, stepI:p3:tori-base, stepI:p3:tori-ig1, stepI:p3:tori-close, stepI:p3:tori-position
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L372-L372 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
EDGE: bpI:p3:uniform | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L372-L372 | eps_1, C_K
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L385-L385 | sigma_omega, M_g, rho_infty
EDGE: bpI:p0:domains#complexStrip | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L376-L376 | strip T_{rho_infty}
EDGE: bpI:p0:stripdata#IsPrimaryOnStrip | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L376-L376 | K_+- primary
EDGE: bpI:p0:stripdata#IsRealOnReals | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L376-L376 | K_+- real on reals
EDGE: bpI:p0:stripdata#invarianceError | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L377-L377 | E_{H,K,omega}
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L378-L378 | Ham_{h,f}
EDGE: stepI:p3:tori-patch | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L389-L389 | proof step of this result
EDGE: stepI:p3:tori-base | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L392-L392 | proof step of this result
EDGE: stepI:p3:tori-ig1 | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L394-L394 | proof step of this result
EDGE: stepI:p3:tori-close | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L398-L398 | proof step of this result
EDGE: stepI:p3:tori-position | blueprint-I/parts/p3-iso-local-charts.tex#bpI:p3:tori@L401-L401 | proof step of this result
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Preextract candidate edge to bpI:p0:g1 at the statement dropped: I-G1 is consumed in stepI:p3:tori-ig1 and tori-position (the statement quotes it as provenance).

NODE: stepI:p3:tori-patch
KIND: step
TITLE: Choice of the patch
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-patch@L389-L391
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-patch@L389-L391
CONTRACT_ID: stepI:p3:tori-patch
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: balls cover closure B' (cover); (P3); eps<eps_1<=delta_E/2
SOURCE_QUANTIFIERS: I_0 in closure B', E fixed
SOURCE_CONCLUSION: there is j with ¦I_0-c_j¦<rho_j; ¦h(I_0)-h(c)¦<delta_E/2; hence ¦E-h(c)¦ <= epsilon + delta_E/2 <= delta_E
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:cover, bpI:p3:patch, bpI:p3:uniform, bpI:p3:setting
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:cover | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-patch@L390-L390 | balls cover closure B'
EDGE: bpI:p3:patch | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-patch@L390-L390 | (P3): ¦h(I_0)-h(c)¦<delta_E/2
EDGE: bpI:p3:uniform | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-patch@L391-L391 | eps_1 <= delta_{E,j}/2
EDGE: bpI:p3:setting | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-patch@L390-L390 | data of Part 3 (B, s_0, r_0, h, B', eta, tau=2, f, eps, H=h+f)
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:tori-base
KIND: step
TITLE: The base points
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-base@L392-L393
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-base@L392-L393
CONTRACT_ID: stepI:p3:tori-base
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: points lemma for the patch p_j and E
SOURCE_QUANTIFIERS: as in the proposition
SOURCE_CONCLUSION: I_+-:=I_+-(E), s^o_+- from points: T5 (first part), T7, I_+- in B, ¦I_+--I_0¦<eta_1/2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:points, stepI:p3:tori-patch
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:points | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-base@L393-L393 | (a),(b),(c)
EDGE: stepI:p3:tori-patch | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-base@L393-L393 | j and ¦E-h(c)¦<=delta_E
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:tori-ig1
KIND: step
TITLE: Application of I-G1
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L394-L397
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L394-L397
CONTRACT_ID: stepI:p3:tori-ig1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: epsilon<eps_1<=min{1,eps_T,eps^{j,+-}}; lemma apply; I-G1 (O1)-(O6) with e = F_1 epsilon, E_0 = E
SOURCE_QUANTIFIERS: as in the proposition
SOURCE_CONCLUSION: K_+- := K_infty, s_+- := s_infty in (1,sigma_omega); T1 from (O1) and real-analyticity on R^n; T2 from (O2), omega*_+- Dio is a property of the ray; T3 from (O3) and Ham_{h,f} = Re H = H at real points; T5: (O6) with C_3 F_1 epsilon/(gamma^2 rho^4) <= C_K epsilon, multiples positive since s_+- > 1, s^o > 2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:apply, bpI:p0:g1, bpI:p3:uniform, stepI:p3:tori-base, bpI:p3:patch-rays, K:bp:p1:real-restriction, bpI:p0:realham#realHamiltonian
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:apply | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L395-L395 | application of I-G1 for the patch p_j and ray +-
EDGE: bpI:p0:g1 | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L395-L395 | (O1)-(O6)
EDGE: bpI:p3:uniform | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L395-L395 | eps_1 <= min{1,eps_T,eps^{j,+-}}, C_K
EDGE: stepI:p3:tori-base | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L395-L395 | I_+-(E), s^o_+- used in apply
EDGE: bpI:p3:patch-rays | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L396-L396 | omega*_+- in Dio_{gamma_{j,+-},2}
EDGE: K:bp:p1:real-restriction | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L396-L396 | real-analytic restriction to R^2
EDGE: bpI:p0:realham#realHamiltonian | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-ig1@L396-L396 | Ham_{h,f} = Re H = H at real points where H is real
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:tori-close
KIND: step
TITLE: Closeness and derivatives
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-close@L398-L400
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-close@L398-L400
CONTRACT_ID: stepI:p3:tori-close
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (O5): ¦K_+--K¦ <= C_2 F_1 epsilon/(gamma^2 rho^4) <= C_K epsilon; K = (theta,I_+-); Cauchy estimate
SOURCE_QUANTIFIERS: as in the proposition
SOURCE_CONCLUSION: T4: u_+-,v_+- holomorphic 1-periodic on T_{rho_infty}, ¦u¦,¦v¦ <= C_K epsilon, ¦Du¦,¦Dv¦ <= 4C_K epsilon/rho_infty on T_{rho_infty/2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: stepI:p3:tori-ig1, bpI:p3:uniform, K:bp:p1:cauchy-strip, bpI:p0:stripdata#IsPrimaryOnStrip, bpI:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: stepI:p3:tori-ig1 | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-close@L399-L399 | (O5) with K_+- = K_infty
EDGE: bpI:p3:uniform | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-close@L399-L399 | C_K
EDGE: K:bp:p1:cauchy-strip | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-close@L400-L400 | Cauchy estimate on the strip, n=2, delta = rho_infty/2
EDGE: bpI:p0:stripdata#IsPrimaryOnStrip | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-close@L399-L399 | K_+- and K primary give 1-periodicity of the difference
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-close@L400-L400 | rho_infty = s/8
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: stepI:p3:tori-position
KIND: step
TITLE: Position
STATEMENT_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L401-L404
PROOF_SOURCE: blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L401-L404
CONTRACT_ID: stepI:p3:tori-position
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: eps<eta_1/(2C_K); ¦I_+--I_0¦<eta_1/2; (O4); compact lemma
SOURCE_QUANTIFIERS: as in the proposition
SOURCE_CONCLUSION: T6: ¦K_+-(theta)_2 - I_+-¦ <= C_K epsilon<eta_1/2, so ¦K_+-(theta)_2 - I_0¦ < eta_1 <= eta; dist(K_+-(theta)_2, closure B') < eta_1 <= d_B/2 so K_+-(theta)_2 in S in B; B_{mu/2}(K_+-) in D-frak and ¦DK_+-¦ <= sigma_K - mu/2 are (O4)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bpI:p3:compact, bpI:p0:g1, stepI:p3:tori-ig1, stepI:p3:tori-close, stepI:p3:tori-base, bpI:p3:uniform, bpI:p3:constants
ROUTES: -
ROUTE_FOR: -
EDGE: bpI:p3:compact | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L403-L403 | S in B
EDGE: bpI:p0:g1 | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L403-L403 | (O4)
EDGE: stepI:p3:tori-ig1 | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L402-L402 | K_+- = K_infty with (O4)
EDGE: stepI:p3:tori-close | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L402-L402 | ¦K_+--K¦ <= C_K epsilon
EDGE: stepI:p3:tori-base | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L402-L402 | ¦I_+--I_0¦<eta_1/2
EDGE: bpI:p3:uniform | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L402-L402 | eps_1 <= eta_1/(2C_K)
EDGE: bpI:p3:constants | blueprint-I/parts/p3-iso-local-charts.tex#stepI:p3:tori-position@L402-L402 | eta_1, d_B, S, sigma_K, mu, D-frak
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-I-p3
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
