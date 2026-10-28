# Closure check: track P Parts 7–10 and 11b

**Parts 7, 8, 9 and 11b: CLOSED. Part 10: OPEN for one minor regression in the repair.** All 27 numbered findings from the five reviews, and the three additional Part 9 literal corrections, have been addressed. The new Part 10 issue is a false parenthetical equivalence at order zero; it does not invalidate the repaired stability inequality or its positive-amount consequence.

Date: 2026-10-28 UTC (inspection/build began 2026-10-27). Marker: `closure-p711`.

## Scope and snapshot

This is a focused, read-only closure audit under `.drafts/briefs/bp-review.md` and the manuscript-audit skill. CLOSED means that the required review fixes are present and the changed mathematical steps survive the regression checks below. It is not a new full proof/source audit of every unchanged calculation, a Lean proof receipt, a frozen theorem seal, or closure of the physical KAM assemblies.

Read each complete review: `p7-review-1.md`, `p8-review-1.md`, `p9-review-1.md`, `p10-review-1.md`, `p11b-review-1.md`. These are the latest reviews of the five requested parts in the current reviews directory; there is no Part 10 round 2 there. Read their numbered findings, extra literal corrections, source dispositions and closeout requirements. Compared the current text with the consolidation diffs, then reread the changed statements, proofs and points of use. Consulted AGENTS.md, governing PLAN/DECISIONS and writer conventions, the track source/statement records, cited sibling contracts, the frozen `HasSecularBirkhoffForm`, and relevant pinned-source pages.

Initial HEAD was `2aeff6c9e16459ffac2fde8f2f5a7bf2f97985cf`. Other agents advanced inp during this check; the following unchanged file hashes, rather than the moving HEAD, define snapshot **C1**. No audited part had an uncommitted change.

| Part / file under blueprint-P/parts | Lines | C1 SHA-256 | Last change |
|---|---:|---|---|
| 7, p7-kepler-poincare.tex | 295 | `3a10ddf74067a3c7b54184a190710deaba3019c97d2e0d5e9a3773b889cc26ab` | `2b7feeb` |
| 8, p8-secular-form.tex | 256 | `413806b9fcc86156e0b241da85668677b44bf142897c7039940504a50ae1febc` | `1cc91b0` |
| 9, p9-secular-spectrum.tex | 221 | `19271673e246eed9d444a3f370c479aa13685528e306f9addcddc550cc56da54` | `1cc91b0` |
| 10, p10-nondegeneracy.tex | 275 | `cd5a7ca21df961046c958c0560bf315bfbda72b4bdd932b3837c9e9a68914e10` | `1cc91b0` |
| 11b, p11b-planar-torsion.tex | 297 | `f8ce70a3460c855e1e04ea1a8d39c7a32a550f38b8097ca993a6a17efe012bf1` | `e68344a` |

Full fix commits: `2b7feeba58fbc0098ebabf45f33f85e5306cd4ce`, `1cc91b0b5e7e68f47130b73bfc6657fe56e2a725`, `e68344a8bcc62680ede25b357b544c0008071e6e`. All line locators below refer to C1. FIXED records a verified repair; OPEN records a remaining or newly introduced defect; OBSOLETE would mean an obligation disappeared with its subject. No numbered finding needed the OBSOLETE category.

## Part 7 — CLOSED

| Finding | Status | Current evidence and regression check |
|---|---|---|
| P7-01, observable carrier | FIXED | `bpP:p7:average`, p7:267 explicitly quantifies i and declares `varphi : Phase (2·2) → R`, equivalently R⁴×R⁴→R. Both displayed arguments now have that carrier. The substitution proof at :273 still applies to a general interacting observable; it was not weakened to a one-planet projection. |
| P7-02, contraction derivative sign | FIXED | `stepP:p7:rk-contr`, :112 now has `v0 cos F + v1 sin F`, the derivative of `lambda+v0 sin F−v1 cos F`. Its modulus is still at most cosh(1)/4<0.39, so neither the contraction nor the J>3/5 guard changes. |
| P7-03, source version and slow-block normalization | FIXED | `bpP:p7:normalisation`, :180 identifies the historical omission “as reported by Fej07e” and says pinned revised p.47 already has sqrt(2Lambda), sqrt(2G). It explicitly distinguishes a changed slow-block coefficient from a global conformal factor. The historical terminology is retained only with that qualification. The errata paragraph at :285 makes the same version distinction. |
| P7-04, Gamma derivative/frequency | FIXED | :180 now writes H2=sum sigma_j(xi_j²+eta_j²)=sum 2sigma_j Gamma_j, and identifies the frequency with the **first** Gamma derivative; it explicitly says the second Gamma derivatives vanish. No extra frequency or period factor was introduced. |
| P7-05, compact-neighborhood contract | FIXED | `bpP:p7:e-comp`, :44 uses the existential neighborhood form, valid for empty K and V=R^N. The actual application `stepP:p7:tu-cont`, :220 uses the continuous image of [0,1]^n, hence a compact nonempty torus, inside the open V_delta. Its neighborhood is exactly the circular tube, so replacing the external contract has not changed that argument. |

