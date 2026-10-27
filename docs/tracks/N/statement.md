# Track N — mathematical statements, draft 0.2

Phase 0, 27 October 2026. This packet is ready for statement review, not frozen or proved. Exact intended
Lean text: `.drafts/N/Statements.lean`. The primary authority is BM11 v2, pp. 4–5; quotations, hashes and
citation verification are in [sources.md](sources.md). Suspected source issues are in [notes.md](notes.md).
The original N-HEAD type is unchanged under D17/D18. Its new source gap F-N1 is explicit below.
A second, separately named strengthened-input theorem N-HEAD-C is proposed for owner review.
No assertion below is a planetary collision or escape theorem.

## Conventions and definitions

1. **Dimension and coordinates.** Fix n≥3 for both headline candidates; the two gates allow any n. Real actions and lifted angles are `Fin n → ℝ`, complex
   coordinates `Fin n → ℂ`. Integer angle shifts are `Fin n → ℤ`. Period is one, as in BM11 p. 4.
   Phase points have order (θ,I), as in the frozen `KAM.realHamiltonian` and `KAM.hamiltonianVectorField`.
2. **Domains.** Fix R,s>0. Write B=B(0,R) for the open maximum-norm ball and B_s for the real points
   in its complex s-neighbourhood. D_s=T_s×B_s^ℂ. The neighbourhood and strip are exactly the frozen
   `KAM.actionNbhd` and `KAM.complexStrip`; s is geometric width, not Fourier coefficient radius.
   This transcribes BM11 p. 4. Existential distance witnesses in `actionNbhd` express distance <s exactly.
3. **Analytic class.** h is holomorphic on B_s^ℂ, continuous on its closure, bounded there in the open
   domain, and real at real actions. f is holomorphic on D_s, continuous on its closure, periodic in θ,
   real at real points and bounded by ε on D_s. This retains BM11's A_s(D), including boundary
   continuity. The numerical bound on h's value is existential and not a parameter of the constants.
   Real C³ regularity of h is recorded explicitly as a redundant typing guard; it follows from
   holomorphy on the open neighbourhood. Global function arguments represent extensions; every
   mathematical assertion concerns the stated domain, without inserting fallback values in definitions.
4. **Quasi-convexity.** On B_s, ∇h(I)≠0, and for every real vector v with
   ∑ᵢ∇h(I)ᵢvᵢ=0, one has D²h(I)[v,v]≥m‖v‖∞², with m>0.
   This is BM11 (QC(m)), p. 4, including the nonvanishing gradient. It is not positive definiteness
   of the whole Hessian, nor mere invertibility of the Hessian. The dot product is Euclidean, while
   the norm is the source's maximum norm. The predicate also requires an open domain and C² regularity
   so that its occurrences of `fderiv` have their intended meaning.
5. **Derivative bounds.** Fix M>0. For every I∈B_s and every coordinate partial of total order 1,2,3,
   |∂ᵏh(I)|≤M, as in BM11 (B(M)), p. 4. Lean evaluates `iteratedFDeriv` on ordered coordinate basis
   directions. Symmetry of derivatives for C³ functions identifies these with the source's multi-indices.
   No bound on a full multilinear operator norm is substituted. The C³/open-domain guards are explicit.
6. **Solutions.** For H=Re(h+f) on real points, z=(θ,I) is a solution on J if I(t)∈B,
   H is differentiable at z(t), and `HasDerivAt z (KAM.hamiltonianVectorField H (z t)) t`
   for every t∈J. Thus θ̇=∂_I H and İ=−∂_θ H. Differentiability guards the frozen vector field;
   no arbitrary vector field, confinement proxy, or pre-existing invariant torus is assumed.
   Curves are total functions of real time, with assertions only on J; derivatives at endpoints
   are ordinary two-sided derivatives. No regularity or dynamics is claimed outside J.

## N-HEAD — classical quasi-convex Nekhoroshev

**Parameters fixed first:** n≥3, R,s,M,m>0. Set a=b=1/(2n).

