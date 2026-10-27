# Track P mathematical statements — draft 0.2

Phase 0, 27 October 2026. **Proposed, not approved, frozen or proved.** The exact intended
Lean text is `.drafts/P/Statements.lean`. Source transcripts, version pins and clause
locators are in [sources.md](sources.md). The [independent v0.1 audit](AUDIT-statements-v0.1.md)
refuted P-G as previously drafted. This revision adopts all its findings P1–P9; exact
changes and current checks are in [RESPONSE-v0.1.md](RESPONSE-v0.1.md). The original
[notes.md](notes.md) is a historical v0.1 handoff, superseded where the audit or this
revision corrects it. Successful elaboration is not a truth or approval certificate.

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

## P-G — corrected properly degenerate KAM specialization

**Status.** A proposed corrected specialization of CP11 Theorem 11.1, pp. 50–51,
and CP10 Theorem 1.3, pp. 546–548. It is **not** a literal restatement of their printed
hypotheses. Audit findings P1–P3 refute the v0.1 contract independently. The product of
discs below is taken from CP10's actual measure construction; the neighborhood and
boundary premises repair missing uniform controls. The corrected contract and the
stronger analytic standing assumptions await owner approval and a fresh statement audit.

**Data, fixed before constants.** Positive integers n₁,n₂. An open, connected (hence
nonempty), bounded action set V⊂Rⁿ¹, and an **open set W containing closure V**.
Positive ρ₀,μ₀,b. A real function H₀(I) and a family P(μ,I,φ,p,q), φ period 2π.
Use the literal rotation-invariant secular region

    D_ρ = {(p,q): pⱼ²+qⱼ² < ρ² for every j},
    C_ρ = V × Rⁿ¹ × D_ρ,
    H_μ(I,φ,p,q)=H₀(I)+μP(μ,I,φ,p,q).

`cylinder V ρ` is C_ρ in the Lean canonical order (φ,q;I,p). This product of discs
is CP10 p. 561's displayed region below (55). The separate sup norms on p and q in
CP10 §2 do **not** define its real measure domain. There is no independent rectangular
bound |pⱼ|,|qⱼ|<ρ in the new definition. Every use of ρ or ρ₀ here has a positive-radius
hypothesis. `cylinderCell` and both cylinder torus predicates inherit this correction.

**Corrected domain and analytic premises.**

1. **Neighborhood nondegeneracy (audit P2).** H₀ is analytic on W, and
   I↦∂ᵢH₀(I) is a diffeomorphism of W onto its open image. `hfreq` is now
   `HasFastDiffeomorphism H0 W`, with an explicit C¹ inverse and both inverse
   identities. The old separate `hH0` on closure V is deleted as redundant.
   Since closure V is compact and contained in W, the derivative of the inverse
   is bounded near its compact frequency image after taking a smaller neighborhood.
   This is the uniform inverse control missing from mere A1 on V. CP10 p. 556's
   preliminary neighborhood diffeomorphism and p. 562 (58) motivate this added
   contract; its “without loss” passage is not accepted for arbitrary original data.
2. **Two-sided boundary control (audit P3).** The following is an explicit geometric
   premise, not a KAM conclusion or a consequence of connectedness:

       ∃ A,d₀>0, ∀ 0<t<d₀,
         |{I∈Rⁿ¹ : ∃ J∈∂V, dist(I,J)<t}| ≤ A t.

   Distances here are the ambient Pi max-norm distances. This controls both inner
   and outer collars. It is exactly the auditor's proposed `hboundary`, fixed
   before ρ_*,C,c and hence before ρ,μ. CP10 p. 561, below (56), uses an outer
   boundary estimate without giving such a hypothesis. The draft adds it openly;
   it does not replace V by an unspecified compact subdomain. For fixed positive
   |V|, absolute collar control also gives the relative bound by division by |V|.
3. **Analytic family, proposed specialization (audit P4).** P is jointly real analytic
   on a neighborhood of [0,μ₀]×closure C_ρ₀, and is 2π-periodic in φ on C_ρ₀.
   This is `hP` with the **disc cylinder**, not a rectangular carrier. Periodicity
   and compactness of the fundamental cell give uniform analytic control near that
   cell; intersecting its action neighborhood with W keeps the fast inverse valid.
   Joint analyticity is stronger than CP10 footnote 3's C¹ parameter dependence
   with uniform norms. It remains a proposed restriction, not an approved SOURCE
   premise. Constants may depend on this entire fixed family.

