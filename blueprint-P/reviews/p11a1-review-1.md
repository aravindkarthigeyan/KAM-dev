# Part 11a-1: independent review 1

## Verdict: REVISE the consumer/plan interface; ACCEPT WITH FIXES the measure results

The **elementary one-variable proof is valid**, with exactly `2q (epsilon/beta)^(1/q)`. The directional ball estimate, finite-type covering constant, finite-order stability, mode-dependent measure theorem, power-law summation and similarity formulas also survive recomputation. I found no blocking or major error in those measure estimates.

The requested larger interface is not ready as written. The plan asks for a periodic Euclidean-valued torus lift uniformly close to an affine lift, omits angular width from its quantitative data, and claims a Fourier error reduction that does not follow from its displayed estimate. The stage-dependent good set also requires an explicit bridge to the limiting frequency. These are **major plan/handoff issues**, not refutations of the sublevel theorem. Nothing in this review establishes P-FIXED or supplies the unwritten KAM iteration.

## Scope, snapshot, materials and method

Focused tier-2 refute-first audit under `.drafts/briefs/bp-review.md` and the manuscript-audit protocol. Read **all 224 lines, 42,493 bytes** of `p11a1-weak-measure.tex`, all 133 lines of `PLAN-11a.md`, and the cited finite-type/index/stability/interface material of Part 10. Initial HEAD: `87078e77a50b2bc893a77011924bf36ef2b1c311`. The hashes below fix the source versions for the line locators and quotations in this report.

Read the governing AGENTS, repository plan/decisions, track-P route and statement/source records, writer conventions and the model review. Checked the exact frozen `FixedSunPlanetaryKAM`, `FixedKolmogorovSet`, physical torus and Diophantine contracts. Read CP09 PDF/printed pp.5–6, 18–19 directly, and Rus01 printed pp.180–186 and 189–193 (PDF pp.62–68 and 71–75). Also read Rus01 pp.156–158 to countercheck the plan's schedule description, and the earlier `p11a-russmann-check.md` index/measure/parameter-interface rows. No source claim was certified from the writer's summary alone. This review rederives the new estimates; it does not rerun the Part-10 spectral/nondegeneracy proof or audit the unwritten files 11a-2 through 11a-5 as completed mathematics.

The discovery pass was followed by a separate countercheck of each finding against the actual assumptions and consumer. Explicit contradictions or failed substitutions are included below; proposed repairs are not applied. No manuscript, plan or frozen file is edited.

| Input | SHA-256 |
|---|---|
| `blueprint-P/parts/p11a1-weak-measure.tex` | `49b4f384cd47c6d328cf5d932d787c60a73b6cba01aed4bdae27a9e373af2363` |
| `blueprint-P/PLAN-11a.md` | `d784cc21ef24ca525d6257c61cd74b60a157e5523f4f00094091da8315e23e7e` |
| `blueprint-P/parts/p10-nondegeneracy.tex` | `cd5a7ca21df961046c958c0560bf315bfbda72b4bdd932b3837c9e9a68914e10` |
| `KAM/Frozen/Planetary/Theorems/FixedSunPlanetaryKAM.lean` | `9eb5abd0507b6feb40ad4af5918a78089efeab3551ab5b7625f125e4dfa65f8b` |
| `KAM/Frozen/Planetary/Defs/FixedKolmogorovSet.lean` | `a5d7108e10d7dbd95aa980ffdc45c73950905179398a2057101f2b5b2159e8f9` |
| `sources/pdf/Russmann01_RCD_6_2_119-204.pdf` | `cf2066ad478e5a42e737ce1d875967f902ab6050344b7e85909137bdacc1de30` |
| `sources/incoming-P/cp09.pdf` | `dd29561ef38116ba27a743b9b580f797a602bfda1edee8510ef1371c61655859` |

## Findings in the written file and its handoff

