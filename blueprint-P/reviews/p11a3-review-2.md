# Part 11a-3: round-2 fix check

## Verdict: REVISE

Parts 11a-1..3 ready for graph extraction: NO

The iteration, corrected (I3), finite-stage divisor invariant and fixed-data beta budget survive this check. In particular, **the writer is correct on both disputed points**: one may take L=0 when a_s=0, and the denominator in C_Dio is the fixed lattice gap s_tau, not the angular strip width. The exponent

`G0=(mu+1)/rho`, `B0=2 max{2G0,1+mu G0}`

is correct; for rho=2 it is `mu(mu+1)+2`.

There is one new major **constant-dependence error in the general budget proposition**: its constant is asserted to depend only on `(N,mu,rho,tau,c)`, uniformly over all scaling rates. This is false for the displayed B. The smallest repair is to allow dependence on a_s in the proposition and proof. It changes neither B nor the beta-only corollary. No new obstruction to the Rüssmann route was found. The NO above concerns the literal contracts currently available for graph extraction, not the viability of the route.

## Scope and snapshot

Reviewed fix commit **98fe335**, `blueprint-P fix round: 11a-3 (budget adm-budget/-beta, branches, minors), 11a-1 (I3) corrected, 11a-2 minors, 14b minors, PLAN-11a`. HEAD subsequently advanced through unrelated track-N merges, so comparisons used **`git diff 98fe335^ 98fe335 -- blueprint-P/`**, rather than relying on a moving HEAD~1. The reviewed Part-11a and plan hashes remained unchanged during this check.

| File | Size | SHA-256 |
|---|---|---|
| `blueprint-P/parts/p11a1-weak-measure.tex` | 239 lines; 48,270 bytes | `92e44484afda1e7f4bc78b4c8b944571786c4092833cb47d97e549c676217414` |
| `blueprint-P/parts/p11a2-cutoff-step.tex` | 333 lines; 57,060 bytes | `990694a832aa02dca0138c5cbb3bab842984583f4ca92576479eff04786ed3ec` |
| `blueprint-P/parts/p11a3-iteration-selection.tex` | 441 lines; 76,803 bytes | `ce92336af12fa931d919dd14e8db28e37ce2255ed026df8dc7d7e064b81d577e` |
| `blueprint-P/PLAN-11a.md` | — | `39dd223c93780083624ca49c15ccb2ede64728215c750cdad9a96dd9f9f40a7b` |

Followed AGENTS.md and the complete blueprint-review brief. Revisited the two preceding Part-11a reviews, the current assumptions and admissible choices, the changed statements/proofs, every (I3) use, and the unchanged induction/export estimates. The earlier direct pinned-source comparison remains applicable: the new budget is an original calculation, and no new paper theorem is invoked. The frozen divisor convention and P-FIXED/physical-torus scope remain unchanged; no frozen statement or provider was edited or used to fill a proof obligation. The Part-14b changes in the same commit are outside this review.

Only this report is an intended repository edit. Numerical experiments used the permitted review scratch area and read the writer scripts without modifying them. No state-changing git command or Lean build was run.

## Closure of the earlier findings

