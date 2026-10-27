# Part 11a-4: independent blueprint review, round 1

**Verdict: ACCEPT WITH FIXES.** No blocking or major finding. D-19 is valid: the adapted initial radius preserves the proofs of the inductive lemma, parameter selection and exported sums. The limit-torus argument avoids an off-section normal form legitimately (D-20). The displacement has the required power `c_D epsilon^(1/2) beta^(-(mu+1)/rho)`. The parameter Lipschitz argument closes R3 on an arbitrary retained compact set. One minor sign correction is needed in the displayed identification of the frozen symplectic form with its matrix.

This verdict covers Part 11a-4 and its use of Parts 11a-1..3. It does not certify the quantitative assembly in 11a-5 or the complete physical P-FIXED proof.

## Snapshot, scope and materials

- Reviewed `blueprint-P/parts/p11a4-limit-family.tex`: **266 lines; 48,514 bytes**, SHA-256 `2e30df0f545ce211d4d9e1f6b99ef5a9112e0b2cf3e01f19f61b5b3fdaa3cb8d`.
- Reviewed starting HEAD: **91863bd**, `blueprint-P Part 11a-4: limit maps, primary Lagrangian tori, displacement power (eps^{1/2} beta^{-(mu+1)/rho}), Lipschitz family (R3 closed), evaluation bi-Lipschitz; D-19 free radius`.
- Followed AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, the complete `.drafts/briefs/bp-review.md`, and the writer's convention ruling. Consulted the track-P plan, PLAN-11a, preamble, statement/source/notes material and the model Part-2 review.
- Read the whole reviewed file. Re-read 11a-3 from the standing data through the exported-sums proof, including every proof step whose validity could depend on the radius. Compared 11a-1's sublevel/power-law constants and corrected (I3), and 11a-2's canonical-step and unscaled derivative interface. Read the previous 11a-3 closure report. The three files' current hashes match that round-3 snapshot: `66b5ce26...bab5`, `990694a8...ec3ec`, `a2715ad9...6c406`, respectively.
- Checked Part 11's exact `kam-input` interface (K1)..(K6), Part 0's Hamiltonian/symplectic conventions, and the frozen `SymplecticForm`, `HamiltonianVectorField`, `IsDiophantine`, `IsInvariantLagrangianTorus` and planetary `IsPhysicalTorus` contracts. No frozen declaration is defective or requires alteration.
- Read the pinned Rus01 PDF directly: printed pp. 172–177 (PDF pages 54–59), all of Section 15, and p. 168 (PDF page 50), Lemma 14.5 and (14.13). Checked the cited track-K `uniform-limits`, `lip-image`, `mcshane`, `lipeo` and product-measure statements against their actual text, and the track-N symplectic-matrix convention.

Only this review file is an intended source edit. No manuscript, plan, frozen file, manifest or writer scratch script was edited. No state-changing git command or Lean build was run.

Concurrent workspace activity advanced HEAD to `1e663eb` and subsequently added an untracked 11a-5 file and its input line while this report was being completed. These changes were left untouched. The reviewed 11a-4 hash was rechecked unchanged. The compilation receipt below is for the document before that concurrent 11a-5 insertion; it is not a build certificate for the new file.

