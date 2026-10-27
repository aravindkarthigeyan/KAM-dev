NODE: K:bp:p0:g3
KIND: external
TITLE: [K] G3: measure of the non-Diophantine set
STATEMENT_SOURCE: blueprint/parts/p0-conventions.tex#bp:p0:g3@L157-L162
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p0:g3
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: tau > n-1; Omega subset R^n bounded
SOURCE_QUANTIFIERS: n,tau,Omega fixed; exists C; for every alpha > 0
SOURCE_CONCLUSION: meas{omega in Omega : omega not in Dio_{alpha,tau}} <= C alpha
CONSTANT_SCOPE: C depends only on n, tau and Omega (via a bound R with Omega subset [-R,R]^n); not on alpha
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p0:g3; shared Lean provider. There: KIND theorem, contract kam.volume_not_diophantine_le v1, frozen anchor KAM.volume_not_diophantine_le (kam.volume_not_diophantine_le.v1); not an anchor of this graph. Cited as \Kref{bp:p0:g3}, \frozen{KAM.volume_not_diophantine_le}.

NODE: K:bp:p1:cauchy-corollaries
KIND: external
TITLE: [K] Cauchy corollaries
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L617-L621
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:cauchy-corollaries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f holomorphic and bounded on T_rho; 0<delta<rho; f valued in C^p (first claim) or C^p / C^{pxq} (second claim)
SOURCE_QUANTIFIERS: rho, delta, f, omega
SOURCE_CONCLUSION: ||(Df)^T||_{rho-delta} <= p delta^-1 ||f||_rho; ||d_omega f||_{rho-delta} <= |omega|_1 delta^-1 ||f||_rho
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:cauchy-corollaries; shared Lean provider. There: KIND lemma, contract bp:p1:cauchy-corollaries v1. Cited as \Kref{bp:p1:cauchy-corollaries}.

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

NODE: K:bp:p1:cauchy-strip
KIND: external
TITLE: [K] Cauchy estimate on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L568-L574
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:cauchy-strip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic and bounded on T_rho; 0<delta<rho; u scalar, vector (max norm) or matrix (operator norm) valued
SOURCE_QUANTIFIERS: rho, delta, u; every ell
SOURCE_CONCLUSION: ||d_ell u||_{rho-delta} <= delta^-1 ||u||_rho and ||Du||_{rho-delta} <= n delta^-1 ||u||_rho
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:cauchy-strip; shared Lean provider. There: KIND lemma, contract bp:p1:cauchy-strip v1. Cited as \Kref{bp:p1:cauchy-strip}.

NODE: K:bp:p1:cohomological
KIND: external
TITLE: [K] Cohomological equation on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L887-L897
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:cohomological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega in Dio_{gamma,tau}, gamma>0, tau>=0; g holomorphic, bounded, 1-periodic on T_rho with avg(g)=0; 0<delta<rho; g real on real points (for realness); vector/matrix valued componentwise
SOURCE_QUANTIFIERS: fixed dimension n under the corpus conventions, and tau>=0; a constant c(n,tau) depending only on these; then every gamma>0, rho>0, Diophantine omega, datum g as stated and 0<delta<rho; then the unique zero-average solution u
SOURCE_CONCLUSION: there is a unique u holomorphic and 1-periodic on T_{rho-delta} (no boundedness assumed) with avg(u)=0 and Du(theta) omega=g(theta); u is bounded and ||u||_{rho-delta} <= c(n,tau) gamma^-1 delta^-(tau+n) ||g||_rho; u real on real points if g is
CONSTANT_SCOPE: c(n,tau) depends only on n and tau (not on gamma, rho, delta, omega, g)
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:cohomological; shared Lean provider. There: KIND lemma, contract bp:p1:cohomological v1. Cited as \Kref{bp:p1:cohomological}.

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

NODE: K:bp:p1:holomorphic-inverse
KIND: external
TITLE: [K] Holomorphic inverse
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L404-L407
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:holomorphic-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A holomorphic matrix-valued function on an open set V with det A != 0 there
SOURCE_QUANTIFIERS: A:V->C^{p x p}, V open
SOURCE_CONCLUSION: A^-1 is holomorphic on V and D(A^-1)=-A^-1 (DA) A^-1
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:holomorphic-inverse; shared Lean provider. There: KIND lemma, contract bp:p1:holomorphic-inverse v1. Cited as \Kref{bp:p1:holomorphic-inverse}.

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

NODE: K:bp:p1:increments-open
KIND: external
TITLE: [K] Increments on open sets
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L425-L428
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:increments-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F holomorphic on open U in C^m; |DF|<=A on U; segment [z,z+w] in U
SOURCE_QUANTIFIERS: U,F,A; z,w
SOURCE_CONCLUSION: |F(z+w)-F(z)|<=A|w|
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:increments-open; shared Lean provider. There: KIND lemma, contract bp:p1:increments-open v1. Cited as \Kref{bp:p1:increments-open}.

NODE: K:bp:p1:iteration
KIND: external
TITLE: [K] Quadratic iteration on nested strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:iteration@L1009-L1014
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:iteration
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Q>0; p>=0; reals y_0,y_1,...>=0 with y_{m+1}<=Q 2^{pm} y_m^2 for all m>=0; Q 2^p y_0<=1/2 (second claim: only q:=Q 2^p y_0<=1)
SOURCE_QUANTIFIERS: for all Q>0, p>=0, sequences (y_m) satisfying the recursion; then for all m>=0
SOURCE_CONCLUSION: y_m<=Q^{-1} 2^{-p(m+1)} 2^{-2^m} for all m>=0 (so y_m->0); under q<=1 only: y_m<=q^{2^m-1} 2^{-pm} y_0 for all m>=0
CONSTANT_SCOPE: none (Q, p, y_0 arbitrary; no constants introduced)
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:iteration; shared Lean provider. There: KIND lemma, contract bp:p1:iteration v1. Cited as \Kref{bp:p1:iteration}.

