NODE: bp:p1:ext-cauchy
KIND: external
TITLE: Cauchy's formulas in one variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-cauchy@L54-L64
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-cauchy
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-rectangle
KIND: external
TITLE: Cauchy's theorem for rectangles
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-rectangle@L65-L68
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-rectangle
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-identity
KIND: external
TITLE: Identity theorem in one variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-identity@L69-L72
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-identity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: phi holomorphic on a connected open set S in C; phi vanishes on a nonempty open interval of R contained in S
SOURCE_QUANTIFIERS: S, phi, interval arbitrary with the stated properties
SOURCE_CONCLUSION: phi=0 on S
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-mvt
KIND: external
TITLE: Mean value inequality
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-mvt@L73-L76
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-mvt
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-schwarz
KIND: external
TITLE: Symmetry of second derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-schwarz@L77-L79
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-schwarz
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-integral
KIND: external
TITLE: Integrals
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-integral@L80-L84
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-integral
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-fourier
KIND: external
TITLE: Fourier series on the torus
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-fourier@L85-L89
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-fourier
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-lebesgue
KIND: external
TITLE: Lebesgue outer measure
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-lebesgue@L90-L92
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-lebesgue
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-banach
KIND: external
TITLE: Banach's fixed point theorem
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-banach@L93-L94
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-banach
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-cramer
KIND: external
TITLE: Cramer's rule
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-cramer@L95-L97
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-cramer
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
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:operator-norms
KIND: lemma
TITLE: Operator norms, blocks, $\Omega_0$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L117-L121
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L123-L144
CONTRACT_ID: bp:p1:operator-norms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: max norms of Part 0 on vectors; matrices M; block matrices (A B; C D)
SOURCE_QUANTIFIERS: all matrices and blocks of any compatible sizes
SOURCE_CONCLUSION: operator norm of a matrix = max_i sum_j |M_ij|; block matrix norm <= max{|A|+|B|,|C|+|D|}; |Omega_0|=1, Omega_0^T=-Omega_0, Omega_0^2=-I
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:opn-rowsum, step:p1:opn-blocks, step:p1:opn-omega
EDGE: step:p1:opn-rowsum | blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L124-L124 | proof step of this result
EDGE: step:p1:opn-blocks | blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L133-L133 | proof step of this result
EDGE: step:p1:opn-omega | blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L138-L138 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:opn-rowsum
KIND: step
TITLE: Row sums
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-rowsum@L124-L131
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-rowsum@L124-L131
CONTRACT_ID: step:p1:opn-rowsum
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M in C^{p x q}; v in C^q with |v|<=1
SOURCE_QUANTIFIERS: for every row i; i_0 a row of largest sum
SOURCE_CONCLUSION: sup_{|v|<=1}|Mv| = max_i sum_j |M_ij| (operator norm equals the largest row sum, also for linear maps identified with matrices)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:opn-blocks
KIND: step
TITLE: Blocks
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L133-L136
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L133-L136
CONTRACT_ID: step:p1:opn-blocks
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: block matrix (A B; C D) of compatible sizes; induced operator norms for max norms
SOURCE_QUANTIFIERS: rows of the upper and lower block rows
SOURCE_CONCLUSION: upper block-row sums <= |A|+|B|, lower <= |C|+|D|, so block norm <= max{|A|+|B|,|C|+|D|}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:opn-rowsum
EDGE: step:p1:opn-rowsum | blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L134-L134 | norm as largest row sum
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:opn-omega
KIND: step
TITLE: The matrix $\Omega_0$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L138-L143
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L138-L143
CONTRACT_ID: step:p1:opn-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Omega_0(a,b)=(-b,a) as defined in Part 0; induced operator norm for max norms
SOURCE_QUANTIFIERS: a,b in C^n
SOURCE_CONCLUSION: Omega_0^2=-I, Omega_0^T=-Omega_0, every row has one nonzero entry +-1, so |Omega_0|=1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#omegaZero, step:p1:opn-rowsum
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L139-L139 | Omega_0(a,b)=(-b,a) definition
EDGE: step:p1:opn-rowsum | blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L143-L143 | norm equals largest row sum
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:matrix-norms
KIND: lemma
TITLE: Max-norm matrix facts
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L146-L151
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L153-L173
CONTRACT_ID: bp:p1:matrix-norms
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: norm |M|=max_i sum_j |M_ij|
SOURCE_QUANTIFIERS: M,N matrices of compatible sizes, v vector; M of size m x m' for the transpose bound; M of size 2n x q resp. p x 2n; M_1,M_2 stacked
SOURCE_CONCLUSION: |MN|<=|M||N|; |Mv|<=|M||v|; |M^T|<=m|M| (m x m' matrices); |Omega_0 M|=|M| (2n x q); |M Omega_0|=|M| (p x 2n); |(M_1;M_2)|=max{|M_1|,|M_2|}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:mn-products, step:p1:mn-transpose, step:p1:mn-signed
EDGE: step:p1:mn-products | blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L154-L154 | proof step of this result
EDGE: step:p1:mn-transpose | blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L160-L160 | proof step of this result
EDGE: step:p1:mn-signed | blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L165-L165 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mn-products
KIND: step
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-products@L154-L158
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-products@L154-L158
CONTRACT_ID: step:p1:mn-products
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: matrices M,N and vector v of compatible sizes; induced operator norms for max norms
SOURCE_QUANTIFIERS: all compatible M,N,v
SOURCE_CONCLUSION: |Mv|<=|M||v| and |MN|<=|M||N|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:mn-products@L155-L155 | cited at this line (step; \ref{bp:p1:operator-norms})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mn-transpose
KIND: step
TITLE: Transposes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-transpose@L160-L163
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-transpose@L160-L163
CONTRACT_ID: step:p1:mn-transpose
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M an m x m' matrix
SOURCE_QUANTIFIERS: row j of M^T
SOURCE_CONCLUSION: |M_ij|<=|M| and |M^T|<=m|M|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mn-signed
KIND: step
TITLE: $\Omega_0$ and stacked blocks
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-signed@L165-L172
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-signed@L165-L172
CONTRACT_ID: step:p1:mn-signed
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Omega_0(a,b)=(-b,a) (Part 0): signed permutation matrix
SOURCE_QUANTIFIERS: M of sizes 2n x q, p x 2n; M_1,M_2 stacked
SOURCE_CONCLUSION: |Omega_0 M|=|M Omega_0|=|M| and |(M_1;M_2)|=max{|M_1|,|M_2|}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#omegaZero
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#step:p1:mn-signed@L166-L166 | Omega_0(a,b)=(-b,a) definition
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:neumann
KIND: lemma
TITLE: Neumann series
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:neumann@L175-L179
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:neumann@L181-L201
CONTRACT_ID: bp:p1:neumann
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A invertible; |A^-1||Delta|<=1/2; for the pointwise version A(theta), Delta(theta) matrix-valued with sup norms
SOURCE_QUANTIFIERS: A,Delta square matrices of the same size; pointwise version for theta in a set
SOURCE_CONCLUSION: A+Delta invertible, |(A+Delta)^-1|<=2|A^-1|, |(A+Delta)^-1-A^-1|<=2|A^-1|^2|Delta|; same pointwise for matrix-valued functions with sup norms
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:neu-series, step:p1:neu-inverse, step:p1:neu-difference, step:p1:neu-pointwise
EDGE: step:p1:neu-series | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L182-L182 | proof step of this result
EDGE: step:p1:neu-inverse | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L189-L189 | proof step of this result
EDGE: step:p1:neu-difference | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L193-L193 | proof step of this result
EDGE: step:p1:neu-pointwise | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L197-L197 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:neu-series
KIND: step
TITLE: The Neumann series
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-series@L182-L187
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-series@L182-L187
CONTRACT_ID: step:p1:neu-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A invertible square matrix; Delta of the same size; |A^{-1}| |Delta|<=1/2; max-norm operator norms; X denotes A^{-1}Delta
SOURCE_QUANTIFIERS: square matrices
SOURCE_CONCLUSION: |X^j|<=2^-j, S=sum_j (-X)^j converges absolutely, |S|<=2, S(I+X)=(I+X)S=I
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms, bp:p1:operator-norms
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-series@L183-L183 | cited at this line (step; \ref{bp:p1:matrix-norms})
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-series@L186-L186 | cited at this line (step; \ref{bp:p1:operator-norms})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:neu-inverse
KIND: step
TITLE: The inverse of $A+\Delta$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L189-L191
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L189-L191
CONTRACT_ID: step:p1:neu-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A invertible square matrix; Delta of the same size; |A^{-1}| |Delta|<=1/2; max-norm operator norms; X=A^{-1}Delta; S=sum_{j>=0}(-X)^j
SOURCE_QUANTIFIERS: A,Delta as in lemma
SOURCE_CONCLUSION: A+Delta invertible with inverse S A^-1 and |(A+Delta)^-1|<=2|A^-1|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:neu-series, bp:p1:matrix-norms
EDGE: step:p1:neu-series | blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L190-L190 | S is the inverse of I+X with norm at most 2
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L191-L191 | submultiplicativity
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:neu-difference
KIND: step
TITLE: The difference
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L193-L195
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L193-L195
CONTRACT_ID: step:p1:neu-difference
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A invertible square matrix; Delta of the same size; |A^{-1}| |Delta|<=1/2; max-norm operator norms
SOURCE_QUANTIFIERS: as in lemma
SOURCE_CONCLUSION: (A+Delta)^-1-A^-1=-(A+Delta)^-1 Delta A^-1 and |.|<=2|A^-1|^2|Delta|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:neu-inverse, bp:p1:matrix-norms
EDGE: step:p1:neu-inverse | blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L194-L194 | inverse and its bound
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L195-L195 | submultiplicativity
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:neu-pointwise
KIND: step
TITLE: Matrix-valued functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L197-L200
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L197-L200
CONTRACT_ID: step:p1:neu-pointwise
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A(theta) invertible, Delta(theta) for theta in S'; sup|A^-1| sup|Delta|<=1/2
SOURCE_QUANTIFIERS: theta in a set S'
SOURCE_CONCLUSION: hypothesis and conclusions hold at every theta, and pass to the suprema over S'
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:neu-inverse, step:p1:neu-difference
EDGE: step:p1:neu-inverse | blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L200-L200 | conclusions applied at each theta
EDGE: step:p1:neu-difference | blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L200-L200 | conclusions applied at each theta
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:real-inverse
KIND: lemma
TITLE: Real inverses
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L203-L206
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L208-L214
CONTRACT_ID: bp:p1:real-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A an invertible real matrix; A(theta) real for real theta and invertible
SOURCE_QUANTIFIERS: A, theta arbitrary
SOURCE_CONCLUSION: A^-1 is real; A(theta)^-1 real for real theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ri-adjugate
EDGE: step:p1:ri-adjugate | blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L209-L209 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ri-adjugate
KIND: step
TITLE: Adjugate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L209-L213
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L209-L213
CONTRACT_ID: step:p1:ri-adjugate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A real invertible square matrix; for the pointwise clause A(theta) real at real theta and invertible
SOURCE_QUANTIFIERS: A real invertible
SOURCE_CONCLUSION: A^-1=(det A)^-1 adj A is real; the pointwise claim is the same at each real theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cramer
EDGE: bp:p1:ext-cramer | blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L212-L212 | cited at this line (step; \ref{bp:p1:ext-cramer})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:holomorphic-regularity
KIND: lemma
TITLE: Derivatives of holomorphic maps
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L225-L234
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L236-L292
CONTRACT_ID: bp:p1:holomorphic-regularity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U in C^m open; F:U->W holomorphic
SOURCE_QUANTIFIERS: U,F,W,m arbitrary; z in U; v,w in C^m; j>=1
SOURCE_CONCLUSION: DF:U->L(C^m,W) holomorphic; D^jF exists and is holomorphic for every j>=1, F is C^infty; |D^{j+1}F(z)|=|D^j(DF)(z)|=|D(D^jF)(z)|; D^2F(z)[v,w]=D^2F(z)[w,v]; d_i d_j F=d_j d_i F on U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-line, step:p1:hreg-integral, step:p1:hreg-differentiate, step:p1:hreg-full, step:p1:hreg-orders, step:p1:hreg-symmetry
EDGE: step:p1:hreg-line | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L237-L237 | proof step of this result
EDGE: step:p1:hreg-integral | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L245-L245 | proof step of this result
EDGE: step:p1:hreg-differentiate | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L254-L254 | proof step of this result
EDGE: step:p1:hreg-full | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L272-L272 | proof step of this result
EDGE: step:p1:hreg-orders | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L279-L279 | proof step of this result
EDGE: step:p1:hreg-symmetry | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L288-L288 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-line
KIND: step
TITLE: Cauchy's estimate along lines
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L237-L243
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L237-L243
CONTRACT_ID: step:p1:hreg-line
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; x in U; r>0; closed P(x,r) subset U; |F|<=A there; |v|=1
SOURCE_QUANTIFIERS: x,r,A,v arbitrary with those properties
SOURCE_CONCLUSION: |DF(x)v|<=A/r for |v|=1 and hence |DF(x)|<=A/r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cauchy
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L241-L241 | cited at this line (step; \ref{bp:p1:ext-cauchy})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-integral
KIND: step
TITLE: A Cauchy integral for the derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L245-L252
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L245-L252
CONTRACT_ID: step:p1:hreg-integral
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; z_0 in U; r>0 with closed P(z_0,3r) subset U; A=max there; |v|=1; x in P(z_0,r)
SOURCE_QUANTIFIERS: z_0,r,A fixed; v, x then arbitrary
SOURCE_CONCLUSION: DF(x)v=(2 pi i)^-1 oint_{|zeta|=r} F(x+zeta v)/zeta^2 dzeta for x in P(z_0,r)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cauchy
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L249-L249 | cited at this line (step; \ref{bp:p1:ext-cauchy})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-differentiate
KIND: step
TITLE: Differentiation under the integral
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L254-L270
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L254-L270
CONTRACT_ID: step:p1:hreg-differentiate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; z_0 in U; r>0 with closed P(z_0,3r) subset U; A=max there; |v|=1; x in P(z_0,r); |h|<r-|x-z_0|
SOURCE_QUANTIFIERS: z_0,r,A,v fixed; x; then h
SOURCE_CONCLUSION: x->DF(x)v is complex differentiable at x in P(z_0,r) with derivative h->(2 pi i)^-1 oint DF(x+zeta v)h zeta^-2 dzeta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-line, step:p1:hreg-integral, bp:p1:ext-mvt, bp:p1:ext-integral
EDGE: step:p1:hreg-line | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L256-L256 | line-estimate bound on DF(y)
EDGE: step:p1:hreg-integral | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L267-L267 | Cauchy integral for DF(x)v
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L261-L261 | bound on R(h,zeta)
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L263-L263 | dominated convergence
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-full
KIND: step
TITLE: The full derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L272-L277
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L272-L277
CONTRACT_ID: step:p1:hreg-full
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; z_0 in U; r>0 with closed P(z_0,3r) subset U
SOURCE_QUANTIFIERS: z_0 in U arbitrary
SOURCE_CONCLUSION: DF is holomorphic on P(z_0,r), hence on U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-differentiate
EDGE: step:p1:hreg-differentiate | blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L273-L273 | cited at this line (step; \ref{step:p1:hreg-differentiate})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-orders
KIND: step
TITLE: All orders
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L279-L286
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L279-L286
CONTRACT_ID: step:p1:hreg-orders
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic
SOURCE_QUANTIFIERS: j>=1; F, DF as the maps
SOURCE_CONCLUSION: every D^jF exists and is holomorphic, F is C^infty, and the norm identities |D^{j+1}F|=|D^j(DF)|=|D(D^jF)|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-full
EDGE: step:p1:hreg-full | blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L282-L282 | DF holomorphic, applied inductively to D^jF
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-symmetry
KIND: step
TITLE: Symmetry
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L288-L291
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L288-L291
CONTRACT_ID: step:p1:hreg-symmetry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic
SOURCE_QUANTIFIERS: z in U; v,w
SOURCE_CONCLUSION: D^2F(z) symmetric; d_i d_j F=d_j d_i F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-full, bp:p1:ext-schwarz
EDGE: step:p1:hreg-full | blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L289-L289 | DF differentiable
EDGE: bp:p1:ext-schwarz | blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L290-L290 | symmetry of D^2F(z)
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:holomorphic-analytic
KIND: lemma
TITLE: Holomorphic maps are analytic
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L294-L310
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L312-L360
CONTRACT_ID: bp:p1:holomorphic-analytic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U in C^m open; F:U->W holomorphic; (a) z_0 in U, r>0 with P-bar(z_0,r) in U, A=max_{P-bar(z_0,r)}|F|; (b) U_R=U cap R^m, x_0 in U_R; W=C^p and F(U_R) in R^p for the real clause
SOURCE_QUANTIFIERS: F,U,W,m; then z_0,r (A determined); alpha in N^m
SOURCE_CONCLUSION: (a) exist c_alpha in W with |c_alpha|<=A r^-|alpha| and F(z)=sum_alpha c_alpha (z-z_0)^alpha on P(z_0,r), absolutely convergent; F analytic on U; (b) F|U_R real-analytic near each x_0 (power series in x-x_0, absolutely convergent); real coefficients if W=C^p and F(U_R) in R^p
CONSTANT_SCOPE: c_alpha depends on F,z_0,r only
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-margin, step:p1:han-cauchy, step:p1:han-series, step:p1:han-bounds, step:p1:han-real
EDGE: step:p1:han-margin | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L313-L313 | proof step of this result
EDGE: step:p1:han-cauchy | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L317-L317 | proof step of this result
EDGE: step:p1:han-series | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L331-L331 | proof step of this result
EDGE: step:p1:han-bounds | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L343-L343 | proof step of this result
EDGE: step:p1:han-real | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L350-L350 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-margin
KIND: step
TITLE: A larger polydisc
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-margin@L313-L315
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-margin@L313-L315
CONTRACT_ID: step:p1:han-margin
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P-bar(z_0,r) in U compact, U open, F continuous
SOURCE_QUANTIFIERS: z_0,r as in (a)
SOURCE_CONCLUSION: exists r_1>r with P-bar(z_0,r_1) in U; A is finite
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-cauchy
KIND: step
TITLE: Iterated Cauchy formula
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L317-L329
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L317-L329
CONTRACT_ID: step:p1:han-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; z_0 in U; r>0 with closed P(z_0,r) subset U; A=max there; r_1 is the larger radius constructed in the margin step; w in P(z_0,r); C_j the coordinate circles of radius r
SOURCE_QUANTIFIERS: w in P(z_0,r); circles C_j around z_{0,j}
SOURCE_CONCLUSION: F(w)=(2 pi i)^-m oint_{C_1}...oint_{C_m} F(zeta)/prod(zeta_j-w_j) dzeta, as an integral over the torus C_1x...xC_m
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-margin, bp:p1:ext-cauchy, bp:p1:ext-integral
EDGE: step:p1:han-margin | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L321-L321 | r_1>r so integrand holomorphic on larger disc
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L322-L322 | first Cauchy formula in each variable
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L329-L329 | Fubini
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-series
KIND: step
TITLE: Geometric expansion
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-series@L331-L341
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-series@L331-L341
CONTRACT_ID: step:p1:han-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; z_0 in U; r>0 with closed P(z_0,r) subset U; A=max there; w in P(z_0,r); t=|w-z_0|/r; c_alpha denotes the displayed contour integral
SOURCE_QUANTIFIERS: w in P(z_0,r); zeta on the torus
SOURCE_CONCLUSION: F(w)=sum_alpha c_alpha (w-z_0)^alpha with c_alpha=(2 pi i)^-m oint...oint F(zeta)/prod(zeta_j-z_{0,j})^{alpha_j+1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-cauchy, bp:p1:ext-integral
EDGE: step:p1:han-cauchy | blueprint/parts/p1-analysis.tex#step:p1:han-series@L332-L332 | iterated Cauchy formula expanded
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:han-series@L336-L336 | term-by-term integration
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-bounds
KIND: step
TITLE: Coefficient bounds
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L343-L348
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L343-L348
CONTRACT_ID: step:p1:han-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; z_0 in U; r>0 with closed P(z_0,r) subset U; A=max there; c_alpha denotes the contour integral constructed in the previous step; w in P(z_0,r)
SOURCE_QUANTIFIERS: alpha in N^m; w in P(z_0,r)
SOURCE_CONCLUSION: |c_alpha|<=A r^-|alpha|; sum |c_alpha||(w-z_0)^alpha|<=A(1-t)^-m; part (a) holds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-series, bp:p1:ext-integral
EDGE: step:p1:han-series | blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L344-L344 | coefficient formula
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L344-L344 | integral estimate by length times sup
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-real
KIND: step
TITLE: Real points
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-real@L350-L359
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-real@L350-L359
CONTRACT_ID: step:p1:han-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; x_0 in U cap R^m; r>0 with closed P(x_0,r) subset U; additionally W=C^p and F real on U cap R^m for the real-coefficient clause
SOURCE_QUANTIFIERS: real x with |x-x_0|<r; W=C^p with F real on U_R for the second clause
SOURCE_CONCLUSION: F|U_R is a real power series in x-x_0, absolutely convergent near x_0; with real F, F(x)=sum (Re c_alpha)(x-x_0)^alpha, |Re c_alpha|<=|c_alpha|; this is (b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-bounds
EDGE: step:p1:han-bounds | blueprint/parts/p1-analysis.tex#step:p1:han-real@L351-L351 | part (a) established
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:uniform-limits
KIND: lemma
TITLE: Uniform limits
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L362-L366
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L368-L400
CONTRACT_ID: bp:p1:uniform-limits
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: K_s holomorphic on an open set V; K_s->K pointwise; DK_s->Lambda uniformly on V; for V=T_r, every K_s primary on T_r, respectively real on reals
SOURCE_QUANTIFIERS: V,K_s,K,Lambda; sequence index s
SOURCE_CONCLUSION: K holomorphic on V and DK=Lambda; if V=T_r and all K_s primary (resp. real on reals) then K is primary (resp. real on reals)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ul-differences, step:p1:ul-limit, step:p1:ul-derivative, step:p1:ul-primary
EDGE: step:p1:ul-differences | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L372-L372 | proof step of this result
EDGE: step:p1:ul-limit | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L379-L379 | proof step of this result
EDGE: step:p1:ul-derivative | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L386-L386 | proof step of this result
EDGE: step:p1:ul-primary | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L394-L394 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ul-differences
KIND: step
TITLE: Linearization error of the differences
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L372-L377
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L372-L377
CONTRACT_ID: step:p1:ul-differences
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V subset C^m open; W finite-dimensional complex normed; K_s:V->W holomorphic; K_s->K pointwise; DK_s->Lambda uniformly on V; eta_s=sup_V |DK_s-Lambda| for sufficiently large s; x in V; P(x,r) subset V
SOURCE_QUANTIFIERS: x,r fixed; indices s,t; y in P(x,r)
SOURCE_CONCLUSION: |phi_st(y)-phi_st(x)|<=2(eta_s+eta_t)|y-x| for phi_st(y)=K_s(y)-K_t(y)-(DK_s(x)-DK_t(x))(y-x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-mvt
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L376-L376 | cited at this line (step; \ref{bp:p1:ext-mvt})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ul-limit
KIND: step
TITLE: Passage to the limit
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L379-L384
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L379-L384
CONTRACT_ID: step:p1:ul-limit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V subset C^m open; W finite-dimensional complex normed; K_s:V->W holomorphic; K_s->K pointwise; DK_s->Lambda uniformly on V; eta_s=sup_V |DK_s-Lambda| for sufficiently large s; x in V; P(x,r) subset V
SOURCE_QUANTIFIERS: x,r,s fixed; y in P(x,r); t->infinity
SOURCE_CONCLUSION: |K_s(y)-K(y)-(K_s(x)-K(x))-(DK_s(x)-Lambda(x))(y-x)|<=2 eta_s|y-x|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ul-differences
EDGE: step:p1:ul-differences | blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L380-L380 | difference estimate passed to limit
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ul-derivative
KIND: step
TITLE: Differentiability of the limit
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L386-L392
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L386-L392
CONTRACT_ID: step:p1:ul-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V subset C^m open; W finite-dimensional complex normed; K_s:V->W holomorphic; K_s->K pointwise; DK_s->Lambda uniformly on V; eta_s=sup_V |DK_s-Lambda| for sufficiently large s; x in V; P(x,r) subset V; epsilon>0
SOURCE_QUANTIFIERS: eps>0, then s, then r'<=r
SOURCE_CONCLUSION: |K(y)-K(x)-Lambda(x)(y-x)|<=eps|y-x| for |y-x|<r'; Lambda(x) complex linear; K complex differentiable at x with DK(x)=Lambda(x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ul-limit
EDGE: step:p1:ul-limit | blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L389-L389 | cited at this line (step; \ref{step:p1:ul-limit})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ul-primary
KIND: step
TITLE: Periodicity and realness
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L394-L399
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L394-L399
CONTRACT_ID: step:p1:ul-primary
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V=T_r, W=C^n x C^n; every K_s primary on T_r (resp. 1-periodic, resp. real on reals)
SOURCE_QUANTIFIERS: theta in T_r, k in Z^n; x in R^n
SOURCE_CONCLUSION: K(theta+k)=K(theta)+(k,0), K is 1-periodic where each K_s is, and K(R^n) in R^n x R^n since the latter is closed
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:stripdata#IsPrimaryOnStrip, bp:p0:stripdata#IsRealOnReals, bp:p0:domains#complexStrip
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L395-L395 | primary on T_r
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L398-L398 | real on reals
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L395-L395 | strip T_r
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:holomorphic-inverse
KIND: lemma
TITLE: Holomorphic inverse
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L402-L405
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L407-L421
CONTRACT_ID: bp:p1:holomorphic-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A holomorphic matrix-valued function on an open set V with det A != 0 there
SOURCE_QUANTIFIERS: A:V->C^{p x p}, V open
SOURCE_CONCLUSION: A^-1 is holomorphic on V and D(A^-1)=-A^-1 (DA) A^-1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hi-holomorphic, step:p1:hi-derivative
EDGE: step:p1:hi-holomorphic | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L410-L410 | proof step of this result
EDGE: step:p1:hi-derivative | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L416-L416 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hi-holomorphic
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L410-L414
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L410-L414
CONTRACT_ID: step:p1:hi-holomorphic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V open; A:V->C^{p x p} holomorphic; det A nonzero on V
SOURCE_QUANTIFIERS: on V
SOURCE_CONCLUSION: A^-1=(det A)^-1 adj A is holomorphic on V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cramer
EDGE: bp:p1:ext-cramer | blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L411-L411 | cited at this line (step; \ref{bp:p1:ext-cramer})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hi-derivative
KIND: step
TITLE: Derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L416-L420
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L416-L420
CONTRACT_ID: step:p1:hi-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V open; A:V->C^{p x p} holomorphic; det A nonzero on V
SOURCE_QUANTIFIERS: z in V; direction v
SOURCE_CONCLUSION: D(A^-1)(z)v=-A(z)^-1 (DA(z)v) A(z)^-1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hi-holomorphic
EDGE: step:p1:hi-holomorphic | blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L417-L417 | A^-1 differentiable so product rule applies
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:increments-open
KIND: lemma
TITLE: Increments on open sets
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L423-L426
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L428-L432
CONTRACT_ID: bp:p1:increments-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F holomorphic on open U in C^m; |DF|<=A on U; segment [z,z+w] in U
SOURCE_QUANTIFIERS: U,F,A; z,w
SOURCE_CONCLUSION: |F(z+w)-F(z)|<=A|w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:io-mvt
EDGE: step:p1:io-mvt | blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L429-L429 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:io-mvt
KIND: step
TITLE: Mean value inequality
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L429-L431
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L429-L431
CONTRACT_ID: step:p1:io-mvt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; F:U->W holomorphic; |DF|<=A on U; [z,z+w] subset U
SOURCE_QUANTIFIERS: z,w
SOURCE_CONCLUSION: |F(z+w)-F(z)|<=A|w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-mvt
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L431-L431 | cited at this line (step; \ref{bp:p1:ext-mvt})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:taylor
KIND: lemma
TITLE: Second-order Taylor bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:taylor@L434-L437
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:taylor@L439-L450
CONTRACT_ID: bp:p1:taylor
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F holomorphic on open U in C^m; |D^2F|<=A on U; segment [z,z+w] in U
SOURCE_QUANTIFIERS: U,F,A; z,w
SOURCE_CONCLUSION: |F(z+w)-F(z)-DF(z)w|<=(A/2)|w|^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:tay-lipschitz, step:p1:tay-integrate
EDGE: step:p1:tay-lipschitz | blueprint/parts/p1-analysis.tex#bp:p1:taylor@L440-L440 | proof step of this result
EDGE: step:p1:tay-integrate | blueprint/parts/p1-analysis.tex#bp:p1:taylor@L445-L445 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:tay-lipschitz
KIND: step
TITLE: The derivative along the segment
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L440-L443
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L440-L443
CONTRACT_ID: step:p1:tay-lipschitz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; |D^2F|<=A on U; [z,z+w] subset U
SOURCE_QUANTIFIERS: t in [0,1]
SOURCE_CONCLUSION: |DF(z+tw)-DF(z)|<=A t|w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:increments-open
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L441-L441 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
EDGE: bp:p1:increments-open | blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L442-L442 | cited at this line (step; \ref{bp:p1:increments-open})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:tay-integrate
KIND: step
TITLE: Integration
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L445-L449
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L445-L449
CONTRACT_ID: step:p1:tay-integrate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; F:U->W holomorphic; |D^2F|<=A on U; [z,z+w] subset U; g(t)=F(z+tw)-F(z)-t DF(z)w
SOURCE_QUANTIFIERS: z,w fixed; t in [0,1]
SOURCE_CONCLUSION: |g(1)|<=int_0^1 A t|w|^2 dt = (A/2)|w|^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:tay-lipschitz, bp:p1:holomorphic-regularity, bp:p1:ext-integral
EDGE: step:p1:tay-lipschitz | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L448-L448 | bound on g'
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L447-L447 | DF continuous so g is C^1
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L448-L448 | fundamental theorem of calculus and norm of an integral
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cauchy-open
KIND: lemma
TITLE: Cauchy estimate on open sets
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L472-L477
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L479-L506
CONTRACT_ID: bp:p1:cauchy-open
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f holomorphic on open U in C^m with |f|<=A on U; closed polydisc of radius delta>0 around z lies in U
SOURCE_QUANTIFIERS: U,f,A,delta>0,z; l; c(m,j) depends only on m and j
SOURCE_CONCLUSION: |d_l f(z)|<=A/delta; |D^j f(z)|<=c(m,j) A delta^-j for j=1,2,3 (iterated Frechet derivative, operator norm)
CONSTANT_SCOPE: c(m,j) depends only on m,j
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-first, step:p1:co-second, step:p1:co-third, step:p1:co-constants
EDGE: step:p1:co-first | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L482-L482 | proof step of this result
EDGE: step:p1:co-second | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L488-L488 | proof step of this result
EDGE: step:p1:co-third | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L497-L497 | proof step of this result
EDGE: step:p1:co-constants | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L504-L504 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: sol-review-r1
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:co-first
KIND: step
TITLE: First derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-first@L482-L486
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-first@L482-L486
CONTRACT_ID: step:p1:co-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; f:U->W holomorphic; delta>0; closed P(z,delta) subset U; |f|<=A on closed P(z,delta)
SOURCE_QUANTIFIERS: l
SOURCE_CONCLUSION: |Df(z)|<=A/delta and |d_l f(z)|<=A/delta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-line
EDGE: step:p1:hreg-line | blueprint/parts/p1-analysis.tex#step:p1:co-first@L483-L483 | line estimate with x=z, r=delta
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:co-second
KIND: step
TITLE: Second derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-second@L488-L495
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-second@L488-L495
CONTRACT_ID: step:p1:co-second
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; f:U->W holomorphic; delta>0; closed P(z,delta) subset U; |f|<=A on closed P(z,delta)
SOURCE_QUANTIFIERS: y in P-bar(z,delta/2)
SOURCE_CONCLUSION: |Df(y)|<=2A/delta on P-bar(z,delta/2) and |D^2f(z)|<=4A/delta^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-first, bp:p1:holomorphic-regularity
EDGE: step:p1:co-first | blueprint/parts/p1-analysis.tex#step:p1:co-second@L491-L491 | cited at this line (step; \ref{step:p1:co-first})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:co-second@L492-L492 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:co-third
KIND: step
TITLE: Third derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-third@L497-L502
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-third@L497-L502
CONTRACT_ID: step:p1:co-third
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; f:U->W holomorphic; delta>0; closed P(z,delta) subset U; |f|<=A on closed P(z,delta)
SOURCE_QUANTIFIERS: z, radius delta/2
SOURCE_CONCLUSION: |D^2(Df)(z)|<=32A/delta^3 and |D^3f(z)|<=32A/delta^3
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-second, bp:p1:holomorphic-regularity
EDGE: step:p1:co-second | blueprint/parts/p1-analysis.tex#step:p1:co-third@L498-L498 | cited at this line (step; \ref{step:p1:co-second})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:co-third@L501-L501 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:co-constants
KIND: step
TITLE: Constants
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-constants@L504-L505
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-constants@L504-L505
CONTRACT_ID: step:p1:co-constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: U subset C^m open; W finite-dimensional complex normed; f:U->W holomorphic; delta>0; closed P(z,delta) subset U; |f|<=A on closed P(z,delta)
SOURCE_QUANTIFIERS: j=1,2,3
SOURCE_CONCLUSION: the lemma holds with c(m,1)=1, c(m,2)=4, c(m,3)=32, independent of m
CONSTANT_SCOPE: constants are absolute (independent of m)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-first, step:p1:co-second, step:p1:co-third
EDGE: step:p1:co-first | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L505-L505 | c(m,1)=1
EDGE: step:p1:co-second | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L505-L505 | c(m,2)=4
EDGE: step:p1:co-third | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L505-L505 | c(m,3)=32
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1a+sol-review-r1
REVIEWER: sol-review-r3
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:ext-measure
KIND: external
TITLE: (E11) Lebesgue measure on products and boxes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:ext-measure@L98-L107
PROOF_SOURCE: -
CONTRACT_ID: bp:p1:ext-measure
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: d1, d2 >= 1; A, B, E measurable; E_1 subset E_2 subset ... measurable; a box prod_i [a_i,b_i]
SOURCE_QUANTIFIERS: for all measurable A, B, E and increasing measurable sequences E_j, and all boxes
SOURCE_CONCLUSION: Lebesgue measure on R^{d1} x R^{d2} = R^{d1+d2} is the product measure: meas(A x B) = meas A meas B and meas E = int meas(E_x) dx (Tonelli); meas(union E_j) = lim meas E_j; closed and open boxes with the same corners have measure prod (b_i - a_i), so box boundaries are null
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: claude-main-orchestrator
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: added to the blueprint's external inputs to repair global-review finding F1 (measure-theory facts used in Parts 1 and 4); Mathlib counterparts cited at the item
