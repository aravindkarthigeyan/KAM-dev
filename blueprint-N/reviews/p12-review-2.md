# Part 12 review 2: fix-round closure

**Verdict: ACCEPT WITH FIXES.** N12-01 through N12-06 are closed for the averaging proof. No blocking or major regression was found. One new, nonblocking correction is needed in the explanation of the general compact-maximum fact; its statement is true and every application in Part 12 has the required finite-dimensional neighborhood.

Part 12 ready for graph extraction: YES

This is mathematical blueprint readiness, not a Lean proof, provider completion, or permission to change frozen statements. The remaining correction changes no theorem statement, source premise, constant, or dependency.

## Scope and inputs

Reviewed commit `2f1baa0bca7e892be84731f873dc45e7a99b6ecb` (“blueprint-N Part 12: fix round 1”), using `git log -p -1 --follow -- blueprint-N/parts/p12-averaging.tex` and the comparison `8d4662e..HEAD` restricted to the blueprint parts. Read the current Part 12 in full and compared it with the original six findings in `p12-review-1.md`.

Only seven Part 12 lines changed: L22, L37, L38, L64, L93, L100 and L140. All later estimates were nevertheless re-read and recomputed, including every use of the regularizer bounds. The only other blueprint-part change in that comparison is the Part 0 introduction, replacing its outdated D22 freeze-status text. The D28 definitions and theorem transcriptions are unchanged in substance and now occupy L341–406.

| Input | Size | SHA256 |
|---|---|---|
| `blueprint-N/parts/p12-averaging.tex` | 309 lines; 47,301 bytes | `0338868538c2d536dca5ba11b18728f2013601ba28e1450859829db0e6706368` |
| `blueprint-N/parts/p0-conventions.tex` | 406 lines; 35,937 bytes | `7872daf0bb0ba79e7cb48c79228057e021f432cca2a22d17217ffc1d1c2faaaa` |

Re-read the four authoritative frozen averaging declarations and the cited Part 1 regularity, Part 3 maximal-solution and Part 4 domain/coefficient interfaces. The original audit's primary-source comparison and declared deviations remain applicable: the fix round introduces no new paper-dependent claim. Followed AGENTS.md, docs/PLAN.md, docs/DECISIONS.md and both review briefs. No frozen file or provider was edited or used as a substitute for the mathematics.

## Closure of the six findings

| Finding | Current location | Status | Verification against the proposed fix |
|---|---|---|---|
| N12-01 | L64, `stepN:p12:fl-inverse` | CLOSED | Uses `y(u)=gamma_x(t+u)` on `[-t,0]`, so y solves F. The closed interval contains 0 and gen-maximal puts it inside the open maximal interval through Phi_t(x); hence its left endpoint is strictly below -t. The inverse identity and the converse follow with the correct signs. Both maps are continuous by the already established joint flow continuity. |
| N12-02 | L100, `bpN:p12:corrector`; all later uses below | CLOSED | Global estimates are nonsingular for every real y. Each reciprocal estimate explicitly requires y!=0. The explanatory derivative bound uses `abs(kappa^2-y^2)<=max(kappa^2,y^2)` and the strictly positive denominator; this is valid. No later use divides by a resonant q_k. |
| N12-03 | L93, `stepN:p12:co-a` | CLOSED | Specifies the embedded base set D=iota(B(0,R)), action width r=s and angle width s. Thus the Part 4 domain is exactly the frozen domain `T_s x B(0,R)_s`. No R<=s restriction or analytic-domain enlargement remains. Decay still uses angle shift s/2, and action Cauchy still uses radius s/2. |
| N12-04 | L22 and L140, regularity and `stepN:p12:la-inj` | CLOSED | Regularity now comes from holo-real(b),(c), available from hh. The explicit onto/transpose argument applies equally to square M and rectangular A=(M,omega): if A^T e=0, choose Az=e and obtain `abs(e)_2^2=(A^T e) dot z=0`. Hessian symmetry justifies the displayed mixed-partial order. No unsupported equal-dimension theorem or added derivative bound is used. |
| N12-05 | L37, `bpN:p12:ext-dep` | CLOSED at mathematical blueprint level | Explicit compact trapping ball, smaller initial ball, time smallness, Picard contraction, derivative bound, linear Volterra fixed point and derivative convergence are now supplied. The initial-data derivative is correctly identified as an infrastructure lemma to prove, rather than an available Mathlib result or an averaging premise. Details checked below. |
| N12-06 | L38; uses at L82, L256, L280 | CLOSED for its statement and all uses | The maximum is now over compact [0,T] or [0,t]. Variable time is reduced to the fixed parameter v in [0,1] through u=vt. The flow domain has the required initial time-segment property. The former unrestricted maximum no longer occurs as an asserted external result. A minor issue in its new general proof explanation is recorded next. |

