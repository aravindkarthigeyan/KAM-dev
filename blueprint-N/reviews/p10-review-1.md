# Review 1: assembly of frozen N-HEAD-C

## Verdict: ACCEPT WITH FIXES

**The complete mathematical assembly checks out at blueprint level.** No blocking or major finding was found in Part 10. Its constants have the frozen order and dependence, its hypotheses are verified on the larger **max-norm** tubes actually required by Part 9, and its a priori estimate supplies the shared continuation theorem with a compact action ball strictly inside the solution domain. The exhibited solution has genuine two-sided derivatives at both endpoints of the closed interval. Uniqueness covers every allowed competitor, including L = 0.

The fixes are minor handoff/bookkeeping items. The final section gives the requested consolidated inventory of all still-open minor findings in the existing N reviews, checked against current source rather than copied from their original verdicts. This acceptance is a review of the assembly and the cited blueprint contracts, not a Lean proof or a blanket closure of cross-track P averaging obligations.

## Snapshot, materials and checks

- Reviewed `blueprint-N/parts/p10-assembly.tex` in full: **168 lines, 22,875 bytes**, SHA-256 `f67404b69c4aa81fd2066833056d46c7d0681765319deead0fa808b45792af74`.
- Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the complete review brief, writer conventions, N PLAN and the relevant track statement/source/notes material. Read every existing `blueprint-N/reviews/*.md` for the final inventory: p0, p12, p3, p45, p6, p7, p8, p9 and cons1.
- Compared Part 0 and Part 10 against the actual frozen `QuasiConvexNekhoroshevComplexBound.lean`, `IsSolutionOn`, and the imported real Hamiltonian, analytic-input, frequency, derivative and action-domain conventions. Checked the current Part-1 constants and the actual Part-3 confinement/uniqueness and Part-9 stopped theorem interfaces, including their proofs at the point of use.
- Principal dependency hashes: p1 `fd8cb534f5d0abc0adb559f5576f9ec973923e2745011bee51083082ab1c5f59`; p3 `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d`; p9 `269df623b07deebd97529c572978e64ccd7c4a7904e92169d43e485b51d12886`. These and the other N-part hashes used for the minor inventory were rechecked at closeout.
- Revisited the pinned Pos93 scan's printed pp.191,204, using the rendered pages inspected in the preceding review, and read BM11 p.13 directly with `pdftotext -f 13 -l 13 -layout`. The source continuation argument is a model for the explicit shared ODE proof, not a substitute for its endpoint and predicate checks. Part 9's constants/source audit is retained from its separate report; no new source theorem is imported here.
- `cd blueprint-N && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0**, targets up to date. Current log: **72 pages**, 1,234,234-byte PDF; zero error lines beginning `!`; no undefined references or citations. All Part-10 local reference targets exist. Existing hyperref PDF-string warnings and a 27.0196 pt overfull display in **Part 8**, line 186, remain; none is a Part-10 display error.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (180 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- Checked the actual Mathlib real-power interfaces: `Real.rpow_natCast`, `rpow_neg`, `rpow_mul`, `mul_rpow`, `rpow_le_rpow` in `Analysis/SpecialFunctions/Pow/Real.lean`. Their nonnegative/positive base hypotheses are available in every use here.
- No Lean file was changed or built; no fresh `#print axioms`, provider sealing or proof certification is claimed. Only this requested report was authored. No state-changing git command was run; concurrent work was left untouched.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| N10-01 | p10:166, `bpN:p10:interfaces`, last sentence | minor, extraction handoff | The assertion that the only non-citation content is `choice-props`(c) and `hypotheses-check`(g) understates the independent max-tube verification in `hypotheses-check`(a)–(e). The earlier Part-1 dictionary has the smaller Euclidean-tube scope, so these steps cannot all be replaced by literal applications of that dictionary. Part 10 itself correctly proves them; this is not a gap in its theorem. | Say explicitly that (a)–(e) re-verify the Part-9 setting on max tubes using Part-1 facts on the full frozen domains, and retain those proof steps in graph extraction. Alternatively first broaden the Part-1 tube dictionary as in NCONS-01, then cite its genuinely matching version. Keep the existing proof until that interface change is made. |

An additional small clause-letter error in Part 1 was noticed while checking the requested inventory; it is recorded as N10-02 in the final section so one consolidation can include it. It is not used by Part 10's direct frozen-convention proof.

## Frozen statement: binder and conclusion audit

