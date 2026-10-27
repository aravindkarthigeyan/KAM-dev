# Track P, Part 10: independent review 1

## Verdict: REVISE

The two central mathematical arguments work: hierarchical good points exist for every n≥2, and the symmetric-product induction proves Rüssmann nondegeneracy of `(nu,2 sigma)` on every nonempty open simple-spectrum patch. The single-secular-coefficient case is correctly handled. Neither argument needs Lemma 76, a universal cover, or analytic continuation of eigenvalue labels through multiple eigenvalues.

Three local issues require revision: a wrong power of kappa in an explicit coupling bound, missing nonemptiness guards in the index/amount definitions, and a missing positive-original-amount premise in the stability lemma's final consequence. The stability **inequality** is correct, but its stated smallness condition alone does not imply a positive amount. These repairs do not require changing the frozen physical theorems. E-P-Fej04r-7 is supported for the outer diagonal block, while its coupling estimate is merely weaker than the sharp one; E8 describes genuinely omitted induction details, not a counterexample to the source theorem.

## Snapshot, scope and validation

Focused tier-2 refute-first audit under `.drafts/briefs/bp-review.md` and the manuscript-audit protocol. Read all **275 lines, 45,542 bytes** of `blueprint-P/parts/p10-nondegeneracy.tex`. Initial HEAD: `04bcabad132303202a09a772fcb40ff1f01d3c25`. Unrelated graph work was present; the following hashes fix the audited inputs. Part 10 and its tabled Part 8/9 dependencies were unchanged at closeout.

| Input | SHA-256 |
|---|---|
| Part 10 | `312925acfc43ddb681c235ed846564de4f39c6a272fca45bda81193057b8a9f7` |
| Part 9 | `b711c0f94dbedb02548f225d119a8e78e6ce82bb6df92d5a730ade4687890f99` |
| Part 8 | `85abd7707de420cab8418004b6f205319e5508cbffae22a0d997c66806d27292` |
| Part 7 | `3a10ddf74067a3c7b54184a190710deaba3019c97d2e0d5e9a3773b889cc26ab` |
| CP09 PDF | `dd29561ef38116ba27a743b9b580f797a602bfda1edee8510ef1371c61655859` |
| Fej04r PDF | `d5a05c79f754da467d8148ee572a22098e1e1ee16a8c6f3052356657a02ac9e3` |
| `reviews/p11a-russmann-check.md` | `bff3f8e178b8bb8537d1839f6760cb967e471bec4e54a1020602ad41398516fb` |
| Frozen `FixedSunPlanetaryKAM.lean` | `9eb5abd0507b6feb40ad4af5918a78089efeab3551ab5b7625f125e4dfa65f8b` |

Read the current brief, AGENTS, PLAN/DECISIONS, writer norm conventions, P plan and statement/source records. Checked P8's actual coefficients, P9's spectral/analytic interfaces and its earlier review, frozen P-FIXED and the Part 0 scope. Read the Part 11a review, especially its exact CP09/Rus01 convention distinction, `p11a:rank-compact`, and R-CP-2 derivative-control warning.

Direct source reads: **CP09 pp.5–6**, including Definition 1, Lemma 1, Definition 2 and the enlarged-order clause of Theorem 3; **Fej04r p.52 and pp.56–58**, including Formula 69 and Proposition 77's complete printed induction. Fej04r p.58 and CP09 p.5 were rendered and visually inspected. The current January-2007 Fej04 revision was used. This review does not independently certify the remaining Rus01/Rus05 KAM iteration or CP09's preparation estimates.

