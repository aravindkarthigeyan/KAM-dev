NODE: bp:p1:periodic-bounded
KIND: lemma
TITLE: Periodic functions are bounded on smaller strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L517-L519
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L521-L529
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
EDGE: step:p1:pb-compact | blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L522-L522 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L517-L517 | strip T_rho used by name
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: PROVED
LEAN_REF: KAM.periodic_bounded
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:pb-compact
KIND: step
TITLE: A compact fundamental set
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pb-compact@L522-L528
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pb-compact@L522-L528
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
LEAN_STATUS: PROVED
LEAN_REF: KAM.periodic_bounded
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: bp:p1:strip-identity
KIND: lemma
TITLE: Identity theorem on strips
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L531-L534
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L536-L546
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
EDGE: step:p1:si-induction | blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L537-L537 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L532-L532 | strip T_r used by name
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: PROVED
LEAN_REF: KAM.strip_identity
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:si-induction
KIND: step
TITLE: One coordinate at a time
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:si-induction@L537-L545
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:si-induction@L537-L545
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
EDGE: bp:p1:ext-identity | blueprint/parts/p1-analysis.tex#step:p1:si-induction@L544-L544 | one-variable identity theorem applied to coordinates of phi
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: PROVED
LEAN_REF: KAM.strip_identity
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: bp:p1:increments
KIND: lemma
TITLE: Increments
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments@L551-L555
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:increments@L557-L566
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
EDGE: step:p1:inc-mvt | blueprint/parts/p1-analysis.tex#bp:p1:increments@L558-L558 | proof step of this result
EDGE: step:p1:inc-cauchy | blueprint/parts/p1-analysis.tex#bp:p1:increments@L563-L563 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:increments@L552-L552 | strip T_rho used by name
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L558-L561
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L558-L561
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
EDGE: bp:p1:ext-mvt | blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L560-L560 | mean value inequality on the segment
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L563-L565
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L563-L565
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
EDGE: bp:p1:cauchy-strip | blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L564-L564 | Cauchy estimate on strips
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L568-L574
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L576-L597
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
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L579-L579 | proof step of this result
EDGE: step:p1:cs-full | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L589-L589 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L569-L569 | strip T_rho used by name
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L579-L587
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L579-L587
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
EDGE: bp:p1:ext-cauchy | blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L584-L584 | one-variable Cauchy estimate on the circle of radius delta
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-full@L589-L596
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cs-full@L589-L596
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
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#step:p1:cs-full@L590-L590 | previous step: bound on each d_ell u
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:cs-full@L595-L595 | operator norm equals row-sum norm of the Jacobian
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L617-L621
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L623-L637
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
EDGE: step:p1:cc-transpose | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L626-L626 | proof step of this result
EDGE: step:p1:cc-omega | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L633-L633 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L618-L618 | strip T_rho used by name
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L626-L631
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L626-L631
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
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L630-L630 | coordinate Cauchy bound for d_ell f
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L633-L636
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L633-L636
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
EDGE: step:p1:cs-coordinate | blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L634-L634 | coordinate Cauchy bound for d_ell f
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L646-L649
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L651-L663
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
EDGE: step:p1:ar-one | blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L652-L652 | proof step of this result
EDGE: step:p1:ar-fubini | blueprint/parts/p1-analysis.tex#bp:p1:averages-real@L658-L658 | proof step of this result
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-one@L652-L656
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-one@L652-L656
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
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:ar-one@L655-L655 | fundamental theorem of calculus on [0,1]
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L658-L662
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L658-L662
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
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L659-L659 | Fubini
EDGE: step:p1:ar-one | blueprint/parts/p1-analysis.tex#step:p1:ar-fubini@L660-L660 | inner integral vanishes
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages@L665-L669
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages@L671-L684
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
EDGE: step:p1:av-derivatives | blueprint/parts/p1-analysis.tex#bp:p1:averages@L672-L672 | proof step of this result
EDGE: step:p1:av-bound | blueprint/parts/p1-analysis.tex#bp:p1:averages@L679-L679 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:averages@L666-L666 | strip T_rho used by name
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L672-L677
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L672-L677
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
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L674-L674 | d_ell v holomorphic hence continuous
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L676-L676 | averages of derivatives on the real torus
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-bound@L679-L683
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:av-bound@L679-L683
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
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:av-bound@L680-L680 | norm of an integral is at most integral of the norm
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L686-L689
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L691-L699
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
EDGE: step:p1:am-bound | blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L692-L692 | proof step of this result
EDGE: step:p1:am-derivative | blueprint/parts/p1-analysis.tex#bp:p1:averages-matrix@L696-L696 | proof step of this result
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-bound@L692-L694
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-bound@L692-L694
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
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:am-bound@L693-L693 | norm of an integral is at most integral of the norm
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-derivative@L696-L698
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:am-derivative@L696-L698
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
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:am-derivative@L698-L698 | applied to each entry
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L701-L703
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L705-L717
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
EDGE: step:p1:pa-one | blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L706-L706 | proof step of this result
EDGE: step:p1:pa-induction | blueprint/parts/p1-analysis.tex#bp:p1:periodic-average@L711-L711 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: PROVED
LEAN_REF: KAM.periodic_average
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:pa-one
KIND: step
TITLE: One variable
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-one@L706-L709
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-one@L706-L709
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
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:pa-one@L708-L708 | differentiation of the integral in its limits
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: PROVED
LEAN_REF: Function.Periodic.intervalIntegral_add_eq (in KAM.torusAverage_add_single)
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:pa-induction
KIND: step
TITLE: One coordinate at a time
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L711-L716
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L711-L716
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
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L713-L713 | Fubini
EDGE: step:p1:pa-one | blueprint/parts/p1-analysis.tex#step:p1:pa-induction@L714-L714 | one-variable shift invariance
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: PROVED
LEAN_REF: KAM.periodic_average
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: bp:p1:exp-sums
KIND: lemma
TITLE: Exponential sums over $\Z^n$
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L727-L734
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L736-L755
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
EDGE: step:p1:es-power | blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L737-L737 | proof step of this result
EDGE: step:p1:es-product | blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L742-L742 | proof step of this result
EDGE: step:p1:es-nonzero | blueprint/parts/p1-analysis.tex#bp:p1:exp-sums@L747-L747 | proof step of this result
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: PROVED
LEAN_REF: KAM.Fourier.exp_sums
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:es-power
KIND: step
TITLE: The power times the exponential
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-power@L737-L740
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-power@L737-L740
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
LEAN_STATUS: PROVED
LEAN_REF: KAM.Fourier.rpow_mul_exp_neg_le
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:es-product
KIND: step
TITLE: Product structure
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-product@L742-L745
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-product@L742-L745
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
LEAN_STATUS: PROVED
LEAN_REF: KAM.Fourier.hasSum_exp_neg_modeSize, cosh_div_sinh_half_le
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: step:p1:es-nonzero
KIND: step
TITLE: Nonzero modes
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L747-L754
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L747-L754
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
EDGE: step:p1:es-product | blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L748-L748 | part (b) with x/2
EDGE: step:p1:es-power | blueprint/parts/p1-analysis.tex#step:p1:es-nonzero@L753-L753 | part (a) for x^n e^{-x/2}
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: sonnet-extract-K-p1b
REVIEWER: sol-review-r2
LEAN_STATUS: PROVED
LEAN_REF: KAM.Fourier.tsum_exp_neg_modeSize_ne_zero_le
LEAN_NOTE: prover evidence + independent audit docs/campaign/audits/I-P1B-audit-1.md; kernel replay passed (2026-10-27)
NOTE: -