## Findings

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| P11A4-01 | Conventions, L28; `stepP:p11a:lt-lag`, L143 | **minor, nonblocking** | With the displayed `J=[[0,Id],[-Id,0]]`, `Z^T J Z' = theta·I' - I·theta'`, the negative of the frozen form. Thus the asserted equality `Omega_0(Z,Z')=Z^T J Z'` is false. For N=1, Z=(1,0), Z'=(0,1), the frozen form is -1 while the matrix expression is +1. The Lagrangian computation repeats this sign error. This is an algebraic transcription error, not a change to the torus contract: canonicity preserves both J and -J, and the conclusion being proved is zero. The Hamiltonian field and covariance calculation use the correct J. | Keep J and `X_H=J grad H` unchanged. At L28 write `Omega_0(Z,Z')=-Z^T J Z'`. At L143 write the middle expression as `-(D iota v)^T D Phi^(nu)^T J D Phi^(nu) (D iota v') = -(D iota v)^T J (D iota v') = Omega_0(D iota v,D iota v') = 0`. No frozen edit and no constant or hypothesis change is needed. |

The previous nonblocking P11A3R3-01 about the overly general necessity example remains in 11a-3. It is unchanged, is not used here, and is not a new failure of the budget or iteration.

## D-19: audit of the free-radius claim

Write `L=lambda_max`, `s_fixed=L/(N C1)`, and `x=epsilon/epsilon_adm`, with `0<x<=1`. The new quantities are exactly

`s0=s_fixed sqrt(x)`, `epsilon0=2 epsilon`, `lambda0=L sqrt(x)`.

For comparison, the old schedule at the same epsilon has `lambda0_old=L(1+x)/2`. Hence `lambda0<=lambda0_old<=L` by `2 sqrt(x)<=1+x`; both the new radius and the new remainder envelope are no larger. This comparison alone is not a proof that every estimate survives, because inverse action radii occur. The following checks account for those inverse factors explicitly.

| 11a-3 location / proof steps | Radius dependence checked | Result after substitution |
|---|---|---|
| `schedule-consts`, `schedule-ratios`, `strip-budget` (`sr-exp`, `sb-sum`..`sb-err`) | E_*, varpi, q, varrho, g1..g4, d_nu and r_nu involve no s0 or epsilon0. | Unchanged, including `r_nu>=s/2` and `E_nu<=alpha`. |
| `schedule` | The schedule initially allows arbitrary positive s0, epsilon0. The only inverse-radius combination subsequently used is `epsilon_nu/s_nu=lambda0 varrho^nu`. | Positive epsilon gives positive s0, epsilon0; the identity holds exactly. |
| `initial` (`in-dom`, `in-taylor`) | Requires `t0,s0<=vartheta`; Taylor error is `N C1 s0^2/2`. | `s0<=s_fixed<=t0/(8N)<=vartheta`; the Taylor error equals epsilon, giving `epsilon0=2 epsilon`. No lower bound on s0 is used. |
| `adm-choice`, (A1) and (A6) | Only T0 and t0. | Unchanged. |
| `adm-choice`, (A2), (A4), (A5) | The three branches of L bound lambda0; Q0 is linear in lambda0. | All hold because `lambda0<=L`, including both parts of (A4), not just `Q0 Xi<=2^-10`. |
| `adm-choice`, (A3), (A7) | Upper radius bound and the actual initial remainder. | `s0<=t0/(8N)`; the initialisation just checked gives (A7). The old equality `s0=s_fixed` is replaced by an inequality exactly where needed. |
| `schedule-props`, `sp-1`..`sp-5` | S1 is the ratio identity; S2 uses `4 lambda0<=a`; S3 uses lambda0/t0 and lambda0 t0^-mu; S4 uses lambda0; S5 uses t0 and T0. | Every displayed estimate survives. In particular `S_m<=gamma T_m^(-tau-1)` still holds for all m>=0. |
| `smooth-cutoff`, `finite-extension` (`fe-supp`..`fe-leib`) | Cutoffs depend on t_j; increment bounds are `ell_j=2 lambda0 varrho^j`. | Supports and derivative constants are unchanged. The C^mu extension bound still follows from `sum ell_j t_j^-mu<=4 lambda0 t0^-mu`. |
| `finite-divisor` (`fd-tel`..`fd-concl`) | Only ell_j, S_m and the retained shell tests. | The finite-stage invariant remains available before the next generator is constructed, with the same gamma margin and the endpoint T_m. No appeal to a limit is introduced. |
| `finite-measure` (`fm-close`..`fm-incl`) | Extension closeness uses (A5); all other ingredients are measure inputs independent of s0. | The bound by theta_max, inclusion and positive measure are preserved. The particular retained sets can change with epsilon; this causes no uniformity or circularity problem. |
| `inductive-lemma`, `il-p0`, `il-ret` | Initial remainder, S2 and finite-stage measure. | Base case and nonemptiness close as before. |
| `inductive-lemma`, `il-c2`, `il-c1` | Divisors and derivative bounds; strip and cutoff conditions; positivity of epsilon_nu. | Unchanged. The local step permits any positive upper envelope for the remainder, so it applies to the new epsilon_nu even when the actual perturbation is zero. |
| `inductive-lemma`, `il-c3`, `il-rem` | The quadratic coefficient contains `epsilon_nu/(D_nu s_nu sigma_nu)`, hence lambda0, not an uncontrolled `1/s0`. | `Q_nu<=Q0 g1^nu<=varpi/2`. The recursion is still bounded by `(1/8+1/4+1/2)varpi epsilon_nu=(7/8)varpi epsilon_nu`. |
| `inductive-lemma`, `il-inc`, `il-dom`, `il-map` | Frequency increments cost epsilon_nu/s_nu; collar differentiation costs a further 1/t_j. Maps use the same relative smallness and the unscaled bound `2 kappa_nu+kappa_nu s_nu/sigma_nu`. | S3 gives the same derivative bound `2 C1`. All domain inclusions, conjugations, joint holomorphy and O1..O5 survive. A smaller s0 improves the last unscaled term. |
| `parameter-selection`, `ps-iter`..`ps-dio` | Infinite induction, summable ell_j and epsilon_j, finite-stage measure and S_m. | Uniform frequency and energy limits, compactness, measure and the final Diophantine estimate hold with the new iteration. Gamma and epsilon_adm have not changed. |
| `exported-sums`, `es-1`..`es-4` | E1 uses Q_nu; E2 uses `s_nu/sigma_nu=(s0/varsigma0)(2q)^nu<=t0/varsigma0`; E3 uses `s0<=t0`; E4 is collar Cauchy. | Every exported bound holds, including the unscaled derivative budget and the explicit action displacement proportional to the new s0. |

Thus “hold verbatim” is correct as a transport of the proofs under the established (A1)..(A7), with the stipulated replacement of s0 and epsilon0. It is not an application of an old theorem with the false premise `s0=s_fixed`. The new labelled `free-radius` lemma supplies precisely this generalisation. No iteration or extension estimate requires the old equality, a positive radius lower bound, or a lower bound on epsilon0 independent of epsilon.

The budget results concern L and `epsilon_adm=L^2/(2 N C1)`, which are unchanged. In particular the beta-only lower budget is available with the same fixed data; no new strip-rate dependence or exponent is introduced by D-19.

## Other recomputations and failed refutation attempts

### Compositions and the limiting torus

The shared-parameter compositions are jointly holomorphic on D_nu because each factor maps into the preceding domain and `B_(nu+1) subset B_nu`. At fixed b the angle strip and action ball form a convex fibre; no convexity of B_nu is needed for the mean value estimate in `co-inc`.

For the unscaled derivative, `1+p_(nu+1)<=(1+p_nu)(1+m_nu)`, hence `p_nu<=exp(sum m_j)-1`. Independently, `exp(2^-12)-1=0.0002441704297477809<2^-11`. The component displacement induction is also valid without a derivative factor: evaluate the earlier displacement bound at `w=X_nu(z)` and then add `w-z`. There is no lost amplification factor in (c). D-21 and D-22 describe these estimates faithfully.

The zero-section increments are holomorphic and summably bounded on the common larger angle strip T_(s/2). Cauchy on discs of radius s/4 bounds each partial derivative on T_(s/4); the row-sum conversion costs N, a fixed finite factor. Both value and derivative series therefore converge uniformly on the stated open strip. Taking the first N columns of the full derivative defect preserves the row-sum bound `2^-11`. This justifies the holomorphic limit and its real analyticity, rather than assuming differentiability of a uniform limit.

At the real zero section, the two remainder derivatives obey exactly

`|partial_eta R_nu|_infty <= epsilon_nu/s_nu = lambda0 varrho^nu -> 0`,

`|partial_theta R_nu|_infty <= 2 epsilon_nu/s -> 0`.

The first bound is a componentwise Cauchy estimate for a scalar function; no factor N is needed for the max norm of its gradient. Open radii are handled by estimates on smaller radii followed by a limit.

For A=D Phi, `A^T J A=J` implies `J A^T=A^-1 J`, so the printed covariance `X_(G o Phi)=A^-1 (X_G o Phi)` has the correct sign. In passing to the limit, only `D_theta Phi_nu` needs to converge. The remaining full derivative multiplies a vector tending to zero and is uniformly bounded. The limiting real action lies strictly inside the original action ball since `sum alpha_j<=s0 Q0/16<s0`; continuity of X_H is therefore used on its actual analytic domain. No limiting full Jacobian, inverse limit map, or off-section Hamiltonian is presumed.

Lagrangianity follows by passing to the limit in the tangent derivatives of the finite canonical images of the zero section, after the minor sign correction above. Angle Lipschitz smallness proves immersion and injectivity. It also proves the stronger frozen primary embedding clause: if `K_b(theta')=K_b(theta)+(k,0)`, equivariance gives `K_b(theta')=K_b(theta+k)`, and injectivity forces `theta'=theta+k`. Differentiability of H along the torus follows from the displayed domain inclusion. The chain rule at each t gives the required `HasDerivAt` formulation of the flow, not merely a derivative at t=0.