NODE: K:bp:p1:matrix-norms
KIND: external
TITLE: [K] Max-norm matrix facts
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L148-L153
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:matrix-norms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: norm |M|=max_i sum_j |M_ij|
SOURCE_QUANTIFIERS: M,N matrices of compatible sizes, v vector; M of size m x m' for the transpose bound; M of size 2n x q resp. p x 2n; M_1,M_2 stacked
SOURCE_CONCLUSION: |MN|<=|M||N|; |Mv|<=|M||v|; |M^T|<=m|M| (m x m' matrices); |Omega_0 M|=|M| (2n x q); |M Omega_0|=|M| (p x 2n); |(M_1;M_2)|=max{|M_1|,|M_2|}
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:matrix-norms; shared Lean provider. There: KIND lemma, contract bp:p1:matrix-norms v1. Cited as \Kref{bp:p1:matrix-norms}.

NODE: K:bp:p1:neumann
KIND: external
TITLE: [K] Neumann series
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:neumann@L177-L181
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:neumann
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A invertible; |A^-1||Delta|<=1/2; for the pointwise version A(theta), Delta(theta) matrix-valued with sup norms
SOURCE_QUANTIFIERS: A,Delta square matrices of the same size; pointwise version for theta in a set
SOURCE_CONCLUSION: A+Delta invertible, |(A+Delta)^-1|<=2|A^-1|, |(A+Delta)^-1-A^-1|<=2|A^-1|^2|Delta|; same pointwise for matrix-valued functions with sup norms
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:neumann; shared Lean provider. There: KIND lemma, contract bp:p1:neumann v1. Cited as \Kref{bp:p1:neumann}.

NODE: K:bp:p1:real-inverse
KIND: external
TITLE: [K] Real inverses
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L205-L208
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:real-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A an invertible real matrix; A(theta) real for real theta and invertible
SOURCE_QUANTIFIERS: A, theta arbitrary
SOURCE_CONCLUSION: A^-1 is real; A(theta)^-1 real for real theta
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:real-inverse; shared Lean provider. There: KIND lemma, contract bp:p1:real-inverse v1. Cited as \Kref{bp:p1:real-inverse}.

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

NODE: K:bp:p1:taylor
KIND: external
TITLE: [K] Second-order Taylor bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:taylor@L436-L439
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p1:taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F holomorphic on open U in C^m; |D^2F|<=A on U; segment [z,z+w] in U
SOURCE_QUANTIFIERS: U,F,A; z,w
SOURCE_CONCLUSION: |F(z+w)-F(z)-DF(z)w|<=(A/2)|w|^2
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p1:taylor; shared Lean provider. There: KIND lemma, contract bp:p1:taylor v1. Cited as \Kref{bp:p1:taylor}.

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

NODE: K:bp:p2:admissible
KIND: external
TITLE: [K] Admissible parameterization
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:admissible@L306-L317
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:admissible
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0, beta>0, 0<=epsilon<=1; the standing data of Part 2 (B(frak), sigma_K, sigma_B, sigma_T)
SOURCE_QUANTIFIERS: for all r,beta,epsilon, K:C^n->C^n x C^n
SOURCE_CONCLUSION: defines (r,beta,epsilon)-admissible: (A1) K holomorphic, primary and real on reals on T_r; (A2) B_beta(K(theta)) subset B(frak) for all theta in T_r; (A3) |DK|<=sigma_K on T_r; (A4) det G != 0 and |B|<=sigma_B on T_r; (A5) avg T invertible and |avg T^{-1}|<=sigma_T; (A6) |E|<=epsilon on T_r
CONSTANT_SCOPE: none (definition; uses sigma_K,sigma_B,sigma_T of the standing data)
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:admissible; shared Lean provider. There: KIND definition, contract bp:p2:admissible v1. Cited as \Kref{bp:p2:A2}, \Kref{bp:p2:A3}, \Kref{bp:p2:A4}, \Kref{bp:p2:A5}, \Kref{bp:p2:A6}.

NODE: K:bp:p2:averages
KIND: external
TITLE: [K] Averages
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L158-L167
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:averages
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (a) f: R^n->C^{pxq} continuous and 1-periodic; (b) v holomorphic and 1-periodic on T_r (not necessarily bounded), values in C, C^p or C^{pxq}
SOURCE_QUANTIFIERS: for all p,q, r>0, f resp. v; averages over [0,1]^n
SOURCE_CONCLUSION: (a) f integrable on [0,1]^n, avg f linear in f, real if f is, |avg f|<=sup_{[0,1]^n}|f|; (b) avg(d_{theta_l} v)=0 for every l and avg(d_omega v)=0
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:averages; shared Lean provider. There: KIND corollary, contract bp:p2:averages v1. Cited as \Kref{bp:p2:averages}.

NODE: K:bp:p2:cohomological
KIND: external
TITLE: [K] Cohomological equation in operator norms
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:cohomological@L186-L198
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:cohomological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: 0<delta<r; Gamma_delta=c_R gamma^{-1} delta^{-kappa}; the standing data of Part 2 (gamma, tau, omega in Dio_{gamma,tau}); (a) g:T_r->C^p holomorphic, 1-periodic, |g|<=H, avg g=0; (b) u:T_r->C^{pxq} holomorphic, 1-periodic, avg u=0, |d_omega u|<=H on T_r
SOURCE_QUANTIFIERS: for all 0<delta<r, p,q, H; g resp. u as stated (outermost: standing data)
SOURCE_CONCLUSION: (a) unique u=Rg holomorphic 1-periodic on T_{r-delta}, avg u=0, d_omega u=g, |u|<=Gamma_delta H, real on reals if g is; (b) |u|<=Gamma_delta H on T_{r-delta}
CONSTANT_SCOPE: c_R depends only on (n,tau); kappa=tau+n; Gamma_delta depends on gamma, delta, n, tau only
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:cohomological; shared Lean provider. There: KIND corollary, contract bp:p2:cohomological v1. Cited as \Kref{bp:p2:cohomological}.

NODE: K:bp:p2:constants
KIND: external
TITLE: [K] Exponents and constants
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:constants@L78-L108
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: tau>=0, n>=1 (here n>=2, tau>=n-1); c(n,tau) the constant of the cohomological lemma; M,sigma_K,sigma_B,sigma_T>0; mu>0 and 0<rho_inf<rho for c_* and delta_0
SOURCE_QUANTIFIERS: for the data (n,tau,M,sigma_K,sigma_B,sigma_T) in order; then for mu>0 and 0<rho_inf<rho
SOURCE_CONCLUSION: defines kappa=tau+n, a=2kappa+2, c_R, m(frak), Theta=4n m^3, the constants C_X,C_T,C_Omega,C_sym,C_red,C_xi0,C_xiN,C_g,C_xi,C_DeltaK,C_lin,C_E,C_G,C_B,C_DeltaN,C_DeltaX,C_DeltaT,c_step,c_sum, and c_*, delta_0; the constants defined through L97 are >=1 (L99); c_* and delta_0 are defined subsequently, with delta_0=min{1,(rho-rho_inf)/8} in (0,1]
CONSTANT_SCOPE: kappa,a,c_R,m,Theta,C_* and c_step,c_sum depend only on (n,tau,M,sigma_K,sigma_B,sigma_T); c_* = c_*(n,tau,M,sigma_K,sigma_B,sigma_T,mu); delta_0 = delta_0(rho,rho_inf)
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:constants; shared Lean provider. There: KIND definition, contract bp:p2:constants v1. Cited as \Kref{bp:p2:constants}.

NODE: K:bp:p2:exactness
KIND: external
TITLE: [K] Exactness: two vanishing averages
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L515-L523
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:exactness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K holomorphic and primary on T_r with K(T_r) subset B(frak); for eta^N: det G != 0
SOURCE_QUANTIFIERS: for all r>0, K as stated
SOURCE_CONCLUSION: avg Omega_K=0 and avg(L^T Omega_0 E)=0, i.e. avg eta^N=0 when det G != 0
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:exactness; shared Lean provider. There: KIND lemma, contract bp:p2:exactness v1. Cited as \Kref{bp:p2:exactness}.

NODE: K:bp:p2:frame-basic
KIND: external
TITLE: [K] Regularity and bounds of the frame
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L382-L398
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:frame-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K holomorphic on T_r satisfying (A2)-(A4) (primary and real not needed); (c) (A6); (d) |omega|<=Theta, 0<delta<=1, delta<r
SOURCE_QUANTIFIERS: for all r>0, K, epsilon, delta as stated
SOURCE_CONCLUSION: (a) L,G,E,A,Omega_K,B,N,P,X_N,T,E_sym,Q,eta holomorphic on T_r, B symmetric, T continuous on R^n so avg T defined; (b) |L|<=m, |L^T|<=2n m, |B|<=m, |N|<=m^2, |N^T|<=2n m^2, |P|<=2m^2, |A|<=m on T_r; (c) |eta^L|<=2n m^2 epsilon, |eta^N|<=2n m epsilon on T_r; (d) |X_N|<=C_X/delta, |T|<=C_T/delta on T_{r-delta}
CONSTANT_SCOPE: m, C_X, C_T depend only on (n,tau,M,sigma_K,sigma_B,sigma_T)
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:frame-basic; shared Lean provider. There: KIND lemma, contract bp:p2:frame-basic v1. Cited as \Kref{bp:p2:frame-basic}.

NODE: K:bp:p2:frame-identities
KIND: external
TITLE: [K] Frame identities
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frame-identities@L441-L463
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:frame-identities
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K holomorphic on T_r, K(T_r) subset B(frak), det G != 0 on T_r
SOURCE_QUANTIFIERS: for all r>0, K as stated; identities on T_r
SOURCE_CONCLUSION: (a) L^T Omega_0 N=-I_n, N^T Omega_0 L=I_n, N^T Omega_0 N=B Omega_K B; (b) P^T Omega_0 P=Omega_0+E_sym, E_sym=diag(Omega_K, B Omega_K B); (c) d_omega L=AL-DE; (d) d_omega Omega_K=-(DE)^T Omega_0 L-L^T Omega_0 DE; (e) Q(AP-d_omega P)=Lambda+E_red with Lambda=[[0,T],[0,0]], E_red as stated; (f) QP=I_{2n}-Omega_0 E_sym and QE=-eta
CONSTANT_SCOPE: none (exact identities)
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:frame-identities; shared Lean provider. There: KIND lemma, contract bp:p2:frame-identities v1. Cited as \Kref{bp:p2:frame-identities}.

NODE: K:bp:p2:frequency
KIND: external
TITLE: [K] Frequency bound
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frequency@L357-L365
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:frequency
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K satisfies (A3),(A4),(A6) on T_r with epsilon<=1 and K(T_r) subset B(frak)
SOURCE_QUANTIFIERS: for all r>0, epsilon in [0,1], K as stated
SOURCE_CONCLUSION: gamma<=|omega|<=2n sigma_K sigma_B (M+epsilon)<=Theta
CONSTANT_SCOPE: gamma, omega from the standing data; Theta=4n m^3 depends only on (n,M,sigma_K,sigma_B,sigma_T)
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:frequency; shared Lean provider. There: KIND lemma, contract bp:p2:frequency v1. Cited as \Kref{bp:p2:frequency}.

NODE: K:bp:p2:frozen-agreement
KIND: external
TITLE: [K] Agreement with the frozen definitions
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:frozen-agreement@L295-L304
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:frozen-agreement
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: on the open strip T_r: the objects of bp:p2:objects; det G a unit where inverse is used; T continuous on R^n for avg T
SOURCE_QUANTIFIERS: for all r>0, K as in bp:p2:objects; frozen definitions in their stated arguments
SOURCE_CONCLUSION: the frozen gramMatrix, normalFrame, torsion, invarianceError coincide with G, N, T, E; the frozen matrix inverse is the true inverse where det is a unit; the frozen torsionAverage equals avg T at real points; each use of B,N,T is preceded by det G != 0 and each use of avg T by continuity of T on R^n
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:frozen-agreement; shared Lean provider. There: KIND claim, contract bp:p2:frozen-agreement v1. Cited as \Kref{bp:p2:frozen-agreement}.

NODE: K:bp:p2:hamiltonian
KIND: external
TITLE: [K] The Hamiltonian vector field
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:hamiltonian@L214-L230
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:hamiltonian
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing)
SOURCE_QUANTIFIERS: z in B(frak), k in Z^n, beta>0, w with |w|<beta and B_beta(z) subset B(frak); M from the standing data
SOURCE_CONCLUSION: (a) X_h holomorphic, DX_h and D^2X_h exist, |D(DX_h)|=|D^2X_h|<=M; (b) X_h and DX_h are invariant under z->z+(k,0); (c) X_h,DX_h real at real z; (d) Omega_0 X_h=(Dh)^T, Omega_0 DX_h symmetric, DX_h^T Omega_0+Omega_0 DX_h=0; (e) |DX_h(z+w)-DX_h(z)|<=M|w| and |X_h(z+w)-X_h(z)-DX_h(z)w|<=M|w|^2
CONSTANT_SCOPE: constants are M and the standing data only
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:hamiltonian; shared Lean provider. There: KIND lemma, contract bp:p2:hamiltonian v1. Cited as \Kref{bp:p2:hamiltonian}.

