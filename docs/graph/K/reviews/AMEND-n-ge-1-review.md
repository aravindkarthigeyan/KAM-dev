# Track K standing-convention amendment review

Verdict: APPROVE all five records. Reviewer: sol-amend-reviewer-K. Approval concerns only source-hypothesis transcription; it makes no Lean/proof-closure claim.

## Scope and frozen inputs

Read-only repository review; only the draft reviewer fields and this report are written, under the authorized scratch directory. User brief supplies the permission envelope and acceptance criteria. No commits, builds, network access or repository edits. Date: 2026-10-27.

Repository HEAD: `b846a9dc17edc05cda6279799882905e5af98ad1`. Initial `git status --short`: empty.

| Input | SHA-256 before review |
|---|---|
| `docs/graph/K/DEPGRAPH.md` | `743f6baa516a01193d7545224a3c9947b71c35fc704be9f10d4f9b48b124760b` |
| `blueprint/parts/p1-analysis.tex` | `2afd058105b3de64042c142ec1c4eeba063b3c973e26ab980e7b668bc0232407` |
| `/tmp/claude-0/-root/0e739fce-e1ef-4aa1-9d8d-2d63fa1ad512/scratchpad/amend/AMENDMENTS.draft.md` | `e05ea2930ffa2aec797a7773a16a4f4c0fc3ef4c29e78ec04575bc628cc1ac09` |

Method: focused source-correspondence audit, with mechanical inventory and a separate adversarial reread of each proposed addition. No second reviewer was delegated. Every current Part 1 node was inspected, including referenced/inherited strip contexts; generic open-domain, real-only, matrix and measure statements were excluded from the strip scan.

Standing source, blueprint/parts/p1-analysis.tex L37-L39:

> Strip widths are positive throughout: every $T_r$, $T_\rho$, $T_{\rho-\delta}$ in a statement
> has $r,\rho,\rho-\delta>0$ (as in Part~\ref{bp:p0}), and $n\ge1$ wherever a strip occurs.

## Five record verdicts

### K-A001-n-ge-1-decay: APPROVE

Target `bp:p1:decay`, graph L3217; statement `blueprint/parts/p1-analysis.tex#bp:p1:decay@L786-L789`.

Old SOURCE_HYPOTHESES: `u holomorphic, bounded and 1-periodic on T_rho`

New SET_SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); u holomorphic, bounded and 1-periodic on T_rho`

Exact old field with only n >= 1 and rho > 0 prefixed. The source says u is holomorphic, bounded and 1-periodic on T_rho; the convention supplies both additions. Adversarial check: no unrelated premise, conclusion, locator, dependency, quantifier, normalizer or constant-scope mutation is requested; all other structural operations are `-`.

### K-A002-n-ge-1-summation: APPROVE

Target `bp:p1:summation`, graph L3302; statement `blueprint/parts/p1-analysis.tex#bp:p1:summation@L824-L831`.

Old SOURCE_HYPOTHESES: `(forward) sum_k |a_k| e^{2 pi |k|_1 rho} finite; (converse) u as in decay, 0<delta<rho`

New SET_SOURCE_HYPOTHESES: `n >= 1 (standing, p1-analysis.tex L37-L39); (forward) sum_k |a_k| e^{2 pi |k|_1 rho} finite, rho > 0; (converse) u as in decay, 0<delta<rho`

Only n >= 1 is prefixed and rho > 0 inserted in the forward clause. The converse already has 0<delta<rho, which supplies positive rho and rho-delta. Removing exactly those two additions recovers the old field byte-for-byte. Adversarial check: no unrelated premise, conclusion, locator, dependency, quantifier, normalizer or constant-scope mutation is requested; all other structural operations are `-`.

### K-A003-n-ge-1-fourier-basic: APPROVE

Target `bp:p1:fourier-basic`, graph L3105; statement `blueprint/parts/p1-analysis.tex#bp:p1:fourier-basic@L757-L768`.