The maps here are primary and equivariant, not the periodic Cartesian maps in frozen `IsPhysicalTorus`. The file correctly assigns their transport to Part 13/P1. That application also requires `tau>N-1`; it is explicitly present in Part 11's KAM datum. Part 11a-4 itself only promises the Diophantine inequality under its more general selection assumptions, and does not assert the Cartesian predicate directly.

### D-20 and source fidelity

Rus01 (15.6) has the same composition order. Lemma 15.2 and Lemma 15.3 supply the domain/composition and increment pattern, but their constants and stage norms are not copied as fixed-norm estimates here. The replacement by the independently established unscaled budget is justified.

The pinned Theorem 15.5 really does assert a simple canonical limit on an extended action domain and an off-section expansion; its proof on pp. 175–177 uses Remark 15.4, Theorem 12.3 and convergence of Taylor coefficients. The reviewed proof does not silently import any of these stronger conclusions. In this schedule `q^2=varpi/16`, so `epsilon_nu/s_nu^2=(epsilon0/s0^2)16^nu`; second-action-derivative convergence does not follow from the available remainder bounds. The covariance proof above establishes precisely the invariant zero-section statement needed by the consumers. Avoiding the stronger normal form is a valid reduction of the proof obligation, not an assumption replacing an unpaid step. No conclusion in (K2)..(K6) requires that normal form.

