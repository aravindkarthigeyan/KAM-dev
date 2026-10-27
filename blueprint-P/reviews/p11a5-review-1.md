# Part 11a-5: independent blueprint review, round 1

**Verdict: ACCEPT WITH FIXES.** No blocking or major finding. The monotone minorant is positive, is below the 11a-3 threshold, has the claimed monotonicity, and retains the general polynomial exponent B and the beta-only exponent B0. The quantitative theorem assembles the preceding four files in the required order, including the genuinely zero perturbation. D-23..D-25 are justified.

The corrections below are local: state K6 for the named displacement bound, put the union of compact tori in the correct quotient space, complete the zero-case treatment in the physical-interface proof, and update the consumer citations. They require no new estimate, hypothesis or source theorem. This review does not certify all of Part 11 or Part 13, nor does it constitute a Lean proof of P-FIXED.

## Reviewed snapshot and materials

- File: `blueprint-P/parts/p11a5-quantitative-theorem.tex`, **161 lines; 31,769 bytes**; SHA-256 **`02a939bcb14a045c1c8cbab3624144ffa2fe89791827708744b81781f58e1ab5`**.
- Starting HEAD **4dc8ccf**, the Part 11a-5 commit. Concurrent activity subsequently committed the preceding 11a-4 review at **022dfcc** and a graph-N amendment at **b58352f**; the reviewed manuscript hashes remained unchanged.
- Followed AGENTS.md, docs/PLAN.md, the relevant decisions, the complete `.drafts/briefs/bp-review.md`, the writer convention ruling and the track-P plans. Used the current Part 11a-4 review as an input, rather than assuming its conclusions without checking their scope.
- Read the entire new file. Checked 11a-1's finite-type and power-law formulas; 11a-3's initial inequalities, actual-M0 convention, parameter selection, general budget and beta corollary; and 11a-4's free radius, limit tori, displacement, gamma-inverse and evaluation-map contracts. The 11a-3 and 11a-4 hashes remain `a2715ad9...6c406` and `2e30df0f...3cb8d`, the snapshots used in the preceding reviews.
- Compared the exact `bpP:p11:kam-input` datum and K1..K6, the Part-11 wrapper's uses of its constants, and Part 13's general-n wrapper use and dependency notices. Compared the frozen Hamiltonian vector field, symplectic form, primary torus, Diophantine and planetary physical-torus definitions. This file does not state a new frozen theorem.
- Read the pinned sources directly: Rus01 Theorem 1.7, printed p. 126 (PDF page 8), and Section 14.10, p. 171 (PDF page 53); CP09 Theorem 3, pp. 6–7, and Lemma 8, Remark 5, (34)..(47), pp. 18–21. The Section-15 limit argument was checked directly against the pinned PDF in the immediately preceding 11a-4 review. Consulted the track-K measure/extension infrastructure and track-N ODE uniqueness ownership.

Only this report was written for this task. No manuscript, frozen definition, manifest, numerical script or consumer file was edited. No state-changing git command or targeted Lean build was run.

## Findings and exact proposed fixes

