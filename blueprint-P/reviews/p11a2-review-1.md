# Part 11a-2: independent review 1

## Verdict: REVISE the divisor hand-off; ACCEPT WITH FIXES the local analytic step

The Fourier/Taylor cutoffs, parameter Cauchy estimate, abstract divisor lemmas, homological equation, affine flow and canonical-step remainder estimate survive recomputation. In particular, the displayed remainder constant and real angle Lipschitz constant are valid. The homological equation has the correct **positive** sign for the frozen Hamiltonian field and composition by the positive-time flow.

The claimed attachment to the stage-selection interface is not yet justified. Part 11a-1's current (I3) concerns a limiting frequency and contains a reversed cutoff-endpoint inequality; it cannot simply supply the finite-stage hypothesis used here. This is a **major hand-off issue**, not a refutation of the abstract divisor lemma or local canonical step. I found no defect in a frozen statement and no new suspected defect in the pinned papers. This review does not establish P-FIXED or the unwritten iteration.

## Scope and materials

- Reviewed all **333 lines, 54,644 bytes** of `blueprint-P/parts/p11a2-cutoff-step.tex`, SHA-256 `8f7344f13739091bd4c29aa81da29f423035a41e821f38cad4a1df7e5240b7a8`.
- Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the complete review brief, writer conventions, model review, track-P plan/source/notes material, and the five-file `PLAN-11a.md` (SHA-256 `8ac97b625a929f1fc6d19105551dce72ba03ae67381da4ce4edab8dd41df7050`). HEAD observed during the review: `d90f4c6a67d1e19bcf9e79f3158da91c12bf5d4b`.
- Checked current Part 11a-1, its first review, and the earlier Rüssmann source review. In particular, checked the actual current `limit-bridge` and (I1)–(I3), rather than assuming the earlier review's proposed repairs had all succeeded.
- Read the relevant pinned Rus01 pages directly: printed pp.134–137, 143, 148–164 (PDF page = printed page minus 118), including (11.12), the divisor extension on p.150, the simple canonical form, and the iteration/remainder formulas. Read Rus05 §§9–11, pp.26–31, directly, and CP09 Lemma 8/Remark 5, PDF pp.18–19. Source hashes agree with docs/sources.json: Rus01 `cf2066ad478e5a42e737ce1d875967f902ab6050344b7e85909137bdacc1de30`; Rus05 `8c0951b8945992b849d3cb4a405d370c317e7b1bfd11e919db23e28a2d98c879`.
- Checked N Part 4's Cauchy/parameter/weighted-norm interfaces and Part 5's setting, general small-field flow, symplecticity and Taylor identity. Checked all K references used here, including the exponential sums and lattice count. Read the frozen P-FIXED, FixedKolmogorovSet, IsPhysicalTorus, HamiltonianVectorField and IsDiophantine declarations.

