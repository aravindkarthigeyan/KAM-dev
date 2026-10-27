# Part 12 review 1: N-AVERAGING

Reviewer: independent mathematical audit. Date: 2026-10-27.

**Verdict: REVISE.** The proposed route is viable and the frozen statements need no change. Three local errors must be corrected before the written proof is approved: the inverse-flow argument reverses the vector field, two regularizer inequalities are false at zero under Lean's total division, and the coefficient-holomorphy application uses the wrong action width. The slab estimate, pointwise envelope, transport, stopping argument, and final constants survive these corrections. There is no reason to reject the route or reinstate the cohort/Gronwall construction.

**Part 12 ready for graph extraction: NO**, pending the major corrections below. This is a mathematical blueprint review, not a provider proof or sealing receipt.

## Inputs and scope

Read the complete specific and generic review briefs, AGENTS.md, docs/PLAN.md, docs/DECISIONS.md through D29, the track-N blueprint plan/preamble, the convention ruling in bp-part-writer.md, the v0.5 statement/source/notes packet, its independent audit and approval packet, and the model track-K review. The historical “unapproved” wording in the v0.5 packet is superseded by D28 and the current frozen files.

Reviewed:

- `blueprint-N/parts/p12-averaging.tex`: 309 lines, 43,380 bytes; SHA256 `69fdefa09a0a61c69942d909b4681722698cd3587a629051e4e52cf4053b5f2f`.
- `blueprint-N/parts/p0-conventions.tex`: D28 subsection L342–407, within a 407-line, 35,933-byte file; whole-file SHA256 `756e6f2e801cb5938a029adf9fb480def80f123b6842d6f03769e4a2ce66c6ca`.
- Authoritative frozen `AveragingMean.lean`, `AveragingMost.lean`, `HasAveragingFrequencyRank.lean`, `AveragingError.lean`, and their analytic/solution definitions. No implementation/provider was used as evidence.
- Actual cited statements in N Parts 1, 3, 4, 5 and K Part 1, especially the maximal-solution/continuation/reduction interfaces, Fourier coefficient domains, decay and real restrictions.
- Primary AKN06 printed pp.3, 207–209, 217–218, 242–244, extracted directly from the pinned PDF. Chapter 6 has PDF page = printed page + 11; printed p.3 is PDF p.16. Read all four pages of Nei76, pp.1295–1298, and visually inspected p.1298, including (17) and its piecewise regularizer.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| N12-01 | p12 L64, `stepN:p12:fl-inverse` | major | The curve `u ↦ gamma_x(t-u)` has derivative `-F(gamma_x(t-u))`. It is a solution of **-F**, not the F-solution used to conclude membership in `Omega_{-t}`. Even the Hamiltonian `H=I_1`, whose angle velocity is +1, refutes the stated argument. | For fixed t>0 use `y(u)=gamma_x(t+u)` on `[-t,0]`. Then y solves F, y(0)=Phi_t(x), and y(-t)=x. Apply gen-maximal to this closed interval to get `T_-(Phi_t x)<-t`, identify y with the maximal solution there, and conclude `Phi_{-t}(Phi_t x)=x`. Apply the same argument with -t to obtain the converse. No new premise is needed. |
| N12-02 | p12 L100, `bpN:p12:corrector` | major | The all-y assertions `abs(psi')<=min(kappa^-2,y^-2)` and `kappa^2/(y^2+kappa^2)<=min(1,kappa^2 y^-2)` fail at y=0 with real total division: their left sides are kappa^-2 and 1, but the displayed right sides are 0. In ordinary partial-division notation they are simply undefined there. Resonant q_k=0 is explicitly allowed. | State the nonsingular global bounds `abs psi<=1/(2 kappa)`, `abs psi'<=kappa^-2`, and `0<=1-y psi=kappa^2/(y^2+kappa^2)<=1`. State `abs psi<=1/abs y`, `abs psi'<=y^-2`, and the residual bound `<=kappa^2 y^-2` **only for y!=0**. The outer dyadic shells already imply y!=0; use the global bounds on Z_0. All later constants remain valid. |
| N12-03 | p12 L93, `stepN:p12:co-a`; N Part 4 domains/class | major | The proof says to apply `bpN:p4:coefficients(a)` to `f in O(R,s)`. In Part 4 the first argument is the **action-neighborhood width**. Frozen hf provides `T_s x V_s(iota B(0,R))`, not `T_s x V_R(iota B(0,R))`. No ordering R<=s is assumed. For example R=2, s=1/2 and `f=1/[4(3-I_1)]`, extended totally at its pole, satisfy the smaller-domain analytic/bound requirements but not holomorphy on V_R B(0,R), which contains the pole at I_1=3. | Specify the Part 4 base set `D=iota(B(0,R))`, action width `r=s`, angle width `s`; apply the lemma to `f in O(s,s)` for that D. Its action domain is exactly `B(0,R)_s`. Do not enlarge hf's domain or change the Fourier decay exponent. |
| N12-04 | p12 L22 and L140, cited `bpN:p1:partials` / `bpN:p1:ext-linalg` | minor | The regularity citation points to an ordered-partials estimate with an additional derivative-bound hypothesis, whereas only analytic hh is supplied here. The rectangular adjoint assertion in branch B is true but not the equal-dimension injective/bijective assertion actually listed in ext-linalg. | Cite `bpN:p1:holo-real(b),(c)` for smoothness of omega and continuity of M. For adjoint injectivity give the direct proof: if A is onto and A^T e=0, choose z with Az=e; then `abs(e)_2^2=e dot Az=(A^T e) dot z=0`, hence e=0. This covers both square M and rectangular A=(M,omega), with no new rank assumption. |
| N12-05 | p12 L37, `bpN:p12:ext-dep` | minor; substantive formalization obligation | The C1 local-dependence theorem is standard and sufficient. I found local flows and Lipschitz dependence in the pinned Mathlib ODE sources, but no theorem giving the asserted initial-data derivative/variational equation. The phrase “has ... only” understates the available Lipschitz-flow API. The stated smallness a sup abs DF<1 controls Picard contraction, but the derivative-convergence sentence should expose its additional argument and the ball-staying choice. | Keep this as a separately proved infrastructure lemma, not an available Mathlib result or a premise added to averaging. Choose a compact ball in W, smaller initial ball, `a sup abs F` below the remaining radius, and q=a sup abs DF<1. Supply the derivative-limit argument described below (uniform continuity of DF plus the linear Volterra fixed point); alternatively use the analytic-field construction already outlined in Part 5 after explicit local scaling. Correct the API description. |
| N12-06 | p12 L38, `bpN:p12:ext-markov` | minor | The external maximum-continuity assertion uses `max_{u<=s}` without a lower endpoint or compact time domain. It is false for arbitrary jointly continuous g on R, e.g. g(u,x)=-u. Every actual use in this part is over [0,t] or [0,T], where the required result is valid. | State continuity of `(t,x) ↦ max_{0<=u<=t} g(u,x)` on nonnegative times for which the entire compact segment is in the open flow domain, with joint continuity there. For fixed T use a jointly continuous function on `[0,T] x U`. Local compact-segment containment supplies the relevant neighborhood in the variable-domain case. |

