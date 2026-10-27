# Track P mathematical statements — draft 0.1

Phase 0, 27 October 2026. **Proposed, not approved, frozen or proved.** The exact intended
Lean text is `.drafts/P/Statements.lean`. Source transcripts, version pins and clause
locators are in [sources.md](sources.md); audit limits and deviations are in [notes.md](notes.md).

There are three proposed theorem anchors: P-G, P-PLANAR, P-FIXED. P-SPATIAL is a
long-term sketch only. None of the physical headlines assumes a secular computation,
a KAM conclusion, a source theorem, or an invariant torus as a premise.

## Conventions and common definitions

- Coordinate spaces are `Fin d → ℝ` and their products. Standard topology uses the Pi
  max norm. Physical distance is **explicitly** |x|₂ = sqrt(Σₖ xₖ²) on `Fin 2 → ℝ`;
  Newton's potential and force never use the Pi max norm.
- Canonical phase order is (position, momentum). We reuse `KAM.symplecticForm` and
  `KAM.hamiltonianVectorField` literally. The field is (∂ₚH,−∂qH); the frozen form
  has sign Σdp∧dq. Changing the sign convention for the named form does not change
  the zero pullback condition defining Lagrangian tori.
- Parameter angles on every torus have period one. For **P-G only**, physical fast
  canonical angles retain period **2π**, as in CP10 footnote 1. Their parameterization
  has winding 2π in fast directions. There is no missing 2π in the physical field:
  angular frequency with period-one parameter is source angular frequency divided
  by 2π. This changes frequency constants, not dynamics or the relative-measure bound.
  This local convention exception is proposed to the owner; it is not a silent change
  of track K's period-one canonical convention.
- We reuse `KAM.IsDiophantine`: γ/|k|₁^τ ≤ |k·ω| for k≠0, with γ>0 and the stated
  lower bound on τ. All torus frequencies are for flows, not time-one maps.
- A physical invariant torus has an analytic map K:Rᵈ→R²ᵈ, periodic under Zᵈ,
  K(θ)=K(θ′) only if θ′−θ∈Zᵈ, injective derivative, zero symplectic pullback, and
  **HasDerivAt** of t↦K(θ+tω) equal to X_H there for every θ,t∈R. Analyticity guards
  derivatives of K; differentiability of H on the range is also explicit.
  This descends to a compact embedded analytic Lagrangian torus. The existing
  `KAM.IsInvariantLagrangianTorus` instead has *primary affine winding in physical
  angle coordinates*; reusing it for Cartesian positions would be incorrect.
- For cylinder tori, replace periodicity by fast-angle winding, and require injectivity
  modulo the fast physical-angle lattice as well as the parameter lattice. Physical
  fields and symplectic forms are still the existing frozen definitions.
- `volume` means Lebesgue measure in the stated coordinates. No measure of a lower
  dimensional plane is called positive spatial volume. A set S is a union of whole
  tori: every point of S has a witnessing torus whose **entire range is in S**.
  Measurability of S is part of the conclusion, not an input.

## P-G — properly degenerate KAM

Source: CP11 Theorem 11.1, pp. 50–51, provided by CP10 Theorem 1.3, pp. 546–548;
CP10 footnote 3 supplies the uniform parameter convention. This is an explicitly
regularized **source specialization**, not an unannounced repair of the printed statement.

**Data, fixed before constants.** Positive integers n₁,n₂. An open, connected (hence
nonempty), bounded V⊂Rⁿ¹; positive ρ₀,μ₀,b. A real function H₀(I), analytic on a
neighborhood of closure V. A family P(μ,I,φ,p,q), with φ period 2π, jointly real analytic
on a neighborhood of [0,μ₀]×closure(V×Rⁿ¹×B_ρ₀²ⁿ²). Here

    B_ρ²ⁿ² = {(p,q): max(‖p‖∞,‖q‖∞)<ρ},
    H_μ(I,φ,p,q)=H₀(I)+μP(μ,I,φ,p,q).

The analyticity condition is `AnalyticOnNhd` on the indicated closed set. Together with
periodicity and compactness of the fast fundamental cell it provides uniform analytic
control; we do not quantify over unbounded families of unrelated perturbations after
choosing constants. Joint analyticity is stronger than CP10's C¹ dependence on μ.