| ID | Location / label | Severity | Finding and countercheck | Exact proposed fix |
|---|---|---|---|---|
| **P11A1-01** | `index-def`, L42–46; `stepP:p11a:rc-reduce`, L55 | minor, regularity/index bookkeeping | The definition fixes only `omega in C^mu` but subsequently defines amounts and monotonicity for arbitrary orders. Those orders require corresponding differentiability. Also the least **positive** index is said to be at most the order returned by finite-type, which may be zero. Example: m=1, omega identically 1; the Part-10 proof returns order 0, while the stipulated least positive index is 1. The existence theorem remains true. | With finite regularity C^L, define beta_{rho,j} for `0<=j<=L` and compare only available orders; use C-infinity/analytic omega for unbounded-order statements. Replace the finite-type witness by `max(1,j0)` before bounding the positive index. Preserve the natural beta_{rho,0}; do not silently replace it by Rus01's artificial zero convention, which is irrelevant to the positive-index definition here. |
| **P11A1-02** | `scalar-sublevel` source note L96–97; `power-law` source note L178; notes L210 | minor, source fidelity | Rus01 p.180 explicitly constructs a C^q extension by its Taylor polynomial plus an integral of the extended q-th derivative. Thus “it proves neither” is wrong about the extension. The estimate is indeed imported from Bakhtin, which this file successfully avoids; an external citation is not itself an error in Rus01. CP09 (36), p.18, has a **gamma threshold proportional to `(epsilon*)^(mu/2)`**, corresponding to measure loss `gamma^(2/mu)`, not a measure-loss exponent mu/2 “in gamma”. | Credit the extension construction and describe the new proof as eliminating the Bakhtin dependency, not correcting an unproved extension or a source erratum. Rewrite the CP09 comparison with the two reciprocal exponents explicitly. |
| **P11A1-03** | External F4, L34 | minor, Mathlib locator | `OrthonormalBasis.exists_orthonormalBasis_extension` is not the current declaration. The existing result is `Orthonormal.exists_orthonormalBasis_extension` in `Analysis/InnerProductSpace/PiL2.lean:1011`, with an inner-product-space premise. The ambient Pi max norm must not be silently treated as the Euclidean inner-product norm. The finite-dimensional orthogonal-completion fact itself is valid. | Correct the namespace and record the explicit Euclidean-coordinate bridge, or prove the required orthogonal matrix directly on `Fin N -> R`: take the identity if a=e_N, otherwise the Householder matrix `I-2vv^T/(v^Tv)`, `v=e_N-a`. Its last column is a and its determinant has absolute value 1. Keep the ambient types and the explicit Euclidean length. |
| **P11A1-04** | Totality/measure paragraph, L27 | minor | “Every set measured below is closed” is false: `K minus H` is generally only relatively open in K; countable unions also occur. Countercheck: none of the measure estimates needs that stronger claim; K and H are compact and their difference is Borel, and the subadditivity statements hold even for outer measure. | Say that the sublevel sets on compact domains and H are closed, and that differences/countable unions are Borel; use outer measure where measurability is unnecessary. |
| **P11A1-05** | `consumers` L201; `diophantine-measure` source comment L163; `power-law` parenthetical L173; PLAN parameter-selection L95 | **major for the consumer interface**, not the measure theorem | The good set tests one **different map per mode**. It does not assert `IsDiophantine` of one vector, nor by itself imply the same inequalities for the limiting frequency. “Enter without a further lemma” overlooks a quantitative tail/margin step needed by the KAM consumer. In addition, L201 selects stages by `\|k\|_2`, while the planned truncations test `\|k\|_1<=T_nu`; a mode can have `\|k\|_2<=T_nu<\|k\|_1` and be assigned before it is tested. These problems do not affect the correctly proved mode-dependent measure bound. | Keep that theorem. Add an explicit stage-selection/limit bridge to 11a-3, using the same lattice norm as the cutoff. One sufficient version is stage tests `\|k.omega_stage\|>=2 gamma \|k\|_1^-tau` and tail `\|\|omega_limit-omega_stage\|\|_infty<=gamma \|k\|_1^(-tau-1)` on the retained set; then the limiting frequency satisfies the desired gamma bound. Adjust constants/profile accordingly, including the conversion from a cutoff-wide threshold Phi(T_nu) to the individual profile Phi(|k|_1). Alternatively use a common limiting C^mu extension in the measure theorem and separately prove inclusion in every iterative good set. State and prove whichever construction is selected; do not identify a mode-dependent family with a single frozen Diophantine vector. |