The first three are defects of the written proof/interfaces, not counterexamples to N-AVERAGING. No frozen declaration, source, graph packet or ledger was changed.

## Frozen-contract comparison

Both Part 0 theorem transcriptions agree with the authoritative frozen binder order and conclusions.

| Interface | Checked contract |
|---|---|
| Fixed data | n>=2; R,s>0; fixed h,f with the two analytic predicates; rank on open B(0,R); compact K with initial actions in B(0,R/2), before any A or epsilon_0. Part 12's observation that its argument also works for n=1 does not alter the frozen targets. |
| Rank definition | A global disjunction of two universal conditions, not a pointwise choice of branch. Branch B includes omega!=0 and surjectivity of `(v,c) ↦ Mv+c omega`; branch A permits zero frequency. Both derivatives are genuine under hh on the real open domain. |
| AveragingError | The real sSup of action displacement from **x.2**, over `[0,1/epsilon]`; it compares exactly with the constant averaged action, not an averaged angle or corrected initial action. |
| Mean | A,epsilon_0 precede epsilon, arbitrary supplied Phi and kappa. Phi need only be a genuine family on K and the stated window; no measurability away from K is assumed. IntegrableOn and the nonnegative lintegral bound are conclusions, as is the exceptional set of absolute volume <=kappa. |
| Most | A,epsilon_0,eta_0 precede epsilon and eta; eta_0<=R/4; E precedes every good x and its exhibited z. Actual full-window solution existence is an output. No future-confinement or error premise was inserted. |
| Constants used | rho=R/8, epsilon_0=1, eta_0=R/8, A_most=A_1>=1, A_mean=13A_1. Positivity and eta_0<=R/4 hold. Uniformity over norm-one f is stronger than the frozen fixed-f conclusion and is justified by the Cauchy bounds; no uniformity over h is claimed. |