NODE: K:bp:p2:matrix
KIND: external
TITLE: [K] Matrix norms
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:matrix@L122-L139
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:matrix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: standard matrix and vector norms (max norm on vectors, |M|=max_i sum_j |M_ij|, operator norm on bilinear/matrix maps); Omega_0 the canonical 2n x 2n matrix
SOURCE_QUANTIFIERS: for all p,q and all p x q complex matrices M, M_1, M_2, M_ij, vectors v; block matrices conformal; matrices U_1,U_2 with n rows
SOURCE_CONCLUSION: (a) max|M_ij|<=|M|=sup_{|v|<=1}|Mv| and |M^T|<=p|M|; (b) |M_1M_2|<=|M_1||M_2|, |Mv|<=|M||v|; (c) block bounds and |diag(M_1,M_2)|=max{|M_1|,|M_2|}; (d) Omega_0^T=-Omega_0=Omega_0^{-1}, Omega_0^2=-I, Omega_0^T Omega_0=I, |Omega_0|=1, Omega_0(U_1;U_2)=(-U_2;U_1)
CONSTANT_SCOPE: none (constants are absolute, no parameters)
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:matrix; shared Lean provider. There: KIND corollary, contract bp:p2:matrix v1. Cited as \Kref{bp:p2:matrix}.

