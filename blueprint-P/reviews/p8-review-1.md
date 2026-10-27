# Review 1: averaged interaction and secular quadratic/quartic interfaces

## Verdict: REVISE

The derived quadratic form is correct in the frozen canonical normalization and increasing axis order. The exact moving/fixed identification, including the action-only diagonal kinetic contribution and the integrability restriction for total Bochner averages, is correct to all orders. The three requested source defects are confirmed. In particular, the CP11 quartic defect admits a precise repair: in the last term of the printed `r1` in (B.6), change **37 alpha^4 beta_4^(9)** to **37 alpha^3 beta_4^(9)**. An exact integration-by-parts certificate below verifies this repair, rather than merely fitting numerical data.

Two major statements in the quartic interface need correction before extraction: its uniform eccentricity domain contains tangencies, and its asserted equality to CP11's `r1` contradicts both its own subsequent warning and the independently computed coefficient. The local quartic structure and the exact diagonal formula themselves check out. The remaining findings are minor contract, source-description and notation repairs.

## Snapshot, materials and checks

- Reviewed `blueprint-P/parts/p8-secular-form.tex` in full: **256 lines, 44,383 bytes**, SHA-256 `85abd7707de420cab8418004b6f205319e5508cbffae22a0d997c66806d27292`.
- Read the review brief, AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, writer item 3, relevant P PLAN sections, track source/statement records and historical notes. Checked the actual P1, P6 and P7 contracts, P9's canonical lift and consumer interface, and the preceding P7 review. Dependency hashes: P1 `1a4219ec164d0ad9d16ee24dc5a98a854b0502e0f8c20c3467e3cae21ad89da1`; P6 `b6885887ba6dfd181e79925cb4584b4b5590d0debc3bc205a2c49aa86b634899`; P7 `3a10ddf74067a3c7b54184a190710deaba3019c97d2e0d5e9a3773b889cc26ab`.
- Compared frozen `HasSecularBirkhoffForm`, `SecularAverage`, `Assemble`, `OscillatorAction`, `MovingHamiltonian`, `FixedHamiltonian`, the planar norm/dot conventions, and the D25 secular-integrand/ellipse definitions used by this interface. No frozen statement was edited or found false.
- Independently read pinned Fej04r pp.47–55, especially (31), (33), Lemma 64, Definition 66 and (35)–(37); Fej07e p.3; CP11 pp.20–22, 32–34 and 62–64. Rendered Fej04r pp.50–51 and CP11 pp.62–63 were inspected to disambiguate exponents and factors. CP11 PDF SHA-256 matches `9b525c5896cfd006b813e79ce56df0b33fcdc55595c972e5090f4a839de4c30f`; Fej04r is the pinned January-2007 revision, not an unpinned original printing.
- `cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0**, **97 pages**, **1,464,976 bytes**; zero error lines beginning `!`, no undefined-reference/citation diagnostics. All Part-8 local/cross-track reference targets exist. Part 8 has a 39.26pt overfull display at line 148, underfull paragraphs and bookmark warnings; these do not affect the mathematical verdict.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (183 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- Independent diagnostics are in the explicitly authorized `.drafts/P/review-scratch/p8_independent.py`; no writer scratch was imported. They combine 65-digit radial-series sums, independent angular quadrature of differentiated kernels, a symbolic rational identity, and direct 96²/192²-node chart averages. The numerical checks are evidence, not Lean certification.
- No Lean source was changed or built; no fresh `#print axioms` or provider closure is claimed. The only authored deliverables are this report and the authorized scratch script. Unrelated working-tree changes were preserved.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| P8-01 | p8:221, 232, `bpP:p8:quartic`(a), `q4-a` | major | `W` is claimed real analytic on all `(0,1) × {abs(v)<1/4}`. This contains tangent ellipses. For example, inner axis alpha = 5/6, inner eccentricity vector (1/5,0), outer axis 1 and outer eccentricity zero satisfy the stated bounds, but the inner apocenter touches the outer circle. The average has a tangency singularity in its parameter derivatives. The earlier compactness proof supplies a neighborhood of the circular locus for each separated pair, not this uniform product domain. | State `W` on an open separated domain, or as a real-analytic germ along `(alpha,0,0)` for every 0 < alpha < 1. One sufficient explicit domain is `alpha(1+abs(v_i)) < 1-abs(v_j)`. A ball of radius less than `(1-alpha)/(1+alpha)` for both eccentricities suffices. Keep the Taylor coefficient functions on the whole axis-ratio interval; their local radii may shrink as alpha approaches 1. |
| P8-02 | p8:224, 235, `bpP:p8:quartic`(c), versus p8:238–239 `cp11-check` | major | The proposition asserts `c1 = m_i m_j r1(a_i,a_j)/(2 Lambda_i²)` and the analogous `c2` equality to the cited CP11 coefficient, although the following remark correctly exhibits counterexamples to that exact equality. At axes (1,2), masses (.7,1.9), the actual c1 is −0.03097386530 while the printed formula gives +0.05742931466. This is a false interface, not merely an unresolved calculation. | Define `r1_exact := -h''''(0)/32 + h''(0)/8` and use that in the equality. Alternatively use CP11 (B.6) with the **37 alpha^3** correction proved below, explicitly distinguished from the printed `r1`. Recast the mixed-coefficient discussion as a Part-11b obligation, without asserting unchecked printed equalities. |
| P8-03 | p8:119, 122–123, `bpP:p8:laplace` | minor | Strict positivity on `[0,1)` is false for k > 0: b_s^(k)(0) = 0. Also the claimed coefficient bound `O(q^(2s-2)(q+k)^(s-1))` has an extra power. For s = 1/2 and fixed k, the true size is proportional to q^−1, whereas that display claims O(q^−3/2). The convergence conclusion remains true. | Say nonnegative on `[0,1)`, strictly positive for 0 < alpha < 1, and b_s^(0)(0) = 1. Bound coefficients by `O((q+k)^(s-1) q^(s-1))` as q tends to infinity, hence O(q^(2s-2)) for fixed k; use `(q+1)` versions to include zero. In I2's proof explicitly separate q = 0, where both coefficients vanish, before using `(3/2)_(q-1)`. |
| P8-04 | p8:101, `stepP:p8:l64-a` | minor, unavailable cited guards | Lemma 64 correctly claims all of O_n, including pair collisions, but its proof cites P6 `hamilton-eqs` and P7 `product-chart`(d) at coupling zero. Those cited results still require W / Psi^−1(W). Setting the coupling to zero does not discharge their written hypotheses. | Keep the stronger statement. Differentiate the explicit decoupled Kepler Hamiltonian directly on the set where each individual q_i is nonzero: its position derivative is p_i/m_i. Apply P1 `chart-field` and P7 `product-chart`(b), with X_h computed directly. No pair-distance guard is needed, and no new collision premise should be added. |
| P8-05 | p8:175, 247, `factor-half`(2), errata summary | minor, source fidelity; repeats P7-03 | The normalization discussion calls the uncorrected sqrt(Lambda) formula the **printed (31)** of Fej04r. The actual pinned revised p.47 already has sqrt(2Lambda), while its (35)–(37) retain the larger coefficients. The factor-half defect is real, but that description of the pinned formula is false. | Attribute the omitted sqrt(2) in the historical original to Fej07e's report; say the pinned revised (31) already incorporates the correction and (35)–(37) do not reflect it. The present Q_h is half the pinned printed quadratic matrix. Distinguish this new matrix defect from the original-coordinate normalization erratum. |
| P8-06 | p8:43, `bpP:p8:perturbation-analytic`(b) | minor, complex notation | On complex w', `abs(sum p_i)^2` ordinarily means a Hermitian squared norm and is not holomorphic. The proof correctly calls the intended extension a polynomial, so it has to mean the bilinear square, just as the definition of s_ij already does. | Write the complex kinetic term explicitly as `sum_c (sum_i p_c^(i))²/(2m0)`. State that it restricts to the real squared Euclidean norm. Do not use a complex norm or complex conjugation in this extension. |
| P8-07 | p8:224, 235, `bpP:p8:quartic`(c), `q4-c` | minor, deferred calculation | The advertised second-order orbit expansion is not sufficient for a general direct calculation of quartic mixed terms of bidegrees (3,1) and (1,3). The proof only says the method is described, while the introduction explicitly defers this computation to Part 11b. | Keep the proved existence/analyticity of the six invariant coefficients as the interface. Mark their explicit mixed values as forward obligations; when computing them retain third-order single-planet variations for those bidegrees, or prove the identity that eliminates them. Do not extract the description as a completed coefficient proof. |