The last row asks for a **future bridge**, not a new premise imposed on the frozen headline. Uniform C^mu proximity to the reference frequency controls the sublevel constants but does not guarantee that an already-tested high-mode divisor survives a later frequency change. The elementary inequality `|k.(u-v)|<=|k|_1 ||u-v||_infty` shows exactly the additional mode-dependent tail budget required. If the algorithm tests the weaker cutoff-wide quantity Phi(T_nu), also use the actual ratio T_nu/T_(nu-1) to convert that test to a mode-wise margin; do not identify Phi(T_nu) with Phi(|k|_1).

## Findings in PLAN-11a.md

These are part of the requested coherence check. They do not change the local measure verdict.

| ID | Location | Severity | Finding and countercheck | Exact proposed fix |
|---|---|---|---|---|
| **P11A1-P01** | Target (ii)–(iv), L25–29; limit/evaluation descriptions L100–104 | **major** | The target calls `K_b:R^N -> R^N x R^N` period one and simultaneously requires a uniform bound `\|\|K_b(theta)-(theta,b)\|\|<=Delta`. This is impossible on all R^N: periodicity makes `K_b(theta+ell e_i)=K_b(theta)`, while the reference lift changes by ell. The error is therefore at least `ell-Delta` at one translate. The resulting quotient map and “compact image” are also not well-defined as written for an affine primary lift into Euclidean coordinates. | Inside maximal action-angle coordinates, assert **primary equivariance** `K_b(theta+k)=K_b(theta)+(k,0)` and periodicity of its defect. Measure a Borel/half-open cell image in the lifted coordinates, and formulate compactness on the quotient target. Only after the polar/physical chart should the torus map be periodic and satisfy the full frozen physical predicate. Keep one period-one parameter frequency throughout. |
| **P11A1-P02** | Fourier cutoff, L73–75 | **major**, quantitative inference | From the stated bound `c(N)(1+d^-N) exp(-2pi T d)`, the proposed `d=(N+1)log(1/alpha)/(2pi T)` gives `c(N)[1+(2pi T/((N+1)log(1/alpha)))^N] alpha^(N+1)`. This is unbounded as T grows at fixed alpha, so the claimed conclusion “error <= alpha” does not follow. With N=2, alpha=0.1, T=10^6 and c=1, this substituted bound is about `8.2734e8`, not 0.1; d can still be smaller than a fixed initial strip width. This countercheck refutes the inference, not every possible sharper cutoff theorem. | Prove a cutoff estimate and loss choice together. For the displayed estimate, require `2pi T d >= log(c(N)(1+d^-N)/alpha)` and supply an explicit admissible choice, typically including a log T term; alternatively obtain a stronger operator estimate with its own proof. Recompute strip-loss summability and the shrinking-domain budget rather than importing the smooth-cutoff loss from Rus01. |
| **P11A1-P03** | Quantitative target data L19–29 and budget L109–112 | **major**, missing quantitative datum | The analytic domain contains an angle strip T_s, but s is absent from the list on which gamma/epsilon_adm may depend. No relation between s and vartheta is assumed. The proposed cutoff/schedule spends angular width and has Cauchy losses depending on it; the plan supplies no angular-width-independent estimate. The positive threshold/budget interface therefore omits a required input of its own proof scheme. | Include s, or an initial positive lower angular width, in the theorem and budget data. Alternatively require explicitly `vartheta<=c s` and run the iteration on an angular strip controlled by vartheta. If this width shrinks with the physical coupling, include its exponent in the polynomial budget. Do not silently recover angular width from action thickness. |
| **P11A1-P04** | Schedule description L33 and L90/L96 | minor in the plan, must be settled before schedule arithmetic | `epsilon_nu=epsilon_0 delta^(kappa nu)` has the constant ratio delta^kappa; it is geometric, not superlinear for any kappa. Rus01 p.156 uses this geometric sequence and gives an admissible kappa=24/25, rather than the plan's kappa>1. This does not preclude a revised geometric iteration, but it cannot be justified by describing the displayed sequence as a quadratic/superlinear recursion. | Choose and state an actual geometric schedule with all one-step exponent inequalities rechecked, or change to a genuinely superlinear sequence and recompute T_nu, t_nu and every sum. Distinguish the cutoff power `d_cut=max(N+1,...)` from the unrelated diameter d; verify the extension inequality for the selected schedule. |
| **P11A1-P05** | Evaluation lower bound, L104 | minor, unsupported numerical constant | The stated near-identity bound gives inverse Lipschitz constant `(1-lambda)^-1`. The cited general Lipschitz-image argument therefore gives lower volume factor `(1-lambda)^(2N)`, not `(1+lambda)^(-2N)`. The latter does not follow from that argument. A generic contraction `F=(1-lambda)id` saturates the former bound; extra torus structure would require an additional argument if used to improve it. | Use the universally justified factor `(1-lambda)^(2N)` on the measured lifted cell, or the cruder `2^(-2N)` when lambda<=1/4. Resolve the lifted/quotient cell issue in P01 before asserting compactness or a physical measure formula. |