NODE: K:bp:p2:objects
KIND: external
TITLE: [K] Objects attached to a parameterization
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L270-L293
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:objects
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0; K:C^n->C^n x C^n holomorphic on T_r with K(T_r) subset B(frak) (data of the standing package); for the second group det G != 0 on T_r; for avg T, T continuous on R^n
SOURCE_QUANTIFIERS: for all r>0, K, theta in T_r; the standing data fixed outermost
SOURCE_CONCLUSION: defines L=DK, G=L^T L, E=X_h o K - L omega, A=DX_h o K, Omega_K=L^T Omega_0 L; and where det G != 0: B=G^{-1}, N=Omega_0 L B, P=(L N), X_N=AN-d_omega N, T=N^T Omega_0 X_N, E_sym=P^T Omega_0 P-Omega_0, Q=-Omega_0 P^T Omega_0, eta=Omega_0 P^T Omega_0 E=(eta^L;eta^N)=(-N^T Omega_0 E; L^T Omega_0 E); avg T=int_{[0,1]^n} T
CONSTANT_SCOPE: none (definitions; depend on K, h, omega only)
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:objects; shared Lean provider. There: KIND definition, contract bp:p2:objects v1. Cited as \Kref{bp:p2:objects}.

NODE: K:bp:p2:periodicity
KIND: external
TITLE: [K] Periodicity and realness of the attached objects
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:periodicity@L324-L333
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:periodicity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing); K holomorphic and primary on T_r with K(T_r) subset B(frak); for B,N,P,X_N,T,E_sym,eta: det G != 0 on T_r; for realness: K real on reals
SOURCE_QUANTIFIERS: for all r>0, K as stated
SOURCE_CONCLUSION: L,G,E,A,Omega_K,h o K, K^I and f_j=(K^I)^T d_{theta_j}K^theta (j=1..n) are 1-periodic on T_r; if det G != 0 then B,N,P,X_N,T,E_sym,eta are 1-periodic; if also K real on reals, all these objects and avg T are real at real points
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:periodicity; shared Lean provider. There: KIND lemma, contract bp:p2:periodicity v1. Cited as \Kref{bp:p2:periodicity}.

