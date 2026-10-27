# Part 11b, review 1: planar quartic Birkhoff form and torsion

**Verdict: REVISE. Part 11b ready for graph extraction: NO.**

The quartic coefficients, homological equation, torsion formula, and leading determinant survive independent recomputation. The route is viable: a local symplectic change of coordinates gives the literal averaged expansion required by the frozen definition. However, `bpP:p11b:lift-map` asserts a uniform flow domain that is false for an arbitrary open action set. Restricting that proposition to a relatively compact neighbourhood repairs the issue and matches the domain already requested by the final theorem. No change to a frozen statement is needed.

## Scope and materials

- Reviewed `blueprint-P/parts/p11b-planar-torsion.tex`: 295 lines, 55,088 bytes; SHA-256 `1e218dacf7101b7f33940996cccd42325e51b8755d2d98fe44e238486f202aff`.
- Read repository `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the track-P plan and relevant statement/source/notes files, `.drafts/briefs/bp-review.md`, the writer conventions, and the model Part-2 review. Checked the Part-7 chart, Part-8 secular expansion and existing Part-8 review, Part-9 diagonalisation/lift, and Part-10 generic patch interface.
- Compared the final contract with `KAM/Frozen/Planetary/Defs/HasSecularBirkhoffForm.lean`, `SecularAverage`, `Assemble`, `OscillatorAction`, and the frozen properly degenerate KAM theorem. Frozen Birkhoff definition SHA-256: `600b7e17bdb3acdd5af656c6c0bb8e23c63428db51e8fcaa987c5aa199a43e5c`.
- Read CP11 printed pp. 33–34 directly from the pinned `sources/pdf/cp11_planetary_invent.pdf`, including rendering p. 34. PDF SHA-256: `9b525c5896cfd006b813e79ce56df0b33fcdc55595c972e5090f4a839de4c30f`. The comparison below concerns (8.2)–(8.4), not an independent audit of Appendix B or Arnold's original text.
- Independent reviewer calculations are in `.drafts/P/review-scratch-p11b/`. I did not import or run the author's coefficient-generation scripts. Production TeX and frozen files were not edited.

## Findings

| ID | Location | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| P11B-01 | `bpP:p11b:lift-map`, lines 166–175, especially 167 | **major** | The radius `r1` from `flow` is uniform only on a compact parameter set, whereas the proposition defines the map for every action in `O`. There need not be any positive radius giving time-one existence on that product. An explicit counterexample is given below. | Choose an open `O'` containing the compact set with compact closure inside `O`; apply the flow bound on `closure O'`, and state the map and its properties on `R² × O' × ball(r1)`. Alternatively state them on the actual time-one flow domain. Carry the restricted domain through the composition. |
| P11B-02 | `bpP:p11b:laplace-red`, lines 44–61 | minor | Relations R1–R3 are initially asserted only for `s > 1`, but the reduction starts by applying R3 at `s = 1/2`. The actual identities are valid there; this is a missing scope in the lemma, not a wrong recurrence. | Assert R1–R3 for all real `s` (or at least `s > 0`), since the circular denominator is positive. Keep the nonzero-divisor guards when solving the recurrences. |
| P11B-03 | `stepP:p11b:bt-frozen`, line 221 | minor | The frozen antecedents are oscillator discs, not merely a max-norm ball. The displayed bound `|z|₂ ≤ 2 maxnorm` alone does not put a max-norm ball of radius `r*/sqrt(2)` inside the Euclidean ball of radius `r*`. Also, the frozen definition has two clauses; its alleged clause “(iii)” does not exist. | First use the actual disc antecedents to get `|z|₂² < 2 delta² ≤ r*²`. Then use `|z|₂ ≤ 2 maxnorm` only for the remainder estimate. For integrability use the same disc argument with `r0`. Delete “(iii)” and state separately that the supplied data are independent of `mu` and that symmetry supplies P-G's separate symmetry hypothesis. |
| P11B-04 | Deviations, line 284; comparison with CP11 | minor | “Unlike CP11, no claim of nonvanishing for all axes” mischaracterises the cited CP11 result. The displayed CP11 calculation proves nonvanishing in a well-separated asymptotic regime; this is not a proof for every axis vector. The blueprint itself also describes CP11's analytic genericity argument at line 252. | Remove the contrast with CP11. State that the independent calculation proves non-identical vanishing, followed by the analytic open-dense argument; it does not prove nonvanishing at every axis vector. |
| P11B-05 | Numerical evidence, lines 271, 275–276 | minor | Two amplitudes along one eccentricity direction cannot establish all six independent coefficients or an asymptotic remainder order. The finite frequency fits likewise do not establish an `O(R)` error or independently prove the normal-form step. A numerical sign change suggests zeros but does not by itself certify an analytic curve. | Describe these as supplementary numerical checks; reserve proof language for the exact identities and analytic arguments. Delete the inference “so all six coefficients are right” and the unproved curve assertion, or supply certified bounds/regularity for the latter. |

