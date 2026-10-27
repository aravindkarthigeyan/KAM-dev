# Part 11a-3: independent review 1

## Verdict: REVISE

The geometric iteration, finite-stage divisor invariant, D-7 extension, nonemptiness argument and parameter-selection theorem survive this review. **P11A2-01 is resolved for the construction in this file.** I found no obstruction requiring a return to Rus01's smoothing machinery. The prescribed schedule satisfies (A1)–(A7) and the exported numerical budgets.

The claimed application-level polynomial lower bound, however, is false under its printed hypotheses, and its degree calculation omits a constraint that can bind. These are major findings because the preparation order must be chosen from a proved uniform exponent. The route remains viable with the repairs below; this file is not ready for graph extraction as written. This is not a review receipt for the unfinished limit/family theorem or frozen P-FIXED.

## Scope and materials

- Reviewed all **397 lines, 67,863 bytes** of `blueprint-P/parts/p11a3-iteration-selection.tex`, SHA-256 `af8fd667644718e46ee53f4eec226725f166672626e07bba73da288708607683`. HEAD observed: `18df827ed0639bb03fd4ccff5d560b43279038f3`.
- Read AGENTS.md, `docs/PLAN.md`, relevant decisions in `docs/DECISIONS.md`, the complete review brief, writer conventions, model Part-2 review, track-P route/source/notes material, `blueprint-P/PLAN-11a.md`, Parts 11a-1 and 11a-2 and their actual measure/analytic interfaces, and `p11a2-review-1.md`. D-10 onward are recorded in the part files; the current split plan's deviation table itself ends at D-9.
- Read pinned Rus01 **§13, printed pp.156–164**, **§20, pp.198–203**, and initialization (14.2)–(14.5), Lemma 14.5 and its proof, pp.165,168. Checked the chain-extension estimates (20.3)–(20.8), finite-set inclusion (20.14), nonemptiness proof (20.25)–(20.31), and constants (20.33)–(20.35). Rendered pp.156 and 200 to disambiguate the formulas. Read Rus05 Theorem 1 and §§9–11, pp.21–22,26–31, directly; its multiplier estimate is not used by this replacement scheme.
- Source hashes match the pins: Rus01 `cf2066ad478e5a42e737ce1d875967f902ab6050344b7e85909137bdacc1de30`; Rus05 `8c0951b8945992b849d3cb4a405d370c317e7b1bfd11e919db23e28a2d98c879`.
- Checked frozen `IsDiophantine`, `IsPhysicalTorus`, and `FixedSunPlanetaryKAM`, with the P-FIXED route/Part-0 conventions. This file supplies auxiliary selection data, not a physical torus predicate. Its `gamma |k|_1^(-tau)` is precisely the frozen divisor inequality since nonzero integer k has positive norm. The eventual physical consumer must still choose `tau>N-1`, as the split plan requires; the selection theorem alone intentionally permits the weaker summability range.