| Finding | Current location | Status | Verification |
|---|---|---|---|
| P11A3-01 | `sel-data` L35; `adm-budget` L374–396; `adm-budget-necessary` L398–400 | Original omissions repaired; new uniformity overclaim below | C1 is normalized to at least 1 before the admissible choices. The family assumptions separately control M, M0, C1 and d. The earlier exponential-M and small-C1 examples are correctly retained as explanations of why those controls matter. The repaired proof gives the intended polynomial lower bound for each fixed rate vector. |
| P11A3-02 | `adm-branches` L225–229; `adm-budget` and `adm-budget-beta` L374–410 | CLOSED for branch arithmetic and exponents | All three squared branches have the correct denominators. The quadratic branch retains the squared minimum involving Xi, and its gamma^4 regime is correctly identified. The closeness branch uses theta_max squared, including the rho=2 minimum. The exponent H accounts for every branch. |
| P11A3-03 | `schedule-ratios`, L84 | CLOSED | E_*>=9 and q<=2^-11 are valid, including the allowed N=mu=1, rho=2, tau=0 case. |
| P11A3-04 | source at L74 and notes at L418 | CLOSED | Both source attributions now use Rus01's printed tau_0=1/9. The new schedule remains independently derived. |
| P11A3-05 | numerical description, L414; `.drafts/P/bp-scratch-pfix/` | CLOSED for the requested improvements | M and M0 are separate inputs; C1 is normalized; E2 is checked against 2^-12; frequency tails use the exact geometric completion; the active-branch description and approximate bump-integral disclaimer are corrected. Future displacement/derivative tails are justified by the analytic exported envelopes, not merely by the script's last observed ratio. |
| P11A3-06 | File-11a-4 handoff T1, L362 | CLOSED for the requested scope correction | The export now distinguishes the zero-section value/first-action-jet limits from second derivatives and a normal form on a fixed action neighborhood. Construction and invariance of the limiting torus still belong to File 11a-4; this review does not certify that unwritten limit theorem. |

P11A2-01 is also closed for the actual construction: 11a-1's (I3), 11a-2's divisor handoff, 11a-3's finite-stage lemma and the corrected plan all use the upper shell endpoint and direct finite telescoping. P11A2-02 is repaired in 11a-2's sign attribution; the plan still has the old negative equation, recorded below. P11A2-03 is closed by permitting A1=0 and explicitly taking the identity flow. P11A2-04 is closed by the unscaled derivative bound and its E2 sum.

## Findings remaining after the fix round

| ID | Location / label | Severity | Evidence | Exact proposed fix |
|---|---|---|---|---|
| P11A3R2-01 | `adm-budget`, L380; proof convention L385; `ab-T0`, L389 | **major: false constant scope** | c' and the intermediate C,c_i exclude dependence on every a-rate. But `a_s log(1/u)<=C/u` requires C to depend on a_s when a_s ranges freely. This is a genuine failure of the final uniform lower bound, not just a loose intermediate estimate: the realizable fixed-system family below has `epsilon_adm/u^B -> 0` as a_s increases while `(N,mu,rho,tau,c)` stays fixed. | In L380 and L385 replace the dependence list by **`(N,mu,rho,tau,c,a_s)`** (allowing the whole fixed rate vector is also sufficient). Keep independence from u, the family once those rates are fixed, and the iteration index. In L389 write `T0<=C0(1+a_s)u^(-a_s-1)` for a_s>0, or absorb `1+a_s` into the newly permitted C. No exponent changes are needed, and the beta-only corollary has a_s=0. If rate-independent constants are essential instead, rederive the budget with L=2a_s for a_s>0 and L=0 for a_s=0, using `v e^(-v)<=1/e`, v=a_s log(1/u); that is a different B and should be stated as such. |
| P11A3R2-02 | 11a-1 `consumers`, L218, finite-stage explanatory sentence | minor: omitted factor in explanation | The sentence identifies the subtracted divisor error as `|k|_1 |omega_nu-omega_m|_infty`, then says it is bounded by the finite sum `sum ell_j<=gamma T_m^(-tau-1)`. That sum bounds the frequency difference, before multiplication by |k|_1. The displayed divisor result is correct, and 11a-3 L251 performs the multiplication correctly. | Replace that clause by: “the frequency difference is bounded by `sum_(m<=j<nu) ell_j<=gamma T_m^(-tau-1)<=gamma |k|_1^(-tau-1)`, so the subtracted divisor error is at most `gamma |k|_1^(-tau)`.” Keep the finite retained-set domain and every other formula. |
| P11A3R2-03 | `PLAN-11a.md` L79 and L110 | minor: stale plan equations | L79 still gives the negative homological equations despite the corrected positive generator in 11a-2. L110 appends the new fixed-chart application and then retains the old sentence giving shrinking vartheta/loss and T0=epsilon^-2 as the same application. These are incompatible descriptions of the proposed consumer. | At L79 replace both minus signs by plus, retaining the positive-time-flow convention. At L110 delete the duplicated old final sentence; retain the new fixed-chart data and beta-only budget. This does not change the actual 11a-2/3 proofs. |
| P11A3R2-04 | 11a-3 `sec-num` introduction, L372 | minor: incorrect dependency summary | “M,beta enter only through gamma” is false: beta also appears directly in theta_max and the third branch. The new proof correctly includes this extra beta exponent, so it is a prose error. | Replace “M,beta” in that clause by **“d,M”**, consistently with `adm-params` L202, or explicitly say beta also enters theta_max. |

