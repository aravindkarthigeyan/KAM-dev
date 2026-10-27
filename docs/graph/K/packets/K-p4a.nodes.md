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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
DEPS: step:p4:slab-coordinate
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:slab-coordinate | blueprint/parts/p4-measure.tex#step:p4:slab-fubini@L101-L101 | dominant coordinate bound
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: SOURCE_GAP: L96-L101 uses Fubini for the indicator of the slab intersected with a cube. E6 only explicitly provides Fubini for continuous functions on compact boxes; E8 does not provide measurable-set Fubini. The blueprint supplies no extension or slab-cover argument. Keep this as a source obligation, not a new external leaf.

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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
EDGE: step:p4:g3-cube | blueprint/parts/p4-measure.tex#step:p4:g3-union@L115-L120 | Bounding cube is consumed in the union inclusion; L110 is the prerequisite construction, outside this step
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:data
KIND: definition
TITLE: Shrunken domains and basic constants
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:data@L138-L163
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=2, tau>n-1, s0,r0>0; B open bounded nonempty; h holomorphic on B_{r0} and real at real points; fixed witnesses L_h of the inverse frequency inequality on closure B and C_B of the boundary-layer inequality; f and epsilon as in HEAD
SOURCE_QUANTIFIERS: L_h, C_B, s0, r0, B, h fixed; then s, delta_*, mu, D, D' defined; c(m,j) from Cauchy-open
SOURCE_CONCLUSION: defines L_+=max(L_h,1), C_B^+, s=min(s0,1), delta_*=min(s,r0)/4, mu=delta_*/2, D=T_{s/2} x B_{r0/2}, D'=T_{3s/4} x B_{3r0/4}, cbar=max{1,c(n,j),c(2n,j)}, and the unperturbed torus K^0_{I*}(theta)=(theta,iota I*); hbold(theta,I)=h(I)+f(theta,I) on D(s0,r0), realHamiltonian h f=Re hbold at real points
CONSTANT_SCOPE: all constants depend only on n,tau,s0,r0,B,h,L_h,C_B
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-open, bp:p0:nearlyintegrable#realHamiltonian, bp:p0:domains#complexStrip, bp:p0:domains#actionNbhd
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-open | blueprint/parts/p4-measure.tex#bp:p4:data@L160-L160 | cbar uses the constants c(m,j) of Cauchy-open
EDGE: bp:p0:nearlyintegrable#realHamiltonian | blueprint/parts/p4-measure.tex#bp:p4:data@L151-L152 | the expanded source range explicitly identifies the frozen real Hamiltonian
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p4-measure.tex#bp:p4:data@L157-L158 | the shrunken phase domains use the complex strips
EDGE: bp:p0:domains#actionNbhd | blueprint/parts/p4-measure.tex#bp:p4:data@L158-L158 | B_{r0/2} and B_{3r0/4} are the action neighbourhoods
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r2
REVIEWER: sol-review-d2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
SOURCE_HYPOTHESES: the fixed HEAD data and perturbation hypotheses of Part 4 L138-L152, with domains and constants defined in bp:p4:data and derivative-bounds L184-L185; for the general identity phi is holomorphic on an open subset of C^n x C^n; additionally epsilon<=1 only for specialization (d) with phi=hbold
SOURCE_QUANTIFIERS: the general holomorphic phi; specialize to phi=f for (c), and to phi=hbold with epsilon<=1 for (d)
SOURCE_CONCLUSION: X_phi=J D phi with |X_phi|<=|D phi|, |DX_phi|<=|D^2 phi|, |D^2 X_phi|<=|D^3 phi|; completes (c) and gives (d)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#hamiltonianVectorFieldC, step:p4:db-cauchy, bp:p1:hamiltonian-real, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:hamiltonian#hamiltonianVectorFieldC | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L211-L215 | the frozen complex vector-field formula identifies X_phi with the continuous linear map J applied to D phi
EDGE: step:p4:db-cauchy | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L219-L219 | Cauchy bounds on D^j f and D^j h~
EDGE: bp:p1:hamiltonian-real | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L211-L218 | Missing direct use of the vector-field formula cited at L213
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:db-vectorfield@L216-L218 | Missing direct use establishing holomorphy of derivatives
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-d2
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
SOURCE_HYPOTHESES: fixed HEAD data of Section sec-data; U={I real : iota I in B_{r0}}, g=frequencyMap h; H_1,H_2 are defined constants, not assumed derivative estimates
SOURCE_QUANTIFIERS: fixed HEAD data; U={I in R^n : iota I in B_{r0}}, g=frequencyMap h; (ii),(iii) for every I in U; (iv) for every real I with iota I in B_{r0/2}; (v) for every pair I,J in B
SOURCE_CONCLUSION: (i) U open and closure B subset U; (ii) for I in U, all partial_i h(iota I) are real and g(I)=(partial_i h(iota I))_i; (iii) g differentiable on U with Dg(I) the real symmetric Hessian there; (iv) for iota I in B_{r0/2}, |g(I)|<=H_1 and |Hessian h(iota I)|<=H_2; (v) g is Lambda_g-Lipschitz on B, Lambda_g=max(H_2,2H_1/delta_*), and |omega|<=W_inf=H_1 for omega in g(B)
CONSTANT_SCOPE: Lambda_g, W_inf depend only on the data
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:fm-domain, step:p4:fm-gradient, step:p4:fm-hessian, step:p4:fm-bounds, step:p4:fm-lipschitz, bp:p0:nearlyintegrable#frequencyMap, bp:p4:data
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:fm-domain | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L240-L240 | proof step of this result
EDGE: step:p4:fm-gradient | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L244-L244 | proof step of this result
EDGE: step:p4:fm-hessian | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L254-L254 | proof step of this result
EDGE: step:p4:fm-bounds | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L262-L262 | proof step of this result
EDGE: step:p4:fm-lipschitz | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L267-L267 | proof step of this result
EDGE: bp:p0:nearlyintegrable#frequencyMap | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L226-L226 | g is the frozen frequencyMap h
EDGE: bp:p4:data | blueprint/parts/p4-measure.tex#bp:p4:freq-map@L226-L235 | fixed h,B,r0 and the defined delta_* enter the domain and Lipschitz constant
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r2
REVIEWER: sol-review-d2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
DEPS: step:p4:db-vectorfield, step:p4:unp-normal, bp:p0:stripdata#torsion, bp:p0:stripdata#dotC, bp:p0:hamiltonian#omegaZero, bp:p0:stripdata#torsionAverage, bp:p1:holomorphic-regularity, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:db-vectorfield | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L377-L377 | DX_h~ via D^2 h~
EDGE: step:p4:unp-normal | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L381-L381 | derivative term vanishes
EDGE: bp:p0:stripdata#torsion | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L379-L379 | frozen torsion
EDGE: bp:p0:stripdata#dotC | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L380-L380 | dot product in torsion
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L380-L380 | Omega_0
EDGE: bp:p0:stripdata#torsionAverage | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L383-L383 | frozen torsionAverage
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L382-L384 | Holomorphy of second derivatives supplies continuity before the frozen integral is used
EDGE: bp:p1:ext-integral | blueprint/parts/p4-measure.tex#step:p4:unp-torsion@L382-L384 | Continuous torsion on the real unit cube is integrable; linearity integrates its constant term
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
SOURCE_HYPOTHESES: fixed HEAD data; all tuple side conditions are checked at L415-L416; G1 and G2 are dependencies supplying the constants
SOURCE_QUANTIFIERS: tuples for G1 (two) and G2 (one); constants C_1^(i),C_2^(i),c_G from G1,G2
SOURCE_CONCLUSION: defines sigma_K=sigma_B=2+mu, sigma_T=4L_++mu, gammabar=1, A_0..A_4, lambda_*, c_T, eta_*(delta), c_*=min of eight numbers; all depend only on the data; c_*>0 is fixed before f, epsilon and gamma
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
SOURCE_CONCLUSION: (s1) epsilon<=1 and L_+ F_2 epsilon<=1/2; (s2) C_1^(1) F_1 epsilon/(gamma^4 (s/4)^(4tau))<=1/2; (s3) eta_0<=eta_*(s/32)<=eta_*(s/16), eta_0<=mu, 16n eta_0/s<=1/2; (s4) C_1^(2) A_1 lambda_* epsilon/(gamma^4 (3s/32)^(4tau))<=1/2; (s5) (2A_0+C_2^(2) A_1 lambda_* (3s/32)^(-2tau)) epsilon gamma^(-2)<=c_G gamma^2 (s/16)^(2tau); (s6) (A_3 Lambda_g+A_4) epsilon gamma^(-4)<=1/4; (s7) eta_0<=gamma^2/2<=min(gamma,1)/2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p4:small-proof, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:small-proof | blueprint/parts/p4-measure.tex#bp:p4:smallness@L459-L459 | proof step of this result
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:smallness@L445-L456 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r2
REVIEWER: sol-review-d2
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
DEPS: bp:p4:parameters, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:small-proof@L460-L460 | entries of c_*, eta_*, c_T
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:small-proof@L459-L465 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
DEPS: step:p4:apply-g1, bp:p4:parameters, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:apply-g1 | blueprint/parts/p4-measure.tex#bp:p4:apply@L477-L477 | proof step of this result
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:apply@L469-L469 | SA, Omega_gamma, sigma_K, mu
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#bp:p4:apply@L468-L474 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
SOURCE_HYPOTHESES: fixed HEAD data; (SA); omega in Omega_gamma; K=K^0_omega and e=F_1 epsilon (H1-H5 and smallness are established by the listed dependencies)
SOURCE_QUANTIFIERS: first G1 tuple, D, h~, K=K^0_omega
SOURCE_CONCLUSION: K^inf_omega with all stated properties on T_{s/8} and |K^inf-K^0|<=eta_0/2
CONSTANT_SCOPE: constants C_1^(1),C_2^(1) from G1
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:g1, bp:p4:parameters, bp:p4:h1, bp:p4:unperturbed, bp:p4:smallness, bp:p4:inverse-freq, bp:p0:diophantine#IsDiophantine, bp:p4:SA
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:g1 | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L478-L478 | G1 applied
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L478-L478 | tuple and constants
EDGE: bp:p4:h1 | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L483-L483 | H1
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L485-L485 | H2,H3,H4 and error from unperturbed
EDGE: bp:p4:smallness | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L483-L483 | (s1),(s2)
EDGE: bp:p4:inverse-freq | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L488-L488 | I_omega in B, g(I_omega)=omega
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L489-L489 | omega in Dio_{gamma,tau} (H5)
EDGE: bp:p4:SA | blueprint/parts/p4-measure.tex#step:p4:apply-g1@L477-L495 | Missing direct dependency on the explicit local package (SA), required by SPEC
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
SOURCE_HYPOTHESES: matrices and vectors as in Corollary matrix-norms; for (v), A continuous on the real unit cube
SOURCE_QUANTIFIERS: A, p, q
SOURCE_CONCLUSION: (i)-(v)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#symplecticForm, bp:p0:hamiltonian#omegaZero, bp:p4:unperturbed, bp:p1:operator-norms, bp:p1:matrix-norms, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:hamiltonian#symplecticForm | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L541-L541 | frozen formula of symplecticForm
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L541-L541 | Omega_0
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L539-L539 | rows of L^0,N^0
EDGE: bp:p1:operator-norms | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L537-L539 | Missing cited identification of row-sum and operator norms
EDGE: bp:p1:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L537-L539 | Missing cited submultiplicativity and transpose bounds
EDGE: bp:p1:ext-integral | blueprint/parts/p4-measure.tex#step:p4:mn-rowsum@L542-L543 | Missing explicitly cited integral norm bound
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
DEPS: bp:p0:stripdata#gramMatrix, bp:p1:holomorphic-regularity, bp:p1:holomorphic-inverse
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:stripdata#gramMatrix | blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L566-L566 | frozen Gram matrix and Lean inverse
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L565-L568 | Missing cited holomorphy of DK
EDGE: bp:p1:holomorphic-inverse | blueprint/parts/p4-measure.tex#step:p4:tr-inverse@L567-L568 | Missing explicitly cited inverse holomorphy and differentiation result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
DEPS: step:p4:tr-inverse, bp:p0:stripdata#normalFrame, bp:p0:stripdata#torsion, bp:p4:matrix-norms, step:p4:h1-holo, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: step:p4:tr-inverse | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L571-L571 | N holomorphic by (a)
EDGE: bp:p0:stripdata#normalFrame | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L571-L571 | frozen normal frame
EDGE: bp:p0:stripdata#torsion | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L571-L571 | frozen torsion
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L573-L574 | Missing explicitly cited conversion of frozen sums into matrix products
EDGE: step:p4:h1-holo | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L572-L574 | Supply holomorphy directly without the unused epsilon<=1 premise of H1
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:tr-torsion@L571-L574 | Holomorphic derivatives of N and X_hbold are needed for holomorphic torsion
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
DEPS: bp:p0:stripdata#IsPrimaryOnStrip, step:p4:h1-holo, step:p4:tr-inverse, bp:p1:holomorphic-regularity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L577-L577 | K(theta+k)=K(theta)+(k,0)
EDGE: step:p4:h1-holo | blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L579-L580 | Missing direct use of Hamiltonian periodicity; use the part of H1 that has no epsilon<=1 premise
EDGE: step:p4:tr-inverse | blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L579-L580 | Periodic Gram inverse on the nonsingular domain is used in the frame
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p4-measure.tex#step:p4:tr-periodic@L577-L580 | Differentiation of primarity and of periodic derivatives supplies periodic L and DN
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
DEPS: bp:p4:matrix-norms, bp:p1:neumann, bp:p4:torsion-regular, step:p4:stab-cauchy, bp:p4:unperturbed, step:p4:stab-small, step:p4:stab-ball
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L625-L625 | transpose and L^0 norms
EDGE: bp:p1:neumann | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L627-L627 | Neumann series with A=Id
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L629-L629 | applies once det G_K!=0
EDGE: step:p4:stab-cauchy | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L625-L625 | a and  L <=2
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L626-L626 | G_{K^0}=Id, L^0
EDGE: step:p4:stab-small | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L626-L626 | 5na<=1/2
EDGE: step:p4:stab-ball | blueprint/parts/p4-measure.tex#step:p4:stab-gram@L629-L629 | The application of torsion-regular needs K(T_{rho-delta}) subset D, supplied by the neighbourhood step
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
DEPS: bp:p4:torsion-regular, step:p4:stab-gram, step:p4:stab-cauchy, bp:p4:matrix-norms, bp:p4:unperturbed, step:p4:stab-small
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L633-L633 | derivative formula (a) for G^{-1}
EDGE: step:p4:stab-gram | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L632 | bounds on G^{-1}
EDGE: step:p4:stab-cauchy | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L632 |  L-L^0 <=a,  d_omega L <=b
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L632 |  Omega_0 =1, transpose norms
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L632 | N^0,L^0
EDGE: step:p4:stab-small | blueprint/parts/p4-measure.tex#step:p4:stab-frame@L632-L636 | The conclusion ¦N¦<=2 uses ¦N0¦=1 and 12na<=1
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
DEPS: bp:p4:matrix-norms, step:p4:stab-frame, step:p4:stab-xn, bp:p4:torsion-regular, bp:p4:unperturbed, bp:p4:parameters
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:matrix-norms | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L651-L651 | norm calculus
EDGE: step:p4:stab-frame | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L650-L650 |  N-N^0 
EDGE: step:p4:stab-xn | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L650-L650 |  X_N-X_N^0 ,  X_N <=M+1
EDGE: bp:p4:torsion-regular | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L650-L650 | T=N^T Omega_0 X_N
EDGE: bp:p4:unperturbed | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L650-L650 | T^0 from N^0, X_N^0
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#step:p4:stab-torsion@L652-L652 | The final coefficient comparison uses the definition c_T=304n^3(M+W_inf+1)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a+sol-review-r4
REVIEWER: sol-review-r2
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p4a
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p4:SA
KIND: display
TITLE: Local smallness package and frequency notation
STATEMENT_SOURCE: blueprint/parts/p4-measure.tex#bp:p4:SA@L438-L443
PROOF_SOURCE: -
CONTRACT_ID: bp:p4:SA
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: fixed HEAD data of Part 4 and constants of Definition parameters
SOURCE_QUANTIFIERS: gamma, epsilon real, after the data-dependent constants have been fixed
SOURCE_CONCLUSION: local package (SA) is 0<gamma<=1 and 0<=epsilon<=c_* gamma^4; eta_0=A_0 epsilon gamma^{-2}; Omega_gamma=g(B) intersect Dio_{gamma,tau}
CONSTANT_SCOPE: c_*, A_0 fixed before gamma, epsilon; eta_0 and Omega_gamma depend on gamma (and eta_0 on epsilon)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p4:parameters, bp:p4:freq-map, bp:p0:diophantine#IsDiophantine
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p4:parameters | blueprint/parts/p4-measure.tex#bp:p4:SA@L438-L443 | c_*, A_0 and their scope
EDGE: bp:p4:freq-map | blueprint/parts/p4-measure.tex#bp:p4:SA@L443-L443 | g(B), with g the frequency map
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p4-measure.tex#bp:p4:SA@L443-L443 | Diophantine set
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: new+sol-review-r4
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: Local hypothesis package only; STANDING_ASSUMPTIONS remains none.
