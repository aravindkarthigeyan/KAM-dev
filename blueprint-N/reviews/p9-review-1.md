# Review 1: Pöschel Theorem 1 in stopped form

## Verdict: ACCEPT WITH FIXES

No blocking or major mathematical error was found in the internal theorem or its proof. I recomputed the constants, each block's analytic and convexity premises, both time comparisons, the exceptional branch, and the stopped-field application. The equality K_g = sqrt(n) K_a is used in the correct direction, and the exponential time uses K_a, with the stated sqrt(n) loss. The strengthened radius hypothesis is sufficient for every call to the repaired Part-7 theorem, including the full-rank block.

The fixes concern stale cross-part descriptions and source-defect classification. This is an adapted internal theorem, not a proof of the printed theorem under its original hypotheses. In particular, the added radius condition is a sufficient repair of this proof route; its necessity for the source theorem is not established.

## Snapshot and materials

- Reviewed `blueprint-N/parts/p9-poschel-theorem1.tex` in full: **167 lines, 28,475 bytes**, SHA-256 `269df623b07deebd97529c572978e64ccd7c4a7904e92169d43e485b51d12886`.
- Read the full brief, project rules, governing decisions, writer conventions, N PLAN and relevant N statement/source/notes material. Checked the actual Parts 1, 3, 4, 6, 7 and 8 contracts used here and the earlier Part-7/8 reviews. The concurrent consolidation is reviewed separately in `cons1-review.md`.
- Compared the planned N-HEAD-C interface with `KAM/Frozen/Nekhoroshev/Theorems/QuasiConvexNekhoroshevComplexBound.lean`: n,R,s,M,m,Mcomplex,omega_min precede the existential constants, which precede h,f,epsilon and the initial conditions. Part 9 itself asserts no new frozen theorem and does not yet supply the headline's existence/uniqueness clauses.
- Independently inspected the **scan**, `sources/incoming-N/poschel1993_gdz.pdf`, printed pp.190–191, 197, 199–200, 203–204, and p.212 for the direct-divisor dependency. PDF page number is printed page minus 185. `pdftotext` on pp.190–191 and 203–204 returned only page separators, so those pages were rendered and read as images.
- Build and lint receipts are below. All local Part-9 reference targets exist; target existence alone was not used as evidence of applicability.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| N9-01 | p9:146, `errata`(1); p9:158–159, `dictionary`(i),(ii) | minor, stale integration prose | The text still says Part 7 claims K ≥ 1 suffices on all blocks and Part 1 “must” add the new radius entry. It also calls the displayed c “Part 1's c divided by sqrt(n)”. Commit `176161c` has already qualified Part 7, replaced the radius entry, and divided c by sqrt(n). The formulas in Parts 1 and 9 now agree; the prose could cause a second division or a mistaken reopened finding. | Describe these as the corrections already applied in `176161c`. Say the displayed exponent constant **equals the current Part-1 c**. Remove the claim about the current Part-7 wording. Do not change the correct formulas again. |
| N9-02 | p9:144–151, `errata`, especially (2),(3),(6) | minor, source classification | Item (2) correctly explains a loss caused by this blueprint's max-norm tubes and its chosen Lipschitz estimate, and even says the factor does not arise in the source's Euclidean framework. It is therefore a disclosed normalization adaptation, not a Pöschel misprint. Item (3) is an automatic consequence m ≤ M, proved here, rather than a false source inequality. The phrase “misprints … beyond (1)–(3)” blurs these distinctions. | Separate the inherited p.199 proof gap and this route's additional radius premise from the cutoff/norm adaptation and the supplied elementary justification m ≤ M. Say no numerical misprint was found on pp.190–191,203–204. Retain all current numerical choices. |

Related integration cleanup is recorded in `cons1-review.md`: Part 1's dictionary still defines a Euclidean tube while Part 9 requires the max tube, and Part 7's newly explicit `HasDerivAt` clause calls it one-sided. Neither changes the computations below; both should be made literal before implementation.

## What I recomputed: constants and guards

Use q = 9, p = 9/8, b = 1/8. Then p/q = 1/8 and p/b = 9. With 0 < m ≤ M,

```text
A = 11M/m ≥ 11,
A − pM/(bm) = 2M/m ≥ 2 > sqrt(2).
```

Thus Part 8's covering hypotheses really hold. The bound m ≤ M can alternatively be obtained at any I in nonempty P by taking a nonzero real vector perpendicular to omega(I): the QC alternative applies and its Rayleigh quotient is both at least m and at most M. This uses n ≥ 2 and the real restriction of the complex Hessian, not an assumed positive-definite Hessian on the whole space.

All denominators in A, epsilon0 and a are positive. For 0 < epsilon ≤ epsilon0,

```text
epsilon0 = m r0²/(1024 A^(2n)),  a = 1/(2n),
K = (epsilon0/epsilon)^a ≥ 1,
K^(2n) = epsilon0/epsilon,
rTheta = r0/(AK)^n,
epsilon = m rTheta²/1024.
```