- `cd blueprint-P && latexmk -g -pdf -interaction=nonstopmode -outdir=.build/review-p10 blueprint.tex`: **exit 0**, **108 pages**, **1,551,506 bytes**; final log has **0** error lines beginning `!` and **0** undefined-reference/citation diagnostics. Rendered blueprint pp.101 and 106 were inspected. Existing layout/PDF-string warnings do not constitute mathematical validation.
- Mechanical reference inventory: **70 Part 10 labels**; no missing local track-P `ref`/`Pref` targets. Symbolically rendered cross-track citations require their separate contract checks.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (183 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (140 frozen declarations)`.
- Supplemental independent checks used mpmath/SymPy and permutation enumeration in temporary commands. No writer scratch was imported. The proofs and exact counterexamples below, not the floating-point checks, determine the verdict.
- Only this requested report was authored; ignored LaTeX artifacts and temporary inspection files were generated. No manuscript, frozen file, manifest, ledger or git history was edited. No Lean build, provider closure or fresh `#print axioms` is claimed.

## Findings

All findings survived a separate point-of-use and refutation pass. The final good patch has positive volume, so P10-02 concerns the independently stated general interface rather than that particular compact set.

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| **P10-01** | `bpP:p10:peel`, displayed coupling bound, line 84; `stepP:p10:peel-bd`, line 89 | **major**, false explicit bound | The denominator sqrt(Lambda_1 Lambda_k) equals `sqrt(m1 mk) sqrt(kappa) (a1 ak)^(1/4)`, not the printed expression with kappa^(1/4). Hence the coupling bound is false for unrestricted positive G,m0. For G=1,m0=10^−4,m1=m2=1,a=(.01,1), the actual abs(E12) is about 1.4825770953e−4, while the printed upper bound is 2.9646353064e−5. | Replace kappa^(1/4) by **sqrt(kappa)** in the statement and proof. The corrected coefficient is `15G sqrt(m1 mk)/(16 sqrt(kappa))`. Retain the correct powers a1^(11/4) ak^(−17/4). Then choose the Frobenius constant C from the corrected entry constants, as below. The O(a1^(3/2)) estimate and both inductions remain valid. |
| **P10-02** | `bpP:p10:finite-type`, `index-def`, `cp09-lemma1`, `stability`, lines 199–230 | **major**, missing well-definedness guards | The generic compact sets C and K may be empty, but `index-def` takes a real-valued minimum over C×K and asserts a least positive order with positive minimum. The finite-type inequality itself is vacuous on an empty product; the subsequent definition is not valid there. CP09 Lemma 1 explicitly requires **nonempty K**. For B=(−1,1), C={*}, g=1, K=empty, all printed hypotheses hold, but the claimed minimum is not attained or defined. A Lean totalized real infimum of the empty set cannot supply positivity either. | Add nonemptiness of C and K before defining their minima; in the map specialization assume K nonempty and a nonempty coefficient sphere. Either add these guards to the finite-type lemma for its displayed proof, or separately handle its vacuous case. Define beta_mu by the same compact minimum for arbitrary smooth maps on nonempty K; restrict existence of the index to families with some positive beta_mu. This also makes the stability comparison meaningful before assuming nondegeneracy of the perturbed map. |
| **P10-03** | `bpP:p10:stability`, line 225, final “then satisfies the conclusion … with the same mu” | **major**, false positivity consequence | No premise says beta_mu(omega,K)>0. Its smallness condition can hold with beta_mu=0 and theta=0, in which case it gives no positive amount at that order. This persists even when omega is R-nondegenerate and K has positive volume: use omega=tilde omega=(1,y²), B=(−1,1), K=[−1/2,1/2], mu=1. At y=0, c=(0,1), the squared relation is y^4, whose derivatives through order 1 vanish. Thus beta_1=0, while the printed smallness condition is 0≤0. | Keep the valid difference inequality and lower comparison for every mu. For the positive-amount consequence add **beta_mu(omega,K)>0**, equivalently mu at least the original index when that index is defined. Then the half-amount is strictly positive. The actual `interface`(d) supplies this guard for mu≥mu0; cite it explicitly when applying stability. |
| **P10-04** | E-P-Fej04r-7 and `bpP:p10:peel` source note, lines 85, 266 | minor, precision of source diagnosis | The source's outer-block O(a^(5/2)) assertion is false, because its additional diagonal entries have nonzero a² leading terms. But its coupling O(a^(5/2)) bound is **not** false: the sharper a^(11/4) behavior implies it. Treating both printed exponents as erroneous overstates the defect. | Specify that E7 concerns the **outer diagonal-block remainder** (and the source's associated eigenvalue error assertion). Describe the coupling exponent 11/4 as a sharpening of a valid weaker bound. Keep the three actual scales 3/2,2,11/4 distinguished. |

## What I recomputed: part A

### Laplace bounds and Formula 69

The coefficients and normalization inherited from P8 are the intended ones. For k=1,2 the first coefficient is respectively 3/2 and 15/8. For alpha>0 the consecutive-term ratio is