**Source premises.**

1. I↦∂ᵢH₀(I) is a diffeomorphism of V onto its open image. The Lean predicate supplies
   an explicit C¹ inverse with both inverse identities on the respective domains;
   no inverse of a singular matrix or choice-defined map occurs.
2. With the literal normalized integral

       P_av(μ,I,p,q) = (2π)^(-n₁) ∫_[0,2π]ⁿ¹ P(μ,I,φ,p,q) dφ,
       Rᵢ=(pᵢ²+qᵢ²)/2,

   for every μ∈[0,μ₀], I∈V,

       P_av = P₀(μ,I) + Σᵢ Ωᵢ(μ,I)Rᵢ + ½Σᵢⱼ βᵢⱼ(μ,I)RᵢRⱼ + o(|(p,q)|⁴).

   The exact draft gives the little-o clause by ∀ε>0, ∃δ∈(0,ρ₀], ∀‖(p,q)‖<δ,
   |remainder|≤ε‖(p,q)‖⁴, including (0,0). The integral is required integrable
   at every used I,μ,p,q. No formal “averaging operator” stands in for this integral.
3. β is symmetric and |det β(μ,I)|≥b uniformly on [0,μ₀]×V. Symmetry spells out
   that these are the actual second Birkhoff invariants; an arbitrary nonsymmetric
   array with the same quadratic form would not suffice.

No finite-order nonresonance of Ω is added. The normal form is a **source premise of
this abstract gate**, and will be a proved output of planetary infrastructure when the
gate is applied. It is never an assumption of P-PLANAR or P-FIXED.

**Conclusion and quantifier order.** After these data there exist
ρ_*∈(0,min(ρ₀,1)), C>0, c>0 such that, for **every**

    0<ρ<ρ_*,    0<μ<μ₀,    μ < ρ⁶/(log(1/ρ))^c,

there is a measurable union S⊂V×Rⁿ¹×B_ρ²ⁿ² of analytic invariant Lagrangian
(n₁+n₂)-tori on the cylinder. On each torus there are γ>0, τ>n₁+n₂ and a frequency
ω with `KAM.IsDiophantine γ τ ω`, ‖ω_fast‖∞≤C and ‖ω_slow‖∞≤Cμ.
Let F_ρ be the fast-angle cell 0≤φᵢ<2π inside that cylinder. Then

    0 < |S∩F_ρ|,
    (1−C√ρ)|F_ρ| < |S∩F_ρ| < |F_ρ|.

The Lean inequality uses `ENNReal.ofReal (1-C*sqrt ρ)` for the coefficient and separately
requires positivity of |S∩F_ρ|. When that real coefficient is negative, the lower
inequality is simply the already stated positivity; this is equivalent, not a stronger
interpretation. One may shrink ρ_* until the coefficient is positive.

**Clause provenance/deviations.** H₀+μP, A1–A3, fast/slow orders, analytic Lagrangian
Diophantine tori and both strict measure inequalities are CP11 Theorem 11.1.
The literal average/2π normalization, sup norm and uniform μ dependence are CP10
(3), footnotes 1,3 and §2. Taking τ>n rather than merely some Diophantine exponent
is harmless: an existing Diophantine bound remains valid when the exponent increases.
The explicit closed-neighborhood analyticity, symmetric β, fixed μ interval,
ρ_*<1 and period-one parameter/period-2π physical-angle interface are D-PG-1–3 below.

## Physical Hamiltonians and reference configurations

Fix G>0 (gravitational constant), m₀>0 and mᵢ>0. The moving bodies have actual masses
m₀, μm₁,…,μmₙ. After zero-total-momentum and translation reduction, write
qᵢ=xᵢ−x₀ and scaled planet momenta pᵢ. The exact **moving-Sun** Hamiltonian is

    Hmov(q,p;μ) = Σᵢ [(1/mᵢ+μ/m₀)|pᵢ|₂²/2 − Gm₀mᵢ/|qᵢ|₂]
                 + μΣᵢ<ⱼ [pᵢ·pⱼ/m₀ − Gmᵢmⱼ/|qᵢ−qⱼ|₂].

