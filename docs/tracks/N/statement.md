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

## Additions (D22), draft v0.4

Revision under D23 in `/root/code/KAM-inp`, responding to `AUDIT-additions-v0.3.md` in full.
This v0.4 partial-stability record is historical: D25 subsequently approved and froze N-PARTIAL-CONVEX.
The v0.5 N-AVERAGING section below supersedes the former averaging deferral after acquisition of the
complete primary source and original proof. All three exact drafts remain in `.drafts/N/Additions.lean`; each has
one `sorry` body. D20's frozen surface remains authoritative. The v0.3 audit describes the former draft;
this section supersedes its proposed source conversion rather than asserting audit approval of v0.4.

### Conventions, frozen reuse, and new definitions

Ambient vectors are `Fin n → ℝ` / `Fin n → ℂ` with maximum norms. Canonical phase order is
(positions, momenta). Reuse frozen `Planetary.Phase`, `fast`, `slow`, `fastShift`,
`degenerateHamiltonian`, and N's `realPart`, `actionBall`, `IsAnalyticIntegrable`,
`IsAnalyticPerturbation`, `IsSolutionOn`, with their track-K dependencies. No frozen meaning is redefined.
The nine new definition bodies are unchanged from v0.3: `complexifyPhase`, `innerCore`,
`partialComplexDomain`, `HasDefiniteFastPart`, `IsPartialPerturbation`, `partialTimeExponent`,
`partialDriftExponent`, `HasAveragingFrequencyRank`, `averagingError`.

The partial theorem has n≥2 fast actions, k≥1 slow canonical pairs, radian fast angles φ of period 2π,
slow positions q and slow momenta p without periodicity assumptions, and fast momenta I. The actual
Hamiltonian is h(I)+μ Re P(φ,q,I,p), using the frozen real restriction and degenerate Hamiltonian.
Averaging retains n≥2 period-one angles from the existing analytic predicates. Passing to φ=2πθ in the
averaging ODE rescales its angular vector field and phase-volume constants, while preserving time and rank;
this does not assert a canonical change of angles alone.

All derivative uses are guarded by regularity on open neighborhoods. Parameters under inverses, negative
powers, square roots and tolerances are positive at every theorem use. `averagingError` is used only for
bounded genuine trajectories on nonempty compact intervals. No real empty-set `sInf` is introduced.

### N-PARTIAL-CONVEX — `partialConvex_nekhoroshev`

**Working and source domains.** Fix open convex fast domains G and G′, an arbitrary open slow domain D,
positive ρ,g,m,Mcomplex, and a fixed h, all before the threshold. The new geometric input is

    for every I∈G, closedBall∞(I,ρ) ⊆ G′.

Thus G⊆G′ with a fixed collar, and every transverse Euclidean sphere of radius η<ρ about a centre in G
lies completely in G′. G′ is the real fast domain of the **whole source Hamiltonian**, including P;
it is not merely an extension domain for h. Let U′ be the real slice of `actionNbhd G′ ρ`. Require:

- h holomorphic and complex C² on `actionNbhd G′ ρ`, real on U′, with
  ‖D²h(z)‖op≤Mcomplex on that entire complex neighborhood;
- real C³ on U′, uniform frequency bound ‖∇h(I)‖∞≥g, and one global sign σ∈{1,−1} such that
  σD²h(I)[v,v]≥mΣᵢvᵢ² on U′.

The existing `HasDefiniteFastPart` is instantiated at G′. These are explicit stronger domain hypotheses;
no steepness or drift conclusion has been added as a premise. Concave Kepler fast parts are allowed;
there is no convexity requirement in the slow variables. The explicit complex bound and fixed-h
quantifier order preserve F-NADD-5 and avoid the earlier F-N1 real-to-complex uniformity defect.

**Source-import choice (F-NADD-1).** We do not infer source-global steepness on G′ merely from the
collar around G: centres near ∂G′ would repeat the audit's empty-sphere problem. The faithful route is the
**definite-Hessian specialization of the printed proof of Theorem 4.4**, on the tube over G′×D.
In that proof, steepness enters the diameter argument through Lemma 10.6 (p.47), used by Proposition 7.4
(pp.36–37); the rest is Propositions 5.2.B, 8.6, 9.2 and §9.5, with Lemma 10.7 choosing parameters.
Replace Lemma 10.6 by the direct signed-convex endpoint estimate given with constants in notes.md.
This satisfies its exact required estimate and parameter inequalities without a sphere infimum at any
boundary centre. It is a source-proof specialization, not a claim that the black-box global steepness
premise of the printed theorem has been proved on an arbitrary bounded G′. The full-sphere
convex-to-steep lemma for centres in G is also recorded as a proof obligation with constants. Neither
lemma is a theorem hypothesis. The exact domain treatment is an explicit deviation for re-audit.