### Counterexample for P11B-01

Take `O = (0,1)²`, a compact `K = [1/2,3/4]²`, and the real quartic family

    chi(Lambda,z) = x1³ y1 / Lambda1.

Its coefficients are analytic on `O`, so it satisfies the hypotheses of `flow` and consequently the stated hypotheses of `lift-map`. With `y1 = 0`, the first oscillator solves

    x1' = x1³/Lambda1,   y1' = 0,
    x1(t) = x1(0) / sqrt(1 - 2 x1(0)² t / Lambda1).

For any proposed positive product radius choose `0 < x1(0) < r1` and `0 < Lambda1 < min(1, 2 x1(0)²)`. The solution blows up before time one. The compact-set estimate in `flow` is correct; extending it to all of `O` is not. The final `birkhoff-form` theorem already uses `O'` relatively compact in `O`, so the proposed repair is directly compatible with its intended application.

## What I recomputed: refutation attempts that failed

### Orbit expansion, averaging, and the six coefficients

I checked the degree-four orbit table independently from Kepler's equation. Set the eccentricity real, `zeta = e`, and put `u = i(F-lambda)`, `X = exp(i lambda)`. The equation becomes

    u = e/2 (X exp(u) - X⁻¹ exp(-u)).

Four truncated iterations determine the required coefficients. Substitute into

    q = (1+k)/2 X exp(u) + (1-k)/2 X⁻¹ exp(-u) - e,
    k = 1 - e²/2 - e⁴/8 + O(e⁶).

The differences from the displayed orbit table are exactly zero in degrees 0, 1, 2, 3, 4 (`orbit.py`, `orbit.log`). Rotation covariance restores arbitrary complex eccentricity: at each fixed degree the Laurent exponent distinguishes the monomials. This checks the third- and fourth-order variations as well as the quadratic ones.

For the pair coefficients I used a different integration variable, avoiding the mean-longitude orbit table altogether. Let `V = exp(i varpi)` and `X = exp(i(E+varpi))`, where `E` is the eccentric anomaly. The exact ellipse formula gives

    q = X - e V + e²(-X/4 + V² X⁻¹/4)
                  + e⁴(-X/16 + V² X⁻¹/16) + O(e⁶),
    d lambda / dE = 1 - e/2 (X/V + V/X).

I expanded the pair potential through total eccentricity degree four and multiplied by **both** mean-anomaly Jacobians. For the circular denominator

    s = 1 + alpha² - alpha(X1/X2 + X2/X1),

the averaging rule is exactly

    average(X1^p X2^q s^(-t)) = 0                 if p+q != 0,
                              b_t^(abs(p))      if p+q = 0.

There is no extra factor of two: the definition uses the `1/(2 pi)` average of the cosine. R1 follows by multiplication by the circular denominator; R2 follows by periodic integration by parts. Eliminating the lower level gives R3, with the signs printed in the blueprint. Solving the two-by-two upward system has determinant `(1-alpha²)²`. Its divisors `s alpha` and half-integer `s-1-k` are nonzero on the stated parameter range. Finding P11B-02 concerns only the declared scope of these identities.