## What I recomputed: estimates and failed refutation attempts

### 1. Scalar conventions, finite type and stability

For each unit c, both scalar families `f_c=<c,omega>` and `f_c^2` are analytic and not identically zero when omega is R-nondegenerate on the connected domain. Every derivative is jointly continuous in c and y. On the nonempty compact product `S^(m-1) x K`, the finite-subcover argument of Part 10 supplies one finite order and a positive minimum. Diagonal tensor norm zero is equivalent to vanishing of the full symmetric derivative tensor by polarization, so the compactness argument is valid in the declared norm. Raising the chosen order to at least 1 repairs P11A1-01 without changing existence or stability.

CP09 Lemma 1 (2) and Def.2 (3), pp.5–6, use the **squared scalar family** and diagonal derivative tensors, exactly the rho=2 convention here and in Part 10. Rus01's product family with independent c and c-hat is different; the file correctly avoids transferring its numerical index/amount to the squared family. Positive-order indexing agrees after recording the zero-order convention. No comparison between the numerical rho=1 and rho=2 indices is needed or assumed.

Let f=<c,omega>, h=<c,tilde-omega-omega>. For every unit repeated direction, all available derivatives of f are bounded by M0 and of h by theta. Then

`g1[tilde-omega]-g1[omega] = h`,

`g2[tilde-omega]-g2[omega] = h(2f+h)`.

The diagonal Leibniz formula yields exactly `theta` and `2^nu theta(2M0+theta)`, including nu=0. Maximizing in the unit direction and derivative order, then minimizing in c,y, gives

`beta_{rho,mu}(tilde-omega,K) >= beta_{rho,mu}(omega,K)-eta_rho(theta)`.

Only C^mu regularity of the perturbation is used; analytic continuation of the perturbed map and its R-nondegeneracy are not premises. The baseline positive amount is essential and correctly retained. The compact thickening K_vartheta lies in the open V and is compact, so the actual consumer's derivative bounds are finite. For arbitrary noncompact A in the standalone norm notation, explicitly require finite M0/theta/M1, or define the norm only for bounded-derivative functions as CP09 does; no real-valued total supremum should conceal unbounded derivatives.

For the operator-size bound, the full Leibniz formula has 2^k subsets. Each term is bounded by M1^2, including derivatives of order zero. Thus the stated `M1` bound for rho=1 and `2^k M1^2<=2^(mu+1)M1^2` for rho=2 are correct. No polarization constant has been lost: the proof intentionally controls the mixed top derivative with the operator norm, while nondegeneracy and closeness use only diagonal norms.

### 2. The elementary one-variable proof

I checked the **whole measure argument**, rather than merely a numerical sample of polynomials.

Let E be the closed sublevel set and L its finite measure. The L=0 case is immediate. For L>0, the distribution function `phi(t)=meas(E intersect [a,t])` is continuous because it is 1-Lipschitz, not just nondecreasing. The compact minimum t0 exists. For each positive i the closed nonempty set `{phi>=iL/q}` has a minimum ti, continuity gives `phi(ti)=iL/q`, and minimality plus closedness of E puts ti in E. This also works for i=q, for disconnected E, for isolated points and for a distribution plateau. No assumption that E is an interval or has at most q components is used.