## Adjudication and recomputation of the budget

### The two disputed points

**L=0 when a_s=0 is valid.** The hypothesis then gives s>=c>0 uniformly in u, and the explicit cutoff

`T0=max{1,16/(pi s)[A0+N log(32N/s)]}`

is uniformly bounded. There is no logarithm of u to absorb. My earlier L=a_s+1 choice was conservative; it was not a requirement to spend an extra power when the strip is fixed. Taking L=0 is the appropriate sharpening for the beta-only corollary.

**The writer is also right about s_tau.** In 11a-1 `power-law`, s is locally defined as `rho(tau+1)/mu-N`; the factor `1+1/s` in C_Dio comes from the lattice sum. It is independent of the angular strip width. Renaming it s_tau removes the collision. No a_s term belongs in D for this factor. The first review's displayed D already had this property; a_s enters later through T0 and varsigma0.

These judgments do not resolve the separate uniformity issue in P11A3R2-01: the a_s>0 estimate still has a factor a_s in front of log(1/u).

### General exponent bookkeeping, with the corrected constant scope

From the full C_sub formula, the bracket `1+(4+vartheta^(-1))sqrt(N)d` costs at most `a_vartheta+a_d`; the other diameter factor costs `(N-1)a_d`. Including M/beta and beta^(-1/mu) therefore gives exactly

`D=N a_d+a_M+a_vartheta+(1+1/mu)a_beta`.

The two gamma_* branches give

`G=max{a_beta/rho,(mu/rho)(a_*+D)}`.

With `T0<=C u^(-L)`, the frequency collar contributes `G+(tau+1)L+a_C`, while the geometric collar contributes a_vartheta. Thus J is correct. For Xi, `t0/varsigma0` costs at most a_s, `varsigma0/t0` at most J, and `T0 varsigma0` at most L. Since a_s<=L, `X=max{J,L}` is valid; the extra a_s in the writer script's max is redundant, not an error.

The three lambda branches then have lower-bound exponents

`J`, `G+(N+1)a_s+tau L+X`, `a_beta+a_0+mu J`.

For rho=1 the last exponent is conservative in a_0. For rho=2 the two cases beta<=2M0 and beta>2M0 correctly show

`theta_max >= 2^(-mu-3) min{beta,beta/M0,1} >= c9 u^(a_beta+a_0)`.

All divisions have positive denominators. In particular M0>0 follows from positive finite-type amount: M0=0 would annihilate omega and all derivatives through mu on K_vartheta, hence every derivative through mu of the scalar family on K. The denominator C1 is bounded above polynomially and is at least 1. Squaring the lambda minimum and dividing by 2NC1 gives **B=2H+a_C**, as claimed. The sole error in this chain is the excluded dependence on a_s of the constants in the cutoff estimate.

### Counterexample to rate-independent c'

Fix `N=2, mu=3, rho=2, tau=3, c=0.1`. Take

`h(I)=|I|_2^2/2`, `K=[0,1/2]^2`, `vartheta=beta=epsilon*=0.1`, `M=4`, `M0=C1=1`.

These are realizable standing data: omega(I)=I, the Hessian has max-operator norm 1, the squared scalar family has second directional derivative 2 in its own unit direction, M=4 bounds the required scalar derivatives on K_vartheta, and the diagonal derivative norm M0 is 1. The initial-set volume is 1/4>epsilon*. Let f=0 if an actual perturbation is wanted.