With `V1=1`, the parallel case `V2=1` gives the pure coefficients, the cubic-linear coefficients, and `p3+p4`; the perpendicular case `V2=i` gives `p3`. This separates all six real rotational/reflection invariants. The exact independently derived differences in `independent.log` are:

    A difference 0
    B difference 0
    p1 difference 0
    p2 difference 0
    p3 difference 0
    p4 difference 0
    p5 difference 0
    p6 difference 0

These are rational identities in `alpha, beta0, beta1`, not fits at selected axes. In particular the independently extracted mixed coefficient is

    p3 = 3 alpha [(7 alpha+2 alpha³+7 alpha⁵) beta0
                 -(2+6 alpha²+6 alpha⁴+2 alpha⁶) beta1]
         / [32(1-alpha²)⁴].

The chart conversion is essential. Writing `w_i = u_i/sqrt(Lambda_i)`, the exact relation is

    v_i = w_i sqrt(1-|w_i|²/4).

Thus `|v_i|² = |w_i|² - |w_i|⁴/4`, while the mixed scalar product acquires `-(|w1|²+|w2|²)/8` at quartic order. Consequently the independent calculation gives precisely

    c1 = pref (p1-A/4)/Lambda1²,
    c2 = pref (p2-A/4)/Lambda2²,
    c3 = pref p3/(Lambda1 Lambda2),

and the stated `c4,c5,c6`, including the `-B/8` corrections. This independently rederives the requested `c1`, `c2`, and a mixed coefficient, and in fact checks all six.

As a further check on the diagonal terms, put `d_l = [binom(2l,l)/4^l]²`. With the other orbit circular, the inner and outer radial averages are respectively

    sum_l d_l alpha^(2l) average_E (1-e cos E)^(2l+1),
    sum_l d_l alpha^(2l) average_E (1-e cos E)^(-2l).

Their quartic-minus-quarter-quadratic coefficients are the sums with factors
`(3/8) binom(h,4) - (1/8) binom(h,2)`, for `h=2l+1` and `h=-2l`. Their leading terms are `-3 alpha²/32` and `3 alpha²/8`, respectively. Multiplication by the negative `pref` explains the opposite leading signs of `c1,c2`. This also agrees with Part 8's radial-derivative definition.

Substitution of the Pochhammer series independently reproduces every displayed term in (series), including `p1 = 135 alpha⁴/512 + 2625 alpha⁶/2048 + ...`, `p2 = 15 alpha²/32 + 945 alpha⁴/512 + ...`, and `p3 = 9 alpha²/16 + 585 alpha⁴/256 + ...` (`series.log`). F4 is a finite algebra task with explicit output, not an additional analytic premise. The scratch CAS calculation is supporting evidence, not a Lean proof certificate.

### Birkhoff normalisation and the full coordinate change

For the stated sign convention, the quadratic flow is `z_j -> exp(-i t Omega_j) z_j`. A monomial `z^a conjugate(z)^b` has character `k=b-a` and bracket `i(k.Omega)` with `N0`. A quartic has `|k|_1 <= 4`. Therefore the displayed denominator and sign give

    {chi,N0} = F-F0,    {N0,chi} = -(F-F0).

Pairing `k` with `-k` makes `chi` real. NR4 supplies every nonzero denominator, and analyticity is local on the nonresonant action set; compactness supplies uniform bounds. There is no missing cubic correction: the secular function is even.

The **forward** time-one flow cancels the nonresonant quartic. The degree counts are correct: `{F,chi}` has degree six, `{R6,chi}` starts at degree eight, and the second iterated bracket starts at degree six. The integral Taylor remainder therefore has the claimed order on a sufficiently small compact-parameter tube. The estimate for `u=|z|²`, `u' <= 2 C1 u²`, yields `u(t) <= 2u(0)` when `u(0) <= 1/(4 C1)`. Invertibility follows from the backward flow on the image. There is no global existence claim available beyond such domains (P11B-01).

