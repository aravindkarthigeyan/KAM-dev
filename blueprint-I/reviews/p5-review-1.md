# Track I, Part 5: independent refute-first review 1

## Verdict: ACCEPT WITH FIXES

**No blocking or major mathematical finding.** The argument proves the frozen I-HEAD statement from the actual `bpI:p3:tori` interface and the cited shared ODE results. It supplies the missing work identified by **I3-01/I3-02**: localization and ordering of the deformed tori, an open enclosure whose energy-level boundary consists of those tori, and a confinement bound for the **whole enclosure**. It never puts the initial action on the unperturbed energy curve and does not hide a Jordan separation theorem.

The fix is a minor inaccurate Mathlib theorem name. This is acceptance of this mathematical blueprint part, conditional on its stated upstream theorem interfaces; it is not certification of a Lean provider or independent recertification of the I-G1 iteration.

## Scope, snapshot, and materials

Reviewed `blueprint-I/parts/p5-confinement.tex`: **201 lines, 26,416 bytes**. Initial HEAD was `1a476ee1ae8fc3a40d7c24fe2b7b434acd3306c8`; concurrent commits moved HEAD while the audited file stayed byte-identical. Snapshot **I5-R1** is identified by these hashes:

| Input | SHA-256 |
|---|---|
| `blueprint-I/parts/p5-confinement.tex` | `2e8590f5c3b25aa300b0110ce85160d1d0d63ed678864abdf129b20017b21ab6` |
| `KAM/Frozen/Iso/Theorems/AllTimeConfinement.lean` | `a34b694a41518bacffd88a22455d8242500d4c0fd7aba434906c0b510cbd91bc` |
| `KAM/Frozen/Iso/Defs/IsHamiltonianSolutionOn.lean` | `79a01d5aa5b1be4c564176da35d6a69994dbaa9f5976466c7dbcb5bf8c21b7ac` |
| `blueprint-I/parts/p0-conventions.tex` | `b7d03bed902122fab0cb1cdcf47816492caad9e55d67aabb8b1e836d187ab13f` |
| `blueprint-I/parts/p3-iso-local-charts.tex` | `7cdfc8e88b9b1174e13b9555dea19276feaf57a0b0cdc6736983ac390042ba0c` |
| `blueprint-I/reviews/p3-review-1.md` | `924e9a46471197ce87ba6474e7473aede8fd4393e488af4869ef5b546864fca3` |
| `blueprint-N/parts/p3-hamiltonian-ode.tex` | `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d` |
| `sources/incoming-I/cc07.pdf` | `ddab68a2b4f7ffe0fa3808fd5ec554531ab0609557b2445b0e6e3f5cba5bd2e2` |

Read the complete review brief and both reviewed/upstream sections, AGENTS.md, governing PLAN/DECISIONS and writer conventions, track-I PLAN/source notes, the actual frozen theorem/solution predicate and imported action-neighborhood/real-Hamiltonian/field conventions, Part 0's transcription, the complete I3 review, and the relevant N ODE interfaces and proofs. Checked K's mean-value, real-restriction and Hamiltonian-real interface uses. Inspected the cited topology declarations in local Mathlib. Rendered **CC03 printed p. 7** directly from the pinned December-2003 preprint: its Theorem 1.1 does state an invariant region bounded by two KAM tori. Its text extraction is corrupt, so the page image was the authority.

Focused tier-2 manuscript audit: direct recomputation and literal contract comparison followed by adversarial attempts to invalidate the barrier/localization argument. No second reviewer or machine-checked proof is claimed. The user/brief authorize the report and narrow LaTeX build and prohibit manuscript/git edits; Lean builds are expressly unnecessary. Only this report was authored.

## Findings

Locators refer to I5-R1.

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| I5-01 | Z2, `bpI:p5:ext-top`, line 54: `IsCompact.exists_forall_ge` | minor | This exact Mathlib declaration was not found. `Topology/Order/Compact.lean:249` supplies `IsCompact.exists_isMaxOn` with `IsCompact`, nonempty-set and `ContinuousOn` hypotheses. The proof needs extrema only on nonempty compact subsets inside the chart, so the mathematics is unaffected. A similarly named `Continuous.exists_forall_ge` exists but has different hypotheses. | Cite `IsCompact.exists_isMaxOn` for the maxima of the derivative norms and the corresponding minimum theorem for positive distances. Explicitly supply nonemptiness of Q and its inverse image K, and use the closed/nonempty complement of bounded W. The existing `IsCompact.exists_infDist_eq_dist` locator is genuine, but concerns distance from a point to a nonempty compact set, not directly the distance between two sets. |