**Quantifiers and conclusion.** There exists μ₀>0 after G,G′,D,ρ,g,m,Mcomplex,h. For every 0<μ<μ₀,
P holomorphic on `partialComplexDomain G′ D ρ`, real on reals, 2π-periodic in fast angles, and bounded
by one there; every C>0 and every genuine solution z on [0,C] whose fast actions lie in G; and every
initial fast action in `innerCore G (μ^b)`, put

    a=2/(6n²−3n+14),   b=3/(6n²−3n+14)=3a/2,
    d=μ^b,            T=μ⁻¹ exp(μ⁻ᵃ).

For each 0≤t≤min(C,T), if (q(u),p(u))∈innerCore(D,d) for every 0≤u≤t, then

    ‖I(t)−I(0)‖∞ ≤ d/2.

**The complete conclusion and its antecedents after the threshold are unchanged**, apart from requiring
P on G′ instead of G. In particular the initial erosion remains in G, and slow membership is tested only
through the queried time. No future slow confinement or solution existence to T is assumed. The source
initial erosion in G′ follows from the stronger one in G. Taking the source supplied interval to be [0,t]
(t=0 directly) yields the same stopped quantifier after the convex proof specialization.

The exponents are Nek77 (4.1), (4.4)–(4.5) with all indices one; for n=2, a=1/16,b=3/32. No 1/(2n)
claim is made. Source Euclidean drift implies the maximum-norm conclusion, and closed maximum-norm erosion
implies its open Euclidean erosion. Operator-norm conversion can use L=(n+1)Mcomplex. The printed source uses closed imaginary bounds;
apply it at ρ_source=ρ/2 inside the draft's open width-ρ tube. Remark 4.5.A allows
M=sup|μP|≤μ; monotonicity weakens its d(M),T(M) bounds to d(μ),T(μ). The actual norm-zero case has
constant fast actions directly; no inverse or negative power at zero is evaluated. Constants may depend
on all fixed domains and data, but precede μ,P,C,z,t.

**Exact theorem text (the file is authoritative for definitions).**

```lean
theorem partialConvex_nekhoroshev
    {n k : ℕ} (hn : 2 ≤ n) (hk : 1 ≤ k)
    (G G' : Set (Fin n → ℝ)) (D : Set (KAM.Planetary.Phase k))
    (hG : IsOpen G) (hGc : Convex ℝ G)
    (hG' : IsOpen G') (hGc' : Convex ℝ G') (hD : IsOpen D)
    (ρ g m Mcomplex : ℝ) (hρ : 0 < ρ) (hMc : 0 < Mcomplex)
    (hcollar : ∀ I ∈ G, Metric.closedBall I ρ ⊆ G')
    (h : (Fin n → ℂ) → ℂ)
    (hhol : DifferentiableOn ℂ h (KAM.actionNbhd G' ρ))
    (hC2 : ContDiffOn ℂ 2 h (KAM.actionNbhd G' ρ))
    (hreal : ∀ I : Fin n → ℝ,
      (fun i => (I i : ℂ)) ∈ KAM.actionNbhd G' ρ → (h (fun i => (I i : ℂ))).im = 0)
    (hHess : ∀ z ∈ KAM.actionNbhd G' ρ, ‖fderiv ℂ (fderiv ℂ h) z‖ ≤ Mcomplex)
    (hdef : HasDefiniteFastPart G' ρ g m h) :
    ∃ μ₀ : ℝ, 0 < μ₀ ∧ ∀ μ : ℝ, 0 < μ → μ < μ₀ →
      ∀ P : (Fin (n + k) → ℂ) × (Fin (n + k) → ℂ) → ℂ,
      IsPartialPerturbation G' D ρ P → ∀ C : ℝ, 0 < C →
      ∀ z : ℝ → KAM.Planetary.Phase (n + k),
      IsSolutionOn
        (KAM.Planetary.degenerateHamiltonian (realPart h)
          (fun _ w => (P (complexifyPhase w)).re) μ)
        {I | KAM.Planetary.fast (b := k) I ∈ G} (Set.Icc 0 C) z →
      KAM.Planetary.fast (b := k) (z 0).2 ∈ innerCore G (μ ^ partialDriftExponent n) →
      ∀ t ∈ Set.Icc 0
        (min C (μ⁻¹ * Real.exp (μ ^ (-partialTimeExponent n)))),
      (∀ u ∈ Set.Icc 0 t,
        (KAM.Planetary.slow (a := n) (z u).1, KAM.Planetary.slow (a := n) (z u).2)
          ∈ innerCore D (μ ^ partialDriftExponent n)) →
      ‖KAM.Planetary.fast (b := k) (z t).2 - KAM.Planetary.fast (b := k) (z 0).2‖
        ≤ μ ^ partialDriftExponent n / 2 := by
  sorry
```

