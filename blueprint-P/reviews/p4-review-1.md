# Track P, Part 4: independent review 1

## Verdict: REVISE

The direct two-scale Diophantine measure estimate is correct. Its three slicing arguments avoid CP10's growing covering number, and the cell budget has the correct polar Jacobian, shell loss, period conversion and Part 3 constant. **The writer's substantive E1 and E2 objections are supported by the pinned source.**

Two local issues require revision: the standalone relative domain-collar lemma lacks a positive-volume hypothesis, and the Part 5 handoff drops a factor 1/μ in its bound on the enlargement radius. Neither requires changing the frozen P-G theorem. In particular, the intended O(sqrt(r)) estimate follows with the corrected radius bound.

## Scope, immutable inputs and validation

Focused tier-2 refute-first audit under `.drafts/briefs/bp-review.md`. Reviewed **233 lines, 34,215 bytes** in `blueprint-P/parts/p4-pg-measure.tex`, SHA-256 **`159a895de8a4a108d4091ecf2223d6cb9702167b4cefbbf97f5bf3ede5a87e6c`**. Initial HEAD was `b087f1f82b93a67c28df6fd8be42f70041fe4b2f`; concurrent unrelated work was present, so file hashes define the snapshot. The reviewed hash was checked again after the mathematical and build checks.

| Checked input | SHA-256 |
|---|---|
| CP10, `sources/incoming-P/cp10.pdf` | `68fbf161e0aa62fc966f33b3b3c49e2ab0fbcca3eb7fdb0950d62eadcdf18338` |
| Part 1, `p1-hamiltonian-tools.tex` | `1a4219ec164d0ad9d16ee24dc5a98a854b0502e0f8c20c3467e3cae21ad89da1` |
| Part 3a, `p3a-two-scale-iteration.tex` | `20ca825e59c33a8f2ba38265dcc453e9809b24705811ecdfb89da2251ccc2982` |
| Part 3b, `p3b-two-scale-limit.tex` | `f8d2719c1a45f48e2b85689da930043bd49a91b387c5b296aa97109cfb4202e4` |
| Frozen `ProperlyDegenerateKAM.lean` | `1bcb13a5806216c67505db05767d734be1f2d0da45cffb19d7b708428def61b9` |

Read the governing AGENTS/PLAN/DECISIONS, writer conventions, P PLAN and track-P source/audit records; compared the literal frozen `hboundary`, `HasFastDiffeomorphism`, cylinder/cell and Birkhoff-form contracts. Checked Part 1's current measure and period interfaces, Part 3's actual (3.1) and numerical-bound choices, and K's lattice count/sum and Lipschitz-image lemmas. Read CP10 printed **pp.561–563 and 574–577** directly from the pinned PDF text; visually inspected pp.561–563 and 574 to verify the disputed formulas and page locators.

- `cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0, 56 pages**, final log **0** lines beginning `!` and **0** undefined-reference/citation warnings. The document does not yet contain Part 5; typeset cross-track/forward citations are not evidence that their target proof has been written.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (180 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (140 frozen declarations)`.
- No Lean build, provider proof or fresh `#print axioms` is claimed. Only the two requested review reports were authored; manuscript/frozen/source-ledger files were not edited. Temporary source-page images and ignored LaTeX artifacts were used.

## Findings

All findings survived a separate point-of-use and counterexample reconsideration.