**Constants:** there exist C,T,c,ε₀>0 depending only on these parameters, with Cε₀ᵇ≤R/4.
They precede **both h and f**, not just the perturbation, in the Lean quantifiers.

For every h and f satisfying items 3–5, and every 0<ε≤ε₀ such that |f|≤ε on D_s,
for every θ₀∈ℝⁿ and I₀∈B(0,R/2), put L_ε=T exp(cε^{−a}). There is a curve z with

- z(0)=(θ₀,I₀), solving the actual Hamilton equations on the closed interval [−L_ε,L_ε];
- I(t)∈B and ‖I(t)−I₀‖∞≤Cεᵇ throughout that interval;
- for every 0≤L≤L_ε and every other genuine solution y on [−L,L] in the same domain, with
  y(0)=(θ₀,I₀), y(t)=z(t) for all t∈[−L,L].

Thus the statement covers every initial angle and action, supplies existence over the whole advertised
interval, and makes the estimate apply to any solution over that interval. The uniqueness clause is
ordinary ODE uniqueness, not a quasi-periodicity assertion. With the displayed margin, actions actually
remain in B(0,3R/4). Lifted angles may be unbounded; their derivatives can be bounded using periodicity
and Cauchy estimates, so no finite-time escape in the angle lift is hidden by the torus notation.

**Source of each clause.** BM11 p. 4 supplies domains, norms, analytic class, QC and B(M); p. 5 supplies
uniform stable constants and the two endpoint estimates; p. 13 starts with arbitrary (θ₀,I₀), treats
maximal existence in Tⁿ×B, and uses compact action confinement for continuation. The explicit derivative
and uniqueness clauses are our standard ODE completion of that reading. Cε₀ᵇ≤R/4 is obtained by shrinking
ε₀ after C is chosen; it is a conclusion about the constants, never a hypothesis about a solution.

**Endpoint calculation:** δ=1/[2n(n−1)] gives δ(n−1)=1/(2n) and
1/[2(n−1)]−δ=1/(2n). These are the exponents printed immediately below Theorem 2.1.

### Source gap F-N1 — original N-HEAD remains unaltered

**Unresolved source import, not a refutation of N-HEAD.** BM11 p. 8 imports Pöschel's Theorem 3 as
“exactly the content” of its resonant estimate. Pöschel p. 190 assumes a uniform Hessian bound on a
**complex** neighbourhood. N-HEAD's B(M) is only a real C³ coordinate bound. The boundedness witness
in `IsAnalyticIntegrable` depends on h and cannot supply a constant fixed before h.
The independent audit §4 exhibits, with n=3, R=s=1, M=6, m=1/2,

    h_N(z)=3z₀+(z₀²+z₁²+z₂²)/2+sin(Nz₁)/(4N³).

All real hypotheses hold uniformly, whereas at z=(0,ir,0), for any fixed 0<r<1,
`∂₁²h_N(z)=1−i sinh(Nr)/(4N)` is unbounded as N grows. Shrinking to a fixed positive width does not
supply the missing uniform bound. This is a counterexample to that analytic upgrade, not to the
stability conclusion. N-HEAD therefore keeps its owner-ruled mathematical target and exact quantifiers,
but **proof-route sign-off is withheld**. No complex or frequency bound has been inserted in its type.
See E-N-BM-4 in notes.md and POS190-HESS/POS192-NF in sources.md.

## N-HEAD-C — separate theorem with uniform complex and frequency bounds

Lean name: `KAM.Nekhoroshev.quasiConvex_nekhoroshev_complexBound`.

**Fixed parameters:** n≥3 and R,s,M,m,Mcomplex,ωmin>0, all chosen before C,T,c,ε₀.
Retain every analytic, real QC(m), real B(M), perturbation, and initial-data premise of N-HEAD.
Add exactly these two quantitative source-route inputs:

1. `HasComplexHessianBound R s h Mcomplex`: complex C² on B_s^ℂ and
   `‖fderiv ℂ (fderiv ℂ h) z‖ ≤ Mcomplex` there. The C² conjunct is a redundant typing guard for
   the second derivative; the uniform numerical bound is new. The norm is the iterated operator norm
   on the prescribed coordinate maximum-norm spaces.
2. `ωmin ≤ ‖∇h(I)‖∞` for every I∈B(0,R). The lower bound is on this real ball, not on a complex gradient.

**Conclusion:** exactly the same existential constants, R/4 threshold margin, genuine-solution existence
on `[−T exp(cε^{−1/(2n)}), T exp(cε^{−1/(2n)})]`, action bound, and equality with every other solution
as N-HEAD. The positive-size and smallness restrictions are identical. N-ZERO supplies the size-zero case.
Neither source nonresonance nor a resonant normal form nor any confinement estimate is assumed.

**Why these inputs, and no additional independent parameters:** Pöschel's Theorem 1, pp. 190–191,
uses a complex Hessian upper bound, quantitative l,m-quasi-convexity, and a frequency upper bound in
its time prefactor. It also has a low-frequency exception giving only a fixed-radius all-time bound.
The added Mcomplex and ωmin, together with the existing QC(m), give explicit l and a reduced curvature
constant by the vector decomposition in sources.md. Choosing the auxiliary radius using ωmin excludes
the low-frequency exception. Existing first-order B(M) supplies the frequency upper bound. No extra
independent l, frequency upper bound, uniform h-value bound, or complex third-derivative bound is required.
The higher real B(M) orders remain for compatibility with the approved class, not because Pöschel needs them.

Every input is pinned to a printed source line/display in the v0.2 anchor table in sources.md.
The frequency lower bound is an **explicit route strengthening** justified by POS190-QC and POS191-LOW;
it is not misquoted as a blanket premise of Pöschel's theorem, nor declared logically necessary for all
Nekhoroshev results. A direct Pöschel Theorem 1 route supplies the classical endpoint without using the
faulty uniform-in-λ sentence or the same-inner-ball restart in BM11. The normal form, source conversions
and ODE completion remain unproved Lean obligations.

## N-ZERO — genuine unperturbed motion, including size-zero perturbations

For any n and R,s>0, take h in the analytic class and any analytic periodic perturbation f with |f|≤0 on
D_s. No quasi-convexity or derivative bound is needed here. For every θ₀ and I₀∈B(0,R/2), the explicit curve

    z(t) = (θ₀ + t∇h(I₀), I₀)

has z(0)=(θ₀,I₀), solves the actual H=h+f equations for every real t, and has I(t)=I₀ for every t.
The hypothesis forces f=0 on the open complex domain and hence all its local derivatives there vanish.
The theorem is stated for the actual f, not merely for the globally zero function.

This is our direct supplement from the integrable Hamiltonian on BM11 p. 1. The printed |f|_s<ε excludes
ε=0, and the negative power ε^{−a} is not assigned a finite Lean junk-value interpretation at zero.
The two separate theorems cover ε>0 and ε=0 consistently; no piecewise time definition is introduced.

## N-QC — geometric gate: the isoenergetic derivative

For any n, h real C² on an open set U and satisfying the exact QC(m) predicate there, every I∈U and λ>0
has the following property: the derivative at (I,λ) of

    Ψ_h(J,μ) = (h(J), μ∇h(J))

is bijective from ℝⁿ×ℝ to ℝ×ℝⁿ. In coordinates it sends (v,u) to
(∇h(I)·v, u∇h(I)+λD²h(I)v). Source: BM11 Lemma 3.3, pp. 9–10, especially its derivative computation
and nonsingularity proof. This is a reusable gate for energy confinement and for track I.
It asserts no uniform inverse radius. The unused dimension restriction is removed in v0.2 (F-N4),
so this gate can serve the n=2 consumer in track I. Passing from bijective derivative to a local diffeomorphism is
ordinary inverse-function infrastructure, not an extra frozen theorem in this packet.

## Deviations and deliberately unselected assertions