NODE: K:bp:p2:standing
KIND: external
TITLE: [K] Standing data of Part~\ref{bp:p2}
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#bp:p2:standing@L56-L65
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p2:standing
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: none (this is the package of typing data)
SOURCE_QUANTIFIERS: fixed once for all of Part 2 (outermost): n>=2, tau>=n-1, M,sigma_K,sigma_B,sigma_T>0, B(frak) open in C^n x C^n invariant under (theta,I)->(theta+k,I), h, gamma>0, omega
SOURCE_CONCLUSION: defines the standing data: h holomorphic on B(frak), 1-periodic in theta, real at real points; |X_h|,|DX_h|,|D^2X_h| <= M on B(frak) (bilinear operator norm for D^2X_h); gamma>0 and omega in Dio_{gamma,tau}
CONSTANT_SCOPE: M, sigma_K, sigma_B, sigma_T, n, tau, gamma, omega, h, B(frak) are fixed for all of Part 2; nothing depends on later quantities
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p2:standing; shared Lean provider. There: KIND definition, contract bp:p2:standing v1. Cited as \Kref{bp:p2:standing}.

NODE: K:bp:p4:data
KIND: external
TITLE: [K] Shrunken domains and basic constants
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:data@L138-L163
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p4:data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=2, tau>n-1, s0,r0>0; B open bounded nonempty; h holomorphic on B_{r0} and real at real points; fixed witnesses L_h of the inverse frequency inequality on closure B and C_B of the boundary-layer inequality; f and epsilon as in HEAD
SOURCE_QUANTIFIERS: L_h, C_B, s0, r0, B, h fixed; then s, delta_*, mu, D, D' defined; c(m,j) from Cauchy-open
SOURCE_CONCLUSION: defines L_+=max(L_h,1), C_B^+, s=min(s0,1), delta_*=min(s,r0)/4, mu=delta_*/2, D=T_{s/2} x B_{r0/2}, D'=T_{3s/4} x B_{3r0/4}, cbar=max{1,c(n,j),c(2n,j)}, and the unperturbed torus K^0_{I*}(theta)=(theta,iota I*); hbold(theta,I)=h(I)+f(theta,I) on D(s0,r0), realHamiltonian h f=Re hbold at real points
CONSTANT_SCOPE: all constants depend only on n,tau,s0,r0,B,h,L_h,C_B
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p4:data; shared Lean provider. There: KIND definition, contract bp:p4:data v1. Cited as \Kref{bp:p4:data}.

NODE: K:bp:p4:derivative-bounds
KIND: external
TITLE: [K] Derivative bounds
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:derivative-bounds@L183-L195
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p4:derivative-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of HEAD; shrunken domains of Definition data; (d) additionally eps<=1
SOURCE_QUANTIFIERS: H_j=cbar M_h delta_*^{-j}, F_j=cbar delta_*^{-j} (j=1,2,3), M=cbar(M_h+1)delta_*^{-3}; z, I points
SOURCE_CONCLUSION: (a) polydiscs of radius delta_* around D lie in D' and around B_{r0/2} in B_{3r0/4}; (b) |D^j h|<=H_j on B_{r0/2}; (c) |D^j f|<=F_j eps on D, |X_f|<=F_1 eps, |DX_f|<=F_2 eps; (d) if eps<=1, |Dh~|,|X_h~|,|DX_h~|,|D^2 X_h~|<=M on D
CONSTANT_SCOPE: H_j,F_j,M depend only on the data
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p4:derivative-bounds; shared Lean provider. There: KIND lemma, contract bp:p4:derivative-bounds v1. Cited as \Kref{bp:p4:derivative-bounds}.

NODE: K:bp:p4:freq-map
KIND: external
TITLE: [K] The frequency map
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:freq-map@L225-L237
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p4:freq-map
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: fixed HEAD data of Section sec-data; U={I real : iota I in B_{r0}}, g=frequencyMap h; H_1,H_2 are defined constants, not assumed derivative estimates
SOURCE_QUANTIFIERS: fixed HEAD data; U={I in R^n : iota I in B_{r0}}, g=frequencyMap h; (ii),(iii) for every I in U; (iv) for every real I with iota I in B_{r0/2}; (v) for every pair I,J in B
SOURCE_CONCLUSION: (i) U open and closure B subset U; (ii) for I in U, all partial_i h(iota I) are real and g(I)=(partial_i h(iota I))_i; (iii) g differentiable on U with Dg(I) the real symmetric Hessian there; (iv) for iota I in B_{r0/2}, |g(I)|<=H_1 and |Hessian h(iota I)|<=H_2; (v) g is Lambda_g-Lipschitz on B, Lambda_g=max(H_2,2H_1/delta_*), and |omega|<=W_inf=H_1 for omega in g(B)
CONSTANT_SCOPE: Lambda_g, W_inf depend only on the data
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p4:freq-map; shared Lean provider. There: KIND lemma, contract bp:p4:freq-map v1. Cited as \Kref{bp:p4:freq-map}.

NODE: K:bp:p4:h-bounded
KIND: external
TITLE: [K] $h$ is bounded on a shrunken neighbourhood
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:h-bounded@L168-L170
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p4:h-bounded
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the data of HEAD
SOURCE_QUANTIFIERS: M_h
SOURCE_CONCLUSION: M_h:=sup{|h(I)| : I in B_{3r0/4}} is finite
CONSTANT_SCOPE: M_h depends only on the data
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p4:h-bounded; shared Lean provider. There: KIND lemma, contract bp:p4:h-bounded v1. Cited as \Kref{bp:p4:h-bounded}.