**Averaged source premises.** With the literal normalized integral and oscillator
coordinates

    P_av(μ,I,p,q)=(2π)^(-n₁) ∫_[0,2π]ⁿ¹ P(μ,I,φ,p,q) dφ,
    Rⱼ=(pⱼ²+qⱼ²)/2,

for every μ∈[0,μ₀], I∈V,

    P_av=P₀(μ,I)+Σⱼ Ωⱼ(μ,I)Rⱼ+½Σᵢⱼ βᵢⱼ(μ,I)RᵢRⱼ+o(|(p,q)|⁴).

The matrix β is symmetric and |det β(μ,I)|≥b uniformly. These are the actual
second Birkhoff invariants; no antisymmetric part can fake torsion. There is no
finite-order nonresonance assumption on Ω, consistent with CP10 Theorem 1.3.

`HasSecularBirkhoffForm` now requires integrability only for **(p,q)∈D_ρ₀**.
Its exact remainder clause is

    ∀ ε>0, ∃ 0<δ≤ρ₀, ∀ (p,q)∈D_δ,
      |P_av−P₀−ΣΩⱼRⱼ−½ΣβᵢⱼRᵢRⱼ| ≤ ε ‖(p,q)‖∞⁴.

This is the same order-four little-o at zero: disc neighborhoods and sup-norm
neighborhoods form the same neighborhood basis, with fixed norm comparison constants.
It includes zero, fixing the jet value there. Since δ≤ρ₀ and both are positive,
every integral evaluated in the remainder clause is covered by the integral guard.
No analyticity or integrability outside the revised disc cylinder is silently assumed.
The use of the sup norm for the **remainder estimate** does not turn the physical
measure region back into a box.

**Conclusion and quantifier order.** All dimensions, V,W, boundary data, radii, functions
and jet data above precede ∃ρ_*,C,c. There exist
ρ_*∈(0,min(ρ₀,1)), C>0, c>0 such that for **every**

    0<ρ<ρ_*,    0<μ<μ₀,    μ < ρ⁶/(log(1/ρ))^c,

there is a measurable union S⊂C_ρ of analytic invariant Lagrangian
(n₁+n₂)-tori on the cylinder. On each torus there are γ>0, τ>n₁+n₂ and a frequency
ω with `KAM.IsDiophantine γ τ ω`, ‖ω_fast‖∞≤C and ‖ω_slow‖∞≤Cμ.
Let F_ρ be the fast-angle cell 0≤φᵢ<2π in C_ρ. The retained conclusion is

    0 < |S∩F_ρ|,
    (1−C√ρ)|F_ρ| < |S∩F_ρ| < |F_ρ|.

No rate, smallness exponent, whole-torus containment, or quantifier has been weakened
to hide a counterexample. Rather, the exact domain and two missing geometric/analytic
premises have been repaired. The constants are uniform in ρ and μ, not in a later
arbitrary Hamiltonian or action domain. `ENNReal.ofReal (1-C*sqrt ρ)` and separate
positivity express the real lower bound even when its coefficient is negative;
ρ_* can subsequently be shrunk to make it positive. The logarithm denominator is
positive because 0<ρ<1.

**Clause provenance.** CP11 Theorem 11.1 supplies the intended analytic Lagrangian
Diophantine tori, fast/slow orders, smallness relation and strict measure inequalities.
CP10 (3), footnotes 1,3 fix averaging, period and parameter uniformity. CP10 p. 561
fixes the disc domain; pp. 556, 561–562 expose the missing inverse/collar inputs.
The new neighborhood and boundary premises are **corrected-contract assumptions**,
and joint analyticity is an **additional specialization**, all pending review.
The two physical headlines below do not depend on this corrected quantitative gate.

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

**Data.** G,m₀,m₁,m₂>0; **0<a₁<a₂**; η>0. The factor-four premise is removed
(audit P4). Only distinct ordered axes are needed for this qualitative local route.
Every neighborhood of the fixed axes contains an open patch in Fej04r Proposition 77's
good full-measure set, after the source-proof repairs below. The center point need not
itself have simple secular eigenvalues. Fej04r orders the axes decreasingly; reverse
planet labels to match our increasing order. No numerical CP11 separation threshold
is asserted. Owner question Q-P6 retains the alternative scope decision explicitly.

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