| ID | Difference from the source | Reason and exact effect |
|---|---|---|
| D-N-1 | n≥3 is required | Agrees with the campaign's selected scope; Theorem 2.1 itself does not print this restriction. It ensures all exponent denominators are nonzero. n=2 is not being claimed impossible. |
| D-N-2 | Pointwise ‖f(z)‖≤ε replaces strict sup ‖f‖_s<ε | For ε>0 apply BM11 with 2ε; take C=c₁2ᵇ, T=c₂, c=c₃2^{−a}, and ε₀≤ε₀,source/2. Endpoint exponents and uniformity are unchanged. |
| D-N-3 | Separate size-zero theorem | Repairs an empty printed ε=0 case without interpreting zero to a negative power. |
| D-N-4 | Existence, differentiation, uniqueness and Cε₀ᵇ≤R/4 explicit | Supplies the standard ODE continuation/uniqueness obligations implicit in BM11 pp. 11–13; no drift estimate is assumed. |
| D-N-5 | C³/C² and open-domain clauses in predicates | Redundant regularity/typing data under the analytic source assumptions; guard totalized derivatives. Coordinate lists encode exactly the source partial derivatives. |
| D-N-6 | N-QC only uses the pointwise nonsingularity proof | Does not adopt the problematic uniform radius sentence of Lemma 3.3. Its open set U generalizes the ball locally; the algebraic proof uses no ball geometry. |
| D-N-7 | Only the classical endpoint is selected | No improved tradeoff, fixed-radius second clause, Gevrey theorem, or claimed optimality is frozen. |
| D-N-8 | Distinct N-HEAD-C adds Mcomplex and ωmin before constants | Direct quantitative Pöschel route, with exact source anchors and explicit conversions; original N-HEAD unchanged. Pending owner selection. |
| D-N-9 | N-QC and N-ZERO allow all dimensions | Removes unused hypotheses (F-N4), permitting track I's n=2 use; D17 still governs both headline candidates. |
| D-N-10 | N-HEAD-C translates period, norm, and time explicitly | Uses φ=2πθ, H̃=2πH, a fixed strip loss for Fourier norms, and dimension bounds for Hessians; no hidden h-dependent constant. |

The original N-HEAD has no lower frequency bound added to BM11, no nonresonance hypothesis, no pre-assumed normal form,
no confinement hypothesis, no inverse-matrix junk value, no `Real.sqrt`, and no integrals.

**N-STEEP is deferred**, as permitted by the brief. Its source statement and steepness formula are retained
in sources.md, but no Lean definition or theorem is drafted. The max/min over spheres, Euclidean projection,
extension domain and ε-normalization must be settled together, rather than approximating steepness by a
simpler predicate. This is not a missing Phase 0 deliverable for the selected quasi-convex target.

## Owner questions and recommendations

1. **Dimension:** approve n≥3 for this packet? **Ruled yes by the owner (D17, 2026-10-27).** Recommendation was yes, matching the selected campaign scope;
   retain n=2 as a separately audited extension (its denominator is valid, and stronger track-I statements
   exist, but no unverified all-time inference is used here).
2. **Endpoint convention:** **Ruled as recommended by the owner (D18, 2026-10-27).** approve ≤ε with explicit factor-two rescaling and a separate all-time size-zero
   theorem? **Recommend yes**; it avoids the source's empty zero case and preserves all exponents.
3. **Uniformity:** **Ruled as recommended by the owner (D18, 2026-10-27).** approve constants uniform in h as well as f under the fixed n,R,s,M,m? **Recommend yes**,
   exactly as BM11 defines stable constants. Do not silently add a frequency lower-bound parameter. Audit
   the quantitative proof route before freezing; a required new premise would need a separate owner ruling.
4. **Physical/ODE content:** **Ruled as recommended by the owner (D18, 2026-10-27).** approve the existence, equality with other solutions, and R/4 margin clauses?
   **Recommend yes**. They make the promised time interval and “every solution” explicit.