This is Fej04r (28), pp. 46–47, with G restored. It equals the unreduced energy/μ
on the reduction, with the symplectic form divided by μ too, so **time is unchanged**.
It has n planar position pairs and hence 2n degrees of freedom. Neither the μ-dependent
self kinetic term nor the indirect cross kinetic term is discarded.

The exact **fixed-Sun** Hamiltonian is instead

    Hfix(q,p;ε) = Σᵢ [|pᵢ|₂²/(2mᵢ) − Gm₀mᵢ/|qᵢ|₂]
                 − εGΣᵢ<ⱼ mᵢmⱼ/|qᵢ−qⱼ|₂.

The Sun is prescribed at the origin. Equivalently, planets of mass εmᵢ interact with
a fixed source of mass m₀, after the same energy/momentum scaling. ε is precisely the
mutual-coupling coefficient. This is not a theorem about any function bounded by O(ε).

Both formulas are used only with positive masses and positive pair distances. Physical
vectors are extracted from `Fin (n*2) → ℝ` via the canonical `Fin n × Fin 2` equivalence.
There is no alternative branch at collisions. The theorems assert the collision-free
locus before asserting the equations that contain the inverse distances.

**Near circular** has a literal, physical definition. Given positive axes aᵢ and phases
φᵢ∈R/Z, the reference circular point at zero coupling is

    qᵢ=aᵢ(cos 2πφᵢ, sin 2πφᵢ),
    pᵢ=mᵢ sqrt(Gm₀/aᵢ)(−sin 2πφᵢ, cos 2πφᵢ).

Let U_η be the open η-neighborhood, in the phase-space Pi norm, of the entire compact
reference torus. η is any positive number chosen **before** the small-mass threshold.
All positions are planar and prograde by this reference choice. The selected invariant
tori remain in U_η at every time. This is a qualitative neighborhood statement, not
an unsupported quantitative eccentricity or density rate.

**Genuine physical motions.** From an Hmov orbit (q(t),p(t)) reconstruct

    x₀(t)=−μΣᵢmᵢqᵢ(t)/(m₀+μΣᵢmᵢ),       xᵢ(t)=x₀(t)+qᵢ(t),
    v₀(t)=−μΣᵢpᵢ(t)/m₀,                    vᵢ(t)=pᵢ(t)/mᵢ.

The conclusion explicitly asserts ẋⱼ=vⱼ and

    v̇ⱼ=GΣₖ≠ⱼ Mₖ(xₖ−xⱼ)/|xₖ−xⱼ|₂³,       M=(m₀,μm₁,…,μmₙ),

for **all real times**, with derivatives stated by `HasDerivAt`. The Sun generally
moves. Initial conditions have zero barycenter and total momentum, whose removal is
exactly the coordinate convention used for the positive measure.

For Hfix the actual positions Qᵢ=qᵢ and velocities Vᵢ=pᵢ/mᵢ satisfy for all t∈R

    Q̇ᵢ=Vᵢ,
    V̇ᵢ=−Gm₀Qᵢ/|Qᵢ|₂³ + εGΣⱼ≠ᵢ mⱼ(Qⱼ−Qᵢ)/|Qⱼ−Qᵢ|₂³.

The Sun is the constant zero position and is not asserted to obey the moving-Sun
Newton equation. These are different physical laws with different exact Hamiltonians.

## P-PLANAR — two planar planets and a moving Sun

**Status.** Classical analytic planar planetary theorem, with a qualitative physical
neighborhood/confinement formulation deduced from it. Fej04r Proposition 77 + CP09
Theorem 4 supply an analytic local route; CP11 §8.1 + P-G supply the classical
quartic-torsion route at sufficiently large separation. Fej07e p. 3 explicitly states
the smooth planar analogue. We do not infer analyticity merely from that smooth theorem.

**Data.** G,m₀,m₁,m₂>0; 0<a₁ and 4a₁<a₂; η>0. The factor four is a convenient
restriction of distinct axes for this first physical statement, **not** a certified
CP11 torsion threshold. Every neighborhood of these fixed axes contains an open
patch in Fej04r Proposition 77's good full-measure set. The latter route therefore
applies without assuming the center point itself has simple secular eigenvalues.