**Data.** n≥2; G,m₀ and all mᵢ,aᵢ positive; **aᵢ<aⱼ whenever i<j**; η>0.
The former factor-four restriction is removed, as recommended by audit P4; see Q-P6.

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
Rüssmann nondegeneracy on local action patches, subject to the explicit corrections
and continuation obligations below. Apply CP09 Theorem 4 with d=p=n.
All these claims need a coordinate-level formal proof; zero cross-term average alone
is not a proof of fixed-Sun KAM. A new quartic torsion computation is **not required
by this selected weak-nondegeneracy route**. If we insisted on P-G as the only gate,
that stronger torsion verification would be a separate obligation.

No density-one claim as ε→0, no numerical ε₀, and no claim for general O(ε) couplings
is made. These omissions are deliberate scope decisions awaiting owner review.

## Physical proof route: repairs and distinct obligations (audit P5–P7)

These are **unproved provider obligations**, not new premises in either physical
headline and not additional draft theorems claiming the source defects are resolved.
The names below designate future declarations; they are not present Lean providers.

1. **`horizontalSecularMatrix_entries` (P5).** Derive the matrix from Fej04r (36)–(37),
   p. 51, with the erratum's canonical sqrt(2) normalization. In the source's decreasing
   axis order a₁>⋯>aₙ and after conjugation by Δ=diag(sqrt Λⱼ), the corrected entries are

       qⱼⱼ = −Σₖ<ⱼ mⱼmₖ aⱼ/(2aₖ²) b₃/₂⁽¹⁾(aⱼ/aₖ)
              −Σⱼ<ₖ mⱼmₖ aₖ/(2aⱼ²) b₃/₂⁽¹⁾(aₖ/aⱼ),
       qⱼₖ = mⱼmₖ aₖ/(2aⱼ²) b₃/₂⁽²⁾(aₖ/aⱼ),      j<k,
       qₖⱼ = qⱼₖ.

   Printed p. 55 wrongly repeats mₖmₖ in two places **and omits the factor 2 in the
   second diagonal denominator**. All three changes are required. Neither the
   erroneous display nor its correction is an assumption in a headline.
2. **`laplaceCoefficient_holomorphic_unitDisc` and `secularEigenvalueContinuation`
   (P6).** Prove local holomorphy for |α|<1 directly from the coefficient expansion;
   do not use Lemma 76's false global meromorphic assertion. Its defining
   b₁/₂⁽⁰⁾ integral has logarithmic divergence at α=1, not a pole. The displayed
   A^C immediately below that lemma is also **not simply connected**: simultaneous
   multiplication of all axes by exp(it) gives a loop projecting to winding one
   in C* while leaving all ratios fixed.

   One explicit replacement chart, in decreasing axis order, is the exponential
   image of

       L={ℓ∈Cⁿ : Re ℓ₁>⋯>Re ℓₙ, |Im ℓⱼ|<π/4 for all j},   aⱼ=exp ℓⱼ.

   L is an open convex logarithmic domain containing logarithms of all positive
   ordered real axes. The exponential is injective on these strips. For j<k,
   |aₖ/aⱼ|<1 and Re(aₖ/aⱼ)>0 there. Powers and square roots can be defined by the
   explicit ℓ branches. Remove the eigenvalue-discriminant locus and use a universal
   cover of the required connected component for eigenvalue continuation; a local
   simply connected chart suffices to select the final real action patch. Proving
   the relevant connectedness and carrying the asymptotic nonplanarity argument
   across that cover remain obligations. The false simply-connectedness assertion
   about A^C is never imported.
3. **`analyticWeaklyNondegenerateKAM` (P7).** Supply CP09 Theorem 4 as a genuine
   analytic KAM provider; the smooth Fej04r/Fej07e theorem is not an analytic
   provider. Match quadratic coefficients literally: Fej04r uses
   σⱼ(ξⱼ²+ηⱼ²), CP09 uses Ωⱼ(uⱼ²+vⱼ²)/2, so in the same canonical convention
   **Ωⱼ=2σⱼ**. Record the coordinate permutation and symplectic convention before
   transporting nonplanarity. The factor two is not omitted as a verbal convention.
4. **`fixedCenterSecularIdentification` (P7).** In the fixed zero-coupling Kepler
   chart, both Hamiltonians are h+μf with f **independent of μ** and

       Hmov−Hfix|ε=μ = μ |Σᵢpᵢ|₂²/(2m₀),
       average |pᵢ|₂² = mᵢ² Gm₀/aᵢ,
       average(Hmov−Hfix|ε=μ) = μG Σᵢ mᵢ²/(2aᵢ).

   The last expression is action-only. Cross terms average to zero by Fej04r
   Lemma 64; the diagonal identity uses the Kepler energy and mean inverse radius.
   Prove these identities and the unchanged eccentricity-dependent quadratic
   secular matrix in the exact canonical chart. This avoids assuming an unprinted
   μ-dependent version of CP09 and avoids inserting secular nondegeneracy as a
   premise of P-FIXED. The square identity alone is not the required identification.