The old I3 consumption paragraph still contains its overstatements, but Part 5 explicitly supersedes it at `bpI:p5:p3-gap` and does not use those claims as premises. That is not a new mathematical blocker for this part. The orchestrator should keep the downstream interface aligned when reconciling Part 3.

## Frozen I-HEAD: binder and conclusion audit

| Frozen requirement | Part 5's implementation | Result |
|---|---|---|
| B open, bounded, nonempty; positive s0,r0; h holomorphic on the complex action tube | Standing Part-3 setting; the real slice U of that tube is open and contains B | Match |
| h real and bordered determinant nonzero on every real point in that tube | Real restriction uses the reality premise literally; nondegeneracy enters through the existing Part-3 charts/tori | No extra convexity, connectedness, Kolmogorov Hessian invertibility, or global frequency diffeomorphism assumed |
| B' open, closure compact inside B; eta>0 | Empty B' is separated first; otherwise the nonempty finite chart cover and positive compact collar apply | Match, including disconnected B or B' |
| Choose eps0 before f, eps and z0 | Part-3 constants/rays, then finitely many new patch constants, then the minimum in `bpI:p5:eps0` | Correct order; no dependence on initial angle or perturbation |
| f holomorphic, period one, real on reals, pointwise bounded by eps on the original domain | `real-ham` establishes real smoothness and periodicity; all derivative estimates use the original holomorphic bound on a strictly smaller domain | No added boundary extension or derivative premise |
| 0<=eps and **eps<eps0**, including eps=0 | Every new smallness bound follows from the strict minimum; no division by eps occurs | Match |
| Every z0 with action in B', all lifted angles | Patch chosen from I0 only; torus graphs and f bounds hold for all real angles | Match |
| Exhibit total z:R->Phase with z(0)=z0 | N's maximal solution is a total representative; continuation makes its maximal interval all R | Match |
| `IsHamiltonianSolutionOn (realHamiltonian h f) B univ z` | Smoothness on R^2 x U, membership in R^2 x B and the literal ODE-predicate equivalence | All three pointwise conjuncts supplied |
| Strict action displacement <eta at every real time | Whole enclosure lies in W and within eta1/2<=eta/2 of I0 | Stronger than required |
| Every a<0<b and every B-valued solution y on (a,b), y(0)=z0 | Uniqueness on W_B=R^2 x B, restricted to (a,b) | No hypothesis that y is already in the enclosure |

The last frozen clause quantifies over **open intervals with finite real endpoints a<0<b**. N's uniqueness theorem is stronger: the same argument works on any interval containing 0 on which the competitor is a B-valued solution, including closed/half-open/unbounded intervals. Part 5 proves exactly the frozen clause and does not weaken its competitor class to solutions inside a smaller chart.

The Part-0 `bpI:p0:head` transcription agrees with the frozen binders and conclusion, including the order of the f/eps hypotheses, the unbounded angle variables, the strict upper threshold and the zero case. Frozen `IsHamiltonianSolutionOn` explicitly requires action membership, differentiability of the real Hamiltonian at every visited point, and a **two-sided `HasDerivAt`** at each time in the interval. None of these conjuncts is omitted.

## What I recomputed: real restriction and all constants

Write real h for h composed with the real-to-complex inclusion. On `R^2 x U`, both h and f have real values by the frozen premises, so `H_R=h+f` there and `|H_R-h|<=eps`. Holomorphy on the original open domain implies real C-infinity regularity on that real slice. The real Hamiltonian vector field is the real restriction of the complex one with order `(angle,action)` and signs `(partial_I H,-partial_theta H)`. Both fields agree where they are used; in Lean the equality should include the real-to-complex embedding, as usual for this notation.

On W_B, H_R is C2, so X_R is C1 and period one in the lifted angles. This proves the literal solution-predicate equivalence for **every** set of times J. Its Hamiltonian differentiability clause is furnished by smoothness, rather than discarded because fderiv is totalized.

For real I in B and every real angle, the point lies in `T_(s/2) x B_(r0/2)` with a uniform action margin. The Part-3 Cauchy bound therefore gives

`|D_I f(phi,I)[v]|<=F1 eps ||v||`.

The condition eps<=1 is available from eps0<=eps1<=1. No bound on h itself at arbitrary lifted angles is needed, since h has no angle dependence and f is periodic.

For each patch, use the **local inverse** Phi^-1:V->W of Phi=(h,m_c), not a global inverse of the possibly noninjective full map. Q is a nonempty compact rectangle inside V. Thus K=Phi^-1(Q) is compact and contained in W. Boundedness of W gives a nonempty closed complement. Its distance d from the nonempty compact K is positive, and