**Conclusion.** There exist μ₀>0 and 0<d<D, chosen after those data and before μ,
such that for every 0<μ<μ₀ there is a measurable S⊂U_η with 0<|S|<∞. S is a union
of compact analytic invariant Lagrangian **4-tori** of Hmov. Each carries a
Diophantine linear flow. For every parameter point of every witnessing torus:

1. t↦K(θ+tω), t∈R, solves the exact reduced Hamilton equations;
2. the reconstructed xⱼ,vⱼ solve the actual three-body Newton equations for all t∈R;
3. **d≤|xᵢ(t)−xⱼ(t)|₂≤D for all t and i≠j**, including Sun–planet and planet–planet pairs.

Thus these genuine solutions exist for all time, are quasi-periodic, never collide,
and have no relative escape. Positive measure is **eight-dimensional** Lebesgue
measure in reduced planar coordinates (q,p). At fixed μ>0, the physical barycentric
position/velocity chart is an injective linear change of coordinates, so this is also
positive intrinsic measure on that physical constraint subspace. The statement makes
no positive measure claim in the unreduced spatial phase space.

Analytic torus invariance gives the explicit all-time solutions; smoothness of the
Newton field on the collision-free domain supplies uniqueness when identifying them
with maximal solutions. Near disjoint circular rings, a smaller compact tube supplies
d,D uniformly in μ. These reconstruction, uniqueness and compactness arguments are
our corollary work, not verbatim clauses of CP11 Theorem 11.1.

## P-FIXED — n planar planets around a prescribed Sun

**Status. Our proposed deduction, not a located published fixed-Sun theorem.**
The exact Lean statement is an unconditional target for the specified Newtonian model;
its future proof must establish the secular identification. It is not replaced by a
conditional theorem assuming that identification.

**Data.** n≥2; G,m₀ and all mᵢ,aᵢ positive; 4aᵢ<aⱼ whenever i<j; η>0.

**Conclusion.** There exist ε₀>0 and 0<d<D, chosen before ε, such that for every
0<ε<ε₀ there is a measurable S⊂U_η with 0<|S|<∞ in **4n-dimensional** phase space.
It is a union of analytic invariant Lagrangian **2n-tori** of Hfix, with Diophantine
linear flows. Every associated all-time physical solution satisfies the fixed-center
equations displayed above, and every pair among the Sun at zero and the n planets
has distance between d and D for all time. This is precisely the same physical
confinement conclusion, with the appropriate fixed-center law.

**Why a deduction is plausible and what remains to prove.** At zero coupling both
models have the same Kepler actions and Poincaré coordinates. The direct disturbing
potential is identical. Fej04r Lemma 64 proves zero average of the off-diagonal
kinetic term. The diagonal correction μΣ|pᵢ|²/(2m₀) averages to an action-only
function; by the Kepler energy identity its orbit average depends on aᵢ, not on
eccentricity. Thus deleting the kinetic terms does not change the leading quadratic
secular matrix. Fej04r Proposition 73 gives ellipticity and Proposition 77 gives
Rüssmann nondegeneracy on local action patches. Apply CP09 Theorem 4 with d=p=n.
All these claims need a coordinate-level formal proof; zero cross-term average alone
is not a proof of fixed-Sun KAM. A new quartic torsion computation is **not required
by this selected weak-nondegeneracy route**. If we insisted on P-G as the only gate,
that stronger torsion verification would be a separate obligation.

No density-one claim as ε→0, no numerical ε₀, and no claim for general O(ε) couplings
is made. These omissions are deliberate scope decisions awaiting owner review.

## P-SPATIAL — long-term sketch only

Follow CP11 Theorems 11.2 and 11.3, not an intersection of spatial and planar sets.
Fix n≥2, positive masses and the well-separated semimajor-axis intervals provided
by Proposition 8.1 (p. 35) in its domain (7.2). Choose the associated μ̄,ρ₁ and the
P-G constants. For 0<μ<μ̄ and 0<ρ<min(ρ₁,ρ_*) with
μ<ρ⁶/(log(1/ρ))^c, every partially reduced leaf has a positive-measure union of
analytic Diophantine Lagrangian (3n−1)-tori, occupying proportion >1−C√ρ of its
specified (6n−2)-dimensional normalized domain. Full angular-momentum reduction
instead gives (3n−2)-tori in dimension 6n−4, at fixed angular-momentum parameter.