| ID | Location | Severity | Finding / evidence | Exact proposed fix |
|---|---|---|---|---|
| P11A5-01 | `weak-kam-quantitative` (K6), L87; `qt-k6`, L109; interface comparison, L144 | **minor** | Part 11 asks for `Delta<=c_D epsilon_f^(kappa_D) beta^(-a_D)`. The new theorem instead prints only `sup |u_b|<=...`, while K3 has fixed Delta to a particular numerical upper bound. A bound on the actual defect alone does not imply a bound on that chosen upper bound. The required stronger inequality nevertheless follows immediately from the explicit Delta formula and `gamma-inverse`; no analytical gap remains. | State `sup |u_b|<=Delta(epsilon_f;d)<=c_D epsilon_f^(1/2) beta^(-G0)` in K6. In `qt-k6` use `Delta<=c_Delta sqrt(epsilon_f)/gamma<=c_Delta c_gamma sqrt(epsilon_f) beta^(-G0)`, with `c_D=c_Delta c_gamma`. This also holds at epsilon_f=0. Update the interface sentence to refer to this strengthened clause. |
| P11A5-02 | `physical-interface` (d), L122; `pi-d`, L133 | **minor** | The left-hand set tilde S was defined in the covering space `R^N x R^N`, whereas the right-hand pieces `K_b(R^N)/~` are tori in `(R^N/Z^N) x R^N`. They are not subsets of the same ambient space. Already for f=0, tilde S is `R^N x H0`, not a union of those quotient subsets as printed. The intended quotient statement and the lifted disjoint-union statement both follow from equivariance and K4. | Write `tilde S = disjoint_union_(b in H) K_b(R^N)` in the covering space, and `q(tilde S) = disjoint_union_(b in H) q(K_b(R^N))` for the quotient map q. Call the second family embedded compact Lagrangian tori. For quotient disjointness, explicitly use `K_b(theta)=K_b'(theta')+(k,0)=K_b'(theta'+k)` and K4 to deduce b=b'. |
| P11A5-03 | `zc-set`, L64; `physical-interface` proof, L127–133 | **minor** | The theorem correctly handles epsilon_f=0, but the physical corollary unconditionally cites 11a-4's evaluation theorem and free radius, both stated for a positive epsilon. Those results cannot be applied to the identity family selected in the zero branch merely by naming another positive bound. Also `zc-set` identifies D1,D2 with theorem assumptions A1,A2; they are actually A2,A3. | At the start of the corollary proof split epsilon_f=0: by `zero-case`, S is `[0,1)^N x H0`, tilde S is `R^N x H0`, the curves are `(theta+t omega(b),b)`, and all measure, domain, compactness and quotient assertions follow directly. Continue with epsilon_f>0 for the existing citations. In `zc-set` replace “(A1), (A2)” by “(A2), (A3)”. |
| P11A5-04 | Consumer handoff: Part 11 `kam-input`, especially L27/L40, and final dependency paragraph L270; Part 13 L7, L138, L180–181, L195, L199 | **minor, cross-file handoff** | The writer's reported citation mismatch is real. `adm-budget-beta` proves a lower bound for the old threshold, which does not by itself imply that bound for a smaller monotone threshold. The new `budget(d)` proves exactly the needed result. Both consumers also still describe now-existing 11a-4/5 labels as unwritten/open. Part 11a-5 accurately flags this but cannot silently change the consumer's literal contract. | In Part 11 identify the selected threshold as `epsilon_adm^flat` of `thresholds`, cite `budget(d)` / `bpP:p11a:bu-beta` for K5 and `budget(c)` for any general-rate application. Retain `adm-budget-beta` only as the predecessor result for `epsilon_adm^(3)`. Replace the stale “not yet written”, forward/open-dependency and conditional-on-unwritten-11a-4/5 notices in Parts 11 and 13 with the actual labels and current review status. Keep any independent source gaps outside this review intact. |

The preceding P11A4-01 sign typo is still present in 11a-4. It is a nonblocking algebraic correction: canonicity preserves both signs of the symplectic form, so the zero pullback assembled here is valid after that correction. The older nonblocking P11A3R3-01 necessity-example wording is also unchanged and is not used in this assembly.

## What I recomputed: thresholds and monotone budget

### Positivity and the minorant comparison

Positive measure of compact K in dimension N>=1 implies K is nonempty and its max diameter d is positive. The lattice gap `s_tau=rho(tau+1)/mu-N` is positive. Consequently C_Dio is positive finite, both branches of gamma_star are positive, and gamma, bar T, t_flat, bar Xi, theta_max, lambda_flat and epsilon_adm_flat are positive finite. Every division and real power is guarded. The formulas depend only on the numbered data, not on h, f, the actual frequency norm or a torus.

The C_Dio formula agrees with 11a-1 at m=N, including the factors `beta^(-1/mu)`, `N^(rho/(2mu))` and `2*3^(N-1)(1+1/s_tau)`. The gap is not the angular strip. Gamma is exactly the preceding files' gamma_star/2.

For comparison with the original threshold at M0'<=M0:

`T0<=bar T`, `t_flat<=t0<=1`,

`Xi <= 2^(tau+1)(1+1/varsigma+1/t_flat+bar T varsigma) = bar Xi`.

The two ratio inequalities use `t0<=1` and `varsigma<=1`; neither assumes the Cantor set has interior. Term by term,

`t_flat/8 <= C1 t0/8`,

`min{varpi/2,2^-10/bar Xi} gamma varsigma^(N+1) bar T^(-tau) <= min{varpi/2,2^-10/Xi} gamma varsigma^(N+1) T0^(-tau)`,

`theta_max(M0) t_flat^mu <= theta_max(M0') t0^mu`.

The common positive factors have been suppressed in the last two lines. The second comparison needs tau>=0, available here; the third uses the decreasing dependence on M0. Taking the minimum and then dividing its square by the same `2 N C1` proves the minorant, including the actual-M0 reduction. A smaller perturbation threshold does not by itself prove a lower budget; the separate proof of budget(c) is therefore essential and was checked independently.

