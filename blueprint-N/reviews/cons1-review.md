# N consolidation review: commit 176161c

## Verdict: ACCEPT WITH FIXES

The new radius entry ell/(2Bc), the sqrt(n) loss in c, the corrected cutoff direction, the direct-divisor Iterative Lemma, and the substantive Part-7 corrections are mathematically correct. They supply the constants needed by Part 9 without changing a frozen hypothesis or quantifier order. The changes are **not complete as a literal interface cleanup**: the Part-1 dictionary still quantifies over Euclidean tubes while Parts 4–9 use max tubes; the explicit derivative clause has contradictory endpoint wording; and the earlier Part-6 normalization/source-description findings remain printed. The direct-divisor lemma closes the center-to-tube divisor issue, not every outstanding track-P interface obligation.

## Scope and snapshots

Read the complete diff of `176161cdcf4342ec9b3c7b1240b3be883daac1e4`, then checked the modified statements, proofs and their current Part-9 consumers. The three source files are byte-identical to that commit at this review snapshot:

| File under `blueprint-N/parts/` | Lines | Bytes | SHA-256 |
|---|---:|---:|---|
| `p1-interfaces.tex` | 258 | 34,129 | `fd8cb534f5d0abc0adb559f5576f9ec973923e2745011bee51083082ab1c5f59` |
| `p6-normal-form.tex` | 245 | 38,159 | `d6e978c1b1a60a3c279aa52333ed74d2c6bf7c351f2b09788374b40a791e3429` |
| `p7-stability.tex` | 283 | 46,500 | `9c4b0e49bf8fa2c9632e27806948d8db1f46ba0abf81b70d774b96656c85d103` |

Dependencies checked: Part 4's corrected pointwise angular estimates and sharp-norm variants; Part 5's Lie-series range and sharp composition interface; Part 8's covering/cutoff statements; the new Part 9 (separate report `p9-review-1.md`); the actual earlier N12, N6, N7 and N8 findings; P Part 2's direct-divisor interface and its norm warning, for the limited reuse question. I did not conduct a new full review of P's averaging iteration or Part 10.

Read AGENTS.md, the full review brief, governing PLAN/DECISIONS, writer conventions, N PLAN and relevant track notes/source/statement sections. Compared the changed constant choices with frozen N-HEAD-C and its solution predicate. Independently read the pinned Pos93 scan on printed pp.190–191,197,199–200,203–204,212; the assembly and source classifications were checked from images because the scanned pages have no useful text layer.

## Findings requiring completion

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| NCONS-01 | p1:51–53, `realdomain`(c); p1:226–228, `constants`(c)–(e); p1:241, `co-tubes`; p7:281 consumer; p9 `setting` / `dictionary` | minor, literal domain contract | Part 1 explicitly defines V_r0 P here by **Euclidean** distance and proves its imported facts on that tube. The newly attached Part-9 setting requires the **max** tube of Part 4, which is larger. One cannot obtain the latter premise by restricting the former result. The needed inclusion and all consequent bounds are nonetheless true on the max tube, by the same triangle inequality; Part 9's dictionary even gives that argument directly. This is a repairable scope mismatch, not a counterexample to the claimed stability bound. | State `realdomain`(c) with abs(I−J)_infinity < r0, with the Euclidean version as a consequence. Use the Part-4 max-tube definition in `constants`(c), and prove abs(I)_infinity ≤ R/2 + abs(I−J)_infinity < 5R/8 and abs(I−J)_infinity < s. Apply QC, Hessian and perturbation estimates on this same larger tube throughout (d)–(e). No extra sqrt(n) shrink is needed. |
| NCONS-02 | p7:111, `stopped-extension`, new explicit derivative clause | minor, Lean contract | The clause correctly names `HasDerivAt z (F(z t)) t`, but then says “one-sided at endpoints of J”. `HasDerivAt` is two-sided for the total curve; the frozen `IsSolutionOn` also uses that genuine two-sided derivative. “z differentiable” should also be scoped to the times in J, rather than inadvertently asserting global differentiability. | State `∀ t∈J, HasDerivAt z (F(z t)) t` and delete “one-sided at endpoints”. If a weaker one-sided version is useful, give it a separate statement using `HasDerivWithinAt` and prove the corresponding interval/endpoint facts. The existing stopped proof and the frozen applications can keep the two-sided version. |
| NCONS-03 | p6:13, normalization paragraph; p6:222, `nonresonant-case` sourcegap; earlier N6-04/05 | minor, incomplete prior cleanup | The changed cutoff paragraphs are correct, but the old blanket dictionary still combines alpha_P = 2pi alpha and unchanged r with rho_P sigma_P = rho sigma. Those belong to different scalings. The small-Ks paragraph still says Part 7 “must … carry the factor e^−1”, though Part 7 now explicitly rejects that allegation and correctly proves the original time on the full strip. These are retained prior findings, not new failures of the direct-divisor proof. | Apply the earlier N6-05 repair: give the symplectic and fixed-action Hamiltonian scalings separately, including generator norms and action widths. Apply N6-04: remove the alleged required time loss, and cite Part 7's direct original-coordinate argument. Keep the correct mathematical estimates. |