For epsilon>0 the time interval contains 0, is compact and nonempty. A genuine supplied trajectory is continuous there; its error image is compact and bounded above, also bounded by 3R/2 from the domain memberships. Thus sSup is its attained maximum and the junk cases are excluded. Values of Phi off K have no effect. The proof never needs sSup for an unbounded or nonexistent stopped trajectory: Psi is constructed separately as a nonnegative envelope.

## What I recomputed

### Analytic inputs, Fourier normalization and regularizer

For real I in B(0,R), the closed phase polydisc of radius s/2 lies strictly inside the complex domain. Cauchy therefore gives each first partial <=2/s without an extra dimension factor; the row-sum estimate for D_I f_k subsequently supplies the required n. At fixed complex action, shift the Fourier contour by s/2 to obtain beta_k=exp(-pi s abs k_1). Action Cauchy preserves this same beta_k and gives `(2/s) beta_k`. The polynomially weighted exponential sum sigma is finite. There is no need for a weighted Fourier norm on the **full** original angle strip, which need not be finite.

The zero mode of `a=-partial_theta f` vanishes by period-one integration. With `u_k=f_k psi(q_k) k` and `w=-sum u_k e_k`,

    partial_theta w omega = -2 pi i sum f_k q_k psi(q_k) k e_k,
    r = -2 pi i sum f_k [kappa^2/(q_k^2+kappa^2)] k e_k.

The sign and all factors 2 pi are correct. In particular there is no missing `1/(2 pi i)` in w: it cancels the multiplier in a. At exact resonance psi=0 and the residual is the full corresponding a-mode, as it must be. Near resonance it is bounded by the nonsingular global bounds in the proposed N12-02 fix. If a real-valued w is desired, `f_{-k}=conj(f_k)` and oddness of psi give `u_{-k}=conj(u_k)`, so the paired sum is real. The written complex-valued calculation is also valid after the canonical real-to-complex inclusion.

For the action derivatives I checked

    sum_j abs(partial_j q_k)
      <= sum_i abs(k_i) sum_j abs(M_ij)
      <= M_2 abs k_1.

Thus the displayed B envelope has the right row-sum norm and dimension factors. For fixed positive kappa, every value and first-derivative series has a summable uniform bound on smaller action balls, so termwise differentiation and continuity of the derivative are justified. No differentiation of an absolute value at a zero coefficient is used.

### Rank, finite cover and dyadic arithmetic

For either frozen rank branch the adjoint of `(M,omega)` is injective. Compactness of `G x S^{n-1}` yields a positive lambda for the sum of its squared components, even when branch A has omega=0 at a point. On `abs(e dot omega)<=lambda/2`, the gradient has squared Euclidean norm >=3 lambda^2/4. Some coordinate derivative consequently has modulus at least `sqrt(3) lambda/(2 sqrt(n))`, strictly above `c_0=lambda/(2 sqrt(n))`.