## What I recomputed: analyticity and exact symmetries

The collision-free neighborhood argument works with the stated dependence. At the circular torus,

```text
s_ij = (a_j*−a_i*)² + 2 a_i* a_j* (1−cos(lambda_i−lambda_j))
     ≥ (a_j*−a_i*)² > 0.
```

P7's complex chart is available on N(rho0). The closure of N(rho0/2) is compact and lies inside that open chart domain. Joint continuity on its product with the compact fast-angle cube therefore supplies one rho* for finitely many pairs, uniformly in all real lambda by periodicity. This proves Re(s_ij) ≥ half the squared axis gap. The positive real radii needed for NoCollision with the center follow separately from O_n. For n = 1 the pair conditions are vacuous; choose any sufficiently small positive radius and retain the central-radius condition.

Thus the claimed *shape* of the polydisc and the data on which its radius depends are supplied. The radius itself is existential via compactness, not a computed numerical lower bound. That is enough for the later existence-of-constants uses. A principal inverse square root on the right half-plane gives the real inverse distance on the real slice. With P8-06's bilinear kinetic extension, both perturbations and their averages are holomorphic. Joint continuity plus Cauchy estimates on compact smaller polydiscs provides the derivative bounds needed for every interchange of differentiation and integration. No complex Kepler branch outside P7's domain is used.

