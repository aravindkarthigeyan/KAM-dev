# Independent review of Part 14a — round 2

**Verdict: ACCEPT.** F14A-01 and F14A-03 are repaired. F14A-02 remains closed. The revised complex Hessian bound controls the precise curried bilinear norm in the frozen N theorem, and its consumers require no further change. No new substantive finding arose from the revision or regression checks. This accepts the mathematical blueprint at the reviewed snapshot; it does not certify Lean implementation or discharge the external N-PARTIAL-CONVEX proof obligation.

Reviewed on 2026-10-28 in `/root/code/KAM-inp`, HEAD `6de19bf7888aa655e5683a0372f9e576908e67aa`. File: `blueprint-P/parts/p14a-amd-expsafe.tex`, **350 lines, 58,450 bytes**, SHA256 `a2735bd6fbc36dc765bafccac43af4e3742b101a7e0f2d97725e70ac37ff8452`.

## Scope, materials and regression boundary

Followed `.drafts/briefs/bp-review.md` and the governing repository rules. Compared the current text with `blueprint-P/reviews/p14a-review-1.md` and `git diff HEAD~2 -- blueprint-P/parts/p14a-amd-expsafe.tex`; read the repaired lemma and its complete downstream application and constants table. Checked the authoritative frozen N Hessian hypothesis and the two planetary anchors. Round 1's source-page and full-proof review remains applicable: no source citation, final theorem statement, conservation computation, ODE contract, chart/domain estimate or time/exponent formula was changed in this revision.

The `HEAD~2` target has SHA256 `350038944fd0090ab6559fe12f93d329ffec75e8e68494fe6294bb1c64a0be56`, exactly round 1's final reviewed snapshot. After normalizing the notation replacement `StoppedBound` → `StoppedActionBound`, the only changed source lines are 197–198 (Hessian constant and claim), 204 (its proof), and 215 (empty compact set). Both versions contain 74 proof steps. The predicate rename matches the frozen name and changes no mathematical argument or premise.

The authoritative files retain the round 1 hashes:

| File under `KAM/Frozen/` | SHA256 |
|---|---|
| `Planetary/Theorems/AmdConfinement.lean` | `9178a6ef739497349dbeb1acde187fe8446de0f7a7231b5428782bb61ebaac72` |
| `Planetary/Theorems/PlanetaryExponentialSafety.lean` | `aae99c96448ebee46eb673f16f29f5a326e3d66051b8b2764c635dee0556ca07` |
| `Nekhoroshev/Theorems/PartialConvexNekhoroshev.lean` | `e6bb9443a34096433a84e3450162ed032b07d934352c7ecaaa10eb7caf16b4a3` |

## Findings disposition

Severity below is the original severity; all entries are closed and no fix remains requested.

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix / disposition |
|---|---|---|---|---|
| F14A-01 | Lines 197–204; `bpP:p14:h-data`, `stepP:p14:hd-iv` | Major | The former maximum bounded a diagonal matrix acting on vectors, but not the scalar bilinear form's nested operator norm. The revised sum and two-vector inequality now bound exactly `‖fderiv ℂ (fderiv ℂ h) z‖`. Both signs of h are covered. | **Closed.** The required sum, explicit curried-norm statement and triangle-inequality proof have all been supplied. |
| F14A-02 | Cross-track N references throughout Part 14a | Minor | The seven incorrect local `\ref{bpN:…}` calls were already corrected during round 1 closeout. Current text contains zero such calls, retains the cross-track `\Nref` forms, and compiles with no undefined references. | **Closed; no additional edit.** |
| F14A-03 | Line 215; `stepP:p14:tb-leb` | Minor | The general compact-tube lemma previously took a minimum over a possibly empty finite cover. It now treats empty K_* first and requires a nonempty finite cover otherwise. | **Closed.** For empty K_*, K_0 and the tube are empty and r_0=1 works; otherwise s≥1 makes the positive minimum legitimate. |

## What I recomputed

For z in the action neighborhood, the established domain estimate gives `|z_i| ≥ Re z_i ≥ 5 ell_i/8 > 0`. Direct differentiation gives

