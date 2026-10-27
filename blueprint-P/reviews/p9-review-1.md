# Track P, Part 9: independent review 1

## Verdict: REVISE

The perturbation estimates, integration-by-parts identity, quantitative negative definiteness, local analytic diagonalization and symplectic lift check out. The lift has the correct **minus** sign in the forward angle correction, and the fast-angle average is preserved exactly by that correction. The normalization is `Omega_j=2 sigma_j`, with sigma referring to the eigenvalues of Part 8's **halved** matrix.

One auxiliary polynomial assertion needs revision: for n=2 the defined Phi_4 is not the displayed trace/determinant polynomial times a nonvanishing factor; its resonance factors have multiplicity four. The nonvanishing equivalence used by Part 10 is nevertheless correct. There are also minor source-fidelity and proof/API repairs. In particular, **E-P-Fej04r-4 and E-P-Fej04r-5 are not supported as stated; E-P-Fej04r-6 is supported**, with a direct counterexample when boundedness is omitted. No blocking defect in the spectral estimates or lift was found.

## Snapshot, scope and checks

Focused tier-2 refute-first audit under `.drafts/briefs/bp-review.md` and the manuscript-audit protocol. Read all **221 lines, 43,982 bytes** of `blueprint-P/parts/p9-secular-spectrum.tex`. Initial HEAD: `5376b18c05d09cce89c11a9d1cc80588c706e72e`. Unrelated concurrent edits were present; file hashes define the reviewed snapshot. Part 9, Part 8 and the frozen Birkhoff-definition hashes were unchanged at closeout.

| Input | SHA-256 |
|---|---|
| Part 9 | `b711c0f94dbedb02548f225d119a8e78e6ce82bb6df92d5a730ade4687890f99` |
| Part 8 | `85abd7707de420cab8418004b6f205319e5508cbffae22a0d997c66806d27292` |
| Part 7 | `3a10ddf74067a3c7b54184a190710deaba3019c97d2e0d5e9a3773b889cc26ab` |
| Part 0 | `16192e0f49d611715f939c5371ccc9a4337a91a148a6e7574ddff7edacecd621` |
| Frozen `HasSecularBirkhoffForm.lean` | `600b7e17bdb3acdd5af656c6c0bb8e23c63428db51e8fcaa987c5aa199a43e5c` |
| Fej04r PDF, `sources/pdf/fejoz04_herman_arnold_revised.pdf` | `d5a05c79f754da467d8148ee572a22098e1e1ee16a8c6f3052356657a02ac9e3` |
| Retained Fej04r text, `sources/incoming-P/fejoz04_herman_arnold_revised.txt` | `c181401a28a307bffaebdf595a502b124cca7e42557c1bee5fe789de697d83ac` |
| Fej07e text | `87621f6cf0ee538a34cbfe2c275a30086cc83cdd63e8f3d9453302db8323e602` |
| CP09 PDF | `dd29561ef38116ba27a743b9b580f797a602bfda1edee8510ef1371c61655859` |

Read the current brief, AGENTS, PLAN/DECISIONS, writer conventions, track-P statement/source records and the relevant blueprint plan. Compared the frozen Birkhoff and symplectic definitions, P1 chart/transport interfaces, P7's product chart and P8's coefficients, quadratic form and moving/fixed identification. Consulted the existing P8 review to distinguish its independent quartic obligations from the quadratic interface consumed here; this is not a closure review of that part.

Independently read Fej04r **pp.53–55** from the pinned PDF, not just its retained text; visually inspected pp.53 and 55. Also checked its explicit norm definition (23), p.33, normalization (31), p.47, and quadratic formulas (35)–(37), pp.50–51; Fej07e's normalization correction, p.3; and CP09 (8)/Theorem 4, p.8. Checked local Mathlib source bodies rather than inferring applicability from declaration names.