### Every monotonicity direction

Gamma is nondecreasing in beta, vartheta and epsilon*, nonincreasing in M,d, and independent of s,M0,C1. For s in (0,1],

`bar T = 1 + (16/pi) (|A0|+N log(32N/s))/s`,

`d bar T/ds = -(16/(pi s^2)) (|A0|+N log(32N/s)+N) < 0`,

`d(s bar T)/ds = 1-16N/(pi s) < 0`.

The second derivative calculation matters: controlling bar T alone would not determine the direction of its product with varsigma. These two inequalities show that t_flat increases and bar Xi decreases when the strip increases. The other directions follow from the collar minimum and the reciprocal collar in bar Xi. For rho=2 the beta-dependent fraction in theta_max has derivative proportional to `2 M0/(2 M0+beta)^2>=0`; it decreases with M0. Each lambda branch therefore has the stated directions. Its square divided by C1 preserves nonincreasing dependence on C1. There is no hidden C1*t_flat increase in the first branch, precisely because D-23 removed that factor.

### General and beta-only exponents

Under 11a-3's rate hypotheses the new construction gives exactly

`gamma >= c2 u^G`, `bar T <= C u^(-L)`, `t_flat >= c4 u^J`, `bar Xi <= C u^(-X)`.

Here `L=0` when a_s=0, and `L=a_s+1` otherwise. The logarithm introduces the permitted coefficient dependence on a_s; no other rate enters the lower constant. In bar Xi, `a_s<=L<=X` and `J<=X` control all four terms. The three lower-bound exponents for lambda_flat are

`J`, `G+(N+1)a_s+tau L+X`, `a_beta+a_0+mu J`.

Removing C1 from the first branch does not worsen this conservative exponent: the old proof also bounded that branch below by a constant times `u^J`, using C1>=1. The third branch's bound for theta_max remains valid even when beta is not bounded above by 1 in the general-rate proposition. Thus the minimum has exponent H, and the denominator adds a_C after squaring: `B=2H+a_C` exactly as claimed.

With u=beta, a_beta=1 and all other rates zero, `G=G0=(mu+1)/rho`, `L=0`, `J=X=G0`, and `B0=2 max{2G0,1+mu G0}`. For rho=2, `1+mu G0-2G0=mu(mu-1)/2>=0`, giving `B0=mu(mu+1)+2`. The chosen common c is positive and depends only on the fixed entries, including M0,d. No estimate in this proof depends on f or on the iteration index.

## What I recomputed: assembly, zero case and consumers

The order is numerical/geometric data, then epsilon*, then gamma and epsilon_adm_flat, then h,f and their perturbation bound. Equivalently epsilon* may be included in the datum as this file does; the formulas still establish the stronger uniformity over all admissible h with those bounds. Actual M0 is introduced only to apply the old theorem, and budget(a) pays the comparison uniformly. In fact its possible-zero aside is unnecessary: finite type with beta>0 rules out an identically zero C^mu norm on K_vartheta, since omega=0 there would make all the tested jets vanish. Thus the actual norm can be used directly without weakening 11a-3's equality convention.

For epsilon_f>0, `epsilon_f<=epsilon_adm_flat<=epsilon_adm^(3)(actual M0)` permits the adapted radius of 11a-4. Its lambda0 and all iteration hypotheses are established outputs. The measure set and limit frequencies come from parameter selection; the tori, derivative/flow identity and Lagrangian property come from the limit-torus theorem; the full family estimate and cell measure come from evaluation-bilipschitz. No conclusion-shaped hypothesis is used at any transition.

For epsilon_f=0, the sup bound forces f=0 on its actual analytic domain. Testing the original omega with margin 2 gamma is legitimate because `2 gamma=gamma_star`; the scalar-sublevel smallness guard is strict, `2^(-rho) beta/4<beta/4`. The good set H0 is a closed subset of compact K, with the required measure. The maps `(theta,b)` have zero defect, injective tangent derivative, zero symplectic pullback and the exact all-time Hamiltonian trajectory. The evaluation map is the block swap. In particular K3's explicit Delta is zero, and the same positive c_D works in K6 without taking any radius at epsilon=0. D-24 closes the endpoint rather than passing a degenerate radius through the iteration.

The larger exponent condition `tau>max{N mu/rho-1,N-1}` implies tau>0 and supplies the extra strict lower bound in the frozen physical-torus definition. It is compatible with every preceding estimate and with Part 11's `tau_D=max{n mu,2n}` at N=2n, rho=2. D-25 is a valid restriction for the physical consumer, not a new frequency hypothesis or a claim that earlier estimates needed it.