| ID | Location / anchor | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| P4-01 | `bpP:p4:domain-collar`, lines 156–164: divide by `meas(D)=meas(bar D_t) ell^b` | **major**, standalone helper | The statement assumes only 0<t<d, which does not imply positive volume of the inner core. Take a=b=1, V=(−1,1), A=4,d=2, t=1, λ_1=1,λ_2=2,r_K=1/4. The frozen collar estimate holds, but bar D_t={0} and meas(D)=0. Its enlargement is (−1/4,1/4)×(3/4,9/4), of area **3/4**. The displayed normalized right side is undefined in ordinary arithmetic and zero under Lean's total real division. Thus the lemma is false as a totalized statement. The later `budget` does have the missing premise through S4; that does not repair this independent lemma. | Add `0 < meas(bar D_t)` to this lemma, or the sufficient condition `At < meas(V)`. Alternatively first state the unnormalized bound `At(ell+2r_K)^b + meas(bar D_t)[(ell+2r_K)^b−ell^b]`, valid without division, and normalize only under positivity. In Part 5 choose `A sqrt(r) ≤ meas(V)/2` to obtain a uniform positive denominator. |
| P4-02 | `bpP:p4:use5`, line 220: `r_K≤C rhohat≤C gamma_2` | **major**, uniformity/interface | The slow Hessian bound is Mhat=Cμ, so Part 3 gives `rhohat≤gamma_2/(3Cμ K^(tau+1))`, not a uniform bound by C gamma_2. With gamma_1=Γr^(5/2), gamma_2=μΓr^(5/2), E=Cμr^5 and the numerical bounds chosen in current P3b, K, rhohat, Ehat and r_K can all be independent of μ at fixed r, while gamma_2→0. KAM smallness does not restore the missing μ factor. | Replace this chain by `r_K≤C rhohat≤C gamma_2/μ` (equivalently use the CP slow constant bar gamma_2, with its 2π dictionary). This suffices: gamma_2/μ=O(r^(5/2)) and ell≥r²/4 imply `r_K/ell=O(sqrt(r))`. Keep strict `r_K<min(t,lambda_1)` by choosing its numerical coefficient with room, as required by the budget. |
| P4-03 | `bpP:p4:lemma-3-1`, `bpP:p4:errata` E1, source locator | minor | The quotation “with c_i independent of ε and μ” is on **p.563, first line**, continuing (59) from p.562. Also, the abstract printed claim that p depends only on bar D and omega_1 is itself too strong: in the writer's counterexample both remain fixed as rhat shrinks. “The lemma is true for each rhat” must mean the weakened, radius-dependent version, not the printed independence assertion. | Cite pp.562–563, identifying (58)/(59) on 562 and the independence sentence on 563. Say explicitly that the pointwise-in-rhat estimate allows p=p(rhat); the printed restricted-dependence claim is not accepted. |

## What I recomputed: the direct measure theorem

Write n=a+b, with a,b≥1 as in frozen P-G. All coordinate and operator estimates use max norms; integer lengths are l1 lengths. The slicing direction is chosen separately for each resonance, so no convexity of the fast action domain is smuggled into the proof.

### Uniform inverse and torsion constants

`HasFastDiffeomorphism` supplies analyticity of H0, an open frequency image and a C1 inverse g with both inverse identities. The frequency image of closure(V) is compact inside that open image. A C1 map on a neighborhood of a compact set is Lipschitz on that compact set even when it is nonconvex: a hypothetical sequence of unbounded difference quotients has coalescing endpoints, which eventually lie in one convex local ball with bounded derivative. This verifies `lip-compact` and `lip-inverse`; the argument does not infer a global Lipschitz bound from a derivative bound on a nonconvex set alone.

For β, each cofactor is bounded by `(b−1)! M_beta^(b−1)`. Summing a row after division by `abs(det beta)≥B` gives exactly

`L_beta = b! M_beta^(b−1)/B`.

The b=1 empty minor is 1. S4 may enlarge this bound to at least 1. Uniform boundedness and regularity of the coefficient family remain a Part 5 obligation from the frozen analytic averaged jet; they are not consequences of the determinant lower bound alone.

For lattice shells, K supplies `#{abs(k)_1=l}≤2·3^(n−1)l^(n−1)`. Integral comparison gives precisely

`S_1=2·3^(n−1)(tau+1−n)/(tau−n)`,

`S_2=2·3^(b−1)(tau+2−b)/(tau+1−b)`.

For the tail, convexity gives `l^(−p)≤integral_[l−1/2,l+1/2] x^(−p) dx`. If l>m≥1, these disjoint intervals lie above m/2. With p=tau+2−n this yields `C_T(2/m)^(tau+1−n)`, where `C_T=2·3^(n−1)/(tau+1−n)`. No endpoint or integer-floor factor is missing.

### Slow, fast-dominated and slow-dominated resonances

For k_1=0, dividing both frequency and threshold by μ cancels μ exactly. Choose a component of β^T k_2 of size at least `abs(k_2)_1/(bL_beta)`. The affine slab estimate gives

`meas(R_k) ≤ meas(bar D) 2 bar gamma bL_beta (2lambda)^(b−1) abs(k_2)_1^(−tau−1)`.

After summation and normalization by `(2lambda)^b`, its coefficient is exactly `c_2=bL_beta S_2` multiplying `bar gamma/lambda`.