The stale Part-9 instruction to divide the already-corrected c again is N9-01 in the companion report. Also, `docs/tracks/N/sources.md` still gives the historical r0 with 2ell/mu and c without sqrt(n) in its “Uniform conversion” section (lines 253,265). That historical source-route dictionary should be marked superseded or updated by its owner; it must not be used to overwrite the consolidated formulas. This reviewer edited neither the notes nor a ledger.

## Consolidation items and earlier findings

| Item / finding | Status | Verification |
|---|---|---|
| New r0 entry and repaired QC radius | CLOSED | r0 ≤ ell/(2Bc), hence Bc r0 ≤ ell/2. With the fixed-action source scaling, ell_P/(2M_P) = ell/(2Bc). This is exactly Part 9's added setting premise and works on Z^n as well as proper blocks. |
| New c and frozen constant order | CLOSED | c = s0/(6sqrt(n)) (epsilon*/F)^a. It is fixed before h,f,epsilon and initial conditions; the margin C epsilon0^a ≤ R/4 remains true after recomputing r0,epsilon*,C,epsilon0. |
| N8-02, cutoff consumer integration | CLOSED in the modified Parts 1/6/7 | They now distinguish K_a ≤ K_g for divisor scope from K_g ≥ sqrt(n)K_a for the prescribed radius/Lipschitz bound. Part 9 uses equality and an analytic, not geometric, exponential. The old proposed repair in N06 is superseded, as the Part-8 review requested. |
| New `bpN:p6:iterative-direct` | CLOSED for its stated one-step contract | The tube divisor bound replaces the only use of base-set nonresonance and its Lipschitz extension. The proof and constants are valid. The narrower claim does not add a direct form of the whole Normal Form Lemma. |
| N7-01, frequency-distance scaling | CLOSED | delta_P = 2pi delta is now explicit, with ell_P = 2pi ell, m_P,M_P = (2pi)^2(m,M), rho_P = rho/(2pi). The time combinations are invariant. |
| N7-02, p.200 source classification | CLOSED substantively | Now explicitly an omitted radius choice, not a confirmed false source application. The supplied half-radius proof is retained. Delete the obsolete “at radius r” lead-in if polishing the paragraph, so it does not repeat the withdrawn allegation before qualifying it. |
| N7-03, p.197 source allegation | CLOSED in Part 7 | Explicitly rejected; no exponential remainder bound is attributed to the identity map. The direct full-strip argument is the correct one. Its contradictory Part-6 prose is still NCONS-03. |
| N7-04, stopped derivative and QC import | PARTIALLY CLOSED | Genuine `HasDerivAt`, the narrower real QC domain and the distinct ell/mu parameters are now explicit. Complete the endpoint wording and literal max-tube scope in NCONS-01/02. |
| N6-01, imported angular-supremum proof | CLOSED by the already-landed dependency fix | Current Part 4 keeps the angular sum at fixed I and takes the action supremum last. The consolidation itself does not reintroduce the forbidden sum of independent global suprema. |
| N6-02, all P averaging obligations | PARTIALLY CLOSED; not certified here | The new direct-divisor result pays the missing divisor interface. Two-scale displacement and the retained strip offset remain the responsibility of P's separate averaging proof. A scalar one-step result does not by itself prove them. |
| N6-03, stronger P norm | NOT CLOSED by this commit alone | N Parts 4/5 now have explicit sharp variants, but this commit's new Part-6 corollary is stated in the ordinary sup-of-sums norm. P Part 2 still warns that its ordinary output does not automatically have Part 3's sum-of-sups norm. A labelled Part-6 sharp variant or a consistent downstream norm repair is still needed to claim that interface closed. |
| N6-04/05 | OPEN | Retained Part-6 source-description and mixed-dictionary wording; NCONS-03. |
| N8-01, rank-zero zone radius | OPEN, outside this commit | Part 8 still states the consistency equality with lambda_d without excluding Theta, where lambda_0 is not defined. Restrict that clause to nonzero rank as already requested. Part 9 uses the valid nonresonance and radius clauses and does not need that false rank-zero identification. |