| Frozen clause | Current assembly | Result |
|---|---|---|
| n ≥ 3 and R,s,M,m,Mcomplex,omega_min > 0 | `choice`, `hd-order` | Exactly the fixed data; no extra parameter or inequality between the frozen inputs. |
| Exist C,T,c,epsilon0 > 0 before h,f,epsilon | `choice`, `choice-props`(a), `hd-const` | Explicit formulas in the seven data only. No dependence on the analytic bound for h or on the initial action/frequency maximum. |
| C epsilon0^(1/(2n)) ≤ R/4 | `choice-props`(a),(d) | Follows from the minimum entry (R/(4C))^(2n), with positive bases and 2n > 0. |
| H1–H7: analytic h; complex Hessian bound; max-norm frequency lower bound on B(0,R); transverse QC and real derivative bounds on B(0,R+s); analytic f of size epsilon; 0 < epsilon ≤ epsilon0 | `hypotheses-check` | Every premise is used with its actual domain and norm. No full positive-definite Hessian, globally smooth extension or independently assumed source-QC condition is added. |
| All theta0 in R^n, I0 in max ball B(0,R/2) | `confinement`, `existence`, `hd-univ` | Angle lifts are arbitrary. Constants are unchanged after either initial datum is fixed. |
| Exists total z with z(0) = (theta0,I0) | `existence` via Part-3 glue | Dependence of z on the later data is allowed. Values outside the constructed solution interval are irrelevant to the conclusion. |
| `IsSolutionOn H B(0,R) (Icc (−tau) tau) z` | `ex-glue` | Correct open action domain, closed time interval, differentiability of H at visited points, and two-sided `HasDerivAt`, including endpoints. |
| Every t with abs(t) ≤ tau has max action displacement ≤ C epsilon^a | `confinement` and `existence` | Part 9 actually gives (C/2)epsilon^a; the weakened output matches frozen ≤ and the max norm. |
| Every 0 ≤ L ≤ tau and every allowed y from the same initial value agrees on Icc (−L) L | `uniqueness`, `hd-d` | No extra smallness or smaller-domain confinement is imposed on y. The L = 0 case is the shared initial value. |

Here tau = T exp(c epsilon^(−a)) and a = 1/(2n), with the same real-power convention as the frozen statement. In particular, the existential constants are not chosen separately for each h or each initial point.

## What I recomputed: constants and normalization

The current dictionary is used, not the superseded formulas in historical source notes:

```text
q_QC = m/n, Bc = n Mcomplex + q_QC, mu = q_QC/2,
ell = omega_min q_QC/[8(Bc+q_QC)],
r0 = min(s/2, R/8, ell/(2Bc), 4 omega_min/mu),
A = 11Bc/mu, s0 = pi s,
F = 2pi coth(pi s/4)^n,
epsilon* = 2pi mu r0²/(1024 A^(2n)),
C = (r0/A)(F/epsilon*)^a,
c = [s0/(6sqrt(n))](epsilon*/F)^a,
T = A²s0/(4pi nM),
epsilon0 = min(epsilon*/F, (R/(4C))^(2n)).
```

Every denominator is positive. The coth argument is positive, so F is finite and positive. Bc ≥ q_QC = 2mu gives A ≥ 22 and 0 < mu ≤ Bc, without needing a relation between the original frozen m and M. The q_QC here is distinct from the fixed proof parameter q = 9 inside Part 9.

Part 10 uses the **period-one, fixed-action** theorem directly with

```text
s1 = s/2,
F1 = coth(pi s/4)^n,
epsilon1 = mu r0²/(1024 A^(2n)),
epsilon' = F1 epsilon, R0 = r0/A.
```

Then F = 2pi F1 and epsilon* = 2pi epsilon1. Thus epsilon' ≤ epsilon1 is exactly epsilon ≤ epsilon*/F. No time rescaling or extra factor 2pi is required in the actual Part-9 application. The two translated outputs are exactly

```text
(R0/2)(epsilon'/epsilon1)^a = (C/2)epsilon^a,
[pi s1/(3sqrt(n))](epsilon1/epsilon')^a = c epsilon^(−a).
```

The current sqrt(n) loss is paid once. The bound C epsilon0^a ≤ R/4 follows by monotonicity and ((R/(4C))^(2n))^(1/(2n)) = R/(4C). For 0 < epsilon ≤ epsilon0 the same margin applies to C epsilon^a. These are positive-base real powers, not unguarded root or reciprocal manipulations.