`r_j=min(1,d/2)>0`.

The closed r_j-neighborhood N of K is compact in finite dimension and lies strictly inside W. To verify this with actual distances, choose a nearest point of K: for I in N and J in K nearest to I, every point outside W has distance at least d from J, so distance(I,W^c)>=d−r_j>=d/2>0. Neither a missing nearest point nor the empty-set totality convention is being used.

The norms of Dm_c on N and D(Phi^-1) on Q attain finite maxima because those derivatives are continuous on their open chart domains. Taking maximum with 1 makes L_m,L_Phi positive. The ray choices give

`m_+ in (delta_m/2,delta_m)`, `m_- in (-delta_m,-delta_m/2)`.

Hence all three entries in

`kappa_j=min(delta_m/4,delta_m−m_+,delta_m+m_-)`

are positive. The two possibly small endpoint margins depend only on the already chosen rays and are paid **before** the perturbation or initial point is quantified.

The final threshold is the minimum of eps1 and, for each of finitely many patches,

| Entry of eps0 | What it pays |
|---|---|
| delta_E/4 | Energy through I0 and both torus graphs stays strictly away from the chart-energy faces |
| rho_infinity/(8 C_K) | `||Du||<=4 C_K eps/rho_infinity<1/2` |
| r_j/C_K | Actual torus actions lie in the compact chart neighborhood N |
| kappa_j/(L_m C_K) | Actual slope displacement is below both ray endpoint margins and delta_m/4 |
| 1/(2 F1 L_Phi) | Perturbed energy equation is strictly monotone in chart energy, with slope at least 1/2 |

