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
The approval candidate is **N-PARTIAL-CONVEX only**, subject to independent review of the explicit
convex proof specialization below. **N-AVERAGING-MEAN and N-AVERAGING-MOST are DEFERRED** pending their
complete primary source and proof. All three exact drafts remain in `.drafts/N/Additions.lean`; each has
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

### N-AVERAGING — DEFERRED from approval: `averaging_mean` and `averaging_most`

**Approval disposition (F-NADD-2/3): DEFERRED.** Both `averaging_mean` and
`averaging_most` remain in the Lean file with exactly their v0.3 theorem types. Neither belongs to the
v0.4 approval/freeze packet. Reactivation requires a complete primary third-edition source and the
proof underlying Theorem 6.11, including its standing regularity and domain hypotheses. The acquisition
checklist is in sources.md; no new source premise or full-window flow premise has been invented.

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

### Clause-to-source map and revision dispositions

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

### Owner questions and recommendations for v0.4

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