## What I recomputed: the full changed constant dictionary

Keep the two uses of the letter q distinct: q = m/n in the QC conversion is **not** the fixed proof parameter q = 9 in Part 9.

```text
q_QC = m/n,
Bc = n Mcomplex + q_QC,
mu = q_QC/2,
ell = omega_min q_QC/[8(Bc+q_QC)],
r0 = min(s/2, R/8, ell/(2Bc), 4 omega_min/mu),
A = 11Bc/mu.
```

Every entry is positive and depends only on the fixed frozen inputs. Since Bc ≥ q_QC = 2mu, A ≥ 22 and

```text
r0 ≤ ell/(2Bc) ≤ ell/(4mu) ≤ 4ell/mu,
R0 = r0/A ≤ R/176.
```

For the **max** tube needed at the later call, choose J in P with abs(I−J)_infinity < r0. Then J belongs to the frozen action ball of radius R, abs(I−J)_infinity < s, and at real I one has abs(I)_infinity < R/2+r0 ≤ 5R/8 < R. Thus holomorphy and the complex Hessian bound apply on the entire complex tube, while the QC conversion and frequency lower bound apply on its real slice. This directly proves the repair requested in NCONS-01; no unproved norm equivalence is needed.

The fixed-action source dictionary is

```text
Htilde(phi,I) = 2pi H(phi/(2pi),I),
m_P = 2pi mu, M_P = 2pi Bc, ell_P = 2pi ell,
s0 = pi s, sigma = pi s/4,
F = 2pi coth(pi s/4)^n,
epsilon* = 2pi mu r0²/(1024 A^(2n)).
```

Time and actions are unchanged. The source width s0 corresponds to the geometric period-one width s/2. To obtain the weighted perturbation bound, take the sup bound on the angle strip 3s/4 and lose s/4, giving coth(pi s/4)^n epsilon; multiplying the Hamiltonian by 2pi gives F epsilon. Both the strip conversion and the value scaling are needed. The changed r0 only shrinks the action domain; this cannot invalidate that Fourier estimate.

The exceptional threshold obeys m_P r0/8 ≤ pi omega_min, whereas norm(omega_tilde(I0)) ≥ 2pi omega_min. Therefore Part 9's nonexceptional branch applies, including its equality convention. Its frequency maximum is finite and positive, with

```text
2pi omega_min ≤ Omega0 ≤ 2pi sqrt(n) M ≤ 2pi n M.
```

The closed radius-R0 ball is inside the real derivative-bound domain. Taking reciprocals of positive quantities gives

```text
T0 = A²s0/Omega0 ≥ A²s0/(2pi n M) = 2T,
T = A²s0/(4pi n M).
```

Thus the time-prefactor estimate survives the radius change. For epsilon > 0,

```text
R0 (F epsilon/epsilon*)^a = C epsilon^a,
[s0/(6sqrt(n))](epsilon*/(F epsilon))^a = c epsilon^(−a).
```

Part 9 actually returns half the displayed radius, so the existing C is conservative. Set epsilon0 = min(epsilon*/F,(R/(4C))^(2n)); then C epsilon0^a ≤ R/4 and all constants precede h,f,epsilon. This is compatible with the frozen solution domain and existence/uniqueness assembly, but does not itself prove those ODE clauses. Epsilon = 0 is covered by N-ZERO, not by this reciprocal/power calculation.

No hidden dependence on h or on its analytic sup bound enters these changed constants. The frozen lower frequency bound is in the max norm; its Euclidean counterpart used here is weaker and follows since norm(v)_2 ≥ abs(v)_infinity. The extra complex-Hessian input supplies Bc independently of the retained real derivative bound M.

## Direct-divisor Iterative Lemma: proof and limits

The new statement assumes abs(k·omega(I)) ≥ alpha/q on **all** V_rD for k in Z_K outside Lambda, with alpha > 0 and q = p/(p−1) > 1. A lower bound only on real points would not suffice; the current statement has the required complex domain.

For each such k, division by 2pi i k·omega(I) is genuine and holomorphic. Coefficientwise,

```text
abs(phi_hat_k(I)) ≤ q/(2pi alpha) abs(f_hat_k(I)),
norm(phi)_(r,s) ≤ q delta/(2pi alpha).
```