**P consumption (F-NADD-4).** The eroded slow history is retained verbatim. P must construct a fixed
working G around its whole outer action region, a further source G′ with the ρ collar, and a slow D
strictly larger than its whole outer AMD projection. It must establish analytic bounds and chart validity
on G′×D and choose μ small enough for the two fixed collars to dominate d. The explicit construction,
scaling, both time directions and bootstrap inequalities are in notes.md. Strict membership in P's outer
open region alone is not membership in an N erosion. None of P's physical safety conclusions is a premise.

### N-AVERAGING, draft v0.5 — primary-source candidates

**Status.** The complete owner-supplied AKN06 third edition and its cited original quantitative paper
Neishtadt 1976 are now pinned and read. This section supersedes the v0.4 deferral for `averaging_mean`
and `averaging_most`. Both are **unapproved v0.5 candidates for a new independent audit**, with exact
text in `/root/code/KAM-inp/.drafts/N/Averaging.lean`. Their mathematical contracts are retained; the
source proof route now uses the original's actual-existence/exit definition and an explicit repair of its
maximum-error estimate. The two old audit findings are addressed as described below. A newly found source
proof defect is recorded visibly; finding the PDF does not certify every printed proof step.
D25's partial theorem is frozen and is outside this revision.

**Primary authorities and standing conventions.** AKN06 §6.1.9 is printed pp.242–244; Theorem 6.11,
Corollary 6.1 and (6.27)–(6.28) are p.243 (PDF p.254). The global smoothness convention is p.3 footnote 1,
the ε-independent constants convention p.207, standard/averaged systems pp.208–209, and the averaged-orbit
boundary requirement Remark 6.4 pp.217–218. Its quantitative reference [451] is the complete original
Neishtadt 1976 pp.1295–1298, whose good-data set requires full-window **actual solution existence**.
Source pins, exact printed/PDF locators and source quotations are in sources.md.

**Fixed inputs and quantifiers.** n≥2, R,s>0, a fixed h in the frozen `IsAnalyticIntegrable R s h`
class, a fixed scalar f in `IsAnalyticPerturbation R s 1 f`, and a fixed compact real phase set K with
initial actions in B∞(0,R/2). The real Hamiltonian is the literal frozen
`realHamiltonian h (fun w => (ε:ℂ)*f w)`. Phase points are (θ,I) in `(Fin n→ℝ)×(Fin n→ℝ)`; no
planetary definition or frozen theorem anchor is imported. Analyticity is a conservative specialization
of the primary smooth setting and supplies all finite derivatives on compact interior sets. h and f
precede A,ε₀, and their actual derivative bounds may enter the constants. No norm-one class uniformity
before choosing f or h is asserted. No quantitative rank bound is fixed before h.

**Rank.** On B∞(0,R), require one of two global alternatives: Dω(I) is onto ℝⁿ at every I, or ω(I)≠0
and (v,c)↦Dω(I)v+cω(I) is onto at every I. Here ω is the frozen genuine `frequencyMap h`.
The latter is exactly projective rank n−1. AKN's intrinsic projective condition is retained; the original
1976 paper uses ratios with a nonzero first component. The compact rank-to-volume proof in notes.md
reconciles them without assuming a single globally nonzero component or choosing a chart in Lean.
Full rank may hold at a zero frequency; the nonzero-frequency clause belongs only to the projective branch.