NODE: K:bp:p4:h1
KIND: external
TITLE: [K] The Hamiltonian hypothesis H1
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:h1@L309-L313
PROOF_SOURCE: -
CONTRACT_ID: K:bp:p4:h1
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: eps<=1; the data of HEAD; D and h~=h+f
SOURCE_QUANTIFIERS: (D,h~)
SOURCE_CONCLUSION: D and h~ satisfy the H1 block of G1 and G2 (D open, Z^n-invariant in theta; h~ holomorphic, periodic, real; four derivative bounds by M) with M of derivative-bounds
CONSTANT_SCOPE: M depends only on the data
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
NOTE: IMPORTED: proved in the track-K graph, node bp:p4:h1; shared Lean provider. There: KIND lemma, contract bp:p4:h1 v1. Cited as \Kref{bp:p4:h1}.

NODE: K:step:p2:fb-holo
KIND: external
TITLE: [K] Holomorphy
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L401-L406
PROOF_SOURCE: -
CONTRACT_ID: K:step:p2:fb-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the local standing data of Part 2 (bp:p2:standing, L56-L65); K holomorphic on T_r with (A2)-(A4), as stated in frame-basic at L383-L384; primary and real are not required
SOURCE_QUANTIFIERS: standing data fixed first; theta in T_r
SOURCE_CONCLUSION: all listed objects holomorphic on T_r; B symmetric; T continuous on R^n
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
NOTE: IMPORTED: proved in the track-K graph, node step:p2:fb-holo; shared Lean provider. There: KIND step, contract step:p2:fb-holo v1. Cited as \Kref{step:p2:fb-holo}.

NODE: K:step:p2:geo-domegak
KIND: external
TITLE: [K] Bound on $\partial_\omega\Omega_K$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-domegak@L571-L574
PROOF_SOURCE: -
CONTRACT_ID: K:step:p2:geo-domegak
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (d) and (b) of frame lemmas; bounds on DE, (DE)^T
SOURCE_QUANTIFIERS: theta in T_{r-delta}
SOURCE_CONCLUSION: |d_omega Omega_K|<=2n(n+1) m epsilon/delta
CONSTANT_SCOPE: m
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
NOTE: IMPORTED: proved in the track-K graph, node step:p2:geo-domegak; shared Lean provider. There: KIND step, contract step:p2:geo-domegak v1. Cited as \Kref{step:p2:geo-domegak}.

NODE: K:step:p2:geo-ered
KIND: external
TITLE: [K] Bound on $E_{\mathrm{red}}$
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:geo-ered@L576-L580
PROOF_SOURCE: -
CONTRACT_ID: K:step:p2:geo-ered
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (e) of frame identities; bounds on DE, N, L
SOURCE_QUANTIFIERS: theta in T_{r-delta}
SOURCE_CONCLUSION: |E_red|<=C_red epsilon/delta
CONSTANT_SCOPE: C_red=2n(n+1)m^2
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
NOTE: IMPORTED: proved in the track-K graph, node step:p2:geo-ered; shared Lean provider. There: KIND step, contract step:p2:geo-ered v1. Cited as \Kref{step:p2:geo-ered}.

NODE: K:step:p2:ham-real
KIND: external
TITLE: [K] Realness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:ham-real@L243-L246
PROOF_SOURCE: -
CONTRACT_ID: K:step:p2:ham-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the standing data of Part 2 (bp:p2:standing): h real at real points of B(frak)
SOURCE_QUANTIFIERS: real z in B(frak)
SOURCE_CONCLUSION: Dh, X_h and DX_h are real at real points
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
NOTE: IMPORTED: proved in the track-K graph, node step:p2:ham-real; shared Lean provider. There: KIND step, contract step:p2:ham-real v1. Cited as \Kref{step:p2:ham-real}.

NODE: K:step:p2:pt-small
KIND: external
TITLE: [K] Consequences of the smallness
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:pt-small@L823-L832
PROOF_SOURCE: -
CONTRACT_ID: K:step:p2:pt-small
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: d<β, 2𝔪C_ΔTd/δ²≤1, δ≤1; definitions of the constants
SOURCE_QUANTIFIERS: as in the lemma
SOURCE_CONCLUSION: C_ΔT≥max{n,C_G,C_ΔN}; nd/δ≤1/(2𝔪)≤𝔪, 𝔪C_Gd/δ≤1/2, C_ΔNd/δ≤1/(2𝔪)≤𝔪², 𝔪C_ΔTd/δ²≤1/2
CONSTANT_SCOPE: constants of bp:p2:constants
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
NOTE: IMPORTED: proved in the track-K graph, node step:p2:pt-small; shared Lean provider. There: KIND step, contract step:p2:pt-small v1. Cited as \Kref{step:p2:pt-small}.

NODE: K:step:p4:db-cauchy
KIND: external
TITLE: [K] Cauchy estimates
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:db-cauchy@L204-L208
PROOF_SOURCE: -
CONTRACT_ID: K:step:p4:db-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (a); |h|<=M_h on B_{3r0/4} (h-bounded); |f|<=eps on D'
SOURCE_QUANTIFIERS: j=1,2,3
SOURCE_CONCLUSION: (b), (c) for D^j f, and |D^j h~|<=cbar(M_h+eps)delta_*^{-j} on D
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
NOTE: IMPORTED: proved in the track-K graph, node step:p4:db-cauchy; shared Lean provider. There: KIND step, contract step:p4:db-cauchy v1. Cited as \Kref{step:p4:db-cauchy}.