Only this review file is an intended edit. No manuscript, plan, frozen file, manifest or generated root was edited; no state-changing git command or Lean build was run. Concurrent unrelated workspace edits were left alone.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| P11A2-01 | `divisor-wide` proof, L153–155; canonical-step (C2), L252; hand-off T1/T5, L315/L319; inherited 11a-1 (I3), L216 | **major, consumer interface** | The abstract lemma correctly assumes `|u_k-v| <= gamma |k|^(-tau-1)`. Its claimed source, (I3), bounds `|omega_* - omega_stage|` only on `K_infinity`, whereas the step needs old-to-current stage differences on the entire finite retained set. Two bounds to a limit give twice the allowed error, not the required single gamma margin. Moreover (I3) says `sum_{j>=m} L_j <= gamma T_(m-1)^(-tau-1)` suffices for modes `T_(m-1)<|k|<=T_m`; the inequality points the wrong way. With gamma=1, tau=1, endpoints 10 and 20, a tail 0.01 meets that prescription but the mode of length 20 needs at most 0.0025. T1's alternative `E=K_(nu+1)` is consequently an additional contract to prove, not already supplied by (I1)–(I3). | Keep both abstract divisor lemmas. In 11a-3 prove increment bounds `|Delta omega_j(b)|<=ell_j` wherever the finite retained-set construction evaluates them, and require `S_m := sum_{j>=m} ell_j <= gamma T_m^(-tau-1)` for **every m>=0**, including stage 0. For retained `b` at stage nu and `m=nu(k)<=nu`, prove directly by telescoping that `|omega_nu(b)-omega_m(b)|<=sum_{j=m}^{nu-1}ell_j<=S_m<=gamma |k|^(-tau-1)`. Maintain the stage-m mode test on every later retained set. This supplies `divisor-wide` on the finite retained set without using the unknown limit. Separately pass to the limit. Correct the endpoint in current 11a-1 (I3) and PLAN-11a through their owners, and make T1/T5 explicitly conditional on this finite-stage invariant. |
| P11A2-02 | sign convention L28; D-12, L308 | minor, source fidelity | The file's equation and cancellation are correct, and they correct the plan's negative sign. But the claim that this generator has the opposite sign to Rus01 is false after converting rows to columns. Rus01 10.1.8 uses `J_src=[[0,-I],[I,0]]` and the row field `S_x J_src=(S_y,-S_x)`. Its bracket `{S,N}=partial_omega S` and (11.12) `i(k.omega)U_k=G_k` therefore give the same positive solution as here, with the expected period-one factor 2pi. | Keep all equations and generators unchanged. Replace the claimed sign deviation from Rus01 by: “Same scalar Hamiltonian field/bracket as Rus01 after row/column conversion; positive homological sign corrects the negative sign in PLAN-11a.” Explain that the displayed J matrices differ because of row versus column multiplication. |
| P11A2-03 | `affine-flow` hypothesis L202; canonical-step data and `cs-flow`, L242–249/L273 | minor, zero-size edge case | `affine-flow` requires `A_1>0`, but canonical-step allows `epsilon=0`, hence `A_1=0`. The proof applies that lemma without handling this case. The claimed step remains true: R=0, the zero-average generator is zero, and the map is the identity. | Allow `A_1>=0` in `affine-flow` (its proof already works at zero), or split off `epsilon=0` explicitly in canonical-step. Do not add an unnecessary positive-perturbation hypothesis downstream. |
| P11A2-04 | hand-off T3, L317; `affine-flow`(d), L211 | minor, explicit downstream norm obligation | The bound `|DX-I|_nu<=2 kappa` uses a stage-dependent norm. Summability of `kappa_nu` alone is not an unscaled derivative bound for the full evaluation map. The real estimate controls only the angle block. The lower-left block has the separately displayed bound `kappa s/sigma`; it can be much larger. This file does not falsely assert a full-family bound, but T3 should prevent that interpretation in 11a-4. | Add to T3 the unscaled bound `|DX-I|_infinity <= 2 kappa + kappa s/sigma`, obtained from the triangular blocks, and require the consumer to control its sum or provide another fixed-metric composition argument. Export separate action, angle and parameter budgets for the target lambda-Lipschitz defect. Alternatively prove a uniform comparison of the chosen stage norms with the fixed target norm. |

P11A2-01 is an inherited-interface failure now relied on by the reviewed file. It does **not** make a divisor assumption illegitimate in the local lemma: that is a legitimate source premise for a conditional one-step result. It prevents claiming that the planned selection procedure already pays that premise. A suitable finite-stage invariant is the remaining obligation.

## What I recomputed (refutation attempts that failed)

### Fourier constant, loss and loss sum

With `a_N(j)=#{k:|k|_1=j}<=2*3^(N-1)j^(N-1)`, coefficient decay gives the tail `sum_{j>T} a_N(j) exp(-2pi jd)`. Splitting the exponential and maximizing `j^(N-1)exp(-pi jd)` gives

`tail <= 2*3^(N-1)((N-1)/(e*pi))^(N-1) [d^(-(N-1))+d^(-N)/pi] exp(-pi Td)`.

The N=1 case uses the value 1 for the zero power. Bounding the bracket by `(1+1/pi)(1+d^(-N))` and replacing N-1 by N proves the stated

`c_N=2(1+1/pi)(3N/(e*pi))^(N-1)`.

Its first six values are approximately 2.636620, 1.852484, 2.928490, 7.315739, 25.097769, 109.695360; in particular the N=2 case is covered despite the base being below 1. No missing dimension factor appears. Vector values use coefficientwise max norms, not sums of component sup norms.

For `A=log(2c_N/alpha)+N log(pi T)>1` and `d_T=A/(pi T)<=1`, the substitution gives

`c_N(1+d_T^(-N))e^(-A) <= 2c_N(pi T)^N e^(-A)=alpha`.

Both stated monotonicities hold: the T-derivative has numerator `N-log(2c_N/alpha)-N log(pi T)<0`. The geometric sum uses exactly `sum Theta^(-nu)=Theta/(Theta-1)` and `sum nu Theta^(-nu)=Theta/(Theta-1)^2`. The positivity, `d_T<=1`, and total angular-width budget remain explicit consumer obligations. The hand-off correctly charges **all three** losses `d+delta+2sigma`, not just d.

As an independent supplementary calculation, I used the exact shell count `sum_{l=1}^{min(N,j)} 2^l binom(N,l) binom(j-1,l-1)` for 150 finite-tail checks (N=1..6, five widths, five cutoffs): maximal computed ratio to the proposed bound was 0.106511. In 53 admissible direct loss-choice substitutions the maximal ratio to alpha was 0.337258. These finite sums are numerical evidence only; the preceding analytic argument controls the infinite tail.