The changed averaging formula keeps the positive Jacobian J and normalization 1/(2pi). The eccentric longitude and the observable are periodic, so moving the endpoints of the full-period integral is legitimate. The circular case remains handled by the circular Kepler formulas, rather than by a strict noncircular-domain citation.

Additional source handoff from the review: `E-P7-Fej48` is already recorded in `docs/errata/ledger.json` as CANDIDATE, with the corrected small-eccentricity coefficient sqrt(Lambda) and the pinned p.48 location. It is not used in the chart proof. Closure does not require copying the entire errata ledger into this part.

## Part 8 — CLOSED

| Finding | Status | Current evidence and regression check |
|---|---|---|
| P8-01, excessive eccentricity domain | FIXED | `bpP:p8:quartic`(a), p8:221 replaces the uniform product by the open separated domain `alpha(1+|v_i|)<1−|v_j|`, with individual eccentricities <1/4. The old tangent example alpha=5/6,e_i=1/5,e_j=0 is expressly excluded: its left side equals 1. The sufficient radius `(1−alpha)/(1+alpha)` and the shrinking convergence neighborhood are stated. `q4-a`, :232 now proves analyticity only on this separated domain. |
| P8-02, false printed-r1 equality | FIXED | :225 defines `r1_ex=−h''''(0)/32+h''(0)/8` and uses it in both c1/c2 identities, explicitly in G=m0=1 units. It denies equality with the printed formula, identifies the alpha⁴→alpha³ repair, and cites the explicit periodic-derivative certificate at :238. `q4-c`, :234 uses the exact derivative formula from (b), not the defective printed input. |
| P8-03, endpoint positivity and series growth | FIXED | `bpP:p8:laplace`, :119 says nonnegative on [0,1), positive on (0,1), and gives the correct zero-mode/other-mode values at zero. :122–123 use `O((q+k+1)^(s−1)(q+1)^(s−1))`. `id-2`, :139 separates q=0 before using the q−1 Pochhammer term. |
| P8-04, unavailable collision guards in Lemma 64 | FIXED | `stepP:p8:l64-a`, :101 directly differentiates the decoupled Kepler Hamiltonian on the individual-nonzero-position domain and invokes chart-field/product-chart(b). It explicitly avoids the interacting P6 Hamilton-equations contract. The statement at :90 retains “no collision hypothesis”; the proof gives `p_i=m_i nu_i partial_lambda_i q_i` with the needed extra mass factor. |
| P8-05, revised-source normalization | FIXED | `factor-half`, :175 and the errata paragraph :247 distinguish the original omission reported by Fej07e from the inconsistency still present between revised (31) and (35)–(37). They identify the present Q_h as half the pinned printed matrix, with Omega=2sigma. No second halving has been applied downstream. |
| P8-06, complex kinetic polynomial | FIXED | `perturbation-analytic`(b), :43 explicitly writes `sum_c (sum_i p_c^(i))²/(2m0)`, labels it bilinear/holomorphic, excludes conjugation, and gives its real restriction. `pa-hol`, :50 uses that polynomial. |
| P8-07, insufficient mixed-quartic expansion | FIXED | :225 and `q4-c`, :234 distinguish proved existence/analyticity from explicit mixed values assigned to Part 11b. Third-order single-planet variations for bidegrees (3,1),(1,3) are explicitly required. Current Part 11b `orbit`, :28–40 contains those third- and fourth-order terms, so the follow-on calculation has not reverted to the inadequate quadratic truncation. |