5. **Gate boundary:** **Ruled as recommended by the owner (D18, 2026-10-27).** approve N-QC and N-ZERO, and defer N-STEEP and the uniform inverse-radius claim?
   **Recommend yes**. The former have exact local contracts; the latter require further source analysis.
6. **Source defects:** **Ruled as recommended by the owner (D18, 2026-10-27).** require resolution of E-N-BM-1 through E-N-BM-3 before proof-route sign-off?
   **Recommend yes**. The headline is an intended theorem; this packet does not certify the printed proof.

7. **Which theorem should be frozen as the track-N headline?**
   - **Recommend N-HEAD-C**, after a fresh independent audit of this v0.2 source conversion and the new exact
     Lean text. It adds the two visible fixed bounds needed by the selected direct Pöschel route and retains
     the same dynamical conclusion. It is a smaller uniform class; D18-Q3 is not being retroactively changed.
   - Alternatively retain **N-HEAD** as the headline under D17/D18, with F-N1 explicitly open. This preserves
     the broader approved target but requires a new uniform analytic argument or another verified source.
   Keep both named declarations visible until the owner selects; neither is silently substituted or frozen.

Questions 1–6 record existing rulings. Question 7 is the new owner decision. The gate dimension generalization
D-N-9 is also visible for exact-text approval. These questions do not interrupt this authorized revision.

## Additions (D22), draft v0.3

These additions are **unapproved statement drafts**, dated 27 October 2026. D20's frozen N-HEAD-C,
N-ZERO, N-QC and their definitions remain authoritative and unchanged. Historical questions above do not
reopen D20. Exact new text: `.drafts/N/Additions.lean`, namespace `KAM.Nekhoroshev`. The three new theorem
bodies contain `sorry`; no provider or proof is supplied. The round-3 corrections govern this section.

### Conventions and reuse

The ambient coordinate spaces are `Fin n → ℝ` and `Fin n → ℂ`, with maximum norms. A canonical point is
(positions, momenta). Reuse the frozen `Planetary.Phase`, `fast`, `slow`, `fastShift`,
`degenerateHamiltonian`, and the frozen N `realPart`, `actionBall`, `IsAnalyticIntegrable`,
`IsAnalyticPerturbation`, `IsSolutionOn`; these in turn reuse track K's domains, frequency map,
real Hamiltonian and genuine Hamiltonian vector field. No existing definition is shadowed.

For partial convexity, n counts **fast** actions and k counts slow canonical pairs: n ≥ 2, k ≥ 1.
The positions are (φ,q), the momenta (I,p). Fast angles have period **2π**, exactly as Nekhoroshev §4.3
and the frozen planetary `fastShift`; the slow coordinates have no periodicity requirement. For averaging,
there are n ≥ 2 actions and n period-**1** angles, as in the existing N analytic classes. Conversion of AKN's
phase coordinate φ to 2πθ changes the angular equation and the phase-volume constant, not the time interval
or the ranks. The two conventions are explicit; neither frozen interface is redefined.

New literal definitions are `complexifyPhase` (coordinate inclusion), `innerCore` (closed maximum-norm
ball contained in an open domain), `partialComplexDomain`, `HasDefiniteFastPart`,
`IsPartialPerturbation`, the two source exponents, `HasAveragingFrequencyRank`, and `averagingError`.
There are no default branches or chosen witnesses. Theorems guard all derivatives by regularity on open
neighborhoods, all time inverses and powers by positive parameters, and the real supremum by nonempty
compact time intervals and bounded action trajectories. The mean theorem concludes integrability and uses
the nonnegative Lebesgue integral, not an unguarded Bochner integral.

### N-PARTIAL-CONVEX — `partialConvex_nekhoroshev`

**Fixed data, before the smallness threshold.** Open convex G ⊂ ℝⁿ, arbitrary open
D ⊂ ℝᵏ × ℝᵏ, positive ρ,g,m,Mcomplex, and a fixed integrable h. Let U be the real slice of
`actionNbhd G ρ`. Assume:

1. h is holomorphic and complex C² on `actionNbhd G ρ`, real on U, and
   ‖D²h(z)‖op ≤ Mcomplex **throughout that complex neighborhood**.