Old SOURCE_HYPOTHESES: `v C-valued (componentwise for vector/matrix); (a) v continuous, 1-periodic, C^1; (b) v continuous, 1-periodic, sum |hat v_k| finite; (c) r>0, v holomorphic and 1-periodic on T_r, not necessarily bounded, all hat v_k=0`

New SET_SOURCE_HYPOTHESES: `n >= 1 (standing, p1-analysis.tex L37-L39); v C-valued (componentwise for vector/matrix); (a) v continuous, 1-periodic, C^1; (b) v continuous, 1-periodic, sum |hat v_k| finite; (c) r>0, v holomorphic and 1-periodic on T_r, not necessarily bounded, all hat v_k=0`

Only n >= 1 is prefixed. The strip clause (c) already has r>0. No boundedness, C^1, coefficient, or other premise changed. The combined node includes the strip clause; no claim is made that n>=1 is needed for the real-only clauses. Adversarial check: no unrelated premise, conclusion, locator, dependency, quantifier, normalizer or constant-scope mutation is requested; all other structural operations are `-`.

### K-A004-n-ge-1-averages: APPROVE

Target `bp:p1:averages`, graph L2747; statement `blueprint/parts/p1-analysis.tex#bp:p1:averages@L665-L669`.

Old SOURCE_HYPOTHESES: `v holomorphic, bounded and 1-periodic on T_rho; scalar, C^p or C^{pxq} valued`

New SET_SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); v holomorphic, bounded and 1-periodic on T_rho; scalar, C^p or C^{pxq} valued`

Exact old field with only n >= 1 and rho > 0 prefixed. The source includes the same scalar/vector/matrix statements. Adversarial check: no unrelated premise, conclusion, locator, dependency, quantifier, normalizer or constant-scope mutation is requested; all other structural operations are `-`.

### K-A005-n-ge-1-real-restriction: APPROVE

Target `bp:p1:real-restriction`, graph L4025; statement `blueprint/parts/p1-analysis.tex#bp:p1:real-restriction@L1047-L1051`.

Old SOURCE_HYPOTHESES: `K holomorphic on T_rho and real on reals; for the primary claim, K primary on T_rho (p=2n)`

New SET_SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); K holomorphic on T_rho and real on reals; for the primary claim, K primary on T_rho (p=2n)`

Exact old field with only n >= 1 and rho > 0 prefixed. Holomorphy, realness and the primary-map qualification are unchanged. Adversarial check: no unrelated premise, conclusion, locator, dependency, quantifier, normalizer or constant-scope mutation is requested; all other structural operations are `-`.

## Other Part 1 strip nodes

Inventory: 142 Part 1 nodes examined; 46 strip-bearing nodes identified, including the five draft targets. The 41 other nodes below all omit an explicit n >= 1 in SOURCE_HYPOTHESES. Width omissions are separately identified. These are transcription findings, not assertions that the estimates are false or that no dependency entails the condition.

Each proposed field retains the current field verbatim after a standing-convention prefix. Already present 0<delta<rho entails rho>0 and rho-delta>0 and is not duplicated. Conditional additions remain conditional in the general-open-set uniform-limits node. No extra amendment record was added to the draft.

### `bp:p1:uniform-limits`

Graph L1776; `blueprint/parts/p1-analysis.tex#bp:p1:uniform-limits@L364-L368`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `K_s holomorphic on an open set V; K_s->K pointwise; DK_s->Lambda uniformly on V; for V=T_r, every K_s primary on T_r, respectively real on reals`

Proposed SOURCE_HYPOTHESES: `for the V=T_r clauses only, n >= 1 and r > 0 (standing, p1-analysis.tex L37-L39); K_s holomorphic on an open set V; K_s->K pointwise; DK_s->Lambda uniformly on V; for V=T_r, every K_s primary on T_r, respectively real on reals`

### `step:p1:ul-primary`

Graph L1887; `blueprint/parts/p1-analysis.tex#step:p1:ul-primary@L396-L401`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `V=T_r, W=C^n x C^n; every K_s primary on T_r (resp. 1-periodic, resp. real on reals)`