For each rate A>0 form a family with **only** `s(u)=0.1 u^A` varying. All eight family inequalities hold with the same c=0.1, with a_s=A and all other rates zero. The displayed exponent becomes

`D=G=0`, `L=A+1`, `J=X=4(A+1)`, `H=12(A+1)`, `B=24(A+1)`.

Evaluate at the same u=e^(-1) for every A. Then s=0.1e^(-A) and

`T0 >= c0 e^A(A+b)`

with fixed positive constants c0,b. The **upper** bound from the third branch suffices; no assertion about which branch binds is needed:

`epsilon_adm <= epsilon^(3) <= C T0^(-24) <= C' e^(-24A)(A+b)^(-24)`.

Consequently

`epsilon_adm / u^B <= C' e^24 (A+b)^(-24) -> 0`.

Thus no positive c' depending only on the fixed tuple `(2,3,2,3,0.1)` works simultaneously for these families. This is a counterexample to the literal new uniformity claim while fully respecting its hypotheses. It does not contradict a polynomial lower bound for each fixed A.

Independent 90-digit calculations corroborate it:

| a_s=A | Binding branch in these samples | log10(epsilon_adm/u^B) |
|---|---|---|
| 100 | closeness | -171.567434915954 |
| 1,000 | closeness | -192.831927338994 |
| 10,000 | closeness | -216.514332743729 |

Multiplying the ratio by A^24 approaches a positive constant, consistently with the analytic estimate. Numerical evidence is supplementary; the limit argument above refutes the claimed quantifier scope.

### Fixed-data beta corollary

Here a_beta=1 and every other rate is zero, so there is **no a_s-dependent logarithmic constant**. The specialization gives

`D=1+1/mu`, `G=G0=(mu+1)/rho`, `L=0`, `J=X=G0`,

`H=max{G0,2G0,1+mu G0}`.

This proves the stated B0. Equivalently, uniformly for beta in its bounded valid range, the three lambda branches are bounded below by fixed constants times

`beta^G0`, `beta^(2G0)`, `beta^(1+mu G0)`.

The beta and gamma dependence in theta_max, t0 and Xi has therefore all been counted. For rho=2,

`(1+mu G0)-2G0=mu(mu-1)/2>=0`,

so B0=mu(mu+1)+2. The fixed constants M,M0,C1,d,vartheta,s,epsilon* determine c_*. The proof's choice of c as the minimum of their positive bounds and reciprocals is legitimate. Correcting the general proposition's dependence list leaves this corollary unchanged.

The Part-11 consumer must still provide the uniform data it asks to hold fixed, or a proved uniform upper bound for M0, and normalize C1. The current 11a-3 handoff explicitly records that obligation. No displacement budget or full Part-11 interface is certified by this beta-threshold calculation alone.

## Corrected (I3), local step and regression checks

For every m>=0, including m=0, the schedule gives

`S_m=2 lambda0 varrho^m/(1-varrho) <=4lambda0 varrho^m <=gamma T_m^(-tau-1)`.

For `m=nu(k)` and b in K_(nu+1), all increments in the finite sum are defined at b, and

`|omega_nu(b)-omega_m(b)| <= sum_(m<=j<nu) ell_j <= S_m <=gamma |k|_1^(-tau-1)`.

Multiplication by |k|_1 leaves a divisor error at most gamma |k|_1^(-tau). Subtracting it from the stage-m test with margin 2gamma yields the required gamma divisor for every old mode, including the largest mode in a shell. No limit vector is used to construct the finite-stage generator. On K_infinity the same sum extends to infinity and pays `limit-bridge`. The changed 11a-1/2 and plan references now point to this actual finite-stage argument; P11A3R2-02 is only the wording of one intermediate explanation.

The complex collar remains K_(nu+1)+t_(nu+1), with `t_(nu+1)T_nu 2C1<=D_nu/2`; the holomorphic increments still extend over the old collar because they are Fourier averages without divisors. The finite extension and measure argument still use only already constructed stages. No circularity or added Diophantine premise appeared.

