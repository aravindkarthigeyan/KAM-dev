NODE: I:bpI:p0:hamsol#IsHamiltonianSolutionOn
KIND: external
TITLE: [I] Hamiltonian solutions with action in $B$: KAM.Iso.IsHamiltonianSolutionOn
STATEMENT_SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:hamsol@L122-L128
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p0:hamsol#IsHamiltonianSolutionOn
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
NOTE: IMPORTED (pending I graph): frozen definition KAM.Iso.IsHamiltonianSolutionOn, anchor node bpI:p0:hamsol#IsHamiltonianSolutionOn of the track-I graph; not an anchor of this graph. Cited as \frozen{KAM.Iso.IsHamiltonianSolutionOn}.

NODE: I:bpI:p0:restricted#IsRestrictedSolutionOn
KIND: external
TITLE: [I] Restricted Hamiltonian and field: KAM.Iso.IsRestrictedSolutionOn
STATEMENT_SOURCE: blueprint-I/parts/p0-conventions.tex#bpI:p0:restricted@L139-L153
PROOF_SOURCE: -
CONTRACT_ID: I:bpI:p0:restricted#IsRestrictedSolutionOn
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
NOTE: IMPORTED (pending I graph): frozen definition KAM.Iso.IsRestrictedSolutionOn, anchor node bpI:p0:restricted#IsRestrictedSolutionOn of the track-I graph; not an anchor of this graph. Cited as \frozen{KAM.Iso.IsRestrictedSolutionOn}.

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

NODE: K:bp:p1:exp-sums
KIND: external
TITLE: [K] Exponential sums over $\Z^n$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L727-L734
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:exp-sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; (a) y>=0, a>0, tau>=0; (b) x>0; (c) x>0
SOURCE_QUANTIFIERS: n; y, a, tau, x
SOURCE_CONCLUSION: (a) y^tau e^{-ay} <= (tau/(ea))^tau; (b) sum over Z^n of e^{-x|k|_1} = coth(x/2)^n and coth(x/2) <= 1+2/x; (c) sum over k!=0 of e^{-x|k|_1} <= (8n/x)^n
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:exp-sums; shared Lean provider. There: KIND lemma, contract bp:p1:exp-sums v1. Cited as \Kref{bp:p1:exp-sums}.