Proposed SOURCE_HYPOTHESES: `n >= 1 and r > 0 (standing, p1-analysis.tex L37-L39); V=T_r, W=C^n x C^n; every K_s primary on T_r (resp. 1-periodic, resp. real on reals)`

### `bp:p1:periodic-bounded`

Graph L2305; `blueprint/parts/p1-analysis.tex#bp:p1:periodic-bounded@L517-L519`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u holomorphic and 1-periodic on T_rho, values in W`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho' > 0 (standing, p1-analysis.tex L37-L39); u holomorphic and 1-periodic on T_rho, values in W`

This proposal reads the lemma under the standing positive-width convention. The proof also treats nonpositive rho'; see source tension below. Do not silently delete that wider branch.

### `step:p1:pb-compact`

Graph L2333; `blueprint/parts/p1-analysis.tex#step:p1:pb-compact@L522-L528`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u holomorphic and 1-periodic on T_rho; rho'<rho`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); u holomorphic and 1-periodic on T_rho; rho'<rho`

Caution: retain the explicit rho'<=0 empty-strip branch. Adding rho'>0 globally here would discard a branch of the old field; resolve the source tension below before any such change.

### `bp:p1:strip-identity`

Graph L2359; `blueprint/parts/p1-analysis.tex#bp:p1:strip-identity@L531-L534`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `r>0; v holomorphic on T_r with values in W; v(x)=0 for all real x`

Proposed SOURCE_HYPOTHESES: `n >= 1 (standing, p1-analysis.tex L37-L39); r>0; v holomorphic on T_r with values in W; v(x)=0 for all real x`

### `step:p1:si-induction`

Graph L2387; `blueprint/parts/p1-analysis.tex#step:p1:si-induction@L537-L545`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `v holomorphic on T_r, vanishing on R^n`

Proposed SOURCE_HYPOTHESES: `n >= 1 and r > 0 (standing, p1-analysis.tex L37-L39); v holomorphic on T_r, vanishing on R^n`

### `bp:p1:increments`

Graph L2414; `blueprint/parts/p1-analysis.tex#bp:p1:increments@L551-L555`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u holomorphic on T_rho; 0<delta<rho; theta, theta+v in T_{rho-delta}; (second claim) u bounded on T_rho`

Proposed SOURCE_HYPOTHESES: `n >= 1 (standing, p1-analysis.tex L37-L39); u holomorphic on T_rho; 0<delta<rho; theta, theta+v in T_{rho-delta}; (second claim) u bounded on T_rho`

### `step:p1:inc-mvt`

Graph L2443; `blueprint/parts/p1-analysis.tex#step:p1:inc-mvt@L558-L561`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u holomorphic on T_rho; 0<delta<rho; theta, theta+v in T_{rho-delta} (convex)`

Proposed SOURCE_HYPOTHESES: `n >= 1 (standing, p1-analysis.tex L37-L39); u holomorphic on T_rho; 0<delta<rho; theta, theta+v in T_{rho-delta} (convex)`

### `step:p1:inc-cauchy`

Graph L2470; `blueprint/parts/p1-analysis.tex#step:p1:inc-cauchy@L563-L565`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u bounded holomorphic on T_rho; 0<delta<rho`

Proposed SOURCE_HYPOTHESES: `n >= 1 (standing, p1-analysis.tex L37-L39); u bounded holomorphic on T_rho; 0<delta<rho`

### `bp:p1:cauchy-strip`

Graph L2497; `blueprint/parts/p1-analysis.tex#bp:p1:cauchy-strip@L568-L574`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u holomorphic and bounded on T_rho; 0<delta<rho; u scalar, vector (max norm) or matrix (operator norm) valued`

Proposed SOURCE_HYPOTHESES: `n >= 1 (standing, p1-analysis.tex L37-L39); u holomorphic and bounded on T_rho; 0<delta<rho; u scalar, vector (max norm) or matrix (operator norm) valued`

### `step:p1:cs-coordinate`