Change coordinates by `(I,xi)→(omega_H0(I),xi)`. The inverse product map is max(1,L_g)=Lambda_g Lipschitz in total dimension n. K's max-norm cube-covering lemma therefore gives the valid factor **Lambda_g^n**, without a Euclidean norm-conversion factor. The image is Borel: the input is Borel and the coordinate map is continuous and injective. Its fast coordinates lie in `[−R_y,R_y]^a`.

For K_A, choose j with `abs(k_1,j)=abs(k_1)_infty`. The nonlinear difference has modulus at most `μ Lambda_N Lambda_g abs(k)_1 abs(s)`, at most half the leading linear difference. Any two points of a resonant section are therefore less than `4alpha_k/abs(k_1,j)≤4alpha_k` apart. This is a diameter estimate on the possibly disconnected section, so Tonelli applies without counting its components. Summation yields the first contribution

`Lambda_g^n 4S_1(2R_y)^(a−1) alpha_1 (2lambda)^b`.

For K_B, failure of K_A implies

`abs(k)_1>K_mu=(2μ Lambda_N Lambda_g)^−1≥1`.

With `M=2b Lambda_N L_beta` and the stated upper bound on μ_1, the inequality `abs(k_2)_1≤M abs(k_1)_1` would put the vector back in K_A. Thus

`abs(k)_1≤2b abs(k_2)_infty`, and

`Lambda_N abs(k_1)_1≤abs(k_2)_infty/(2L_beta)`.

At fixed y, β is independent of xi. On the part where its j-th component is large, differences in xi_j have divisor slope at least `μ abs(k_2)_infty/(2L_beta)`. Sections have diameter at most

`8b L_beta alpha_1 abs(k)_1^(−tau−1)/μ`.

The b possible components cover the resonant set; disjointness is not needed. Summing the tail above K_mu gives exactly

`Lambda_g^n (2lambda)^b 4b²L_beta(2R_y)^a C_T (4Lambda_N Lambda_g)^(tau+1−n) alpha_1 μ^(tau−n)/lambda`.

Taking the maximum of the fast and tail coefficients produces the displayed c_1. I found no missing b, 2, volume denominator or power of μ. Dividing by meas(bar D) is guarded by S4. When bar D=bar D_t varies with r, its dependence is controlled uniformly by `meas(bar D_t)≥meas(V)/2` for sufficiently small r; the other constants were obtained on the fixed closure(V).

The theorem needs tau>n. For the later simple parameter choice, **tau≥n+1 is sufficient**, since for 0<μ<r^6<1,

`μ^(tau−n)/(r²/2) ≤ 2r^4`.

The frozen smallness premise uses `r^6/(log(1/r))^c`, so Part 5 should also shrink rStar below e^−1 before using μ<r^6. This is permitted by the frozen quantifier order. Choosing tau once from the fixed dimensions is permitted; no frozen input fixes tau in advance.

## Inner collar, polar cell and both budgets

The inner core is compact by continuity of distance to the nonempty frontier and boundedness of V. Its lost part lies inside the literal **two-sided max-distance** collar in frozen `hboundary`, yielding `meas(V\bar D_t)≤At`. Every open max ball of radius s<t centered in bar D_t misses the frontier and cannot cross from V to its complement. Therefore its entire s-neighborhood lies inside V. This pays the inner enlargement bound without relying on the source's unsupported outer-collar estimate.

For positive meas(bar D_t), the product enlargement has oscillator volume `(ell+2r_K)^b`. Its difference from the shell is bounded by `2b r_K(ell+2r_K)^(b−1)`. Splitting the product difference gives exactly eta_2. N8-style totality issues at empty sets are avoided here by the existential neighborhood definition, but the zero-volume normalization needs P4-01.

For one oscillator, p=sqrt(2xi)cos(psi), q=sqrt(2xi)sin(psi) gives

`dp wedge dq = dxi wedge dpsi`, `abs(det DPi)=1`.

On xi>0 and psi∈[0,2π), the polar map is injective. The map E scales each of the n angles by 2π **once**, hence its measure factor is `(2π)^n`. The action variable is unchanged and its upper bound is r²/2. Omitting the oscillator centers loses only finitely many codimension-two sets. Thus the frozen cell has measure

`(2π)^a meas(V)(πr²)^b = (2π)^n meas(V)(r²/2)^b`.

The singular-shell loss is exactly bounded by `b lambda_1/lambda_2`; for lambda_1=kappa r^(5/2), lambda_2=r²/2, this is **2b kappa sqrt(r)**. Half-open angular representatives and shell boundary faces do not add measure. The square root is used only for positive actions; differentiability at the omitted centers is not assumed.