Every denominator is positive and finite. When B' is nonempty the cover is nonempty and finite, so eps0>0. The minimum is chosen once from `(B,s0,r0,h,B',eta)` and the associated fixed patches/rays. The empty-B' branch legitimately chooses eps0=1 because there are no admissible z0. No uniform choice of patch across z0 is required.

## Graphs, localization, and the I3 findings

For each torus, the real angle map is `Psi(theta)=theta+u(theta)`. T4 gives `||Du||<1/2` on all real angles after the new threshold. The convex-set mean-value inequality on all R^2 makes u globally 1/2-Lipschitz. For each prescribed physical angle phi, `theta -> phi−u(theta)` is a contraction of complete R^2. Its unique fixed point gives global surjectivity and injectivity of Psi. Also

`||Psi(theta)−Psi(theta')||>= (1/2)||theta−theta'||`.

Consequently Psi^-1 is 2-Lipschitz and `Y(phi)=I_base+v(Psi^-1(phi))` is continuous, with `||Y−I_base||<=C_K eps`. This proves a **single global graph over every real angle**, not just a local graph, an immersion, or a graph over one fundamental cell. Periodicity of Y would also follow from the primary equivariance but is not needed for the separation proof.

The base action I_base=Phi^-1(E,m_sign) is in K. Since C_K eps<r_j, every Y(phi) lies in N, hence W, hence B. This is the chart localization missing from I3-02. The segment from I_base to Y(phi) lies in N: each point of the segment is within r_j of that particular point of K. The argument does **not** assume N or W is convex. Thus the derivative bound on N yields

`|mu_sign(phi)−m_sign|<=L_m C_K eps<kappa_j`,

where mu_sign=m_c(Y_sign). It follows strictly that

`−delta_m<mu_-<−delta_m/4<delta_m/4<mu_+<delta_m`.

These weaker margins than the original Part-3 consumption paragraph are sufficient. They separate the deformed graphs from every initial slope with `|m_c(I0)|<delta_m/4`. There is no use of T7 as though it already ordered the perturbed graphs.

Pointwise torus energy T3 gives `H_R(phi,Y_sign(phi))=E`; its real action values lie in B, so `|h(Y_sign(phi))−E|<=eps`. Torus invariance is proved on the actual W_B domain: the explicitly defined orbit

`w(t)=k_sign(theta1+(t−t1)omega_sign)`

satisfies the real ODE for all t by T2 and real restriction. N's uniqueness theorem then identifies every B-valued solution touching that torus at t1 with this orbit throughout its interval. Thus the torus union is invariant in the **two-sided, all-interval sense** required by N's barrier lemma. No assumed global flow is used to justify invariance.

I3-01 is avoided as well. At the chosen initial point, only `|E−h(I0)|<=eps` is asserted; no equality h(I0)=E is used. The original counterexample `h(x,y)=x+y^2/2`, I0=(0,0), f identically eps>0 has E=eps while h(I0)=0. In this chart m_c=y. The present construction uses the actual perturbed energy equation and the initial slope, so that fixture no longer refutes any step.

## Energy uniqueness and explicit boundary identification

For fixed real phi and slope m in the chart rectangle, write

`g(e)=e+f(phi,Phi^-1(e,m))`.

All inverse-chart points for e in the closed energy interval lie in K subset B. The line segment of **chart coordinates** is inside convex Q. Chain rule and the uniform derivative bounds give

`|(d/de) f(phi,Phi^-1(e,m))|<=F1 eps L_Phi<=1/2`.

Therefore equal g-values imply `|e1−e2|<=|e1−e2|/2`, hence equal e and equal actions. The inverse exists on an open neighborhood of Q, so derivatives at the interval endpoints are also genuine. The lemma proves **at most one** point at given phi,m and energy; it does not assert existence at every phi,m. Only uniqueness is needed in the boundary argument, so no unproved energy-graph existence theorem is hidden.

Let O be the **open** chart rectangle, Omega=Phi^-1(O), and

`Vcal={(phi,I): I in Omega, mu_-(phi)<m_c(I)<mu_+(phi)}`.

The claims used by the barrier are justified as follows:

1. Omega is open, both graph slopes are continuous, and m_c is continuous there; hence Vcal is open in the full lifted phase space. By P3, I0 belongs to Omega and has slope strictly between the graph slopes. Thus z0 belongs to Vcal and cannot belong to either graph torus.
2. Omega is contained in K; K is closed. Hence closure(Omega) is contained in K, and closure(Vcal) is contained in `R^2 x K`. This does not require compactness of the full angle-action closure.
3. Initial-point smallness gives `|E−E_c|<delta_E/2+eps`. If a point of the energy level has action I in K, then `|h(I)−E_c|<delta_E/2+2eps<delta_E`. Therefore an energy-level boundary point cannot lie on an upper or lower **energy face** of the rectangle.
4. At a boundary point (phi,I), closure and continuity give `mu_-<=m_c(I)<=mu_+`. If both inequalities were strict, the preceding energy-window margin and `|m_c(I)|<delta_m` would put the point back in Vcal, contradicting its boundary membership. Thus equality holds with one graph slope. This also excludes extra exits through slope faces `m=+-delta_m` because the graph slopes themselves lie strictly inside those faces.
5. Write Y for the corresponding graph action. Initially Y is known only to lie in N, **not yet K**. This is enough: the graph-energy bound gives `|h(Y)−E|<=eps`, so the same arithmetic with the bound on E puts h(Y) strictly inside the energy window, while its slope is inside the slope window. Since Y is in W, Phi(Y) is defined and belongs to Q, so Y is indeed in K at this stage. Thus the inverse-chart energy uniqueness lemma applies to I and Y without a circular localization assumption. Their phi, slope and perturbed energy agree, so I=Y.

This proves exactly `boundary(Vcal) intersect {H_R=E} subset T_+ union T_-`. It does not make the false assertion that the full boundary of Vcal consists only of tori; its energy faces may contain other points off the energy level.

Energy conservation on any compared solution interval puts that trajectory in G={H_R=E}. All hypotheses of `bpN:p3:gen-barrier` are now present: X_R is C1 on open W_B, Vcal is open, z0 is inside Vcal and outside the invariant S, and the boundary of Vcal on G lies in S. A first exit, forward or backward, would touch S; invariance/uniqueness would force z0 into S, a contradiction. **No Jordan theorem, connected-component theorem, or foliation of an energy neighborhood is used.** Multiple other components of the energy surface do not affect this first-exit argument.

The product expression for Lambda in the topology remark is also correct: because mu_-<mu_+, `(m−mu_-)(mu_+−m)>0` holds exactly between the two slopes, not outside both of them.

## The whole enclosed region, continuation, and uniqueness

Every action in Vcal lies in Omega subset W, including actions not lying on the energy surface and actions not on the two boundary tori. P1 gives `||I−c||<eta1/4`, while P3 gives `||I0−c||<rho_c<=eta1/4`. Hence

`||I−I0||<eta1/2<=eta/2<eta`.

This proves the required strict bound for the **entire region** and its trapped trajectories. T6's boundary-torus distance estimate is not used to infer the interior bound. K is also a compact subset of W subset S subset B, furnishing the compact enclosure for continuation.

For the maximal solution through z0, separation applies on its maximal open interval (T_-,T_+), with no prior claim of global existence. Its actions stay in K for the whole interval, hence on [0,T_+) and (T_-,0]. The vector field is C1 and angle-periodic on R^2 x B. These are exactly the hypotheses of `bpN:p3:gen-continuation-periodic`, so neither finite endpoint is possible. The lifted angles may be unbounded; they are **not** put in a compact set by fiat. The shared lemma obtains uniform local existence data by translating an angle neighborhood into a fixed compact enlarged cell over a compact action neighborhood. Its conclusion therefore applies without a hidden growth bound on the angle lift.

Having obtained T_-=-infinity, T_+=infinity, the maximal solution is the exhibited global real solution. The predicate equivalence supplies action membership, H_R differentiability and two-sided derivatives at every real time.

For any competing B-valued solution y on (a,b), a<0<b, H_R's C2 regularity throughout R^2 x B supplies the same ODE reduction. Restrict the global solution to that interval and invoke `bpN:p3:gen-uniqueness` with the common value z0 at 0. That theorem does not require either solution to remain in a chosen chart, to be bounded, or to have its actions in K. Thus uniqueness is genuinely among **all** B-valued competitors in the frozen statement. No conclusion-shaped hypothesis on y is introduced.

The zero-perturbation case is included: eps=0 forces f=0 on the open complex domain; its derivatives there vanish. Part-3 closeness yields u=v=0 on the strips. All graph, slope and energy-coordinate estimates hold, every strict comparison is to a positive data-only margin, and the construction never divides by eps. Initial frequencies may be resonant; only the two surrounding, separately selected rays need be Diophantine. The proof does not accidentally exclude resonant initial actions.

## Source, dependency, and formalizability status

The confinement bridge is correctly identified as the original D-I-CONFINEMENT argument. CC03 Theorem 1.1 p. 7 is used only as a precedent for the two-torus mechanism for its numerical truncated Hamiltonian. The rendered page matches the attribution. It is not evidence that the general I-HEAD theorem is already a published corollary. Arnold's corresponding original statement remains explicitly unverified and is not a dependency. No new suspected source erratum or introduced deviation was found in this scope.

The needed facts are small enough to expose as the displayed named lemmas: real restriction, compact margins, a global contraction inverse, slope perturbation along a short segment, one-variable energy uniqueness, a metric-space boundary argument, and the already-owned ODE package. Finite-dimensional compactness/nearest-point facts have standard Mathlib support. Correct the Z2 extrema name in I5-01; no additional high-level separation theorem is required.

All **36 internal reference labels** exist. All concrete K and N cross-reference labels exist, including `gen-invariant`, `gen-barrier`, `gen-maximal`, `gen-continuation-periodic`, `ham-energy`, `ham-periodic`, and `ham-reduction`. The literal wildcard strings `bpN:p3:*` and `bp:p1:*` in the final summary are descriptive families, not exact theorem labels; they do not represent missing dependencies. The global-existence and uniqueness work is reused from N rather than re-proved. The I-G1/Part-3 construction is an upstream input; this review checks its actual consumption and does not claim a fresh audit of every I-G1 iteration estimate.

## Validation and closeout

- `latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex` in `blueprint-I`: exit 0 (up to date). Repeated with `-g` for a fresh TeX pass: **exit 0**, **52 pages**, **0** log lines beginning `!`, **no undefined-reference warnings**. Part 5 occupies printed blueprint pp. 33–37; it has underfull-box warnings and no overfull-box warning. Cross-track labels were checked separately because the macros print literal strings.
- `scripts/lint_sources.sh`: **exit 0**, `check_lean_modules: PASS (175 Lean files, 0 comparator configurations)`, `FROZEN-ANCHOR GUARD OK`, `ABI HASHES OK (140 frozen declarations)`. These counts reflect the shared checkout at this audit, not the earlier I3 snapshot.
- `git diff --check`: passed. Final P5 SHA-256 matches I5-R1. The report was also checked for trailing whitespace and conflict markers.
- No Lean build or scratch elaboration, no `#print axioms` execution, no source/provider/frozen/manifest edit, and no state-changing git command. Axioms of a new Lean result: **not applicable**; this review writes no theorem, and the frozen I-HEAD body remains its manifest-bound `by sorry` pending a provider. The allowed build produced files only under the ignored review build directory. Concurrent unrelated worker changes were left alone.

The review is complete. I3-01/I3-02 are paid at their actual downstream point of use by the explicit final-threshold and energy-boundary arguments. Retain this proof structure; fix the Z2 locator before handing its implementation tasks to Lean provers.