After these providers, transport the resulting tori and measure through the canonical
chart, and prove the physical reconstruction and uniform pair bounds already stated.
**The repaired source route is not signed off as proved**: in particular the continuation
and secular identification are unpaid. P-FIXED remains our new deduction.

## P-SPATIAL — long-term sketch only

Follow CP11 Theorems 11.2 and 11.3, not an intersection of spatial and planar sets.
Fix n≥2, positive masses and the well-separated semimajor-axis intervals provided
by Proposition 8.1 (p. 35) in its domain (7.2). A future application of corrected
P-G must explicitly verify the product-of-discs carrier, neighborhood inverse and
boundary collar hypotheses; none is inherited merely from the word “ball”. Once
those are verified, choose the associated μ̄,ρ₁ and P-G constants. For 0<μ<μ̄ and 0<ρ<min(ρ₁,ρ_*) with
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

These are pending **owner scope choices**, distinct from audit IDs P1–P9. No approval
for track P appears in the current DECISIONS. The v0.2 text implements the recommended
reviewable contract, not an owner ruling; no freeze occurs in Phase 0.

| Question | Recommendation | Effect on proposed v0.2 |
|---|---|---|
| Q-P1: Approve the corrected quantitative P-G scope and its stronger analytic family? | Yes: product of oscillator discs, a diffeomorphism on W containing closure V, a two-sided linear boundary collar, and joint analyticity near the closed parameter/domain cell. Explicitly call this a corrected specialization, not the printed theorem. | `cylinder`, `hP`, `hBNF` use discs; add `W,hW,hVW,hboundary`; use `hfreq` on W; remove redundant `hH0`. If this scope is declined, draft a qualitative local theorem separately; do not restore the refuted quantitative statement. |
| Q-P2: Retain physical fast period 2π with period-one torus parameters? | Yes, preserving CP10's canonical coordinates and literal average. | Keep `fastShift`, the averaging denominator and parameter-frequency rescaling together. This is a local convention exception pending approval. |
| Q-P3: Quantify near-circular positive measure by every fixed η>0 neighborhood? | Yes, then choose the small-coupling threshold. No density rate is proposed. | Retain η before μ₀/ε₀ and the physical tube. |
| Q-P4: Is the fixed-Sun model the exact Newtonian coupling? | Yes. A general O(ε) coupling is a different target needing structural premises. | Retain the exact Hfix and label the headline our deduction. |
| Q-P5: Seek analytic tori for the fixed-Sun n-planet theorem? | Yes, with CP09 Theorem 4, the corrected local continuation route and a separately proved secular identification. | Keep analytic torus conclusions; no intermediate conclusion is added as a premise. |
| Q-P6: Require factor-four separation, or all distinct ordered axes? | **All distinct ordered positive axes**, as the auditor recommends for the qualitative local route. The factor-four restriction has no source threshold and is unnecessary here. Retain reduced planar Lebesgue measure. | Remove 4 from both `hsep` binders. If the owner deliberately chooses narrower scope, record that ruling before reintroducing it; no factor-four premise is silently retained. |
| Q-P7: Freeze spatial Lean now? | No; retain a long-term sketch until the literal coordinates and corrected-domain application are available. | No spatial placeholder theorem. |

## Deviations and source defects to record on approval

- **D-PG-1 (revised):** joint analyticity near the closed parameter/disc domain and a
  compact μ interval are proposed stronger standing data than CP10 footnote 3.
  β symmetry remains intrinsic to identifying actual Birkhoff coefficients.
- **D-PG-2:** keep physical fast angles of period 2π with period-one torus parameters;
  preserve canonical coordinates and rescale frequency notation.
- **D-PG-3 (revised):** use the product-of-discs domain printed on CP10 p. 561 and
  align integrability/little-o guards with it. The v0.1 rectangular interpretation
  was false; it is withdrawn. Retain explicit inverse/integral guards and ρ_*<1.
- **D-PG-4 (new, audit P2):** require a fast diffeomorphism on W⊃closure V. This
  corrects the unsupported passage on CP10 p. 556 and guards the inverse-Jacobian
  estimate (58), p. 562. It is not deduced from printed A1 on V.