2. `realPart h` is real C³ on U. There is one fixed sign σ ∈ {1,−1} such that on U,
   ‖∇h(I)‖∞ ≥ g and σ D²h(I)[v,v] ≥ m Σᵢvᵢ² for every v.

Thus strong convexity **or strong concavity** is required only in the fast actions. There is no Hessian
condition in the slow variables and no slow frequency-rank hypothesis. This is a specialization of the
source's steep setting, with all steepness indices equal to one; it deliberately does not yet include every
quasi-convex fast Hamiltonian. A definite Kepler fast part on a compact action box fits the intended class.
The lower frequency bound is explicit. Complex control is not inferred from real derivatives (F-N1).
The real enlargement supplies room for the convex-to-steep conversion; its domain bookkeeping is an audit
obligation, described in notes.md, not an extra conclusion-shaped premise.

Set

    a(n) = 2/(6n² − 3n + 14),     b(n) = 3/(6n² − 3n + 14) = 3a(n)/2.

These are obtained by substituting α₁ = ⋯ = αₙ₋₁ = 1 and ζ = n(n−1)/2 into source (4.1), (4.4),
(4.5). For n=2 the values are a=1/16, b=3/32. We do **not** use 1/(2n).

**Quantifier order.** After all fixed data above, ∃ μ₀>0; then ∀ 0<μ<μ₀, ∀ normalized P,
∀ C>0, ∀ actual solution z on [0,C], ∀ queried times t. Neither μ₀ nor the exponents depend on P, μ,
C, z or t. This first statement is fixed-h, not a uniform-in-h family theorem. Mcomplex is nevertheless
an explicit input needed by the source. We do not claim the threshold is independent of G,D or k.

Here P is holomorphic on the source tube F, real on real points, 2π-periodic in φ and bounded by one.
F consists of Re I∈G, (Re q,Re p)∈D, and each imaginary coordinate of (φ,q,I,p) of size <ρ.
The actual real Hamiltonian is

    Hμ(φ,q,I,p) = realPart h(I) + μ Re P(φ,q,I,p).

In Lean this is the frozen `Planetary.degenerateHamiltonian` with the displayed perturbation. `IsSolutionOn`
requires Hamilton's equations and differentiability of this Hμ at every visited point, as well as I(u)∈G.
It is a supplied solution segment, not a proxy quantity or an assertion of a maximal lifetime.

**Stopped conclusion.** Put d=μᵇ and T=μ⁻¹ exp(μ⁻ᵃ). If I(0)∈innerCore(G,d), then for each
0≤t≤min(C,T),

    [for every 0≤u≤t, (q(u),p(u)) ∈ innerCore(D,d)]
       implies   ‖I(t)−I(0)‖∞ ≤ d/2.

The slow-domain test belongs to the history **through the queried time**, inside the conclusion. There is
no assumption of slow confinement on [0,T] or even on [0,C]. Applying Theorem 4.4 to the restricted segment
[0,t] proves exactly this form (t=0 separately). It is the estimate up to the first exit from the **eroded**
slow domain, with the endpoint included only when its history still satisfies the margin. No `sInf` of an
empty exit set is used. A stopped theorem cannot itself prove slow confinement; this is what P's angular
momentum bootstrap must establish.

The source uses M=sup|H₁| by Remark 4.5.A; M≤μ gives d(M)≤d(μ), T(M)≥T(μ), and a weaker drift bound
at μ. M=0 gives constant fast actions directly; no source formula is evaluated at zero. Maximum-norm
closed erosion is stronger than the source's Euclidean open-neighborhood erosion, and Euclidean drift
bounds imply the displayed maximum-norm bound. The complex operator norm changes by a dimension factor
absorbed in the threshold, without changing a,b. Strict source inequalities are weakened to ≤.