For j>i,

`(j-i)L/q = meas(E intersect (ti,tj]) <= tj-ti`.

Hence there are q+1 **distinct** nodes and

`product_{j!=i}|ti-tj| >= i!(q-i)! (L/q)^q`.

The interpolation polynomial has q-th derivative q! times its leading coefficient. Repeated Rolle applied to f minus that polynomial supplies the divided-difference identity at an interior point. The derivative lower bound then gives

`beta/q! <= epsilon (q/L)^q sum_{i=0}^q 1/(i!(q-i)!)`

`= epsilon (q/L)^q 2^q/q!`.

Cancel q!, multiply by L^q, and take the positive q-th root:

`L <= 2q (epsilon/beta)^(1/q)`.

There is no missing q!, no extra spacing factor, no sign assumption on f, and no derivative of order q+1. The q-th derivative is continuous by hypothesis. The bound is sharp for q=1, e.g. f(t)=t on an interval containing [-epsilon,epsilon] with beta=1. For q>=3 it is a valid, slightly weaker replacement for Rus01's Chebyshev/Bakhtin constant; the file does not claim optimality. I also independently checked the exact binomial cancellation for q=1 through 10 using rational arithmetic, as a supplementary arithmetic check.

### 3. Ball sections and the finite-type covering chain

Orthogonal change of coordinates is a **linear map on the same real coordinate space** with absolute determinant 1. It preserves the chosen Lebesgue measure even though that space carries the Pi max norm as its ambient norm; the Euclidean length is used explicitly to describe balls and directions. A line section of the Euclidean ball is an interval, on which the directional q-th derivative has the required lower bound. Point sections have zero one-dimensional measure and are handled separately. For N=1 the transverse space is zero-dimensional, with volume factor 1. Tonelli and the transverse cube bound give exactly

`2q (2r)^(N-1) (epsilon/beta)^(1/q)`.

For the multi-variable estimate, put D=sqrt(N)d and

`kappa=ceil((M/beta)(4+1/vartheta)D)`, `r=D/kappa`.

The positive ceiling argument gives kappa>=1. All three displayed bounds on kappa hold, including when its argument is below 1. Consequently `Mr<=beta/4`, `r<=vartheta`, and at most kappa^N balls cover K. Their centres belong to K; they lie inside K_vartheta and are convex, so every segment used by the mean-value argument stays where S2/S3 apply.

At each centre choose the finite-type order nu and a maximizing unit direction when nu>=1. The operator norm of D^(nu+1)g controls the mixed derivative along the segment by Mr. The same fixed direction therefore gives on its entire ball

`|D^nu tilde-g(a^nu)| >= beta-Mr-beta/2 >= beta/4`.

For nu=0, use the first derivative bound of g: the same argument excludes the sublevel set because epsilon<beta/4. For q=nu>=1, the ball estimate gives a bound no larger than

`8mu (2r)^(N-1) (epsilon/beta)^(1/mu)`.

One may use `4^(1/q)<=4` and `(epsilon/beta)^(1/q)<=(epsilon/beta)^(1/mu)`. The explanatory `4^(1/mu)<=4` in L140 is harmless but the direct first inequality makes the reasoning clearer. The sum is

`2^(N+2) mu D^(N-1) kappa (epsilon/beta)^(1/mu)`.

Substitute the upper bound on kappa to obtain exactly the printed

`C_sub = 2^(N+2) mu (sqrt(N)d)^(N-1) (M/beta) [1+(4+1/vartheta)sqrt(N)d]`.

Every domain loss, derivative order and constant in this chain is paid. No hidden polarization factor or component-count assumption remains.

### 4. Mode-dependent divisors and the power exponent

For each k!=0, set `c_k=k/|k|_2` and `epsilon_k=(Psi(k)/|k|_2)^rho`. The bad-mode condition implies the corresponding scalar sublevel condition. D1, D2 and D3 are uniform in the coefficient direction and the mode, so the scalar theorem applies **separately** to each perturbed map. There is no need for the maps for different modes to agree. D4 is precisely the range restriction needed to apply the scalar estimate. Countable subadditivity gives