The neighborhoods can be chosen as full cubes **inside B(0,R)** even for I on the boundary of G, since G is compactly inside that larger open ball. A finite cover of pairs (I,e), not a single trajectory chart, is sufficient. On each selected cube the coordinate derivative has constant sign; Fubini and the mean value theorem bound every relevant one-dimensional section by 2v/c_0. Intersecting with G cannot enlarge it. Cubes may overlap: the proof only sums upper bounds. The proposed `C_1=max(1,2p/c_0,2 Vol(G)/lambda)` handles both v<=lambda/2 and larger v. Its dependence on omega includes its first derivative and the compactness modulus used in the cover. For k!=0, scaling by abs k_2 gives precisely `V_k(u)<=C_1 u/abs k_2`.

For the shells Z_0,Z_j, the derivative and residual sums are respectively

    C_1/(kappa abs k_2) * [1+4 sum_{j>=1} 2^-j],
    C_1 kappa/abs k_2 * [1+4 sum_{j>=1} 2^-j].

Both brackets equal 5. The reciprocal shell contribution is <=2 C_1/abs k_2 per nonempty outer shell; the bound on their number yields `5/2+3 ln^+(Omega_0 abs k_1/kappa)` because `2/ln 2=2.885390...<3`. The subsequent logarithm bound and `ell_kappa<=1/kappa` hold for 0<kappa<=1. The summation weights in c_W,c_B,c_R absorb all powers of k: W_1 needs degree three; the derivative term uses `abs k_1/abs k_2<=sqrt n`; the residual uses abs k_2>=1. I found no missing dimension or Fourier factor.

At kappa=sqrt(epsilon), epsilon/kappa=sqrt(epsilon). Also `sqrt(epsilon) ln(1/epsilon)<=2/e<1`, which verifies the stated loose `epsilon ell_kappa<=2 sqrt(epsilon)`. Hence the constants c_Phi and the bound `2 epsilon integral W<=4c_W sqrt(epsilon)` are valid. In fact some factors can be improved, but that is unnecessary.

As non-vacuity tests, `h=(sum_j I_j^2)/2` has M=id, including at zero frequency, and `h=I_1+I_2^2/2` in dimension two has the projective-only branch `(omega_1,omega_2)=(1,I_2)` with rank M=1. Both fit the compact transversality argument; it does not silently strengthen branch B to full rank.

### Identity, maximum and stopping

Along the exact orbit,

    d/dt w = a-r + epsilon Q,
    Q = partial_theta w partial_I f + D_I w a.

Integrating yields exactly the stated corrector identity, with `-epsilon^2 integral Q`. The key maximum bound comes from variation of the **coefficients** u_k along the action curve, not from differentiating the full oscillatory w and losing its fast oscillations:

    max abs Lambda <= W(I_0)+(2 epsilon/s) integral B.

Only one moving endpoint Lambda(u) occurs; Lambda(0) contributes W(I_0) with no additional derivative integral. Together with `abs Q<=(2/s)(W_1+B)` this gives

    max drift <= 2 epsilon W(I_0)
                 + epsilon integral [(4 epsilon/s) B
                                      +(2 epsilon/s) W_1+Rhat].

This verifies the important coefficient 4/s, not 6/s or 2/s. It bounds the time maximum **before** any initial-data integration and repairs the precise sup/integral problem in Nei76.

At a finite tube exit tau, periodic-field continuation over the compact action ball gives tau<T_+, and the drift at tau equals rho. Before exit, abs I<5R/8<3R/4. There is no hidden bound on the real angle lift: the periodic continuation theorem is exactly what is needed. The stopped domain S is relatively open, and the integrand is defined there and extended by zero on its complement. The singleton endpoint tau has zero time measure, so the replacement by the stopped time integral loses nothing. The cases tau=infinity and tau=T are covered. No existence to T is assumed in the most-data proof.

### Liouville, cell transport and measurable sets

After N12-01 is corrected, the flow is injective with inverse Phi_{-t}. The short-time C1-dependence lemma and finite chaining give the stated open flow domain and continuous initial derivative. For `DF=J S`, S symmetric, I recomputed `DF^T J+J DF=0`. Consequently `Y^T JY=J`, det Y lies in {+1,-1}, and continuity from t=0 gives det Y=+1, not just absolute determinant one. Translation equivariance preserves the maximal domains as well as the curves.