Regression checks: a strictly positive radial separation gives a locally uniform positive distance on the compact fast torus, so the parameter integral is analytic on the corrected domain. The coefficient functions remain analytic throughout 0<alpha<1 because every circular parameter has such a neighborhood; no fixed eccentricity radius near alpha=1 is claimed. The c1/c2 coefficient conversion is unchanged: `−Gm_i m_j(h''''/64−h''/16)/Lambda²` equals the declared r1_ex formula in its stated units.

I independently recomputed the **newly inserted** certificate in :238 with exact SymPy polynomial/rational arithmetic. With D=1+x²−2xz and z=cos t, multiply by D^(9/2), expand H=(1−epsilon)/sqrt(D+A epsilon+B epsilon²) through degree four, and compare the repaired CP11 kernel with the derivative of `sin(t)R(x,cos t)D^(−7/2)`. Residual: **0**. Since D>0 for x>0,x≠1 and the primitive is periodic, the certificate proves the integral equality. Thus the correction is not accepted merely on its newly inserted numerical comparison.

`E-P8-Fej50`, the missing source momentum mass factor noted outside the original findings table, is now explicitly reported at :247 and recorded in the ledger. The blueprint's own Lemma 64 uses the correct factor.

## Part 9 — CLOSED

| Finding | Status | Current evidence and regression check |
|---|---|---|
| P9-01, false polynomial association | FIXED | `bpP:p9:n2`, p9:199 now says Phi4 and R have the “same zero set,” explicitly denies equality up to a nonvanishing factor, and records fourth-order resonance multiplicities. Part 10's base case uses only the nonvanishing criterion. |
| P9-02, alleged source constant inconsistency | FIXED | `lemma71` source note :44 gives one power of the bracket and explains absorption of `1+O(epsilon)` into 3. :31 identifies the source norm via (23). :212 explicitly withdraws E-P-Fej04r-4. The new numerical threshold remains a deliberate sharpening. |
| P9-03, allegedly unfinished source induction | FIXED | `l74` source note :84 cites pp.54–55 and the displayed positive difference formula. :212 withdraws E-P-Fej04r-5 and explains why only the narrower j=1 integration-by-parts result is imported. |
| P9-04, global two-planet eigenframe | FIXED | :197 and `n2-mat`, :202 use q12>0 and explicitly set `w=(q12,sigma1−q11)`, `v1=w/|w|`, `v2=Jv1`. The denominator is bounded below by q12>0, w is a sigma1 eigenvector, and symmetry gives the other eigenvector. The determinant is +1. General-n claims remain local. |
| P9-05, analytic parameter IFT API | FIXED | `bpP:p9:e-ift`, :21 identifies the parameter theorem via `ContDiffAt.contDiffAt_implicitFunction` at analytic order, both analytic/smooth conversions, scalar partial invertibility, and value/local-uniqueness lemmas. It also names the one-variable local-inverse theorem accurately. No new external premise replaces the IFT. |
| P9-06, norm/carrier bridge | FIXED | :15 introduces label `bpP:p9:norm-compare`, states max≤Euclidean≤sqrt(n)max and both induced square-matrix operator comparisons, and retains Euclidean perturbation constants explicitly. It directs the spectral theorem to matrix-valued conclusions on Fin n coordinates, avoiding EuclideanSpace as ambient carrier. |
| P9 extra literal correction: same-sign k | FIXED | `n2-res`, :203 now concludes “nonzero,” distinguishing positive k from negative k; it no longer claims every same-sign scalar product is negative. |
| P9 extra literal correction: printed eigenvalue list | FIXED | `dict`, :156 explicitly identifies **Omega**, not sigma, as the eigenvalues of printed Q_h^F=2Q_h. |
| P9 extra literal correction: matched secular pairs | FIXED | `diagonalize`(b), :139 quantifies the two matched pairs `(S_fix,fhat_fix)` and `(S_mov,fhat_mov)`, “not independently chosen.” The exact average identity at :150 therefore uses the corresponding perturbation. |

Regression checks: for Q=[[A,B],[B,D]], lambda_minus=(T−sqrt(discriminant))/2, `(Q−lambda_minus) (B,lambda_minus−A)=0`; B>0 guards normalization globally. The quarter-turn second column gives an SO(2) frame. For a square matrix, the stated sqrt(n) operator comparisons follow by applying the two vector comparisons before taking the supremum; unchanged constants remain Euclidean.