Real powers use positive bases. K_a = K/sqrt(n) is strictly positive but need not be ≥ 1; Parts 6 and 7 require only K_a > 0, so no cutoff hypothesis is lost at epsilon = epsilon0. The lattice family uses the geometric K ≥ 1, including its full-rank lattice Z^n.

The closed Euclidean radius-R0 ball about I0 is contained in the max tube U_r0 P since R0 = r0/A < r0 and I0 belongs to P. It is nonempty and compact. Continuity of omega gives an attained finite maximum Omega0, and the Hessian bound on its convex segments gives

```text
norm(omega(I0)) ≤ Omega0 ≤ norm(omega(I0)) + M R0.
```

For a block's radius-rLambda/2 ball the same proof applies, even on the full-rank block where this ball need not be inside the smaller R0 ball. Inclusion in that smaller ball is used only for proper nonzero blocks, as verified below. In the nonexceptional branch Omega0 and each used OmegaLambda are strictly positive. The zero-frequency infinite-time convention is not implemented as real division by zero.

## Every Part-7 premise, block by block

Fix I0 in D_Lambda and **apply the stability theorem with D = {I0}**, rather than assuming a whole thickened block lies in the original domain. This is an important valid localization. Part 8 supplies rTheta ≤ rLambda ≤ r0 and, for Lambda ≠ Z^n, rLambda ≤ r0/(AK). Therefore V_r {I0} is contained in V_r0 P; the real tubes, holomorphy, reality, complex Hessian bound, real QC alternative and perturbation norm are inherited. Shrinking the action domain does not change the angle width or introduce a Fourier-norm conversion.

| Premise | Verified substitution |
|---|---|
| Subgroup / p range | Every geometric lattice is a subgroup; p = 9/8 lies in (1,3/2], q = 9 ≥ 3. No generation by analytic-cutoff vectors is required by Part 7. |
| Analytic nonresonance | If abs(k)_1 ≤ K_a then norm(k)_2 ≤ K_a ≤ K. Part 8 supplies the divisor lower bound alphaLambda outside Lambda. Theta excludes zero; Z^n has no outside modes. |
| Closeness | For Lambda ≠ Theta, norm(PiLambda omega(I0)) < deltaLambda = bm rLambda = m rLambda/8. This is precisely the Euclidean closeness required by Part 7. |
| Frequency Lipschitz | abs(Qv)_infinity ≤ norm(Qv)_2 ≤ M norm(v)_2 ≤ sqrt(n) M abs(v)_infinity, so L = sqrt(n) M is available on the complex tube. |
| Divisor-radius compatibility | alphaLambda = p M K rLambda and K = sqrt(n) K_a give K_a L rLambda = alphaLambda/p, with equality in the permitted bound. |
| Resonant smallness | epsilon = m rTheta²/1024 ≤ m rLambda²/1024 = (p/q) m rLambda²/128. |
| Nonresonant smallness | alphaTheta rTheta/(128 q K_a) = sqrt(n) M rTheta²/1024 ≥ m rTheta²/1024 = epsilon. |
| Original QC radius | rLambda ≤ r0 ≤ ell/(2M) ≤ 4ell/m. |
| Repaired QC radius | M rLambda ≤ M r0 ≤ ell/2, exactly the added Proposition-2 premise. |

The last line deserves the requested full-rank audit. Under the **old source premise alone**, proper blocks satisfy

```text
M rLambda ≤ M r0/(AK) ≤ 4ell/(11K) ≤ ell/2.
```

For Z^n, rLambda = r0, so that argument is unavailable. Choosing r0 ≤ ell/(2M) is a sufficient way to satisfy the existing repaired Proposition 2 there. The writer is right about this missing call hypothesis. It is not a proof that every approach to full-rank stability must require that bound: one could seek a separate convex/energy argument. The current blueprint makes no such alternative proof and explicitly strengthens its internal setting instead. At the half-radius used in Part 7, M(rLambda/2) ≤ ell/4, as needed by the repaired Lemma 2.

For Theta the nonresonant proposition gives a max-norm radius rTheta/2. For other blocks Proposition 2 gives a Euclidean radius rLambda/2, hence the same max bound. The stopped-extension corollary is applied to the singleton tube with varrho = rLambda/2 < rLambda. Local equality of the two Hamiltonians on that open tube makes their fields equal there. Stopping at the component through zero and using the strict action-domain margin proves membership in W even when the arbitrary extension F has no regularity outside W. This is a genuine ODE argument, not an inference from a totalized derivative value. Use the two-sided `HasDerivAt` interpretation in the frozen solution interface; see the consolidation report's endpoint clarification.

## Exceptional and nonexceptional branches

With the open-zone definitions of Part 8,

```text
I0 in D_(Z^n) iff norm(omega(I0)) < delta_(Z^n) = m r0/8.
```