For the positive branch the action displacement is `<s0<=vartheta`, so complete trajectories remain on the domain where H is analytic. For the zero branch they stay at b in K. Thus all-time existence comes from the explicit trajectory, with uniqueness from local Lipschitz continuity. The shared uniqueness result can be cited as `bpN:p3:gen-uniqueness`; there is no need for a new ODE theorem. Equivariance supplies the compact quotient; the covering set itself is unbounded in the angle direction, as reflected in P11A5-02.

The closed action neighbourhood in physical-interface(b) does fit inside the stated open `K+2^-18`, although the printed proof only writes a non-strict bound. A strict margin is already available: `c_Delta sqrt(epsilon_f)/gamma=Q0/128`, and `Q0<=varpi/2`, `E_*>=9`, give `Delta<=2^-26<2^-18`. At epsilon_f=0 it is zero. This closes the open-neighbourhood detail without assuming `2^-18<vartheta`; actual membership in U is supplied separately by the component action bound.

At N=2n, rho=2, the Part-11 datum and analytic/finite-type/Hessian/norm assumptions match. Its assumption numbering does not literally match the new theorem's numbering: Part 11's A1,A2,A3,A4 correspond to new A2,A3,and the two bounds in new A4, with holomorphy in new A1. This is a presentation difference, not an additional hypothesis. K1..K4 are supplied exactly, K5 uses the new budget(d), and K6 is paid by the explicit Delta calculation in P11A5-01. The exponents used in the preparation order can therefore be fixed before the physical coupling. Part 13 uses Part 11's wrapper, not a new h-dependent or coupling-uniform Diophantine constant. All seven 11a labels in its dependency notices now exist; `reference-constants` is neither needed nor cited there.

## Source fidelity and limits

The pinned Rus01 theorem has a compact large retained set, canonical maps and Diophantine torus dynamics. Its threshold survey has the general approximation-function and elliptic/hyperbolic constants; it is not the explicit monotone maximal-case formula proved here. CP09 Theorem 3 has the bi-Lipschitz zero-section map and Lemma 8 displays a squared minimum threshold, but its maximal specialization and quantitative application require the repairs already documented in the earlier files. This file correctly derives its formulas from those repaired inputs rather than substituting p=q=0 into meaningless printed factors. D-23 is an additional explicit lower envelope with a separately proved polynomial lower bound. No off-section normal form is imported from either source.

The already reported CP09 p. 21 issue remains visible in the pinned text: “epsilon0 <= cbar epsilon^nu0” is an upper-bound assertion at the point where admissibility needs a lower bound. This is the existing E-P-CP09-2, not a new erratum. Budget(c),(d) provide the needed direction. No new suspected source erratum, frozen defect or review-introduced deviation was found.

## Validation receipt

- Ran `cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0**, **222 pages**, **0 lines beginning with `!`**. Part 11a-5 has **0 overfull boxes and 0 undefined-reference warnings**. Seven existing undefined-reference occurrences remain in Part 14a, outside this scope.
- Independently checked **88 reference occurrences / 43 distinct targets** in the reviewed file against the local and cross-track label inventories: **no missing target**.
- Independently tested the scalar threshold formulas at 60-digit precision on 500 tuples, fixed seed 171105, with N=1..6, mu=1..5, both rho choices and admissible tau. All **4,500 minorant and coordinate-monotonicity comparisons passed**. These tests use a common arbitrary positive chain constant in both formulas, not an approximation asserted to be the actual bump constant, and need not arise from actual Hamiltonians. They test the algebraic comparisons, which are uniform in that positive constant; the proofs above establish the claims for the actual one. No numerical experiment is used as a theorem hypothesis.
- The initial `scripts/lint_sources.sh` and one diagnostic retry exited **1** after reporting the module check and frozen-file guard, without an ABI result or explanatory diagnostic. A subsequent `LEAN_NUM_THREADS=2 nice -n 5 scripts/lint_sources.sh` completed with **exit 0**: `check_lean_modules: PASS (260 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (144 frozen declarations)`. No cause is inferred for the earlier unsuccessful runs.
- `git diff --check` exited **0**. The report has no trailing whitespace and ends with a newline. Rechecked the reviewed manuscript SHA-256 unchanged; no consumer or other writer's work was altered.

No Lean module changed in this task; a targeted Lean build and new `#print axioms` output are not applicable. No ABI or source-lint result is being inferred merely from successful LaTeX compilation.