I checked all three chart symmetries directly in the regular equation:

```text
Phi(F+pi,−v)              = Phi(F,v)+pi,
Phi(F+theta,R_theta v)    = Phi(F,v)+theta,
Phi(−F,diag(1,−1)v)       = −Phi(F,v).
```

The first two commute with quarter-turn; the reflection anticommutes with it. This gives respectively (−q,−p), (Rq,Rp), and (sigma q,−sigma p), with the same positive J and k. The domain O_n is invariant. Both direct pair distances and the total-momentum square have these symmetries, including for the totalized real functions. Translation/reflection of a full angle-period cube preserves the average. The evenness in the entire eta vector and in the entire xi vector follows; it does **not** assert evenness in each separate planet's oscillator pair, which would incorrectly kill the cross terms.

The polydisc itself is not invariant under arbitrary slow rotations. Read the analytic invariance as an equality wherever both local arguments are in its domain, or use the global averages at the rotated collision-free configurations. A sufficiently small rotation-invariant slow ball lies inside the polydisc, so the claimed O(2) invariance of every homogeneous Taylor polynomial follows without extending the polydisc by assumption.

For degree two, reflection eliminates xi–eta mixed terms, and a pi/2 rotation identifies the two symmetric coefficient matrices. For a pair of planar vectors the degree-four O(2) invariants are exactly the six displayed monomials: the square of their oriented cross product is already `abs(u_i)^2 abs(u_j)^2−(u_i dot u_j)^2`. No additional pseudoscalar invariant survives reflection. This verifies the structure of the quartic interface locally, despite P8-01's excessive domain.

## Exact Lemma 64, identification and frozen Birkhoff transfer

The correct identity is