- **D-PG-5 (new, audit P3):** add the two-sided boundary collar estimate. CP10 p. 561's
  estimate below (56) is not a consequence of arbitrary open bounded connected V.
- **D-PLANAR-1 (revised):** remove the unapproved factor-four restriction; keep every
  fixed physical tube about distinct ordered axes. Reverse labels when using
  Fej04r's decreasing order. Use the analytic weak route, not an invented CP11 threshold.
- **D-PROOF-1 (new, audit P5):** derive corrected planar matrix entries from Fej04r
  (36)–(37), including both mass-index repairs and the missing 1/2.
- **D-PROOF-2 (new, audit P6):** replace global meromorphy and the false topology
  assertion by local holomorphy and explicit logarithmic/eigenvalue covers.
- **D-PHYS-1:** restore G>0 and explicitly prove all-time physical reconstruction,
  derivatives, collision and escape bounds as corollary work.
- **D-FIXED-1:** the fixed-center result is a new Newtonian deduction; the analytic
  weak gate and secular identification remain distinct proof obligations.
- **D-SPATIAL-1:** defer exact spatial Lean, retaining reduced/reconstructed frequency
  and leafwise/ambient measure distinctions, and propagate the corrected P-G premises.

The exact source quotations, defects and responses are in
[RESPONSE-v0.1.md](RESPONSE-v0.1.md). No source ledger, frozen file or manifest is edited.

## Additions (D22), draft v0.3

This section proposes **P-EXP-SAFE**, **P-AMD-CONFINEMENT**, and **P-SECULAR-BOX**.
It does not revise the D20 frozen v0.2 statements above. The exact new Lean surface is
[Additions.lean](../../../.drafts/P/Additions.lean). All four theorem bodies there are
unproved draft placeholders; the fourth theorem specializes P-SECULAR-BOX to the cited
rational model masses. Independent audit and owner approval precede freezing.

### Physical conventions and fixed region

Use G = m₀ = 1, n ≥ 2, fixed positive weights mᵢ, actual masses (1, μm₁,…,μmₙ), μ>0.
The full moving-Sun Hamiltonian is precisely frozen `movingHamiltonian 1 1 m mu`:

    Hμ(q,p) = Σᵢ (|pᵢ|²/(2mᵢ) − mᵢ/|qᵢ|)
              + μ (|Σᵢpᵢ|²/2 − Σᵢ<ⱼ mᵢmⱼ/|qᵢ−qⱼ|).

Here q is heliocentric position and p is the mass-scaled canonical barycentric
momentum. Scaling the original Hamiltonian and symplectic form by μ leaves physical
time unchanged. In particular, pᵢ/mᵢ is the **barycentric** velocity used by this
zero-coupling Kepler split; it is not the full heliocentric velocity. Reconstruction
uses the frozen `barycentricPositions`, `barycentricVelocities`, and `actualMasses`.
All physical lengths use frozen `planeLength`, not the max norm on `Fin 2 → ℝ`.
Sources: LP17 (1)–(11), p. 2; round 3 §2 Hamiltonian/AMD check.

The literal osculating quantities in the draft are

    Eᵢ = |pᵢ|²/(2mᵢ) − mᵢ/|qᵢ|,   aᵢ = −mᵢ/(2Eᵢ),   Λᵢ = mᵢ√aᵢ,
    Lᵢ = qᵢ × pᵢ,   J = Σᵢ Lᵢ,   A = Σᵢ Λᵢ − J,
    e⃗ᵢ = (|pᵢ|²/mᵢ² − 1/|qᵢ|)qᵢ − (qᵢ·pᵢ/mᵢ²)pᵢ.

`ProgradeElliptic` requires mᵢ>0, |qᵢ|>0, Eᵢ<0 and Lᵢ>0, guarding every
division and square root. On it eᵢ=|e⃗ᵢ|<1 and
A=ΣΛᵢ(1−√(1−eᵢ²)). Angular momentum J is exactly conserved in the full
system; **A generally is not**. These identities are deductions from the Kepler
block and LP17 (9)–(11), not assumptions of the headline theorem.