`[(q+k+3/2)/(q+k+1)] [(q+3/2)/(q+1)] alpha²`.

The two factors are at most 5/4 and 3/2, so the ratio is at most `(15/8)alpha²≤2alpha²`. Since alpha≤1/2, the geometric majorant gives

`sum_(q≥1) Tq ≤ T0·2alpha²/(1−2alpha²) ≤ 4alpha² T0`.

At alpha=0 both coefficients vanish and the conclusion follows directly; no division by a zero series term is needed. Thus the stated two-sided bounds hold on the whole closed interval. They do not depend on the incorrect stronger coefficient-growth estimate previously flagged in P8-03; the explicit ratio calculation supplies the needed convergence bound here.

Multiplication by `G mi mj alpha/(4aj)` gives exactly

`mathfrak_a_ij=(3/8)G mi mj alpha²/aj·(1+theta)`,

`mathfrak_b_ij=(15/32)G mi mj alpha³/aj·(1+theta')`,

with 0≤theta,theta'≤4alpha². The upper coefficients 3/4 and 15/16 follow from 1+4alpha²≤2. This correctly incorporates Part 8's halving relative to the printed C1,C2. No new factor two is needed in the later secular frequency: Omega=2sigma remains the correct frozen dictionary.

Independent evaluations at alpha=0,.1,.5 checked both bounds for both k. Their proof is the geometric majorant, not those evaluations.

### Corrected peeling constants and the source exponent

Removing planet 1 leaves all off-diagonal entries among planets 2,…,n unchanged, and subtracts `mathfrak_a_1j/Lambda_j` from each retained diagonal. Set

```text
A = 3G/(4sqrt(kappa)) sum_(k≥2) mk ak^(−3),
Bj = 3Gm1/(4sqrt(kappa)) aj^(−7/2),
Dk = 15Gsqrt(m1 mk)/(16sqrt(kappa)) ak^(−17/4).
```

Then the corrected bounds are

`abs(E11)≤A a1^(3/2)`, `abs(Ejj)≤Bj a1²`, `abs(E1k)≤Dk a1^(11/4)`.

Because a1≤1, one explicit valid total constant is

`C=[A²+sum_(j≥2) Bj²+2sum_(k≥2) Dk²]^(1/2)`.

The factor 2 counts the two symmetric coupling entries. It depends only on fixed outer axes, masses and G,m0. Thus `norm(E)≤norm(E)_F≤C a1^(3/2)` is available with exactly the independence needed in both inductions.

The error in P10-01 is independent of the asymptotic powers. With G=1,kappa=10^−4 and the data in its counterexample, direct evaluation of the convergent hypergeometric series gives an actual/printed-bound ratio 5.00087512306…. More decisively, as a1 tends to zero that ratio tends to `(1/2)kappa^(−1/4)`, which exceeds 1 for kappa<1/16. This disproves the printed bound analytically; it is not a numerical-rounding complaint.

The leading outer diagonal perturbation is

`Ejj ~ −[3Gm1/(8sqrt(kappa))] aj^(−7/2) a1²`.

Its coefficient is nonzero. It therefore cannot be O(a1^(5/2)). At a simple outer eigenvalue delta with unit eigenvector v, the diagonal outer perturbation gives a shift `−a1² sum_j [3Gm1/(8sqrt(kappa))] aj^(−7/2) v_j²+o(a1²)`, with a strictly negative leading coefficient. Removing or restoring the coupling changes eigenvalues by only O(a1^(11/4))=o(a1²), by Weyl. Thus the source's following O(a1^(5/2)) assertion for the retained eigenvalues also fails in general. The coupling instead has leading coefficient `15Gsqrt(m1 mk)/(32sqrt(kappa))` times a1^(11/4) ak^(−17/4), and the first diagonal has order a1^(3/2). These verify the actual content of E7. For example, at G=kappa=m1=m2=a2=1, E22/a1² tends to −3/8, whereas E22/a1^(5/2) diverges. Source normalization changes constant factors, not these exponents.

### Weyl and the exact n=2 ratio

The in-part Courant–Fischer argument has the correct indexing for **increasing** eigenvalues: the l-dimensional minimum of the maximal Rayleigh quotient equals lambda_l. Every such subspace meets the span of eigenvectors l,…,n in a nonzero vector, because the dimensions sum to n+1. The other inequality is attained by the span of eigenvectors 1,…,l. For a unit vector, the perturbation of its Rayleigh quotient is bounded by norm(E); passing to the extrema gives the claimed Weyl inequality. No source Corollary 72 or missing small-eigenvalue asymptotic is used.