**Consumer contract for P-EXP-SAFE.** Work on a larger fixed fast box and slow domain, leaving fixed margins
around the desired initial set. Choose μ small enough that d is below those margins. Supply only the
solution segment before the first loss of a margin. Combine the fast drift with P's actual angular-momentum
identity to improve the slow margin; continuation then extends the segment. If the physical perturbation
has norm ≤C₀μphys, use μ=C₀μphys and P=H₁/μ, for μphys>0. This yields constants multiplying μphysᵇ and
exp(c μphys⁻ᵃ). No all-time slow confinement, collision exclusion, canonical-coordinate theorem or
1/(2n) estimate is imported as a hypothesis.

### N-AVERAGING — `averaging_mean` and `averaging_most`

**Fixed data.** n≥2, R,s>0, fixed h and f satisfying the existing `IsAnalyticIntegrable R s h` and
`IsAnalyticPerturbation R s 1 f`, and a fixed compact set K of real phase points with actions in B(0,R/2).
The perturbed Hamiltonian is the **actual** Hε=h+εf, represented by frozen `realHamiltonian`.
K is any compact subset of a lifted angular window and the action ball, not a fictitious distribution of
orbits. Measure is ordinary product Lebesgue volume on ℝⁿ×ℝⁿ, **not normalized probability**.
An angular fundamental cell can be used via its compact closure; its boundary has zero volume.

On all of B(0,R), assume one of the following global alternatives:

- Dω(I) is onto ℝⁿ for every I; or
- ω(I)≠0 and (v,c) ↦ Dω(I)v+cω(I) is onto ℝⁿ for every I.

Here ω is the frozen genuine `frequencyMap h`. The second condition is precisely full projective rank
n−1, expressed without division or a chart choice. We retain the source's global disjunction, rather than
allowing an unmentioned pointwise switch between alternatives. No quantitative lower rank bound or
constant uniform over varying h is asserted. Rank margins on interior compact sets may enter the constants.

For this Hamiltonian specialization, the average action equation in AKN (6.3) is J̇=0, because the average
of −∂θf over the periodic torus vanishes. Thus J(t)=I(0). This identity requires the periodic differentiation
and integration lemma; it is not an assumption of integrability of the perturbed motion.

**Mean theorem and κ form.** After h,f,K and the fixed data, ∃ A,ε₀>0. For every 0<ε≤ε₀ and every
family Φ of actual solutions on [0,1/ε] starting at x∈K and remaining in B(0,R), define

    eε(x) = sup { ‖(Φ(x,t)).I − x.I‖∞ : 0≤t≤1/ε }.

Then eε is integrable on K and

    ∫_K eε(x) dx ≤ A√ε.

For **every κ>0**, there exists a measurable E⊆K with volume(E)≤κ such that **every** x∈K\E satisfies

    ‖(Φ(x,t)).I − x.I‖∞ ≤ A√ε/κ    for every 0≤t≤1/ε.

A and ε₀ precede ε, Φ and κ; they are not claimed uniform in f or h. The flow premise is explicit existence
and typing data for the source's mean of errors. It contains no error estimate, no measure estimate, and
no exceptional set. This theorem alone does not assert that every initial point has a full-window solution.

**Local-domain existence corollary.** `averaging_most` has the same fixed inputs, but **no supplied-flow
premise**. There exist A,ε₀,η₀>0 with η₀≤R/4 such that for every 0<ε≤ε₀ and every 0<η≤η₀ there is a
measurable E⊆K with

    volume(E) ≤ A√ε/η,

and for every x∈K\E there **exists a genuine Hε solution** from x on [0,1/ε], in B(0,R), whose action
drift is ≤η at every time. To obtain the requested κ formulation with existence, set η=A√ε/κ, provided
A√ε/κ≤η₀. This boundary admissibility is explicit, not hidden in a κ-dependent constant. Uniqueness of
smooth Hamiltonian ODEs identifies these curves with any other solution through x on their common interval;
this corollary does not use a nonphysical averaged solution in place of the actual one.