```text
nu_i = kappa² m_i³/Lambda_i³,
p_i = m_i nu_i partial_(lambda_i) q_i.
```

The extra factor m_i is essential. Periodicity makes the average momentum zero. Each block depends only on its own fast angle, so Fubini makes every distinct-block dot-product average zero. For the diagonal square the Kepler virial identity gives

```text
average abs(p_i)^2 = m_i² kappa/a_i = m_i^4 kappa²/Lambda_i².
```

The circular case is covered explicitly by P7's endpoint formulas, without invoking a strict noncircular Delaunay chart there. Pair collisions do not obstruct any of these momentum integrals; only the citation repair P8-04 is needed for the printed proof of (a).

Consequently the exact total-function splitting from P6 yields

```text
average(f_mov−f_fix) = delta(Lambda)
 = (1/(2m0)) sum_i m_i^4 kappa²/Lambda_i²
 = (G/2) sum_i m_i²/a_i
 = (kappa G/2) sum_i m_i^4/Lambda_i².
```

Every mass, action and 2pi factor here is correct. The difference integrand is continuous on every O_n fast torus even where the direct interaction is singular. Adding an integrable continuous function preserves integrability in both directions. **Subtracting the separate Bochner averages is used only when they are integrable.** The warning that both totalized integrals become zero when neither is integrable is correct; no unconditional equality `S_mov−S_fix=delta` is inferred there. On the separated polydisc both are continuous on the full compact torus and hence integrable.

The equality therefore survives every nonzero slow derivative, followed by any number of action derivatives. It also survives composition with any slow map preserving Lambda. At equal coupling the slow secular equations coincide, Lambda remains constant, and the fast frequencies differ by the coupling times the Lambda gradient of delta. The averaged *full* Hamiltonians have the displayed h plus coupling-times-average forms on this same integrability locus.

The frozen dictionary is literal: assemble puts `(lambda,xi)` in the position block and `(Lambda,eta)` in the momentum block, so `(I,p,q)=(Lambda,eta,xi)` and the frozen oscillator action is `(eta_j²+xi_j²)/2`. The normalized cube integral is the same `secularAverage`. Under the stated domain inclusion, subtracting delta transfers both the full-disc integrability clause and the epsilon–delta remainder clause of `HasSecularBirkhoffForm`, including its value at the zero slow vector. Only P0 changes; Omega and beta, including their parameter dependence, do not change.

This transfer is an implication about already prepared Birkhoff coordinates. The unrotated perturbation generally has cross terms and does not yet satisfy the frozen normal-form predicate. P9's `lift` supplies the fast-angle correction for an action-dependent diagonalizing rotation, and its `diagonalize` proves that this angle translation preserves the average. Thus P8's fiberwise orthogonal rotation must not be mistaken for a full symplectic change with lambda unchanged when the rotation depends on Lambda. The existing Part-9 consumer handles that issue; Part 11b still owes the actual quartic preparation, mixed coefficients and torsion proof.

## Laplace series and the derived Q_h

The Poincaré coefficient normalization is the Fourier coefficient with factor 1/(2pi), not the commonly used doubled cosine coefficient. Multiplying the two binomial series and selecting Fourier index k gives exactly

```text
b_s^(k)(alpha) = sum_(q≥0) (s)_(q+k)(s)_q/((q+k)! q!) alpha^(2q+k).
```

The corrected polynomial-growth estimate in P8-03 proves local uniform convergence on every smaller disc, and hence holomorphy and termwise differentiation. Both identities check coefficient by coefficient:

```text
alpha beta''+2 beta' = b_(3/2)^(1),       beta=b_(1/2)^(0),
alpha² b''+2 alpha b'−2b = alpha b_(3/2)^(2), b=b_(1/2)^(1).
```

For the first identity the coefficient is `2q(2q+1)((1/2)_q/q!)²`. For the second the multiplier on the alpha^(2q+1) coefficient is `2q(2q+3)`; q = 0 is a separate zero coefficient. No use of Fej04r's false global-meromorphy Lemma 76 is needed.