On its corrected local domain, the full lift is genuinely Hamiltonian: `Lambda'=0`, `lambda'_l=partial_Lambda_l chi`, and the slow flow is `Y`. Integrating gives exactly the printed `g`. This proves symplecticity, action preservation and angle-translation equivariance. The inverse rotation lift has the printed sign of `H_l = y^T rho^T (partial_l rho) x`; checking the canonical one-form confirms the composition order.

Most importantly, for fixed `(Lambda,z)` the combined angle shift depends on neither fast angle. Translation invariance of the full periodic integral gives the **exact** identity

    average_lambda (fhat composed with T)
       = S(Lambda, rho Y(Lambda,z)).

Only the subsequent Taylor expansion has an order-six remainder. There is no unaccounted averaging error or coupling-dependent Birkhoff transformation. The moving-origin correction is the parameter-only `delta(Lambda)` from Part 8, so it changes only `P0`.

### Spectral projection, beta, and the frozen contract

The Gram calculation independently gives `average(g)=0`, `average(g²)=r1 r2/2`, with `rj=|zj|²`. Expanding the six invariants gives the printed `a,d,b`; the independent symbolic mixed-coefficient difference is exactly zero. Since `rj=2 Rj`, the factors are

    beta11=8a,   beta12=beta21=4b,   beta22=8d.

Thus `1/2 sum_ij betaij Ri Rj` is exactly the averaged quartic, including the two off-diagonal summands. Only the ordered first spectral projection enters. Sign changes in eigenvectors do not change beta. The Part-9 simple spectrum makes that projection analytic on all of `A2`, even where NR4 fails; no extension across a resonance by a singular homological denominator is being used for beta itself.

The authoritative frozen definition quantifies over `mu in [0,mu0]` and `I in V` and has two requirements: integrability for every pair of oscillator discs of radius `r0`, and the epsilon-delta little-o estimate for discs of radius `delta`. At zero the latter fixes `P0` as well. With the dictionary `(I,phi,p,q)=(Lambda,lambda,y,x)`:

- The quadratic coefficient is `Omega=2 sigma`, because `sigma_j(x_j²+y_j²)=2 sigma_j R_j`. The sign is negative as stated.
- `P0=C0` for the fixed chart and `C0+delta(Lambda)` for the moving chart. The same quartic coefficients work for both.
- For two oscillator discs, `|z|₂² < 2r0²`; hence `r0=r*/sqrt(2)` is valid. With the disc antecedents explicitly retained, the domain and the estimate both work: `|Rem| <= 64 C* maxnorm^6`. Choose a positive `delta <= min(r0,sqrt(epsilon/(64 C*)))`.
- The constructed functions can be extended constantly in `mu`, so all clauses hold also at `mu=0`. Arbitrary total extensions outside the tube do not affect integrals over the tested oscillator discs.
- Symmetry is true by construction and supplies the separate P-G symmetry requirement; it is not a third conjunct of `HasSecularBirkhoffForm`.

No binder, frequency factor, norm, or coupling dependence needs to be changed in the frozen contract. P11B-03 asks for the missing domain argument and accurate clause bookkeeping. Part 12 must still supply the total perturbation, its neighbourhood/collar and the remaining assembly hypotheses; this part does not establish those by itself.

### Determinant and CP11

For `a2=1`, the exact coefficient series give the stated leading `c1,c2,c3` and orders `c4=O(alpha^(7/2))`, `c5=O(alpha^(9/4))`, `c6=O(alpha^(11/4))`. The eigenvector mixing has `pi12=O(alpha^(5/4))`, `pi22=O(alpha^(5/2))`. Inserting them gives

    a=c1+O(alpha^(7/2)),
    d=c2+O(alpha^4),
    b=c3+O(alpha^(7/2)).

The relative errors from mixing are at least of order `alpha²`; the half-power correction to the quadratic spectral gap does not spoil this bound. The determinant arithmetic is

    64 a d - 16 b²
      = (G/kappa)² alpha³ [-9/4 - 81/16] (1+O(alpha²))
      = -(117/16) (G/kappa)² alpha³ (1+O(alpha²)).