NODE: K:step:p4:h1-holo
KIND: external
TITLE: [K] Holomorphy, periodicity, reality
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-holo@L321-L327
PROOF_SOURCE: -
CONTRACT_ID: K:step:p4:h1-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: h holomorphic on B_{r0}, real at real points; f holomorphic, 1-periodic, real on D(s0,r0)
SOURCE_QUANTIFIERS: z in D, k in Z^n
SOURCE_CONCLUSION: h~ holomorphic on D, periodic in theta, real at real points of D
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
NOTE: IMPORTED: proved in the track-K graph, node step:p4:h1-holo; shared Lean provider. There: KIND step, contract step:p4:h1-holo v1. Cited as \Kref{step:p4:h1-holo}.

NODE: K:step:p4:h1-open
KIND: external
TITLE: [K] Openness and invariance
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#step:p4:h1-open@L316-L319
PROOF_SOURCE: -
CONTRACT_ID: K:step:p4:h1-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: D=T_{s/2} x B_{r0/2}
SOURCE_QUANTIFIERS: k in Z^n
SOURCE_CONCLUSION: D open and Z^n-invariant in theta
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
NOTE: IMPORTED: proved in the track-K graph, node step:p4:h1-open; shared Lean provider. There: KIND step, contract step:p4:h1-open v1. Cited as \Kref{step:p4:h1-open}.

NODE: N:bpN:p3:gen-continuation-periodic
KIND: external
TITLE: [N] Closed sets, periodic fields
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-continuation-periodic@L297-L299
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-continuation-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E = R^n x R^n; U subset R^n open; W = R^n x U; F C^1 on W with F(theta+k,I) = F(theta,I) for k in Z^n; z the maximal solution through x0 in W (Theorem bpN:p3:gen-maximal), maximal interval (T_-,T_+); z(t)_2 in K for t in [t_*,T_+) (some t_* in [0,T_+)) with K subset U compact
SOURCE_QUANTIFIERS: n, U, F, x0, K, t_* fixed
SOURCE_CONCLUSION: T_+ = +infinity; likewise on the left (T_- = -infinity when z(t)_2 stays in a compact subset of U on (T_-,t_*]); the angle components z(t)_1 may be unbounded
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
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-continuation-periodic; shared Lean provider. Cited as \Nref{bpN:p3:gen-continuation-periodic}.

NODE: N:bpN:p3:gen-maximal
KIND: external
TITLE: [N] Maximal solution
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-maximal@L251-L258
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-maximal
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E a finite-dimensional real normed space; F C^1 on the open set W; x0 in W
SOURCE_QUANTIFIERS: F, W, x0 fixed; there exist T_- in [-infinity,0), T_+ in (0,+infinity] and z : R -> E
SOURCE_CONCLUSION: z(0) = x0, IsSolIn F W (T_-,T_+) z, and every solution y with y(0) = x0 on an interval J containing 0 satisfies J subset (T_-,T_+) and y = z on J; the maximal interval and the maximal solution are unique
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
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-maximal; shared Lean provider. Cited as \Nref{bpN:p3:gen-maximal}.

NODE: N:bpN:p3:gen-sol
KIND: external
TITLE: [N] Solutions in $W$
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-sol@L88-L93
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-sol
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F : E -> E (total); W subset E; J subset R; z : R -> E (typing data)
SOURCE_QUANTIFIERS: F, W, J, z
SOURCE_CONCLUSION: defines IsSolIn F W J z: for every t in J, z(t) in W and z has the two-sided derivative F(z(t)) at t (HasDerivAt); not a frozen declaration
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
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-sol; shared Lean provider. Cited as \Nref{bpN:p3:gen-sol}.

NODE: N:bpN:p3:gen-uniqueness
KIND: external
TITLE: [N] Uniqueness on arbitrary intervals
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-uniqueness@L217-L224
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-uniqueness
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: E a finite-dimensional real normed space; F C^1 on the open set W; J subset R an interval of any kind (open, closed, half-open, unbounded or a point); t0 in J; y1, y2 : R -> E with IsSolIn F W J y_i (i = 1, 2) and y1(t0) = y2(t0)
SOURCE_QUANTIFIERS: F, W, J, t0, y1, y2 fixed
SOURCE_CONCLUSION: y1 = y2 on J (no confinement, boundedness or smallness of either solution assumed); in particular solutions on intervals J1, J2 that agree at one point of J1 cap J2 agree on J1 cap J2
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
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-uniqueness; shared Lean provider. Cited as \Nref{bpN:p3:gen-uniqueness}.

NODE: N:bpN:p3:ham-energy
KIND: external
TITLE: [N] Energy conservation
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-energy@L388-L393
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:ham-energy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H : P -> R with P = R^n x R^n; J subset R an interval; z : R -> P; for every t in J, H is differentiable at z(t) and z has derivative X_H(z(t)) at t
SOURCE_QUANTIFIERS: H, J, z fixed
SOURCE_CONCLUSION: t -> H(z(t)) is constant on J (no regularity of H beyond the pointwise differentiability, no confinement)
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
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:ham-energy; shared Lean provider. Cited as \Nref{bpN:p3:ham-energy}.

