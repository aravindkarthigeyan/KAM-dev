# Track I — statements for Phase 0 review

Status: draft I.0, 2026-10-27. These are proposed statements, not owner-approved frozen
anchors or proved results. The exact corresponding Lean commands are in
`.drafts/I/Statements.lean`, namespace `KAM.Iso`. All four theorem bodies are `sorry`.
The source pins and literal source excerpts are in [sources.md](sources.md); proof
obligations, deviations, errata candidates and checks are in [notes.md](notes.md).

## Conventions and definitions

Angles have period one, the ambient spaces are `Fin n → ℝ` and `Fin n → ℂ`, and
analytic estimates and action displacement use their max norm. A phase point is
(θ,I). Matrix estimates use maximum absolute row sum. The Hamilton equations are
θ̇ = ∂I H, İ = −∂θ H. Reuse `KAM.hamiltonianVectorField`, its complex version,
`complexStrip`, `actionNbhd`, `frequencyMap`, `realHamiltonian`, `IsDiophantine`,
`IsPrimaryOnStrip`, `IsRealOnReals`, `gramMatrix`, `normalFrame`, `torsion` and
`invarianceError` literally. No frozen theorem or provider is imported.

A complex holomorphic function is `DifferentiableOn ℂ` on a specified open set.
On such a set all higher derivatives used below are genuine derivatives.
The open-strip convention follows track K's approved G1. Averages use Lebesgue
measure on [0,1]ⁿ, whose volume is one. Analyticity, periodicity and compactness
make the averaged functions integrable; this is a proof obligation, not an extra
assumption of their integrability in I-G1. The Gram inverse is used only where its
determinant is a unit, and the inverse of the averaged bordered matrix likewise.

For H, K, ω, put L = DK, B = (LᵀL)⁻¹, N = Ω₀LB and use the frozen torsion T.
The **extended torsion**, indexed by `Fin n ⊕ Unit`, is exactly HL19 (3.13), with c=H:

    T_H(θ) = [[T(θ), ω], [DH(K(θ)) N(θ), 0]].

Its average is entrywise integration. In particular, the last row is not replaced
by ωᵀ for an approximate torus. That replacement is justified only at invariance
(HL19 Remark 3.7). `energyAverage H K` is ⟨H∘K⟩.

For h on complex action space, `borderedHessian h I` is

    [[D²h_R(I), ∇h_R(I)], [∇h_R(I)ᵀ, 0]],
    h_R(I) = Re h(I).

Its upper-left block is the derivative of the frozen `frequencyMap`. Holomorphy
on a neighborhood of I guards both derivatives. The sign agrees with the
integrable specialization of the canonical normal frame N=(0,id).

## I-G1 — isoenergetic a-posteriori KAM

Lean: `KAM.Iso.isoenergetic_kam`.
Source: HL19 Theorem 3.6, pp. 18–19, Remark 3.7, and inherited H1–H3 on pp. 16–17;
canonical specialization in Remarks 3.2–3.3. Proof: §6, pp. 45–53, constants in
Appendix B, Tables 4–5, (6.29)–(6.51).

**Fixed data.** n≥2; τ≥n−1; 0<ρ∞<ρ; positive M, σK, σB, σT, μ, γ̄, ν;
σω>1; a nonzero real vector ω*. These data, including the whole ray direction and
its size, are chosen **before** C₁,C₂,C₃. Let Θ={sω*:1<s<σω}.
The ray's boundary means its two endpoints, not its ambient topological boundary
in ℝⁿ. This explicit choice avoids ambiguity in `dist(ω,∂Θ)`.

**Constants and later data.** There exist positive C₁,C₂,C₃ such that, for every
open complex phase domain D, Hamiltonian H, primary parameterization K, and real
s,γ,e,E₀, the following implication holds.

1. D is invariant under integer angle translations. H is holomorphic on D,
   period-one in angles, and real on all real points of D. On D,
   ‖DH‖, ‖X_H‖, ‖DX_H‖, ‖D²X_H‖, ‖D²H‖ ≤ M.
   The last bound is H1' with c=H. Source: H1, H1'.
2. K is holomorphic on Tρ, real on real angles, and primary. For each θ∈Tρ,
   ball(K(θ),μ)⊆D and ‖DK(θ)‖≤σK−μ. Source: H2; quantitative margin as D-G1-1.