Fix an `AMDBox B`, before μ, satisfying `B.Admissible`. Its data are m, lower/upper
action bounds ℓ,u, inner bounds ℓ⁰,u⁰, eccentricity ceiling e*, AMD levels A₀,A₁,
and physical constants d,R. The exact premises are

    0 < ℓᵢ < ℓ⁰ᵢ < u⁰ᵢ < uᵢ,  mᵢ>0,   0<e*<1,   0<A₀<A₁,
    A₁ < ℓᵢ (1−√(1−e*²))  for every i,   d>0, R>0,
    d ≤ (ℓᵢ/mᵢ)²(1−e*),   (uᵢ/mᵢ)²(1+e*) ≤ R,
    (uᵢ/mᵢ)²(1+e*) + d ≤ (ℓⱼ/mⱼ)²(1−e*)  for every i<j.

The fixed initial region consists of prograde elliptic points with
ℓ⁰ᵢ<Λᵢ<u⁰ᵢ and A<A₀. The outer region uses ℓ,u,A₁. Circular orbits are
included. The region is independent of μ, has nonempty interior near the circular
action box, and permits every phase. There is no factor-four or mass-dependent
axis hierarchy. The displayed separated-annulus and low-AMD conditions are the
explicit sufficient geometric specialization adopted by D22, not a claim about
all of Nek77's spatial planetary-motion domains.

### P-AMD-CONFINEMENT — deterministic stopped-input helper

Exact name: `KAM.Planetary.amdConfinement`. Fix admissible B and μ,T,δ>0 with

    ℓᵢ+2δ < ℓ⁰ᵢ,   u⁰ᵢ+2δ < uᵢ,   A₀+2nδ < A₁.

For each initial point z₀ in the fixed region, the sole dynamical input is
`StoppedActionBound B mu T delta z0`. This means: **for every finite interval
[l,r] containing 0**, and every actual local reduced solution z with z(0)=z₀
which stays in the outer region on that interval,

    |Λᵢ(z(t))−Λᵢ(z₀)| ≤ δ    for t∈[l,r]∩[−T,T], for every i.

One-sided intervals [0,r] and [l,0] are included. The premise does not assert that
any solution stays in the region until T. It is the stopped conclusion shape of
**Nek77 Theorem 4.4, p. 30**, after the Poincaré-coordinate/analytic-domain bridge;
the source's arbitrary C and minimum min(C,T) are load-bearing. Pinzari D.1 with
its whole-horizon slow-domain premise is not the provider for this interface.
Negative time is handled by applying the estimate to −H. This helper is distinct
from P-EXP-SAFE, which has no stopped estimate among its premises.

Conclusion: an exhibited solution on [−T,T], agreeing with every other local
solution on the overlap, remains in the outer region and satisfies the stopped
bound on the entire interval. Moreover A(t)≤A₀+nδ and J(t)=J(0), eᵢ(t)<e*,
d≤|qᵢ(t)|≤R, and every barycentric pair distance lies in [d,2R]. Reconstructed
Q,V satisfy the literal Newton equations, including Q′=V and the gravitational
acceleration, for every t in the closed interval. `AMDSafeOn` includes these
clauses. Functions are typed on ℝ only to state derivatives; no dynamics is
asserted outside the specified interval. Frozen `IsNewtonSolution` asserts all
time, so the new `IsNewtonSolutionOn` is its explicit interval restriction at G=1.
The frozen `KAM.Iso.IsHamiltonianSolutionOn` supplies the differentiability guard
for the Hamiltonian vector field.

The proof obligation is the exact identity A(t)−A(0)=Σ(Λᵢ(t)−Λᵢ(0)), followed
by first-exit exclusion and ODE continuation on a smaller compact collision-free
physical region. Conservation of J is derived from rotational invariance of the
literal Hμ, not postulated as another premise. The half-margin conditions above
prevent circularity at the first exit. Escape is excluded by relative distances
in the center-of-mass frame; no bound on a freely translating inertial origin is
claimed. This is an elementary new helper implementing round 2 §2 lemmas 1,2,5,6,
with the stopped-source correction of round 3.

### P-EXP-SAFE — every datum, source exponential rate

Exact name: `KAM.Planetary.planetaryExponentialSafety`. Put

    a = 2/(6n²−3n+14),    b = 3a/2.

For every admissible fixed B there exist μ*>0, c>0, C>0, depending on B and n,
**before** μ or z₀, such that for every 0<μ<μ* and **every** z₀ in the initial
region, an actual solution exists on

    |t| ≤ exp(c μ^(−a)),

has all the physical safety and uniqueness conclusions of `AMDSafeOn`, and

    |aᵢ(t)−aᵢ(0)| ≤ C μ^b    for every planet i.