NODE: K:bp:p1:ext-cauchy
KIND: external
TITLE: [K] Cauchy's formulas in one variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-cauchy@L56-L66
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:ext-cauchy
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-K graph, node bp:p1:ext-cauchy (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bp:p1:ext-cauchy v1. Cited as \Kref{bp:p1:ext-cauchy}.

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

NODE: K:bp:p1:ext-integral
KIND: external
TITLE: [K] Integrals
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-integral@L82-L86
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:ext-integral
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-K graph, node bp:p1:ext-integral (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bp:p1:ext-integral v1. Cited as \Kref{bp:p1:ext-integral}.

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

NODE: K:bp:p1:ext-schwarz
KIND: external
TITLE: [K] Symmetry of second derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-schwarz@L79-L81
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:ext-schwarz
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
EXTRACTOR: claude-suborch-INP
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: IMPORTED: external input of the track-K graph, node bp:p1:ext-schwarz (Mathlib-level; not re-proved there either); shared Lean provider. There: KIND external, contract bp:p1:ext-schwarz v1. Cited as \Kref{bp:p1:ext-schwarz}.

NODE: K:bp:p1:fourier-basic
KIND: external
TITLE: [K] Fourier coefficients of periodic functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L757-L768
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:fourier-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v C-valued (componentwise for vector/matrix); (a) v continuous, 1-periodic, C^1; (b) v continuous, 1-periodic, sum |hat v_k| finite; (c) r>0, v holomorphic and 1-periodic on T_r, not necessarily bounded, all hat v_k=0
SOURCE_QUANTIFIERS: v; k in Z^n; ell; omega in C^n; r
SOURCE_CONCLUSION: (a) hat(d_ell v)_k = 2 pi i k_ell hat v_k and hat(d_omega v)_k = 2 pi i (k.omega) hat v_k; (b) v(x)=sum hat v_k chi_k(x) for all x, so v=0 if all hat v_k=0; (c) v=0 on T_r
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:fourier-basic; shared Lean provider. There: KIND lemma, contract bp:p1:fourier-basic v1. Cited as \Kref{bp:p1:fourier-basic}.

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

NODE: K:bp:p1:holomorphic-regularity
KIND: external
TITLE: [K] Derivatives of holomorphic maps
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L227-L236
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:holomorphic-regularity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U in C^m open; F:U->W holomorphic
SOURCE_QUANTIFIERS: U,F,W,m arbitrary; z in U; v,w in C^m; j>=1
SOURCE_CONCLUSION: DF:U->L(C^m,W) holomorphic; D^jF exists and is holomorphic for every j>=1, F is C^infty; |D^{j+1}F(z)|=|D^j(DF)(z)|=|D(D^jF)(z)|; D^2F(z)[v,w]=D^2F(z)[w,v]; d_i d_j F=d_j d_i F on U
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:holomorphic-regularity; shared Lean provider. There: KIND lemma, contract bp:p1:holomorphic-regularity v1. Cited as \Kref{bp:p1:holomorphic-regularity}.

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

NODE: K:bp:p1:summation
KIND: external
TITLE: [K] Summation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:summation@L824-L831
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:summation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (forward) sum_k |a_k| e^{2 pi |k|_1 rho} finite; (converse) u as in decay, 0<delta<rho
SOURCE_QUANTIFIERS: rho, a_k, u, delta
SOURCE_CONCLUSION: u=sum a_k e^{2 pi i k.theta} holomorphic and 1-periodic on T_rho, hat u_k=a_k, ||u||_rho <= sum |a_k| e^{2 pi |k|_1 rho}; conversely sum |hat u_k| e^{2 pi |k|_1(rho-delta)} <= coth(pi delta)^n ||u||_rho and u equals its Fourier series on T_rho
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:summation; shared Lean provider. There: KIND lemma, contract bp:p1:summation v1. Cited as \Kref{bp:p1:summation}.

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

NODE: P:bpP:p0:fixedsol#IsFixedSolution
KIND: external
TITLE: [P] Fixed-Sun solutions: KAM.Planetary.IsFixedSolution
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:fixedsol@L235-L242
PROOF_SOURCE: -
CONTRACT_ID: P:bpP:p0:fixedsol#IsFixedSolution
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
NOTE: IMPORTED (pending P graph): frozen definition KAM.Planetary.IsFixedSolution, anchor node bpP:p0:fixedsol#IsFixedSolution of the track-P graph; not an anchor of this graph. Cited as \frozen{KAM.Planetary.IsFixedSolution}.

NODE: P:bpP:p0:newton#IsNewtonSolution
KIND: external
TITLE: [P] Newton solutions: KAM.Planetary.IsNewtonSolution
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:newton@L226-L233
PROOF_SOURCE: -
CONTRACT_ID: P:bpP:p0:newton#IsNewtonSolution
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
NOTE: IMPORTED (pending P graph): frozen definition KAM.Planetary.IsNewtonSolution, anchor node bpP:p0:newton#IsNewtonSolution of the track-P graph; not an anchor of this graph. Cited as \frozen{KAM.Planetary.IsNewtonSolution}.

NODE: P:bpP:p2:direct
KIND: external
TITLE: [P] Iterative Lemma, direct form
STATEMENT_SOURCE: blueprint-P/parts/p2-averaging.tex#bpP:p2:direct@L45-L50
PROOF_SOURCE: -
CONTRACT_ID: P:bpP:p2:direct
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
NOTE: IMPORTED (pending P graph): proved in the track-P graph, node bpP:p2:direct; shared Lean provider. Cited as \Pref{bpP:p2:direct}.