I recomputed the pair calculation independently. With i inner and j outer, let alpha = a_i/a_j. For j circular, the angle average is the radial potential Phi averaged with the Kepler weight `1−e cos F`. If `h(epsilon)=(1−epsilon)Phi(a_i(1−epsilon),a_j)`, then

```text
S_ij = −Gm_i m_j [h(0)+h''(0)e²/4+O(e⁴)],
h''(0) = alpha b_(3/2)^(1)(alpha)/a_j,
e² = abs(u_i)²/Lambda_i−abs(u_i)^4/(4Lambda_i²).
```

The outer-eccentric case gives the same h'' value using homogeneity and differentiating `r^−1 beta(a_inner/r)`. Hence the two diagonal coefficients are `−mathfrak_a_ij/Lambda_i` and `−mathfrak_a_ij/Lambda_j`, with `mathfrak_a_ij=Gm_i m_j alpha b_(3/2)^(1)/(4a_j)`.

For the cross coefficient the first variation at fixed mean longitude is

```text
delta q/a = −(v dot c)c−2(v dot J0 c)J0 c.
```

For v = (s,0) this means r' = −a cos(lambda), theta' = 2 sin(lambda). The four mixed chain-rule terms have the signs printed in the proof. The four elementary double-angle averages select only Fourier harmonic 1 with factor 1/4. Euler's homogeneity identity reduces the result to

```text
Gm_i m_j [−a_i a_j partial_i partial_j B1/2−B1]
 = Gm_i m_j alpha b_(3/2)^(2)(alpha)/(2a_j)
 = 2 mathfrak_b_ij.
```

Dividing by sqrt(Lambda_i Lambda_j) gives the mixed xi derivative and therefore the off-diagonal matrix entry `mathfrak_b_ij/sqrt(Lambda_i Lambda_j)`, since a symmetric quadratic matrix contributes twice its off-diagonal entry. This recomputes both the sign and every factor of two. Assembly gives exactly the displayed `Delta^−1 hat_q Delta^−1`; reversal of the source's decreasing axis labels gives Lean's increasing order without changing pair contributions.

As a separate diagnostic, direct chart averages with masses (.7,1.9), axes (1,3), G = kappa = 1 gave, at step 10^−4:

| Quantity | 96² grid | 192² grid | Derived coefficient |
|---|---|---|---|
| Mixed xi derivative | 0.01247320303 | 0.01247320303 | 0.01247320409 |
| Coefficient of xi_1² | −0.03292790485 | −0.03292789930 | −0.03292789246 |

The discrepancies have the expected finite-difference/roundoff size. These checks are independent of the writer's three-planet diagnostics.

## The three requested source-errata checks

### E-P-Fej04r-3: confirmed, with a source-version correction

Pinned revised p.47 (31) already uses sqrt(2Lambda), so `abs(u)^2=2Gamma`. Pinned p.50 (35) has `Q_h dot (xi²+eta²)` with no half; p.51 (36)–(37) give pair diagonal coefficients `−Gm_i m_j alpha b_(3/2)^(1)/(2a_outer Lambda_i)` and the corresponding off-diagonal coefficients. The derivation above gives precisely half those values in the pinned canonical chart. Thus the horizontal quadratic matrix printed there is twice the actual one. The factor is not a reversal of axis labels, a momentum/position permutation, a period conversion or a different Laplace normalization.

An elementary leading-term check already detects it: with the outer planet circular, `beta=1+alpha²/4+...`, so the eccentric correction of the pair average is `−3Gm_i m_j alpha² e_i²/(8a_j)+...`. Since `e_i²=abs(u_i)²/Lambda_i+...`, the canonical coefficient is −3/8, whereas the printed matrix gives −3/4. The normalization repair scales both sets of secular coordinates by sqrt(2), so any retained quadratic coefficient from the old coordinates must be halved. The planar proof establishes the horizontal part needed here; no independent spatial quartic computation is claimed.