NODE: N:bpN:p3:ham-periodic
KIND: external
TITLE: [N] Periodicity in the angles passes to solutions
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-periodic@L402-L407
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:ham-periodic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: W subset P open with W + (k,0) = W for all k in Z^n; H : P -> R with H(theta+k,I) = H(theta,I) for (theta,I) in W, k in Z^n
SOURCE_QUANTIFIERS: W, H fixed; for every k in Z^n, every J subset R and every z : R -> P
SOURCE_CONCLUSION: X_H(theta+k,I) = X_H(theta,I) on W; if IsSolIn X_H W J z then IsSolIn X_H W J (z + (k,0)) and H o (z + (k,0)) = H o z
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
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:ham-periodic; shared Lean provider. Cited as \Nref{bpN:p3:ham-periodic}.

NODE: N:bpN:p3:ham-reduction
KIND: external
TITLE: [N] Track N and track I Hamiltonian predicates
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:ham-reduction@L416-L427
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:ham-reduction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: H : P -> R; U subset R^n open; W subset P open with R^n x U subset W; H C^2 on W; W_U := R^n x U
SOURCE_QUANTIFIERS: H, U, W fixed; for every J subset R and every z : R -> P
SOURCE_CONCLUSION: IsSolutionOn H U J z <-> IsSolIn X_H W_U J z <-> IsHamiltonianSolutionOn H U J z (the frozen KAM.Nekhoroshev.IsSolutionOn and KAM.Iso.IsHamiltonianSolutionOn); X_H is C^1 on W_U
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
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:ham-reduction; shared Lean provider. Cited as \Nref{bpN:p3:ham-reduction}.

NODE: N:bpN:p3:gen-exit
KIND: external
TITLE: [N] First exit
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-exit@L328-L341
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-exit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolIn F W J z with J an interval, 0 in J; V subset E open; z(0) in V; A = {t in J : t >= 0, z(t) not in V}
SOURCE_QUANTIFIERS: F, W, J, z, V fixed
SOURCE_CONCLUSION: exactly one holds: (i) A empty and z(t) in V for all t in J, t >= 0; (ii) A nonempty, t* = min A exists, t* > 0, t* in J, z(t) in V on [0,t*), z(t*) in boundary of V = closure(V) minus V; t* equals sup{t in J : t >= 0, z([0,t]) subset V}; the same holds backwards in time
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
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-exit; shared Lean provider. Cited as \Nref{bpN:p3:gen-exit}.

NODE: N:bpN:p3:gen-symmetry
KIND: external
TITLE: [N] Symmetries
STATEMENT_SOURCE: blueprint-N/parts/p3-hamiltonian-ode.tex#bpN:p3:gen-symmetry@L101-L110
PROOF_SOURCE: -
CONTRACT_ID: N:bpN:p3:gen-symmetry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: IsSolIn F W J z; for (b) -F is C^1 on W if F is; for (c) v in E with W+v=W and F(x+v)=F(x) on W
SOURCE_QUANTIFIERS: F, W, J, z, c, v
SOURCE_CONCLUSION: (a) t -> z(t+c) is a solution on J-c; (b) t -> z(-t) is a solution of -F on -J, and -F is C^1 on W if F is; (c) t -> z(t)+v is a solution of F in W on J
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
NOTE: IMPORTED: proved in the track-N graph, node bpN:p3:gen-symmetry; shared Lean provider. Cited as \Nref{bpN:p3:gen-symmetry}.

NODE: P:bpP:p0:fixedsol#IsFixedSolution
KIND: external
TITLE: [P] Fixed-Sun solutions: KAM.Planetary.IsFixedSolution
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:fixedsol@L235-L242
PROOF_SOURCE: -
CONTRACT_ID: P:bpP:p0:fixedsol#IsFixedSolution
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing data: n in N, G, m_0, epsilon in R, m in R^n, Q, V : R -> (R^2)^n
SOURCE_QUANTIFIERS: G, m_0, m, epsilon, Q, V
SOURCE_CONCLUSION: defines IsFixedSol(G,m_0,m,epsilon,Q,V): for all t and i != j: pl(Q_i(t)) > 0, pl(Q_j(t) - Q_i(t)) > 0, Q_i has derivative V_i(t), and V_i has derivative -G m_0 Q_i(t) / pl(Q_i(t))^3 + epsilon sum_{j != i} G m_j (Q_j(t) - Q_i(t)) / pl(Q_j(t) - Q_i(t))^3; the Sun is the constant origin
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
NOTE: IMPORTED (pending P graph): frozen definition KAM.Planetary.IsFixedSolution, anchor node bpP:p0:fixedsol#IsFixedSolution of the track-P graph; not an anchor of this graph. Cited as \frozen{KAM.Planetary.IsFixedSolution}.

NODE: P:bpP:p0:newton#IsNewtonSolution
KIND: external
TITLE: [P] Newton solutions: KAM.Planetary.IsNewtonSolution
STATEMENT_SOURCE: blueprint-P/parts/p0-conventions.tex#bpP:p0:newton@L226-L233
PROOF_SOURCE: -
CONTRACT_ID: P:bpP:p0:newton#IsNewtonSolution
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: typing data: N in N, G in R, M in R^N, Q, V : R -> (R^2)^N
SOURCE_QUANTIFIERS: G, M, Q, V
SOURCE_CONCLUSION: defines IsNewton(G,M,Q,V): for all t in R and i != j (indices < N): pl(Q_j(t) - Q_i(t)) > 0; Q_i has derivative V_i(t) at t; V_i has derivative sum_{j != i} G M_j (Q_j(t) - Q_i(t)) / pl(Q_j(t) - Q_i(t))^3 at t (HasDerivAt)
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
NOTE: IMPORTED (pending P graph): frozen definition KAM.Planetary.IsNewtonSolution, anchor node bpP:p0:newton#IsNewtonSolution of the track-P graph; not an anchor of this graph. Cited as \frozen{KAM.Planetary.IsNewtonSolution}.