There is no exceptional set, Diophantine premise, assumed invariant torus,
assumed drift estimate or assumed confinement. The constants are asymptotic;
this theorem does not certify that the actual Solar System masses are below μ*.

Source: **Nek77 §12, Theorem 12.3, printed pp. 55–56, (12.3)–(12.5)**. Its literal
horizon is (C₁μ)⁻¹ exp((C₁μ)^(−a)). Shrinking μ* absorbs the prefactor and gives
the displayed lower horizon. Its elements are barycentric; our zero-coupling
heliocentric-canonical elements differ uniformly by O(μ) on the fixed compact
region. Since b<1 for n≥2, this is absorbed into Cμ^b. Cover the closure of the
initial region by finitely many narrow source axis boxes B(α,β,γ) with
γ₀(α,β)<γ<γₘ(α,β); choose γ just below the point's angular momentum and exploit
the strict eccentricity/radial margins. The planar invariant subsystem and time
reversal give the symmetric interval. Compact continuation and the deterministic
helper give the explicit no-escape, all-pair bounds and uniqueness. These are
proof obligations of the specialization, not additional theorem premises.
The exponent 1/(2n) is neither used nor advertised.

### P-SECULAR-BOX — literal full average and rational certificate

The model has two planets, G=m₀=1, weights m=(1,s) with
29/100≤s≤31/100, and any fixed μ>0. Canonical variables are
w=(λ,ξ;Λ,η), assembled and projected by the frozen `assemble`, `fast`, and
`slow`. The angles λ are **radians**, period 2π, conjugate to Λ=m√a.
Conversion to track K's period-one convention uses θ=λ/(2π), I=2πΛ;
θ is not paired with unchanged Λ. The slow variables obey

    Γᵢ = (ξᵢ²+ηᵢ²)/2,   A = Γ₁+Γ₂,
    sᵢ = 1−Γᵢ/Λᵢ,   vᵢ = √((1−Γᵢ/(2Λᵢ))/Λᵢ) (ξᵢ,ηᵢ),
    aᵢ = (Λᵢ/mᵢ)².

Here sᵢ=√(1−eᵢ²) and vᵢ is the eccentricity vector. With u(F)=(cos F,sin F)
and J₂(x,y)=(-y,x), the explicit, circular-regular orbit map is

    qᵢ(F) = aᵢ [sᵢu(F)−vᵢ+(vᵢ·u(F))/(1+sᵢ) vᵢ],
    pᵢ(F) = mᵢ²/[Λᵢ(1−vᵢ·u(F))]
              [J₂u(F)−(vᵢ·u(F))/(1+sᵢ) J₂vᵢ].

Kepler's equation is λᵢ=Fᵢ−vᵢₓ sin Fᵢ+vᵢᵧ cos Fᵢ, with strictly positive
Jacobian 1−vᵢ·u(Fᵢ). It is a degree-one circle change of variables. Thus the
following literal integral is **exactly the full double mean-longitude average**:

    Hsec(Λ,ξ,η;μ) = (2π)^(-2) ∫_[0,2π]²
      Hμ(q(F),p(F)) ∏ᵢ(1−vᵢ·u(Fᵢ)) dF₁ dF₂.

`exactSecularHamiltonian` evaluates this using the frozen `secularAverage` on
`secularIntegrand`. There is no selected inverse Kepler solver, arbitrary chart,
default branch, truncated eccentricity polynomial, discarded indirect term, or
higher-order normal-form interpretation. Though Hμ is linear in μ in these fixed
coordinates, its entire interaction is retained. The displayed orbit formulas
are algebraic rewritings of the Kepler ellipse and momentum, to be proved in the
coordinate bridge; LP17 (7), (10)–(11), (B.5), (B.8) characterize the construction.
`SecularRegular` certifies positive actions, 0≤Γᵢ<Λᵢ, positive longitude
Jacobians, collision-free ellipses for every phase, integrability, and
differentiability of Hsec. These guards are **conclusions** derived from the
input box, not assumptions that hide an undefined integral or vector field.

The initial box is literal rational data, with every phase allowed:

| Quantity | Closed input interval or upper bound |
|---|---|
| aJ | [103/20, 21/4] |
| aS | [189/20, 193/20] |
| eJ | ≤3/50 |
| eS | ≤7/100 |

`SecularInputBox` also imposes Λᵢ>0 and 0≤Γᵢ<Λᵢ to select the prograde
elliptic chart. Its circular members are included. The axes are measured in au
under the stated normalization. This is an illustrative canonical-element box,
not a validated ephemeris uncertainty set.