Fej07e p.3 reports the historical missing sqrt(2). The blueprint should report that history accurately and identify the inconsistency that remains *within the pinned revised printing* (P8-05). The correct frequencies are Omega_j = 2 sigma_j for eigenvalues sigma_j of the present, halved Q_h. The P5 source/statement matrix entries and affected downstream asymptotic coefficients must be distinguished from these corrected ones; no frozen definition changes.

### E-P-CP11-1: confirmed

Rendered p.62 (B.2) prints `C2(a,b)=alpha beta_2^(3)(alpha)/b`; it lacks the factor 1/2 present in Fej04r (37). CP11 p.21 (6.9) already puts a half in front of the horizontal quadratic form. Combining that half with (B.1)'s `2 C2 eta_i eta_j/sqrt(Lambda_i Lambda_j)` gives a mixed coefficient twice the derived coefficient when the printed C2 is used. The diagonal term, using printed C1 = −alpha beta_1^(3)/(2b), agrees. The exact repair is `C2=alpha beta_2^(3)/(2b)`; there is no additional overall halving of CP11's (6.9).

### E-P-CP11-2: confirmed; an exact one-exponent repair

In rendered p.63 (B.6), the end of the r1 bracket is **`+37 alpha^4 beta_4^(9)(alpha)`**. The full expression is presented as exact, not as an asymptotic. Independently, let

```text
h(epsilon) = (1−epsilon) Phi(a(1−epsilon),b),
r1_exact(a,b) = −h''''(0)/32+h''(0)/8.
```

The correct coefficient is `c=m_i m_j r1_exact/(2Lambda_i²)` in CP11 units. The radial series and direct differentiated angular quadrature agree to below 6e−65 at all six tested ordered pairs. Here are the coefficients, with masses (.7,1.9) assigned to the inner/outer planet and G = kappa = 1:

| Axes | Coefficient | Exact radial computation | Printed CP11 |
|---|---|---|---|
| (1,2) | c1 | −0.0309738652996 | +0.0574293146600 |
| (1,2) | c2 | −0.0300600789951 | −0.0420594025907 |
| (1,3) | c1 | +0.00659366275125 | +0.00741843653470 |
| (1,3) | c2 | −0.00286326528440 | −0.00297521518852 |
| (1,10) | c1 | +0.000251791491205 | +0.000251801075694 |
| (1,10) | c2 | −0.0000144474137194 | −0.0000144487146610 |

The claimed wrong sign at (1,2) is therefore real. The ratio printed/exact for c1 at (1,10) is 1.00003806518, also reproducing the writer's asymptotic observation.

There is a stronger analytic diagnosis. All other terms in the printed r1 yield an even series in alpha; the last term gives an odd alpha^9 contribution, which the inner radial average cannot have. Replace **alpha^4 by alpha^3 in that last term only**. The resulting formula equals r1_exact for all positive a != b. Here is an independently derived certificate, with b = 1 by homogeneity:

```text
x = alpha, z = cos(t), D = 1+x²−2xz,
H(e,t) = (1−e)/sqrt(x²(1−e)²+1−2x(1−e)cos(t)),
K_exact = −partial_e^4 H(0,t)/32+partial_e^2 H(0,t)/8,
R(x,z) = (3x/32)(3x^4−20x^3 z−12x² z²+38x²−4xz−5).
```

Let K_corrected be the cosine kernel of printed (B.6) with that exponent changed, i.e. replace each beta_k^(9) by `cos(kt)/D^(9/2)`. Exact rational polynomial expansion gives

```text
K_corrected−K_exact = d/dt [sin(t) R(x,cos(t))/D^(7/2)].
```

The scratch symbolic check returns identically zero for this certificate. D is strictly positive for x > 0, x != 1, so the derivative integrates to zero over a full period. The proof is therefore an algebraic identity plus periodic integration, not a numerical conjecture. Restoring b yields the exact defect:

```text
r1_printed−r1_exact
 = 37 alpha^4(1−alpha) beta_4^(9)(alpha)/(256 b).
```

For alpha < 1 it starts at order alpha^8/b. The true inner expansion begins

```text
b r1_exact = 3 alpha²/16−45 alpha^4/256−525 alpha^6/256+O(alpha^8).
```

This explains why the leading asymptotic in CP11 (8.2) survives the typo and why the error becomes substantial at finite ratio. Footnote 73's planar-coordinate identification need not be blamed: a specific printed exponent accounts for the whole r1 discrepancy. The remaining r2, r3, r4 polynomials are **not verified by this check**. Do not infer correctness of the finite-ratio torsion formula (8.1) or its determinant until those inputs and the Birkhoff calculation are independently paid.

## Quartic interface and additional source observation

The local six-monomial structure is correct. The conversion `v=(1−abs(u)^2/(4Lambda))^(1/2)u/sqrt(Lambda)` gives exactly the displayed negative corrections A/4, A'/4 and B/8 to the quartic term, with the common pair prefactor applied to the entire expression. For the self terms, averaging cos^4 gives 3/8 and dividing by 4! gives 1/64; substituting `e²=abs(u)²/Lambda−abs(u)^4/(4Lambda²)` gives precisely

```text
c = −Gm_i m_j (h''''(0)/64−h''(0)/16)/Lambda².
```

That formula is proved and usable. The mixed coefficients remain obligations for Part 11b. The phrase “to second order in v” in (c) is insufficient as a general recipe for the terms of bidegrees (3,1) and (1,3): a direct orbit-map Taylor calculation must retain the corresponding third-order single-planet variations, or provide a cancellation identity that removes them. Use the exact regular chart and expand to the required bidegree. The existing method description should not be extracted as a completed coefficient theorem.

**Additional candidate source defect, E-P8-Fej50.** In the pinned revised p.50 proof of Lemma 64, the rendered equation reads `Y_j = mu_j dX_j/dt = mu_j^3 M_j^2/Lambda_j^3 partial_(lambda_j) X_j`. But (33) gives `lambda_j' = mu_j^3 M_j^2/Lambda_j^3`. The last coefficient in that proof should therefore be **mu_j^4 M_j^2/Lambda_j^3**. Its omitted mass factor does not affect the zero-average argument. P8's statement `p_i=m_i nu_i partial_lambda q_i` already has the correct factor. This is a separate source typo, not a defect in P8's Lemma 64 statement. The reviewer has not edited the errata ledger.

## Formalization and extraction boundary

The local parameter-integral route is credible: Mathlib's `hasFDerivAt_integral_of_dominated_of_fderiv_le` in `Analysis/Calculus/ParametricIntegral.lean:206`, or the local Lipschitz version at line 161, can handle compactly dominated derivatives over the restricted cube measure; Cauchy estimates provide those bounds locally. Analyticity can be obtained from the complex derivative route or an integrated locally convergent power series. Fubini, periodic interval integration and finite sums cover Lemma 64 and the identification. The general O(2) invariant-polynomial theorem is not an identified installed Mathlib import; for the only cases actually needed here, degree two and degree four on two planar vectors, a finite coefficient-comparison lemma is a small explicit replacement.

The quadratic derivation is a usable native proof plan after the minor fixes. The all-orders comparison is a usable exact interface and closes the specific moving/fixed secular-identification obligation on the stated guarded domain. It does not close the physical KAM theorem or finite-ratio torsion. Before graph extraction, repair P8-01/P8-02, retain the explicit distinction between printed and corrected source formulas, and leave the mixed quartic/Birkhoff tasks visibly assigned to Part 11b. The reviewed Part-8 hash was unchanged at closeout; report whitespace, table-column and conflict-marker checks are part of closeout validation.