**Averaged dynamics, periods and measures.** The average of −∂θf vanishes by periodic integration, so
the genuine averaged action orbit is J(t)=I₀. It stays uniformly inside a compact source region, satisfying
Remark 6.4 and original hypothesis 4°. The real analytic data on B(R) extend smoothly to a neighborhood
of that compact region. Period-one θ is converted to source radian φ=2πθ in the ODE; Ω=2πω and the
angular correction is rescaled as well. This preserves time and both ranks, and multiplies volume by a
fixed factor. Ambient norms are maximum norms; Euclidean source norms change constants only.
All exceptional measures are **absolute product Lebesgue phase volumes**, as dI₀dφ₀ in (6.27), not
relative probabilities. Compact lifted angular windows reduce to finitely many fundamental cells.

**Mean and κ theorem.** After the fixed data, there exist A,ε₀>0. For every 0<ε≤ε₀ and every family Φ
of actual solutions on [0,1/ε] from x∈K, with actions in B(R), the supremum

    eε(x)=sup_{0≤t≤1/ε} ‖(Φ(x,t)).I−x.I‖∞

is integrable on K and ∫_K eε≤A√ε. The Lean nonnegative integral is the lintegral of `ENNReal.ofReal eε`;
integrability is also concluded, rather than using a possibly junk Bochner integral. The positive ε,
nonempty compact time interval, continuous actual trajectories and bounded actions guard the real supremum.
For every κ>0 there is measurable E⊆K, volume(E)≤κ, and for every x∈K\E and every t∈[0,1/ε],

    ‖(Φ(x,t)).I−x.I‖∞ ≤ A√ε/κ.

A and ε₀ precede ε,Φ,κ. The supplied-family premise is actual existence/typing data for the mean
expression, not an error estimate or a premise for the next theorem. Uniqueness identifies any such
family with the actual flow on K, even if its arbitrary values away from K are not measurable.

**Most-data actual existence theorem.** Retain `averaging_most`. With the same fixed inputs, there are
A,ε₀,η₀>0, η₀≤R/4, such that for every 0<ε≤ε₀ and every 0<η≤η₀ there is measurable E⊆K with

    volume(E)≤A√ε/η,

and every x∈K\E admits an actual Hε solution from x on all of [0,1/ε], with actions in B(R) and
maximum drift ≤η. This theorem has **no supplied-flow or future-confinement premise**. To recover a κ
form with existence set η=A√ε/κ, when that quantity is at most η₀. Source Neishtadt Theorem 2 imposes
ρ<ρ₁/2; choosing, for example, the auxiliary ρ₁=R/8 and η₀≤R/32 meets that strict restriction.
Those are proof choices inside the existential constants, not extra binders. The statement permits
η₀≤R/4 and therefore permits this smaller choice.

**F-NADD-2/3 and the proof-review boundary.** The missing primary hypotheses are now explicit: smoothness,
compact source region, averaged-orbit collar, high phase regularity, rank and fixed-system constants.
Neishtadt's p.1296 definition of Φ(ρ,ε) includes existence to 1/ε; its complement H includes domain exits.
Theorem 1 controls the good-data mean and coarse bad volume; Theorem 2 gives the tolerance-dependent bad
volume. Thus the local theorem is supported by primary text. Its p.1298 stopped-cohort argument is laid
out with constants in notes.md. The former cutoff proposal is replaced entirely.

However, the original proof's equation (17) prints an unjustified equality between sup_t∫e_t and
∫sup_t e_t. The notes give a specific Fourier-envelope bound and a Gronwall argument for the **integral
of the maximum itself**, then the source's finite cohort/continuation argument. This is a new declared
proof repair, E-NAVG-NEI-17, requiring independent review. No source theorem is declared disproved, and no
maximum-error estimate is assumed as a hypothesis. Neither candidate gives simultaneous O(√ε) error
and O(√ε) exceptional volume. The balanced consequence is O(ε^(1/4)) for both quantities.

**Exact Lean module.** The two new definitions were not frozen by D25. All other reused definitions
are imports from frozen modules. The following is the exact current draft, including its two placeholders:

```lean
/-
Copyright (c) 2026 Scott Armstrong, Zohar Komargodski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Armstrong, Zohar Komargodski
-/
module

public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticIntegrable
public import KAM.Frozen.Nekhoroshev.Defs.IsAnalyticPerturbation
public import KAM.Frozen.Nekhoroshev.Defs.IsSolutionOn
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
public import Mathlib.MeasureTheory.Measure.Prod
public import Mathlib.MeasureTheory.Integral.IntegrableOn
public import Mathlib.MeasureTheory.Integral.Lebesgue.Basic

/-!
# N-AVERAGING draft v0.5, primary-source revision

AKN06 (third edition), pp.3, 207--209, 217--218, 242--244; Neishtadt 1976,
pp.1295--1298. New unapproved statements, independent of the partial theorem.
The maximum-in-time estimate needs the explicit proof repair in notes.md:
Neishtadt's printed equation (17) interchanges a supremum and an integral.

1. Never use set_option maxHeartbeats (or any heartbeat-budget override). A
   default-heartbeat elaboration failure is a design signal to refactor or split the proof,
   not something to mask with a larger budget.
2. No Lean file may exceed 1500 lines of code.
-/

@[expose] public noncomputable section

open MeasureTheory
open scoped ENNReal

namespace KAM.Nekhoroshev

/-- The two global rank alternatives in AKN Theorem 6.11, p. 243.
The augmented map is surjective exactly when the nonzero frequency has projective
rank n-1. There is no chart choice or division by a frequency component.
The source projective rank is intrinsic. Neishtadt 1976 p.1296 uses a chart
with a nonzero first component; the coordinate-free rank estimate in notes.md
explains that translation. Analytic hypotheses guard the derivatives here. -/
def HasAveragingFrequencyRank {n : ℕ} (U : Set (Fin n → ℝ))
    (h : (Fin n → ℂ) → ℂ) : Prop :=
  (∀ I ∈ U, Function.Surjective (fderiv ℝ (KAM.frequencyMap h) I)) ∨
    (∀ I ∈ U, KAM.frequencyMap h I ≠ 0 ∧
      Function.Surjective (fun v : (Fin n → ℝ) × ℝ =>
        fderiv ℝ (KAM.frequencyMap h) I v.1 + v.2 • KAM.frequencyMap h I))

/-- Supremum error from the constant averaged action, AKN (6.27).
Used with ε>0 and genuine solutions on [0,1/ε] in a bounded action domain;
these hypotheses make the image nonempty and bounded above. -/
def averagingError {n : ℕ} (ε : ℝ)
    (Φ : ((Fin n → ℝ) × (Fin n → ℝ)) → ℝ → ((Fin n → ℝ) × (Fin n → ℝ)))
    (x : ((Fin n → ℝ) × (Fin n → ℝ))) : ℝ :=
  sSup ((fun t => ‖(Φ x t).2 - x.2‖) '' Set.Icc 0 (1 / ε))

/-- N-AVERAGING-MEAN, analytic Hamiltonian specialization of AKN06 p.243 (6.27)--(6.28).
AKN Theorem 6.11 and Corollary 6.1 for genuine solution families.
The flow premise is only typing/existence on the stated interval;
there is no hypothesis about its error or about an exceptional set.
Constants are chosen after the fixed analytic system and compact initial set,
before ε, the solution family, and κ. Measure is unnormalized phase volume. -/
theorem averaging_mean
    {n : ℕ} (hn : 2 ≤ n) (R s : ℝ) (hR : 0 < R) (hs : 0 < s)
    (h : (Fin n → ℂ) → ℂ) (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (hh : IsAnalyticIntegrable R s h) (hf : IsAnalyticPerturbation R s 1 f)
    (hrank : HasAveragingFrequencyRank (actionBall n R) h)
    (K : Set ((Fin n → ℝ) × (Fin n → ℝ))) (hK : IsCompact K)
    (hKI : ∀ x ∈ K, x.2 ∈ actionBall n (R / 2)) :
    ∃ A ε₀ : ℝ, 0 < A ∧ 0 < ε₀ ∧ ∀ ε : ℝ, 0 < ε → ε ≤ ε₀ →
      ∀ Φ : ((Fin n → ℝ) × (Fin n → ℝ)) → ℝ → ((Fin n → ℝ) × (Fin n → ℝ)),
      (∀ x ∈ K, Φ x 0 = x ∧
        IsSolutionOn (KAM.realHamiltonian h (fun w => (ε : ℂ) * f w))
          (actionBall n R) (Set.Icc 0 (1 / ε)) (Φ x)) →
      IntegrableOn (averagingError ε Φ) K ∧
      (∫⁻ x in K, ENNReal.ofReal (averagingError ε Φ x) ∂volume)
        ≤ ENNReal.ofReal (A * Real.sqrt ε) ∧
      ∀ κ : ℝ, 0 < κ → ∃ E : Set ((Fin n → ℝ) × (Fin n → ℝ)),
        MeasurableSet E ∧ E ⊆ K ∧ volume E ≤ ENNReal.ofReal κ ∧
        ∀ x ∈ K \ E, ∀ t ∈ Set.Icc 0 (1 / ε),
          ‖(Φ x t).2 - x.2‖ ≤ A * Real.sqrt ε / κ := by
  sorry

/-- N-AVERAGING-MOST, derived from AKN06 p.243 and Neishtadt 1976 pp.1295--1298.
Local-domain, actual-solution consequence of AKN (6.28).
Existence and confinement are conclusions on the good data, not premises.
The source smoothness convention is AKN06 p.3 footnote 1; the averaged-orbit
collar is Remark 6.4, pp.217--218. Neishtadt Theorem 2 includes existence
in its good-data definition; notes.md gives the stopped proof plan and corrects
the maximum-error step. No flow or future confinement is assumed here. -/
theorem averaging_most
    {n : ℕ} (hn : 2 ≤ n) (R s : ℝ) (hR : 0 < R) (hs : 0 < s)
    (h : (Fin n → ℂ) → ℂ) (f : (Fin n → ℂ) × (Fin n → ℂ) → ℂ)
    (hh : IsAnalyticIntegrable R s h) (hf : IsAnalyticPerturbation R s 1 f)
    (hrank : HasAveragingFrequencyRank (actionBall n R) h)
    (K : Set ((Fin n → ℝ) × (Fin n → ℝ))) (hK : IsCompact K)
    (hKI : ∀ x ∈ K, x.2 ∈ actionBall n (R / 2)) :
    ∃ A ε₀ η₀ : ℝ, 0 < A ∧ 0 < ε₀ ∧ 0 < η₀ ∧ η₀ ≤ R / 4 ∧
      ∀ ε : ℝ, 0 < ε → ε ≤ ε₀ → ∀ η : ℝ, 0 < η → η ≤ η₀ →
      ∃ E : Set ((Fin n → ℝ) × (Fin n → ℝ)), MeasurableSet E ∧ E ⊆ K ∧
        volume E ≤ ENNReal.ofReal (A * Real.sqrt ε / η) ∧
        ∀ x ∈ K \ E, ∃ z : ℝ → ((Fin n → ℝ) × (Fin n → ℝ)),
          z 0 = x ∧
          IsSolutionOn (KAM.realHamiltonian h (fun w => (ε : ℂ) * f w))
            (actionBall n R) (Set.Icc 0 (1 / ε)) z ∧
          ∀ t ∈ Set.Icc 0 (1 / ε), ‖(z t).2 - x.2‖ ≤ η := by
  sorry

#print axioms averaging_mean
#print axioms averaging_most

end KAM.Nekhoroshev

end
```