3. Each LᵀL is invertible, with ‖B‖≤σB−μ. Source: H3.
4. ⟨T_H⟩ is invertible, with ‖⟨T_H⟩⁻¹‖≤σT−μ. Source: H4', (3.13).
5. 1<s<σω, ν≤(s−1)‖ω*‖, ν≤(σω−s)‖ω*‖; 0<γ≤γ̄;
   ω*∈Dγ,τ. The input frequency is ω=sω*. Source: H5', quantitative margins
   from (6.48); γ̄ follows track K's uniformization D-G1-1.
6. e≥0, ‖X_H(K)−DK(sω*)‖≤e on Tρ, |⟨H∘K⟩−E₀|≤e, and
   C₁e/(γ⁴ρ^(4τ))<1. Source: (3.14)–(3.15). The two error bounds are precisely
   a bound for the product max norm, not a change to the error law.

**Conclusion.** There are K∞ and 1<s∞<σω such that K∞ is holomorphic on Tρ∞,
real on real angles, primary, and, throughout Tρ∞,

    X_H(K∞)=DK∞(s∞ω*),              H(K∞)=E₀,
    ball(K∞,μ/2)⊆D,                ‖DK∞‖≤σK−μ/2,
    ‖K∞−K‖≤C₂e/(γ²ρ^(2τ)),        ‖s∞ω*−sω*‖≤C₃e/(γ²ρ^(2τ)).

The frequency remains on the same positive ray, hence retains the Diophantine
lower bound. This statement preserves all three constants as one joint choice.
The pointwise energy equality follows from (3.12), invariance, nonresonance and
analyticity; the draft explicitly requires it, including on the complex strip.
No phase normalization or uniqueness of K∞ is claimed by this gate.

**Deviations.** We specialize to d=n, canonical geometry and c=H; use operator
norms on open strips and absorb transpose bounds by dimensional factors; fix ray
data and positive margins before constants; require γ≤γ̄; replace the two strict
closeness inequalities by non-strict ones to include exact input tori; retain
explicit half-margins; and spell out pointwise energy. These are proposed track-I
versions of D-G1-1, not an assertion that the owner already approved track I.
Source sign misprints are reported in notes.md; the error and invariance signs
here follow (2.1), (2.2), (3.14), and the frozen definitions.

## I-HEAD — confinement of every solution in two degrees of freedom

Lean: `KAM.Iso.all_time_confinement`. This is our derived theorem, not a theorem
quoted from HL19. Its analytic input is I-G1; the two-torus barrier mechanism is
also illustrated in CC03 Theorem 1.1, p. 7, for a different, truncated model.

**Data.** B⊂ℝ² is open, bounded and nonempty. Fix s₀,r₀>0. Let h be holomorphic
on `actionNbhd B r₀`, real on its real points, with nonzero bordered Hessian
at every real I in that neighborhood. Given open B′ with compact closure
contained in B and η>0, there exists ε₀>0.

**Perturbations.** For every f holomorphic on T_s₀×B_r₀, period-one in θ and
real on real points, and every 0≤ε<ε₀ with |f|≤ε on that fixed complex domain,
put H(θ,I)=Re(h(I)+f(θ,I)). Constants are chosen before f and ε and before the
initial angle and action.

**Conclusion.** For every z₀=(θ₀,I₀) with I₀∈B′ there is z:ℝ→ℝ²×ℝ² such that

    z(0)=z₀,
    I(t)∈B,  HasDerivAt z (X_H(z(t))) t,  ‖I(t)−I₀‖<η       for every real t.

Moreover, for every a<0<b and every y with y(0)=z₀ satisfying these same
Hamilton equations on (a,b), with action in B and H differentiable at each
visited point, y(t)=z(t) for all t∈(a,b).
This last clause assumes only that y is a solution in the phase domain; it does
not assume any displacement bound. It implies that every maximal solution
through z₀ extends globally and has the stated confinement. Artificially
restricting a global solution to a finite interval does not make it a
counterexample to a badly worded “every solution has domain ℝ” assertion.

**Why this form.** A global solution and its agreement with every local solution
express both existence and the universal dynamical claim without choosing a
flow operator before its existence/uniqueness theorem. We use lifted angles;
their winding is unrestricted. Compactness for continuation is on the quotient
angle torus times a compact action tube. Equivalently, in lifted coordinates the
vector field is uniformly bounded on that tube, so angles cannot blow up in
finite time. Both time directions are included.