I re-enumerated all **40** signed integer k with 0<|k|1≤4 and both permutations in Phi4. Exact factorization gives

```text
Phi4 = F R^4,
F = 2^32 3^8 x^16 y^16 (x−y)^10 (x+y)^8
    (x+2y)^4 (x+3y)^4 (2x+y)^4 (3x+y)^4.
```

F is nonzero for x<y<0. This verifies both the revised zero-set criterion and why the old claim was false. The diagonalizing angle lift and its minus/plus signs were not changed; the matched-pair correction preserves the exact translation-invariant secular average.

Pinned Fej04r p.53 was reread and rendered in this check: it has one power of `(1+norm(D)/sigma)` and an extra `1+O(epsilon)` at the end of the proof. P.55 does finish the Lemma 74 induction. The ledger also marks E4/E5 DROPPED. The separate missing normalization of “unique U” is recorded as E-P-Fej04r-10; it is not a renewed E4 accusation and is not used in the new perturbation proof.

## Part 10 — OPEN

| Finding | Status | Current evidence and regression check |
|---|---|---|
| P10-01, kappa denominator | FIXED | `peel`, p10:83 and `peel-bd`, :88 use sqrt(kappa), with the explicit identity `sqrt(Lambda1 Lambdak)=sqrt(m1 mk)sqrt(kappa)(a1 ak)^(1/4)`. The powers 11/4 and −17/4 and the dependence of C are retained. Squaring and summing the entry bounds still gives an a1-independent Frobenius constant. |
| P10-02, empty minima/index domain | FIXED | `finite-type`, :200 requires both compact factors nonempty; :206–207 use the nonempty compact product. `index-def`, :211 defines beta_mu for smooth families without nondegeneracy but defines the index only when some amount is positive. `cp09-lemma1`, :216 and `stability`, :223 carry nonempty K and m≥1. `if-d`, :253 checks the actual K and sphere. |
| P10-03, unguarded positive-amount consequence | FIXED | :225 explicitly adds `beta_mu(omega,K)>0`, gives the strict half-amount conclusion and retains the old beta1=0 counterexample as a warning. :245 supplies this guard in the consumer for mu≥mu0. The difference estimate and its proof at :229–230 are unchanged and valid. The added equivalence parenthesis has a separate regression below. |
| P10-04, overstated source-exponent diagnosis | FIXED | :266 expressly limits the false O(a^(5/2)) assertion to the outer diagonal block and retained-eigenvalue error; it says the coupling's O(a^(5/2)) is valid but sharpened to O(a^(11/4)). The 3/2,2,11/4 scales are distinguished. |
| **P10-C1, new order-zero equivalence regression (minor)** | **OPEN** | :225 says beta_mu>0 is “equivalently, when omega is R-nondegenerate, mu≥mu0,” but :223 allows mu∈N and :211 defines mu0 as the least **positive** integer. Scalar omega≡1 on B=(−1,1), K={0}, is analytic and R-nondegenerate; beta_mu=1 for every mu≥0, while mu0=1. Thus beta_0>0 but 0≥mu0 is false. The fresh PDF, p.111, prints the same statement. |

**Exact fix for P10-C1.** In `bpP:p10:stability`, p10:225, replace the parenthesis

```tex
(equivalently, when $\omega$ is R-nondegenerate, $\mu\ge\mu_0(\omega,K)$;
 Theorem~\ref{bpP:p10:interface}(d) supplies this guard for $\mu\ge\mu_0$)
```

by

```tex
(in particular this holds for $\mu\ge\mu_0(\omega,K)$ when the index is defined;
 for positive integers $\mu$ it is equivalent to $\mu\ge\mu_0(\omega,K)$.
 Theorem~\ref{bpP:p10:interface}(d) supplies this guard for $\mu\ge\mu_0$)
```

Alternatively remove “equivalently” and retain only the sufficient condition supplied by interface(d). Do **not** redefine the CP09 index to allow zero and do not restrict the valid difference inequality to positive orders. Rerender and check that index-def/stability/interface(d) retain the same convention. This one local edit closes the only OPEN item found here.