Graph L2526; `blueprint/parts/p1-analysis.tex#step:p1:cs-coordinate@L579-L587`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u holomorphic bounded on T_rho, 0<delta<rho, theta in T_{rho-delta}, 1<=ell<=n`

Proposed SOURCE_HYPOTHESES: `n >= 1 (standing, p1-analysis.tex L37-L39); u holomorphic bounded on T_rho, 0<delta<rho, theta in T_{rho-delta}, 1<=ell<=n`

Refutation check: 1<=ell<=n already entails n>=1. This is a literal-field omission only, not an independent missing mathematical premise.

### `step:p1:cs-full`

Graph L2553; `blueprint/parts/p1-analysis.tex#step:p1:cs-full@L589-L596`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `coordinate bound of the previous step; theta in T_{rho-delta}`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); coordinate bound of the previous step; theta in T_{rho-delta}`

### `bp:p1:cauchy-corollaries`

Graph L2581; `blueprint/parts/p1-analysis.tex#bp:p1:cauchy-corollaries@L617-L621`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `f holomorphic and bounded on T_rho; 0<delta<rho; f valued in C^p (first claim) or C^p / C^{pxq} (second claim)`

Proposed SOURCE_HYPOTHESES: `n >= 1 (standing, p1-analysis.tex L37-L39); f holomorphic and bounded on T_rho; 0<delta<rho; f valued in C^p (first claim) or C^p / C^{pxq} (second claim)`

### `step:p1:cc-transpose`

Graph L2610; `blueprint/parts/p1-analysis.tex#step:p1:cc-transpose@L626-L631`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `f holomorphic bounded on T_rho with values in C^p; theta in T_{rho-delta}`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); f holomorphic bounded on T_rho with values in C^p; theta in T_{rho-delta}`

### `step:p1:cc-omega`

Graph L2637; `blueprint/parts/p1-analysis.tex#step:p1:cc-omega@L633-L636`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `f holomorphic bounded on T_rho with values in any W; theta in T_{rho-delta}`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); f holomorphic bounded on T_rho with values in any W; theta in T_{rho-delta}`

### `step:p1:av-derivatives`

Graph L2776; `blueprint/parts/p1-analysis.tex#step:p1:av-derivatives@L672-L677`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `v holomorphic 1-periodic on T_rho`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); v holomorphic 1-periodic on T_rho`

### `step:p1:av-bound`

Graph L2804; `blueprint/parts/p1-analysis.tex#step:p1:av-bound@L679-L683`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `v bounded on T_rho; [0,1]^n has measure 1`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); v bounded on T_rho; [0,1]^n has measure 1`

### `step:p1:fb-holomorphic`

Graph L3189; `blueprint/parts/p1-analysis.tex#step:p1:fb-holomorphic@L781-L783`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `part (c): v holomorphic 1-periodic on T_r with vanishing coefficients; part (b)`

Proposed SOURCE_HYPOTHESES: `n >= 1 and r > 0 (standing, p1-analysis.tex L37-L39); part (c): v holomorphic 1-periodic on T_r with vanishing coefficients; part (b)`

### `step:p1:dec-shift`

Graph L3246; `blueprint/parts/p1-analysis.tex#step:p1:dec-shift@L800-L811`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u holomorphic 1-periodic on T_rho, k, rho'<rho, t_j=-rho' sgn(k_j); I_j integrals`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); u holomorphic 1-periodic on T_rho, k, rho'<rho, t_j=-rho' sgn(k_j); I_j integrals`

### `step:p1:dec-bound`

Graph L3274; `blueprint/parts/p1-analysis.tex#step:p1:dec-bound@L813-L818`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `I_n=hat u_k via the shifts; |u|<=||u||_rho`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); I_n=hat u_k via the shifts; |u|<=||u||_rho`

### `step:p1:sum-bound`

Graph L3335; `blueprint/parts/p1-analysis.tex#step:p1:sum-bound@L836-L839`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `M=sum |a_k| e^{2 pi |k|_1 rho} finite; S_N partial sums`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); M=sum |a_k| e^{2 pi |k|_1 rho} finite; S_N partial sums`

### `step:p1:sum-holo`