Only this report and review scratch under `.drafts/P/review-scratch/p11a3/` were written. No manuscript, plan, frozen declaration, manifest, writer script or unrelated workspace change was edited. No state-changing git command or Lean build was run.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| P11A3-01 | `sec-num`, L368; introductory R1 verdict, L25; concluding budget claim, L390 | **major** | The printed application assumptions control M0 and C1, but not M, although `C_sub` and hence gamma depend on M. With all other data fixed, `(N,mu,rho,tau)=(2,3,2,3)` and M increasing, the formula eventually gives `epsilon_adm ~ M^(-9)`. Taking `M=exp(1/u)` satisfies the printed assumptions but defeats every bound `c u^B`. An independent second issue is that C1 has only an upper bound: the first minimum term gives `epsilon_adm <= C1 vartheta^2/(128 N^2)`. For N=1, h(I)=I, K=[0,1], fixed finite-type data, and `C1=exp(-1/u)`, every standing hypothesis is valid but the asserted polynomial lower bound fails again. The diameter is also an uncontrolled input unless K is fixed. | State the full scaling assumptions, including polynomial upper bounds on M and d (or fixed d), and normalize the chosen Hessian bound to `Cbar=max(1,C1)` **in the admissible-parameter definition**. Include M0 separately. Prove a uniform lower bound for the full minimum, not just the active branch in sample data. An explicit sufficient exponent is provided below. Alternatively retain only the fixed-data positive-threshold theorem here and explicitly defer R1 to a proved File-11a-5 lemma; remove the current assertion that R1 has been closed. |
| P11A3-02 | `sec-num`, L366–368; `adm-params`, L198–201 | **major** | The quadratic branch of lambda_max includes `min(varpi/2,2^-10/Xi)`. Its contribution to epsilon_adm is `pi^2 gamma^2 varsigma0^(2N+2) T0^(-2tau) min(...)^2 / (2 N C1 C_Q^2 2^(2N))`, not the displayed `gamma^2 s^(2(N+1)) T0^(-2tau)`. When `t0=gamma T0^(-tau-1)/(4C1)` and `Xi~2^(tau+1) varsigma0/t0`, this branch scales as `gamma^4 s^(2N) C1^(-3) T0^(-4tau-2)`. It can bind; it does in the writer's first listed example. For mu=1 it has higher gamma degree than the closeness branch. Independently measured gamma slopes tend to 4. Also the exact rho=2 closeness factor is theta_max squared, not universally `beta^2/M0^2`. | Display the exact contributions of all three branches, including Xi, C1 and theta_max. Replace “is a polynomial” by “admits a polynomial lower bound under the stated polynomial control of all inputs,” with logarithms absorbed by a fixed extra power. Use the maximum of the three required exponents. Restrict any simpler monomial asymptotic to its stated active-branch regime. Update the preparation-order requirement from that uniform bound. |
| P11A3-03 | `schedule-ratios` proof, L84 | minor | `E_*>=10` is false for permitted `(N,mu,rho,tau)=(1,1,2,0)`: E_*=9. The actual lemma's conclusions remain true. | Replace it by `E_*>=9`, hence `q<=2^-11<=2^-5`. Do not exclude the permitted boundary case. |
| P11A3-04 | source after `schedule-consts`, L74; “Sources read”, L374 | minor, source fidelity | Rus01 (13.1), printed p.156, reads **`tau_0=1/9`**, not `tau_0=1`. This is clear in the rendered PDF; the denominator was lost in text extraction. The new schedule does not use that value, so its estimates are unaffected. | Correct both attributions to `1/9`. Retain the explicit new ratios as the actual proof; do not import Rus01's exponent choices as if they were these constants. |
| P11A3-05 | `sec-num`, L366,370; writer numerical verification description | minor, reproducibility | “Third term ... as it is in all examples below” is contradicted by the first example and by the same paragraph's random counts. Rerun: first case has binding term index 1 (quadratic), the other three index 2 (closeness). `sched.py` checks E2 derivative sums against `2^-10`, whereas the lemma states `2^-12`; its infinite tails are sampled finite sums plus a bound. It also uses one `Mw` for the genuinely distinct M and M0, so its slope test cannot validate their independent dependence. | Correct the active-branch sentence, test both E2 sums against `2^-12`, use exact geometric envelopes for infinite tails, and give M and M0 separate arguments. Describe the original script's numerical bump integrals as approximations, not certified constants. The strengthened independent audit below passes the stricter inequalities. |
| P11A3-06 | “What File 11a-4 must take”, T1, L356 | minor, consumer proof obligation | The shrinking-domain estimates directly give the zero-section value and first action jet tending to zero. They do not alone construct a limit Hamiltonian on a fixed action neighborhood: `s_nu -> 0` and `epsilon_nu/s_nu^2=(epsilon0/s0^2)16^nu`. Thus the asserted off-section limiting normal form with an order-two remainder needs an additional argument. There is a plausible route through the simple affine form, so this is not a refutation of the torus limit. | Export the two zero-section limits explicitly. Assign to File 11a-4 the proof of convergence/extension of the affine action coefficients on a common domain, if an actual off-section normal form is wanted. Otherwise formulate only the limiting torus and its first-jet invariance identity, which are what the physical consumer needs. Do not claim second-derivative convergence from these Cauchy estimates. |

## What I recomputed

### Geometric recursion, ratios and strip budget

The recursion lemma is valid, including x0=0: `P0 p^nu x_nu <= P0 x0 (p varpi)^nu <= varpi/2`; adding c0 gives `7 varpi/8`. In the application epsilon_nu is a positive prescribed envelope, so the use of `P0=Q0/epsilon0` is legitimate.

Writing v=varrho, the four growth factors are

`g1=2^(tau+N+3-E_*)`, `g2=2^(tau+3-E_*)`, `g3=2^((tau+1)mu+2-E_*)`, `g4=2^(2tau+N+3-E_*)`.

Their stated upper bounds hold. In particular the minimal exponent gaps for g1 and g4 are 5, the g3 gap is at least 6, and `v 2^(tau+1)<=2^-5`. Also `2q^2=varpi/8`, `2alpha=varpi/4`. The positive action-radius shrink q is compatible with the local step. The only false intermediate numerical assertion is P11A3-03.

The exact infinite strip loss is