`meas(K minus H) <= C_sub beta^(-1/mu) sum_{k!=0} (Psi(k)/|k|_2)^(rho/mu)`.

Each mode inequality is closed relative to compact K; their intersection H is compact. The formula is meaningful also when the series diverges, in which case the upper bound is vacuous. With a power profile,

`Psi(k)/|k|_2 <= sqrt(m) gamma |k|_1^(-tau-1)`.

The strict exponent hypothesis implies tau+1>0, even in the small-dimensional cases where tau itself could be negative. Thus the proof of D4 from `(sqrt(m)gamma)^rho<beta/4` is valid; no unstated tau>=0 premise is needed for this measure theorem.

Writing `s=rho(tau+1)/mu-m`, the lattice shell sum is bounded by

`2*3^(m-1)(1+1/s)`

exactly when s>0. Therefore the exponent condition is

`tau > m mu/rho - 1`,

and **in the maximal case m=N** it is the requested `tau>N mu/rho-1`. The parameter-space dimension N must not replace m in the general theorem. The remaining constant is exactly

`C_Dio=C_sub beta^(-1/mu) m^(rho/(2mu)) 2*3^(m-1)(1+1/s)`.

Both branches of gamma_* are correct: its first branch supplies strict D4 via the extra factor 1/2; its second gives loss at most epsilon*. Since K has finite measure and H is compact, subtracting the finite bad-set measure yields `meas H>=meas K-epsilon*`. The extra frozen physical-torus constraint is separately `tau>N-1`; PLAN's maximum of the two exponent requirements is correct. This **measure** summability improvement does not by itself prove that a KAM iteration works at that weaker exponent; the future homological/extension schedule must establish that independently.

Rus01 pp.192–193 has a squared-divisor sum with exponent 2/mu0. The new proof rederives the scalar maximal case rather than substituting p=0 into formulas containing degenerate p-dependent constants. This avoids the convention mismatch identified in the earlier Rüssmann review. CP09 (36) is consistent after inverting the loss/threshold exponents as in P11A1-02.

### 5. Similarity changes and the limits of the chart interface