Graph L3361; `blueprint/parts/p1-analysis.tex#step:p1:sum-holo@L841-L851`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `M finite; u the uniform limit of S_N on T_rho`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); M finite; u the uniform limit of S_N on T_rho`

### `step:p1:sum-converse`

Graph L3418; `blueprint/parts/p1-analysis.tex#step:p1:sum-converse@L861-L867`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u holomorphic, bounded and 1-periodic on T_rho; 0<delta<rho (the boundary-radius decay is a dependency, not an extra premise)`

Proposed SOURCE_HYPOTHESES: `n >= 1 (standing, p1-analysis.tex L37-L39); u holomorphic, bounded and 1-periodic on T_rho; 0<delta<rho (the boundary-radius decay is a dependency, not an extra premise)`

### `step:p1:sum-representation`

Graph L3446; `blueprint/parts/p1-analysis.tex#step:p1:sum-representation@L869-L874`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u as in decay; converse estimate; first part of the lemma`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); u as in decay; converse estimate; first part of the lemma`

### `bp:p1:cohomological`

Graph L3477; `blueprint/parts/p1-analysis.tex#bp:p1:cohomological@L887-L897`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `omega in Dio_{gamma,tau}, gamma>0, tau>=0; g holomorphic, bounded, 1-periodic on T_rho with avg(g)=0; 0<delta<rho; g real on real points (for realness); vector/matrix valued componentwise`

Proposed SOURCE_HYPOTHESES: `n >= 1 (standing, p1-analysis.tex L37-L39); omega in Dio_{gamma,tau}, gamma>0, tau>=0; g holomorphic, bounded, 1-periodic on T_rho with avg(g)=0; 0<delta<rho; g real on real points (for realness); vector/matrix valued componentwise`

### `step:p1:coh-data`

Graph L3513; `blueprint/parts/p1-analysis.tex#step:p1:coh-data@L906-L908`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `g scalar holomorphic bounded 1-periodic on T_rho, avg(g)=0`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); g scalar holomorphic bounded 1-periodic on T_rho, avg(g)=0`

### `step:p1:coh-weighted`

Graph L3568; `blueprint/parts/p1-analysis.tex#step:p1:coh-weighted@L917-L932`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `coefficient bounds of coh-data and coh-coefficients; s=2 pi(rho-delta/2)`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); coefficient bounds of coh-data and coh-coefficients; s=2 pi(rho-delta/2)`

### `step:p1:coh-existence`

Graph L3597; `blueprint/parts/p1-analysis.tex#step:p1:coh-existence@L934-L937`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `weighted estimate; a_k`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); weighted estimate; a_k`

### `step:p1:coh-equation`

Graph L3626; `blueprint/parts/p1-analysis.tex#step:p1:coh-equation@L939-L944`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u=sum a_k chi_k on T_rho-delta`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); u=sum a_k chi_k on T_rho-delta`

### `step:p1:coh-unique`

Graph L3656; `blueprint/parts/p1-analysis.tex#step:p1:coh-unique@L946-L953`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u~ holomorphic and 1-periodic on T_{rho-delta}, avg(u~)=0, Du~ omega=g (no bound)`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); u~ holomorphic and 1-periodic on T_{rho-delta}, avg(u~)=0, Du~ omega=g (no bound)`

### `step:p1:coh-vector`

Graph L3713; `blueprint/parts/p1-analysis.tex#step:p1:coh-vector@L962-L968`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `scalar case (existence, bound, equation, uniqueness, realness)`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); scalar case (existence, bound, equation, uniqueness, realness)`

### `bp:p1:cohomological-operator`

Graph L3743; `blueprint/parts/p1-analysis.tex#bp:p1:cohomological-operator@L971-L974`. Scope: strip context inherited from the referenced cohomological lemma / enclosing real-restriction lemma.

