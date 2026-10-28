# Part 11a-3: round-3 closure check

## Verdict: ACCEPT WITH FIXES

Parts 11a-1..3 ready for graph extraction: YES

**P11A3R2-01..04 are closed.** The general budget now permits precisely the strip-rate dependence needed by its proof. Its exponents and the fixed-data beta corollary are unchanged and valid. The corrected finite-stage divisor explanation, positive homological sign in the plan and data-dependence summary also match the requested repairs.

One new **minor, nonblocking** correction remains in the explanatory counterexample added to `adm-budget-necessary`: it must specify indices for which the displayed formula for B holds. The concrete counterexample from round 2 works; the new paragraph over-generalizes it. This does not affect the budget proposition, beta corollary, iteration or graph readiness of their contracts. This verdict does not certify Files 11a-4/5 or frozen P-FIXED.

## Scope and snapshot

Reviewed commit **2f0e224**, `blueprint-P 11a-3 round-2 fixes (adm-budget constant dependence incl. a_s; minors in 11a-1, PLAN-11a)`, against its parent. Read the complete fix diff, current `adm-budget`, `adm-budget-necessary`, `adm-budget-beta`, corrected (I3) explanation and plan passages, with `p11a3-review-2.md` as the finding inventory. Followed AGENTS.md, docs/PLAN.md, relevant decisions and the complete blueprint-review brief.

| File | Size | SHA-256 |
|---|---|---|
| `blueprint-P/parts/p11a1-weak-measure.tex` | 239 lines; 48,498 bytes | `66b5ce26db59b57dbf934938a7bae2fead6b6ff4c7c9d420d33b9582e272bab5` |
| `blueprint-P/parts/p11a2-cutoff-step.tex` | 333 lines; 57,060 bytes | `990694a832aa02dca0138c5cbb3bab842984583f4ca92576479eff04786ed3ec` |
| `blueprint-P/parts/p11a3-iteration-selection.tex` | 441 lines; 77,688 bytes | `a2715ad98156037914f24eb8543d41acd8d976e09e67561bb2d95ccf7896c406` |
| `blueprint-P/PLAN-11a.md` | 133 lines; 26,864 bytes | `a77098286f1b910ae838f2f996c4f26ae64de264c29874da05ebd899ff376c5d` |

Only this review is an intended source edit. No manuscript, plan, frozen declaration, manifest, numerical script or unrelated workspace change was edited. No state-changing git command or Lean build was run. The prior direct pinned-source comparison remains applicable: these fixes introduce no new paper-dependent proof input or frozen statement change.

## Closure of the four findings

| Finding | Current location | Status | Verification |
|---|---|---|---|
| P11A3R2-01 | `adm-budget` L380, proof convention L385 and `ab-T0` L389 | **CLOSED** | The statement and proof allow dependence on `(N,mu,rho,tau,c,a_s)`. The cutoff estimate explicitly retains `C0(1+a_s)` before absorbing it into C. Independence from u, the particular controlled family and the iteration index is preserved. No other scaling rate introduces a new coefficient into the estimates. The new necessity paragraph needs only the minor specialization below. |
| P11A3R2-02 | 11a-1 `consumers`, L218 | **CLOSED** | The finite sum now bounds the frequency difference first. Multiplication by `|k|_1` then bounds the divisor error by `gamma |k|_1^(-tau)`. The retained-set domain, all m>=0 and upper endpoint T_m remain correct. |
| P11A3R2-03 | `PLAN-11a.md` L79, L110 | **CLOSED** | Both homological equations have positive signs for the stated positive-time Hamiltonian flow. The duplicated old shrinking-chart application sentence is removed; the fixed-chart, beta-only application is retained. The plan also records the corrected constant dependence. |
| P11A3R2-04 | 11a-3 `sec-num` introduction, L372 | **CLOSED** | The text now says d,M enter through gamma, and explicitly states that beta also enters theta_max directly. This matches the actual admissible formula. |

## Remaining minor finding

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| P11A3R3-01 | `adm-budget-necessary`, L399, new first counterexample | **minor, nonblocking** | With only a_s=A varying, the paragraph states `B=2mu(tau+1)(A+1)` for unspecified fixed indices. The general definition instead gives `B=2 max{(N+2tau+2)A+2tau+1, mu(tau+1)(A+1)}`. The third-branch expression need not dominate: allowed `(N,mu,rho,tau,A)=(1,2,1,2,2)` gives B=38, whereas the remark's expression is 36. Thus its claimed limit is not established for arbitrary fixed indices. The round-2 example `(2,3,2,3)` does have the required domination and proves the intended necessity. | Specialize the paragraph explicitly to `(N,mu,rho,tau,c)=(2,3,2,3,1/10)`, `h(I)=|I|_2^2/2`, `K=[0,1/2]^2`, `vartheta=beta=epsilon*=1/10`, `M=4`, `M0=C1=1`, and `s(u)=u^A/10`. Then write `B=24(A+1)` and the ratio bound `C'(A+b)^(-24)`. Keep all subsequent examples unchanged. No change to `adm-budget` or `adm-budget-beta` is needed. |

This is a scope correction to an explanatory necessity example, not a new failure of the sufficient budget theorem. The remark is not used to prove the proposition or beta corollary.

## What I recomputed

### The constant dependence now closes

For a_s>0, s>=c u^(a_s) gives

`log(32N/s) <= log(32N/c)+a_s log(1/u)`.

Since `log(1/u)<=u^(-1)` and u<=1, the full explicit cutoff, including A0 and the outer maximum with 1, obeys

`T0 <= C_T(1+a_s)u^(-a_s-1)`

with C_T depending only on `(N,mu,rho,tau,c)`. For a_s=0, s>=c directly gives `T0<=C_T`; L=0 is valid. The corrected proof uses these two cases exactly. The lattice gap `s_tau=rho(tau+1)/mu-N` remains fixed and introduces no strip-rate exponent into C_Dio.

Every other rate enters solely through a power of u. For example `1+u^(-a)<=2u^(-a)` for a>=0 has constant 2 independent of a. Minima are handled by maxima of nonnegative exponents, also without rate-dependent coefficients. Thus permitting dependence on a_s alone, rather than on the whole rate vector, is sufficient.

As an additional check, the factor `(1+a_s)` can be tracked explicitly. Put

`p=max{tau+1, 2tau+1, mu(tau+1)}`.

The collar lower constant loses at most `(1+a_s)^(-(tau+1))`; the Xi upper constant costs at most `(1+a_s)^(tau+1)`. Consequently the three lambda branches lose at most the respective powers `tau+1`, `2tau+1`, and `mu(tau+1)`. One may therefore choose a lower constant of the form

`c'=c_base(1+a_s)^(-2p)`