Both leading summands are negative. Homogeneity of beta is degree `-2` in the axes, so the determinant has degree `-4`: `alpha³ a2^(-4) = a1³ a2^(-7)`. The sign, exponent and constant are correct.

On printed p. 34 CP11 (8.3) has the planar block

    m1 m2 a1²/a2³ * [[3/(4 Lambda1²), -9/(4 Lambda1 Lambda2)],
                      [-9/(4 Lambda1 Lambda2), -3/Lambda2²]],

to its stated relative asymptotic error, and (8.4) has determinant coefficient `-117/(16 Lambda1² Lambda2²)` times the square of that prefactor. With `G=m0=1` and `Lambda_i²=m_i² a_i`, these match all three entries and the determinant here. CP11 (8.2) also matches the leading diagonal quartics, with the `1/a2` factor restored for general axes. CP11's printed relative error here is `O(a2^(-5/4))` in its hierarchical limit; the stronger `O(alpha²)` in this blueprint comes from the independent explicit coefficients, not a literal transcription of CP11's error bound. Footnote 53 distinguishes Arnold's half-sized second invariants from this matrix and notes the old power-of-axis typo; there is no factor-of-two discrepancy in the present beta convention.

I found no new suspected CP11 erratum in (8.2)–(8.4). The Appendix-B exponent defect E-P-CP11-2 is an existing Part-8 report, not a fresh finding or independently re-audited source formula in this review. Arnold's original page and the CP10 historical normal-form citations were not independently checked; the local normal-form proof above does not rely on them.

### Open-dense patches and formalisation boundary

The entries defined from the projection are analytic throughout the connected convex `A2`. The negative small-alpha asymptotic proves that the determinant is not identically zero. The real-analytic zero-set theorem then gives a relatively closed, nowhere dense null exceptional set. Intersecting with Part 10's nonzero analytic `Phi4` locus preserves openness, density and full measure. Every prescribed neighbourhood contains a closed cube of doubled radius in that intersection. Continuity on the inner compact cube gives a strictly positive minimum of the absolute determinant. This argument needs only generic nonvanishing, not a global determinant sign or the unverified numerical curve assertion.

The finite coefficient identities can be split into small rational normalisation lemmas; all divisions have explicit positivity/nonzero guards. The parameter-dependent analytic flow and its symplectic lift require the standard analytic ODE and Hamiltonian-flow facts listed as external inputs. The null-set conclusion uses the real-analytic zero-set theorem, stronger than just empty interior. These are mathematical dependencies, not claims that corresponding Lean providers or Mathlib APIs have already been implemented. No conclusion-shaped assumption was needed in the recomputation.

## Checks and handoff

- `python3 .drafts/P/review-scratch-p11b/orbit.py`: exit 0; zero differences through degree four.
- `python3 .drafts/P/review-scratch-p11b/independent.py`: exit 0; all eight pair identities and the beta mixed identity have exact zero differences. The additional Pochhammer-series substitution is recorded in `series.log`.
- From `blueprint-P`: `latexmk -pdf -interaction=nonstopmode -outdir=../.drafts/P/review-scratch-p11b/latex blueprint.tex`: exit 0; 120 pages, 1,661,821 bytes. No undefined-reference warnings in that build; the reviewed part's local label references resolve. Build artifacts were directed to reviewer scratch. This receipt describes the snapshot built during this review, not concurrent later edits to the root blueprint.
- `PYTHONDONTWRITEBYTECODE=1 scripts/lint_sources.sh`: exit 0: `check_lean_modules: PASS (203 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- No Lean modules were changed or built; no new Lean declarations or `#print axioms` receipts are claimed. The generic review brief expressly waives Lean builds. No state-changing git commands were run.

**Required before extraction:** repair P11B-01's false product-domain contract and make the small scope/domain corrections P11B-02–03. P11B-04–05 are source/evidence wording corrections. The independent mathematics supports the local planar torsion route and the stated frozen Birkhoff expansion after those repairs; it does not certify Part 12's assembly.
