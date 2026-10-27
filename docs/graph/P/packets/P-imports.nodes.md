NODE: I:bpI:p7:chart
KIND: external
TITLE: [I] Delaunay chart
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:chart@L242-L246
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:chart
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none beyond the definitions of Q, C_0, C, D_R
SOURCE_QUANTIFIERS: Q on D_R
SOURCE_CONCLUSION: Q is 2pi-periodic in ell and g and induces a bijection (R/2piZ)^2 x C_0 -> C; Q : D_R -> C is a surjective real-analytic local diffeomorphism; the induced map on the quotient is a real-analytic diffeomorphism onto the open set C, symplectic by Proposition symplectic; E o Q = -1/(2L^2), Gamma o Q = G; the loci e = 0 and e = 1 are excluded from C_0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:chart; shared Lean provider. There: KIND theorem, contract bpI:p7:chart v1. Cited as \Iref{bpI:p7:chart}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:circular
KIND: external
TITLE: [I] Circular endpoint
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:circular@L303-L306
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:circular
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:circular; shared Lean provider. Cited as \Iref{bpI:p7:circular}. WARNING: EXCLUDED in the I graph: outside every root closure; cited by track P (Part 7 L10, L480): no root-feeding proof consumes it (checked: no reference from Parts 0-3, 5, 8, and none from the nodes of Part 7 that feed I-R3BP: complex-domain, exact-ham, period-one, transfer, nondeg). Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:elements
KIND: external
TITLE: [I] Kepler region and elements
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:elements@L144-L156
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:elements
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (definition; typing data (q,p) in R^2 x R^2, q != 0)
SOURCE_QUANTIFIERS: (q,p)
SOURCE_CONCLUSION: defines E(q,p) = (1/2)|p|_2^2 - 1/|q|_2, the open region C = {q != 0, E < 0, Gamma > 0, Gamma^2 < -1/(2E)} and on C the elements L = 1/sqrt(-2E), G = Gamma, a = L^2, e = sqrt(1 + 2E Gamma^2), with L > G > 0, e in (0,1), E = -1/(2a), Gamma^2 = a(1 - e^2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:elements; shared Lean provider. There: KIND definition, contract bpI:p7:elements v1. Cited as \Iref{bpI:p7:elements}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:kepler-eq
KIND: external
TITLE: [I] Kepler's equation, analytic solution
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:kepler-eq@L91-L114
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:kepler-eq
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < e_1 < 1; e_2 = (1+e_1)/2, vartheta_* = (1+e_2)/2, y_0 = arcosh(vartheta_*/e_2), delta_K = (1/2)(1-vartheta_*) y_0, delta_E = min{e_2-e_1, (1-vartheta_*) y_0/(2 cosh y_0)}; P(e_1) = {(ell,e) in C^2 : |Im ell| < delta_K, dist(e, [-e_1,e_1]) < delta_E}
SOURCE_QUANTIFIERS: e_1 in (0,1), then the constants e_2, vartheta_*, y_0, delta_K, delta_E, then (ell, e) in P(e_1)
SOURCE_CONCLUSION: P is open, contains {(ell,e) real : |e| <= e_1}, |e| < e_1 + delta_E <= e_2, |Im e| < delta_E; there is a unique holomorphic u : P -> C with |Im u| <= y_0 and u - e sin u = ell; (a) |sin u|,|cos u| <= cosh y_0 = vartheta_*/e_2, |e cos u| <= vartheta_* < 1, |1 - e cos u| >= 1 - vartheta_*; (b) d_ell u = 1/(1 - e cos u), d_e u = sin u/(1 - e cos u), u(ell,0) = ell, u(ell+2pi,e) = u(ell,e) + 2pi, sin u, cos u, (1-e cos u)^-1 holomorphic and 2pi-periodic in ell; (c) u real at real points, exactly one real solution u_R(ell,e) for real ell and e in (-1,1), u_R real-analytic on R x (-1,1), u_R(.,e) an increasing diffeomorphism of R with u_R(0,e) = 0, u_R(2pi,e) = 2pi, u = u_R on real points of every P(e_1)
CONSTANT_SCOPE: e_2, vartheta_*, y_0, delta_K, delta_E depend only on e_1
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:kepler-eq; shared Lean provider. There: KIND proposition, contract bpI:p7:kepler-eq v1. Cited as \Iref{bpI:p7:kepler-eq}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:means
KIND: external
TITLE: [I] Mean values
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:means@L290-L296
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:means
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:means; shared Lean provider. Cited as \Iref{bpI:p7:means}. WARNING: EXCLUDED in the I graph: outside every root closure; cited by track P (Part 7 L10, L480): no root-feeding proof consumes it (checked: no reference from Parts 0-3, 5, 8, and none from the nodes of Part 7 that feed I-R3BP: complex-domain, exact-ham, period-one, transfer, nondeg). Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:orbit-identities
KIND: external
TITLE: [I] Identities for the orbit maps
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-identities@L181-L190
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:orbit-identities
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (ell,g,L,G) in D_R, e = e(L,G), (q,p) = Q(ell,g,L,G), r = |q|_2, u, c, s, D as in Definition orbit-maps
SOURCE_QUANTIFIERS: (ell,g,L,G) in D_R
SOURCE_CONCLUSION: (a) r = L^2 D = L^2(1 - e cos u), L^2(1-e) <= r <= L^2(1+e), |p|_2^2 = (1 + e cos u)/(L^2 D); (b) Gamma(q,p) = G, q.p = L e sin u; (c) E(q,p) = -1/(2L^2), Q(D_R) subset C, elements of Q(ell,g,L,G) are L, G, a = L^2, e; (d) (L e sin u)^2 = -G^2 + 2r - r^2/L^2, L^2 e cos u = L^2 - r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:orbit-identities; shared Lean provider. There: KIND proposition, contract bpI:p7:orbit-identities v1. Cited as \Iref{bpI:p7:orbit-identities}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:orbit-maps
KIND: external
TITLE: [I] Orbit maps
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps@L158-L168
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:orbit-maps
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing data: ell, g, L, e, k; u = u(ell,e) of Proposition kepler-eq
SOURCE_QUANTIFIERS: (ell, g, L, e, k), then (ell, g, L, G) in D_R
SOURCE_CONCLUSION: defines Q_el(ell,g,L,e,k) (X = L^2(c-e), Y = L^2 k s, P_X = -s/(L D), P_Y = k c/(L D), q = R(g)(X,Y), p = R(g)(P_X,P_Y), D = 1 - e c) and the Delaunay orbit map Q(ell,g,L,G) = Q_el(ell,g,L,e(L,G),G/L) with e(L,G) = sqrt(1 - G^2/L^2); on D_R = R^2 x C_0 all quantities are real and D >= 1 - e > 0 (u = u_R)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:orbit-maps; shared Lean provider. There: KIND definition, contract bpI:p7:orbit-maps v1. Cited as \Iref{bpI:p7:orbit-maps}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:orbit-maps-e
KIND: external
TITLE: [I] Orbit maps near $e=0$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:orbit-maps-e@L170-L174
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:orbit-maps-e
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0 < e_1 < 1; P = P(e_1) as in Proposition kepler-eq
SOURCE_QUANTIFIERS: e_1, then (ell,g,L,e,k)
SOURCE_CONCLUSION: Q_el is holomorphic on {(ell,g,L,e,k) : (ell,e) in P, g in C, L in C minus {0}, k in C}, 2pi-periodic in ell and g, real on real points with |e| <= e_1; holomorphic on a neighbourhood of e = 0 (P contains the disc |e| < delta_E), e.g. with k = sqrt(1 - e^2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:orbit-maps-e; shared Lean provider. There: KIND proposition, contract bpI:p7:orbit-maps-e v1. Cited as \Iref{bpI:p7:orbit-maps-e}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:scaling
KIND: external
TITLE: [I] Scaling to a general Kepler strength
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:scaling@L311-L318
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:scaling
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:scaling; shared Lean provider. Cited as \Iref{bpI:p7:scaling}. WARNING: EXCLUDED in the I graph: outside every root closure; cited by track P (Part 7 L10, L480): no root-feeding proof consumes it (checked: no reference from Parts 0-3, 5, 8, and none from the nodes of Part 7 that feed I-R3BP: complex-domain, exact-ham, period-one, transfer, nondeg). Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:symplectic
KIND: external
TITLE: [I] The Delaunay map is symplectic
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:symplectic@L205-L217
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:symplectic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (ell,g,L,G) in D_R (open in R^4); F = 2 L e sin u; for the consequence, U subset R^4 open (target, coordinates (q,p)), H: U -> R of class C^1, W := {w in D_R : Q(w) in U} (open in R^4 since Q is continuous on the open set D_R)
SOURCE_QUANTIFIERS: w in D_R; U open; H: U -> R, C^1; then w in W
SOURCE_CONCLUSION: Q^*(sum p_i dq_i) = L dell + G dg + dF; D Q^T J D Q = J = D Q J D Q^T; Q^*(sum dq_i wedge dp_i) = dell wedge dL + dg wedge dG; D Q(w) invertible; on W: D Q X_{H o Q} = X_H o Q, i.e. w' = X_{H o Q}(w) iff d/dt Q(w) = X_H(Q(w)) for C^1 curves w in W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:symplectic; shared Lean provider. There: KIND proposition, contract bpI:p7:symplectic v1. Cited as \Iref{bpI:p7:symplectic}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:x-change
KIND: external
TITLE: [I] Change of variables in $\R$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-change@L41-L41
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:x-change
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p7:x-change; shared Lean provider. Cited as \Iref{bpI:p7:x-change}. WARNING: EXCLUDED in the I graph: outside every root closure; cited by track P: used only by Proposition means (step mv-cv), which no track-I root consumes (checked: no reference from Parts 0-3, 5, 8 or from any root-feeding node of Part 7). Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:x-forms
KIND: external
TITLE: [I] Exterior calculus on open subsets of $\R^m$
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-forms@L39-L40
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:x-forms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: forms on open subsets of R^m; F smooth with F^*(sum p_i dq_i) = sum P_i dQ_i + dS for a smooth S
SOURCE_QUANTIFIERS: F, S
SOURCE_CONCLUSION: d^2 = 0; d commutes with pull-back by smooth maps; a form is determined by its values on tangent vectors; and DF^T J DF = J (sum dP_i wedge dQ_i standing for -J in the order Q, P)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-I graph, node bpI:p7:x-forms (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bpI:p7:x-forms v1. Cited as \Iref{bpI:p7:x-forms}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:x-hol
KIND: external
TITLE: [I] Holomorphic functions of several variables
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-hol@L32-L34
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:x-hol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none
SOURCE_QUANTIFIERS: holomorphic functions on open subsets of C^m
SOURCE_CONCLUSION: sums, products, compositions and quotients (nonvanishing denominator) of holomorphic functions are holomorphic; exp, sin, cos entire; z^{-1/2} = exp(-(1/2) Log z) holomorphic on {Re z > 0} with |z^{-1/2}| = |z|^{-1/2} <= (Re z)^{-1/2} and z^{-1/2} = 1/sqrt z for z > 0; sqrt holomorphic on {Re z > 0}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-I graph, node bpI:p7:x-hol (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bpI:p7:x-hol v1. Cited as \Iref{bpI:p7:x-hol}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:x-param
KIND: external
TITLE: [I] Parameter integrals
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-param@L36-L36
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:x-param
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Phi holomorphic on an open U in C^m x C with (q, t mu) in U for all t in [0,1]
SOURCE_QUANTIFIERS: Phi, U
SOURCE_CONCLUSION: (q, mu) -> int_0^1 Phi(q, t mu) dt is holomorphic on that set
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-I graph, node bpI:p7:x-param (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bpI:p7:x-param v1. Cited as \Iref{bpI:p7:x-param}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p7:x-weier
KIND: external
TITLE: [I] Weierstrass
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#bpI:p7:x-weier@L35-L35
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p7:x-weier
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a sequence of holomorphic functions on an open set of C^m converging uniformly
SOURCE_QUANTIFIERS: open set U in C^m, functions f_m
SOURCE_CONCLUSION: the uniform limit is holomorphic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-I graph, node bpI:p7:x-weier (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bpI:p7:x-weier v1. Cited as \Iref{bpI:p7:x-weier}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p8:collision-exclusion
KIND: external
TITLE: [I] Collision exclusion from a compact safe set
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:collision-exclusion@L86-L98
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p8:collision-exclusion
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (X,|.|) normed space over R; m in N; x_1,...,x_m in X; c >= 0, mu_1 > 0; for each j and each real mu with |mu| <= mu_1 a point y_j(mu) in X (no continuity) with |y_j(mu) - x_j| <= c|mu|
SOURCE_QUANTIFIERS: X, m, x_j, c, mu_1, y_j fixed; (a) for all S subset X, delta > 0 with |q-x_j| >= delta on S; then for all mu, q, j; (b) S compact
SOURCE_CONCLUSION: (a) with mu_* = mu_1 (c=0) or min{mu_1, delta/(2c)} (c>0): for |mu| <= mu_*, q in S, j: |q - y_j(mu)| >= delta/2; (b) if X finite dimensional, S compact and x_j not in S: delta_S := min_j min_{q in S}|q-x_j| > 0 (vacuous if S empty or m=0) and there are mu_* > 0, d = delta_S/2 > 0 with |q - y_j(mu)| >= d for all q in S, |mu| <= mu_*, j; in particular q != y_j(mu)
CONSTANT_SCOPE: mu_*, delta/2 depend only on (delta, c, mu_1), not on mu, q or the family y_j
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p8:collision-exclusion; shared Lean provider. There: KIND lemma, contract bpI:p8:collision-exclusion v1. Cited as \Iref{bpI:p8:collision-exclusion}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:bpI:p8:min-distance
KIND: external
TITLE: [I] Minimal separation of a compact set of $N$-body configurations
STATEMENT_SOURCE: blueprint-I/parts/p8-r3bp.tex#bpI:p8:min-distance@L117-L120
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p8:min-distance
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node bpI:p8:min-distance; shared Lean provider. Cited as \Iref{bpI:p8:min-distance}. WARNING: EXCLUDED in the I graph: outside every root closure; cited by track P (SPEC ruling). Checked: no \ref{bpI:p8:min-distance} in Parts 0-8 and no I-R3BP proof step uses it (pf-dist uses shell-exclusion only); track P's graph owns it. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: I:stepI:p7:ke-trig
KIND: external
TITLE: [I] Trigonometric bounds
STATEMENT_SOURCE: blueprint-I/parts/p7-delaunay.tex#stepI:p7:ke-trig@L119-L119
PROOF_SOURCE: -
CONTRACT_ID: I:stepI:p7:ke-trig
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u = x + iy in C; e in C
SOURCE_QUANTIFIERS: as in the enclosing result
SOURCE_CONCLUSION: |sin u|^2 = sin^2 x + sinh^2 y, |cos u|^2 = cos^2 x + sinh^2 y, both <= cosh^2 y; |Re sin u| <= cosh y, |Im sin u| <= sinh|y|; |Im(e sin u)| <= |Re e| sinh|y| + |Im e| cosh y
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-I graph, node stepI:p7:ke-trig; shared Lean provider. There: KIND step, contract stepI:p7:ke-trig v1. Cited as \Iref{stepI:p7:ke-trig}. Ownership pending publication of the track-I graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/I/DEPGRAPH.md is published.

NODE: K:bp:p1:cauchy-open
KIND: external
TITLE: [K] Cauchy estimate on open sets
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L474-L479
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:cauchy-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f holomorphic on open U in C^m with |f|<=A on U; closed polydisc of radius delta>0 around z lies in U
SOURCE_QUANTIFIERS: U,f,A,delta>0,z; l; c(m,j) depends only on m and j
SOURCE_CONCLUSION: |d_l f(z)|<=A/delta; |D^j f(z)|<=c(m,j) A delta^-j for j=1,2,3 (iterated Frechet derivative, operator norm)
CONSTANT_SCOPE: c(m,j) depends only on m,j
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:cauchy-open; shared Lean provider. There: KIND lemma, contract bp:p1:cauchy-open v1. Cited as \Kref{bp:p1:cauchy-open}.

NODE: K:bp:p1:decay
KIND: external
TITLE: [K] Coefficient decay
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay@L786-L789
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic, bounded and 1-periodic on T_rho
SOURCE_QUANTIFIERS: rho, u; k in Z^n; rho' with 0<=rho'<rho
SOURCE_CONCLUSION: |hat u_k| <= e^{-2 pi |k|_1 rho'} ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:decay; shared Lean provider. There: KIND lemma, contract bp:p1:decay v1. Cited as \Kref{bp:p1:decay}.

NODE: K:bp:p1:ext-banach
KIND: external
TITLE: [K] Banach's fixed point theorem
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-banach@L95-L96
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:ext-banach
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-K graph, node bp:p1:ext-banach (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bp:p1:ext-banach v1. Cited as \Kref{bp:p1:ext-banach}.

NODE: K:bp:p1:ext-cramer
KIND: external
TITLE: [K] Cramer's rule
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-cramer@L97-L99
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:ext-cramer
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-K graph, node bp:p1:ext-cramer (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bp:p1:ext-cramer v1. Cited as \Kref{bp:p1:ext-cramer}.

NODE: K:bp:p1:ext-fourier
KIND: external
TITLE: [K] Fourier series on the torus
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-fourier@L87-L91
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:ext-fourier
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-K graph, node bp:p1:ext-fourier (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bp:p1:ext-fourier v1. Cited as \Kref{bp:p1:ext-fourier}.

NODE: K:bp:p1:ext-lebesgue
KIND: external
TITLE: [K] Lebesgue outer measure
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-lebesgue@L92-L94
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:ext-lebesgue
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-K graph, node bp:p1:ext-lebesgue (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bp:p1:ext-lebesgue v1. Cited as \Kref{bp:p1:ext-lebesgue}.

NODE: K:bp:p1:ext-mvt
KIND: external
TITLE: [K] Mean value inequality
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-mvt@L75-L78
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:ext-mvt
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-K graph, node bp:p1:ext-mvt (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bp:p1:ext-mvt v1. Cited as \Kref{bp:p1:ext-mvt}.

NODE: K:bp:p1:ext-rectangle
KIND: external
TITLE: [K] Cauchy's theorem for rectangles
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-rectangle@L67-L70
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:ext-rectangle
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-K graph, node bp:p1:ext-rectangle (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bp:p1:ext-rectangle v1. Cited as \Kref{bp:p1:ext-rectangle}.

NODE: K:bp:p1:hamiltonian-real
KIND: external
TITLE: [K] Real and complex Hamiltonian fields
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:hamiltonian-real@L1073-L1079
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:hamiltonian-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V open in C^n x C^n; h holomorphic on V and real at real points of V; z in V cap (R^n x R^n); H:R^n x R^n->R agrees with Re h near z; (second claim) phi holomorphic; X_H frozen vector field, J=-Omega_0
SOURCE_QUANTIFIERS: for all V, h, z, H; for all holomorphic phi
SOURCE_CONCLUSION: H differentiable at z and X_H(z)=X_h(z); X_phi=J (Dphi)^T with J=[[0,I],[-I,0]]=-Omega_0, equivalently Omega_0 X_phi=(Dphi)^T
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:hamiltonian-real; shared Lean provider. There: KIND lemma, contract bp:p1:hamiltonian-real v1. Cited as \Kref{bp:p1:hamiltonian-real}.

NODE: K:bp:p1:holomorphic-analytic
KIND: external
TITLE: [K] Holomorphic maps are analytic
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L296-L312
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:holomorphic-analytic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U in C^m open; F:U->W holomorphic; (a) z_0 in U, r>0 with P-bar(z_0,r) in U, A=max_{P-bar(z_0,r)}|F|; (b) U_R=U cap R^m, x_0 in U_R; W=C^p and F(U_R) in R^p for the real clause
SOURCE_QUANTIFIERS: F,U,W,m; then z_0,r (A determined); alpha in N^m
SOURCE_CONCLUSION: (a) exist c_alpha in W with |c_alpha|<=A r^-|alpha| and F(z)=sum_alpha c_alpha (z-z_0)^alpha on P(z_0,r), absolutely convergent; F analytic on U; (b) F|U_R real-analytic near each x_0 (power series in x-x_0, absolutely convergent); real coefficients if W=C^p and F(U_R) in R^p
CONSTANT_SCOPE: c_alpha depends on F,z_0,r only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:holomorphic-analytic; shared Lean provider. There: KIND lemma, contract bp:p1:holomorphic-analytic v1. Cited as \Kref{bp:p1:holomorphic-analytic}.

NODE: K:bp:p1:lip-image
KIND: external
TITLE: [K] Lipschitz images and preimages
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:lip-image@L1124-L1129
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:lip-image
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: S subset R^d; F:S->R^d with |F(x)-F(y)|<=Lambda|x-y|; Phi:A->R^d injective with Lipschitz inverse Phi^{-1}:Phi(A)->A; R^d with max norm
SOURCE_QUANTIFIERS: for all d, S, F, Lambda; for all A, Phi, N
SOURCE_CONCLUSION: outer measure meas F(S)<=Lambda^d meas S; meas N=0 implies meas Phi^{-1}(N)=0; both hold on R^n x R^n with the max norm of the components and the product Lebesgue measure
CONSTANT_SCOPE: Lambda is the Lipschitz constant of F (arbitrary)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:lip-image; shared Lean provider. There: KIND lemma, contract bp:p1:lip-image v1. Cited as \Kref{bp:p1:lip-image}.

NODE: K:bp:p1:mcshane
KIND: external
TITLE: [K] McShane extension
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:mcshane@L1168-L1171
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:mcshane
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X metric space; S subset X; Lambda>=0; phi:S->R^d Lambda-Lipschitz (max norm); optionally |phi|<=beta on S; beta >= 0 (for the clamped extension)
SOURCE_QUANTIFIERS: for all X, S, Lambda, phi, beta
SOURCE_CONCLUSION: phi extends to a Lambda-Lipschitz map on X; the extension can be chosen with |Phi|<=beta on X
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:mcshane; shared Lean provider. There: KIND lemma, contract bp:p1:mcshane v1. Cited as \Kref{bp:p1:mcshane}.

NODE: K:bp:p1:real-restriction
KIND: external
TITLE: [K] Real restriction
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1047-L1051
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:real-restriction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K holomorphic on T_rho and real on reals; for the primary claim, K primary on T_rho (p=2n)
SOURCE_QUANTIFIERS: K, rho, p (=2n in applications); x in R^n; m in Z^n
SOURCE_CONCLUSION: k=K|_{R^n} real-analytic with real derivative the restriction of the complex derivative; |Dk(x)|<=|DK(x)| for x in R^n; if K primary, k(x+m)=k(x)+(m,0) for m in Z^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:real-restriction; shared Lean provider. There: KIND lemma, contract bp:p1:real-restriction v1. Cited as \Kref{bp:p1:real-restriction}.

NODE: K:bp:p1:uniform-limits
KIND: external
TITLE: [K] Uniform limits
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L364-L368
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:uniform-limits
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_s holomorphic on an open set V; K_s->K pointwise; DK_s->Lambda uniformly on V; for V=T_r, every K_s primary on T_r, respectively real on reals
SOURCE_QUANTIFIERS: V,K_s,K,Lambda; sequence index s
SOURCE_CONCLUSION: K holomorphic on V and DK=Lambda; if V=T_r and all K_s primary (resp. real on reals) then K is primary (resp. real on reals)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:uniform-limits; shared Lean provider. There: KIND lemma, contract bp:p1:uniform-limits v1. Cited as \Kref{bp:p1:uniform-limits}.

NODE: K:bp:p4:cover-mono
KIND: external
TITLE: [K] Monotonicity of the cover
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:cover-mono@L1188-L1191
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p4:cover-mono
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B' subset B; kappa'<=kappa
SOURCE_QUANTIFIERS: h,f,B',B,r0,tau,kappa',kappa
SOURCE_CONCLUSION: kamCover h f B' r0 tau kappa' subset kamCover h f B r0 tau kappa
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p4:cover-mono; shared Lean provider. There: KIND lemma, contract bp:p4:cover-mono v1. Cited as \Kref{bp:p4:cover-mono}.

NODE: K:bp:p4:dyadic-approx
KIND: external
TITLE: [K] Inner dyadic approximation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:dyadic-approx@L1241-L1245
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p4:dyadic-approx
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: B in R^n open and bounded; eta>0
SOURCE_QUANTIFIERS: B,eta
SOURCE_CONCLUSION: exists B' open subset of B with meas(B minus B')<=eta and C_B' with meas{I in B': infDist(I,B'^c)<t}<=C_B' t for all t>0
CONSTANT_SCOPE: C_B' depends on B' (number and side of cubes); chosen after B', eta
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p4:dyadic-approx; shared Lean provider. There: KIND lemma, contract bp:p4:dyadic-approx v1. Cited as \Kref{bp:p4:dyadic-approx}.

NODE: K:bp:p4:lattice-count
KIND: external
TITLE: [K] Counting lattice points on $\ell^1$ spheres
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lattice-count@L53-L55
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p4:lattice-count
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1, m>=1 integers
SOURCE_QUANTIFIERS: n,m integers
SOURCE_CONCLUSION: #{k in Z^n : |k|_1=m} <= 2(2m+1)^{n-1} <= 2*3^{n-1} m^{n-1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p4:lattice-count; shared Lean provider. There: KIND lemma, contract bp:p4:lattice-count v1. Cited as \Kref{bp:p4:lattice-count}.

NODE: K:bp:p4:lattice-sum
KIND: external
TITLE: [K] Lattice sum
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:lattice-sum@L66-L71
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p4:lattice-sum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1, tau>n-1
SOURCE_QUANTIFIERS: n, tau, then the sum
SOURCE_CONCLUSION: sum_{k in Z^n\{0}} |k|_1^{-tau-1} <= S(n,tau)=2*3^{n-1}(tau+2-n)/(tau+1-n)
CONSTANT_SCOPE: S depends only on n, tau
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p4:lattice-sum; shared Lean provider. There: KIND lemma, contract bp:p4:lattice-sum v1. Cited as \Kref{bp:p4:lattice-sum}.

NODE: K:bp:p4:preimage-measure
KIND: external
TITLE: [K] Actions with non-Diophantine frequency
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:preimage-measure@L1087-L1093
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p4:preimage-measure
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: C_3 the constant of G3 for the bounded set Omega=g(B); C_3^+=max(C_3,0)
SOURCE_QUANTIFIERS: alpha>0
SOURCE_CONCLUSION: meas{I in B: g(I) not in Dio_{alpha,tau}}<=L_+^n C_3^+ alpha
CONSTANT_SCOPE: C_3 is the G3 constant for Omega=g(B), depends only on (n,tau,Omega); L_+ depends only on L_h
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p4:preimage-measure; shared Lean provider. There: KIND lemma, contract bp:p4:preimage-measure v1. Cited as \Kref{bp:p4:preimage-measure}.

NODE: K:bp:p4:slab
KIND: external
TITLE: [K] Slabs in a cube
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:slab@L84-L89
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p4:slab
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1, R>0, a>0, k in Z^n\{0}
SOURCE_QUANTIFIERS: n,R,a,k
SOURCE_CONCLUSION: meas{omega in [-R,R]^n : |k.omega|<a} <= 2n(2R)^{n-1} a/|k|_1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-K graph, node bp:p4:slab; shared Lean provider. There: KIND lemma, contract bp:p4:slab v1. Cited as \Kref{bp:p4:slab}.

NODE: N:bpN:p0:partial
KIND: external
TITLE: [N] N-PARTIAL-CONVEX: exponential stability of the fast actions, definite fast part, slow--fast
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial@L319-L335
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p0:partial
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: a Lean frozen statement; n ≥ 2, k ≥ 1, G, G' ⊂ ℝⁿ open and convex, D ⊂ Ph_k open, ρ, g, m, M_ℂ ∈ ℝ with ρ > 0, M_ℂ > 0, B̄(I,ρ) ⊂ G' for every I ∈ G (closed max-norm ball); h : ℂⁿ → ℂ complex differentiable and complex C² on G'_ρ, Im h(I) = 0 for real I ∈ G'_ρ, ‖D²h(z)‖ ≤ M_ℂ on G'_ρ, HasDefiniteFastPart G' ρ g m h; then for μ ∈ (0,μ₀), P with IsPartialPerturbation G' D ρ P, C > 0, z : ℝ → Ph_{n+k}: (Z1) IsSolutionOn H_μ {𝖨 : fast(𝖨) ∈ G} [0,C] z with H_μ = Re h(fast 𝖨) + μ Re P(cx(φ,𝖨)) (degenerateHamiltonian (realPart h) (Re P ∘ cx) μ); (Z2) fast(z(0)_2) ∈ core(G, μ^{b_n}); t ∈ [0, min(C, μ^{−1} exp(μ^{−a_n}))] with (slow z(u)_1, slow z(u)_2) ∈ core(D, μ^{b_n}) for all u ∈ [0,t]
SOURCE_QUANTIFIERS: n, k; G, G', D, ρ, g, m, M_ℂ, h (with their hypotheses); then ∃ μ₀ > 0; then ∀ μ ∈ (0,μ₀), P, C > 0, z (with Z1, Z2); then ∀ t ∈ [0, min(C, μ^{−1} exp(μ^{−a_n}))] with slow confinement on [0,t]
SOURCE_CONCLUSION: ¦fast(z(t)_2) − fast(z(0)_2)¦ ≤ ½ μ^{b_n}
CONSTANT_SCOPE: μ₀ > 0 depends only on (n, k, G, G', D, ρ, g, m, M_ℂ, h) and is chosen before μ, P, C, z, t; a_n = 2/(6n² − 3n + 14), b_n = 3/(6n² − 3n + 14); slow confinement is tested only on [0,t]; the initial erosion core(G, μ^{b_n}) is used only as fast(z(0)_2) ∈ G
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p0:partial; shared Lean provider. There: KIND theorem, contract nekhoroshev.d25.partialConvex_nekhoroshev v1, frozen anchor KAM.Nekhoroshev.partialConvex_nekhoroshev (nekhoroshev.d25.partialConvex_nekhoroshev.v1); not an anchor of this graph. Cited as \Nref{bpN:p0:partial}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p0:partial-domain#partialComplexDomain
KIND: external
TITLE: [N] \Lean{partialComplexDomain}: KAM.Nekhoroshev.partialComplexDomain
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-domain@L284-L290
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p0:partial-domain#partialComplexDomain
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: G ⊂ ℝⁿ, D ⊂ Ph_k, ρ ∈ ℝ)
SOURCE_QUANTIFIERS: n, k; G; D; ρ
SOURCE_CONCLUSION: defines 𝓕(G,D,ρ) = {(φ,𝖨) ∈ ℂ^{n+k} × ℂ^{n+k} : fast(Re 𝖨) ∈ G, (slow(Re φ), slow(Re 𝖨)) ∈ D, φ, 𝖨 ∈ T^{n+k}_ρ}, T^N_ρ = complexStrip N ρ; no other condition on fast real angles and slow real positions
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p0:partial-domain#partialComplexDomain; shared Lean provider. There: KIND definition, contract nekhoroshev.d25.partialComplexDomain v1, frozen anchor KAM.Nekhoroshev.partialComplexDomain (nekhoroshev.d25.partialComplexDomain.v1); not an anchor of this graph. Cited as \Nref{bpN:p0:partial-domain}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p0:partial-exponents#partialDriftExponent
KIND: external
TITLE: [N] \Lean{partialTimeExponent}, \Lean{partialDriftExponent}: KAM.Nekhoroshev.partialDriftExponent
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p0:partial-exponents#partialDriftExponent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ∈ ℕ
SOURCE_QUANTIFIERS: n
SOURCE_CONCLUSION: defines b_n = 3/(6n² − 3n + 14) = (3/2) a_n (partialDriftExponent)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p0:partial-exponents#partialDriftExponent; shared Lean provider. There: KIND definition, contract nekhoroshev.d25.partialDriftExponent v1, frozen anchor KAM.Nekhoroshev.partialDriftExponent (nekhoroshev.d25.partialDriftExponent.v1); not an anchor of this graph. Cited as \Nref{bpN:p0:partial-exponents}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p0:partial-exponents#partialTimeExponent
KIND: external
TITLE: [N] \Lean{partialTimeExponent}, \Lean{partialDriftExponent}: KAM.Nekhoroshev.partialTimeExponent
STATEMENT_SOURCE: blueprint-N/parts/p0-conventions.tex#bpN:p0:partial-exponents@L313-L317
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p0:partial-exponents#partialTimeExponent
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n ∈ ℕ
SOURCE_QUANTIFIERS: n
SOURCE_CONCLUSION: defines a_n = 2/(6n² − 3n + 14) (partialTimeExponent; denominator ≥ 32 > 0 for n ≥ 2)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p0:partial-exponents#partialTimeExponent; shared Lean provider. There: KIND definition, contract nekhoroshev.d25.partialTimeExponent v1, frozen anchor KAM.Nekhoroshev.partialTimeExponent (nekhoroshev.d25.partialTimeExponent.v1); not an anchor of this graph. Cited as \Nref{bpN:p0:partial-exponents}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:gen-confinement
KIND: external
TITLE: [N] Confinement glue
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-confinement@L310-L318
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-confinement
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; x₀ ∈ W; τ > 0; Φ ⊂ E with uniform data; a priori confinement: every solution y on an open interval J ∋ 0 with y(0) = x₀ satisfies y(t) ∈ Φ for t ∈ J, ¦t¦ ≤ τ
SOURCE_QUANTIFIERS: E; W; F; x₀; τ; Φ; (δ,M,L); then z
SOURCE_CONCLUSION: the maximal interval contains [−τ,τ] in its interior, z is a solution on [−τ,τ] with z(t) ∈ Φ for ¦t¦ ≤ τ, and every solution on [−L,L] (0 ≤ L ≤ τ) with initial value x₀ equals z there
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-confinement; shared Lean provider. There: KIND theorem, contract bpN:p3:gen-confinement v1. Cited as \Nref{bpN:p3:gen-confinement}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:gen-continuation
KIND: external
TITLE: [N] Continuation criterion, uniform form
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation@L270-L277
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-continuation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; x₀ ∈ W; (T₋,T₊), z the maximal interval and solution of gen-maximal; Φ has uniform data (δ,M,L)
SOURCE_QUANTIFIERS: E; W; F; x₀; Φ; δ, M, L; t_*
SOURCE_CONCLUSION: if T₊ < ∞ there is no t_* ∈ [0,T₊) with z(t) ∈ Φ for all t ∈ [t_*,T₊); symmetrically on the left; equivalently, staying in Φ near an end of the maximal interval forces that end to be ±∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-continuation; shared Lean provider. There: KIND theorem, contract bpN:p3:gen-continuation v1. Cited as \Nref{bpN:p3:gen-continuation}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:gen-continuation-compact
KIND: external
TITLE: [N] Compact continuation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-compact@L289-L292
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-continuation-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E finite-dimensional real normed space; F:E->E total; W subset E open; F C1 on W; x0 in W; (Tminus,Tplus),z the maximal interval and solution; K subset W compact; some tstar in [0,Tplus) has z(t) in K on [tstar,Tplus); the analogous left-tail alternative for the left conclusion
SOURCE_QUANTIFIERS: E,W,F,x0 fixed; the maximal solution; compact K; then a tail time tstar as stated
SOURCE_CONCLUSION: T₊ = +∞; likewise on the left
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-continuation-compact; shared Lean provider. There: KIND corollary, contract bpN:p3:gen-continuation-compact v1. Cited as \Nref{bpN:p3:gen-continuation-compact}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:gen-exit
KIND: external
TITLE: [N] First exit
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L328-L341
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-exit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolIn F W J z with J an interval, 0 ∈ J; V ⊂ E open; z(0) ∈ V; A = {t ∈ J : t ≥ 0, z(t) ∉ V}; only continuity of z on J is used (F and W play no role)
SOURCE_QUANTIFIERS: E; F; W; J; z; V; A
SOURCE_CONCLUSION: exactly one of: (i) A = ∅, i.e. z(t) ∈ V for all t ∈ J, t ≥ 0; (ii) t* = min A exists, t* > 0, t* ∈ J, z(t) ∈ V on [0,t*), z(t*) ∈ ∂V = V̄∖V, and t* = sup{t ∈ J : t ≥ 0, z([0,t]) ⊂ V}; the same backwards in time
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-exit; shared Lean provider. There: KIND lemma, contract bpN:p3:gen-exit v1. Cited as \Nref{bpN:p3:gen-exit}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:gen-lip
KIND: external
TITLE: [N] Bounds and Lipschitz constants on compact sets
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-lip@L116-L120
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-lip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W ⊂ E; K ⊂ W compact
SOURCE_QUANTIFIERS: E; W; F; K; then M and L
SOURCE_CONCLUSION: F is bounded on K, and there is L ≥ 0 with ¦F(x)−F(y)¦ ≤ L¦x−y¦ for x, y ∈ K
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-lip; shared Lean provider. There: KIND lemma, contract bpN:p3:gen-lip v1. Cited as \Nref{bpN:p3:gen-lip}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:gen-maximal
KIND: external
TITLE: [N] Maximal solution
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L251-L258
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-maximal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; x₀ ∈ W
SOURCE_QUANTIFIERS: E; W; F; x₀; then T₋, T₊, z
SOURCE_CONCLUSION: there exist Tminus in [-infinity,0), Tplus in (0,+infinity] and z:R->E with z(0)=x0 and IsSolIn F W (Tminus,Tplus) z; every solution y through x0 on an interval J containing 0 has J subset (Tminus,Tplus) and y=z on J; the maximal interval and the restricted solution z|(Tminus,Tplus) are unique, with arbitrary values outside it; initial time t0 is handled by gen-symmetry(a)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-maximal; shared Lean provider. There: KIND theorem, contract bpN:p3:gen-maximal v1. Cited as \Nref{bpN:p3:gen-maximal}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:gen-sol
KIND: external
TITLE: [N] Solutions in $W$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L88-L93
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F : E → E; W ⊂ E; J ⊂ ℝ; z : ℝ → E (§s-conv conventions: E finite-dimensional real normed space; F : E → E total; W ⊂ E open; 'C¹ on W' = ContDiffOn ℝ 1 F W; intervals are order-connected; derivatives two-sided)
SOURCE_QUANTIFIERS: E; F; W; J; z
SOURCE_CONCLUSION: defines IsSolIn F W J z: for every t ∈ J, z(t) ∈ W and z has derivative F(z(t)) at t (two-sided HasDerivAt, including endpoints of J)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-sol; shared Lean provider. There: KIND definition, contract bpN:p3:gen-sol v1. Cited as \Nref{bpN:p3:gen-sol}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:gen-symmetry
KIND: external
TITLE: [N] Symmetries
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L101-L110
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-symmetry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolIn F W J z; (a) c ∈ ℝ; (b) F C¹ on W for the second clause; (c) v ∈ E with W + v = W and F(x+v) = F(x) for x ∈ W
SOURCE_QUANTIFIERS: E; F; W; J; z; then c, resp. v
SOURCE_CONCLUSION: (a) t ↦ z(t+c) is a solution on J−c; (b) t ↦ z(−t) is a solution of −F on −J, and −F is C¹ on W if F is; (c) t ↦ z(t)+v is a solution of F in W on J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-symmetry; shared Lean provider. There: KIND lemma, contract bpN:p3:gen-symmetry v1. Cited as \Nref{bpN:p3:gen-symmetry}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:gen-uniform-compact
KIND: external
TITLE: [N] Compact sets have uniform data
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniform-compact@L143-L146
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-uniform-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; K ⊂ W compact; uniform data of bpN:p3:gen-uniform
SOURCE_QUANTIFIERS: E; W; F; K; then δ > 0, M, L
SOURCE_CONCLUSION: K has uniform data (δ,M,L) for some δ > 0, and K_δ = {y : ∃x∈K, ¦y−x¦ ≤ δ} ⊂ W is compact
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-uniform-compact; shared Lean provider. There: KIND lemma, contract bpN:p3:gen-uniform-compact v1. Cited as \Nref{bpN:p3:gen-uniform-compact}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:gen-uniqueness
KIND: external
TITLE: [N] Uniqueness on arbitrary intervals
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L217-L224
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-uniqueness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F C¹ on the open set W; J ⊂ ℝ an interval of any kind; t₀ ∈ J; y₁, y₂ : ℝ → E with IsSolIn F W J y_i and y₁(t₀) = y₂(t₀); no confinement, boundedness or smallness assumed
SOURCE_QUANTIFIERS: E; W; F; J; t₀; y₁, y₂
SOURCE_CONCLUSION: y₁ = y₂ on J; in particular solutions on intervals J₁, J₂ agreeing at one point of J₁∩J₂ agree on J₁∩J₂
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-uniqueness; shared Lean provider. There: KIND theorem, contract bpN:p3:gen-uniqueness v1. Cited as \Nref{bpN:p3:gen-uniqueness}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:ham-energy
KIND: external
TITLE: [N] Energy conservation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-energy@L388-L393
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:ham-energy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H : P → ℝ; J ⊂ ℝ an interval; z : ℝ → P with H differentiable at z(t) and z having derivative X_H(z(t)) at t, for every t ∈ J; no regularity of H and no confinement beyond this
SOURCE_QUANTIFIERS: n; H; J; z
SOURCE_CONCLUSION: t ↦ H(z(t)) is constant on J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:ham-energy; shared Lean provider. There: KIND theorem, contract bpN:p3:ham-energy v1. Cited as \Nref{bpN:p3:ham-energy}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:ham-periodic
KIND: external
TITLE: [N] Periodicity in the angles passes to solutions
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L402-L407
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:ham-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: W ⊂ P open with W + (k,0) = W for k ∈ ℤⁿ; H : P → ℝ with H(θ+k,I) = H(θ,I) on W; (second part) IsSolIn X_H W J z
SOURCE_QUANTIFIERS: n; W; H; k ∈ ℤⁿ; J; z
SOURCE_CONCLUSION: X_H(θ+k,I) = X_H(θ,I) on W; hence IsSolIn X_H W J (z+(k,0)) for every k and H∘(z+(k,0)) = H∘z
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:ham-periodic; shared Lean provider. There: KIND lemma, contract bpN:p3:ham-periodic v1. Cited as \Nref{bpN:p3:ham-periodic}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:ham-reduction
KIND: external
TITLE: [N] Track N and track I Hamiltonian predicates
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L416-L427
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:ham-reduction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H : P → ℝ; U ⊂ ℝⁿ open; W ⊂ P open with ℝⁿ × U ⊂ W; H C² on W; W_U = ℝⁿ × U
SOURCE_QUANTIFIERS: n; H; U; W; then for every J ⊂ ℝ and z : ℝ → P
SOURCE_CONCLUSION: IsSolutionOn H U J z ⇔ IsSolIn X_H W_U J z ⇔ IsHamiltonianSolutionOn H U J z, and X_H is C¹ on W_U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:ham-reduction; shared Lean provider. There: KIND proposition, contract bpN:p3:ham-reduction v1. Cited as \Nref{bpN:p3:ham-reduction}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:ham-smooth
KIND: external
TITLE: [N] Regularity of $X_H$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-smooth@L377-L381
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:ham-smooth
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P = ℝⁿ × ℝⁿ (max norm); W ⊂ P open; H : P → ℝ is C^{k+1} on W, k ≥ 0; X_H the frozen hamiltonianVectorField
SOURCE_QUANTIFIERS: n; W; H; k
SOURCE_CONCLUSION: X_H is C^k on W; for k ≥ 1 it is C¹ (hence locally Lipschitz) on W, and H is differentiable at every point of W
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:ham-smooth; shared Lean provider. There: KIND lemma, contract bpN:p3:ham-smooth v1. Cited as \Nref{bpN:p3:ham-smooth}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:local-exist
KIND: external
TITLE: [N] Local existence and uniqueness for $\texttt{IsSolutionOn}$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:local-exist@L502-L507
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:local-exist
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standing data of §s-N (bpN:p3:s-N#data), U ⊂ B(0,R+s) open; t₀ ∈ ℝ; z₀ ∈ ℝⁿ × U; for uniqueness: J an interval, t₀ ∈ J, y₁, y₂ with IsSolutionOn H U J y_i and y₁(t₀) = y₂(t₀)
SOURCE_QUANTIFIERS: R, s; h; f; ε; U; t₀; z₀ (resp. J, y₁, y₂)
SOURCE_CONCLUSION: there are ε' > 0 and y : ℝ → P with y(t₀) = z₀ and IsSolutionOn H U (t₀−ε',t₀+ε') y (both time directions); and y₁ = y₂ on J
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:local-exist; shared Lean provider. There: KIND theorem, contract bpN:p3:local-exist v1. Cited as \Nref{bpN:p3:local-exist}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:newton-continuation
KIND: external
TITLE: [N] Newtonian continuation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-continuation@L456-L462
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:newton-continuation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:newton-continuation; shared Lean provider. Cited as \Nref{bpN:p3:newton-continuation}. WARNING: EXCLUDED in the N graph: outside every root closure; owned by the importing graph (track I/P): used by no track-N proof (only the excluded remark gen-uniform-remark and the label index mention it); track P cites it; check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p3:newton-reduction
KIND: external
TITLE: [N] Newtonian predicates
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:newton-reduction@L434-L449
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:newton-reduction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:newton-reduction; shared Lean provider. Cited as \Nref{bpN:p3:newton-reduction}. WARNING: EXCLUDED in the N graph: outside every root closure; owned by the importing graph (track I/P): used only by newton-continuation inside Part 3, and by tracks I and P (bpI:p7:ham-eq, stepI:p7:he-sol, stepI:p8:pf-uniq; track P cites \Nref); check: grep of blueprint-N/parts/p0..p11c for the label (and \Nref uses) found no consumer in a proof of a track-N root closure. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p4:algebra
KIND: external
TITLE: [N] B.2
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:algebra@L108-L112
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:algebra
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u, v ∈ 𝒪(r,s) scalar with finite norms
SOURCE_QUANTIFIERS: D, m, n; r, s; u, v; I ∈ V_rD; j ≥ 1
SOURCE_CONCLUSION: uv ∈ 𝒪(r,s); (uv)^_k(I) = Σ_l û_{k−l}(I) v̂_l(I) (absolutely convergent); ¦uv¦_{I,s} ≤ ¦u¦_{I,s}¦v¦_{I,s} for every I ∈ V_rD; hence ¦uv¦_{r,s} ≤ ¦u¦_{r,s}¦v¦_{r,s} and ¦u^j¦_{r,s} ≤ ¦u¦_{r,s}^j
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:algebra; shared Lean provider. There: KIND lemma, contract bpN:p4:algebra v1. Cited as \Nref{bpN:p4:algebra}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p4:bracket
KIND: external
TITLE: [N] B.4
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:bracket@L149-L153
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:bracket
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m = n; u ∈ 𝒪(r_0,s_0), v ∈ 𝒪(r,s) with finite norms; 0<ρ<r, 0<σ<s, r−ρ<r_0, s−σ<s_0; {u,v} the bracket of s-b4#data
SOURCE_QUANTIFIERS: D, n; r_0, s_0, r, s; u, v; ρ, σ
SOURCE_CONCLUSION: {u,v} ∈ 𝒪(r−ρ,s−σ) and ¦{u,v}¦_{r−ρ,s−σ} ≤ (1/e)(1/((r_0−r+ρ)σ) + 1/((s_0−s+σ)ρ)) ¦u¦_{r_0,s_0}¦v¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:bracket; shared Lean provider. There: KIND lemma, contract bpN:p4:bracket v1. Cited as \Nref{bpN:p4:bracket}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p4:cauchy
KIND: external
TITLE: [N] B.3
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:cauchy@L125-L133
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r_0,s_0) with finite norm; 0 < r < r_0, 0 < s < s_0; (vector/matrix u componentwise)
SOURCE_QUANTIFIERS: D, m, n; r_0, s_0; u; r, s (then ρ, σ with r_0 = r+ρ, s_0 = s+σ)
SOURCE_CONCLUSION: (a) for every I ∈ V_{r_0}D: Σ_j ¦∂_{θ_j}u¦_{I,s} ≤ ¦u¦_{I,s_0}/(e(s_0−s)), hence sup_I Σ_j ¦∂_{θ_j}u¦_{I,s} ≤ ¦u¦_{r_0,s_0}/(e(s_0−s)) and for each single j ¦∂_{θ_j}u¦_{r_0,s} ≤ ¦u¦_{r_0,s_0}/(e(s_0−s)); (b) max_i ¦∂_{I_i}u¦_{r,s_0} ≤ ¦u¦_{r_0,s_0}/(r_0−r); in particular Σ-pointwise form with (e σ)^{−1}, ρ^{−1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:cauchy; shared Lean provider. There: KIND lemma, contract bpN:p4:cauchy v1. Cited as \Nref{bpN:p4:cauchy}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p4:coefficients
KIND: external
TITLE: [N] Coefficients, derivatives, series
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:coefficients@L60-L70
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:coefficients
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) on 𝒟_{r,s}, D ⊂ ℂ^m (Definitions domains, norm); (c) a_k: V_rD → ℂ (k ∈ ℤⁿ) holomorphic with S := sup_I Σ_k ¦a_k(I)¦ e^{2π¦k¦₁s} < ∞; (d) ¦u¦_{r,s} < ∞
SOURCE_QUANTIFIERS: D, m, n; r, s; u; (a_k)_k; S; s' < s
SOURCE_CONCLUSION: (a) each û_k is holomorphic on V_rD; (b) ∂_{θ_j}u, ∂_{I_i}u ∈ 𝒪(r,s), (∂_{θ_j}u)^_k = 2πik_j û_k, (∂_{I_i}u)^_k = ∂_{I_i}û_k; (c) v = Σ a_k χ_k converges absolutely and uniformly on 𝒟_{r,s'} for each s' < s, v ∈ 𝒪(r,s), v̂_k = a_k and ¦v¦_{r,s} = S; (d) u(θ,I) = Σ_k û_k(I) χ_k(θ) on 𝒟_{r,s} and ¦û_k(I)¦ e^{2π¦k¦₁s} ≤ ¦u¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:coefficients; shared Lean provider. There: KIND lemma, contract bpN:p4:coefficients v1. Cited as \Nref{bpN:p4:coefficients}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p4:dictionary
KIND: external
TITLE: [N] Dictionary with P\"oschel's normalisation and with Part~1
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:dictionary@L218-L226
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:dictionary
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:dictionary; shared Lean provider. Cited as \Nref{bpN:p4:dictionary}. WARNING: EXCLUDED in the N graph: administrative remark (comparison with Pöschel's normalisation; track P/I cite it): no track-N proof consumes it as a result; cited only in \source/'see Remark' pointers (sup-weighted L91, cauchy L129) and in Part 6 L13 / Part 7 Remark p7:dictionary L277 notation/dictionary paragraphs whose arithmetic is stated 'redone in our variables, not dependent on either dictionary'; checked by grep of blueprint-N/parts for p4:dictionary; owned by the importing graph. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p4:domains
KIND: external
TITLE: [N] Domains
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:domains@L34-L39
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:domains
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m, n ≥ 0; D ⊂ ℂ^m any subset; r, s > 0
SOURCE_QUANTIFIERS: m, n; D; r, s; then z = (θ,I); a, b ≥ 0; r' ≤ r, s' ≤ s (resp. 0<r'<r, 0<s'<s)
SOURCE_CONCLUSION: defines V_rD = {I ∈ ℂ^m : ∃ I' ∈ D, ¦I−I'¦_∞ < r}, 𝒟_{r,s} = T_s × V_rD ⊂ ℂⁿ×ℂ^m, P̄(z;a,b) = {(θ',I') : ¦θ'−θ¦_∞ ≤ a, ¦I'−I¦_∞ ≤ b}; (a) V_rD and 𝒟_{r,s} are open and 𝒟_{r',s'} ⊂ 𝒟_{r,s} for r' ≤ r, s' ≤ s; (b) if 0<r'<r, 0<s'<s and z ∈ 𝒟_{r',s'} then P̄(z;s−s',r−r') ⊂ 𝒟_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:domains; shared Lean provider. There: KIND definition, contract bpN:p4:domains v1. Cited as \Nref{bpN:p4:domains}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p4:norm
KIND: external
TITLE: [N] The class $\Os rs$ and the weighted norm
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:norm@L47-L54
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: m, n ≥ 0; D ⊂ ℂ^m; r, s > 0 (the domains of Definition bpN:p4:domains); u: 𝒟_{r,s} → ℂ
SOURCE_QUANTIFIERS: m, n; D; r, s; u; k ∈ ℤⁿ; I ∈ V_rD
SOURCE_CONCLUSION: defines 𝒪(r,s) = {u: 𝒟_{r,s} → ℂ holomorphic and 1-periodic in each θ_j}; û_k(I) = ∫_{[0,1]ⁿ} u(x,I) e^{−2πik·x} dx; ¦u¦_{I,s} = Σ_k ¦û_k(I)¦ e^{2π¦k¦₁ s}; ¦u¦_{r,s} = sup_{I∈V_rD} ¦u¦_{I,s} ∈ [0,∞]; for vector/matrix u the coefficients are componentwise with ¦û_k¦_∞ = max_a ¦û_{a,k}¦ in ¦u¦_{I,s}; 'finite norm' means ¦u¦_{r,s} < ∞
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:norm; shared Lean provider. There: KIND definition, contract bpN:p4:norm v1. Cited as \Nref{bpN:p4:norm}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p4:projections
KIND: external
TITLE: [N] $P_S$, $T_K$, averages
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:projections@L184-L190
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:projections
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) with finite norm; S ⊂ ℤⁿ; K ≥ 0; 0 < σ < s; Λ ⊂ ℤⁿ any set (Λ-normal form u = P_Λu); vector-valued u componentwise
SOURCE_QUANTIFIERS: D, m, n; r, s; u; S; K; σ; Λ
SOURCE_CONCLUSION: P_Su = Σ_{k∈S}û_kχ_k ∈ 𝒪(r,s), (P_Su)^_k = û_k for k ∈ S and 0 otherwise, ¦P_Su¦_{r,s} ≤ ¦u¦_{r,s}; for T_Ku = P_{¦k¦₁≤K}u and ⟨u⟩(I) = û_0(I): ¦T_Ku¦_{r,s}, ¦⟨u⟩¦_{r,s} ≤ ¦u¦_{r,s}; u − T_Ku = P_{¦k¦₁>K}u and ¦u−T_Ku¦_{r,s−σ} ≤ e^{−2πKσ}¦u¦_{r,s}; P_Λu, u−P_Λu in the class with norms ≤ ¦u¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:projections; shared Lean provider. There: KIND lemma, contract bpN:p4:projections v1. Cited as \Nref{bpN:p4:projections}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p4:sup-weighted
KIND: external
TITLE: [N] B.1
STATEMENT_SOURCE: blueprint-N/parts/p4-weighted-norms.tex#bpN:p4:sup-weighted@L88-L96
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p4:sup-weighted
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u ∈ 𝒪(r,s) (scalar, vector or matrix valued; sup¦u¦ is the sup of the max norm of the values); (b) σ > 0 and ¦u¦ ≤ M on 𝒟_{r,s+σ}
SOURCE_QUANTIFIERS: D, m, n; r, s; u; σ; M
SOURCE_CONCLUSION: (a) sup_{𝒟_{r,s}} ¦u¦ ≤ ¦u¦_{r,s}; (b) ¦u¦_{r,s} ≤ coth(πσ)ⁿ M
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p4:sup-weighted; shared Lean provider. There: KIND lemma, contract bpN:p4:sup-weighted v1. Cited as \Nref{bpN:p4:sup-weighted}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p5:adjoint
KIND: external
TITLE: [N] Iterated brackets
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:adjoint@L141-L145
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:adjoint
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: φ ∈ 𝒪(r',s'), u ∈ 𝒪(r,s) with finite norms; 0 < ρ < r, 0 < σ < s; r+ρ ≤ r'; s+σ ≤ s'; η = 2¦φ¦_{r',s'}/(ρσ); h ≥ 1
SOURCE_QUANTIFIERS: D, n; r, s, r', s'; φ, u; ρ, σ; h
SOURCE_CONCLUSION: ¦ad^h_φu¦_{r−ρ,s−σ} ≤ (2h²/(eρσ))^h (h!/(2h)!) ¦φ¦_{r',s'}^h ¦u¦_{r,s}, hence (1/h!)¦ad^h_φu¦_{r−ρ,s−σ} ≤ (eη/4)^h ¦u¦_{r,s}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:adjoint; shared Lean provider. There: KIND lemma, contract bpN:p5:adjoint v1. Cited as \Nref{bpN:p5:adjoint}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p5:canonical
KIND: external
TITLE: [N] Canonical maps: bracket invariance and conjugation
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical@L90-L98
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:canonical
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of Lemma symplectic; z ∈ Ω^{1/2}; Φ = X^t (¦t¦ ≤ 1); u, v, H holomorphic on a neighbourhood of Φ(z); for (c): y: J → Ω^{1/2} with ẏ = X_{H∘Φ}(y) and H holomorphic near Φ(y(J))
SOURCE_QUANTIFIERS: Ω; φ; z; t; u, v, H; y; J
SOURCE_CONCLUSION: u∘Φ is holomorphic near z and (a) {u∘Φ,v∘Φ}(z) = {u,v}(Φ(z)); (b) DΦ(z)X_{H∘Φ}(z) = X_H(Φ(z)); (c) x = Φ∘y satisfies ẋ = X_H(x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:canonical; shared Lean provider. There: KIND corollary, contract bpN:p5:canonical v1. Cited as \Nref{bpN:p5:canonical}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p5:canonical-map
KIND: external
TITLE: [N] Iterative-Lemma package for $\Phi$
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:canonical-map@L215-L225
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:canonical-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D ⊂ ℂⁿ; φ ∈ 𝒪(r,s) with finite norm; 0 < ρ < r/2, 0 < σ < s/2; ε := ¦φ¦_{r,s}/(ρσ) ≤ ½; Ω = 𝒟_{r−ρ,s−σ}, ν = ν_{ρ,σ}; Φ = X^1_φ, Ψ = X^{−1}_φ (Lemma flow)
SOURCE_QUANTIFIERS: D, n; r, s; ρ, σ; φ; t ∈ [−1,1]; k ∈ ℤⁿ
SOURCE_CONCLUSION: (a) ν(X_φ) ≤ ε on Ω; Φ, Ψ defined and holomorphic on 𝒟_{r−3ρ/2,s−3σ/2} ⊂ Ω^{1/2} into Ω; ν(X^t−id) ≤ ¦t¦ε; ¦Φ_θ−θ¦_∞ ≤ ¦φ¦/ρ, ¦Φ_I−I¦_∞ ≤ ¦φ¦/(eσ) (same for Ψ); (b) Φ(θ+k,I) = Φ(θ,I)+(k,0), Φ real on real points if φ is; (c) on 𝒟_{r−2ρ,s−2σ}: ¦DΦ−1¦_ν ≤ 2ε; (d) (DΦ)ᵀJDΦ = J and Corollary canonical holds for Φ; (e) Ψ∘Φ = id = Φ∘Ψ on 𝒟_{r−2ρ,s−2σ} and Φ(𝒟_{r−2ρ,s−2σ}) ⊂ 𝒟_{r−3ρ/2,s−3σ/2}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:canonical-map; shared Lean provider. There: KIND proposition, contract bpN:p5:canonical-map v1. Cited as \Nref{bpN:p5:canonical-map}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p5:composition
KIND: external
TITLE: [N] Lemma B.5: $\abs{u\circ X^1_\phi}\le(1-\eta)^{-1}\abs u$
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition@L157-L168
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:composition
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D ⊂ ℂⁿ; 0 < ρ < r ≤ r'−ρ; 0 < σ < s ≤ s'−σ; φ ∈ 𝒪(r',s') with finite norm; η = 2¦φ¦_{r',s'}/(ρσ) ≤ ½; Ω = 𝒟_{r'−ρ,s'−σ} ⊃ 𝒟_{r,s}; ν = ν_{ρ,σ}; (ii) u ∈ 𝒪(r,s) with finite norm; (iv) φ and u real on real points
SOURCE_QUANTIFIERS: D, n; r, s, r', s'; ρ, σ; φ; u; t
SOURCE_CONCLUSION: (i) ν(X_φ) ≤ η/2 ≤ ¼ on Ω; the flow X^t (¦t¦ ≤ 1) is defined on Ω^{1/2} ⊃ 𝒟_{r−ρ,s−σ} with X^t(𝒟_{r−ρ,s−σ}) ⊂ 𝒟_{r,s}; (ii) Σ_h(1/h!)ad^h_φu converges in ¦·¦_{r−ρ,s−σ} to S ∈ 𝒪(r−ρ,s−σ), S = u∘X^1_φ on 𝒟_{r−ρ,s−σ}, and ¦u∘X^1_φ¦_{r−ρ,s−σ} ≤ (1−eη/4)^{−1}¦u¦_{r,s} ≤ (1−2¦φ¦_{r',s'}/(ρσ))^{−1}¦u¦_{r,s}; (iii) the same for X^t (¦t¦ ≤ 1) with η replaced by ¦t¦η; (iv) u∘X^1_φ is real on real points of 𝒟_{r−ρ,s−σ}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:composition; shared Lean provider. There: KIND theorem, contract bpN:p5:composition v1. Cited as \Nref{bpN:p5:composition}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p5:composition-integral
KIND: external
TITLE: [N] Integral remainders in the weighted norm
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:composition-integral@L203-L206
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:composition-integral
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of Theorem composition; v_t ∈ 𝒪(r,s) (0 ≤ t ≤ 1) with finite norms and V = sup_t¦v_t¦_{r,s} < ∞; (t,z) ↦ v_t(z) and (t,z) ↦ Dv_t(z) continuous on [0,1]×𝒟_{r,s}
SOURCE_QUANTIFIERS: D, n; r, s, r', s'; ρ, σ; φ; (v_t)_t; V
SOURCE_CONCLUSION: G(z) = ∫_0^1 v_t(X^t_φz)dt lies in 𝒪(r−ρ,s−σ) and ¦G¦_{r−ρ,s−σ} ≤ (1−η)^{−1}V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:composition-integral; shared Lean provider. There: KIND corollary, contract bpN:p5:composition-integral v1. Cited as \Nref{bpN:p5:composition-integral}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p5:flow
KIND: external
TITLE: [N] Flow of a small holomorphic field
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:flow@L44-L54
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:flow
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: ν a complex norm on ℂ^N; Ω ⊂ ℂ^N open; F: Ω → ℂ^N holomorphic with ν(F) ≤ ε on Ω, 0 ≤ ε ≤ ½; Ω^c = {z : B̄_ν(z,c) ⊂ Ω} for c > 0; (d) τ ∈ ℂ^N with Ω+τ = Ω and F(w+τ) = F(w); (e) N = 2n and F(x) ∈ ℝ^N for x ∈ Ω∩ℝ^N
SOURCE_QUANTIFIERS: N; ν; Ω; F; ε; c > 0; z; t; τ
SOURCE_CONCLUSION: (a) for z ∈ Ω^{1/2} there is γ_z: ℝ → ℂ^N with IsSolIn F Ω [−1,1] γ_z, γ_z(0) = z, any solution in Ω through z on J ∋ 0 equals γ_z on J∩[−1,1]; X^t(z) = γ_z(t) and ν(X^t(z)−z) ≤ ¦t¦ε; (b) (t,z) ↦ X^t(z) continuous on [−1,1]×Ω^{1/2}, X^t holomorphic Ω^{1/2} → Ω, D_zX^t continuous, Y = D_zX^t satisfies Y(t) = 1 + ∫_0^t DF(X^τz)Y(τ)dτ; (c) for z ∈ Ω^1: X^1(z) ∈ Ω^{1/2}, X^{−1}(X^1z) = z, ¦DX^t(z)−1¦_ν ≤ 2ε (¦t¦ ≤ 1), likewise X^1(X^{−1}z) = z; (d) Ω^{1/2}+τ = Ω^{1/2} and X^t(z+τ) = X^t(z)+τ; (e) X^t(x) ∈ ℝ^N for x ∈ Ω^{1/2}∩ℝ^N
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:flow; shared Lean provider. There: KIND lemma, contract bpN:p5:flow v1. Cited as \Nref{bpN:p5:flow}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p5:lie-derivative
KIND: external
TITLE: [N] Derivative along the flow
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:lie-derivative@L110-L114
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:lie-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Ω ⊂ ℂⁿ×ℂⁿ, φ, F = X_φ, ε ≤ ½ as in Lemma symplectic; Ω_1 ⊂ Ω open; u holomorphic on Ω_1; z ∈ Ω^{1/2} with X^t(z) ∈ Ω_1 for ¦t¦ ≤ 1
SOURCE_QUANTIFIERS: Ω; φ; ε; Ω_1; u; z; j ≥ 0
SOURCE_CONCLUSION: g(t) = u(X^t(z)) is C^∞ on [−1,1] and g^{(j)}(t) = (ad^j_φu)(X^t(z)) for all j ≥ 0 (each ad^j_φu holomorphic on Ω_1)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:lie-derivative; shared Lean provider. There: KIND lemma, contract bpN:p5:lie-derivative v1. Cited as \Nref{bpN:p5:lie-derivative}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p5:setting
KIND: external
TITLE: [N] Hamiltonian field, bracket, scaled norm
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:setting@L19-L26
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (typing data: n; z = (θ,I) ∈ ℂⁿ×ℂⁿ, angles first; u, v holomorphic on an open set; ρ, σ > 0)
SOURCE_QUANTIFIERS: n; u, v; ρ, σ; c > 0; φ; j ≥ 0
SOURCE_CONCLUSION: defines J = ((0,1),(−1,0)), ∇u = (∂_θu,∂_Iu)ᵀ, X_u = J∇u = (∂_Iu, −∂_θu), {u,v} = Σ_i(∂_{θ_i}u∂_{I_i}v − ∂_{I_i}u∂_{θ_i}v) = Du·X_v = ∇uᵀJ∇v = −{v,u}; ν_{ρ,σ}(a,b) = max(¦a¦_∞/σ, ¦b¦_∞/ρ) with closed ball of radius c about z equal to P̄(z;cσ,cρ); ad^0_φu = u, ad^j_φu = {ad^{j−1}_φu, φ}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:setting; shared Lean provider. There: KIND definition, contract bpN:p5:setting v1. Cited as \Nref{bpN:p5:setting}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p5:symplectic
KIND: external
TITLE: [N] Symplectic flow
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:symplectic@L76-L81
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:symplectic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lemma flow with N = 2n, Ω ⊂ ℂⁿ×ℂⁿ, F = X_φ with φ holomorphic on Ω, ν(F) ≤ ε ≤ ½; z ∈ Ω^{1/2}; ¦t¦ ≤ 1
SOURCE_QUANTIFIERS: n; ν; Ω; φ; ε; z; t
SOURCE_CONCLUSION: Y = DX^t(z) satisfies YᵀJY = J, YJYᵀ = J, det Y = ±1 (Yᵀ the plain transpose)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:symplectic; shared Lean provider. There: KIND lemma, contract bpN:p5:symplectic v1. Cited as \Nref{bpN:p5:symplectic}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p5:taylor
KIND: external
TITLE: [N] Taylor with integral remainder along the flow
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:taylor@L121-L132
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of Lemma lie-derivative; N ≥ 1; for the displayed formula (eq:poschel): h, f_0 holomorphic on Ω_1 and the trajectory of z stays in Ω_1
SOURCE_QUANTIFIERS: Ω; φ; Ω_1; u; z; N; h, f_0
SOURCE_CONCLUSION: u(X^1z) = Σ_{j<N}(1/j!)(ad^j_φu)(z) + R_N(z) with R_N(z) = ∫_0^1(1−t)^{N−1}/(N−1)!·(ad^N_φu)(X^tz)dt and ¦R_N(z)¦ ≤ (1/N!)max_{0≤t≤1}¦(ad^N_φu)(X^tz)¦; in particular (h+f_0)(X^1z) = h(z) + {h,φ}(z) + f_0(z) + ∫_0^1{(1−t){h,φ}+f_0, φ}(X^tz)dt
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:taylor; shared Lean provider. There: KIND lemma, contract bpN:p5:taylor v1. Cited as \Nref{bpN:p5:taylor}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p5:transform
KIND: external
TITLE: [N] Lie transform with first-order remainder, in the weighted norm
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:transform@L183-L190
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:transform
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: setting of Theorem composition; h ∈ 𝒪(r,s) (any norm, possibly ∞) with w := {h,φ} ∈ 𝒪(r,s) of finite norm; f_0 ∈ 𝒪(r,s) with finite norm
SOURCE_QUANTIFIERS: D, n; r, s, r', s'; ρ, σ; φ; h, f_0; w
SOURCE_CONCLUSION: on 𝒟_{r−ρ,s−σ}: (h+f_0)∘X^1_φ = h + w + f_0 + ℛ with ℛ = Σ_{j≥1}((1/(j+1)!)ad^j_φw + (1/j!)ad^j_φf_0) = ∫_0^1{(1−t)w+f_0,φ}∘X^t_φ dt; the series converges in ¦·¦_{r−ρ,s−σ}, ℛ ∈ 𝒪(r−ρ,s−σ), ¦ℛ¦_{r−ρ,s−σ} ≤ Σ_{j≥1}(eη/4)^j(¦w¦_{r,s}/(j+1)+¦f_0¦_{r,s}) ≤ (η/(1−η))(½¦w¦_{r,s}+¦f_0¦_{r,s})
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:transform; shared Lean provider. There: KIND proposition, contract bpN:p5:transform v1. Cited as \Nref{bpN:p5:transform}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p5:vf-bound
KIND: external
TITLE: [N] Size of the field
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#bpN:p5:vf-bound@L29-L34
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p5:vf-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: φ ∈ 𝒪(r,s) with finite norm (D ⊂ ℂⁿ); 0 < ρ < r, 0 < σ < s
SOURCE_QUANTIFIERS: D, n; r, s; φ; ρ, σ; i; on 𝒟_{r−ρ,s−σ}
SOURCE_CONCLUSION: on 𝒟_{r−ρ,s−σ}: ¦∂_{I_i}φ¦ ≤ ¦φ¦_{r,s}/ρ, ¦∂_{θ_i}φ¦ ≤ ¦φ¦_{r,s}/(eσ) and ν_{ρ,σ}(X_φ) = max(max_i¦∂_{I_i}φ¦/σ, max_i¦∂_{θ_i}φ¦/ρ) ≤ ¦φ¦_{r,s}/(ρσ)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p5:vf-bound; shared Lean provider. There: KIND lemma, contract bpN:p5:vf-bound v1. Cited as \Nref{bpN:p5:vf-bound}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p6:deviations
KIND: external
TITLE: [N] Deviations from P\"oschel and bookkeeping
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:deviations@L234-L243
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:deviations
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:deviations; shared Lean provider. Cited as \Nref{bpN:p6:deviations}. WARNING: EXCLUDED in the N graph: administrative remark (deviations from Pöschel, bookkeeping); no proof consumes a fact it states (its (1)-(5) restate facts proved in the cited steps). Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p6:divisor
KIND: external
TITLE: [N] Divisor bound
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:divisor@L50-L53
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:divisor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (N1), (N2) of the setting; K L r<=alpha/p; p>1, q=p/(p-1)
SOURCE_QUANTIFIERS: (D,r,K,alpha,L,Lambda,h); p; then I in V_rD, k in Z_K\Lambda
SOURCE_CONCLUSION: |k·omega(I)|>=alpha-KLr>=alpha/q for all I in V_rD and k in Z_K\Lambda
CONSTANT_SCOPE: none beyond the setting data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:divisor; shared Lean provider. There: KIND lemma, contract bpN:p6:divisor v1. Cited as \Nref{bpN:p6:divisor}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p6:ext-numerics
KIND: external
TITLE: [N] Numerics
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:ext-numerics@L22-L22
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:ext-numerics
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: 2/e<1; e^{-3 ln2}=1/8; e^2<8, hence ln2>2/3 and 12 ln2>8; sum_{i>=1} 4^{1-i}=4/3; (1-2^{-7})^{-1}=128/127; (1-1/8)^{-1}=8/7 (and e>2, used in bg-sum)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-N graph, node bpN:p6:ext-numerics (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bpN:p6:ext-numerics v1. Cited as \Nref{bpN:p6:ext-numerics}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p6:homological
KIND: external
TITLE: [N] Homological equation
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:homological@L60-L70
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:homological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (N1), (N2), KLr<=alpha/p; s>0; f in O(r,s) with delta=|f|_{r,s}<infinity; xi=P_Lambda T_K f; phi=sum_{k in Z_K\Lambda} fhat_k(I)/(2πi k·omega(I)) chi_k(theta), chi_k=e^{2πik·theta}
SOURCE_QUANTIFIERS: (D,r,K,alpha,L,Lambda,h); p; s; f
SOURCE_CONCLUSION: xi, phi in O(r,s) are finite sums of characters (trig. polynomials of degree<=K in theta) and (a) {phi,h}+xi=T_K f on D_{r,s} with {phi,h}=∂_theta phi·omega, P_Lambda phi=0, P_Lambda xi=xi, xi=P_{Lambda∩Z_K} f; (b) |xi|_{r,s}<=delta, |T_K f|_{r,s}<=delta, |phi|_{r,s}<=q delta/abar=q delta/(2πalpha); (c) if Lambda=-Lambda, f real on real points and omega(I) real for real I in V_rD then xi, phi real on real points
CONSTANT_SCOPE: constants q=p/(p-1), abar=2πalpha; no dependence on f beyond delta
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:homological; shared Lean provider. There: KIND proposition, contract bpN:p6:homological v1. Cited as \Nref{bpN:p6:homological}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p6:iterative
KIND: external
TITLE: [N] Iterative Lemma
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative@L93-L108
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:iterative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (N1), (N2), KLr<=alpha/p (p>1, q=p/(p-1)); s>0; rho,sigma>0 with 2rho<r, 2sigma<s; abar=2πalpha; H=h+g+f on D_{r,s}, g=sum_{j in J} g_j as in the setting (any finite decomposition), f in O(r,s); delta=|f|_{r,s}<=abar rho sigma/(4q) (equivalently u=q delta/(abar rho sigma)<=1/4)
SOURCE_QUANTIFIERS: (D,r,K,alpha,L,Lambda,h); p; s; rho; sigma; g, J, g_j; f
SOURCE_CONCLUSION: there is phi in O(r,s) (that of the homological equation, |phi|_{r,s}<=q delta/abar) such that Phi=X^1_phi satisfies (a) Phi holomorphic on D_{r-3rho/2,s-3sigma/2} into D_{r-rho,s-sigma}, canonical (DPhi^T J DPhi=J), Phi(theta+k,I)=Phi(theta,I)+(k,0), injective on D_{r-2rho,s-2sigma} with left inverse X^{-1}_phi; (b) nu_{rho,sigma}(Phi-id)<=u, |Phi_theta-theta|_inf<=q delta/(abar rho), |Phi_I-I|_inf<=q delta/(e abar sigma), |DPhi-1|_nu<=2u on D_{r-2rho,s-2sigma}; (c) H∘Phi=h+g_++f_+ on D_{r-2rho,s-2sigma}, g_+=g+P_Lambda T_K f, |g_+-g|_{r,s}<=delta, f_+ in O(r-2rho,s-2sigma); (d) |f_+|_{r-2rho,s-2sigma}<=(1-2q delta/(abar rho sigma))^{-1}(2q/(e abar rho sigma)(|g|_*+delta)+e^{-2πK sigma})delta; (e) if Lambda=-Lambda and h,g,f real on real points then phi, g_+, f_+ real on real points and Phi maps real points to real points
CONSTANT_SCOPE: all constants explicit; depend only on (n,r,s,rho,sigma,K,alpha,L,p) and on delta, |g|_*; no dependence on f or H beyond delta and |g|_*
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:iterative; shared Lean provider. There: KIND theorem, contract bpN:p6:iterative v1. Cited as \Nref{bpN:p6:iterative}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p6:iterative-special
KIND: external
TITLE: [N] Special cases for track~P
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:iterative-special@L140-L144
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:iterative-special
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: TODO
SOURCE_QUANTIFIERS: TODO
SOURCE_CONCLUSION: TODO
CONSTANT_SCOPE: TODO
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:iterative-special; shared Lean provider. Cited as \Nref{bpN:p6:iterative-special}. WARNING: EXCLUDED in the N graph: remark of special cases for track P (first step g=0, averaging Lambda={0}, constants). outside every root closure; owned by the importing graph (track I/P). Check: grep over Parts 7-11 (and 1-5) finds no reference to bpN:p6:iterative-special; the only in-corpus mention is the statement of iterative-direct ("and Remark iterative-special hold verbatim"), a claim not consumed by any proof; Part 11 re-derives its own estimates (bpN:p11:iterative, nf). Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p6:normal-form
KIND: external
TITLE: [N] Normal Form Lemma
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:normal-form@L157-L174
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:normal-form
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (N1), (N2), K>0, KLr<=alpha/p (p>1, q=p/(p-1)); s>0; H=h+f with f in O(r,s) of finite norm eps=|f|_{r,s}; (i) eps<=(1/(2^7 q))(alpha r/K); (ii) kappa=2πKs>=6; r_*=r/2, s_*=s/6, c=2qK/(alpha r), g_0=P_Lambda T_K f
SOURCE_QUANTIFIERS: (D,r,K,alpha,L,Lambda,h); p; s; f
SOURCE_CONCLUSION: there are a holomorphic injective Psi:D_{r_*,s_*}->D_{r,s} with (DPsi)^T J DPsi=J and Psi(theta+k,I)=Psi(theta,I)+(k,0), and g, f_* in O(r_*,s_*), g a trig. polynomial in theta with frequencies in Lambda∩Z_K (P_Lambda g=g), such that H∘Psi=h+g+f_* on D_{r_*,s_*} and (a) |g-g_0|_{r_*,s_*}<=16c eps^2 (g=g_0 if N=0 or in case B); (b) |f_*|_{r_*,s_*}<=e^{-2πKs/6}eps=e^{-kappa/6}eps; (c) |Pi_I Psi-I|_inf<=qK eps/alpha (=c r eps/2) and |Pi_theta Psi-theta|_inf<=10q eps/(2πalpha r); (d) if Lambda=-Lambda and h,f real on real points then g, f_* real on real points and Psi maps real points to real points
CONSTANT_SCOPE: Psi, g, f_* are constructed from (h,f,K,alpha,L,Lambda,p) and (r,s); r_*, s_*, c depend only on (r,s,K,alpha,q)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:normal-form; shared Lean provider. There: KIND theorem, contract bpN:p6:normal-form v1. Cited as \Nref{bpN:p6:normal-form}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p6:setting
KIND: external
TITLE: [N] Resonant setting
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:setting@L29-L40
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:setting
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D subset C^n; r>0; K>=0; alpha>0; L>=0; Lambda subset Z^n; h holomorphic on V_rD (bpN:p4:domains), regarded as a theta-independent function on D_{r,s} for every s>0; omega=∂_I h : V_rD -> C^n; for the norm |g|_*: g=sum_{j in J} g_j, J finite, g_j in O(r_j,s_j) with finite norm, r_j>=r, s_j>=s, 0<rho<r, 0<sigma<s
SOURCE_QUANTIFIERS: D; r; K; alpha; L; Lambda; h; then (for |g|_*) s, J, g_j, r_j, s_j, rho, sigma
SOURCE_CONCLUSION: defines: (N1) |k·omega(I)|>=alpha for all I in D, k in Z_K\Lambda; (N2) |omega(I)-omega(I0)|_inf<=L|I-I0|_inf whenever I0 in D, I in V_rD, |I-I0|_inf<r; and |g|_*=sum_j (1/2)(rho/(r_j-r+rho)+sigma/(s_j-s+sigma))|g_j|_{r_j,s_j} (depends on the decomposition; equals |g|_{r,s} for J={1}). Item labels cond-nr, cond-L map to this node
CONSTANT_SCOPE: L, alpha, K are data of the setting (no dependence restriction); |g|_* depends on the chosen decomposition and on (rho,sigma)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:setting; shared Lean provider. There: KIND definition, contract bpN:p6:setting v1. Cited as \Nref{bpN:p6:cond-L}, \Nref{bpN:p6:cond-nr}, \Nref{bpN:p6:setting}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:bpN:p6:telescope
KIND: external
TITLE: [N] Telescoping
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#bpN:p6:telescope@L148-L150
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p6:telescope
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U_0⊃U_1⊃...⊃U_{m+1} subsets of C^{2n}; Phi_i:U_{i+1}->U_i (0<=i<=m); Psi=Phi_0∘...∘Phi_m:U_{m+1}->U_0; for the last assertions every Phi_i holomorphic with (DPhi_i)^T J DPhi_i=J (resp. injective)
SOURCE_QUANTIFIERS: m; U_i; Phi_i; z in U_{m+1}; seminorm mu on C^{2n}
SOURCE_CONCLUSION: mu(Psi(z)-z)<=sum_{i=0}^m sup_{U_{i+1}} mu(Phi_i-id); Psi holomorphic with (DPsi)^T J DPsi=J; Psi injective if every Phi_i is
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node bpN:p6:telescope; shared Lean provider. There: KIND lemma, contract bpN:p6:telescope v1. Cited as \Nref{bpN:p6:telescope}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:stepN:p5:cm-ab
KIND: external
TITLE: [N] (a),(b)
STATEMENT_SOURCE: blueprint-N/parts/p5-canonical-maps.tex#stepN:p5:cm-ab@L229-L229
PROOF_SOURCE: -
CONTRACT_ID: N:stepN:p5:cm-ab
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D ⊂ ℂⁿ; φ∈𝒪(r,s) with finite norm; 0<ρ<r/2, 0<σ<s/2; ε:=¦φ¦_{r,s}/(ρσ)≤1/2; Ω:=𝒟_{r−ρ,s−σ}; ν:=ν_{ρ,σ}; Φ:=X^1_φ; Ψ:=X^{−1}_φ; z∈𝒟_{r−3ρ/2,s−3σ/2}; ¦t¦≤1; k∈ℤⁿ; for reality φ real at real points
SOURCE_QUANTIFIERS: D,n; r,s,r′,s′ when present; ρ,σ; φ; then u or h,w,f₀ or (v_t), with exactly SOURCE_HYPOTHESES; then local data in source order: z; t; k
SOURCE_CONCLUSION: Φ, Ψ holomorphic with X^t(z) ∈ P̄(z;εσ,ερ) ⊂ 𝒟_{r−ρ,s−σ}; Φ(θ+k,I) = Φ(θ,I)+(k,0); reality; ¦X^t_θ−θ¦ ≤ ¦t¦¦φ¦/ρ, ¦X^t_I−I¦ ≤ ¦t¦¦φ¦/(eσ); Ψ = X^1_{−φ}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node stepN:p5:cm-ab; shared Lean provider. There: KIND step, contract stepN:p5:cm-ab v1. Cited as \Nref{stepN:p5:cm-ab}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:stepN:p6:hom-def
KIND: external
TITLE: [N] Well defined and holomorphic
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-def@L72-L72
PROOF_SOURCE: -
CONTRACT_ID: N:stepN:p6:hom-def
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: statement of homological; Lemma divisor gives |k·omega|>=alpha/q on V_rD
SOURCE_QUANTIFIERS: k in Z_K\Lambda
SOURCE_CONCLUSION: phihat_k=fhat_k/(2πi k·omega) is holomorphic on V_rD; Z_K∩Lambda and Z_K\Lambda finite; phi, xi are finite sums a_k(I)chi_k(theta) with finite norm so lie in O(r,s); xi=P_Lambda T_K f=P_{Lambda∩Z_K} f
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node stepN:p6:hom-def; shared Lean provider. There: KIND step, contract stepN:p6:hom-def v1. Cited as \Nref{stepN:p6:hom-def}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:stepN:p6:hom-norm
KIND: external
TITLE: [N] Norms
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:hom-norm@L74-L74
PROOF_SOURCE: -
CONTRACT_ID: N:stepN:p6:hom-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: statement of homological; phi, xi as constructed in hom-def
SOURCE_QUANTIFIERS: I in V_rD; k in Z_K\Lambda
SOURCE_CONCLUSION: |phihat_k(I)|<=q/(2πalpha)|fhat_k(I)|; summing with weights e^{2π|k|_1 s} and sup over I gives |phi|_{r,s}<=q delta/abar; |xi|_{r,s}, |T_K f|_{r,s}<=delta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node stepN:p6:hom-norm; shared Lean provider. There: KIND step, contract stepN:p6:hom-norm v1. Cited as \Nref{stepN:p6:hom-norm}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.

NODE: N:stepN:p6:nf-induct
KIND: external
TITLE: [N] Induction
STATEMENT_SOURCE: blueprint-N/parts/p6-normal-form.tex#stepN:p6:nf-induct@L191-L198
PROOF_SOURCE: -
CONTRACT_ID: N:stepN:p6:nf-induct
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: nf-N: rho, sigma, (6.1), (6.2)
SOURCE_QUANTIFIERS: 1<=i<=N
SOURCE_CONCLUSION: step i admissible and eps_{i+1}<=eps_i/4, so eps_i<=4^{1-i}eps_1 and |g_i-g_{i-1}|<=eps_i; |g_{i-1}|_*<=(1/2)(eps_{i-1}+...+eps_1)+eps/N<=abar rho sigma/(2^4 q); eps_{i+1}<=(128/127)(1/16+1/256+1/8)eps_i<eps_i/4
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: proved in the track-N graph, node stepN:p6:nf-induct; shared Lean provider. There: KIND step, contract stepN:p6:nf-induct v1. Cited as \Nref{stepN:p6:nf-induct}. Ownership pending publication of the track-N graph (assembled, global review open): re-check with inp_depgraph_imports.py when docs/graph/N/DEPGRAPH.md is published.