For n=2, substitute the determinant and trace from P9:

`T=−mathfrak_a(Lambda1+Lambda2)/(Lambda1 Lambda2)`,

`P=(mathfrak_a²−mathfrak_b²)/(Lambda1 Lambda2)>0`.

The exact identity is

`T²/P = [(Lambda1+Lambda2)²/(Lambda1 Lambda2)] / [1−(mathfrak_b/mathfrak_a)²]`.

Since 0<mathfrak_b<mathfrak_a, it is strictly larger than `Lambda2/Lambda1+2`. Also `Lambda2/Lambda1=(m2/m1)sqrt(a2/a1)` and `r=t+1/t+2` with t>1, so t>r−3. The stated mass-dependent axis threshold gives Lambda2/Lambda1≥4, r>6 and t>3. It excludes both dangerous ratios 2 and 3, including equality in the threshold. Taking the inner axis to zero sends r,t to infinity.

This uses P9's correct **nonvanishing equivalence** between Phi_4 and the two trace/determinant factors. It does not use P9-01's incorrect assertion that those polynomials differ only by a nonvanishing factor without multiplicity. Thus that earlier finding does not invalidate this good-point argument.

### Good-point induction and density

The n=2 base can satisfy both the hierarchy bound and the explicit mass threshold by choosing a1 sufficiently small with a2=1. For the induction, first fix good outer axes for the (n−1)-planet system. Their finite resonance margin kappa0 is strictly positive. With the corrected C, choose the new inner axis after those data so that

`a1<epsilon a2`, `a1≤min(1,a2/2)`, `4C a1^(3/2)<kappa0`.

All old eigenvalues delta_l are negative. Hence the sorted spectrum of `0 direct-sum Q_hat` is delta_1,…,delta_(n−1),0, and Weyl gives an error at most norm(E) for **every** coordinate in this sorted list. For k=(khat,k_n) of l1 length at most four:

- If khat=0, the scalar product is k_n sigma_n, nonzero because negative definiteness gives sigma_n<0 for every positive new axis.
- If khat≠0, its absolute value is at least `kappa0−abs(k)_1 norm(E)>0`.

This also excludes all pair differences, so simplicity is a conclusion of the same finite resonance check. No lower asymptotic bound for the small eigenvalue is needed. The use of negative definiteness is essential and is available for both the outer and full systems in their required dimensions; n=2 is handled separately rather than invoking definiteness for a nonexistent one-planet pair.

Phi_4 is analytic on the real convex positive ordered-axis domain by symmetric-polynomial reduction. One good point proves it is not identically zero. The real identity theorem gives density; the **real-analytic null-zero-set fact explicitly imported from P9 E4** supplies full measure. Nullity is not a consequence of the identity theorem alone. These real analytic facts suffice; there is no use of Lemma 76 or any global eigenframe. A point in the resulting open dense set inside a prescribed neighborhood admits a closed max-norm cube with strictly positive radius inside that intersection.

## What I recomputed: part B

### Analyticity of F_c without global eigenvalue branches

For fixed c, `P(X;sigma)=product_pi (X+sum_j c''_j sigma_pi(j))` is symmetric in sigma, with coefficients in R[X]. The fundamental theorem of symmetric polynomials over this commutative coefficient ring expresses it in elementary symmetric functions. Evaluating X at the analytic function `sum c'_i nu_i` expresses F_c in characteristic-polynomial coefficients of Q_h. Those coefficients are analytic everywhere on A_n, including multiple-spectrum points.

Sorted eigenvalues are continuous by Weyl and analytic on the simple-spectrum set by matching the local ordered branches. Only the symmetric product is used for the global identity theorem. Its analyticity is not inferred from analyticity of sorted roots across the discriminant.

### Nonzero product induction, including the exceptional coefficient case

The proof handles every fixed nonzero c; it does not claim a uniform small-axis threshold for all c before the later compactness argument.