`sum d_nu = 2[A0+N log(2 pi T0)]/(pi T0)`.

With X=2 pi T0 the log-tangent estimate gives `N log X <= sX/32 + N log(32N/s)`. A6 makes the first part of `4(A0+N log X)/X` at most s/8 and the linear part at most s/8. Therefore `sum d<=s/4`; independently `sum(delta+2sigma)=s/4`. Every `r_nu>=s/2`, every d_nu<=1/4, and the actual cutoff estimate gives E_nu<=alpha. There is no missing logarithmic strip loss or use of Rus01's all-powers approximation assumption here.

### Initialization and (A1)–(A7)

For b in K+t0 and max-norm |eta|<s0, the segment b+lambda eta stays in K+2 vartheta. The max-norm Hessian bound gives

`|eta^T Domega eta| <= N C1 |eta|_infty^2`.

The Taylor integral therefore contributes `N C1 s0^2/2`; this is the correct N factor. The action translation is symplectic with b held fixed, which is precisely the fiberwise use here.

From `epsilon<=lambda_max^2/(2NC1)` and `s0=lambda_max/(NC1)` one gets `lambda0=epsilon/s0+NC1 s0/2<=lambda_max`. This proves A2, A4 and A5 by their three minimum terms. A1 is the t0 definition, A3 is `s0<=t0/(8N)`, A6 is the T0 definition and A7 is the Taylor estimate just checked. All are attainable simultaneously, and epsilon0 remains strictly positive even when f=0. Consequently P11A2-03's zero-size problem does not obstruct this iteration: it deliberately applies the canonical step with a positive upper envelope rather than the possibly zero actual remainder norm.

### D-7, finite-stage divisors, nonemptiness and induction

The mollifier construction works on an arbitrary nonconvex compact set. Convolution gives chi=1 on K_j and support at distance at most t_j/2. This support has a genuine positive buffer inside B_j, so extension by zero is C^mu. With `t0<=vartheta/sqrt(N)` it lies in the required Euclidean thickening. The order-u parameter estimate on the support is `u^u 4^u ell_j t_j^(-u)`. Combining it with the cutoff derivatives and the target-norm factor sqrt(N) gives exactly the stated c'. No derivatives above mu of the extension are needed by File 11a-1's perturbed-map hypotheses. The controlling series has ratio g3<1. **R2 is discharged.**

For a fixed finite retained point b and shell index m=nu(k), the increment values are available on every B_j being used. Thus

`|omega_nu(b)-omega_m(b)| <= sum_(m<=j<nu) ell_j <= S_m <= gamma T_m^(-tau-1) <= gamma |k|_1^(-tau-1)`.

The old test supplies `|k.omega_m|>=2 gamma |k|_1^(-tau)`. Subtracting the single telescoping bound leaves gamma, with no unknown limiting frequency and no factor 2 loss. It includes m=0 and the empty sum m=nu. **This supplies exactly the repair requested in P11A2-01.** The stale endpoint in 11a-1/PLAN remains an owner-edit obligation; the current file explicitly states its replacement and does not use the stale formula.

For nonemptiness, extend only the already constructed increments, and for modes beyond T_nu use tilde omega_nu as a filler. A5 and the finite extension estimate give D3 uniformly in that family; D1/D2 concern the original map. File 11a-1's measure theorem then applies before any new generator is constructed. Its all-mode good set lies in H^(nu), and the induction on the old shell tests gives `H^(nu) subset K_(nu+1)`. This removes the apparent circularity. Extensions at a fixed earlier stage are unchanged when the chain grows, so the sets H^(nu) really decrease. Continuity from above is used only on compact subsets of finite-measure K.

The collar is `K_(nu+1)+t_(nu+1)`, not an unjustified collar of the infinite intersection. The finite real divisor bound, `Domega_nu<=2C1` there, and

`t_(nu+1) T_nu 2C1 <= 2^(-tau-2) D_nu <= D_nu/2`

supply the complex-divisor hypothesis. Frequency increments extend to the **whole old collar** because their Fourier averages require no divisor. Cauchy on `K_j+t_j/2` and `sum 4epsilon_j/(s_j t_j)<=C1` prove the next derivative invariant. Domain inclusions and the composition identity are consistent.

Finally `Q_nu<=Q0 g1^nu<=varpi/2` implies C3; the conservative remainder estimate is at most

`epsilon_nu (varpi/8+varpi/4+varpi/2) = (7/8) epsilon_(nu+1)`.

The actual bound has more slack in the tested cases. **R5 is discharged for these schedule/one-step estimates.** At the limit, the same corrected tail proves the single-vector Diophantine condition on H_infinity. No conclusion-shaped premise was added.