These are exactly the two places where the old divisor lemma is used. The finite Fourier identity, projection norm bounds, and conditional reality proof then remain valid. The flow uses u = q delta/(2pi alpha rho sigma) ≤ 1/4; its Lie-series parameter is at most 2u ≤ 1/2. The same domains r−3rho/2,s−3sigma/2 for the map and r−2rho,s−2sigma for the remainder survive. The integrand estimate, bracket with decomposed g, high-mode tail and composition proof contain no frequency Lipschitz constant. Hence the remainder estimate and displacement constants are unchanged, and no stronger derivative bound has been smuggled in.

The reality clause still requires symmetric Lambda and real h,g,f. Arbitrary complex D is allowed: at a real point the open complex tube provides a real neighborhood for the derivative-reality argument. If zero is outside Lambda on a nonempty tube, the assumed divisor condition is impossible; the statement then has no instances, as expected. This does not create an unguarded division at k = 0.

This pays the direct-divisor part of the earlier P reuse objection. The new N statement keeps p > 1 and q > 1. P's own `bpP:p2:direct` separately extends the same proof to arbitrary q ≥ 1, including q = 1; that extension is algebraically valid because conjugacy of p,q was used only in the discarded divisor-extension proof. Do not apply the literal N corollary at q = 1 without that separate argument. Likewise neither the new N corollary nor its ordinary-norm outputs automatically prove the two-scale block displacement or a stronger sharp-norm output. The present commit makes no proved claim that those further results follow merely by renaming its parameters.

## Part-7 fixes and source fidelity

Under the **symplectic coordinate** scaling phi = 2pi theta, I_P = I/(2pi), Hamiltonian values are unchanged. Therefore omega_P = 2pi omega, Hessians and curvature scale by (2pi)^2, and frequency distances delta and the QC threshold ell scale by 2pi. Action radii scale by 1/(2pi). These give the revised Part-7 dictionary and the invariant combinations s_P r_P = sr and s_P m_P r_P²/omega_P = s m r²/omega. This is a different, valid dictionary from Part 1's fixed-action scaling; the residual Part-6 paragraph must not mix them.

The scan at p.197 contains the direct original-coordinate argument, not an exponential remainder assertion for f*=f. On the full original strip, speed is bounded by epsilon/(es). At the requested time sr exp(kappa/6)/(5epsilon) with kappa < 6, movement is less than r/5 < r/2. There is no additional factor-e time loss to repair. The updated Part-7 classification is correct.

P.200 tells the reader to apply the preceding lemmas to H with g=0 without specifying a new radius. Its prior half-radius choice is visible on the page. Explicitly choosing r/2 in the blueprint supplies the missing bookkeeping; claiming the source expressly chose r would be unwarranted. The new classification says this correctly.

The p.199 projection estimate remains an inherited proof-gap claim, not a claim of a false stability theorem. The generally available chord estimate includes M norm(I(s)−I0). The new global choice Bc r0 ≤ ell/2 ensures the additional premise of the blueprint's repaired Proposition 2, which at half-radius supplies M rtilde ≤ ell/4. For proper blocks the old source bound gives 4ell/(11K) ≤ ell/2; the full-rank radius r0 requires the separate check made in Part 9. The consolidation correctly fixes the older blanket claim about all blocks.

## Validation and limits

- `git diff 176161c --` for the three reviewed TeX paths: empty at the checked snapshot.
- Full N LaTeX build: **exit 0**, **72 pages**, zero lines beginning `!`, no undefined references/citations. Existing hyperref title warnings and the Part-8 line-186 overfull display remain; none is a new consolidation proof defect.
- `scripts/lint_sources.sh`: **exit 0**; `check_lean_modules: PASS (180 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`.
- Exact rational arithmetic checked the Part-9 compatibility/time factors; the detailed block audit is in the companion report. Reviewed source hashes were rechecked before handoff. Both reports passed explicit whitespace and finding-table checks.
- No Lean module was changed or built; no fresh `#print axioms`, provider sealing or theorem certification is claimed. Only `p9-review-1.md` and `cons1-review.md` were authored. Concurrent work and generated build artifacts elsewhere were left untouched.

The consolidation is a correct mathematical repair of the N route's changed constants and cutoff use. Complete NCONS-01/02 and the retained N6-04/05 prose cleanup before treating it as a complete interface-closure receipt. No additional frozen-statement defect or new confirmed Pos93 numerical erratum was found.