Current: `the cohomological lemma; g:T_rho->C^{pxq} holomorphic bounded 1-periodic, avg(g)=0, operator norm; (second claim) u holomorphic periodic with avg(u)=0`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); the cohomological lemma; g:T_rho->C^{pxq} holomorphic bounded 1-periodic, avg(g)=0, operator norm; (second claim) u holomorphic periodic with avg(u)=0`

### `step:p1:coo-entries`

Graph L3774; `blueprint/parts/p1-analysis.tex#step:p1:coo-entries@L980-L983`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `g matrix valued; cohomological lemma applied entrywise`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); g matrix valued; cohomological lemma applied entrywise`

### `step:p1:coo-vectors`

Graph L3801; `blueprint/parts/p1-analysis.tex#step:p1:coo-vectors@L985-L990`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `v in C^q, |v|<=1; u from coo-entries`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); v in C^q, |v|<=1; u from coo-entries`

### `step:p1:coo-norm`

Graph L3830; `blueprint/parts/p1-analysis.tex#step:p1:coo-norm@L992-L995`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `vector bound of previous step; u from coo-entries`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); vector bound of previous step; u from coo-entries`

### `step:p1:coo-apriori`

Graph L3859; `blueprint/parts/p1-analysis.tex#step:p1:coo-apriori@L997-L1003`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u holomorphic 1-periodic on T_rho, C^p or C^{pxq} valued, avg(u)=0, ||Du omega||_rho <= H < infinity`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); u holomorphic 1-periodic on T_rho, C^p or C^{pxq} valued, avg(u)=0, ||Du omega||_rho <= H < infinity`

### `bp:p1:decay#boundary-radius`

Graph L3889; `blueprint/parts/p1-analysis.tex#bp:p1:decay#boundary-radius@L821-L822`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `u holomorphic, bounded and 1-periodic on T_rho; rho>0`

Proposed SOURCE_HYPOTHESES: `n >= 1 (standing, p1-analysis.tex L37-L39); u holomorphic, bounded and 1-periodic on T_rho; rho>0`

### `bp:p1:real-restriction-consequences`

Graph L3996; `blueprint/parts/p1-analysis.tex#bp:p1:real-restriction-consequences@L1039-L1045`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `l:C^n->C^p C-linear with l(R^n) in R^p, l_R its restriction; K:T_rho->C^n x C^n primary on T_rho and real on reals, k its restriction to R^n`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); l:C^n->C^p C-linear with l(R^n) in R^p, l_R its restriction; K:T_rho->C^n x C^n primary on T_rho and real on reals, k its restriction to R^n`

### `step:p1:rr-analytic`

Graph L4054; `blueprint/parts/p1-analysis.tex#step:p1:rr-analytic@L1057-L1059`. Scope: direct strip or strip-norm occurrence at the statement locator.

Current: `K:T_rho->C^p holomorphic with K(R^n) in R^p; T_rho open, T_rho cap R^n=R^n`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); K:T_rho->C^p holomorphic with K(R^n) in R^p; T_rho open, T_rho cap R^n=R^n`

Refutation check: the old equality T_rho cap R^n=R^n already excludes nonpositive rho once n>=1. The proposed width records the convention explicitly.

### `step:p1:rr-derivative`

Graph L4081; `blueprint/parts/p1-analysis.tex#step:p1:rr-derivative@L1061-L1065`. Scope: strip context inherited from the referenced cohomological lemma / enclosing real-restriction lemma.

Current: `K holomorphic on T_rho, K(R^n) in R^p; x in R^n`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); K holomorphic on T_rho, K(R^n) in R^p; x in R^n`

### `step:p1:rr-consequences`

Graph L4107; `blueprint/parts/p1-analysis.tex#step:p1:rr-consequences@L1067-L1070`. Scope: strip context inherited from the referenced cohomological lemma / enclosing real-restriction lemma.

Current: `K:T_rho->C^p holomorphic and real on reals; k its real restriction; x in R^n; K primary when the primarity clause is claimed`