This is a derived localization target, not a literal quotation of Theorem 6.11. The proposed proof uses
smooth localization and Markov's inequality; its source-regularity and continuation audit is still open
(see notes.md). It has a separate name so the source mean theorem is not replaced by a stronger unaudited
existence claim. Neither theorem claims √ε error outside a √ε exceptional set. The balanced consequence is
error and exceptional volume O(ε^(1/4)); for fixed κ the error is O(√ε).

### Clause-to-source map and declared deviations

| Clause | Source or explicit conversion |
|---|---|
| Fast/slow splitting, arbitrary slow domain, 2π angles, actual equations | Nek77 §1.5 p.5; §4.3.A,C p.29 |
| Nonzero frequency and steep coefficients | Nek77 §4.1.B,C p.28 |
| Convex/concave fast specialization, index one | Nek77 §1.18 p.14; §12.5 p.62; quantitative convex-to-steep lemma remains to prove |
| Complex Hessian control before constants | Nek77 §4.3.B (4.2) p.29; Remark 4.5.B p.30 |
| h on larger fast neighborhood; convex G; uniform definite sign on U | Explicit strengthening for analytic/convex domain control; not quoted as the full source hypothesis |
| μ₀ before P and arbitrary C; history through t | Nek77 Theorem 4.4 p.30, restriction to [0,t] |
| Norm-one P, μ upper bound, positive μ, zero actual norm case | Nek77 Remark 4.5.A p.30 plus monotonicity and direct zero vector-field calculation |
| a,b and prefactor μ⁻¹ | Nek77 (4.1) p.28 and (4.4)–(4.5) p.30 |
| Closed max-norm margins, max-norm drift | Stronger hypothesis/weaker conclusion than §4.2–4.3 Euclidean conventions |
| Averaging standard form and J(0)=I(0) | AKN §6.1.1 (6.2)–(6.3), pp.208–209; transcript L10042–10075 |
| Two rank alternatives | AKN §6.1.9 Theorem 6.11 p.243; L11597–11600 |
| Mean error ≤A√ε on time 1/ε | AKN (6.27) p.243; L11600–11606 |
| Compact K, exceptional measure and κ form | AKN Corollary 6.1 (6.28) p.243; L11607–11620 |
| Analytic normalized fixed f; n≥2; period one; sup norm | Specialization/convention change; fixed constants absorb norm and angular-volume factors |
| Integrability, measurable exceptional E | Analytic ODE dependence and compactness, then Markov; obligations, not assumptions |
| `averaging_most` existence and η collar | Derived localization/continuation statement; smooth-source applicability **[unverified]** |

### Owner questions for these additions

1. **Approve the definite fast class, including concavity, with the exact 1977 exponents?** Recommend yes,
   after audit of the convex-to-steep domain conversion. It includes the intended Kepler application and
   makes the weaker 1977 rates explicit. Defer broader quasi-convex hypotheses and improved 1/(2n) rates.
2. **Approve the stopped-history interface rather than an extended-real exit-time definition?** Recommend yes.
   It handles empty exit sets and endpoint margins without totalized infima, and P can consume it on every
   pre-exit segment. Retain the eroded slow domain; removing its margin is not source-faithful.
3. **Approve fixed-h constants and the explicit complex Hessian and gradient inputs?** Recommend yes.
   Do not infer uniformity in h from real derivative bounds. A future uniform class needs a separate audit.
4. **Approve the 2π partial interface alongside the period-1 averaging interface?** Recommend yes, to reuse
   frozen planetary coordinates exactly. Any later canonical rescaling must transform conjugate actions too.
5. **Which averaging statements should freeze?** Recommend the source mean/κ theorem first, after acquiring
   and checking the complete third-edition source page and standing hypotheses. Keep `averaging_most` as a
   separately reviewed local existence corollary until its smooth localization route is verified. Both exact
   drafts are supplied now; neither is silently presented as already approved.
6. **Use absolute or relative exceptional measure?** Recommend absolute Lebesgue volume as printed. A
   relative formulation can subsequently divide by volume(K) when it is positive; no probability measure or
   uniformity over shrinking K is implicit.

These questions are the requested review record, not a request to interrupt this authorized Phase 0 work.