### Taylor cutoff and parameter Cauchy

Restricting F to the complex line in the direction `eta/|eta|_infinity` gives `|DF(0)eta|<=M|eta|/s` and the remainder `M q^2/(1-q)`. This avoids an unnecessary N factor in the *whole* linear Taylor polynomial. The separate columns have bound M/s. Therefore the composed cutoff has `|R_*|<=2(1+E_T)epsilon` and error `epsilon[q^2/(1-q)+2E_T]`, exactly as stated. Fourier integration preserves holomorphy in the parameters through N's `ext-param`.

For parameter derivatives, the auxiliary j-variable polydisc has each radius `(t-t')/j`. Mixed Cauchy differentiation yields the full operator bound `j^j M/(t-t')^j`. There is no missing factorial or polarization factor: every auxiliary variable is differentiated once. The argument works on an arbitrary union of polydiscs `E+t`; convexity of E is never used.

### Divisor extension, Lambda_delta and homological solution

The segment from a real centre b' to b stays in its polydisc, so `|k.(omega(b)-omega(b'))|<=TLt`. The condition `tTL<=D/2` gives a complex divisor at least D/2. Thus the coefficient denominator `2pi i k.omega` has modulus at least pi D, and is nonzero throughout B.

The product of one-dimensional lattice sums gives exactly

`Lambda_delta=coth(pi delta)^N-1=sum_{k!=0}exp(-2pi delta|k|_1)`.

Both upper bounds follow from K's `exp-sums` at `x=2pi delta`, including `(4N/(pi delta))^N`. This proves `|phi_0|<=Lambda_delta M_0/(pi D)` and each corresponding phi_1 bound. Uniqueness is claimed only among the finite-degree zero-average polynomials, where the tested divisors suffice. Conjugate symmetry proves reality without requiring symmetry of the entire parameter domain.

The bracket calculation is ` {N,phi}=-partial_omega phi=-(R_*-<R_*>)`. A direct test is `N=omega eta`, `R=a cos(2pi theta)`: the generator `phi=a sin(2pi theta)/(2pi omega)` shifts eta by `-a cos(2pi theta)/omega`, and `H o Phi=omega eta` exactly. Reversing its sign doubles the oscillatory term. The mathematics of D-12 is correct; its historical description needs P11A2-02.

### Affine flow and every domain loss

On `Omega=T_(r1-sigma) x B_s`, Cauchy gives the field bounds `A_1` and `A_eta=(N+1)sA_1/sigma`, so its scaled norm is at most `kappa=2(N+1)A_1/sigma<=1/2`. N's `flow` is stated for an arbitrary complex norm and a sup bound; no conversion from a weighted Fourier norm is needed here.

The half-domain has angle/action margins sigma/2 and s/4; the full-domain has margins sigma and s/2. They therefore lie in N's `Omega^(1/2)` and `Omega^1`, respectively. The derivative and inverse contracts are applied on the correct smaller domain. Images of that smaller domain lie in the half-domain by the component displacements. The lower-left derivative bound is exactly `kappa s/sigma`. The autonomous angle equation and linear inhomogeneous action equation give the affine form, and the symplectic block identity gives `M=(DTheta)^(-transpose)`.

Appending a stationary parameter to the field proves joint holomorphy locally at each b; taking a small parameter radius uses only openness of B, not a uniform parameter collar. This use of N's flow(b) is valid.

### Canonical-step remainder constant

N's Taylor identity gives precisely

`R_+=(R-R_*)+integral_0^1 {u_t,phi}(Phi^t z)dt`, with `u_t=(1-t)w+R`, `w=-(R_*-<R_*>)`.

Thus the cutoff error is evaluated at the original z; its omission of a composed argument is intentional and valid. On `T_(r-d) x B_s`, `|w|<=4(1+E_T)epsilon` and `|u_t|<=U=(5+4E_T)epsilon`.

Trajectories from `T_r+ x B_(qs)` satisfy `|eta_t|<qs+s/4`, with q<=1/2. Cauchy radii sigma in theta and `(1-q)s/2>=s/4` in eta stay in the u_t domain. Consequently each bracket is bounded by

`N[U A_1/sigma + (4U/s) A_eta]=N(4N+5)U A_1/sigma`.

Substitution produces exactly

`N(4N+5)(5+4E_T)(1+E_T)Lambda_delta epsilon^2/(pi D s sigma)`.

For E_T<=1, the product is at most 18; for q<=1/2, `q^2/(1-q)<=2q^2`. All coefficients in the two displayed remainder bounds are therefore justified. No bound on h or omega themselves was silently inserted into this cancellation. The output action radius qs and angular radius `r-d-delta-2sigma` are correct, and all parameter derivatives follow from the uniform bounds on B.

### Real Lipschitz bound and hand-off

The row sum is bounded by `2pi sum_k |k|_1 |phi_hat_(1,i,k)|`, hence by `2pi T sum_(k!=0)|phi_hat_(1,i,k)|`. The homological coefficient estimate makes this at most

`Lambda_R=2T(1+E_T)epsilon Lambda_(r-d)/(Ds)`.

The real variational equation gives `|DTheta^t-I|<=exp(Lambda_R |t|)-1`; the stated time-one bound follows. It is an angle-map estimate, not yet the Lipschitz bound of the full parameterized torus family. T2 and T4 correctly export the action/frequency and holomorphic parameter sizes. T3 additionally needs the fixed-norm obligation in P11A2-04. T1/T5 need the finite-stage divisor invariant in P11A2-01. These are tasks for 11a-3/11a-4, not premises to add to frozen P-FIXED.

## Source fidelity, frozen scope and formalizability

The replacements D-4/D-5 avoid the approximation-theory imports rather than proving the original multiplier theorems. The direct cutoff is sufficient for this one-step result. Rus05 (46)'s existing rescaling issue is still avoided: after both norm/cutoff conversions the argument of E is `T rho/N`, not the printed `T rho`. This is the previously recorded R05-2, not a new erratum. Rus01's coefficient, divisor-extension and simple-form formulas agree after the explicit convention changes. Its §§13.6–13.12 are only structural comparisons here; its numerical constants and CP09's admissible perturbation threshold are not proved by importing them. The file candidly marks those iteration pages as unread by its author; I counterchecked the relevant formulas directly.

This file proves local auxiliary statements, with no assertion of the frozen P-FIXED theorem. Its analytic/divisor hypotheses are appropriate for those statements. The frozen headline still requires construction of the retained family, quantitative closeness, physical chart transport, positive finite measure, all-phase collision/pair bounds and the specified global dynamics. None is certified merely by compilation of this blueprint. The period-one field and divisor conventions agree with the frozen definitions.

All literal references resolve in the current source trees: 22 distinct local `ref` targets, 11 K targets and 11 N targets. K/N macros render textual citations, so this was checked separately from LaTeX. N `general-cauchy` is indeed a first-derivative lemma; the new general-order parameter lemma supplies the missing higher orders. The Cauchy/Taylor external facts and linear ODE facts are standard and plausible formalization tasks. `Complex.hasSum_taylorSeries_on_ball` and `ODE_solution_unique` exist in the pinned Mathlib; the suggested exact name `norm_cauchyPowerSeries_le` was not found. This is explicitly an unverified hint in the file, not a mathematical dependency failure. No Lean implementation or kernel validation is claimed.

## Validation receipt and limitations

`cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` exited **0**, producing a **162-page** PDF. The log has **0 lines beginning with `!`**. Part 11a-2 occupies printed pp.133–142, has **no undefined references and no overfull boxes** in its log segment. The full document has seven unresolved reference occurrences, all in Part 14a: `bpN:p0:actionnbhd`, `partial-pert`, `partial-domain` (twice), `bpN:p3:gen-uniform`, `bpN:p0:sol`, `partial-core`. These are outside this review's part.

`scripts/lint_sources.sh` was run. The first attempt exited 1 after `check_lean_modules: PASS (220 Lean files, 0 comparator configurations)` and two `Terminated` messages; no lint failure diagnosis was printed. The second attempt exited **0** with `check_lean_modules: PASS (220 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, and `ABI HASHES OK (144 frozen declarations)`. No Lean modules were changed, so there is no targeted Lean build or new main-result `#print axioms` receipt: **not applicable**, rather than an asserted axiom-free Lean proof.

`git diff --check -- blueprint-P/reviews/p11a2-review-1.md` exited **0** with no output. Since the report is a new file, a separate direct whitespace check was also run: **0 trailing-whitespace lines**. The reviewed manuscript's SHA-256 was rechecked and is unchanged.

For downstream Lean work, the brief's rules remain verbatim:

1. **Never use `set_option maxHeartbeats`** (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget. If a proof will not elaborate at default heartbeats, report it as a design signal.
2. **No Lean file may exceed 1500 lines of code.** When a file approaches the cap, split it into focused modules, preserving public import paths as cheap facades.

Uncertainties are confined to the future schedule/retained-set construction, fixed-metric family control, and unverified Lean API hints. No new source erratum or deviation was introduced by this review; the author-declared analytic replacements remain replacements, with the sign attribution correction requested above.