#### v0.5 clause-to-primary-source map

| Clause | Printed primary locator / explicit specialization |
|---|---|
| Smooth data | AKN06 p.3 footnote 1; Nei76 hypotheses 1°–2°, pp.1295–1296; analytic class is stronger |
| ε-independent fixed-system constants | AKN06 p.207; Nei76 p.1295 after (6), p.1296 (7)–(8); h,f,K fixed first |
| Standard system and period 2π | AKN06 p.208 (6.1)–(6.2); Nei76 p.1295 (1); period-one ODE transport stated above |
| Averaged system and matched initial data | AKN06 pp.208–209 (6.3); Nei76 p.1295 (2)–(3); zero averaged action from periodic Hamiltonian derivative |
| Boundary convention | AKN06 Remark 6.4 pp.217–218; Nei76 4°, p.1296; B(R/2) plus the compact interior source region supplies the collar |
| Two global rank alternatives | AKN06 p.243 Theorem 6.11; Nei76 3°, p.1296 has a ratio chart; intrinsic rank-to-volume lemma is an explicit obligation |
| Mean of maximum and time 1/ε | AKN06 p.243 (6.27); Nei76 pp.1295–1296 (4), Theorem 1 (7), with the explicit maximum-error proof repair |
| Initial volume, compact K, measure/accuracy tradeoff | AKN06 p.243 Corollary 6.1 (6.28); Nei76 p.1296 Theorem 2 (8); finite-cell restriction handles lifted K |
| Actual existence for most data | Nei76 p.1296 definition Φ and Theorem 2; p.1298 exit-cohort proof; explicit η collar rather than a fictitious preselected global flow |
| Mean on all supplied actual trajectories | Nei76 good-data mean plus coarse bad volume, bounded error on the remaining actual trajectories; notes.md gives this deduction |
| Integrability and supremum guards | Analytic ODE uniqueness/dependence and compactness, explicit standing type data and output; no unguarded supremum or integral |
| Proof repair rather than assuming the desired estimate | Nei76 p.1298 (17), corrected by the Fourier-envelope/Gronwall plan in notes.md; new independent-audit obligation |