| Case | Recomputed reason the product is nonzero somewhere |
|---|---|
| A: c'_1≠0 | nu1 grows like sqrt(kappa)a1^(−3/2), while all secular eigenvalues and outer fast frequencies stay bounded. Every one of the finitely many factors is nonzero for sufficiently small a1. |
| B: n=2,c'_1=0,c'_2≠0 | Both secular eigenvalues tend to zero by the corrected peeling bound with Q_hat=0. Each factor tends to the same nonzero outer-fast term. |
| B: n=2,c'=0 | Write s=sigma2/sigma1→0, with s>0. The two factors are sigma1(c3+c4s) and sigma1(c4+c3s). If one coefficient vanishes, both factors are still nonzero for every s>0. If both are nonzero, they stay nonzero for small s. The estimate using 1/(r−3) is used only eventually, when r>3. |
| C1: n≥3,c'_1=0, all reduced coefficient vectors nonzero | The finite product of lower-dimensional F functions is analytic and not identically zero. Choose outer axes where all are nonzero. The limit of the full product is then nonzero, so the full product is nonzero for a sufficiently small new inner axis. |
| C2: some reduced coefficient vector zero | All fast coefficients and all but one secular coefficient must vanish. Each factor is that nonzero coefficient times one negative secular eigenvalue. Thus the full product is nonzero everywhere. |

The combinatorics of the limit are exact: for a permutation pi, let d=pi^−1(n), the coefficient slot assigned to the eigenvalue tending to zero. Deleting d leaves a bijection pi'' of the n−1 retained eigenvalue positions. Thus `pi -> (d,pi'')` is a bijection and

`lim_(a1->0) F_c(a1,a_hat) = product_(d=1..n) F_(c^(d))^(n−1)(a_hat)`.

There is no omitted factorial or hidden cancellation. A direct enumeration checked this indexing in dimensions 3–6 (6,24,120,720 pairs); the explicit bijection proves it generally. No analyticity of individual delta labels at multiple eigenvalues is required in the limit step: continuity and the analytic symmetric products suffice.

If a real linear relation on an open simple-spectrum patch existed, doubling its secular coefficients would make it a factor of an F function vanishing on that patch. The real identity theorem on all A_n would force that F to vanish identically, contradicting the induction. This proves exactly CP09's **homogeneous linear-hyperplane** nondegeneracy. It does not claim the stronger Arnold–Pyartli directional-jet statement of Fej04r Proposition 77, nor exclusion of every affine hyperplane.

The fast-only proof differentiating in each axis is valid on any open patch, and projection of the jointly nondegenerate map also gives nondegeneracy of the secular block alone. The analytic action diffeomorphism preserves identical vanishing and connectedness. It does not assert that the numerical derivative index is unchanged under this nonlinear action-coordinate change: the index is computed afresh in Lambda, as required.

Positive constant diagonal frequency rescalings preserve the index in the **squared CP09 convention**. If D has smallest/largest diagonal entries d_min,d_max, normalize D^T c on the coefficient sphere. Since the squared relation and each of its parameter derivatives acquire the same factor abs(D^T c)², for every order mu

`d_min² beta_mu(omega,K) ≤ beta_mu(D omega,K) ≤ d_max² beta_mu(omega,K)`.

The normalized map of spheres is bijective, so both bounds and equality of the positivity orders follow. Period rescaling and Omega=2sigma therefore cause no additional degeneracy or untracked sign change.

## Finite type, stability and the exact Part 11a interface

### Finite type after the nonemptiness repair

The general compact-family argument is valid with nonempty C,K. At each parameter/point pair, vanishing of all repeated-direction derivative norms means that every symmetric derivative tensor is zero by polarization. Analyticity then gives a zero Taylor series and vanishing on a ball; connectedness makes the function identically zero, contrary to the hypothesis.

Joint continuity of partial derivatives gives continuity of the finite-dimensional derivative tensors and their diagonal norms. Compactness of C×K supplies finitely many positive-order-or-zero-order neighborhoods and a finite maximal order. The maximum over these finitely many derivative norms is continuous and strictly positive; on the nonempty compact product it has a strictly positive attained minimum. The order can be increased to at least one, and the least **positive** qualifying integer then exists. Constant functions do not force an index zero under this definition.

For CP09 take C to be the Euclidean unit sphere and `g(c,y)=<c,omega(y)>²`. Every member is nonidentically zero by R-nondegeneracy, and all parameter derivatives are polynomial in c and jointly continuous. This proves CP09's exact squared-family condition. The same compactness proof works for independent products and unsquared families, but it gives their **own** orders and amounts, not equality with the square family's numerical index.

