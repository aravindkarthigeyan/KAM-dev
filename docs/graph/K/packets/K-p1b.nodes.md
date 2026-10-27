NODE: bp:p1:periodic-bounded
KIND: lemma
TITLE: Periodic functions are bounded on smaller strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L515-L517
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L519-L527
CONTRACT_ID: bp:p1:periodic-bounded
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic and 1-periodic on T_rho, values in W
SOURCE_QUANTIFIERS: rho>0; every holomorphic 1-periodic u:T_rho -> W; every real rho'<rho, including rho'<=0
SOURCE_CONCLUSION: u is bounded on T_rho'
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:pb-compact, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:pb-compact | blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L520-L520 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L515-L515 | strip T_rho used by name
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:pb-compact
KIND: step
TITLE: A compact fundamental set
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pb-compact@L520-L526
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pb-compact@L520-L526
CONTRACT_ID: step:p1:pb-compact
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic and 1-periodic on T_rho; rho'<rho
SOURCE_QUANTIFIERS: rho>0, u fixed; every real rho'<rho
SOURCE_CONCLUSION: if rho'<=0 then T_rho' is empty; if 0<rho'<rho then the compact fundamental set S at L512 is contained in T_rho and sup_{T_rho'} |u| <= max_S |u|; hence boundedness in both cases
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:strip-identity
KIND: lemma
TITLE: Identity theorem on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L529-L532
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L534-L544
CONTRACT_ID: bp:p1:strip-identity
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: r>0; v holomorphic on T_r with values in W; v(x)=0 for all real x
SOURCE_QUANTIFIERS: r>0 ; v
SOURCE_CONCLUSION: v=0 on T_r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:si-induction, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:si-induction | blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L535-L535 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L530-L530 | strip T_r used by name
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:si-induction
KIND: step
TITLE: One coordinate at a time
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:si-induction@L535-L543
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:si-induction@L535-L543
CONTRACT_ID: step:p1:si-induction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v holomorphic on T_r, vanishing on R^n
SOURCE_QUANTIFIERS: j from 1 to n; theta in T_r with theta_{j+1..n} real
SOURCE_CONCLUSION: claim (S_n): v=0 on T_r, by induction on (S_j)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-identity
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-identity | blueprint/parts/p1-analysis.tex#step:p1:si-induction@L542-L542 | one-variable identity theorem applied to coordinates of phi
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:increments
KIND: lemma
TITLE: Increments
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments@L549-L553
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments@L555-L564
CONTRACT_ID: bp:p1:increments
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic on T_rho; 0<delta<rho; theta, theta+v in T_{rho-delta}; (second claim) u bounded on T_rho
SOURCE_QUANTIFIERS: rho, delta, u; theta, v
SOURCE_CONCLUSION: |u(theta+v)-u(theta)| <= ||Du||_{rho-delta}|v|; if u bounded, this is <= n delta^-1 ||u||_rho |v|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:inc-mvt, step:p1:inc-cauchy, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:inc-mvt | blueprint/parts/p1-analysis.tex#bp:p1:increments@L556-L556 | proof step of this result
EDGE: step:p1:inc-cauchy | blueprint/parts/p1-analysis.tex#bp:p1:increments@L561-L561 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:increments@L550-L550 | strip T_rho used by name
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:inc-mvt
KIND: step
TITLE: Mean value inequality
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L556-L559
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L556-L559
CONTRACT_ID: step:p1:inc-mvt
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic on T_rho; 0<delta<rho; theta, theta+v in T_{rho-delta} (convex)
SOURCE_QUANTIFIERS: theta, v
SOURCE_CONCLUSION: |u(theta+v)-u(theta)| <= ||Du||_{rho-delta}|v|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-mvt
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L558-L558 | mean value inequality on the segment
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:inc-cauchy
KIND: step
TITLE: With the Cauchy estimate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L561-L563
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L561-L563
CONTRACT_ID: step:p1:inc-cauchy
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u bounded holomorphic on T_rho; 0<delta<rho
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: ||Du||_{rho-delta} <= n delta^-1 ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cauchy-strip
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cauchy-strip | blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L562-L562 | Cauchy estimate on strips
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cauchy-strip
KIND: lemma
TITLE: Cauchy estimate on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L566-L572
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L574-L595
CONTRACT_ID: bp:p1:cauchy-strip
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic and bounded on T_rho; 0<delta<rho; u scalar, vector (max norm) or matrix (operator norm) valued
SOURCE_QUANTIFIERS: rho, delta, u; every ell
SOURCE_CONCLUSION: ||d_ell u||_{rho-delta} <= delta^-1 ||u||_rho and ||Du||_{rho-delta} <= n delta^-1 ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs-coordinate, step:p1:cs-full, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L577-L577 | proof step of this result
EDGE: step:p1:cs-full | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L587-L587 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L567-L567 | strip T_rho used by name
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cs-coordinate
KIND: step
TITLE: One coordinate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L577-L585
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L577-L585
CONTRACT_ID: step:p1:cs-coordinate
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic bounded on T_rho, 0<delta<rho, theta in T_{rho-delta}, 1<=ell<=n
SOURCE_QUANTIFIERS: theta, ell
SOURCE_CONCLUSION: |d_ell u(theta)| <= delta^-1 ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-cauchy
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L582-L582 | one-variable Cauchy estimate on the circle of radius delta
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cs-full
KIND: step
TITLE: The full derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-full@L587-L594
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-full@L587-L594
CONTRACT_ID: step:p1:cs-full
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: coordinate bound of the previous step; theta in T_{rho-delta}
SOURCE_QUANTIFIERS: v in C^n
SOURCE_CONCLUSION: |Du(theta)| <= n delta^-1 ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs-coordinate, bp:p1:operator-norms
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#step:p1:cs-full@L588-L588 | previous step: bound on each d_ell u
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:cs-full@L593-L593 | operator norm equals row-sum norm of the Jacobian
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cauchy-corollaries
KIND: lemma
TITLE: Cauchy corollaries
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L615-L619
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L621-L635
CONTRACT_ID: bp:p1:cauchy-corollaries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f holomorphic and bounded on T_rho; 0<delta<rho; f valued in C^p (first claim) or C^p / C^{pxq} (second claim)
SOURCE_QUANTIFIERS: rho, delta, f, omega
SOURCE_CONCLUSION: ||(Df)^T||_{rho-delta} <= p delta^-1 ||f||_rho; ||d_omega f||_{rho-delta} <= |omega|_1 delta^-1 ||f||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cc-transpose, step:p1:cc-omega, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cc-transpose | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L624-L624 | proof step of this result
EDGE: step:p1:cc-omega | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L631-L631 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L616-L616 | strip T_rho used by name
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cc-transpose
KIND: step
TITLE: Transposed derivative
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L624-L629
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L624-L629
CONTRACT_ID: step:p1:cc-transpose
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f holomorphic bounded on T_rho with values in C^p; theta in T_{rho-delta}
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: row sums of (Df(theta))^T are <= p delta^-1 ||f||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs-coordinate
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L628-L628 | coordinate Cauchy bound for d_ell f
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:cc-omega
KIND: step
TITLE: Derivative along $\omega$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L631-L634
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L631-L634
CONTRACT_ID: step:p1:cc-omega
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: f holomorphic bounded on T_rho with values in any W; theta in T_{rho-delta}
SOURCE_QUANTIFIERS: theta
SOURCE_CONCLUSION: |d_omega f(theta)| <= |omega|_1 delta^-1 ||f||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:cs-coordinate
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L632-L632 | coordinate Cauchy bound for d_ell f
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:averages-real
KIND: lemma
TITLE: Averages of functions on the real torus
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L644-L647
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L649-L661
CONTRACT_ID: bp:p1:averages-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v:R^n->C continuous, 1-periodic, differentiable with continuous derivative
SOURCE_QUANTIFIERS: v; ell; omega
SOURCE_CONCLUSION: <d_ell v>=0 and <Dv omega>=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:ar-one, step:p1:ar-fubini
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:ar-one | blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L650-L650 | proof step of this result
EDGE: step:p1:ar-fubini | blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L656-L656 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ar-one
KIND: step
TITLE: One variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-one@L650-L654
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-one@L650-L654
CONTRACT_ID: step:p1:ar-one
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v as in the lemma; ell and the other coordinates x' fixed
SOURCE_QUANTIFIERS: x' in [0,1]^(n-1)
SOURCE_CONCLUSION: integral over [0,1] of d_ell v in x_ell is 0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:ar-one@L653-L653 | fundamental theorem of calculus on [0,1]
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:ar-fubini
KIND: step
TITLE: Fubini
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L656-L660
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L656-L660
CONTRACT_ID: step:p1:ar-fubini
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: d_ell v continuous on [0,1]^n; previous step
SOURCE_QUANTIFIERS: ell
SOURCE_CONCLUSION: <d_ell v>=0 and <Dv omega>=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral, step:p1:ar-one
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L657-L657 | Fubini
EDGE: step:p1:ar-one | blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L658-L658 | inner integral vanishes
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:averages
KIND: lemma
TITLE: Averages
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages@L663-L667
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages@L669-L682
CONTRACT_ID: bp:p1:averages
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v holomorphic, bounded and 1-periodic on T_rho; scalar, C^p or C^{pxq} valued
SOURCE_QUANTIFIERS: rho, v; ell; omega
SOURCE_CONCLUSION: <d_theta_ell v>=0, <Dv omega>=0, |avg(v)| <= ||v||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:av-derivatives, step:p1:av-bound, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:av-derivatives | blueprint/parts/p1-analysis.tex#bp:p1:averages@L670-L670 | proof step of this result
EDGE: step:p1:av-bound | blueprint/parts/p1-analysis.tex#bp:p1:averages@L677-L677 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:averages@L664-L664 | strip T_rho used by name
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:av-derivatives
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L670-L675
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L670-L675
CONTRACT_ID: step:p1:av-derivatives
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v holomorphic 1-periodic on T_rho
SOURCE_QUANTIFIERS: ell; omega
SOURCE_CONCLUSION: <d_ell v>=0 and <Dv omega>=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:averages-real
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L672-L672 | d_ell v holomorphic hence continuous
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L674-L674 | averages of derivatives on the real torus
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:av-bound
KIND: step
TITLE: The bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-bound@L677-L681
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-bound@L677-L681
CONTRACT_ID: step:p1:av-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v bounded on T_rho; [0,1]^n has measure 1
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: |avg(v)| <= sup over R^n of |v| <= ||v||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:av-bound@L678-L678 | norm of an integral is at most integral of the norm
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:averages-matrix
KIND: lemma
TITLE: Averages of matrix-valued functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L684-L687
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L689-L697
CONTRACT_ID: bp:p1:averages-matrix
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M continuous, 1-periodic and matrix valued on R^n; (second claim) M is C^1
SOURCE_QUANTIFIERS: M; omega
SOURCE_CONCLUSION: |avg(M)| <= sup over R^n of |M|; and <d_omega M>=0 if M is C^1
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:am-bound, step:p1:am-derivative
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:am-bound | blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L690-L690 | proof step of this result
EDGE: step:p1:am-derivative | blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L694-L694 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:am-bound
KIND: step
TITLE: The bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-bound@L690-L692
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-bound@L690-L692
CONTRACT_ID: step:p1:am-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M continuous 1-periodic matrix valued
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: |avg(M)| <= sup |M| (operator norm)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:am-bound@L691-L691 | norm of an integral is at most integral of the norm
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:am-derivative
KIND: step
TITLE: Derivative along $\omega$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-derivative@L694-L696
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-derivative@L694-L696
CONTRACT_ID: step:p1:am-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M is C^1, 1-periodic
SOURCE_QUANTIFIERS: omega
SOURCE_CONCLUSION: <d_omega M>=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:averages-real
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:am-derivative@L696-L696 | applied to each entry
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:periodic-average
KIND: lemma
TITLE: Translation invariance of averages
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L699-L701
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L703-L715
CONTRACT_ID: bp:p1:periodic-average
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v continuous and 1-periodic on R^n
SOURCE_QUANTIFIERS: v; a in R^n
SOURCE_CONCLUSION: avg(v(.+a)) = avg(v)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:pa-one, step:p1:pa-induction
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:pa-one | blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L704-L704 | proof step of this result
EDGE: step:p1:pa-induction | blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L709-L709 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:pa-one
KIND: step
TITLE: One variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-one@L704-L707
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-one@L704-L707
CONTRACT_ID: step:p1:pa-one
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: psi:R->C continuous 1-periodic
SOURCE_QUANTIFIERS: b in R
SOURCE_CONCLUSION: integral over [0,1] of psi(x+b) dx equals integral of psi
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:pa-one@L706-L706 | differentiation of the integral in its limits
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:pa-induction
KIND: step
TITLE: One coordinate at a time
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L709-L714
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L709-L714
CONTRACT_ID: step:p1:pa-induction
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v continuous 1-periodic; a^(j)=(a_1..a_j,0..0)
SOURCE_QUANTIFIERS: 1<=j<=n
SOURCE_CONCLUSION: avg(v(.+a^(j))) = avg(v(.+a^(j-1))), hence avg(v(.+a))=avg(v)
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral, step:p1:pa-one
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L711-L711 | Fubini
EDGE: step:p1:pa-one | blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L712-L712 | one-variable shift invariance
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:exp-sums
KIND: lemma
TITLE: Exponential sums over $\Z^n$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L725-L732
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L734-L753
CONTRACT_ID: bp:p1:exp-sums
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: n>=1; (a) y>=0, a>0, tau>=0; (b) x>0; (c) x>0
SOURCE_QUANTIFIERS: n; y, a, tau, x
SOURCE_CONCLUSION: (a) y^tau e^{-ay} <= (tau/(ea))^tau; (b) sum over Z^n of e^{-x|k|_1} = coth(x/2)^n and coth(x/2) <= 1+2/x; (c) sum over k!=0 of e^{-x|k|_1} <= (8n/x)^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:es-power, step:p1:es-product, step:p1:es-nonzero
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:es-power | blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L735-L735 | proof step of this result
EDGE: step:p1:es-product | blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L740-L740 | proof step of this result
EDGE: step:p1:es-nonzero | blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L745-L745 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:es-power
KIND: step
TITLE: The power times the exponential
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-power@L735-L738
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-power@L735-L738
CONTRACT_ID: step:p1:es-power
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: y>=0, a>0, tau>=0
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: (a) y^tau e^{-ay} <= (tau/(ea))^tau
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:es-product
KIND: step
TITLE: Product structure
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-product@L740-L743
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-product@L740-L743
CONTRACT_ID: step:p1:es-product
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x>0
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: (b) sum over Z^n of e^{-x|k|_1} = coth(x/2)^n and coth(x/2) <= 1+2/x
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:es-nonzero
KIND: step
TITLE: Nonzero modes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L745-L752
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L745-L752
CONTRACT_ID: step:p1:es-nonzero
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: x>0; parts (a) and (b)
SOURCE_QUANTIFIERS: none
SOURCE_CONCLUSION: (c) sum over k!=0 of e^{-x|k|_1} <= (8n/x)^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:es-product, step:p1:es-power
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:es-product | blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L746-L746 | part (b) with x/2
EDGE: step:p1:es-power | blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L751-L751 | part (a) for x^n e^{-x/2}
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:fourier-basic
KIND: lemma
TITLE: Fourier coefficients of periodic functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L755-L766
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L768-L782
CONTRACT_ID: bp:p1:fourier-basic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v C-valued (componentwise for vector/matrix); (a) v continuous, 1-periodic, C^1; (b) v continuous, 1-periodic, sum |hat v_k| finite; (c) r>0, v holomorphic and 1-periodic on T_r, not necessarily bounded, all hat v_k=0
SOURCE_QUANTIFIERS: v; k in Z^n; ell; omega in C^n; r
SOURCE_CONCLUSION: (a) hat(d_ell v)_k = 2 pi i k_ell hat v_k and hat(d_omega v)_k = 2 pi i (k.omega) hat v_k; (b) v(x)=sum hat v_k chi_k(x) for all x, so v=0 if all hat v_k=0; (c) v=0 on T_r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:fb-derivative, step:p1:fb-series, step:p1:fb-holomorphic, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:fb-derivative | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L769-L769 | proof step of this result
EDGE: step:p1:fb-series | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L776-L776 | proof step of this result
EDGE: step:p1:fb-holomorphic | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L779-L779 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L763-L763 | strip T_r used by name
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:fb-derivative
KIND: step
TITLE: Derivatives
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-derivative@L769-L774
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-derivative@L769-L774
CONTRACT_ID: step:p1:fb-derivative
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: part (a): v continuous, 1-periodic, C^1; w=v chi_{-k}
SOURCE_QUANTIFIERS: k; ell
SOURCE_CONCLUSION: hat(d_ell v)_k = 2 pi i k_ell hat v_k; same for d_omega
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:averages-real
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:fb-derivative@L771-L771 | <d_ell w>=0 for w=v chi_{-k}
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:fb-series
KIND: step
TITLE: Fourier series
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-series@L776-L777
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-series@L776-L777
CONTRACT_ID: step:p1:fb-series
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: part (b): v continuous, 1-periodic, summable coefficients
SOURCE_QUANTIFIERS: x in R^n
SOURCE_CONCLUSION: v(x)=sum hat v_k chi_k(x); v=0 if all coefficients vanish
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-fourier
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-fourier | blueprint/parts/p1-analysis.tex#step:p1:fb-series@L777-L777 | Fourier series of a continuous periodic function with summable coefficients
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:fb-holomorphic
KIND: step
TITLE: Holomorphic functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L779-L781
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L779-L781
CONTRACT_ID: step:p1:fb-holomorphic
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: part (c): v holomorphic 1-periodic on T_r with vanishing coefficients; part (b)
SOURCE_QUANTIFIERS: r
SOURCE_CONCLUSION: v=0 on T_r
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:fb-series, bp:p1:strip-identity
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:fb-series | blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L781-L781 | part (b): v=0 on R^n
EDGE: bp:p1:strip-identity | blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L781-L781 | identity theorem on strips
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:decay
KIND: lemma
TITLE: Coefficient decay
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay@L784-L787
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay@L789-L817
CONTRACT_ID: bp:p1:decay
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic, bounded and 1-periodic on T_rho
SOURCE_QUANTIFIERS: rho, u; k in Z^n; rho' with 0<=rho'<rho
SOURCE_CONCLUSION: |hat u_k| <= e^{-2 pi |k|_1 rho'} ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:dec-shift, step:p1:dec-bound, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:dec-shift | blueprint/parts/p1-analysis.tex#bp:p1:decay@L798-L798 | proof step of this result
EDGE: step:p1:dec-bound | blueprint/parts/p1-analysis.tex#bp:p1:decay@L811-L811 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:decay@L785-L785 | strip T_rho used by name
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:dec-shift
KIND: step
TITLE: Shifting one variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L798-L809
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L798-L809
CONTRACT_ID: step:p1:dec-shift
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic 1-periodic on T_rho, k, rho'<rho, t_j=-rho' sgn(k_j); I_j integrals
SOURCE_QUANTIFIERS: 1<=j<=n; x_l for l!=j
SOURCE_CONCLUSION: I_{j-1}=I_j for 1<=j<=n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-rectangle, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-rectangle | blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L804-L804 | Cauchy theorem on the rectangle
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L809-L809 | Fubini over the remaining coordinates
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:dec-bound
KIND: step
TITLE: The bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L811-L816
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L811-L816
CONTRACT_ID: step:p1:dec-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: I_n=hat u_k via the shifts; |u|<=||u||_rho
SOURCE_QUANTIFIERS: k; rho'
SOURCE_CONCLUSION: |hat u_k| = |I_n| <= e^{-2 pi rho' |k|_1} ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:dec-shift, bp:p1:ext-integral
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:dec-shift | blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L816-L816 | hat u_k = I_0 = ... = I_n
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L812-L816 | norm of the integral over a box of volume one bounds I_n by the displayed uniform integrand bound
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:summation
KIND: lemma
TITLE: Summation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:summation@L822-L829
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:summation@L831-L873
CONTRACT_ID: bp:p1:summation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: (forward) sum_k |a_k| e^{2 pi |k|_1 rho} finite; (converse) u as in decay, 0<delta<rho
SOURCE_QUANTIFIERS: rho, a_k, u, delta
SOURCE_CONCLUSION: u=sum a_k e^{2 pi i k.theta} holomorphic and 1-periodic on T_rho, hat u_k=a_k, ||u||_rho <= sum |a_k| e^{2 pi |k|_1 rho}; conversely sum |hat u_k| e^{2 pi |k|_1(rho-delta)} <= coth(pi delta)^n ||u||_rho and u equals its Fourier series on T_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:sum-bound, step:p1:sum-holo, step:p1:sum-coeff, step:p1:sum-converse, step:p1:sum-representation, bp:p1:decay, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#bp:p1:summation@L834-L834 | proof step of this result
EDGE: step:p1:sum-holo | blueprint/parts/p1-analysis.tex#bp:p1:summation@L839-L839 | proof step of this result
EDGE: step:p1:sum-coeff | blueprint/parts/p1-analysis.tex#bp:p1:summation@L851-L851 | proof step of this result
EDGE: step:p1:sum-converse | blueprint/parts/p1-analysis.tex#bp:p1:summation@L859-L859 | proof step of this result
EDGE: step:p1:sum-representation | blueprint/parts/p1-analysis.tex#bp:p1:summation@L867-L867 | proof step of this result
EDGE: bp:p1:decay | blueprint/parts/p1-analysis.tex#bp:p1:summation@L826-L826 | converse part is stated for u as in the decay lemma
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:summation@L823-L823 | strip T_rho used by name
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-bound
KIND: step
TITLE: Convergence and the bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-bound@L834-L837
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-bound@L834-L837
CONTRACT_ID: step:p1:sum-bound
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M=sum |a_k| e^{2 pi |k|_1 rho} finite; S_N partial sums
SOURCE_QUANTIFIERS: theta in T_rho
SOURCE_CONCLUSION: series converges absolutely and uniformly on T_rho, |u|<=M, u 1-periodic
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: -
ROUTES: -
ROUTE_FOR: -
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-holo
KIND: step
TITLE: Holomorphy
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L839-L849
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L839-L849
CONTRACT_ID: step:p1:sum-holo
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: M finite; u the uniform limit of S_N on T_rho
SOURCE_QUANTIFIERS: epsilon in (0,rho)
SOURCE_CONCLUSION: u holomorphic on T_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:exp-sums, bp:p1:uniform-limits, step:p1:sum-bound
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L841-L841 | part (a) with tau=1 bounds D chi_k terms
EDGE: bp:p1:uniform-limits | blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L847-L847 | uniform limit of holomorphic functions with uniformly convergent derivatives
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L847-L847 | S_N converges to u uniformly
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-coeff
KIND: step
TITLE: Coefficients
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L851-L857
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L851-L857
CONTRACT_ID: step:p1:sum-coeff
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: series converges uniformly on [0,1]^n
SOURCE_QUANTIFIERS: k
SOURCE_CONCLUSION: hat u_k = a_k
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:ext-integral, step:p1:sum-bound
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L852-L852 | term-by-term integration
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L852-L852 | uniform convergence of the series
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-converse
KIND: step
TITLE: The converse estimate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L859-L865
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L859-L865
CONTRACT_ID: step:p1:sum-converse
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic, bounded and 1-periodic on T_rho; 0<delta<rho (the boundary-radius decay is a dependency, not an extra premise)
SOURCE_QUANTIFIERS: delta
SOURCE_CONCLUSION: sum |hat u_k| e^{2 pi |k|_1 (rho-delta)} <= coth(pi delta)^n ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:decay#boundary-radius, bp:p1:exp-sums
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L861-L861 | part (b) with x=2 pi delta
EDGE: bp:p1:decay#boundary-radius | blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L860-L861 | the boundary-radius decay statement of L809-L810
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:sum-representation
KIND: step
TITLE: Fourier representation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L867-L872
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L867-L872
CONTRACT_ID: step:p1:sum-representation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u as in decay; converse estimate; first part of the lemma
SOURCE_QUANTIFIERS: theta in T_rho; delta with max|Im theta_j|<rho-delta
SOURCE_CONCLUSION: u equals sum hat u_k chi_k at theta
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:sum-converse, step:p1:sum-bound, step:p1:sum-holo, step:p1:sum-coeff, bp:p1:fourier-basic
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:sum-converse | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L869-L869 | summability of weighted coefficients
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L869-L869 | first part of the lemma: boundedness and periodicity
EDGE: step:p1:sum-holo | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L869-L869 | first part of the lemma: holomorphy
EDGE: step:p1:sum-coeff | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L870-L870 | first part of the lemma: hat v_k = hat u_k
EDGE: bp:p1:fourier-basic | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L872-L872 | part (c): vanishing coefficients imply zero
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cohomological
KIND: lemma
TITLE: Cohomological equation on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L885-L895
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L897-L967
CONTRACT_ID: bp:p1:cohomological
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: omega in Dio_{gamma,tau}, gamma>0, tau>=0; g holomorphic, bounded, 1-periodic on T_rho with avg(g)=0; 0<delta<rho; g real on real points (for realness); vector/matrix valued componentwise
SOURCE_QUANTIFIERS: fixed dimension n under the corpus conventions, and tau>=0; a constant c(n,tau) depending only on these; then every gamma>0, rho>0, Diophantine omega, datum g as stated and 0<delta<rho; then the unique zero-average solution u
SOURCE_CONCLUSION: there is a unique u holomorphic and 1-periodic on T_{rho-delta} (no boundedness assumed) with avg(u)=0 and Du(theta) omega=g(theta); u is bounded and ||u||_{rho-delta} <= c(n,tau) gamma^-1 delta^-(tau+n) ||g||_rho; u real on real points if g is
CONSTANT_SCOPE: c(n,tau) depends only on n and tau (not on gamma, rho, delta, omega, g)
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coh-data, step:p1:coh-coefficients, step:p1:coh-weighted, step:p1:coh-existence, step:p1:coh-equation, step:p1:coh-unique, step:p1:coh-real, step:p1:coh-vector, bp:p0:diophantine#IsDiophantine, bp:p0:domains#complexStrip
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coh-data | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L904-L904 | proof step of this result
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L908-L908 | proof step of this result
EDGE: step:p1:coh-weighted | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L915-L915 | proof step of this result
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L932-L932 | proof step of this result
EDGE: step:p1:coh-equation | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L937-L937 | proof step of this result
EDGE: step:p1:coh-unique | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L944-L944 | proof step of this result
EDGE: step:p1:coh-real | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L953-L953 | proof step of this result
EDGE: step:p1:coh-vector | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L960-L960 | proof step of this result
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L886-L886 | omega in Dio_{gamma,tau}
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L886-L886 | strip T_rho used by name
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-data
KIND: step
TITLE: Coefficients of the datum
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-data@L904-L906
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-data@L904-L906
CONTRACT_ID: step:p1:coh-data
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g scalar holomorphic bounded 1-periodic on T_rho, avg(g)=0
SOURCE_QUANTIFIERS: k in Z^n
SOURCE_CONCLUSION: hat g_0=0 and |hat g_k| <= e^{-2 pi |k|_1 rho}||g||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:decay#boundary-radius
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:decay#boundary-radius | blueprint/parts/p1-analysis.tex#step:p1:coh-data@L905-L906 | the boundary-radius decay statement of L809-L810
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-coefficients
KIND: step
TITLE: The coefficient solution
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L908-L913
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L908-L913
CONTRACT_ID: step:p1:coh-coefficients
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: gamma>0, tau>=0, omega Diophantine (gamma,tau); datum g as in the enclosing lemma with hat g_0=0 from step:p1:coh-data
SOURCE_QUANTIFIERS: define a_0=0 and a_k=hat g_k/(2 pi i k.omega) for every k!=0; coefficient identity for every k in Z^n; inverse-divisor estimate for every k!=0
SOURCE_CONCLUSION: a_0=0, a_k=hat g_k/(2 pi i k.omega) satisfy 2 pi i (k.omega) a_k=hat g_k and |a_k| <= (2 pi gamma)^-1 |k|_1^tau |hat g_k|
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p0:diophantine#IsDiophantine, step:p1:coh-data
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L909-L909 | k.omega >= gamma k_1^-tau
EDGE: step:p1:coh-data | blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L910-L911 | the all-mode coefficient identity uses hat g_0=0 at k=0
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-weighted
KIND: step
TITLE: Weighted estimate
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L915-L930
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L915-L930
CONTRACT_ID: step:p1:coh-weighted
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: coefficient bounds of coh-data and coh-coefficients; s=2 pi(rho-delta/2)
SOURCE_QUANTIFIERS: delta in (0,rho)
SOURCE_CONCLUSION: sum |a_k| e^{2 pi |k|_1 (rho-delta)} <= c(n,tau) gamma^-1 delta^-(tau+n) ||g||_rho with c(n,tau)=(2 pi)^-1 (tau/(e pi))^tau (8n/pi)^n
CONSTANT_SCOPE: c(n,tau) depends only on n and tau
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coh-data, step:p1:coh-coefficients, bp:p1:exp-sums
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coh-data | blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L916-L916 | decay of hat g_k
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L925-L925 | bound on a_k
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L916-L916 | parts (c) and (a)
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-existence
KIND: step
TITLE: Existence
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L932-L935
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L932-L935
CONTRACT_ID: step:p1:coh-existence
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: weighted estimate; a_k
SOURCE_QUANTIFIERS: delta in (0,rho)
SOURCE_CONCLUSION: u=sum a_k chi_k is holomorphic, 1-periodic, bounded on T_{rho-delta}, hat u_k=a_k, avg(u)=0, norm bound
CONSTANT_SCOPE: c(n,tau) as stated
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:summation, step:p1:coh-weighted, step:p1:coh-coefficients
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:summation | blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L933-L933 | summation at radius rho-delta
EDGE: step:p1:coh-weighted | blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L935-L935 | weighted sum of a_k
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L934-L934 | a_0=0
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-equation
KIND: step
TITLE: The equation
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L937-L942
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L937-L942
CONTRACT_ID: step:p1:coh-equation
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u=sum a_k chi_k on T_rho-delta
SOURCE_QUANTIFIERS: theta in T_{rho-delta}
SOURCE_CONCLUSION: Du omega=g on T_{rho-delta}
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:fourier-basic, step:p1:coh-existence, step:p1:coh-coefficients
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L938-L938 | Du omega - g holomorphic
EDGE: bp:p1:fourier-basic | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L940-L940 | (a) coefficients of derivative, (c) vanishing coefficients
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L941-L941 | hat u_k=a_k
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L941-L941 | 2 pi i (k.omega) a_k=hat g_k
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-unique
KIND: step
TITLE: Uniqueness
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L944-L951
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L944-L951
CONTRACT_ID: step:p1:coh-unique
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u~ holomorphic and 1-periodic on T_{rho-delta}, avg(u~)=0, Du~ omega=g (no bound)
SOURCE_QUANTIFIERS: u~
SOURCE_CONCLUSION: u~=u; for g=0 only u=0
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:fourier-basic, step:p1:coh-coefficients, step:p1:coh-existence
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:fourier-basic | blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L947-L947 | (a) and (c)
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L948-L948 | hat u~_k=a_k
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L948-L948 | compare with the constructed u
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-real
KIND: step
TITLE: Realness
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-real@L953-L958
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-real@L953-L958
CONTRACT_ID: step:p1:coh-real
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g real on R^n
SOURCE_QUANTIFIERS: x in R^n
SOURCE_CONCLUSION: u real on R^n
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coh-coefficients, step:p1:coh-existence
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-real@L955-L955 | a_k formula and conjugate symmetry
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#step:p1:coh-real@L957-L957 | series representation of u
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coh-vector
KIND: step
TITLE: Vector- and matrix-valued data
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L960-L966
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L960-L966
CONTRACT_ID: step:p1:coh-vector
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: scalar case (existence, bound, equation, uniqueness, realness)
SOURCE_QUANTIFIERS: components i (and entries ij)
SOURCE_CONCLUSION: C^p-valued g: unique u with the same constant, norm = max of component norms; matrix entries componentwise
CONSTANT_SCOPE: c(n,tau) same as scalar
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coh-existence, step:p1:coh-equation, step:p1:coh-unique, step:p1:coh-real
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L961-L961 | scalar existence and bound per component
EDGE: step:p1:coh-equation | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L961-L961 | scalar equation per component
EDGE: step:p1:coh-unique | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L962-L962 | scalar uniqueness per component
EDGE: step:p1:coh-real | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L961-L961 | scalar realness per component
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:cohomological-operator
KIND: lemma
TITLE: Cohomological equation in operator norms, a-priori bound
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L969-L972
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L974-L1002
CONTRACT_ID: bp:p1:cohomological-operator
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: the cohomological lemma; g:T_rho->C^{pxq} holomorphic bounded 1-periodic, avg(g)=0, operator norm; (second claim) u holomorphic periodic with avg(u)=0
SOURCE_QUANTIFIERS: gamma, tau, rho, omega, delta, g, u
SOURCE_CONCLUSION: the cohomological lemma holds for matrix g with the operator norm, and every holomorphic periodic u with avg(u)=0 solving the equation satisfies the same bound
CONSTANT_SCOPE: c(n,tau) as in bp:p1:cohomological
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: step:p1:coo-entries, step:p1:coo-vectors, step:p1:coo-norm, step:p1:coo-apriori, bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L978-L978 | proof step of this result
EDGE: step:p1:coo-vectors | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L983-L983 | proof step of this result
EDGE: step:p1:coo-norm | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L990-L990 | proof step of this result
EDGE: step:p1:coo-apriori | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L995-L995 | proof step of this result
EDGE: bp:p1:cohomological | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L970-L970 | the lemma extended to the operator norm
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coo-entries
KIND: step
TITLE: The entrywise solution
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L978-L981
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L978-L981
CONTRACT_ID: step:p1:coo-entries
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: g matrix valued; cohomological lemma applied entrywise
SOURCE_QUANTIFIERS: entries
SOURCE_CONCLUSION: unique entrywise solution u on T_{rho-delta} with avg(u)=0, Du omega=g; every zero-average periodic solution equals u
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:cohomological | blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L979-L979 | applied to each entry
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coo-vectors
KIND: step
TITLE: Testing against vectors
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L983-L988
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L983-L988
CONTRACT_ID: step:p1:coo-vectors
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: v in C^q, |v|<=1; u from coo-entries
SOURCE_QUANTIFIERS: v; theta in T_{rho-delta}
SOURCE_CONCLUSION: |u(theta)v| <= Gamma ||g||_rho, Gamma=c(n,tau) gamma^-1 delta^-(tau+n)
CONSTANT_SCOPE: Gamma depends on n, tau, gamma, delta
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:matrix-norms, step:p1:coo-entries, bp:p1:cohomological
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L985-L985 | g v <= g v
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L986-L986 | uv solves the equation with data gv; uniqueness
EDGE: bp:p1:cohomological | blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L987-L987 | uniqueness and bound for C^p-valued data
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coo-norm
KIND: step
TITLE: Operator norm
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L990-L993
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L990-L993
CONTRACT_ID: step:p1:coo-norm
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: vector bound of previous step; u from coo-entries
SOURCE_QUANTIFIERS: theta in T_{rho-delta}
SOURCE_CONCLUSION: |u(theta)| <= Gamma ||g||_rho, for every zero-average periodic solution
CONSTANT_SCOPE: Gamma as above
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:operator-norms, step:p1:coo-vectors, step:p1:coo-entries
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L991-L991 | operator norm as sup over v<=1
EDGE: step:p1:coo-vectors | blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L991-L991 | bound on u(theta)v
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L992-L992 | every solution equals u
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: step:p1:coo-apriori
KIND: step
TITLE: A-priori form
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L995-L1001
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L995-L1001
CONTRACT_ID: step:p1:coo-apriori
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic 1-periodic on T_rho, C^p or C^{pxq} valued, avg(u)=0, ||Du omega||_rho <= H < infinity
SOURCE_QUANTIFIERS: H; delta in (0,rho)
SOURCE_CONCLUSION: ||u||_{rho-delta} <= Gamma H
CONSTANT_SCOPE: Gamma as above
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:holomorphic-regularity, bp:p1:averages-real, step:p1:coo-entries, step:p1:coo-norm
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L998-L998 | g=Du omega holomorphic
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L999-L999 | avg(g)=0 from entries of the real restriction
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L1000-L1000 | u restricted is a solution in the class
EDGE: step:p1:coo-norm | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L1001-L1001 | bound for every zero-average periodic solution
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -

NODE: bp:p1:decay#boundary-radius
KIND: step
TITLE: Coefficient decay at the boundary radius
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay#boundary-radius@L819-L820
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay#boundary-radius@L819-L820
CONTRACT_ID: bp:p1:decay#boundary-radius
CONTRACT_VERSION: 1
SOURCE_HYPOTHESES: u holomorphic, bounded and 1-periodic on T_rho; rho>0
SOURCE_QUANTIFIERS: every k in Z^n
SOURCE_CONCLUSION: |hat u_k| <= exp(-2 pi |k|_1 rho) ||u||_rho
CONSTANT_SCOPE: none
FROZEN_FILE: -
FROZEN_DECL: -
FROZEN_ANCHOR_ID: -
FROZEN_ABI_SHA256: -
DEPS: bp:p1:decay
ROUTES: -
ROUTE_FOR: -
EDGE: bp:p1:decay | blueprint/parts/p1-analysis.tex#bp:p1:decay#boundary-radius@L819-L820 | let rho' increase to rho in the coefficient estimate
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: new+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