The period-cell argument is valid even when the lifted image crosses many unit cells. If two translated image pieces overlap, equivariance plus injectivity gives initial points differing by an integer angle vector. Two points of a **single half-open cell** cannot differ by a nonzero integer vector. The folded pieces are therefore disjoint, and their nonnegative integrals sum to at most that over `[0,1)^n x G`. No unproved bound on angular motion or image width is used. The dependence on the initial angular lift enters only through finite N_K. K may be empty, null, disconnected or non-product.

All relevant stopped sets are Borel sections of S, the envelopes are sums of nonnegative continuous functions, and zero extension from S is measurable. Tonelli is legitimate before proving finiteness. Change of variables applies to each fixed-time injective C1 flow map, with determinant one. This establishes the stopped mean bound with `A_1=max(1,N_K(c_Phi+4c_W))`, independently of epsilon and, beyond its analytic norm-one bounds, f.

For most data, `Gamma_eta=K intersect Omega_T intersect {maximum<eta}` is relatively open in compact K. If tau<=T, Psi>=rho>=eta; otherwise an excluded datum has its full-window maximum >=eta. Markov gives `Vol E<=A_1 sqrt(epsilon)/eta`. Its complement supplies genuine maximal solutions on a neighborhood of [0,T], hence the two-sided endpoint derivatives required by IsSolutionOn. The allowed endpoint eta=rho causes no problem.

For the mean theorem, the supplied solution on the closed interval is identified with the maximal solution using gen-maximal; this also proves T<T_+ without assuming it. The error agrees on K with the continuous compact-time maximum of the actual flow. Thus integrability is obtained despite arbitrary nonmeasurable values of Phi outside K. On Gamma_rho the maximum is <=Psi. On its complement it is <3R/2, and that set has volume <=A_1 sqrt(epsilon)/rho. Therefore the multiplier is exactly

    1+(3R/2)/(R/8)=13.

The final Markov choice `lambda=A sqrt(epsilon)/kappa` is positive for every allowed kappa. Taking the strict superlevel set leaves maximum <=lambda outside and gives absolute volume <=kappa. All lintegral/ofReal conversions have nonnegative, integrable real functions available.

### The C1-dependence obligation

The statement of ext-dep is standard under C1 on an open set, with no hidden global Lipschitz hypothesis. The following supplies the missing details behind its derivative-convergence sentence without requiring DF to be Lipschitz. Choose the compact trapping ball and time as in N12-05. On the time/initial-point rectangle the Picard iterates y_m converge uniformly to y and their derivative iterates satisfy

    Y_0=Id,
    Y_{m+1}=Id+integral DF(y_m) Y_m,
    sup abs Y_m <= 1/(1-q).

The linear map `Z ↦ Id+integral DF(y)Z` is a contraction on continuous matrix families, so has a continuous fixed point Y. Uniform continuity of DF on the trapping ball yields `d_m=sup abs(DF(y_m)-DF(y)) ->0`. Thus

    sup abs(Y_{m+1}-Y)
       <=q sup abs(Y_m-Y)+a d_m/(1-q) ->0.

Uniform convergence of maps and their initial derivatives on a smaller open ball proves D_x y=Y and its joint continuity. The integral equation gives the variational equation. This uses a standard linear Volterra fixed point and a uniform derivative-limit theorem; it is a genuine proof obligation, not an existing ODE differentiability API discovered in this review. Part 5 offers an analytic specialization/reuse option but cannot be applied without matching its normalized-domain and size hypotheses.

Local Mathlib inspection confirmed the Jacobian theorem in `MeasureTheory/Function/Jacobian.lean:1183` and the open-set termwise derivative theorem `hasFDerivAt_tsum_of_isPreconnected` in `Analysis/Calculus/SmoothSeries.lean:72`. The globally named tsum theorem needs localization for the action domain; the proof's smaller-ball bounds supply it. `Analysis/ODE/ExistUnique.lean` and `PicardLindelof.lean` provide local flows, initial Lipschitz control, uniqueness and related tools, but not the full ext-dep conclusion located here.