Independent refutation of P10-C1: for m=1 the coefficient sphere is {−1,+1}, hence the squared family for omega≡1 is identically 1 for either coefficient. Its zeroth derivative is 1 and all positive derivatives are zero, so every finite maximum and compact minimum is exactly 1. The map meets the actual R-nondegeneracy definition (no nonzero scalar annihilates it). Neither positive parameter dimension, nonempty K nor that nondegeneracy premise excludes this counterexample. One may also take K=[−1/2,1/2] if positive volume is desired. This is a refutation-surviving defect, not an unverified warning.

Other changed-step regressions were rejected: compact minima now genuinely exist; the inequality uses arbitrary beta_mu including zero before the positivity corollary; for every mu≥mu0 the interface's amount is positive by monotonicity. The source's nonempty-K convention is preserved. The two induction arguments still need only norm(E)→0 and are unaffected by the corrected kappa factor. No conclusion about prepared-map C^mu closeness or a shrinking-domain weak KAM estimate has been smuggled into this part.

## Part 11b — CLOSED

| Finding | Status | Current evidence and regression check |
|---|---|---|
| P11B-01, false uniform product flow domain | FIXED | `lift-map`, p11b:167 explicitly takes open O' with compact closure inside O and uses `r1=r1(closure O')`; :169 gives the old blow-up counterexample and restricts both Phi_chi and its composition to the same domain. `lm-prop`, :175 invokes flow on that compact closure. `birkhoff-form`, :206 chooses K⊂O' relatively compact and records r*≤r1(closure O'),r2; :220 invokes the corrected start domain. No uniform radius over all O remains claimed. |
| P11B-02, recurrence scope | FIXED | `laplace-red`, :44 now asserts R1–R3 for every real s and explains positivity of the circular denominator and guards on solved divisors. `lr-red`, :61 uses R3 at s=1/2, where s−1−k=−(k+1/2)≠0, and uses the guarded upward system. The integral formula supplies the extension to those real exponents. |
| P11B-03, oscillator discs/frozen clauses | FIXED | `bt-frozen`, :221 first uses the actual two disc antecedents to obtain `|z|2²<2r0²≤r*²`, and repeats the argument with delta before the remainder estimate. Only then does it use `|z|2≤2|(p,q)|∞` to get 64C* times the sixth power. It states the actual two clauses, treats coupling independence including zero separately, and assigns symmetry to P-G's separate hypothesis. :212 now allows every 0<r0≤r*/sqrt(2), with a strict smaller choice for Part 12's closed cylinder. |
| P11B-04, CP11 comparison | FIXED | :279 and :285 describe independent non-identical vanishing from hierarchical asymptotics followed by an analytic open-dense argument, as in CP11. They explicitly deny a claim of nonvanishing at every axis vector and remove the false contrast. |
| P11B-05, numerical evidence overclaim | FIXED | :269 says all tests are supplementary. :273 replaces “all six coefficients are right” with consistency at one amplitude direction. :277 replaces an analytic-zero-curve claim by a suggestion of zeros, unused by the proof. :278 says the frequency fit gives no proof or certified error order. The exact identities and analytic argument remain the proof inputs. |

Regression checks: the compact-closure radius controls the slow trajectory for every start in O'. Lambda is constant, and the fast angle shift is finite, independent of lambda and analytic. Thus composing with the action-dependent rotation lift preserves the required full symplectic map and the exact fast-angle average. The radius reductions r*≤r1,r2,rho_K/sqrt(2) are compatible with positivity and with the frozen disc antecedents. Compact neighborhoods may be shrunk inside the union of the Part 8 analytic neighborhoods before fixing the uniform radius; no existence claim at arbitrary distant actions is needed. The theorem's existential O' has precisely this freedom.

The equality endpoint r0=r*/sqrt(2) is valid for the frozen **open** disc tests: summing two strict inequalities still gives |z|2<r*. Part 12 instead uses r*/2, so its closed cylinder lies strictly inside the open tube. This clarification does not silently change the frozen predicate. For eps>0, choosing `delta=min(r0,sqrt(eps/(64C*)))>0` gives the requested little-o estimate, including z=0. The data remain coupling independent; there is no new third frozen clause or conclusion-shaped torsion premise.

The all-axes analytic beta and the nonzero small-alpha determinant asymptotic are unchanged by these fixes. The prior independent review's exact quartic computations remain the evidence for those unchanged algebraic tables; they were not reclassified as proved merely because this closure check compiles the TeX. The current Part 11b does supply the formerly forward mixed-coefficient calculation from Part 8, including the needed third-order variations.

## Verification, source disposition and limits

Pinned source hashes were rechecked: Fej04r `d5a05c79f754da467d8148ee572a22098e1e1ee16a8c6f3052356657a02ac9e3`; CP11 `9b525c5896cfd006b813e79ce56df0b33fcdc55595c972e5090f4a839de4c30f`. Direct page reads covered Fej04r 47–48 (corrected chart/stale asymptotic), 53–55 (constants, operator-norm pointer, completed induction), 58 (outer/coupling block exponents), Fej07e p.3, and CP11 p.63 (the printed alpha⁴ term). The p.53 formula was visually checked from a fresh page rendering. No new source erratum was inferred from the Part 10 regression: it is an error in the new blueprint parenthesis, not in CP09.

Mechanical references: all explicit local and cross-track ref/eqref/Kref/Iref/Nref/Pref targets in the five requested files exist in the current blueprint sources. Reference occurrences checked: P7 184; P8 112; P9 97; P10 122; P11b 166. This checks existence, not applicability; applicability at the changed steps is assessed in the tables above.

Fresh build command:

```sh
cd /root/code/KAM-inp/blueprint-P
latexmk -pdf -interaction=nonstopmode -outdir=.build/closure-p711 blueprint.tex
```

Exit **0**; PDF **222 pages**, **2,532,086 bytes**; final log contains **0** lines beginning `!`. The complete assembled blueprint reports **7 unresolved reference occurrences**, all in the out-of-scope `p14a-amd-expsafe.tex` (six distinct N labels: actionnbhd, partial-pert, partial-domain, gen-uniform, sol, partial-core). None is in the five checked parts. Their exact local/cross-track targets exist as above; this is an assembled-document cross-reference/rendering issue outside this closure scope, so this report does not claim a globally clean reference build. Existing layout/bookmark warnings likewise remain separate from the mathematical verdict.

Exact symbolic receipts from independent inline Python/SymPy commands:

```text
P8 repaired CP11 certificate residual: 0
P9 signed-index count: 40
P9 Phi4 / R^4:
28179280429056*x^16*y^16*(x-y)^10*(x+y)^8
 *(x+2*y)^4*(x+3*y)^4*(2*x+y)^4*(3*x+y)^4