**Local-to-global reasoning to be proved.** Nonzero bordered determinant gives a
nonzero frequency and invertibility of the local energy/frequency-direction
map. Cover the compact initial action set by finitely many such patches. On
each relevant energy, find Diophantine directions on both sides of the initial
action, apply I-G1 with uniform constants, and use a smaller analytic strip to
make the resulting tori graphs. Solve the energy equation in the transverse
action coordinate. The graphs bound a compact annulus in this local energy
cylinder; uniqueness prevents crossing. Choose its diameter below η and its
closure inside B, then continue the orbit. A torus in an arbitrary three-manifold
need not separate; the local energy-cylinder construction is essential.

**Scope and deviations.** No regular boundary for B and no globally injective
frequency map are assumed. The nondegeneracy neighborhood is chosen to be the
same B_r₀ as the analytic neighborhood; one may shrink the radius to achieve
this from nondegeneracy near B̄. This is a convenient standing-domain restriction,
not an intermediate stability assumption. ε=0 is included.

## I-KEPLER — algebraic nondegeneracy gate

Lean: `KAM.Iso.kepler_bordered_det`. Source: Chierchia (March 2005), p. 17,
unnumbered determinant following (3.43). We generalize its κ=Ω=1 calculation:
for κ,Ω,L>0, the bordered matrix of h(L,G)=−κ/(2L²)−ΩG is

    [[−3κ/L⁴, 0, κ/L³], [0,0,−Ω], [κ/L³,−Ω,0]],