- `cd blueprint-P && latexmk -g -pdf -interaction=nonstopmode -outdir=.build/review-p9 blueprint.tex`: **exit 0**, **97 pages**, **1,467,479 bytes**. Final log: **0** error lines beginning `!`, **0** undefined-reference/citation diagnostics. Rendered blueprint pages 90, 93 and 96 were inspected. The reported 39.26pt overfull box is in Part 8; no comparable Part 9 layout obstruction was found.
- Mechanical local-reference inventory: **61 Part 9 labels**, **no missing track-P targets** among its `ref`/`Pref` references. Symbolically rendered cross-track citations are not certified by a clean LaTeX build.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (183 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (140 frozen declarations)`.
- Independent calculations used SymPy, NumPy and mpmath in temporary inspection commands; the writer's numerical script was not imported. Exact algebra and analytic arguments are given below; floating-point checks are supplemental evidence.
- No Lean build, proof, provider-completion or fresh `#print axioms` claim. Only this requested report was authored; ignored build artifacts and temporary inspection files were generated. Manuscripts, frozen files, manifests, source ledgers and git history were not edited.

## Findings

Each finding was reconsidered against the printed contract and actual downstream use. No finding below asserts that a frozen theorem is false.

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| **P9-01** | `bpP:p9:n2`, line 199, final identification of Phi_4 | **major**, false auxiliary polynomial identity | The displayed nonvanishing equivalence is correct, but the subsequent claim that Phi_4 is the trace/determinant product up to nonvanishing factors is false literally. The definition includes every signed k and every permutation. For n=2, each of the ratio-2 and ratio-3 resonance factors occurs to the **fourth** power. At x=2y<0 the claimed product has a simple zero while Phi_4 has a fourth-order zero; a nonvanishing prefactor cannot change this order. See the exact factorization below. | Say that the two functions have the **same zero set on the negative simple-spectrum locus**. Alternatively print `Phi_4=F R^4`, where R is the displayed product and F is the explicit nowhere-zero analytic factor below. Part 10 may prove R is nonzero at one point and then invoke the nonvanishing equivalence; it must not use the incorrect polynomial identity. |
| **P9-02** | `bpP:p9:lemma71` source note, line 44; `bpP:p9:notes`, lines 210, 212; E-P-Fej04r-4; `lemma70` source note, line 31 | minor, source fidelity | The alleged 3/sigma versus 2/sigma inconsistency is not an inconsistency: the proof has an additional `(1+O(epsilon))`, absorbed by 3 for sufficiently small epsilon. The pinned PDF has **one** power of `(1+norm(D)/sigma)`, not the square quoted by Part 9. Also (23), p.33 explicitly defines the Euclidean operator norm, contrary to the claim that it is unspecified. | Withdraw E4's numerical-inconsistency allegation. Describe the new lemma as an explicit uniform sharpening, not a repair of incompatible constants. Correct the quoted power and say the source norm is exactly the Euclidean operator norm. Lack of a numerical smallness threshold is a quantitative enhancement, not a false source statement. A different, genuine source normalization issue is recorded below. |
| **P9-03** | `bpP:p9:l74` source note, line 85; E-P-Fej04r-5, line 212 | minor, source fidelity | The claim that the source's induction is not completed misses **p.55**. That page displays both recurrences and the resulting positive difference formula, then completes the induction. The recurrence identity checks algebraically. Citing standard identities instead of reproving them does not establish an erratum. | Withdraw E5 as stated; cite Lemma 74's proof on **pp.54–55**. Keep the independent j=1 integration-by-parts proof because it avoids importing the stronger general result, not because the source leaves its induction unfinished. |
| **P9-04** | `bpP:p9:n2`, line 196; proof lines 201–203 | minor, missing justification for a true conclusion | The global analytic rotation is asserted from nonvanishing discriminant alone, while the earlier proposition constructs only local frames. Simple spectrum alone does not eliminate eigenvector monodromy on a general parameter domain. The present 2-by-2 matrix has the additional global feature q12>0, which does supply a global analytic frame, but the proof does not use it to establish this claim. | Add the explicit eigenvector/frame formula below, using q12>0, or give another complete global-frame argument for this particular domain. Preserve the local-only scope for general n. |
| **P9-05** | External fact `bpP:p9:e-ift`, line 21 | minor, reuse/API correction | The stated analytic parameter IFT is valid, but current Mathlib has the needed parameter theorem through the analytic differentiability level omega: `ContDiffAt.contDiffAt_implicitFunction`, together with `AnalyticAt.contDiffAt` and `ContDiffAt.analyticAt`. It need not remain an unidentified external provider. The one-variable name quoted in the text exists as `AnalyticAt.analyticAt_localInverse`. | Cite the parameter API and give its scalar partial-derivative invertibility specialization. Include its value and local-uniqueness lemmas. Alternatively derive the parameter result from the general analytic inverse theorem already present in `Analysis/Analytic/Inverse.lean`. |
| **P9-06** | `bpP:p9:conv`, line 15; interface `bpP:p9:diagonalize`(c) | minor, convention bridge | Euclidean norms are explicitly selected, and the oscillator-domain estimate in `stepP:p9:d-c` is correct, but the required labelled comparison with the ambient Pi max norm, including matrix operator norms, is missing. Mathlib's `eigenvectorBasis` also lives in `EuclideanSpace`; it is not directly the approved ambient type. | Add a labelled finite-dimensional comparison lemma on `Fin n → R/C`: max≤Euclidean≤sqrt(n) max and the corresponding induced operator bounds. Retain the perturbation constants explicitly in Euclidean norms, or convert them before a max-norm consumer. Use the matrix-valued spectral theorem/unitary conclusions to extract coordinate functions; do not change the project's ambient type to `EuclideanSpace`. |

Minor literal corrections to include in the same round: in `stepP:p9:n2-res`, k1*k2>0 implies the scalar product is **nonzero**, not always negative (both k entries may be negative). In the dictionary, explicitly say that **Omega**, rather than sigma, is the eigenvalue list of the printed matrix `Q_h^F=2Q_h`. In `diagonalize`(b), quantify over the two **matched pairs** `(S_fix,f_fix)` and `(S_mov,f_mov)`; do not leave these as independently chosen set members. These changes do not alter the intended results.

## What I recomputed

### Lemmas 70–71: localization, labeling and constants

Lemma 70 works for complex A and complex eigenvalues exactly as written. If sigma avoids the diagonal entries, the norm of the diagonal inverse is `1/min_j abs(sigma−delta_j)`, and the unit eigenvector equation gives the estimate. No normality of A is assumed.

For Lemma 71, `tau≤1/(8 sqrt(n))≤1/(8 sqrt(2))<1/8`. Localization by Lemma 70 singles out exactly one d_j, since the tau*g neighborhoods are disjoint. Removing row/column j gives

`abs(u) ≤ (8 tau/7)(abs(v_j)+abs(u))`,

and hence

`abs(w)=abs(u/v_j)≤8 tau/(7−8 tau)≤4 tau/3≤2 tau`.

The implication v_j≠0 is legitimate: otherwise the same strict contraction bound would force the whole eigenvector to vanish. Row j then gives

`abs(lambda−d_j)≤abs(epsilon) norm(B) abs(w)≤2 tau² g`.

Choosing v_j>0, normalization gives `abs(v−e_j)≤abs(w)+abs(w)²/2≤3 tau`. Repeated eigenvalues are not silently ruled out beforehand: choose an orthonormal eigenbasis with multiplicity, and observe that two members assigned the same j would have nonzero inner product, since `abs(w dot w')≤4tau²<1`. The assignment is therefore a bijection, giving all n simple eigenvalues with the required unsorted labels. Their separation is at least `g(1−4tau²)≥15g/16`.

Column estimates give `norm(rho−I)_F≤3 sqrt(n) tau≤3/8`. This also bounds the Euclidean operator norm, so an orthogonal rho with determinant −1 is impossible: it would have a −1 eigenvector and operator distance at least 2 from I. Thus rho is in SO(n), without an arbitrary sign flip that could destroy the near-identity bound. The case B=0 or epsilon=0 has tau=0 and is included.

Independent numerical stress checks used 320 symmetric zero-diagonal perturbations in dimensions 2,3,5,10, at 99% of the allowed threshold. All three estimates passed; the largest observed eigenvalue error divided by its bound was approximately 0.49623. These tests supplement the inequalities above, not their proof.

### Corollary 72 and the bounded-family premise

Orthogonally conjugating the first n−1 coordinates leaves A_nn unchanged and preserves the Euclidean norm. After subtracting the diagonal, `norm(B)≤2K`; the shifted diagonal has gap `g≥sigma−2epsilon K≥sigma/2`. Thus

`tau≤4epsilon K/sigma`, `8sqrt(n) tau≤32sqrt(n)epsilon K/sigma≤1`.

The eigenvalue error is at most `2epsilon²(2K)²/(sigma/2)=16epsilon²K²/sigma`. The separation supplied by Lemma 71 is actually at least 15sigma/32, stronger than the stated sigma/4. The rotation error is at most `12sqrt(n)epsilon K/sigma`. Its last eigenvalue is nonzero under the printed strict guard because the error is then strictly smaller than `epsilon c`.

This is uniform for **bounded**, otherwise arbitrary epsilon-dependent A; no continuity of that family is needed. The condition on beta plays no role in the bound itself.

The missing boundedness in the source is real. Take n=2, D=diag(1,0), and

`A_epsilon = [[0,1/epsilon],[1/epsilon,0]]`.

Its last diagonal entry is zero, so it satisfies the source's displayed special form with c1=c2=0 and beta=0. Yet D+epsilon A_epsilon is the fixed matrix `[[1,1],[1,0]]`; its eigenvalues `(1±sqrt(5))/2` are both bounded away from zero. Neither is the asserted O(epsilon²) eigenvalue. Thus **E6 is confirmed as a missing premise in the literal statement**, not merely an unquantified O-constant. The blueprint's K-bound fixes it.

### Integration by parts and Proposition 73

The Laplace normalization is `(2pi)^−1 int_[0,2pi] cos(kt) A(t)^−s dt`, hence by evenness `pi^−1 int_[0,pi]`. With `H=sin(t)(1−cos(t))`,

`H'=cos(t)−cos(2t)`, `−(A^−s)'=2s alpha sin(t) A^(−s−1)`.

H vanishes at both endpoints. Their product therefore gives **exactly**

`b_s^(1)−b_s^(2) = (2s alpha/pi) int_[0,pi] sin²(t)(1−cos(t)) A(t)^(−s−1) dt`.

For s>0 and 0<alpha<1, A≥(1−alpha)²>0 and the integrand is continuous and strictly positive on the open interval. The factor 2, sign, exponent and pi normalization are all correct. Positivity of b_s^(2) at these strictly positive axis ratios follows from Part 8's positive-coefficient series. Its erroneous stronger endpoint positivity claim identified in P8-03 is not used here.

The Hadamard identity expands exactly, with each unordered edge counted once. Setting

`c_hatq=min_j sum_(k≠j) (mathfrak_a_jk−mathfrak_b_jk)`

makes c_hatq>0 for n≥2: each row contains a strictly positive pair contribution. Congruence by Delta^−1 gives

`x^T Q_h x≤−c_hatq abs(Delta^−1 x)²≤−[c_hatq/max Lambda_i] abs(x)²`.

There is one power of max Lambda, not its square. The constant is continuous and positive locally, so it has a positive lower bound on every compact positive ordered-axis subset. No uniform bound as axes approach collision or infinity is asserted. For n=1, the pair sum and Q_h vanish as explicitly excluded from this proposition.

Independent quadrature checks of the IBP formula at (s,alpha)=(0.5,0.2),(1.5,0.6),(3.2,0.85) agreed to absolute error at most 2.7e−15; the exact derivative calculation is the proof.

### Local analytic spectral decomposition and guards

The characteristic polynomial is analytic in parameters. At a simple eigenvalue, its s-derivative is the nonzero product of spectral gaps. The analytic IFT produces n branches, and shrinking to disjoint real intervals proves they are all roots and preserve increasing order.

The adjugate formula is correct:

`Pi_j = adj(sigma_j I−M)/p_s(sigma_j) = v_j v_j^T`.

In an orthonormal eigenbasis every other adjugate diagonal entry contains a zero factor. At the base point some diagonal entry of Pi_j is positive, and remains positive after shrinking. The vector `Pi_j e_k/sqrt((Pi_j)_kk)` is analytic and has unit norm because Pi_j is an orthogonal rank-one projection. Thus all divisions and square roots have their guards. A constant column-sign change obtains SO(n). Two continuous ordered frames on a connected common domain differ by constant column signs with product 1; this is uniqueness, not an existence theorem for a frame on every connected domain.

The local theorem does not need the false global meromorphic continuation assertion of Fej04r Lemma 76. Sorted eigenvalue branches agree on overlaps, so their scalar functions glue on any real simple-spectrum locus even when a global eigenframe is unavailable.

### Symplectic lift: an independent one-form verification

Write old variables as `xi=rho X`, `eta=rho Y`, define `Omega_l=rho^T partial_l rho` and `H_l=Y^T Omega_l X`. Orthogonality makes Omega_l skew-symmetric. The inverse formula in the manuscript is exactly

`lambda=tilde_lambda+H`, `xi=rho X`, `eta=rho Y`.

It defines a global analytic inverse on the stated action patch and all real angles/oscillators; H is quadratic and independent of the angles.

A short check avoiding any ambiguity in wedge signs is

`eta^T dxi = Y^T dX + sum_l H_l dLambda_l`.

Differentiating this identity gives

`deta^T wedge dxi = dY^T wedge dX + sum_l dH_l wedge dLambda_l`.

Therefore

`sum dLambda_l wedge dlambda_l + deta^T wedge dxi`

`= sum dLambda_l wedge d(lambda_l−H_l) + dY^T wedge dX`.

This is precisely the frozen sign `momentum wedge position`, with positions `(lambda,xi)` and momenta `(Lambda,eta)`. It verifies the forward **minus H** and inverse **plus H** corrections. The longer Maurer–Cartan calculation in the text also has the correct mixed-index cancellation. A second independent check used an analytic Jacobian for the noncommuting rotation family `R12(Lambda1) R23(Lambda2) R13(Lambda3)`; the maximum symplectic residual was 2.22e−16.

Because the correction is independent of the fast angles, translating their full periodic integration box by H leaves its integral unchanged. Thus the new average is exactly `S(Lambda,rho X,rho Y)`, with no extra averaged term or Jacobian. The Kepler part h(Lambda) is unchanged. The composite chart's Q1 follows from commutation with angle shifts, and Q2 from the previous chart's Q2, invertibility of the lift, and the same commutation. This does not infer injectivity modulo the lattice from periodicity alone.

Fej04r p.51 explicitly fixes masses and axes before choosing its rotations; its fiberwise symplectic assertion is valid. The lift is the additional bridge needed for the blueprint's **action-dependent family**, not a refutation of that fixed-parameter statement in the source.

### Frozen Birkhoff interface and the factor two

The frozen `HasSecularBirkhoffForm` uses `R_j=(p_j²+q_j²)/2`, a normalized fast-angle average, integrability for every oscillator point in the indicated discs, and a fourth-order little-o remainder including the origin. Here `(I,p,q)=(Lambda,Y,X)` gives

`X^T diag(sigma) X + Y^T diag(sigma) Y = sum_j 2sigma_j R_j`.

Hence Omega_j=2sigma_j. Sigma is the eigenvalue list of **the current Q_h**, whose entries use `G m_i m_j a_i/(4a_j²)`; the printed Fej04r matrix has twice those entries, so its eigenvalue list is Omega. This agrees with CP09 (8), which places Omega_j in front of `(u_j²+v_j²)/2`. There is no additional angle-period conversion or second halving in this step.

The pinned revised (31), p.47, already contains sqrt(2Lambda); distinguish this from the historical uncorrected formula described by Fej07e. Part 8's derived matrix is the correct consumed quadratic interface; the P8 review separately records the inaccurate historical description of that normalization. Reversing the source's planet labels is a simultaneous row/column permutation, whereas sorting eigenvalues is a separate choice.

Part 9 properly limits its result to the constant and quadratic terms: diagonalization leaves an O(abs(u)^4) term, and does **not** by itself supply beta or the frozen little-o fourth-order remainder. Those quartic normal-form and integrability obligations remain for the announced later consumers. The statement does not legitimately certify the whole frozen Birkhoff predicate yet.

The disc-to-polydisc estimate is correct: if every `X_j²+Y_j²<delta0²`, then each Euclidean vector norm is <sqrt(n)delta0; rotation preserves these norms, so both old max norms are <rho_* when sqrt(n)delta0≤rho_*. This is a sufficient domain restriction and does not assert max-norm preservation by rho.

### Phi_4, top-simple and the exact two-planet formula

Each R_k is symmetric because its product runs over all permutations. The discriminant is symmetric as well. The fundamental theorem of symmetric polynomials therefore makes Phi_4 a polynomial in the characteristic coefficients, analytic on the positive ordered-axis domain without selecting global eigenvectors. Finiteness and permutation-invariance of K4 give exactly the stated nonvanishing equivalence, including simplicity and nonzero individual frequencies. Rescaling sigma to 2sigma does not change it.

On a connected open set, one nonzero point rules out an identically zero analytic function. The null-zero-set theorem, explicitly included in external fact E4, gives the full-measure claim in addition to the identity theorem's density conclusion. The zero set is closed **relative to the action domain**. The finite resonance minimum is positive uniformly on compact subsets of the good set. Part 10 still owes a good point; Part 9 does not prove or assume that point circularly.

For top-simple, every off-diagonal entry is positive, not just entries joining neighboring indices. Adding a sufficiently large scalar makes the matrix entrywise positive. Passing from a maximal Rayleigh vector x to its entrywise absolute value cannot lower the quotient; hence the latter is another maximizer. Its image under the positive matrix has every coordinate strictly positive, so no component of x can be zero. A multidimensional top eigenspace would contain a nonzero vector with one coordinate zero, a contradiction. Simplicity then implies constant sign. The proof is valid and does not need a separate unproved Perron–Frobenius import.

For n=2, writing the entries as `[[A,B],[B,D]]` with B>0 gives

`T=A+D`, `P=AD−B²`, `Delta=(A−D)²+4B²>0`.

Substituting the displayed secular entries yields exactly the manuscript's determinant and discriminant. The negative eigenvalues are `(T±sqrt(Delta))/2`. All possible order-four ratios before sorting are 1,2,1/2,3,1/3; simplicity and sigma1<sigma2<0 leave only 2 and 3. Since `T²/P=t+1/t+2` is strictly increasing for t>1, the two exclusion factors are exactly

`R=(2T²−9P)(3T²−16P)`.

For P9-04 an explicit global frame is available. Set

`lambda_minus=(T−sqrt(Delta))/2`, `v=(B,lambda_minus−A)/sqrt(B²+(lambda_minus−A)²)`,

and take rho to have columns `v` and `(-v_2,v_1)`. B>0 guards the denominator everywhere, both columns are analytic, rho has determinant 1, and they are the increasingly ordered eigenvectors. Thus the global two-planet conclusion is true for a reason stronger than discriminant nonvanishing alone.

For P9-01, enumerate the **40** k-vectors with 0<abs(k)_1≤4, including both signs, and the two permutations in each R_k. With x=sigma1,y=sigma2, exact symbolic multiplication gives

```text
Phi_4(x,y) = F(x,y) R(x,y)^4,
R(x,y) = (x−3y)(x−2y)(2x−y)(3x−y),
F(x,y) = 2^32 3^8 x^16 y^16 (x−y)^10 (x+y)^8
         (x+2y)^4 (x+3y)^4 (2x+y)^4 (3x+y)^4.
```

F is strictly positive on x<y<0, including at the ratio-2 and ratio-3 resonances. The total degree is 82, matching the definition (degree 2 plus forty degree-2 factors). This confirms the correct zero-set criterion and refutes the claimed association with R itself. Correcting the clause to this identity, or simply to equal zero sets, leaves the proposed Part 10 strategy intact.

## Pinned-source disposition of E4–E6

| Candidate | Disposition after direct PDF check | Evidence / action |
|---|---|---|
| **E-P-Fej04r-4** | **Withdraw as stated.** | On p.53 the statement has `3 C epsilon²`, and the end of the proof `2 C epsilon²(1+O(epsilon))`, with `C=norm(A)²(1+norm(D)/sigma)/sigma`. These are compatible after decreasing epsilon. The threshold is existential, which is exactly how the lemma is stated. The blueprint's explicit version is useful but does not establish this alleged source inconsistency. |
| **E-P-Fej04r-5** | **Withdraw as stated.** | The proof begins on p.54 and ends on p.55. Its two displayed recurrences yield `b_(s+1)^j−b_(s+1)^(j+1) = [j b_s^j+(j+1)b_s^(j+1)]/[s(1+alpha)²] + [b_s^j−b_s^(j+1)]/(1+alpha)²`. This preserves positivity. Starting with 0<s<1 and shifting by positive integers proves every positive noninteger s. Symbolic substitution of the two recurrences gives residual exactly zero. The independent j=1 proof remains preferable for the narrower dependency. |
| **E-P-Fej04r-6** | **Confirmed missing boundedness premise.** | Corollary 72 starts on p.53 and finishes on p.54 without bounding the family A_epsilon. The explicit unbounded off-diagonal example above violates its conclusion. The new K-bound is sufficient and correctly quantified. |

One **different source issue** should be handed to the orchestrator rather than folded into the rejected E4 allegation: p.53 says there is a “unique matrice U” in M_n(R) eliminating the first-order term. Without a normalization that is false. If A=0 and D has distinct diagonal entries, every diagonal U commutes with D and works. Generally the equation fixes the off-diagonal entries while leaving the diagonal arbitrary. Specify zero diagonal (equivalently choose the skew-symmetric solution for symmetric A). This source normalization omission is not used by the blueprint's independent proof. I do not certify the source's separate operator-norm bound for U; no such bound is needed here.

## Mathlib audit and extraction boundary

| Blueprint reference | Actual declaration / applicability |
|---|---|
| E1 spectral theorem | `Mathlib/Analysis/Matrix/Spectrum.lean`: `Matrix.IsHermitian.spectral_theorem` (143), `eigenvalues` (67), `eigenvectorBasis` (71), `eigenvectorUnitary` (89), `charpoly_eq` (157), `det_eq_prod_eigenvalues` (193). These names exist. `eigenvalues₀` (60) has the stated antitone property (63). `Matrix.isHermitian_iff_isSymm` is in `LinearAlgebra/Matrix/Hermitian.lean:69`. Use matrix conclusions for the approved coordinate carrier; the basis object itself uses EuclideanSpace. |
| E2 analytic IFT | `Analysis/Calculus/ImplicitContDiff.lean:54–93`: `ContDiffAt.implicitFunction`, `implicitFunction_apply_self`, `eventually_apply_implicitFunction`, `eventually_apply_eq_iff_implicitFunction`, `contDiffAt_implicitFunction`. Apply at differentiability level omega using `AnalyticAt.contDiffAt` and return with `ContDiffAt.analyticAt` (`ContDiff/Defs.lean:977,985`). The scalar partial derivative nonzero gives precisely the required invertibility. The one-dimensional `AnalyticAt.analyticAt_localInverse` also exists, but is not the full parameter theorem. |
| E3 symmetric polynomials | `RingTheory/MvPolynomial/Symmetric/FundamentalTheorem.lean:341`, `MvPolynomial.esymmAlgEquiv`, has codomain the symmetric subalgebra and is directly applicable; its inverse expresses the symmetric polynomial in elementary symmetric functions. `Matrix.charpoly` exists. |
| Discriminant | `LinearAlgebra/Matrix/Charpoly/Disc.lean:25`, `Matrix.discr`, is the characteristic-polynomial discriminant. `Matrix.discr_of_card_eq_two` (35) and `discr_fin_two` (41) supply the 2-by-2 formula. The simple-spectrum characterization still needs the split-root/product-of-gaps bridge, which is mathematically supplied by the spectral theorem. |
| E4 analytic uniqueness / zero-set measure | `AnalyticOnNhd.eqOn_zero_of_preconnected_of_eventuallyEq_zero` exists in `Analysis/Analytic/Uniqueness.lean`. This gives uniqueness, not by itself the nullity of a several-real-variable zero set. I did not locate a general null-zero-set declaration in the searched analytic/measure files. Keep the explicitly stated standard null-zero-set theorem as its own external leaf or supply its slicing proof. It must not be marked already proved merely by locating the identity theorem. |
| E5 integration | The needed integration by parts and positivity statements are elementary standard analysis; the manuscript lists them explicitly. No invented specialized Laplace-coefficient declaration is relied upon. |

A labelled norm comparison on the existing coordinate types can state `norm_inf(x)≤norm_2(x)≤sqrt(n)norm_inf(x)` and, for square matrices, each of `norm_inf_op(A)≤sqrt(n)norm_2_op(A)` and `norm_2_op(A)≤sqrt(n)norm_inf_op(A)`. Thus preserving the Euclidean perturbation estimates does not obstruct later max-norm interfaces. Do not silently interpret their current operator norm as the Pi operator norm with unchanged constants.

The later Part 10 good-point/asymptotic argument, Part 11b quartic Birkhoff construction, Part 12 application, and unresolved independent P8 quartic findings were not audited as completed proofs here. This review accepts the consumed local quadratic data and the spectral/lift calculations, not those future conclusions.

## Closeout

Correct P9-01 before extracting the n=2 polynomial interface. Resolve the five minor findings and the literal sign/matched-pair wording above; withdraw E4/E5 and retain E6 with its precise missing premise. Preserve the valid explicit perturbation constants, IBP formula, local adjugate construction and symplectic lift. No frozen-statement alteration or new physical hypothesis is needed.