### Exported sums and fixed norms

With the exact Q_nu, `A1=(1+E) sigma Q/C_Q`, `kappa<=4(N+1)Q/C_Q<=Q/16`, and `Aeta=kappa s_nu/2`. The last inequality uses `C_Q>=64(N+1)`, valid already at N=1. The unscaled block estimate `2kappa+kappa s_nu/sigma_nu` follows from the actual weighted flow derivative bound; this resolves the input requested in P11A2-04, without asserting that the future full-family Lipschitz proof is finished.

The real angle exponent satisfies `Lambda_R<=4pi T0 varsigma0 Q/C_Q` because `T_nu sigma_nu=T0 varsigma0`. Summing with `g1<=1/32` proves both E2 bounds at **2^-12**. For the parameter tails, an explicit infinite upper envelope is

`2^(tau+1) Q0 [3 varsigma0/(C_Q t0) + s0/(16t0)]`.

It is at most `(3/C_Q+1/16)Q0 Xi < 2^-10`; the later tails decrease by g4 or a smaller ratio. E4 follows from first-order Cauchy on a collar of half the width. These estimates do not require convexity of K_infinity: the short parameter segment stays inside a polydisc about its initial retained point.

## A sufficient corrected polynomial budget

The fixed-data positive threshold is already proved. To obtain a uniform polynomial threshold along an application parameter `0<u<=1`, the following is one explicit, deliberately conservative repair of R1, rather than a claim that it is already in the manuscript.

Use `Cbar=max(1,C1)` throughout the admissible choices. Suppose the positive widths, amount and loss have the printed lower bounds with nonnegative exponents `a_vartheta,a_s,a_beta,a_*`, and additionally

`M<=c u^(-a_M)`, `M0<=c u^(-a_0)`, `Cbar<=c u^(-a_C)`, `d<=c u^(-a_d)`.

All indices and tau are fixed. Taking a_d=0 covers a uniformly bounded patch diameter. From the actual File-11a-1 constants,

`C_Dio <= C u^(-D)`, where `D=N a_d+a_M+a_vartheta+(1+1/mu)a_beta`.

Hence `gamma>=c u^G`, for

`G=max{a_beta/rho, (mu/rho)(a_*+D)}`.

Set

`L=a_s+1`,

`J=max{a_vartheta, G+(tau+1)L+a_C}`,

`X=max{a_s,J,L}`,

`H=max{J, G+(N+1)a_s+tau L+X, a_beta+a_0+mu J}`.

The log estimate gives `T0<=C u^(-L)`; then `t0>=c u^J`, `Xi<=C u^(-X)`, and `theta_max>=c u^(a_beta+a_0)` for either rho. Each of the three minimum terms is bounded below by `c u^H` (the first uses Cbar>=1). Therefore the revised admissible formula satisfies

**`epsilon_adm >= c u^B`, with `B=2H+a_C`.**

There is no iteration-index dependence. The extra 1 in L absorbs logarithms; sharper powers can be obtained but are unnecessary for a finite-order preparation. This proof accounts for the Xi branch and for all independent inputs. Merely inspecting the closeness branch or constant numerical slopes does not establish this lower bound for the original unnormalized formula.

The two counterexamples in P11A3-01 are mathematical, not sampling artifacts. For the M example one can use the fixed analytic Hamiltonian `h(I)=|I|_2^2/2` on a fixed positive-measure box in R^2, with fixed widths and a fixed sufficiently small beta. Its squared scalar family has a uniform second directional derivative 2, so mu=3 is permitted. Choose any sufficiently large upper bound `M(u)=exp(1/u)`; the actual frequency and M0 do not change. The selected formula then has gamma proportional to M^(-3/2), the closeness branch eventually binds and epsilon_adm is proportional to M^(-9). For the C1 example, h(I)=I has zero Hessian, so every positive C1, however small, is an admissible bound. Neither example contradicts KAM existence; they refute the printed uniform claim about this chosen threshold.

## Numerical verification

Reran all three writer scripts without modifying them:

- `python3 .drafts/P/bp-scratch-bpP-p11a-3/sched.py`: all four cases passed. Their epsilon_adm values are approximately `2.42015e-86`, `1.07072e-158`, `4.20938e-442`, `1.85855e-1036`. Binding branches: quadratic, closeness, closeness, closeness. The reported case-2 gamma, T0, t0, strip loss and recursion margin are reproduced.
- `rand.py`: **40 runs, zero reported failures**, binding counts 18 quadratic and 22 closeness.
- `scaling.py`: reproduced C1 slope -7, loss slope 9, beta slopes approaching 14, and s slopes 24.722 to 24.680. Its `Mw` variation changes both M and M0; the slopes approach -11, but are not exactly constant over the sampled interval. The branch-dependent rational theta_max factor explains the drift.