### Stability: valid estimate versus invalid unguarded consequence

For fixed unit c and unit repeated direction a, write `f=<c,omega>`, `delta f=<c,tilde omega−omega>`. At every derivative order k≤mu their repeated-direction values are bounded respectively by M and theta, by Cauchy–Schwarz. The sum f+tilde f is bounded by 2M+theta in the same sense.

Leibniz applied to `tilde f²−f²=(tilde f−f)(tilde f+f)` gives exactly

`abs(D^nu(tilde f²−f²)(a^nu)) ≤ sum_k binom(nu,k) theta(2M+theta)`

`=2^nu theta(2M+theta)`.

Reverse triangle inequality for the diagonal tensor norm gives the stated difference of norms. Taking the finite maximum and then the compact minimum yields

`beta_mu(tilde omega,K) ≥ beta_mu(omega,K)−2^mu theta(2M+theta)`.

No false conversion from a global angular derivative sum is used. All quantities here are parameter derivatives in CP09's explicitly Euclidean repeated-direction convention.

The missing positivity guard is material. In the P10-03 example, omega=(1,y²) is R-nondegenerate: a polynomial c1+c2y² identically zero forces c1=c2=0. Its square for c=(0,1) is y^4. At zero, the orders 0 and 1 both vanish; hence beta_1=0 even on the positive-measure compact interval K. Taking no perturbation gives theta=0 and satisfies the printed smallness condition. There is still no positive order-1 amount. Adding beta_mu(omega,K)>0 proves precisely the intended consequence and prevents this false extraction.

### Comparison with CP09 and `p11a:rank-compact`

| Required contract | Part 10 result / remaining boundary |
|---|---|
| CP09 Definition 1, p.5: real analytic map on nonempty open connected domain, no nontrivial identically zero linear functional | `rnd-def` and `rnd` match. The image need only avoid linear hyperplanes through zero. |
| CP09 Lemma 1, p.5: **nonempty** compact K and positive finite-order amount for the square family | The proof supplies this after P10-02. The current generic statement omits the source's nonemptiness guard. |
| CP09 Definition 2, p.6: least positive index; minimum over unit c and K; tensor norm taken on repeated Euclidean unit directions | `index-def` matches after adding the compact nonemptiness guard. There is no substitution of the full multilinear operator norm or a max-norm unit sphere without comparison. |
| CP09 Theorem 3, p.6: any enlarged integer mu≥mu0, with its own beta_mu | Correct monotonicity; using a larger order cannot decrease the amount. The least index need not be explicitly estimated for this existence-of-constants application. |
| Rus01 product families versus CP09 squares, as distinguished in the prior review | `cp09-lemma1` also proves finite type for independent product families, but does not identify their numerical constants with the square family's. Keep those conventions distinct in Part 11a. |
| `p11a:rank-compact`: finite index/amount on fixed compact patch, plus finite-order stability in the chosen convention | The core obligation is supplied in CP09's convention after P10-02/P10-03. The derivative comparison is explicit and valid; its positive-amount corollary needs the added original-amount guard. |
| Prepared frequency maps on shrinking domains; R-CP-2 in the prior review | **Not discharged by this part.** Part 11a must prove the actual C^mu estimate theta in the original parameter variable and verify `2^mu theta(2M+theta)≤beta_mu/2`. A C0 O(epsilon) statement does not supply it. Neither the source's scaled amount nor its lower bound is proved here merely by stating the stability lemma. |
| Weak KAM iteration, scalar sublevel estimate, power-divisor threshold, parameter inverse-Lipschitz and physical torus volume | Outside this part. Finite type and stability do not prove these separate Part 11a obligations. |

### Good patch and constant order

The final cube lies in G_n and in the prescribed neighborhood of the original axes. Its closed smaller cube is nonempty, has positive volume, and lies strictly inside the larger open cube. The analytic action diffeomorphism takes it to a compact K with positive volume, since K contains the image of an open cube. Thus the final application already meets the new nonemptiness guard.