#### Owner questions and recommendations for averaging v0.5

1. **Approve this analytic Hamiltonian specialization and fixed-system constant order?** Recommend yes after
   the v0.5 independent audit; it is a conservative source class and avoids an unsupported uniform-in-h/f claim.
2. **Retain both mean/κ and actual-existence candidates?** Recommend yes. The original quantitative paper
   explicitly treats exiting data. Keep their distinct names and the visible η collar; do not turn the
   supplied-family premise into an existence premise for the most-data theorem.
3. **Adopt the explicit maximum-error proof repair and record E-NAVG-NEI-17?** Recommend yes as a candidate
   source-proof gap plus a declared formalization deviation, with independent review of the Fourier envelopes
   before proof-route sign-off. The printed equality is not a valid automatic interchange.
4. **Freeze now or audit first?** Recommend a fresh audit of this exact new module and proof plan, then
   exact-text approval. D25 did not approve these averaging statements. No change to frozen partial stability
   is proposed, and no observed-mass or all-time physical stability result follows from averaging alone.

### Historical v0.4 clause-to-source map and revision dispositions

| Clause / finding | Source or v0.4 disposition |
|---|---|
| Fast/slow splitting, arbitrary slow D, 2π angles, genuine equations | Nek77 §4.3.A,C p.29 |
| Definite fast sign and nonzero frequency | Nek77 §1.18 p.14; quantitative proof specialization documented in notes.md |
| F-NADD-1: explicit G,G′ and collar; all h/P bounds on source G′ | Stronger analytic/domain inputs; full-sphere lemma only at centres in G, not a false global inference on G′ |
| F-NADD-1: source-proof specialization | Nek77 Lemma 10.6 p.47 replaced by its definite-Hessian endpoint proof; §7.4 pp.36–37, §8.6–8.7 pp.39–41, §9.5 pp.43–44, Lemma 10.7 pp.47–49 |
| F-NADD-4: eroded histories | Nek77 Theorem 4.4 p.30; unchanged conclusion; P collars are provider obligations |
| F-NADD-5: complex Hessian input before μ₀ | Nek77 §4.3.B (4.2) p.29; Remark 4.5.B p.30; preserved |
| F-NADD-6: exponents and μ⁻¹ prefactor | Nek77 (4.1) p.28, (4.4)–(4.5) p.30; preserved |
| F-NADD-2/3: both averaging theorems | **DEFERRED**, complete primary statement/proof and smooth/localized applicability unpinned |
| F-NADD-7/8: averaging rates, absolute volume and supremum guards | Candidate types preserved, including positive ε,κ,η and actual bounded solutions |
| F-NADD-9: slide corroboration | Corrected: NO22 slide 14 corroborates rates only; no full/projective rank formula is printed there |
| E-N-ADD-1 | Nek77 §1.18 p.15 suspected “small” typo; ledger candidate in notes.md, no Lean change |

### Historical owner questions and recommendations for v0.4 (adopted D25)

1. **Accept this explicit convex proof specialization, rather than a purported verbatim black-box import
   with unproved global steepness?** Recommend yes after independent review of the endpoint lemma and
   its exact use in §§7–10. The G′ collar alone is not a proof of steepness at every centre of G′.
2. **Approve the fixed-h, complex-bound inputs on G′ and the unchanged stopped conclusion?** Recommend yes.
   Require the larger-domain/collar and chart lemmas in P before using this theorem there. Keep the source
   exponents and period-2π convention.
3. **Defer both averaging candidates?** Recommend yes, as directed by this revision task. They remain visible
   with unchanged types, but neither is an approval candidate until the full primary source and relied-on
   proof are pinned. The exact acquisition list and candidate original papers are in sources.md.
4. **Record the source typo and proof-specialization deviation?** Recommend E-N-ADD-1 as a CANDIDATE
   erratum with the audit's independent confirmation of the printed text; record the explicit §10.6
   specialization as a deviation, not as a silently repaired printed theorem. The orchestrator owns the ledger.
