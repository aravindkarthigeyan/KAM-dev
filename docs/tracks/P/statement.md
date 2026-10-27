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