The finite set K4 and compact K_a give a strictly positive minimum alpha4. In actions, the frequency is exactly `(kappa² mi³ Lambda_i^(−3), 2sigma(a(Lambda)))`. All choices of a0,r0,mu0,beta and alpha4 depend only on the fixed physical data and the selected patch, **before the coupling parameter**. No arbitrary perturbation or assumed secular nondegeneracy is added to frozen P-FIXED/P-PLANAR. The supplied proofs establish the nondegeneracy rather than making it a conclusion-shaped premise.

For a consumer needing one analytic diagonalizing rotation on the whole chosen cube, shrink the cube inside the local spectral ball at a0 **before** fixing K and its finite-type constants. The current interface explicitly promises only local rotations, which is honest; scalar sorted eigenvalues are analytic throughout the simple-spectrum cube. Intersecting with finitely many further nonzero analytic conditions is justified once those conditions are themselves proved analytic and nonidentically zero on the relevant common connected domain. It does not establish a future torsion determinant or justify extending an eigenvector-dependent local determinant globally without proof.

## Source errata and provenance disposition

| Candidate | Independent disposition |
|---|---|
| **E-P-Fej04r-7**, p.58, upper-left block and following eigenvalue-error statement | **Supported for the outer-block remainder.** The displayed additional diagonal has a nonzero a_in² term, incompatible with O(a_in^(5/2)). Its effect cannot be repaired merely by the factor-two convention. The source's coupling O(a_in^(5/2)) remains a valid, less sharp bound because its true order is 11/4; make this distinction explicit. The current good-point and R-nondegeneracy proofs use only norm(E)→0 with a corrected data-dependent constant, so no false source remainder is imported. |
| **E-P-Fej04r-8**, p.58 induction ending | **Supported as an omitted-detail obligation, not a refuted theorem.** The phrase “Par un raisonnement analogue” does not spell out coefficient transfer, the finite product across permutations, or the single-secular-coefficient case. Part 10 supplies these arguments correctly for its expressly weaker Rüssmann target. It does not claim to have reproduced all of Proposition 77's stronger Arnold–Pyartli conclusion. |

The simple-connectedness allegation must identify the correct source object. On p.56 the source calls **A^C itself** simply connected; the common-rotation loop contradicts that. On p.57 it calls the discriminant complement connected and passes to its universal cover. A universal cover is simply connected by definition; the common-rotation loop is not a counterexample to that property of the cover. Part 10's real method avoids all of these continuation choices, so this clarification does not change its proofs. The false meromorphy claim of Lemma 76 remains outside their dependencies. A further minor index typo on p.58 lists n hatted eigenvalues of the (n−1)-planet matrix; that list should end at n−1.

Formula 69's source locator, p.52, is correct. The use of the canonical halved Q_h and the explicit square-root action factors has been tracked in the constants above. The two-planet source (41) is not needed for the proof; the exact trace/determinant identity replaces it. The explicit real symmetric products, Weyl argument, quantitative finite-family margin and stability bound are legitimate supplied proofs rather than silent appeals to a source announcement.

## Mathlib/formalization notes and closeout

The cited `AnalyticOnNhd.eqOn_zero_of_preconnected_of_eventuallyEq_zero` exists and provides the identity argument. P9's `MvPolynomial.esymmAlgEquiv` applies over the commutative ring R[X], so the formal symmetric-product bridge is plausible with the stated coefficient ring. The spectral theorem and local analytic eigenvalue ingredients were checked in the Part 9 review; the in-part min–max proof supplies Weyl without assuming a missing theorem declaration. Polarization and Leibniz are explicitly stated standard algebra/calculus inputs; the displayed polarization identity has the correct factor `1/(nu! 2^nu)`. These are not fresh Lean elaboration receipts.

Keep the Euclidean norms in the spectral and CP09 derivative estimates explicit. The labelled max/Euclidean comparison requested in P9-06 remains a dependency repair; it cannot be replaced by interpreting these numerical operator norms as Pi operator norms without dimension factors. The real-analytic null-zero-set theorem is likewise a separate standard leaf already listed in P9, not a consequence of merely locating the identity theorem in Mathlib.

Repair **P10-01–P10-03**, clarify **P10-04**, and rerender. The main good-point and symmetric-product inductions may be retained; the corrected peeling norm still suffices. The result then supplies the fixed-patch finite-type/stability prerequisite for Part 11a, while the actual shrinking-domain derivative estimates and the weak KAM theorem remain separate obligations. No frozen statement needs alteration.