Exact main name: `KAM.Planetary.secularBoxSafety`. For every s in its stated
interval, every μ>0 and every w₀ in that input box, there exists an all-time
solution of **X_Hsec** through w₀, unique among local solutions on the regular
domain. For every real time it has

    Λ(t)=Λ(0),   A(t)=A(0)<16373/2500000,
    eJ(t)<3/20,   eS(t)<3/20.

For every choice of eccentric longitudes (equivalently, every mean longitude),
the reconstructed ellipses satisfy

    1751/400 ≤ |qᵢ| ≤ 4439/400,
    |qS|−|qJ| ≥ 399/200,
    every barycentric pair distance ∈ [399/200, 4439/200].

All-time means all t∈ℝ, with no exceptional data and no smallness threshold for μ
in this averaged model. `SecularBoxConclusion` makes no Newton-equation claim
about the reconstructed ellipses. The dynamical equation is explicitly the
Hamiltonian equation for Hsec, and the geometric bounds hold for all phases.

The rational arithmetic behind the certificate is

    ΛJ<23/10,   ΛS<97/100,   ΛJ,ΛS>87/100,
    1−√(1−(3/50)²)<181/100000,
    1−√(1−(7/100)²)<123/50000,
    A < (23/10)(181/100000)+(97/100)(123/50000) = 16373/2500000,
    1−√(1−(3/20)²)>11/1000,
    16373/2500000 < (87/100)(11/1000) = 957/100000.

The radius and gap bounds follow by multiplying the axis endpoints by
1±3/20. All inequalities have strict slack. Conserved actions follow from
independence of λ; rotational invariance conserves ΣΛ−A and hence A. Compact
continuation in the slow variables, with bounded angle speeds, proves existence
for all time. No assertion that the lifted λ coordinates themselves are bounded
is needed. LP17 Appendix B supports the conservation mechanism; the explicit
box theorem is a new elementary deduction, not a theorem quoted verbatim there.

The exact parameter specialization `secularBoxAtCitedMasses` sets

    μ = 4773/5000000 = 0.0009546,
    s = 476/1591 ∈ [29/100,31/100],
    μs = 357/1250000 = 0.0002856.

These are precisely the decimal model masses in FH24v1 §4, p. 6. “Actual masses”
here means those cited realistic model parameters; it does not mean that measured
masses are exact rational numbers. A future ephemeris/time-unit certification is
separate. The theorem cannot be transferred to the full Newtonian problem without
a quantitative approximation/drift estimate over the requested time.

### Owner questions for the additions

These are recommendations awaiting the D22 statement audit and approval, not
assumed new rulings. They do not interrupt preparation of the complete draft.

- **Q-P-A1 — physical scope.** Approve G=m₀=1, fixed positive planetary weights,
  planar prograde data, and the explicit separated-annulus/low-AMD `AMDBox` region?
  **Recommend yes.** These are the requested specialization, with no factor-four
  restriction; restoring arbitrary G,m₀ can be a later scaling corollary.
- **Q-P-A2 — rate and source adaptation.** Approve the literal Nek77 a,b, symmetric
  exponential horizon, and the O(μ) conversion to heliocentric-canonical elements?
  **Recommend yes**, with the finite-cover, coordinate-transfer and continuation
  arguments recorded as proof work. Do not replace these with the unverified
  optimized exponent or an assumed analytic estimate in the headline.
- **Q-P-A3 — stopped interface.** Approve `amdConfinement` as a distinct conditional
  helper whose only dynamical input is the arbitrary-duration stopped estimate?
  **Recommend yes.** N-PARTIAL-CONVEX must discharge it after the analytic bridge;
  conservation of J is proved inside the helper for the literal physical system.
- **Q-P-A4 — precise secular model.** Approve the raw, untruncated full
  mean-longitude average in the fixed zero-coupling chart, including its weighted
  eccentric-longitude integral implementation and circular points?
  **Recommend yes.** This fixes the model without invoking a truncated series or
  a finite-order secular normal form; the mean-angle substitution is proof work.
- **Q-P-A5 — actual-mass language and box.** Approve the rational illustrative
  canonical-element box and the exact FH24v1 decimal-mass specialization, alongside
  the stronger parameter-family theorem?
  **Recommend yes.** Keep “not an ephemeris certificate” and the averaged-model
  boundary; no physical-year or full-system realistic-mass claim is supported.