## Primary-source fidelity, errata and deviations

AKN06 p.243 puts the maximum **inside** the integral in (6.27), gives the two rank alternatives in Theorem 6.11, and gives both the tolerance and exceptional-volume forms in (6.28)/Corollary 6.1. The fixed-system constants convention is p.207; the standard equations and matched averaged motion are pp.208–209. Printed p.3 footnote 1 provides the global smoothness convention. Remark 6.4, pp.217–218, concerns the **averaged** trajectory's distance from the boundary. Here J=I_0 and the explicit action collar discharges it. No additional boundary condition on future perturbed orbits has been smuggled into the frozen hypotheses.

For the orchestrator's ledger, retain **E-NAVG-NEI-17** with its existing D28 candidate classification: Nei76 p.1298 (17), visibly printed `sup z(t) = integral_{U'} h`; p.1297 defines z as a fixed-time integral, while p.1295 (4) defines h by a time supremum. That interchange is not automatic; only `sup integral <= integral sup` is generally justified. No counterexample to Nei76's theorem is asserted. The blueprint's pointwise envelope, once the local corrections above are made, supplies an explicit repair. Calling the displayed inference a checked proof gap does not by itself authorize changing the public ledger classification.

Also checked the regularizer printed on Nei76 p.1298: its inner polynomial is `-y^3 kappa^-4+2y kappa^-2`. At y=kappa its second derivative from inside is -6/kappa^3, whereas 1/y from outside has second derivative +2/kappa^3. It is C1, not C2. First derivatives suffice for the original argument; the rational regularizer here is smooth. This is a regularity caution, not a new theorem erratum.

The declared departures are justified: analytic fixed-system specialization; period-one/max-norm conventions; intrinsic compact rank geometry; rational regularization and untruncated exponentially summable Fourier series; exact Hamiltonian Liouville transport; one first-exit stop instead of cohorts; no Gronwall because the averaged slow field is zero. The new choices epsilon_0=1 and eta_0=rho do not follow by invoking Nei76's own smallness/collar constants: they follow from the independent estimates here. Those estimates do support them. No mathematical erratum in AKN06 pp.242–244 was found. No frozen-statement defect was found.

## Checks and deliverables

- `cd blueprint-N && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: exit 0; output `.build/review/blueprint.pdf`, 101 pages. Final log: 0 lines beginning `!`, 0 undefined-reference warnings. Typography/PDF-string warnings remain. A direct scan also resolved all 129 exact-label references in Part 12, including cross-track labels.
- `PYTHONDONTWRITEBYTECODE=1 scripts/lint_sources.sh`: exit 0; `check_lean_modules: PASS (219 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (144 frozen declarations)`.
- `.drafts/N/review-scratch-p12/check_corrector.py`: nine diagnostic cases for the two-action full-rank Hamiltonian with one active cosine mode, including q=0 and finite first exits. All numerical corrector-identity residuals <5.27e-12; all stopped envelope inequalities passed. These are diagnostics, not a proof of the mean theorem. Independent elementary arithmetic checked the shell factor 5, 2/log(2)<3, 2/e<1, the factor 13 and the y=0 failures in N12-02.
- No Lean file was authored or built; no new result has an axioms receipt, and no provider/anchor proof closure is claimed. No resource override was used. A targeted Lean build is inapplicable to this Markdown/source audit.
- `git diff --check -- blueprint-N/reviews/p12-review-1.md .drafts/N/review-scratch-p12/check_corrector.py`: exit 0, no output. The two reviewed TeX input hashes were rechecked unchanged at handoff.
- Authored only this review and permitted scratch (`check_corrector.py`, the local Nei76 page render) under `.drafts/N/review-scratch-p12/`; the requested LaTeX build generated ignored review outputs. No source, frozen file, manifest, generated root, other report or git state was edited.

Required follow-up: repair N12-01–03 and clarify N12-04–06, then recheck the edited spans. The route does not require a new assumption, a frozen-text successor, a return to the old proof plan, or any change to the final rates.
