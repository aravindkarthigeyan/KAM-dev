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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
SOURCE_CONCLUSION: defines kappa=tau+n, a=2kappa+2, c_R, m(frak), Theta=4n m^3, the constants C_X,C_T,C_Omega,C_sym,C_red,C_xi0,C_xiN,C_g,C_xi,C_DeltaK,C_lin,C_E,C_G,C_B,C_DeltaN,C_DeltaX,C_DeltaT,c_step,c_sum, and c_*, delta_0; the constants defined through L97 are >=1 (L99); c_* and delta_0 are defined subsequently, with delta_0=min{1,(rho-rho_inf)/8} in (0,1]
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r2
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p2-aposteriori.tex#bp:p2:averages@L163-L163 | T_r in (b)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r2
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
SOURCE_HYPOTHESES: v holomorphic and 1-periodic on T_r, r>0; values scalar, vector or matrix (no additional C^1 premise)
SOURCE_QUANTIFIERS: for all such v and l
SOURCE_CONCLUSION: avg(d_{theta_l} v)=0 and avg(d_omega v)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: step:p2:avg-deriv#real-route, step:p2:avg-deriv#bounded-route
ROUTE_FOR: -
EDGE: step:p2:avg-deriv#real-route | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L176-L178 | direct restriction to the real torus
EDGE: step:p2:avg-deriv#bounded-route | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv@L178-L179 | explicit parenthetical alternative on T_{r/2}
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: The two proofs at L176-L179 are alternatives, not a conjunction. The C^1 property in the first route is derived from holomorphy.

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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
SOURCE_HYPOTHESES: the local standing data of Part 2 (bp:p2:standing, L56-L65); u:T_r->C^{pxq} holomorphic 1-periodic, avg u=0, |d_omega u|<=H on T_r
SOURCE_QUANTIFIERS: standing data fixed first; for all such u; 0<delta<r
SOURCE_CONCLUSION: |u|<=Gamma_delta H on T_{r-delta}
CONSTANT_SCOPE: c(n,tau)<=c_R
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:averages, bp:p1:cohomological-operator, bp:p2:constants, bp:p1:holomorphic-regularity, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L209-L209 | avg d_omega u=0
EDGE: bp:p1:cohomological-operator | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L210-L210 | a-priori bound for periodic solutions of Du omega=g
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L211-L211 | c(n,tau)<=c_R, Gamma_delta
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L208-L208 | g=d_omega u is holomorphic since derivatives of holomorphic maps are holomorphic
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:coh-apriori@L208-L211 | the local package supplies gamma>0 and Diophantine omega with tau>=n-1>=0 for the cohomological application
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p2-aposteriori.tex#bp:p2:objects@L276-L276 | Omega_0
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r2
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
SOURCE_HYPOTHESES: the standing data of Part 2; K holomorphic and primary on T_r with K(T_r) subset B(frak); DK and K^I periodic by step:p2:per-dk; det G!=0 on T_r for expressions involving B,N,P,X_N,T,E_sym,eta
SOURCE_QUANTIFIERS: k in Z^n, theta in T_r
SOURCE_CONCLUSION: X_h o K, DX_h o K, h o K and the listed composed objects are periodic; inverse-dependent objects in the second list are asserted periodic only when det G!=0, as in the enclosing lemma
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r2
REVIEWER: sol-review-r4
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
SOURCE_HYPOTHESES: the standing data of Part 2; K holomorphic and primary on T_r, K(T_r) subset B(frak), K real on reals; det G!=0 on T_r for the inverse-dependent second group and avg T
SOURCE_QUANTIFIERS: real x
SOURCE_CONCLUSION: all listed objects are real at real points and avg T is real
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p1:real-inverse, bp:p2:averages, bp:p0:stripdata#IsRealOnReals, bp:p2:objects, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L350-L350 | X_h, DX_h real at real points
EDGE: bp:p1:real-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L352-L352 | inverse of real invertible matrix is real
EDGE: bp:p2:averages | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L354-L354 | avg of real function is real
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L349-L349 | K real on reals
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L353-L353 | definitions of the objects
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:per-real@L350-L354 | the local package supplies h real at real points and real omega used by the reality argument
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
DEPS: step:p2:fb-holo, step:p2:fb-bounds, step:p2:fb-eta, step:p2:fb-torsion, bp:p2:admissible, bp:p2:objects, bp:p2:constants, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:fb-holo | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L401-L401 | proof step (a)
EDGE: step:p2:fb-bounds | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L408-L408 | proof step (b)
EDGE: step:p2:fb-eta | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L414-L414 | proof step (c)
EDGE: step:p2:fb-torsion | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L418-L418 | proof step (d)
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L383-L383 | (A2)-(A4)
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L386-L386 | the objects
EDGE: bp:p2:constants | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L388-L388 | m, Theta, C_X, C_T
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:frame-basic@L383-L384 | local Part 2 package is assumed by this result; h, omega and the ambient domain retain the enclosing standing data
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r2
REVIEWER: sol-review-r4
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
SOURCE_HYPOTHESES: the local standing data of Part 2 (bp:p2:standing, L56-L65); K holomorphic on T_r with (A2),(A4)
SOURCE_QUANTIFIERS: standing data fixed first; theta in T_r
SOURCE_CONCLUSION: all listed objects holomorphic on T_r; B symmetric; T continuous on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p2:hamiltonian, bp:p2:admissible, bp:p1:holomorphic-inverse, bp:p2:objects, bp:p1:holomorphic-regularity, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p2:hamiltonian | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L402-L402 | X_h, DX_h holomorphic on B(frak)
EDGE: bp:p2:admissible | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L403-L403 | (A4): det G != 0
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L404-L404 | inverse of a holomorphic invertible matrix is holomorphic
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L404-L404 | definitions of N,P,X_N,T,E_sym,Q,eta
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L402-L405 | DK and d_omega N are holomorphic derivatives; K is holomorphic by hypothesis
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#step:p2:fb-holo@L402-L405 | the local package supplies the open ambient domain and holomorphic h for the Hamiltonian regularity application
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
DEPS: step:p2:ex-curl, step:p2:ex-avg-omega, step:p2:ex-gradient, step:p2:ex-avg-eta, bp:p0:stripdata#IsPrimaryOnStrip, bp:p2:objects, bp:p2:standing
ROUTES: -
ROUTE_FOR: -
EDGE: step:p2:ex-curl | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L526-L526 | proof step
EDGE: step:p2:ex-avg-omega | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L534-L534 | proof step
EDGE: step:p2:ex-gradient | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L538-L538 | proof step
EDGE: step:p2:ex-avg-eta | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L543-L543 | proof step
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L516-L516 | primary K
EDGE: bp:p2:objects | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L518-L518 | Omega_K, eta^N
EDGE: bp:p2:standing | blueprint/parts/p2-aposteriori.tex#bp:p2:exactness@L516-L516 | local Part 2 package is assumed by this result; h, omega and the ambient domain retain the enclosing standing data
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r2
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
SOURCE_CONCLUSION: avg(L^T Omega_0 E)=0; when det G!=0 on T_r, eta^N is defined by bp:p2:objects and eta^N=L^T Omega_0 E, hence avg eta^N=0
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a+sol-review-r2
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p2a
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:avg-deriv#real-route
KIND: route
TITLE: Derivatives of the restriction to the real torus
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#real-route@L176-L178
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#real-route@L176-L178
CONTRACT_ID: step:p2:avg-deriv#real-route
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v holomorphic and 1-periodic on T_r; r>0
SOURCE_QUANTIFIERS: each component and every ell, omega
SOURCE_CONCLUSION: avg(d_ell v)=0 and avg(d_omega v)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:averages-real
ROUTES: -
ROUTE_FOR: step:p2:avg-deriv
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#real-route@L176-L177 | the real restriction has continuous first derivatives obtained by real difference quotients
EDGE: bp:p1:averages-real | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#real-route@L178-L178 | apply to the periodic C^1 restriction entrywise
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: new+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p2:avg-deriv#bounded-route
KIND: route
TITLE: Alternative through a bounded smaller strip
STATEMENT_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#bounded-route@L178-L179
PROOF_SOURCE: blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#bounded-route@L178-L179
CONTRACT_ID: step:p2:avg-deriv#bounded-route
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v holomorphic and 1-periodic on T_r; r>0
SOURCE_QUANTIFIERS: each component and every ell, omega
SOURCE_CONCLUSION: avg(d_ell v)=0 and avg(d_omega v)=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:periodic-bounded, bp:p1:averages
ROUTES: -
ROUTE_FOR: step:p2:avg-deriv
EDGE: bp:p1:periodic-bounded | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#bounded-route@L178-L179 | v is bounded on T_{r/2} since 0<r/2<r
EDGE: bp:p1:averages | blueprint/parts/p2-aposteriori.tex#step:p2:avg-deriv#bounded-route@L179-L179 | apply to the holomorphic bounded periodic restriction on T_{r/2}, which contains R^n
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: new+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
