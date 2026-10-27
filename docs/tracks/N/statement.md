# Track N — mathematical statements, draft 0.1

Phase 0, 27 October 2026. This packet is ready for statement review, not frozen or proved. Exact intended
Lean text: `.drafts/N/Statements.lean`. The primary authority is BM11 v2, pp. 4–5; quotations, hashes and
citation verification are in [sources.md](sources.md). Suspected source issues are in [notes.md](notes.md).
No assertion below is a planetary collision or escape theorem.

## Conventions and definitions

1. **Dimension and coordinates.** Fix n≥3. Real actions and lifted angles are `Fin n → ℝ`, complex
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

## N-ZERO — genuine unperturbed motion, including size-zero perturbations

For n≥3 and R,s>0, take h in the analytic class and any analytic periodic perturbation f with |f|≤0 on
D_s. No quasi-convexity or derivative bound is needed here. For every θ₀ and I₀∈B(0,R/2), the explicit curve

    z(t) = (θ₀ + t∇h(I₀), I₀)

has z(0)=(θ₀,I₀), solves the actual H=h+f equations for every real t, and has I(t)=I₀ for every t.
The hypothesis forces f=0 on the open complex domain and hence all its local derivatives there vanish.
The theorem is stated for the actual f, not merely for the globally zero function.

This is our direct supplement from the integrable Hamiltonian on BM11 p. 1. The printed |f|_s<ε excludes
ε=0, and the negative power ε^{−a} is not assigned a finite Lean junk-value interpretation at zero.
The two separate theorems cover ε>0 and ε=0 consistently; no piecewise time definition is introduced.

## N-QC — geometric gate: the isoenergetic derivative

For n≥3, h real C² on an open set U and satisfying the exact QC(m) predicate there, every I∈U and λ>0
has the following property: the derivative at (I,λ) of

    Ψ_h(J,μ) = (h(J), μ∇h(J))

is bijective from ℝⁿ×ℝ to ℝ×ℝⁿ. In coordinates it sends (v,u) to
(∇h(I)·v, u∇h(I)+λD²h(I)v). Source: BM11 Lemma 3.3, pp. 9–10, especially its derivative computation
and nonsingularity proof. This is a reusable gate for energy confinement and for track I.
It asserts no uniform inverse radius. Passing from bijective derivative to a local diffeomorphism is
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

The draft has no lower bound |∇h|≥l added to BM11, no nonresonance hypothesis, no pre-assumed normal form,
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

These are recommendations for orchestrator/owner review, not requests to interrupt this Phase 0 task.