## Remaining finding

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| N12R2-01 | L38, `bpN:p12:ext-markov` | minor; nonblocking | The statement allows an arbitrary topological, in particular metrizable, parameter space U, but the parenthetical proof appeals to “a compact neighbourhood of any x”. A metrizable space need not be locally compact, e.g. an infinite-dimensional Hilbert space. The compact-maximum theorem itself is true without that assumption. All parameter domains actually used here are finite-dimensional and locally compact, so this does not invalidate the averaging proof or its graph contracts. | Replace that parenthetical with: “by joint continuity and a finite subcover of [0,T], for every x0 and delta>0 there is a neighborhood V of x0 such that abs(g(u,x)-g(u,x0))<delta for all u in [0,T] and x in V; therefore the two maxima differ by at most delta.” This proves the stated generality without adding a premise. |

To justify the proposed replacement, around each `(u,x0)` choose a product neighborhood controlling the change from `g(u,x0)`, and control `g(v,x0)` on its time factor as well. Finitely many time factors cover [0,T]; intersect their parameter neighborhoods. The resulting bound is uniform in time. No compactness, metric or uniform structure on U is required. For the actual Part 12 domains the author's compact-neighborhood explanation also works directly. The new finding is therefore a proof-explanation correction, not a reopened invalid-maximum claim.

## Recomputed changed steps

**Local C1 dependence.** With the new choices, `x in B(x0,delta/2)` and `a L<delta/2` keep every Picard iterate inside `closedBall(x,delta/2)`, hence inside the compact trapping ball `closedBall(x0,2delta)` in W. The bound on DF supplies Lipschitz constant Lambda on this convex ball; q=a Lambda is nonnegative and <1. The integral operator maps the closed tube of bounded continuous families into itself and is a contraction there.

For the derivative iterates,

    Y_0=Id,
    Y_{m+1}=Id+integral DF(y_m)Y_m,
    sup abs(Y_m)<=1/(1-q).

The linear Volterra operator with coefficient DF(y) has a bounded continuous fixed point Y with the same bound. Uniform continuity of DF on the trapping ball gives d_m->0. Subtracting the integral equations gives exactly

    sup abs(Y_{m+1}-Y)
      <=q sup abs(Y_m-Y)+a d_m/(1-q).

A geometric-recursion argument implies convergence to zero; summability of d_m and Lipschitz continuity of DF are not needed. Uniform convergence of initial derivatives on the open initial ball identifies D_x y with Y, jointly continuous. The integral equation gives its time derivative and the variational equation. The proof also handles L=0 or Lambda=0; a positive sufficiently small a always exists. It remains substantial Lean infrastructure, with no claim of an already completed provider.

**Flow inverse.** In the positive-time direction, the shifted curve has y(0)=Phi_t(x) and y(-t)=x. In the converse direction, for z in Omega_{-t} use `u ↦ gamma_z(u-t)` on [0,t], starting at Phi_{-t}(z) and ending at z. Both have two-sided derivatives at the interval endpoints because the original trajectories are defined on neighborhoods. Thus injectivity and the change-of-variables use at L227 are justified without reversing F.

**Rank.** The new adjoint proof works with the Euclidean dot products used explicitly in this subsection, independently of the ambient max norm. It preserves the positive compact minimum on `G x S^{n-1}`, and the threshold `abs(e dot omega)<=lambda/2` still gives a gradient coordinate of size greater than `lambda/(2 sqrt n)`. The cube cover, coordinate Fubini argument and scaling `u/abs k_2` are unchanged and valid, including full rank at omega=0 and the projective-only branch.

## Every later use of the regularizer bounds

Let `p=psi_kappa`, `d=y^2+kappa^2`. Since kappa>0, d>0. Direct computation gives

    p=y/d,
    p'=(kappa^2-y^2)/d^2,
    1-y p=kappa^2/d.

The global estimates follow from `2 kappa abs(y)<=d` and `abs(kappa^2-y^2)<=d`; at y=0 their values are respectively 0, kappa^-2 and 1. For y!=0, d>=y^2 supplies the reciprocal estimates. I checked the following complete downstream use chain.