There is no larger-rank zone to subtract. On this block take g = f and remainder zero in Part 7. The orbit is confined to radius r0/2 for every time in its given interval J. An infinite horizon here means every finite t in J; existence on all of R has not been assumed or concluded by Part 9.

If norm(omega(I0)) ≥ m r0/8, any covering block containing I0 is different from Z^n. The equality case therefore belongs to the nonexceptional estimate, not to an uncovered boundary case. The bound rLambda ≤ r0/(AK) gives

```text
abs(I(t)−I0)_infinity ≤ rLambda/2
  ≤ (R0/2) K^(−1) = (R0/2)(epsilon/epsilon0)^a.
```

The source's exceptional branch uses ≤ and a larger radius r0. The blueprint's open-zone split and half-radius outputs are disclosed adaptations supported by its own lemmas; it does not assert eternal epsilon^a confinement at the equality threshold.

## Both time comparisons and the sqrt(n) loss

The analytic exponent is kappa/6 = 2pi K_a s/6, throughout both cases.

For Theta, epsilon = m rTheta²/1024 and m r0 ≤ 8 Omega0 give

```text
s rTheta/(5 epsilon)
  = 1024 (AK)^n s/(5 m r0)
  ≥ (128/5) (AK)^n s/Omega0
  ≥ A² s/Omega0.
```

Here n ≥ 2 and AK ≥ 1 imply (AK)^n ≥ A². The direction of the frequency comparison is correct.

For 1 ≤ d = dim Lambda < n, the covolume bound abs(Lambda) ≤ K^d gives

```text
rLambda ≥ r0 A^(d−n) K^(−n),
m rLambda²/epsilon ≥ 1024 A^(2d) ≥ 1024 A².
```

The Euclidean rLambda/2 ball lies inside the R0 ball because rLambda/2 ≤ r0/(2AK) ≤ R0. Thus OmegaLambda ≤ Omega0, both positive in this branch, and

```text
s m rLambda²/(288 OmegaLambda epsilon)
  ≥ (32/9) A² s/Omega0 ≥ A² s/Omega0.
```

Multiplying by exp(kappa/6) proves the exact stated horizon with T0 = A²s/Omega0 and

```text
kappa/6 = pi s K/(3 sqrt(n))
        = pi s/(3 sqrt(n)) (epsilon0/epsilon)^a.
```

No geometric cutoff has been substituted into the analytic exponential. The cutoff direction is an integration correction to earlier blueprint wording, not a new Pöschel source error. The larger source-statement Omega0 ball on p.191 is the conservative choice used here; the proof on p.204 also uses a smaller R0/K ball in one display. Using the larger maximum weakens the time bound in the safe direction.

## Headline route, source fidelity and validation

For N-HEAD-C, use curvature mu, complex Hessian bound Bc, strip width s_original/2 and perturbation size F_fr epsilon, where F_fr = coth(pi s_original/4)^n. The consolidated r0 has ell/(2Bc) in its minimum; this gives the new setting premise before h,f,epsilon are chosen. The exceptional branch is excluded by norm(omega(I0)) ≥ omega_min > mu r0/8. The complex/real tube inclusions require the max-tube version of Part 1's dictionary, as identified separately. No new frequency or inverse premise is inserted into the frozen theorem.

The Part-1 exponent is correctly c = pi s_original/(6 sqrt(n)) (epsilon0_fr/F_fr)^a. The radius (C/2)epsilon^a is stronger than the frozen C epsilon^a bound. The positive uniform prefactor follows from the retained real derivative bound. Part 10 must still attach the exhibited solution on the closed time interval and agreement with every allowed competitor using the shared existence/continuation/uniqueness theorems. Part 9 is correctly limited to a priori stopped estimates; it does not itself close those clauses.

The scan confirms q,p,b,A and the constants epsilon0,a,R0,T0 as reported. It also confirms the two separate radius cases on p.204. The inherited p.199 projection estimate is a proof-gap allegation, not a counterexample to Theorem 1. The adopted extra radius condition is recorded as a strengthening. Apart from the classification cleanup in N9-02, I found no new source erratum on the audited assembly pages.

- `cd blueprint-N && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0**, **72 pages**, 1,234,234-byte PDF; zero error lines beginning `!`; no undefined references/citations. Existing hyperref PDF-string warnings and one 27.0196 pt overfull display in **Part 8**, line 186, remain. No Part-9 overfull display was reported.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (180 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- Exact rational scratch arithmetic confirms p/q = 1/8, (p/q)/128 = 1/1024, the time factors 32/9 and 128/5, and 4/11 < 1/2. These checks support, but do not replace, the symbolic computations above.
- No Lean build or new axioms audit was performed; this is a Markdown-only blueprint review, not provider certification. Reviewed hashes were rechecked at closeout. Only the two requested review reports were authored; source, frozen anchors and ledger were not edited.