NODE: bp:p1:fourier-basic
KIND: lemma
TITLE: Fourier coefficients of periodic functions
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L757-L768
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L770-L784
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
EDGE: step:p1:fb-derivative | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L771-L771 | proof step of this result
EDGE: step:p1:fb-series | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L778-L778 | proof step of this result
EDGE: step:p1:fb-holomorphic | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L781-L781 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L765-L765 | strip T_r used by name
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-derivative@L771-L776
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-derivative@L771-L776
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
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:fb-derivative@L773-L773 | <d_ell w>=0 for w=v chi_{-k}
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-series@L778-L779
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-series@L778-L779
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
EDGE: bp:p1:ext-fourier | blueprint/parts/p1-analysis.tex#step:p1:fb-series@L779-L779 | Fourier series of a continuous periodic function with summable coefficients
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L781-L783
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L781-L783
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
EDGE: step:p1:fb-series | blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L783-L783 | part (b): v=0 on R^n
EDGE: bp:p1:strip-identity | blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L783-L783 | identity theorem on strips
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay@L786-L789
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay@L791-L819
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
EDGE: step:p1:dec-shift | blueprint/parts/p1-analysis.tex#bp:p1:decay@L800-L800 | proof step of this result
EDGE: step:p1:dec-bound | blueprint/parts/p1-analysis.tex#bp:p1:decay@L813-L813 | proof step of this result
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:decay@L787-L787 | strip T_rho used by name
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L800-L811
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L800-L811
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
EDGE: bp:p1:ext-rectangle | blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L806-L806 | Cauchy theorem on the rectangle
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L811-L811 | Fubini over the remaining coordinates
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L813-L818
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L813-L818
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
EDGE: step:p1:dec-shift | blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L818-L818 | hat u_k = I_0 = ... = I_n
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L814-L818 | norm of the integral over a box of volume one bounds I_n by the displayed uniform integrand bound
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:summation@L824-L831
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:summation@L833-L875
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
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#bp:p1:summation@L836-L836 | proof step of this result
EDGE: step:p1:sum-holo | blueprint/parts/p1-analysis.tex#bp:p1:summation@L841-L841 | proof step of this result
EDGE: step:p1:sum-coeff | blueprint/parts/p1-analysis.tex#bp:p1:summation@L853-L853 | proof step of this result
EDGE: step:p1:sum-converse | blueprint/parts/p1-analysis.tex#bp:p1:summation@L861-L861 | proof step of this result
EDGE: step:p1:sum-representation | blueprint/parts/p1-analysis.tex#bp:p1:summation@L869-L869 | proof step of this result
EDGE: bp:p1:decay | blueprint/parts/p1-analysis.tex#bp:p1:summation@L828-L828 | converse part is stated for u as in the decay lemma
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:summation@L825-L825 | strip T_rho used by name
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-bound@L836-L839
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-bound@L836-L839
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L841-L851
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L841-L851
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
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L843-L843 | part (a) with tau=1 bounds D chi_k terms
EDGE: bp:p1:uniform-limits | blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L849-L849 | uniform limit of holomorphic functions with uniformly convergent derivatives
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L849-L849 | S_N converges to u uniformly
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L853-L859
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L853-L859
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
EDGE: bp:p1:ext-integral | blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L854-L854 | term-by-term integration
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L854-L854 | uniform convergence of the series
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L861-L867
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L861-L867
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
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L863-L863 | part (b) with x=2 pi delta
EDGE: bp:p1:decay#boundary-radius | blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L862-L863 | the boundary-radius decay statement of L809-L810
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L869-L874
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L869-L874
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
EDGE: step:p1:sum-converse | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L871-L871 | summability of weighted coefficients
EDGE: step:p1:sum-bound | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L871-L871 | first part of the lemma: boundedness and periodicity
EDGE: step:p1:sum-holo | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L871-L871 | first part of the lemma: holomorphy
EDGE: step:p1:sum-coeff | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L872-L872 | first part of the lemma: hat v_k = hat u_k
EDGE: bp:p1:fourier-basic | blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L874-L874 | part (c): vanishing coefficients imply zero
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L887-L897
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L899-L969
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
EDGE: step:p1:coh-data | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L906-L906 | proof step of this result
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L910-L910 | proof step of this result
EDGE: step:p1:coh-weighted | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L917-L917 | proof step of this result
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L934-L934 | proof step of this result
EDGE: step:p1:coh-equation | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L939-L939 | proof step of this result
EDGE: step:p1:coh-unique | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L946-L946 | proof step of this result
EDGE: step:p1:coh-real | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L955-L955 | proof step of this result
EDGE: step:p1:coh-vector | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L962-L962 | proof step of this result
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L888-L888 | omega in Dio_{gamma,tau}
EDGE: bp:p0:domains#complexStrip | blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L888-L888 | strip T_rho used by name
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-data@L906-L908
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-data@L906-L908
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
EDGE: bp:p1:decay#boundary-radius | blueprint/parts/p1-analysis.tex#step:p1:coh-data@L907-L908 | the boundary-radius decay statement of L809-L810
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L910-L915
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L910-L915
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
EDGE: bp:p0:diophantine#IsDiophantine | blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L911-L911 | k.omega >= gamma k_1^-tau
EDGE: step:p1:coh-data | blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L912-L913 | the all-mode coefficient identity uses hat g_0=0 at k=0
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L917-L932
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L917-L932
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
EDGE: step:p1:coh-data | blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L918-L918 | decay of hat g_k
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L927-L927 | bound on a_k
EDGE: bp:p1:exp-sums | blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L918-L918 | parts (c) and (a)
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L934-L937
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L934-L937
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
EDGE: bp:p1:summation | blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L935-L935 | summation at radius rho-delta
EDGE: step:p1:coh-weighted | blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L937-L937 | weighted sum of a_k
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L936-L936 | a_0=0
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L939-L944
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L939-L944
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
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L940-L940 | Du omega - g holomorphic
EDGE: bp:p1:fourier-basic | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L942-L942 | (a) coefficients of derivative, (c) vanishing coefficients
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L943-L943 | hat u_k=a_k
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L943-L943 | 2 pi i (k.omega) a_k=hat g_k
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L946-L953
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L946-L953
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
EDGE: bp:p1:fourier-basic | blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L949-L949 | (a) and (c)
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L950-L950 | hat u~_k=a_k
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L950-L950 | compare with the constructed u
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-real@L955-L960
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-real@L955-L960
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
EDGE: step:p1:coh-coefficients | blueprint/parts/p1-analysis.tex#step:p1:coh-real@L957-L957 | a_k formula and conjugate symmetry
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#step:p1:coh-real@L959-L959 | series representation of u
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L962-L968
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L962-L968
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
EDGE: step:p1:coh-existence | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L963-L963 | scalar existence and bound per component
EDGE: step:p1:coh-equation | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L963-L963 | scalar equation per component
EDGE: step:p1:coh-unique | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L964-L964 | scalar uniqueness per component
EDGE: step:p1:coh-real | blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L963-L963 | scalar realness per component
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L971-L974
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L976-L1004
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
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L980-L980 | proof step of this result
EDGE: step:p1:coo-vectors | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L985-L985 | proof step of this result
EDGE: step:p1:coo-norm | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L992-L992 | proof step of this result
EDGE: step:p1:coo-apriori | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L997-L997 | proof step of this result
EDGE: bp:p1:cohomological | blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L972-L972 | the lemma extended to the operator norm
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L980-L983
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L980-L983
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
EDGE: bp:p1:cohomological | blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L981-L981 | applied to each entry
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L985-L990
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L985-L990
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
EDGE: bp:p1:matrix-norms | blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L987-L987 | g v <= g v
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L988-L988 | uv solves the equation with data gv; uniqueness
EDGE: bp:p1:cohomological | blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L989-L989 | uniqueness and bound for C^p-valued data
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L992-L995
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L992-L995
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
EDGE: bp:p1:operator-norms | blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L993-L993 | operator norm as sup over v<=1
EDGE: step:p1:coo-vectors | blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L993-L993 | bound on u(theta)v
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L994-L994 | every solution equals u
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L997-L1003
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L997-L1003
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
EDGE: bp:p1:holomorphic-regularity | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L1000-L1000 | g=Du omega holomorphic
EDGE: bp:p1:averages-real | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L1001-L1001 | avg(g)=0 from entries of the real restriction
EDGE: step:p1:coo-entries | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L1002-L1002 | u restricted is a solution in the class
EDGE: step:p1:coo-norm | blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L1003-L1003 | bound for every zero-average periodic solution
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
STATEMENT_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay#boundary-radius@L821-L822
PROOF_SOURCE: blueprint/parts/p1-analysis.tex#bp:p1:decay#boundary-radius@L821-L822
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
EDGE: bp:p1:decay | blueprint/parts/p1-analysis.tex#bp:p1:decay#boundary-radius@L821-L822 | let rho' increase to rho in the coefficient estimate
TOPOLOGY_STATUS: REVIEWED
EXTRACTOR: new+sol-review-r2
REVIEWER: sol-review-r4
LEAN_STATUS: NOT_STARTED
LEAN_REF: -
LEAN_NOTE: -
NOTE: -
