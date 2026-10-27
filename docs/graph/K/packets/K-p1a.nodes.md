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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: EXTERNAL
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:operator-norms
KIND: lemma
TITLE: Operator norms, blocks, $\Omega_0$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L107-L111
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L113-L134
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
EDGE: step:p1:opn-rowsum | blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L114-L114 | proof step of this result
EDGE: step:p1:opn-blocks | blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L123-L123 | proof step of this result
EDGE: step:p1:opn-omega | blueprint/parts/p1-analysis.tex#bp:p1:operator-norms@L128-L128 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:opn-rowsum
KIND: step
TITLE: Row sums
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-rowsum@L114-L121
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-rowsum@L114-L121
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:opn-blocks
KIND: step
TITLE: Blocks
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L123-L126
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L123-L126
CONTRACT_ID: step:p1:opn-blocks
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: operator norm = largest row sum (row-sum step); block matrix (A B; C D)
SOURCE_QUANTIFIERS: rows of the upper and lower block rows
SOURCE_CONCLUSION: upper block-row sums <= |A|+|B|, lower <= |C|+|D|, so block norm <= max{|A|+|B|,|C|+|D|}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:opn-rowsum
EDGE: step:p1:opn-rowsum | blueprint/parts/p1-analysis.tex#step:p1:opn-blocks@L124-L124 | norm as largest row sum
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:opn-omega
KIND: step
TITLE: The matrix $\Omega_0$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L128-L133
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L128-L133
CONTRACT_ID: step:p1:opn-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Definition of Omega_0(a,b)=(-b,a) (Part 0); operator norm = largest row sum
SOURCE_QUANTIFIERS: a,b in C^n
SOURCE_CONCLUSION: Omega_0^2=-I, Omega_0^T=-Omega_0, every row has one nonzero entry +-1, so |Omega_0|=1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:hamiltonian#omegaZero, step:p1:opn-rowsum
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L129-L129 | Omega_0(a,b)=(-b,a) definition
EDGE: step:p1:opn-rowsum | blueprint/parts/p1-analysis.tex#step:p1:opn-omega@L133-L133 | norm equals largest row sum
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:matrix-norms
KIND: lemma
TITLE: Max-norm matrix facts
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L136-L141
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L143-L163
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
EDGE: step:p1:mn-products | blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L144-L144 | proof step of this result
EDGE: step:p1:mn-transpose | blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L150-L150 | proof step of this result
EDGE: step:p1:mn-signed | blueprint/parts/p1-analysis.tex#bp:p1:matrix-norms@L155-L155 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mn-products
KIND: step
TITLE: Products
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-products@L144-L148
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-products@L144-L148
CONTRACT_ID: step:p1:mn-products
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: |M|=sup_{|v|<=1}|Mv| (operator norms lemma)
SOURCE_QUANTIFIERS: all compatible M,N,v
SOURCE_CONCLUSION: |Mv|<=|M||v| and |MN|<=|M||N|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:mn-products@L145-L145 | cited at this line (step; \ref{bp:p1:operator-norms})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mn-transpose
KIND: step
TITLE: Transposes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-transpose@L150-L153
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-transpose@L150-L153
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:mn-signed
KIND: step
TITLE: $\Omega_0$ and stacked blocks
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-signed@L155-L162
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:mn-signed@L155-L162
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
EDGE: bp:p0:hamiltonian#omegaZero | blueprint/parts/p1-analysis.tex#step:p1:mn-signed@L156-L156 | Omega_0(a,b)=(-b,a) definition
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:neumann
KIND: lemma
TITLE: Neumann series
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:neumann@L165-L169
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:neumann@L171-L191
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
EDGE: step:p1:neu-series | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L172-L172 | proof step of this result
EDGE: step:p1:neu-inverse | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L179-L179 | proof step of this result
EDGE: step:p1:neu-difference | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L183-L183 | proof step of this result
EDGE: step:p1:neu-pointwise | blueprint/parts/p1-analysis.tex#bp:p1:neumann@L187-L187 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:neu-series
KIND: step
TITLE: The Neumann series
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-series@L172-L177
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-series@L172-L177
CONTRACT_ID: step:p1:neu-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: X=A^-1 Delta; |A^-1||Delta|<=1/2; matrix norm facts; |I|=1
SOURCE_QUANTIFIERS: square matrices
SOURCE_CONCLUSION: |X^j|<=2^-j, S=sum_j (-X)^j converges absolutely, |S|<=2, S(I+X)=(I+X)S=I
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms, bp:p1:operator-norms
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-series@L173-L173 | cited at this line (step; \ref{bp:p1:matrix-norms})
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-series@L176-L176 | cited at this line (step; \ref{bp:p1:operator-norms})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:neu-inverse
KIND: step
TITLE: The inverse of $A+\Delta$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L179-L181
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L179-L181
CONTRACT_ID: step:p1:neu-inverse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A+Delta=A(I+X); S=(I+X)^-1 with |S|<=2
SOURCE_QUANTIFIERS: A,Delta as in lemma
SOURCE_CONCLUSION: A+Delta invertible with inverse S A^-1 and |(A+Delta)^-1|<=2|A^-1|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:neu-series, bp:p1:matrix-norms
EDGE: step:p1:neu-series | blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L180-L180 | S is the inverse of I+X with norm at most 2
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-inverse@L181-L181 | submultiplicativity
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:neu-difference
KIND: step
TITLE: The difference
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L183-L185
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L183-L185
CONTRACT_ID: step:p1:neu-difference
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A+Delta invertible, |(A+Delta)^-1|<=2|A^-1|
SOURCE_QUANTIFIERS: as in lemma
SOURCE_CONCLUSION: (A+Delta)^-1-A^-1=-(A+Delta)^-1 Delta A^-1 and |.|<=2|A^-1|^2|Delta|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:neu-inverse, bp:p1:matrix-norms
EDGE: step:p1:neu-inverse | blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L184-L184 | inverse and its bound
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:neu-difference@L185-L185 | submultiplicativity
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:neu-pointwise
KIND: step
TITLE: Matrix-valued functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L187-L190
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L187-L190
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
EDGE: step:p1:neu-inverse | blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L190-L190 | conclusions applied at each theta
EDGE: step:p1:neu-difference | blueprint/parts/p1-analysis.tex#step:p1:neu-pointwise@L190-L190 | conclusions applied at each theta
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:real-inverse
KIND: lemma
TITLE: Real inverses
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L193-L196
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L198-L204
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
EDGE: step:p1:ri-adjugate | blueprint/parts/p1-analysis.tex#bp:p1:real-inverse@L199-L199 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ri-adjugate
KIND: step
TITLE: Adjugate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L199-L203
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L199-L203
CONTRACT_ID: step:p1:ri-adjugate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A real invertible; Cramer's rule
SOURCE_QUANTIFIERS: A real invertible
SOURCE_CONCLUSION: A^-1=(det A)^-1 adj A is real; the pointwise claim is the same at each real theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cramer
EDGE: bp:p1:ext-cramer | blueprint/parts/p1-analysis.tex#step:p1:ri-adjugate@L202-L202 | cited at this line (step; \ref{bp:p1:ext-cramer})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:holomorphic-regularity
KIND: lemma
TITLE: Derivatives of holomorphic maps
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L215-L224
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L226-L282
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
EDGE: step:p1:hreg-line | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L227-L227 | proof step of this result
EDGE: step:p1:hreg-integral | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L235-L235 | proof step of this result
EDGE: step:p1:hreg-differentiate | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L244-L244 | proof step of this result
EDGE: step:p1:hreg-full | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L262-L262 | proof step of this result
EDGE: step:p1:hreg-orders | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L269-L269 | proof step of this result
EDGE: step:p1:hreg-symmetry | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-regularity@L278-L278 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-line
KIND: step
TITLE: Cauchy's estimate along lines
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L227-L233
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L227-L233
CONTRACT_ID: step:p1:hreg-line
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x in U, r>0 with closed polydisc P-bar(x,r) in U and |F|<=A on it; v with |v|=1; Cauchy formulas (E1)
SOURCE_QUANTIFIERS: x,r,A,v arbitrary with those properties
SOURCE_CONCLUSION: |DF(x)v|<=A/r for |v|=1 and hence |DF(x)|<=A/r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cauchy
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:hreg-line@L231-L231 | cited at this line (step; \ref{bp:p1:ext-cauchy})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-integral
KIND: step
TITLE: A Cauchy integral for the derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L235-L242
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L235-L242
CONTRACT_ID: step:p1:hreg-integral
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: z_0 in U, r>0, P-bar(z_0,3r) in U, A=max |F| there; |v|=1; x in P(z_0,r); Cauchy formula (E1)
SOURCE_QUANTIFIERS: z_0,r,A fixed; v, x then arbitrary
SOURCE_CONCLUSION: DF(x)v=(2 pi i)^-1 oint_{|zeta|=r} F(x+zeta v)/zeta^2 dzeta for x in P(z_0,r)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cauchy
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:hreg-integral@L239-L239 | cited at this line (step; \ref{bp:p1:ext-cauchy})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-differentiate
KIND: step
TITLE: Differentiation under the integral
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L244-L260
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L244-L260
CONTRACT_ID: step:p1:hreg-differentiate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Cauchy integral for DF(x)v; |DF(y)|<=A/r on P-bar(z_0,2r) (line estimate); x in P(z_0,r); |h|<r-|x-z_0|; MVT and dominated convergence (E4,E6)
SOURCE_QUANTIFIERS: z_0,r,A,v fixed; x; then h
SOURCE_CONCLUSION: x->DF(x)v is complex differentiable at x in P(z_0,r) with derivative h->(2 pi i)^-1 oint DF(x+zeta v)h zeta^-2 dzeta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-line, step:p1:hreg-integral, bp:p1:ext-mvt, bp:p1:ext-integral
EDGE: step:p1:hreg-line | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L246-L246 | line-estimate bound on DF(y)
EDGE: step:p1:hreg-integral | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L257-L257 | Cauchy integral for DF(x)v
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L251-L251 | bound on R(h,zeta)
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:hreg-differentiate@L253-L253 | dominated convergence
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-full
KIND: step
TITLE: The full derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L262-L267
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L262-L267
CONTRACT_ID: step:p1:hreg-full
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x->DF(x)v is holomorphic on P(z_0,r) for v=e_1..e_m
SOURCE_QUANTIFIERS: z_0 in U arbitrary
SOURCE_CONCLUSION: DF is holomorphic on P(z_0,r), hence on U
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-differentiate
EDGE: step:p1:hreg-differentiate | blueprint/parts/p1-analysis.tex#step:p1:hreg-full@L263-L263 | cited at this line (step; \ref{step:p1:hreg-differentiate})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-orders
KIND: step
TITLE: All orders
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L269-L276
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L269-L276
CONTRACT_ID: step:p1:hreg-orders
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: DF holomorphic for every holomorphic F with values in a finite-dimensional space; canonical isometry L(C^m,L^j(C^m,W)) = L^{j+1}(C^m,W)
SOURCE_QUANTIFIERS: j>=1; F, DF as the maps
SOURCE_CONCLUSION: every D^jF exists and is holomorphic, F is C^infty, and the norm identities |D^{j+1}F|=|D^j(DF)|=|D(D^jF)|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-full
EDGE: step:p1:hreg-full | blueprint/parts/p1-analysis.tex#step:p1:hreg-orders@L272-L272 | DF holomorphic, applied inductively to D^jF
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hreg-symmetry
KIND: step
TITLE: Symmetry
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L278-L281
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L278-L281
CONTRACT_ID: step:p1:hreg-symmetry
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: F differentiable on open U; DF differentiable at every z in U (full-derivative step); Schwarz (E5)
SOURCE_QUANTIFIERS: z in U; v,w
SOURCE_CONCLUSION: D^2F(z) symmetric; d_i d_j F=d_j d_i F
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-full, bp:p1:ext-schwarz
EDGE: step:p1:hreg-full | blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L279-L279 | DF differentiable
EDGE: bp:p1:ext-schwarz | blueprint/parts/p1-analysis.tex#step:p1:hreg-symmetry@L280-L280 | symmetry of D^2F(z)
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:holomorphic-analytic
KIND: lemma
TITLE: Holomorphic maps are analytic
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L284-L300
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L302-L350
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
EDGE: step:p1:han-margin | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L303-L303 | proof step of this result
EDGE: step:p1:han-cauchy | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L307-L307 | proof step of this result
EDGE: step:p1:han-series | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L321-L321 | proof step of this result
EDGE: step:p1:han-bounds | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L333-L333 | proof step of this result
EDGE: step:p1:han-real | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-analytic@L340-L340 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-margin
KIND: step
TITLE: A larger polydisc
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-margin@L303-L305
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-margin@L303-L305
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
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-cauchy
KIND: step
TITLE: Iterated Cauchy formula
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L307-L319
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L307-L319
CONTRACT_ID: step:p1:han-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r_1>r margin; w in P(z_0,r); circles C_j of radius r; Cauchy formula (E1); Fubini (E6)
SOURCE_QUANTIFIERS: w in P(z_0,r); circles C_j around z_{0,j}
SOURCE_CONCLUSION: F(w)=(2 pi i)^-m oint_{C_1}...oint_{C_m} F(zeta)/prod(zeta_j-w_j) dzeta, as an integral over the torus C_1x...xC_m
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-margin, bp:p1:ext-cauchy, bp:p1:ext-integral
EDGE: step:p1:han-margin | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L311-L311 | r_1>r so integrand holomorphic on larger disc
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L312-L312 | first Cauchy formula in each variable
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:han-cauchy@L319-L319 | Fubini
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-series
KIND: step
TITLE: Geometric expansion
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-series@L321-L331
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-series@L321-L331
CONTRACT_ID: step:p1:han-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Iterated Cauchy formula; t=|w-z_0|/r<1; term-by-term integration (E6)
SOURCE_QUANTIFIERS: w in P(z_0,r); zeta on the torus
SOURCE_CONCLUSION: F(w)=sum_alpha c_alpha (w-z_0)^alpha with c_alpha=(2 pi i)^-m oint...oint F(zeta)/prod(zeta_j-z_{0,j})^{alpha_j+1}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-cauchy, bp:p1:ext-integral
EDGE: step:p1:han-cauchy | blueprint/parts/p1-analysis.tex#step:p1:han-series@L322-L322 | iterated Cauchy formula expanded
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:han-series@L326-L326 | term-by-term integration
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-bounds
KIND: step
TITLE: Coefficient bounds
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L333-L338
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L333-L338
CONTRACT_ID: step:p1:han-bounds
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: coefficient formula for c_alpha; |F|<=A on the torus; circles of length 2 pi r
SOURCE_QUANTIFIERS: alpha in N^m; w in P(z_0,r)
SOURCE_CONCLUSION: |c_alpha|<=A r^-|alpha|; sum |c_alpha||(w-z_0)^alpha|<=A(1-t)^-m; part (a) holds
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-series, bp:p1:ext-integral
EDGE: step:p1:han-series | blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L334-L334 | coefficient formula
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:han-bounds@L334-L334 | integral estimate by length times sup
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:han-real
KIND: step
TITLE: Real points
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-real@L340-L349
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:han-real@L340-L349
CONTRACT_ID: step:p1:han-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: part (a); x_0 in U_R, r>0 with P-bar(x_0,r) in U
SOURCE_QUANTIFIERS: real x with |x-x_0|<r; W=C^p with F real on U_R for the second clause
SOURCE_CONCLUSION: F|U_R is a real power series in x-x_0, absolutely convergent near x_0; with real F, F(x)=sum (Re c_alpha)(x-x_0)^alpha, |Re c_alpha|<=|c_alpha|; this is (b)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:han-bounds
EDGE: step:p1:han-bounds | blueprint/parts/p1-analysis.tex#step:p1:han-real@L341-L341 | part (a) established
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:uniform-limits
KIND: lemma
TITLE: Uniform limits
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L352-L356
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L358-L390
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
EDGE: step:p1:ul-differences | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L362-L362 | proof step of this result
EDGE: step:p1:ul-limit | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L369-L369 | proof step of this result
EDGE: step:p1:ul-derivative | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L376-L376 | proof step of this result
EDGE: step:p1:ul-primary | blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L384-L384 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ul-differences
KIND: step
TITLE: Linearization error of the differences
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L362-L367
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L362-L367
CONTRACT_ID: step:p1:ul-differences
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: V in C^m open; eta_s=sup_V|DK_s-Lambda| finite and ->0 for large s; x in V, r>0 with P(x,r) in V; MVT (E4)
SOURCE_QUANTIFIERS: x,r fixed; indices s,t; y in P(x,r)
SOURCE_CONCLUSION: |phi_st(y)-phi_st(x)|<=2(eta_s+eta_t)|y-x| for phi_st(y)=K_s(y)-K_t(y)-(DK_s(x)-DK_t(x))(y-x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-mvt
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:ul-differences@L366-L366 | cited at this line (step; \ref{bp:p1:ext-mvt})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ul-limit
KIND: step
TITLE: Passage to the limit
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L369-L374
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L369-L374
CONTRACT_ID: step:p1:ul-limit
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: difference estimate for K_s-K_t; K_t->K pointwise, DK_t(x)->Lambda(x), eta_t->0
SOURCE_QUANTIFIERS: x,r,s fixed; y in P(x,r); t->infinity
SOURCE_CONCLUSION: |K_s(y)-K(y)-(K_s(x)-K(x))-(DK_s(x)-Lambda(x))(y-x)|<=2 eta_s|y-x|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ul-differences
EDGE: step:p1:ul-differences | blueprint/parts/p1-analysis.tex#step:p1:ul-limit@L370-L370 | difference estimate passed to limit
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ul-derivative
KIND: step
TITLE: Differentiability of the limit
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L376-L382
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L376-L382
CONTRACT_ID: step:p1:ul-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: limit estimate with 2 eta_s|y-x|; K_s differentiable at x; eps>0
SOURCE_QUANTIFIERS: eps>0, then s, then r'<=r
SOURCE_CONCLUSION: |K(y)-K(x)-Lambda(x)(y-x)|<=eps|y-x| for |y-x|<r'; Lambda(x) complex linear; K complex differentiable at x with DK(x)=Lambda(x)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ul-limit
EDGE: step:p1:ul-limit | blueprint/parts/p1-analysis.tex#step:p1:ul-derivative@L379-L379 | cited at this line (step; \ref{step:p1:ul-limit})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ul-primary
KIND: step
TITLE: Periodicity and realness
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L384-L389
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L384-L389
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
EDGE: bp:p0:stripdata#IsPrimaryOnStrip | blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L385-L385 | primary on T_r
EDGE: bp:p0:stripdata#IsRealOnReals | blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L388-L388 | real on reals
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L385-L385 | strip T_r
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:holomorphic-inverse
KIND: lemma
TITLE: Holomorphic inverse
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L392-L395
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L397-L411
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
EDGE: step:p1:hi-holomorphic | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L400-L400 | proof step of this result
EDGE: step:p1:hi-derivative | blueprint/parts/p1-analysis.tex#bp:p1:holomorphic-inverse@L406-L406 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hi-holomorphic
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L400-L404
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L400-L404
CONTRACT_ID: step:p1:hi-holomorphic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A:V->C^{p x p} holomorphic, det A != 0; Cramer (E10)
SOURCE_QUANTIFIERS: on V
SOURCE_CONCLUSION: A^-1=(det A)^-1 adj A is holomorphic on V
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cramer
EDGE: bp:p1:ext-cramer | blueprint/parts/p1-analysis.tex#step:p1:hi-holomorphic@L401-L401 | cited at this line (step; \ref{bp:p1:ext-cramer})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:hi-derivative
KIND: step
TITLE: Derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L406-L410
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L406-L410
CONTRACT_ID: step:p1:hi-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: A^-1 holomorphic on V; A(z)A(z)^-1=I
SOURCE_QUANTIFIERS: z in V; direction v
SOURCE_CONCLUSION: D(A^-1)(z)v=-A(z)^-1 (DA(z)v) A(z)^-1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hi-holomorphic
EDGE: step:p1:hi-holomorphic | blueprint/parts/p1-analysis.tex#step:p1:hi-derivative@L407-L407 | A^-1 differentiable so product rule applies
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:increments-open
KIND: lemma
TITLE: Increments on open sets
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L413-L416
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L418-L422
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
EDGE: step:p1:io-mvt | blueprint/parts/p1-analysis.tex#bp:p1:increments-open@L419-L419 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:io-mvt
KIND: step
TITLE: Mean value inequality
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L419-L421
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L419-L421
CONTRACT_ID: step:p1:io-mvt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: [z,z+w] convex in U; F differentiable on it; |DF|<=A there; MVT (E4)
SOURCE_QUANTIFIERS: z,w
SOURCE_CONCLUSION: |F(z+w)-F(z)|<=A|w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-mvt
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:io-mvt@L421-L421 | cited at this line (step; \ref{bp:p1:ext-mvt})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:taylor
KIND: lemma
TITLE: Second-order Taylor bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:taylor@L424-L427
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:taylor@L429-L440
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
EDGE: step:p1:tay-lipschitz | blueprint/parts/p1-analysis.tex#bp:p1:taylor@L430-L430 | proof step of this result
EDGE: step:p1:tay-integrate | blueprint/parts/p1-analysis.tex#bp:p1:taylor@L435-L435 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:tay-lipschitz
KIND: step
TITLE: The derivative along the segment
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L430-L433
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L430-L433
CONTRACT_ID: step:p1:tay-lipschitz
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: DF holomorphic on U (derivative regularity); |D(DF)|=|D^2F|<=A; [z,z+w] in U
SOURCE_QUANTIFIERS: t in [0,1]
SOURCE_CONCLUSION: |DF(z+tw)-DF(z)|<=A t|w|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:increments-open
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L431-L431 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
EDGE: bp:p1:increments-open | blueprint/parts/p1-analysis.tex#step:p1:tay-lipschitz@L432-L432 | cited at this line (step; \ref{bp:p1:increments-open})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:tay-integrate
KIND: step
TITLE: Integration
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L435-L439
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L435-L439
CONTRACT_ID: step:p1:tay-integrate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: Lipschitz bound on DF along the segment; g(t)=F(z+tw)-F(z)-t DF(z)w C^1 on an open interval containing [0,1], g(0)=0; FTC and |int|<=int|.| (E6)
SOURCE_QUANTIFIERS: z,w fixed; t in [0,1]
SOURCE_CONCLUSION: |g(1)|<=int_0^1 A t|w|^2 dt = (A/2)|w|^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:tay-lipschitz, bp:p1:holomorphic-regularity, bp:p1:ext-integral
EDGE: step:p1:tay-lipschitz | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L438-L438 | bound on g'
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L437-L437 | DF continuous so g is C^1
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:tay-integrate@L438-L438 | fundamental theorem of calculus and norm of an integral
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cauchy-open
KIND: lemma
TITLE: Cauchy estimate on open sets
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L462-L467
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L469-L496
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
EDGE: step:p1:co-first | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L472-L472 | proof step of this result
EDGE: step:p1:co-second | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L478-L478 | proof step of this result
EDGE: step:p1:co-third | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L487-L487 | proof step of this result
EDGE: step:p1:co-constants | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-open@L494-L494 | proof step of this result
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:co-first
KIND: step
TITLE: First derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-first@L472-L476
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-first@L472-L476
CONTRACT_ID: step:p1:co-first
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: only |f|<=A on P-bar(z,delta) is used; line estimate of derivative regularity with x=z, r=delta
SOURCE_QUANTIFIERS: l
SOURCE_CONCLUSION: |Df(z)|<=A/delta and |d_l f(z)|<=A/delta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:hreg-line
EDGE: step:p1:hreg-line | blueprint/parts/p1-analysis.tex#step:p1:co-first@L473-L473 | line estimate with x=z, r=delta
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:co-second
KIND: step
TITLE: Second derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-second@L478-L485
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-second@L478-L485
CONTRACT_ID: step:p1:co-second
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: P-bar(z,delta) in U, |f|<=A there; first-derivative bound; Df holomorphic
SOURCE_QUANTIFIERS: y in P-bar(z,delta/2)
SOURCE_CONCLUSION: |Df(y)|<=2A/delta on P-bar(z,delta/2) and |D^2f(z)|<=4A/delta^2
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-first, bp:p1:holomorphic-regularity
EDGE: step:p1:co-first | blueprint/parts/p1-analysis.tex#step:p1:co-second@L481-L481 | cited at this line (step; \ref{step:p1:co-first})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:co-second@L482-L482 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:co-third
KIND: step
TITLE: Third derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-third@L487-L492
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-third@L487-L492
CONTRACT_ID: step:p1:co-third
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: second-derivative bound; Df holomorphic with |Df|<=2A/delta on P-bar(z,delta/2)
SOURCE_QUANTIFIERS: z, radius delta/2
SOURCE_CONCLUSION: |D^2(Df)(z)|<=32A/delta^3 and |D^3f(z)|<=32A/delta^3
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-second, bp:p1:holomorphic-regularity
EDGE: step:p1:co-second | blueprint/parts/p1-analysis.tex#step:p1:co-third@L488-L488 | cited at this line (step; \ref{step:p1:co-second})
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:co-third@L491-L491 | cited at this line (step; \ref{bp:p1:holomorphic-regularity})
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:co-constants
KIND: step
TITLE: Constants
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-constants@L494-L495
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:co-constants@L494-L495
CONTRACT_ID: step:p1:co-constants
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: first, second and third derivative bounds
SOURCE_QUANTIFIERS: j=1,2,3
SOURCE_CONCLUSION: the lemma holds with c(m,1)=1, c(m,2)=4, c(m,3)=32, independent of m
CONSTANT_SCOPE: constants are absolute (independent of m)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:co-first, step:p1:co-second, step:p1:co-third
EDGE: step:p1:co-first | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L495-L495 | c(m,1)=1
EDGE: step:p1:co-second | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L495-L495 | c(m,2)=4
EDGE: step:p1:co-third | blueprint/parts/p1-analysis.tex#step:p1:co-constants@L495-L495 | c(m,3)=32
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: PROPOSED
EXTRACTOR: sonnet-extract-K-p1a
REVIEWER: -
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