## Every Part-9 premise on the correct tube

Let P be the closed max ball of radius R/2, V = V_r0 P the **max-norm complex tube**, U its real slice, and W = R^n × U. P contains zero and every allowed I0, and V,U,W are open in their respective ambient spaces.

For I in V choose J in P with abs(I−J)_infinity < r0. Then abs(J)_infinity ≤ R/2 < R and abs(I−J)_infinity < r0 ≤ s/2 < s. The same J witnesses I in the frozen complex action neighborhood B(0,R)_s. If I is real,

```text
abs(I)_infinity ≤ abs(J)_infinity + abs(I−J)_infinity
                 < R/2 + r0 ≤ 5R/8 < R.
```

This proves the needed inclusions on the entire larger tube. It does **not** infer facts on a larger set by restricting the smaller Euclidean tube. Consequently NCONS-01 remains a cleanup of Part 1's exported wording, but is not an unpaid premise of Part 10.

On this V, H1 supplies holomorphy and reality on U, and H2 supplies the complex Euclidean Hessian bound n Mcomplex ≤ Bc. On U ⊂ B(0,R), H3 and H4 supply exactly the Part-1 conic coercivity conversion with ell and curvature mu. Restricting the smooth real Hamiltonian to U does not change its derivatives at those points. The corrected minimum gives r0 ≤ ell/(2Bc), including the added Part-9 radius premise that covers the full-rank block. These facts establish a Theorem-1 setting with m_internal = mu and M_internal = Bc; there is no use of an unknown source hypothesis.

For fixed I in V, H6 bounds f on the **whole** angle strip T_(3s/4), because V lies in the original action neighborhood and 3s/4 < s. The weighted-norm bridge loses delta = s/4, leaving s1 = s/2:

```text
sum_k abs(f_hat_k(I)) exp(2pi abs(k)_1 s1)
  ≤ coth(pi s/4)^n epsilon = epsilon'.
```

The bound is uniform in I, so taking its supremum gives the Part-9 sup-of-sums norm. Holomorphy, periodicity and reality of the restriction follow from the same H6; this is not a sum-of-suprema assertion. Epsilon' is positive even if f itself vanishes, and epsilon' ≤ epsilon1 follows from H7. Thus the cutoff calculation in Part 9 can use a strictly positive bound regardless of whether the actual perturbation norm is zero.

The exceptional branch is excluded strictly:

```text
norm(omega_h(I0))_2 ≥ abs(omega_h(I0))_infinity ≥ omega_min,
mu r0/8 ≤ omega_min/2 < omega_min.
```

On the closed Euclidean radius-R0 ball about I0, Part 9 gives membership in U; H5 bounds every first coordinate derivative by M there. Hence its attained finite maximum satisfies

```text
0 < omega_min ≤ Omega0(I0) ≤ sqrt(n) M.
```

With all denominators positive,

```text
T0 = A²s1/Omega0
   ≥ A²s/(2sqrt(n)M)
   ≥ A²s/(2nM) = 2T.
```

Omega0 is allowed to depend on h,I0 inside the internal theorem; the comparison replaces it by a uniform lower time bound. It is not substituted into the headline's existential constants. The actual field comparison is also local and valid: H_(h,f) and the Part-9 real Hamiltonian agree on the open W, so their genuine derivatives and vector fields agree there. No regularity of the zero extension off W is assumed.

## A priori bound, existence, endpoints and competitors

Take any allowed solution y on an interval J containing zero. The frozen predicate gives a genuine two-sided curve derivative equal to the total field X_H at every t in J, as well as action membership and differentiability of H. Set F = X_H on the whole phase space. Its agreement with Part 9's field on W is enough: the **stopped** theorem does not require y to remain in W beforehand. Thus no circular confinement premise is introduced. The exceptional-branch exclusion and the radius/exponent dictionary give the a priori displacement bound for all t in J with abs(t) ≤ tau. T0 ≥ 2T more than suffices for the horizon comparison; the two expressions have the same exponent.

For existence let rho = C epsilon^a > 0. The closed max action ball K = closedBall(I0,rho) is nonempty and compact, and

```text
abs(I)_infinity ≤ abs(I0)_infinity + rho < R/2+R/4 = 3R/4 < R
```

on K. Hence K is a compact subset of the **open** action domain B(0,R), with a genuine margin. Analyticity gives H smooth and X_H locally Lipschitz and periodic in the angles on R^n × B(0,R). Periodicity supplies uniform local ODE data on R^n × K; no boundedness of the lifted angles is assumed. Part 10 proves the a priori premise for every open solution interval through zero, exactly as `bpN:p3:confinement-glue` asks.