Rus01 (14.13), p. 168, actually ties `s0^2` to `vartheta epsilon0/C_bullet`, as the D-19 source note says. The explicit constants in the adapted balance are identified as ours. No new suspected erratum in these pinned source passages was found.

### Displacement, inverse gamma and K6

Recomputed the paired max-norm bound from the two component sums:

`Delta=Q0 max{3 varsigma0/CQ,s0/16}`.

Since `3 varsigma0/CQ=s/(8 CQ)<=1/1296` and `s0/16<=t0/(128 N)<=1/128`, this is at most `Q0/128`. Also `Xi>=2^(tau+1)>=2`, so `Q0<=2^-11` and `Delta<=2^-18`. Substitution of the new lambda0 into Q0 gives exactly the displayed c_Delta and its dependence only on `(N,mu,tau,s,C1)`. In particular T0 is independent of beta. The old fixed-radius upper bound could not establish decay with epsilon; the new bound does.

With the lattice gap `s_tau=rho(tau+1)/mu-N>0`, the actual 11a-1 formula gives

`C_Dio=C_hat beta^(-1-1/mu)`.

Both factors involving beta are necessary: one from M/beta in C_sub and one from the sublevel power. Thus the second branch of gamma^-1 is proportional to `beta^(-(mu+1)/rho)`; the first has exponent 1/rho and is bounded by the same power for beta<=1. The factor 2 from `gamma=gamma_star/2` is included in c_gamma. All factors in C_hat agree with 11a-1 at m=N, including `N^(rho/(2 mu))` and the lattice sum constant. Here s_tau is the lattice gap, not the angular strip.

Multiplication gives `kappa_D=1/2`, `a_D=(mu+1)/rho`, with c_D independent of beta when the other listed data are fixed. The unchanged beta budget has `B0=2 max{2 G0,1+mu G0}`, and for rho=2 this is `mu(mu+1)+2`, exactly the Part-11 input. The displacement bound and the lower budget are simultaneous for the same admissible epsilon, with no additional smallness assumption.

### R3: global parameter Lipschitz continuity

The key object is the **composition increment** `delta_j(b,theta)=Phi_(j+1)(theta,0,b)-Phi_j(theta,0,b)`, not just the individual map increment X_j-id. Its joint holomorphy and uniform bound on B_(j+1) follow from the composition lemma. Applying Cauchy directly to delta_j includes all dependence of the preceding factors on b; no derivative of those factors is omitted.

Independently summing the geometric upper bounds gives

`S_b <= Q0 2^(tau+1)/t0 [ (2 varsigma0/CQ)/(1-g4) + (s0/32)/(1-2qg4) ]`.

The ratios are g4 for the angle term and 2qg4 for the action term. Using their upper bound 1/32 and the two separate terms in Xi yields the exact rational estimate