For the generator, `{N,phi}=-partial_omega phi` and the positive homological equation cancels the oscillatory linear cutoff under the positive-time flow. The corrected Rus01 attribution is consistent with its row field `(S_y,-S_x)`. At A1=0 both generator coefficients vanish and the map is the identity; neither epsilon nor A1 is divided by in the proof. In the nonzero case the weighted flow estimate gives diagonal blocks at most 2kappa and the lower-left block at most kappa s_nu/sigma_nu, hence the correctly exported unscaled bound. The E2 and E3 proofs retain their stated constants.

The unchanged one-step envelope is still at most `(7/8)epsilon_(nu+1)` from the linear shares varpi/8 and varpi/4 and the quadratic share varpi/2. Strip losses still total at most s/2; the D-7 series has ratio g3<1; the extra Xi condition still pays parameter tails. The C1 normalization preserves every inequality and removes the old small-Hessian threshold pathology.

## Numerical and build receipts

Reran the current writer scripts without changing them:

- `sched.py`: all four cases PASS; epsilon_adm approximately `2.42015e-86`, `1.07072e-158`, `4.20938e-442`, `1.85855e-1036`; quadratic branch then three closeness branches.
- `rand.py`: **40 runs, zero failures**, 17 quadratic and 23 closeness branches.
- `budget.py`: all listed single-rate and joint-rate tests reproduce the stored results. For the all-rates-one families the measured slopes are approximately 63.24 and 92.57, below B=77 and B=116. These fixed-rate tests do not establish the rate-independent constant scope refuted above. The script's slope comparisons also have a 0.5 numerical tolerance; they are diagnostics, not proofs of a uniform lower constant.

Reused the independent polynomial-antiderivative/root-isolation calculation of the bump L1 norms from the first review, with 90-digit mpmath evaluation. Five independent 100-stage schedule tests pass, including `(N,mu,rho,tau)=(1,1,2,0)`, with the E2 threshold 2^-12 and analytic infinite-tail envelopes. Five additional beta-scaling tests, using these independently computed c' values in the scalar schedule, give:

| (N,mu,rho,tau) | B0 | Measured beta slopes |
|---|---|---|
| (1,1,1,1) | 8 | 8, 8 |
| (1,1,2,0) | 4 | 3.99999936, 3.99999999 |
| (1,2,2,1) | 8 | 7.99978508, 7.99999785 |
| (2,3,2,3) | 14 | 13.99978508, 13.99999785 |
| (2,3,1,6) | 26 | 26, 26 |

`cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` exited **0**, producing a **198-page** PDF. The log has **0 lines beginning with `!`** and no undefined-reference warning in Parts 11a-1..3. Parts 11a-2/3 have no overfull boxes; Part 11a-1 has two nonfatal overfull-box warnings. The seven unresolved reference occurrences in the full log are the existing Part-14a cross-track references (`actionnbhd`, `partial-pert`, `partial-domain` twice, `gen-uniform`, `sol`, `partial-core`), outside this review.

Literal label checking over the three Part-11a files found no missing local, K, N or P citation targets. `scripts/lint_sources.sh` exited **0** with `check_lean_modules: PASS (242 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, and `ABI HASHES OK (144 frozen declarations)`. No Lean module changed, so a targeted Lean build and new `#print axioms` results are **not applicable**, not claimed as proof receipts. Report whitespace and `git diff --check` were checked before handoff.

No new suspected defect in a pinned paper was found. The previously reported Rus01 p.200 m_2/m_3 indexing typo remains historical source-audit information; the new failure is in the blueprint's own constant-scope claim. There is no proposed deviation from a frozen statement. Files 11a-4/5, their torus/family/displacement construction and the physical P-FIXED assembly remain outside this readiness verdict.

For subsequent Lean briefs, the hard rules remain verbatim:

1. **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal.
2. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules, preserving public import paths as cheap facades.