I checked the underlying endpoint step, not just the glue theorem's label. If a finite maximal endpoint T_plus were ≤ tau, the a priori estimate would place the action in K for all 0 ≤ t < T_plus, and uniform periodic continuation would extend the solution beyond T_plus, a contradiction. Likewise on the left. Therefore the maximal open solution interval contains **[-tau,tau] in its interior**. Restricting that solution gives the required two-sided `HasDerivAt` at both closed-interval endpoints and differentiability of H there. The result is stronger than mere within-interval derivatives, and matches the frozen predicate.

For uniqueness, restrict the exhibited z to [-L,L] using monotonicity in the time set. The shared uniqueness theorem applies on the open phase domain R^n × B(0,R) to every competing frozen solution y, with no assumption that y is already trapped in K or W. For L > 0 the compact images on the closed interval give the needed local-Lipschitz comparison; for L = 0 the only point is zero and the initial conditions give equality directly. Values of either total curve outside the comparison interval need not agree. This is exactly frozen clause (d).

The assembly uses only positive epsilon. The remark about epsilon = 0 is consistent: H6 at zero forces f = 0 on the original open complex domain, and N-ZERO supplies the global affine orbit with constant action for admissible initial data. Its restriction satisfies the existence/confinement clauses on any finite horizon; it does not require evaluating epsilon^(−a) at zero. N-ZERO itself asserts no uniqueness clause, and Part 10 does not pretend that it does. One could additionally prove uniqueness under the shared regularity hypotheses, but that is neither an unpaid clause of positive-epsilon N-HEAD-C nor a necessary addition to N-ZERO.

## Source route and limits

The route proves the frozen statement as transcribed: constants first, quantitative QC derived from frozen data, internal stopped confinement, then existence and arbitrary-competitor uniqueness. It retains the sufficient extra radius condition adopted to repair the p.199 proof gap and the max-norm cutoff loss in the exponential; both are absorbed into constants chosen from fixed inputs. No unchanged printed source theorem with weaker premises is silently invoked instead. BM11 p.13 illustrates compact-action continuation, but its different resonance argument and stronger intermediate location claims are not used by this assembly.

No new suspected source erratum or frozen-statement defect was found. The complete blueprint argument is not a provider proof or a sealing receipt. Separate P reuse issues raised in N6-02/03 are not resolved merely by the correctness of N-HEAD-C, and should not be relabelled as minor N-HEAD gaps.

## Final consolidation inventory: all still-open minor items

This inventory covers all nine pre-existing N review files listed above, plus this report. I rechecked all **25 previously numbered minor findings**: **16 are closed**, and **9 IDs remain open or partially open**, representing **7 distinct tasks** after merging duplicates. “Open text / paid in Part 10” is deliberately distinguished from an open mathematical premise of the headline. No original major finding is silently demoted to minor.

| Existing ID(s) | Current location | Status and exact remaining task |
|---|---|---|
| NCONS-01; domain portion of N7-04 | p1 `realdomain`(c), `constants`(c)–(e), `co-tubes`; p7 `consumers` | **OPEN exported wording; paid in this assembly.** Broaden the Part-1 tube statement to the Part-4 max tube, keeping the Euclidean version as a consequence. Use abs(I−J)_infinity < r0 and the direct triangle-inequality proof. Update the consumers consistently. Part 10's `hc-tubes` through `hc-f` already provide the needed larger-domain verification, so no N-HEAD-C proof gap remains. |
| NCONS-02; derivative portion of N7-04 | p7:111, `stopped-extension` | **OPEN.** State `∀ t∈J, HasDerivAt z (F(z t)) t`; delete “one-sided at endpoints” and scope differentiability to J. A within-interval version, if wanted, needs a separate statement. Frozen predicates and Part 10 use the two-sided version. |
| N6-04; corresponding half of NCONS-03 | p6 `nonresonant-case` sourcegap, line 222 | **OPEN.** Remove the assertion that the small-Ks source proof requires an extra factor e^−1 in the time bound. Cite Part 7's correct direct original-coordinate/full-strip argument. Preserve the true identity-map helper. |
| N6-05; corresponding half of NCONS-03 | p6:13, normalization paragraph | **OPEN.** Separate the symplectic dictionary (r_P = r/(2pi), alpha_P r_P = alpha r, unchanged Hamiltonian/generator values) from the fixed-action Hamiltonian scaling (r unchanged, values and rho sigma scaled by 2pi). Remove the blanket mixed substitution. The estimates independently re-derived in the part need no change. |
| N8-01 | p8 `covering`(b), `cv-params`, lines 190,196 | **OPEN.** Restrict deltaLambda = lambda_d/abs(Lambda) and its identification as a zone radius to dim Lambda ≥ 1. For Theta keep deltaTheta as an auxiliary positive number, not the defining radius of Z_Theta = R^n; lambda_0 is not defined. Part 9's valid covering/nonresonance/radius clauses do not need this rank-zero identification. |
| N9-01 | p9 `errata`(1), `dictionary`(i),(ii), lines 146,158–159 | **OPEN.** Describe the Part-1 radius/c and Part-7 full-rank qualifications as fixes already applied in `176161c`. The displayed c equals the **current** Part-1 c; do not divide it by sqrt(n) again. Remove the obsolete allegation about the current Part-7 wording. |
| N9-02 | p9 `errata`(2),(3),(6), lines 147–151 | **OPEN.** Classify the sqrt(n) exponent loss as this blueprint's norm adaptation, and m ≤ M as an automatically available elementary justification. Neither is a numerical misprint in Pöschel. Keep the inherited p.199 proof-gap/strengthening record separate; say no numerical misprint was found on the audited assembly pages. |