with determinant 3κΩ²/L⁴>0. The ordinary Hessian is singular. The definition
`keplerBorder` uses the carrier {L:ℝ // 0<L}; no inverse at zero is used. This
algebraic gate is not yet a proof that a physical coordinate change is canonical
or that its transformed Hamiltonian is this h.

The source uses orbital angles (ℓ,g) of period 2π. Set θ=(ℓ,g)/(2π) and
J=2π(L,G). Then dJ∧dθ=dL∧dℓ+dG∧dg, and in period-one coordinates

    h₁(J)=−κ(2π)²/(2J₁²)−Ω J₂/(2π).

The bordered determinant becomes 3κΩ²/J₁⁴, equivalently the old determinant
divided by (2π)⁴. Rescaling angles without rescaling actions is not canonical.
The physical restricted model below has κ=Ω=1 at μ=0.

## I-R3BP — exact restricted circular planar three-body model

Lean: `KAM.Iso.restricted_near_circular`.
This is a proposed deduction of I-HEAD plus the Kepler coordinate theorem. It
is not CC03's computer-assisted theorem for a truncated perturbation.

**Physical units and coordinates.** Gravitational constant, primary separation,
primary total mass and angular speed are one. The primary masses are 1−μ and μ,
with rotating barycentric positions a₁=(−μ,0), a₂=(1−μ,0). The small body is
massless and has rotating Cartesian position q and canonical momentum p.
The primary period is 2π in physical time, not one. Define physical radius by
r(q)=sqrt(q₁²+q₂²); this is distinct from the max norm used in analytic estimates.

On the collision-free phase domain r(q−a₁)>0, r(q−a₂)>0, define exactly

    Hμ(q,p)=|p|₂²/2 + q₂p₁−q₁p₂ − (1−μ)/|q−a₁|₂ − μ/|q−a₂|₂.

The Lean Hamiltonian and vector field take a subtype point in this domain;
they have no arbitrary values at collisions. Write Jq=(−q₂,q₁). Their genuine
first-order equations, used directly in `IsRestrictedSolutionOn`, are

    q̇=p−Jq,
    ṗ=−Jp−(1−μ)(q−a₁)/|q−a₁|₂³−μ(q−a₂)/|q−a₂|₂³.

Thus p is not rotating velocity. With the rotation R(t), Q=R(t)q and P=R(t)p
satisfy Q̇=P and

    Ṗ=−(1−μ)(Q−R(t)a₁)/|Q−R(t)a₁|₂³−μ(Q−R(t)a₂)/|Q−R(t)a₂|₂³.

These are precisely the massless body's Newton equations with two circular
primaries. All collision and position bounds are unchanged by R(t); the momentum
bound is an inertial velocity bound. The canonical rotation and this differential
identity remain proof obligations, not additional hypotheses in the target.
Source: Chierchia (2005), (1.2), (3.34)–(3.39), with barycentric rather than
heliocentric coordinates. The rotating formula above is our explicit derivation.

**Initial region, fixed before μ.** Choose

    0<a₋<a₊,  0<e₋<e₊<1/4,  a₊(1+e₊)<1.

Let U=NearCircular(a₋,a₊,e₋,e₊). Explicitly, U consists of q,p for which there
are r,a,e satisfying r>0, r²=q₁²+q₂², a₋<a<a₊, e₋<e<e₊,

    E=|p|₂²/2−1/r=−1/(2a),
    ℓ=q₁p₂−q₂p₁>0,       ℓ²=a(1−e²).

The Lean predicate also explicitly includes a>0 and 0<e<1, so every quotient
has a positive denominator and the physical elements have their intended
meaning. It does not choose an eccentric anomaly or a Delaunay inverse using
an unproved existence assertion. These are the osculating Kepler elements of
the μ=0 reference problem about the origin. They need not be conserved at μ>0.

**Conclusion and quantifiers.** U is open in the full four-dimensional phase
space and is nonempty. There exist μ₀,d,R>0, with μ₀≤1/2, chosen before μ and
z₀, such that for all 0≤μ<μ₀ and every z₀∈U there is a global physical solution
z=(q,p) with z(0)=z₀ and, for every t∈ℝ,

    |q(t)−a₁|₂≥d,  |q(t)−a₂|₂≥d,  |q(t)|₂≤R,  |p(t)|₂≤R.

Every local collision-free solution on (a,b), a<0<b, with the same initial
point agrees with z. In particular this is confinement of every initial point
of an open region, not only of points on KAM tori and not merely openness in
one energy surface. U itself is not asserted invariant; its orbits stay in a
larger compact safe region. μ=0 is an included limiting case; μ>0 has two
positive-mass primaries.

**Geometry ensuring a plausible application.** The closure of the reference
annulus is compact, stays away from circularity and rectilinearity, and has
radial bounds a₋(1−e₊)>0 and a₊(1+e₊)<1. Enlarge it slightly in actions while
preserving all strict margins. The exact barycentric Hamiltonian, pulled back
by the μ=0 Delaunay chart, differs analytically by O(μ) on a common complex
neighborhood. Apply I-HEAD there, choosing its η smaller than that enlargement.
The compact enclosure supplies d,R. None of these facts is assumed as a
conclusion-shaped premise of I-R3BP.

**Scope choices.** This first application is prograde, inside the secondary's
orbit, and excludes exactly circular orbits. e₊<1/4 is a proposed convenient
near-circular window, not a sharp threshold in a cited source. No numerical
value of μ₀ or claim about observed Solar-System masses is made.

## Owner questions, with the draft's recommendations

1. **Uniform isoenergetic gate:** **Ruled as recommended by the owner (D19, 2026-10-27).** approve fixing ω*, σω and endpoint distance ν
   before C₁,C₂,C₃, as well as γ̄ and the geometric margin μ? **Recommend yes.**
   It exposes all source dependence without requiring an unproved frequency bound.
2. **Dynamics surface:** **Ruled as recommended by the owner (D19, 2026-10-27).** approve an exhibited global solution plus agreement with
   every local solution, instead of defining a flow in advance? **Recommend yes.**
   This asserts the desired universal statement without arbitrary choice.
3. **Nondegeneracy neighborhood:** **Ruled as recommended by the owner (D19, 2026-10-27).** approve nonzero bordered determinant on the
   real slice of B_r₀, after shrinking r₀ if necessary? **Recommend yes.** No
   convexity, boundary regularity or global frequency injectivity is needed.
4. **First physical region:** **Ruled as recommended by the owner (D19, 2026-10-27).** approve the explicit prograde interior annulus above,
   e₊<1/4 and a₊(1+e₊)<1, open in phase space and independent of μ?
   **Recommend yes.** Exterior orbits and exact circularity can be separate targets.
5. **Gate split and source repairs:** **Ruled as recommended by the owner (D19, 2026-10-27).** approve the separate joint determinant/value
   gate I-KEPLER and the documented ≤/sign corrections to HL19?
   **Recommend yes**, after independent source review. No repair to a frozen
   track-K declaration is requested or made.

These questions do not block this Phase 0 delivery: the exact proposed choices
above are already represented in the elaborating Lean draft. Owner approval and
independent review remain subsequent orchestrator tasks.