Wrote and ran the independent `audit.py` in review scratch. It uses 90-digit mpmath arithmetic, separates M from M0, and computes bump derivative L1 norms by exact polynomial antiderivatives evaluated between tightly isolated real roots, rather than a trapezoidal mesh. These are numerical verification values, not a certified interval-arithmetic proof. It checks the seven initial conditions, the exact scalar one-step remainder, all four growth factors, finite-stage tails, the stricter E2 thresholds, and infinite geometric upper envelopes for E3. **All five targeted cases and 54 additional boundary schedules passed for 100 stages each.** The targeted cases include the allowed tau=0, E_*=9 boundary. The four larger-index targeted cases in this independent script use its documented common defaults; their thresholds are not asserted to be the writer's differing input cases.

Independent c' values include `11.5` for (N,mu)=(1,1), `254.2110145` for (1,2), `50842.94618` for (2,3), `5.862609852e7` for (4,4), and `8.171397087e10` for (6,5). They agree with the writer's displayed precision. Varying the allowed gamma scale with `(N,mu,rho,tau)=(1,1,1,1)` gives a quadratic-branch epsilon_adm slope tending to **4**, confirming the omitted Xi cost. Varying **M alone** in the case (2,3,2,3) gives slope **-9**, separately confirming the missing-data issue. Output is retained in `audit-results.txt`.

The proof checks, rather than these finite experiments, justify infinite iteration. In particular no numerical experiment constructs the unknown Hamiltonian frequencies or certifies a physical torus.

## Source fidelity, errata and formalization boundary

The geometric envelope replaces, rather than instantiates, Rus01's all-powers approximation schedule. Rus01 §13 supports the organization of the inductive step, and §20 supports extending old increments before applying the measure theorem. The new Fourier loss, shell selection and polynomial-tail argument are author-declared replacements. Their arithmetic was independently recomputed here. Rus05's previously recorded dimensional rescaling defect remains avoided; no sharp multiplier constant from that addendum is used.

One additional **suspected source typo**, visually verified against the pinned PDF, is reported for the orchestrator's ledger: **Rus01 §20.4, printed p.200, line defining the abbreviations immediately before (20.15)** prints `m_1=1, m_2=2p, m_2=2p^2+p`. The last symbol must be **m_3**, since it indexes the third matrix block, whose dimension is 2p^2+p, and the next formulas quantify j=1,2,3. This is a minor indexing typo, not an obstruction to the maximal-case replacement and not a proposed edit to the source or ledger. The tau0=1 attribution is instead a manuscript misreading, not an erratum in Rus01. Existing Rus05 errata are not new findings.

No frozen statement defect was found. Selection/frequency continuity does not discharge the remaining analytic embedding, full parameter-family inverse-Lipschitz control, physical chart transport, or frozen P-FIXED quantifiers. Standard Cauchy, convolution differentiation and measure-continuity facts are plausible formalization inputs; exact suggested Mathlib names are hints, not kernel-checked implementations. The finite-stage invariant and finite-chain nonemptiness are appropriately separated lemmas and do not assume their conclusions.

## Validation receipt

`cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` exited **0**: targets up to date. The current PDF has **184 pages**. Its log contains **zero lines beginning with `!`**. The Part-11a-3 log segment contains **no undefined-reference warnings and no overfull boxes**. The full log still has seven unresolved-reference occurrences in Part 14a (`bpN:p0:actionnbhd`, `partial-pert`, `partial-domain` twice, `bpN:p3:gen-uniform`, `bpN:p0:sol`, `partial-core`), outside this review.

Literal label checking found **62 distinct local ref targets and 6 K targets**, all present in the current blueprint trees. This matters because cross-track macros do not enforce LaTeX reference resolution.

`scripts/lint_sources.sh` exited **0**, reporting `check_lean_modules: PASS (234 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, and `ABI HASHES OK (144 frozen declarations)`. No Lean module was changed; targeted Lean build and new `#print axioms` results are **not applicable**, not asserted to have passed. The manuscript hash was rechecked unchanged. Report whitespace and `git diff --check` were checked before handoff.

For any subsequent Lean brief, the required rules remain verbatim:

1. **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal.
2. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules, preserving public import paths as cheap facades.

The outstanding substantive repair is R1's precise uniform lower-bound contract and exponent. The iteration/selection route is accepted subject to those repairs and the listed minor corrections; the complete analytic weak-KAM/P-FIXED route is not yet certified.