The frequency dictionary is correct: Part 3's h=(H0+μN)/(2π), so its frequency is omega_mu/(2π). Therefore alpha_i=2π gamma_i and bar gamma=2π gamma_2/μ. There is no second division of the frequency and no scaling of a previously scaled output angle.

In `budget`, restricting the ambient complement in (3.1) to D only decreases it. Normalizing `(2lambda_2)^b` by `ell^b`, with ell≥lambda_2/2, costs at most **4^b**. The Part 3 constant is unchanged:

`c_n = 1+(1+2^n)(1+(4/3)^n)`.

In `cell-budget`, the fraction retained before deleting tori is `(meas(bar D_t)/meas V)(1−lambda_1/lambda_2)^b`. The claimed lower bound follows either from the union of the fast collar and the slow coordinate shells, or directly by writing the loss as `u+(1−u)[1−(1−x)^b]≤u+bx`, with u the actual fast loss fraction. This avoids any issue if a crude upper bound At/meas(V) exceeds 1. The lost-torus term receives the same `(2π)^n` factor as the cell, which cancels in the relative bound. No extra angle-cell volume or c_n is needed.

These are measure-budget implications. The final averaging reconstruction map, its cell containment, Borel whole-torus selection, positivity and strict deletion required by frozen P-G remain Part 5 obligations. A bound for E(K) alone is not a proof of the final deformed physical set's containment or strict relative inequalities.

## Writer's CP10 errata, checked against the PDF

| Item | Disposition and exact evidence |
|---|---|
| **E1** | **Substantive objection verified.** At a=b=1, bar D=[0,1], omega=(I_1,I_1+I_2), the inverse derivative, β=1, omega_1 and bar D stay fixed. The mixed vector (1,−1) has divisor abs(I_2). Taking gamma_1>2^tau rhat makes the full domain resonant; equality gives the same full-measure conclusion after ignoring boundary faces. Let gamma_2/rhat tend to zero in the claimed estimate. Necessarily `c_1≥2^(−tau)/rhat` in the limit. Also, the second-coordinate projection of the frequency image has length 1+2rhat, while each U_i of (111), p.574, projects to an interval of length 2a rhat. Thus p≥(1+2rhat)/(2a rhat). The proof cannot supply radius-independent constants from the abstract assumptions. This refutes the abstract uniformity assertion, not the properly degenerate KAM theorem or every possible structured use of the lemma. |
| **E2** | **Verified mismatch.** P.562 first defines omega_mu=(partial_fast(H0+μN), μ partial_slow N), then applies the lemma to omega_resc with its slow block unscaled. Mixed resonances change. For a concrete point, let H0(I)=I²/2, N(xi)=xi+xi²/2, μ=sqrt(2)/10 and (I,xi)=(μ,0). Then omega_mu=(μ,μ) is exactly resonant at (1,−1), whereas omega_resc=(μ,1) is Diophantine for sufficiently small positive thresholds. Indeed `abs(p sqrt(2)/10+q)≥1/[100(abs p+abs q)]` for nonzero integer pairs, by multiplying by the quadratic conjugate. This also implies the tau>2 bound. Both maps are diffeomorphisms and β=1. There is no general inclusion of the original mixed-resonant set in the rescaled one at those thresholds. The direct proof correctly treats omega_mu itself. |
| **E3** | Existing outer-collar gap confirmed as the quoted statement on p.561; frozen hboundary and the inner collar replace it. The scan shows bar gamma_2, not a new power of gamma. |
| **E4** | The scan really prints epsilon^(n_2/2) in (56), p.561. For the rectangular action shell, the exact excluded fraction is `1−(1−(check c_1/check c_2)sqrt(epsilon))^b`, whose leading term is `b(check c_1/check c_2)sqrt(epsilon)`. Thus an O(epsilon^(b/2)) bound with fixed constant is false for b≥2. The writer's tentative status can be upgraded for this displayed shell calculation; its own O(sqrt(epsilon)) replacement is correct. This does not refute the final O(sqrt(epsilon)) rate. |
| **E5** | The Jacobian and lattice-summability discussion is consistent with pp.575–577. The sums used here require exactly the stated exponent conditions. |

The new direct estimate is a disclosed replacement, not a transcription of CP10 Lemma 3.1. Its mathematical proof is accepted at this snapshot. Close this review after adding the domain-collar guard and correcting the slow-scale handoff; retain the source-defect distinctions and the unproved Part 5 obligations.