with c_base depending only on the fixed tuple and common bound c. This is a sufficient conservative choice, not a claim that the manuscript specifies the sharp constant. It verifies precisely why the amended dependency list is enough without changing B.

### The counterexample works after specifying its indices

For the concrete fixed data in the proposed fix, all family hypotheses hold with c=1/10. The squared scalar family has second directional derivative 2 in its own unit direction, the required scalar derivatives are bounded by M=4 on K_vartheta, and M0=C1=1. The initial-set volume is 1/4>epsilon*=1/10. Only the strip changes.

For these indices, with a_s=A>0 and all other rates zero,

`D=G=0`, `L=A+1`, `J=X=4(A+1)`,

`H=max{4(A+1),10A+7,12(A+1)}=12(A+1)`.

Hence B=24(A+1). At the same u=e^(-1), the explicit cutoff satisfies `T0>=c0 e^A(A+b)`. The third branch always supplies the upper bound `epsilon_adm<=epsilon^(3)<=C T0^(-24)`, whether or not that branch binds. Dividing by u^B gives

`epsilon_adm/u^B <= C' (A+b)^(-24) -> 0`.

This correctly refutes a constant uniform over all strip rates. The new permission for c' to depend on a_s removes that contradiction. For unspecified indices, the quadratic exponent may dominate; that is the sole issue in P11A3R3-01.

### The beta corollary is unaffected

The entire `adm-budget-beta` statement and proof are **byte-identical to the parent commit**. The new constant dependence specializes to a_s=0. With a_beta=1 and all other rates zero,

`D=1+1/mu`, `G=G0=(mu+1)/rho`, `L=0`, `J=X=G0`,

`B=2 max{2G0,1+mu G0}=B0`.

For rho=2, `(1+mu G0)-2G0=mu(mu-1)/2>=0`, so `B0=mu(mu+1)+2`. Exact rational checks for mu=1..6 and both rho conventions agree with these formulas. The positive fixed-data choice of c in the proof, including M0 and d, is unchanged. No strip-rate dependence enters c_* in this specialization.

### No regression in the iteration or divisor uses

Compared the actual source, not just the commit summary. File 11a-2, the finite-stage invariant/retained-set section and the exported-sums section are byte-identical to the parent. The operative schedule, admissible minimum and all four growth ratios are unchanged. The new patch changes neither (A1)–(A7) nor (E1)–(E4).

Rechecked the edited 11a-1 sentence against `finite-divisor`: for m=nu(k), `|omega_nu-omega_m|<=S_m<=gamma T_m^(-tau-1)<=gamma |k|_1^(-tau-1)` on K_(nu+1). Multiplication by `|k|_1` leaves exactly the allowed gamma divisor margin. The stage-zero and empty finite-sum cases remain covered. The complex-collar extension still follows from the established derivative and collar bounds, independently of any limit vector.

The positive sign newly written in the plan agrees with `{N,phi}=-partial_omega phi` and the cancellation in the actual canonical-step proof. The local zero-size flow and fixed-norm derivative corrections from the earlier round remain intact. The previous numerical schedule receipts remain applicable to the unchanged operational formulas; this closure check adds exact exponent checks and the analytic constant-dependence calculation above.

## Validation receipt and limits

`cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` exited **0**. The current PDF has **198 pages** and the log has **0 lines beginning with `!`**. Parts 11a-1..3 have no undefined-reference warnings. Parts 11a-2/3 have no overfull boxes; the two nonfatal overfull-box warnings in 11a-1 remain. Literal checking found all local/K/N/P label targets cited in the three files. The full document's existing seven unresolved reference occurrences remain in Part 14a, outside this check.

`scripts/lint_sources.sh` exited **0**, reporting `check_lean_modules: PASS (257 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, and `ABI HASHES OK (144 frozen declarations)`. No Lean module changed, so targeted Lean builds and new `#print axioms` results are **not applicable**. Report whitespace and `git diff --check` were checked; the reviewed manuscript/plan hashes were rechecked unchanged.

No new suspected defect in a pinned source or frozen statement was found, and this review introduces no deviation. Readiness here covers Parts 11a-1..3 as measure, local-step, iteration, selection and budget inputs. Construction of the limit tori, their full parameter-family estimates, displacement budget, final analytic weak-KAM theorem and physical P-FIXED assembly remain the responsibilities of their later parts.

For subsequent Lean briefs, the hard rules remain verbatim:

1. **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal.
2. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules, preserving public import paths as cheap facades.