```

The coefficient is 2^32·3^8. These are algebra checks supporting the changed assertions, not Lean certificates.

Repository lint command: `LEAN_NUM_THREADS=2 nice -n 5 sh scripts/lint_sources.sh` exited **1**. Its complete nonblank output was:

```text
check_lean_modules: PASS (260 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
```

It supplied no ABI result. A single diagnostic retry of `scripts/abi_hashes.py /root/code/KAM-inp /root/code/KAM-inp/manifest/frozen-anchors.json --check`, under the same nice/thread settings and with the subprocess return code printed, exited **2** and reported:

```text
ABI Lean subprocess return code: -15
```

The ABI Lean subprocess was terminated by SIGTERM; the actor/reason is not established. Therefore **full lint / ABI verification is incomplete**, not PASS. The source/module guard passes above are the only successful lint receipts claimed. No Lean rebuild or repository repair was attempted for this read-only blueprint task. This limitation does not establish a defect in any of the unchanged Lean/frozen declarations and is separate from the mathematical closure verdicts.

Only `blueprint-P/reviews/closure-p7-p11b.md` was authored as a source artifact. Ignored fresh LaTeX outputs and page renderings are under `.build/`. No manuscript, Lean file, frozen definition, manifest, errata ledger, graph status or git history was edited. Unrelated ongoing changes were preserved. No Lean build or axiom/leanchecker claim is made.

The closeout criterion is met for Parts 7, 8, 9 and 11b. Part 10 remains OPEN solely until P10-C1 is corrected and rechecked. This report does not close Part 11a's analytic KAM machinery, Parts 12/13 assembly, general spatial torsion, or Part 14a's reference warnings.

At closeout all five audited source hashes still equal C1, and `git diff --check -- blueprint-P/reviews/closure-p7-p11b.md` reported no whitespace errors. The 31 finding rows comprise the 27 numbered original findings, three additional Part 9 corrections, and one new OPEN regression.