For completeness, the **16 closed prior minor IDs** are: N04; N12-02, N12-03, N12-04, N12-05, N12-06; N3-02, N3-03, N3-04, N3-05, N3-06, N3-07; N45-04; N7-01, N7-02, N7-03. Evidence: Part 0 scopes totality; Part 1 fixes the Fourier coefficients, frequency example, dimension-zero/complex norm statement, equal-finrank API and positive Omega0 guard; Part 3 fixes all listed interfaces/prose and its old overfull display; P's averaging proof now cites actual flow/map labels or its owning Part-2 result rather than nonexistent `flow-domain`; Part 7 corrects delta scaling and source classifications. N7-02 is substantively closed, though the obsolete lead-in mentioned below can be trimmed while editing it.

The following small carry-forward comments were already present outside numbered findings tables and should also be included in a single cleanup round:

| Prior report comment / new small item | Location | Remaining cleanup |
|---|---|---|
| p8-review-1, unnumbered counterexample caveat after its findings table | p8:12, `direction` | Replace the unsupported generic fixture k = floor(K_a)e1 with the explicit n = 2, K_g = 2, K_a = 3, omega = (1,−2), k = (2,1) example from that review, or state the missing conditions. floor(K_a) need not exceed K_g. Also change the opening claim that Parts 6/7 **currently** give the wrong direction to a historical description; their caller remarks are now corrected. |
| cons1-review, source-classification polish attached to closed N7-02 | p7:269, `errata`(2) | Delete the obsolete “at radius r” lead-in before the paragraph correctly explains that the scan does not state such a radius. The half-radius proof and corrected classification are already valid. |
| cons1-review, historical constants note | `docs/tracks/N/sources.md`, “Uniform conversion”, lines 253,265 | Mark the old r0 entry 2ell/mu and c without sqrt(n) as superseded, or update the dictionary to the consolidated formulas. This is owner documentation, not permission to change a frozen declaration. |
| p9-review / cons1-review build comments | p8:186 constants display; Part-4/5/6/7/8 math in PDF titles | Break the still-overfull 27.0196 pt Part-8 constants display. Optionally supply plain-text bookmark alternatives for the existing hyperref warnings. The old N3-07 display defect is closed; do not conflate it with this remaining box. |
| **N10-01 (new, minor)** | p10:166, `interfaces` | Retain/acknowledge the independent max-tube verification in the extraction handoff, as specified in the findings table. |
| **N10-02 (new, minor inventory supplement)** | p1:179,186, `period-convert` clause references | The introduction calls (e) the periodicity statement, but periodicity is (d) and Fourier is (e). The Fourier item says it needs “(c), (e)”, referring to itself. Change these references to the actual domain/periodicity clauses (c),(d), and scope the introductory clauses accordingly. The Fourier coefficient formula is already correct (N12-02 closed); Part 10 does not use this mislabeled transport statement. |

These inventory items are documentation, exact-contract or formatting repairs. They do not require replacing the verified Part-10 argument, changing the frozen theorem, or introducing a new source premise.