Proposed SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); K:T_rho->C^p holomorphic and real on reals; k its real restriction; x in R^n; K primary when the primarity clause is claimed`

## Context-only coefficient steps (supplementary, not additional direct-strip findings)

The following three locators do not themselves assert a strip statement or strip-norm estimate. They inherit strip data from their enclosing proof. They are listed to avoid losing them if the orchestrator requires every contextual node to carry the standing premises explicitly.

- `step:p1:sum-coeff` (graph L3390; `blueprint/parts/p1-analysis.tex#step:p1:sum-coeff@L853-L859`): proposed contextual SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); series converges uniformly on [0,1]^n`
- `step:p1:coh-coefficients` (graph L3540; `blueprint/parts/p1-analysis.tex#step:p1:coh-coefficients@L910-L915`): proposed contextual SOURCE_HYPOTHESES: `n >= 1 and rho > 0 (standing, p1-analysis.tex L37-L39); gamma>0, tau>=0, omega Diophantine (gamma,tau); datum g as in the enclosing lemma with hat g_0=0 from step:p1:coh-data`
- `step:p1:coh-real` (graph L3685; `blueprint/parts/p1-analysis.tex#step:p1:coh-real@L955-L960`): proposed contextual SOURCE_HYPOTHESES: `n >= 1 and rho > 0 and rho-delta > 0 (standing, p1-analysis.tex L37-L39); g real on R^n`

## Suspected source tension and limits

**S1 — source/convention tension, not a refutation of the five amendments.** Standing convention L37-L39 says every strip in a statement has positive width. Yet periodic-bounded L518 quantifies "for every $\rho'<\rho$", and pb-compact L523 explicitly says "If $\rho'\le0$, then $T_{\rho'}$ is empty." The graph pb-compact conclusion preserves this branch. A separate reread against the actual strict strip interpretation supports the empty-strip assertion for n>=1; it is the global-positive-width wording versus the wider local branch that needs clarification. Reported as an editorial scope tension; do not remove the branch or claim the blueprint theorem is false. No pinned external-source erratum was investigated.

No introduced mathematical deviations. The extra-width proposals above merely spell out positive widths; they do not repair unrelated missing source premises (for example explicit loss ranges or enclosing-solution data). Generic open polydiscs are not strips; real-only averages/Fourier clauses, coefficient-only exp-sums, and the numerically stated iteration lemma are not included merely because their proofs are later used on strips. The cauchy-strip-2 and cs2-polydisc source labels occur in the blueprint but have no matching Part 1 NODE record in this graph; they are outside the requested existing-node scan.

## Checks and closeout

- Mechanical field comparison: 5/5 preserve the old hypotheses after removal of exactly the standing additions; 5/5 retain the AUTHOR and request no other structural operations.
- Full Part 1 node inventory and source-locator read completed; every other strip-bearing node above has an explicit proposed field. Inherited coefficient contexts are separated from direct-strip findings.
- Only five REVIEWER lines are replaced in the draft. Its other bytes are unchanged. The existing AMENDMENTS.draft.orig.md is left untouched.
- No Lean files or theorem bodies changed. Lean build, lint_sources.sh and #print axioms were not run: this is the explicitly read-only graph/source review, with no owned Lean modules. Repository status and audited input hashes were rechecked; concurrent bookkeeping changes are recorded below.

Final draft SHA-256: `555b85fadca25a692dfb7c8c8291c9965db3292cf3becab39eb3f6bc8467b76c`.

Closeout: five approvals entered; zero rejected or pending draft records; no repository writes by this reviewer.

Concurrent-update gate: HEAD advanced to `b846a9dc17edc05cda6279799882905e5af98ad1` during review. Final DEPGRAPH SHA-256 is `743f6baa516a01193d7545224a3c9947b71c35fc704be9f10d4f9b48b124760b`; blueprint SHA-256 remains `2afd058105b3de64042c142ec1c4eeba063b3c973e26ab980e7b668bc0232407`. Recomparison of ALL 142 Part 1 node fields, excluding only LEAN_STATUS / LEAN_REF / LEAN_NOTE, is byte-for-byte equal across the two revisions. Thus every audited source hypothesis, locator, conclusion, dependency and other structural field is unchanged and all five approvals remain applicable. Final git status --short is empty. The concurrent Lean bookkeeping is outside this review.