| Use | Spans | Guard and result |
|---|---|---|
| Envelopes and regularity | L101–109, L112–128 | The envelope formulas keep d in the denominator, so are finite and continuous for fixed kappa>0 before summation. Uniform convergence of value/first-derivative series uses only `abs p<=1/(2 kappa)` and `abs p'<=kappa^-2`, on smaller action balls. There is no hidden nonresonance assumption. The row-sum inequality is `sum_j abs(partial_j q_k)<=M_2 abs k_1`. |
| Divisor identity | L116, L126 and L194–202 | Uses the exact identity `1-q p(q)=kappa^2/(q^2+kappa^2)` for every q, including q=0. Corrector signs and 2 pi factors are preserved. |
| Core Z_0 | L174–177 | Uses only global bounds: contributions are at most `C_1/(2 abs k_2)`, `C_1/(kappa abs k_2)` and `C_1 kappa/abs k_2` for p, p' and the residual. Z_0 may contain all exact resonances. |
| Outer shells Z_j, j>=1 | L174–177 | Here `abs q_k>2^{j-1} kappa>=kappa>0`. Every reciprocal bound has its nonzero guard. The outer contributions are respectively `2 C_1/abs k_2`, `4 C_1/(2^j kappa abs k_2)` and `4 C_1 kappa/(2^j abs k_2)`. The last two geometric sums have total factor 1+4=5. |
| Envelope integrals | L180–189 | Tonelli and the corrected shell results give the original c_W,c_B,c_R. The powers of k fit sigma of degree three; the M_2 term uses `abs k_1/abs k_2<=sqrt n`. `2/ln 2<3`, `ell_kappa<=1/kappa`, and `epsilon ell_sqrt(epsilon)<=2 sqrt(epsilon)` remain valid. |
| Pointwise maximum | L205–215 | Coefficient variation uses B along the trajectory. Combining it with Q gives the unchanged integrand `(4 epsilon/s) B+(2 epsilon/s) W_1+Rhat`. No reciprocal bound is applied afresh along a possibly resonant trajectory. |
| Transport and stopped integral | L220–245 | Uses the already nonnegative Borel envelopes, corrected flow injectivity, determinant 1 and half-open period-cell disjointness. The stopped integrand is extended by zero outside S; its endpoint has zero time measure. Tonelli transports at fixed time, never interchanges a time maximum and an initial-data integral. |
| Final theorems | L248–288, L294 | Use kappa=sqrt(epsilon)>0 and the stopped mean bound. They introduce no other small divisor. The final kappa in the mean Markov clause is a separate arbitrary positive volume budget; it is not constrained by the regularizer's upper bound 1. |

The stopped endpoint still lies strictly inside the maximal existence interval, by first exit or periodic compact-action continuation. Before exit the action stays below 5R/8, inside G. At eta=rho the bad-data dichotomy remains valid. The supplied mean-theorem family is identified with the unique flow on K and the full window, so the compact-time maximum is continuous on K even when arbitrary values of Phi outside K are nonmeasurable. Its image is nonempty and bounded, guarding real sSup.

The final mean factor is still `1+(3R/2)/(R/8)=13`. Choices `epsilon_0=1`, `eta_0=R/8`, `A_most=A_1>=1` and `A_mean=13A_1` retain the frozen quantifier order. Neither absolute measure nor the actual-existence conclusion of averaging_most changed. No new premise or conclusion-shaped hypothesis was introduced.

## Regression and source limits

No other mathematical regression was found in the changed or downstream steps. Part 0's introduction now correctly acknowledges D25/D28; its one-line shortening changes line locators but not a theorem. The frozen global rank alternative, error from the constant action, positivity guards, solution predicates and constant ordering remain the authoritative contracts.

The earlier declaration of source deviations still applies. In particular, retain E-NAVG-NEI-17 in its D28 candidate classification: Nei76 p.1298 (17) equates a time supremum of a fixed-time integral with the integral of the time maximum; that exchange is not automatic. The pointwise-envelope repair remains intact. No new primary-source erratum or frozen-statement defect is asserted in this round. No ledger was edited.

## Checks

- `cd blueprint-N && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: exit 0; PDF **102 pages**, 1,538,880 bytes. Final log: **0 lines beginning `!`**, **0 undefined-reference warnings**. Layout/PDF-string warnings are nonfatal.
- `PYTHONDONTWRITEBYTECODE=1 scripts/lint_sources.sh`: exit 0; `check_lean_modules: PASS (221 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (144 frozen declarations)`.
- Re-ran the existing `check_corrector.py` scratch diagnostic: nine cases, including q=0 and two finite tube exits; all passed. Worst corrector-identity residual 5.26e-12; smallest stopped-envelope slack 0.0872. These diagnostics do not replace the proof.
- Inline regularizer diagnostics: 428 signed/core/boundary sample points passed; the bounds were also checked analytically above. Recomputed shell factor 5, 2/log(2)=2.885390..., 2/e=0.735758... and final mean factor 13. Exact-label scan found no unresolved Part 12 reference.
- `git diff --check -- blueprint-N/reviews/p12-review-2.md`: exit 0, no output. Both reviewed source hashes were rechecked unchanged at handoff.
- No Lean module was authored or built, no proof/axiom receipt is claimed, and no resource override was used. Only this report was authored; the prescribed LaTeX command regenerated ignored review outputs. No source, frozen file, manifest, graph packet or other report was edited.