Physical reconstruction should give genuine all-time spatial Newton solutions with
positive lower and finite upper pair distances, using compact disjoint orbital tubes.
Positive **ambient** measure requires varying the leaf parameters and checking the
coordinate Jacobian; leafwise positive measure alone is insufficient. The reconstructed
frequency need not remain Diophantine (CP11 Remark 11.2(ii)).

No Lean spatial theorem is drafted: the exact RPS leaf, angular-momentum and
reconstruction maps would need literal definitions, rather than unnamed “valid
coordinates” assumptions. This is the brief's permitted statement-sketch-only case.

## Owner questions and recommendations

These questions are part of the review packet; no answer has been presumed and no
freeze occurs in Phase 0.

| Question | Recommendation | Effect on exact draft |
|---|---|---|
| P1: May P-G assume joint analyticity near the closed parameter/domain cell? | Yes, for the initial gate. It makes CP10's uniformity explicit and is sufficient for Newtonian applications on compact patches. | Retain `hH0`, `hP`, μ₀ and μ<μ₀; record stronger hypotheses than printed CP11. |
| P2: Retain CP10's period-2π physical fast coordinates, with period-one torus parameters? | Yes. This preserves literal oscillator actions and avoids a hidden rescaling of H or the symplectic form. | Retain `fastShift` and the normalized average; this is a local exception to the canonical angle convention. |
| P3: How should near-circular positive measure be quantified? | Every η>0 neighborhood, followed by a small-coupling threshold; qualitative positive ambient measure. | Retain the η-before-μ₀/ε₀ order and `circularTube`; do not import Fej04r's informal density limit. |
| P4: Is fixed-Sun Newtonian coupling the intended collaborator model? | Freeze this explicit Hfix. A general O(ε) coupling needs additional structural assumptions and is a different theorem. | No arbitrary perturbation parameter appears in P-FIXED. |
| P5: Analytic tori for the fixed-Sun n-planet theorem? | Yes, using CP09 Theorem 4 and a separately proved secular identification. Label the headline as our deduction. | Retain `AnalyticOnNhd` and Diophantine frequencies, not an unjustified upgrade of the smooth source theorem. |
| P6: How much separation and which physical measure? | Keep the simple factor-four restriction and reduced planar Lebesgue measure first. It is a scope restriction, not an optimized source constant. | Retain `hsep`; use physical barycentric reconstruction for P-PLANAR. |
| P7: Freeze a spatial theorem now? | No. Approve the source sketch as long-term scope only. | No spatial placeholder theorem or incomplete coordinate definition. |

## Deviations to record on approval

- **D-PG-1:** strengthened closed-neighborhood/joint analytic standing data, explicit μ
  interval, explicit β symmetry. CP10 footnote 3 justifies uniformity but only requires C¹
  parameter dependence. The draft is a specialization, not a literal all-generality restatement.
- **D-PG-2:** CP10's physical fast angle period 2π with period-one parameter angles;
  preserve physical symplectic coordinates and rescale only frequency notation.
- **D-PG-3:** write ρ_*<1, integrability guards and explicit smooth inverse; represent
  quotient measure through a fundamental cell, and Big-O frequency bounds by one enlarged C.
- **D-PLANAR-1:** restrict to factor-four separated axes and arbitrary fixed physical tubes;
  analytic upgrade uses CP09 as necessary; do not assert a printed CP11 numerical threshold.
- **D-PHYS-1:** restore arbitrary G>0 and spell out all-time physical reconstruction,
  derivatives, collision and escape bounds. These are deductions from the torus theorem.
- **D-FIXED-1:** new fixed-center deduction, restricted to the exact Newtonian coupling;
  the secular identification and analytic weak-nondegeneracy application remain proof tasks.
- **D-SPATIAL-1:** defer exact spatial Lean until literal coordinate/leaf contracts exist;
  retain reduced versus reconstructed frequency distinctions.