For A(y')=y0+lambda y', each derivative tensor is multiplied by lambda^k in both declared norms. Thus

`beta' = min(1,lambda^mu) beta`,

`M' = max(1,lambda^(mu+1)) M`

are valid choices. The minimum uses orders **including zero**; it is not simply lambda^mu beta for lambda>1. The corresponding diameter/thickening and measure factors are `d/lambda`, `vartheta/lambda`, and `lambda^(-N)`. The physical divisor inequalities are unchanged by reparameterizing their base variable, and the bad-set measure scales back by lambda^N.

The closeness condition is not invariant. Multiplying the old scalar perturbation bound by `max(1,lambda^mu)` shows that the printed sufficient condition in (c), equivalently

`old closeness <= min(1,lambda^mu) min(1,lambda^(-mu)) beta/2`,

is correct. **D4 must likewise be rechecked with beta'** (or gamma selected again from the new gamma_*); the lemma does not claim it survives automatically. A similarity does not cover a general anisotropic fast/slow normalization or nonlinear polar transformation. The Part-11 preparation must supply those frequency and domain constants explicitly, or choose a genuine similarity chart to which this lemma applies. The file correctly does not identify Part 10's n-dimensional parameter patch with the prepared maximal 2n-dimensional action domain.

## Split coherence and the frozen P-FIXED contract

The division of labour is sensible after the listed plan fixes: 11a-1 supplies finite-order measure/stability; 11a-2 a canonical analytic step with parameters; 11a-3 its actual schedule, extension and parameter/limit bridge; 11a-4 the small Lipschitz **defect** and primary torus family; 11a-5 the quantified smallness/displacement/budget interface. Part 11 must then prepare the planetary problem with C^mu control on the shrinking domains, and Part 13 performs physical transport and assembly.

That architecture can target the literal frozen order

`n,G,m0,m,a,eta -> exists eps0,d,D -> forall 0<eps<eps0 -> exists S`.

The scalar index mu here is a derivative order, not the physical coupling. Part 10 supplies a coupling-independent amount only for `(nu,Omega)` on its original patch. Preparation must **prove**, not assume, the C^mu comparison and the rescaled positive amount/derivative bounds for its maximal frequency map. A C0 approximation is insufficient. The plan acknowledges this distinction; the similarity lemma does not eliminate it.

The frozen conclusion asks for Borel S of strictly positive finite full phase volume, inside `circularTube eta`, and a witnessing whole physical torus through every point. Each witness must satisfy all eight physical-torus clauses, NoCollision for all phases, the actual fixed-Sun equations for every complete orbit, and PairBounds including the Sun at the constant origin. The derivative-measure results alone supply none of those dynamical/transport clauses. To reach them the future wrapper needs:

- a correctly primary action-angle family and a Borel measured cell;
- a positive-measure image with a justified lower Jacobian/Lipschitz bound;
- quantitative displacement after **all** preparation/polar/physical maps, including their scaling factors;
- one positive coupling threshold chosen after the outer data and before eps;
- the physical chart/Part-6 fixed-Sun reconstruction and mu-independent pair-bound argument.

The budget must be a **lower bound** `epsilon_adm>=c eps^B`, with finite B including every shrinking width and frequency amount; then a preparation order nu>B can be fixed before eps. An O upper bound or an unquantified sufficiently-small threshold cannot serve this purpose. The plan requests the correct direction but has not proved it. Its finite-extension and Cantor-gap Lipschitz arguments remain named future obligations, not accepted lemmas or hidden assumptions of this review.

## Validation, source errata and closeout

- `cd blueprint-P && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: **exit 0**, **139 pages**. Final log: **0** lines beginning `!`, **0** undefined-reference/multiply-defined-label warnings. Layout and PDF-string warnings remain. Visually inspected rendered p.127 containing the divided-difference lemma and quantile-node construction; no clipped formulas were observed there. The rendering also exposes the stray `sourcegap` command placed inside source prose at L96; remove that redundant inline macro when correcting the provenance note, keeping a single properly placed note if desired.
- Mechanical internal-label check for this part: **56 labels; no unresolved internal reference**. Checked the substantive cross-part inputs directly.
- Exact rational check of `sum_i 1/(i!(q-i)!)=2^q/q!` for q=1..10; general proof independently derived by the binomial theorem. The polynomial sampling mentioned by the author was not used as proof evidence or rerun.
- Independently substituted the proposed cutoff loss into its own bound; the numerical value in P02 is supplementary evidence of the algebraic prefactor failure.
- Mathlib names inspected without a Lean build: `Lagrange.interpolate` exists in `LinearAlgebra/Lagrange.lean:298`; `exists_deriv_eq_zero` exists in `Analysis/Calculus/LocalExtr/Rolle.lean:61`; Haar image under a linear map exists in `MeasureTheory/Measure/Lebesgue/EqHaar.lean:297`. Orthogonal completion needs the correction in P11A1-03. Arbitrary iterated derivatives and Euclidean directional tensors still need the explicit coordinate/norm bridges described in the file; no compilation claim is made.
- `scripts/lint_sources.sh`: **exit 0**, `check_lean_modules: PASS (214 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (144 frozen declarations)`.
- No Lean execution/build or fresh `#print axioms`. Only this report was authored; ignored LaTeX output and temporary inspection files were generated. No production TeX, PLAN, frozen file, manifest, errata ledger or git history was edited.

**Suspected new pinned-source errata: none established.** Rus01's external Bakhtin citation is an input, not a newly demonstrated mathematical defect. Its extension argument is present. Existing source errata and the full CP09 power-law KAM adaptation are not independently closed by this measure review.

**Closeout:** the written measure estimates are acceptable after local fixes; the specified Part-11a/P-FIXED handoff remains **REVISE** until the major plan/interface rows are resolved and the future iteration, limiting-frequency, displacement and polynomial-budget proofs exist.

Final verification: all seven tabled input hashes remained unchanged; the report passes the whitespace check. File 11a-1 can be used as a measure lemma package after its local fixes; this does not certify the remaining KAM gate.