```text
D²h(z)[v,w] = − Σ_i 3 m_i³ z_i⁻⁴ v_i w_i,
M_C = Σ_i 3 m_i³ (5 ell_i/8)⁻⁴,
|D²h(z)[v,w]| ≤ M_C |v|∞ |w|∞.
```

Taking the operator bound first in w and then in v proves the frozen nested derivative norm bound. This uses complex absolute values and the actual max norms on both vector arguments. It also covers zero arguments without division. Positivity follows from positive masses and lower actions and nonempty Fin n (n≥2). Negating h preserves this norm and the reality/differentiability assertions; its real definite-part sign reverses as required. The gradient and definite quadratic-form lower bounds remain coordinatewise estimates and need no replacement by sums.

Recomputed the former counterexample with exact rational arithmetic: n=8, i=0,…,7, m_i=1−i/100, ell_i=1 and z=v=w=(1,…,1). The scalar Hessian magnitude is `337557/15625 = 21.603648`, exceeding the old bound `12288/625 = 19.6608`. The revised uniform constant is `1382633472/9765625`, strictly larger than the pointwise magnitude. Thus the original refutation fails against the corrected bound for the right reason; the general displayed inequality supplies the proof beyond this test.

For the tube lemma, when K_* is empty, its integer translates and the resulting tube are empty; all extension, invariance and holomorphicity conditions are vacuous. Otherwise compactness gives a finite subcover with s≥1. Each r_j>0, so `r_0=min_j r_j/2>0`; if `|x−x_j|∞<r_j/2`, then `D(x,r_0) ⊂ D(x_j,r_j)` by the strict triangle inequality. The unchanged real-center gluing and periodization arguments therefore apply. No nonemptiness hypothesis was silently added to the general lemma.

## Consumers of M_C and unchanged interfaces

| Consumer | Recheck |
|---|---|
| Standing data, line 260 | Uses the constant from `h-data`; no duplicate maximum formula survives. M_C is independent of the perturbation size and initial point. |
| `stepP:p14:st-thr`, line 278 | Both applications of N-PARTIAL-CONVEX use the corrected M_C and the exact lemma (i)–(v), with signs −1 and +1. The resulting positive thresholds μ_± are chosen anew for those fixed data. No numerical value or comparison with the former thresholds is asserted. |
| Constants table, lines 320–322 | M_C depends only on the masses, lower actions and fixed index set (hence on the stated outer data); listing m,ell,u,kappa is a harmless overestimate of dependencies. μ_± explicitly depend on M_C before P, μ and the orbit; ν_0 depends on μ_±, kappa, eps_D and b. No dependence on μ or z_0 enters through the repair. |
| Final threshold and safety constants, lines 303 and 323 | Any change propagates through μ_±, ν_0 and μ_*. The fixed normalization B_0, exponents a,b, time coefficient c=B_0⁻ᵃ, displacement coefficient C and the factor-two AMD margins need no altered estimate. The existential constant order remains the frozen order. |

The original full-review conclusions about the frozen statement transcriptions, angular-momentum conservation (as distinguished from AMD conservation), stopped first-exit argument, compact continuation, uniqueness, physical reconstruction, slow-ball erosion, forward/backward N applications and unchanged time normalization are unaffected by the exact diff. No new conclusion-shaped hypothesis, altered frozen binder, source erratum or deviation was introduced.

## Build and artifact checks

Ran from `blueprint-P`:

```text
latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex
```

**Exit 0.** Output: `.build/review/blueprint.pdf`, 223 pages, 2,539,251 bytes. Receipt: `.build/review/p14a-round2-command.log`; final TeX log: `.build/review/blueprint.log`. No undefined-reference warning or TeX error remains. The full blueprint still reports overfull/underfull boxes elsewhere; the final log reports no overfull box in Part 14a. Rendered and visually inspected PDF page 208, containing the revised constant, norm statement and proof; the mathematics is readable and fits the page.

Only this report was written outside the authorized build directory. The reviewed source and frozen files were not edited; no Lean build, provider replay, source repair or state-changing git command was performed.

READY review-p14ar2