`S_b <= (113/2511) Q0 Xi < (1/16) 2^-10`.

Indeed `(32/31)(2/162+1/32)=113/2511=0.04500199123855038`. Thus the manuscript's decimal bounds 0.0437 and 0.046 are safe.

For distinct b,b' closer than t_(j+1)/2, every point of the segment and its complex directional disc of radius t_(j+1)/2 stay within distance t_(j+1) of b in K_(j+1). The directional Cauchy estimate costs 2e_j/t_(j+1), with no dimension factor; for distances at least t_(j+1)/2 the sup estimate costs at most 4e_j/t_(j+1). For b=b' the claimed difference is zero, so that trivial case is taken before forming the normalized direction. Neither path-connectedness nor any segment inside the Cantor set is assumed.

The resulting parameter Lipschitz constant is at most `4(1+2^-11) S_b<=2^-11`; using the rational estimate above gives at most `0.360192` times the claimed `2^-11`. Adding the angle constant gives the paired max-norm constant `lambda_star=2^-10`. R3 is closed by an actual estimate, not by an inferred local-to-global principle. The old E3 tail estimate is unnecessary for this proof.

### Evaluation and measure

The paired map is id+u after the stated block swap, an isometry. Its lower bound gives an inverse constant `(1-lambda_star)^-1`. Coordinatewise McShane extension works without a dimension loss in the max norm; id plus the extension is onto by the contraction argument in the cited K lemma. No equivariance of that auxiliary extension is needed or claimed.

The half-open cell is a countable union of compact cells `[0,1-1/m]^N`, m>=2. Its image is consequently F_sigma and Borel. Applying `lip-image` to the inverse gives the lower factor `(1-lambda_star)^(2N)`, while applying it to the forward map gives the upper factor `(1+lambda_star)^(2N)`. The exponent is 2N, not N, since this is the full parameter-angle set. Fubini and the block swap give cell volume equal to meas H. The compact closed-cell image and compact quotient follow from continuity and equivariance. This supplies (K4) exactly.

## Numerical and build receipts

1. Ran the writer's script unchanged: `python3 .drafts/P/bp-scratch-bpP-p11a-4/sb.py`, exit **0**. Output: `worst L_b/2^-10 = 0.050988128148748334`. Its random seed is unspecified. It sums 12 terms of the E1 envelopes and sets Q0 by the Xi constraint; it does not implement the whole admissible schedule or enforce the other Q0 constraint. Its tuples are a relaxed parameter set. These facts limit the receipt to a numerical sanity check, not a proof of admissibility or an infinite-sum certificate.
2. Independently evaluated the **infinite** geometric-envelope formula above on 25,000 tuples with fixed random seed 171104, N=1..8, mu=1..6, tau in [0,30], widely varying positive strips/collars/cutoffs, and `s0<=t0/(8N)`. All satisfied the asserted S_b and parameter-Lipschitz bounds. Largest computed parameter constant divided by `2^-10`: **0.050996397732339355**. These also use relaxed parameters; the exact rational estimate supplies the proof for the full admissible set. No numerical integration, bump approximation or Monte Carlo observation is used to establish the theorem.
3. Ran `cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: exit **0**, initially up to date. Then forced a fresh run with the same command plus `-g`: exit **0**, **216 pages**, **0 lines beginning with `!`**. The recorder confirms `p11a4-limit-family.tex` was loaded. This part has **0 undefined-reference warnings and 0 overfull-box warnings**. The full document retains seven undefined-reference occurrences in Part 14a (N targets `actionnbhd`, `partial-pert`, `partial-domain` twice, `gen-uniform`, `sol`, `partial-core`), outside this review.
4. Independently checked all **167 reference occurrences / 59 distinct targets** in 11a-4 against actual local/K/N/I/P labels: **no missing target**.
5. Ran `scripts/lint_sources.sh`: exit **0**; `check_lean_modules: PASS (257 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (144 frozen declarations)`.

No Lean result was modified or proved, so a targeted Lean build and new `#print axioms` output are not applicable. The review introduces no source deviation. D-19..D-22 are justified as scoped above; no new pinned-source erratum or frozen-statement doubt was found. The only requested source repair is P11A4-01. The remaining work assigned to 11a-5 is quantitative assembly and its declared interface, not a missing torus or Cantor-family argument in this file.

Final report validation: no trailing whitespace, final newline present; `git diff --check` exited **0**. Concurrent changes outside this owned report were not altered.
