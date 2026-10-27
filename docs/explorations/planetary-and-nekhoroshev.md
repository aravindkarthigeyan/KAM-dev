# Planetary KAM and open regions of long-time stability

Exploration for the Zohar brief, 27 October 2026. This is a research report, not an approved statement or a formalization receipt. The current campaign supplies positive-measure KAM for a nondegenerate integrable Hamiltonian, with complement O(ε^{1/4}). Its analytic tools are relevant to all three proposals below, but planetary degeneracy and confinement require additional mathematics.

## A. The planetary KAM theorem

### Statement, model, and measure

Fix n ≥ 2, positive masses m₀,…,mₙ and distinct positive semimajor axes a₁ < … < aₙ. Give the bodies masses m₀, μm₁,…,μmₙ and Newtonian gravitational interactions. For sufficiently small μ > 0 there is, near the circular coplanar Kepler configurations with these axes, a positive-Lebesgue-measure set of quasiperiodic motions. Translation and total linear momentum are removed; the Sun remains a dynamical body. The spatial invariant tori have dimension 3n−1. Féjoz’s precise statement gives C∞ tori, closeness to the circular coplanar Kepler tori, and density tending to one as the small parameter tends to zero. See **Theorem 63, p. 49** of his January 2007 revised printing, with reconstruction and the full-dimensional measure argument on pp. 60–61. His later summary states the mass/axis quantifiers explicitly in **Theorem 1, pp. 1–2**. [Féjoz revised proof](https://www.ceremade.dauphine.fr/~fejoz/Articles/Fejoz_2004_Arnold.pdf), [summary](https://www.ceremade.dauphine.fr/~fejoz/Articles/Fejoz_2012_Arnold.pdf).

“Positive measure” concerns the union of tori: one torus has zero ambient measure. Nor does a positive-measure set on one angular-momentum leaf automatically have positive ambient measure; the leaf parameters must be varied. A planar theorem measures initial conditions in planar phase space. The planar invariant subspace itself has zero spatial measure.

Chierchia–Pinzari give a particularly useful quantitative spatial formulation. In their explicitly well-separated semimajor-axis domains, let r measure the secular displacement from circular coplanar motion. Under

    0 < r < r*,       0 < μ < min(μ̄, r⁶/(log r⁻¹)^c*),

the proportion occupied by tori exceeds 1−C*√r. **Theorem 11.2, pp. 51–52**, gives analytic Diophantine (3n−1)-tori in each partially reduced, (6n−2)-dimensional leaf. **Theorem 11.3, p. 53**, gives analytic Diophantine (3n−2)-tori after full reduction, in dimension 6n−4. Reconstruction can add a resonant or Liouvillean rotation; do not transfer the reduced Diophantine property automatically. This is a joint r,μ asymptotic, not a density-one assertion at fixed positive mass. [CP11, equations (11.1)–(11.2)](https://www.mat.uniroma3.it/users/chierchia/REPRINTS/Invent11.pdf).

In the planar problem there are 2n degrees of freedom after translation reduction; maximal tori have dimension 2n, or 2n−1 after fixing and reducing planar angular momentum. The near-circular planar two-planet theorem is the classical completely proved Arnold case; the general planar argument requires its own secular nondegeneracy verification. It cannot be obtained by intersecting a spatial positive-measure set with the planar subspace. Féjoz verifies planar frequency nondegeneracy in **§7.2, pp. 54–57**; CP11 explicitly identifies the planar two-planet torsion in **§8.1, pp. 32–35**.

The collaborator’s “fixed Sun” is a different model. With a prescribed center, the scaled Hamiltonian is

    Hfixed = Σᵢ (|pᵢ|²/(2mᵢ) − m₀mᵢ/|qᵢ|)
             − μ Σᵢ<ⱼ mᵢmⱼ/|qᵢ−qⱼ|.

Heliocentric coordinates for a *moving* Sun instead give reduced masses and an indirect kinetic coupling proportional to μΣᵢ<ⱼ pᵢ·pⱼ/m₀. Setting the Sun’s coordinate to zero is not a justification for deleting this term. A fixed-center Newtonian version is a plausible adaptation, but coverage by the precise theorems above is **[unverified]**. Still less does an arbitrary O(μ) coupling guarantee the required secular ellipticity and torsion. The coupling’s structure matters.

### History and the missing hypotheses

Arnold’s 1963 paper, *Russian Mathematical Surveys* **18(6), 85–191**, proved the planar three-body case and outlined the spatial/general case. The missing spatial argument was substantive: reduction becomes singular at coplanarity, and an additional secular frequency relation obstructs the proposed nondegeneracy. This diagnosis is documented in Féjoz **§1.2, p. 4**, and **Proposition 81 and its discussion, pp. 58–59**. The original English text’s detailed gap locators are **[unverified]** here; I have verified the later primary-source diagnosis, not independently audited Arnold’s entire proof. [Arnold DOI](https://doi.org/10.1070/RM1963v018n06ABEH001143).

Herman’s work, completed and published by Féjoz in 2004, supplied a complete general proof using weak frequency nondegeneracy rather than the full quartic torsion calculation. Use the revised January 2007 printing together with the author’s February 2007 erratum. The analytic version of this approach was developed by Chierchia–Pusateri, *Analytic Lagrangian tori for the planetary many-body problem* (2009). Chierchia–Pinzari (2011) then implemented Arnold’s normal-form strategy through regularized planetary symplectic coordinates and explicit torsion calculations. Their Theorem 11.1 imports the properly degenerate KAM theorem of their 2010 paper; the 2011 article is not the entire abstract KAM proof. [Féjoz DOI](https://doi.org/10.1017/S0143385704000410), [erratum](https://www.ceremade.dauphine.fr/~fejoz/Articles/erratum.pdf), [Chierchia–Pusateri DOI](https://doi.org/10.1017/S0143385708000503), [properly degenerate KAM DOI](https://doi.org/10.3934/dcdss.2010.3.545).

There are substantial later extensions. Pinzari’s perihelia reduction gives nearly full measure of reduced (3n−2)-frequency motions without requiring small eccentricities: **Theorem A, printed p. 6**, in arXiv:1501.04470v4. It assumes strongly separated axes, μ ≤ αᴺ, and eccentricity intervals strictly below 0.6627…. That Levi-Civita analytic threshold is not eccentricity one. This does not cover arbitrary eccentric configurations or observed planetary spacing. [Verified v4, subsequently published in Memoirs AMS 255 (2018), no. 1218](https://arxiv.org/abs/1501.04470v4).

### Why the current headline does not apply

In Kepler actions,

    hKep(Λ) = −Σᵢ cᵢ/(2Λᵢ²),       cᵢ > 0.

It depends on only n actions out of 2n planar or 3n spatial actions. Its full Hessian is singular and its frequency map has zero secular components. The current headline’s bi-Lipschitz frequency hypothesis fails; at the uncorrected circular tori the a-posteriori twist also lacks the required inverse.

The missing construction is substantive:

1. Build canonical heliocentric and Poincaré coordinates, regular at zero eccentricity. Spatial reduction additionally needs Deprit variables and their regularization; raw orbital angles are singular at circularity/coplanarity.
2. Average over fast Kepler angles with controlled analytic remainders. The secular Hamiltonian governs slow precession, eccentricity and inclination changes; it is generally not integrable.
3. Normalize its elliptic equilibrium. In secular actions J, the relevant part has the form μ(σ(Λ)·J + ½Jᵀβ(Λ)J + higher terms). Verify spectral conditions and det β ≠ 0, rather than assuming the desired twist.
4. Control the resulting two scales: fast frequencies O(1), slow frequencies O(μ), inverse slow twist O(μ⁻¹), and a remainder small relative to both μ and the secular radius. Reapplying our headline with constants depending on μ is not a uniform proof.

There are two distinct spatial degeneracies. Rotational symmetry produces a zero secular frequency. Herman’s additional relation is a sum of horizontal and vertical secular frequencies equal to zero. Partial reduction removes the zero mode; the remaining relation requires using the symmetry restrictions on allowed normal-form monomials. It does not mean the nonlinear planetary system can have no Diophantine tori. Full reduction changes both the frequency count and the coordinate domain. [CP11 §§5–8, especially Proposition 7.1, p. 22, and §7.2, pp. 25–28](https://www.mat.uniroma3.it/users/chierchia/REPRINTS/Invent11.pdf).

### Collision exclusion, costs, and a first physical statement

The dynamical conclusion is elementary once the correct tori exist. Their images are compact subsets of collision-free phase space. Each distance |qᵢ−qⱼ| therefore has a positive minimum, and heliocentric positions and momenta have finite maxima. The conjugacy gives a solution for every real time; ODE uniqueness identifies it with the physical trajectory. These are bounds on relative positions: unrestricted center-of-mass translation is not planetary escape. Near separated circles, uniform radial bounds also give an explicit collision margin before invoking compactness.

A faithful first physical target is **two planar planets with a moving Sun**, fixed positive reference masses and well-separated semimajor-axis intervals: for every sufficiently small chosen eccentricity neighborhood, all sufficiently small μ admit a positive planar-measure union of analytic invariant four-tori, with uniform collision and escape bounds. Restricting the geometry is legitimate; silently replacing the moving Sun is not. This target retains mutual planetary perturbation and avoids spatial reduction. The fixed-Sun variant should be a separately named adaptation after its secular calculation is checked.

Incremental planning estimates, assuming completion of the present roughly 40k-line campaign:

| New component | Rough additional Lean lines |
|---|---:|
| Newtonian Hamiltonian, Kepler parametrization, planar canonical coordinates | 8k–15k |
| Averaging, finite Birkhoff normal forms, transformations and remainder bounds | 10k–20k |
| Two-planet secular coefficients and nondegeneracy | 5k–12k |
| Two-scale KAM application, measure transport, physical bounds | 5k–10k |
| Spatial rotations, Deprit/RPS coordinates, general-n torsion, additionally | 20k–45k |

These are uncertain engineering estimates, not measured inventories; components overlap. Expect roughly 30k–60k additional lines for the planar application, and substantially more for the general spatial theorem. No Mathlib availability claim is implied.

## B. A nice region with no imminent collisions and escapes

### B1. Two degrees of freedom: confinement for all time

For an autonomous two-degree-of-freedom Hamiltonian, a regular energy surface is three-dimensional. In an action-angle energy cylinder, two disjoint invariant graph tori bound a region diffeomorphic to T²×(0,1). Uniqueness prevents crossing either boundary. If its closure is compact and avoids collisions, every orbit in this relatively open region exists and is confined for all time, whether quasiperiodic, resonant or chaotic.

A torus need not separate an arbitrary three-manifold globally. The cylinder/graph geometry and both escape boundaries must be proved. Also, openness within one energy surface is not openness in four-dimensional phase space. A uniform construction across an open energy interval supplies that stronger conclusion. In n ≥ 3, a Lagrangian torus has codimension n−1 ≥ 2 within the energy surface, so this barrier argument disappears.

The necessary analytic hypothesis is **isoenergetic nondegeneracy**:

    det [[D²h(I), ∇h(I)], [∇h(I)ᵀ, 0]] ≠ 0.

Haro–Luque **Theorem 3.6 and Remark 3.7, arXiv v1 pp. 18–19**, are particularly well matched: take d=n=2 and the conserved quantity c=H. Their error includes both the invariance error and the energy mismatch; their enlarged torsion must be invertible. The final frequency moves along a fixed Diophantine ray. Our existing fixed-frequency theorem alone does not supply this conclusion. [HL19 v1](https://arxiv.org/abs/1711.05515v1).

For the planar circular restricted three-body problem, use rotating coordinates, making the system autonomous. At zero secondary mass, Delaunay variables give

    h(L,G) = −κ/(2L²) − ΩG,       κ, Ω > 0.

Although its ordinary Hessian is singular, its bordered determinant is 3κΩ²/L⁴ > 0. This direct calculation explains why isoenergetic KAM works here. On a compact family of slightly eccentric, near-circular ellipses staying away from both primaries and the secondary’s orbit, the perturbation is analytically O(μ). Exact circularity requires regularized coordinates; a small positive eccentricity annulus avoids that extra first milestone. These formulas use conventional 2π orbital angles; conversion to period one must rescale the conjugate actions too.

The restricted model has a massless test body and two moving circular primaries. It is not two mutually interacting planets with a fixed Sun. Closed Hill regions can prohibit escape while still allowing collision with a primary; they do not replace the compact collision-free torus barriers. The proposed restricted application is a deduction requiring the coordinate and topology proofs, not a separately verified theorem in HL19.

### B2. Nekhoroshev: every initial condition, exponentially long time

For analytic H(θ,I)=h(I)+f(θ,I), with ‖f‖ ≤ ε on a fixed complex neighborhood, a representative quasi-convex conclusion is

    |I(t)−I(0)| ≤ C ε^(1/(2n)),
    |t| ≤ T exp(c ε^(−1/(2n))).

This holds for **every angle and every initial action in an interior open domain**, with constants fixed before f. Quasi-convexity means ∇h ≠ 0 and D²h[v,v] ≥ m|v|² whenever v·∇h=0, uniformly. A negative definite version follows by reversing H. Boundary margins are essential. Angles may move arbitrarily far, and the estimate does not assert quasiperiodicity or invariance of the initial open set.

Nekhoroshev’s 1977 theorem treats the broader steep class. Lochak’s 1992 simultaneous-approximation method and Pöschel’s 1993 resonance geometry yield the classical explicit quasi-convex exponents a=b=1/(2n). Bibliographic records are verified; the original numbered statements in those three papers are **[unverified]** in this inspection. The displayed result is directly verified as the endpoint δ=1/[2n(n−1)] of **Bounemoura–Marco, Theorem 2.1, v2 p. 5**, with hypotheses on p. 4. Their theorem also trades a smaller confinement power for a time exponent approaching 1/[2(n−1)]. [Nekhoroshev DOI](https://doi.org/10.1070/RM1977v032n06ABEH003859), [Lochak DOI](https://doi.org/10.1070/RM1992v047n06ABEH000965), [Pöschel DOI](https://doi.org/10.1007/BF03025718), [BM v2](https://arxiv.org/abs/1004.1014v2).

Steepness is a quantitative condition on projected gradients along every lower-dimensional affine direction transverse to ∇h. It is stronger than a nonsingular Hessian in the relevant sense. For example, h=(I₁²−I₂²)/2 and f=ε sin(θ₁+θ₂) have a nonsingular Hessian but admit I₁=I₂=−εt from zero actions and θ₁+θ₂=0: direct substitution gives linear drift. Thus our headline cannot imply a general Nekhoroshev theorem. For general steepness indices αⱼ, Guzzo–Chierchia–Benettin **Theorem 1, v1 p. 4**, gives a=1/(2nα₁⋯αₙ₋₂), b=a/αₙ₋₁, n≥3, with explicit boundary and time factors. [Verified preprint](https://arxiv.org/abs/1403.6776v1), [2016 publication](https://doi.org/10.1007/s00220-015-2555-x).

To infer no collision, the entire allowed action tube, for all angles, must map into a bounded collision-free physical domain. Controlling semimajor axes alone is insufficient: eccentricities can increase and ellipses can intersect.

### B3. Planetary results and the observed Solar System

Proper degeneracy also blocks a direct application of standard Nekhoroshev theory. Niederman’s 1996 planetary result controls fast Kepler actions exponentially long, with bounded secular motion as an intermediate requirement. Near circular coplanar configurations, angular-momentum conservation supplies the additional confinement. This structure is explicitly explained in **Clarke–Féjoz–Guardia, §1.3, author manuscript pp. 5–6**. The original Niederman theorem’s exact constants and numbered statement remain **[unverified]**; its Crossref record confirms *Nonlinearity* **9, 1703–1751**, not the similarly titled 1995 proceedings chapter. [Niederman DOI](https://doi.org/10.1088/0951-7715/9/6/017), [CFG manuscript](https://www.ceremade.dauphine.fr/~fejoz/Articles/Clarke,%20Fejoz,%20Guardia%20(2024)%20Semimajor%20Axis.pdf).

Barbieri–Niederman’s 2018 preprint improves explicit estimates near periodic Kepler tori in the planar planetary and circular restricted problems. Its **Theorems 1–2, pp. 15–17**, distinguish whole-system and action stability; **Theorem 7, pp. 30–32**, controls the additional Cartesian variables. This is useful infrastructure for a later application, not a certificate covering the real eight-planet uncertainty region. [Verified arXiv v1](https://arxiv.org/abs/1810.05987v1).

The collaborator’s recollection needs a quantifier correction. A collision-free initial point always has some open neighborhood safe for some positive time, by local ODE theory. More generally, a reference orbit known to stay in a compact collision-free set over a fixed finite interval has a neighborhood safe over that interval by continuous dependence. The hard claim specifies an observational uncertainty region, an astronomical time horizon, a force model, and uniform bounds for **all** initial data in that region.

Laskar–Gastineau simulated 2,501 observationally compatible initial conditions over five billion years, including lunar and relativistic contributions. Roughly one percent exhibited large Mercury eccentricity growth allowing collisions; one branch produced terrestrial-planet destabilization. This is numerical evidence against blanket five-billion-year safety for such uncertainty ensembles, not a rigorous enclosure proof of collision, nor evidence against all shorter-time uniform bounds. Chaos alone does not imply collision or escape. [Nature 459 (2009), 817–819](https://doi.org/10.1038/nature08096).

Analytical instability is now also known in other planetary regimes: Clarke–Féjoz–Guardia (2024) construct large semimajor-axis variations in a hierarchical three-planet problem on polynomial mass-dependent time scales. Their high mutual inclinations and weak uniform convexity place them outside the preceding stability regime; this does not settle observed Solar System initial data. [Theorems 1 and 3, manuscript pp. 3–4; publication](https://doi.org/10.1007/s00205-024-01960-6). No inspected source establishes the requested uniform, realistic astronomical safety theorem. Without a specified region, model and time, “the strong statement is open or false” is not a well-posed verdict.

## C. Recommendations

Ranked by expected value per additional formalization cost; all are proposed statements requiring separate approval.

**1. All-time confinement for two-degree-of-freedom isoenergetic systems.** Let h be analytic near a bounded action domain B⊂ℝ², with nonzero bordered determinant throughout a neighborhood of B̄. For every relatively compact open B′⊂B and η>0, sufficiently small analytic f gives global solutions from every point of T²×B′ with |I(t)−I(0)|<η for all t. Choose η below the domain margin. Add the restricted three-body application on a compact near-circular eccentricity annulus as a second milestone.

Pinned analytic source: **HL19 v1, Theorem 3.6 and Remark 3.7, pp. 18–19; proof §6, pp. 45–53**. The confinement conclusion is our derived assembly, not the literal source theorem. Reuse ALG, DIOPH, NEWTON, GEOM, BRIDGE and much of APOST; no full positive-measure machinery is needed. New: bordered linear solve, energy correction, parameter dependence, graph separation and ODE continuation. Estimate **5k–10k lines**, plus **5k–10k** for the restricted physical model. Main risk: confusing relative energy-surface openness with full openness, or assuming fixed-frequency torsion implies isoenergetic torsion.

**2. Quasi-convex Nekhoroshev with classical exponents.** For n≥3, B=B(0,R), fixed complex width s, fixed derivative bounds for analytic h and uniform quasi-convexity, there are ε₀,C,T,c>0 such that every analytic f with ‖f‖≤ε<ε₀ and every initial point with I₀∈B(0,R/2) satisfy the B2 bounds. Include ε=0 separately as exact integrable motion. A uniform positive lower bound for |∇h| can be included among the geometric data.

Pinned source: **BM v2, hypotheses C(M,m,ε), pp. 4–5, Theorem 2.1, p. 5**, at the stated endpoint δ. Pöschel 1993 is the historical proof route, not an independently verified theorem-number citation here. Reuse weighted analytic algebras, Fourier cutoffs, derivative estimates and Hamiltonian interfaces. New: resonant normal forms or periodic averaging, integer-lattice geometry/Dirichlet approximation, energy confinement and orbit continuation. Estimate **20k–40k lines**. Main risk: most geometric work is new; neither a KAM Cantor set nor an assumed drift estimate can replace it. This is the strongest direct answer to the open-region request, but not yet a planetary corollary.

**3. Properly degenerate KAM as the bridge to planets.** Let H=H₀(I)+μP(I,φ,p,q;μ) be analytic near V×Tʳ×B²ˢ, with ∂IH₀ a diffeomorphism and averaged perturbation

    Pav = P₀(I) + Σⱼ Ωⱼ(I)Jⱼ + ½Σᵢⱼ βᵢⱼ(I)JᵢJⱼ + o(|(p,q)|⁴),
    Jⱼ=(pⱼ²+qⱼ²)/2,       |det β| ≥ b > 0.

For small radius ρ and μ<ρ⁶/(log ρ⁻¹)^c, obtain analytic Diophantine Lagrangian (r+s)-tori with relative measure >1−C√ρ and fast/slow frequencies O(1), O(μ). Pin **CP11 Theorem 11.1, pp. 50–51**, which identifies its provider as **CP10 Theorem 1.3**. The latter’s original numbered text was not separately inspected; CP11’s full statement was. Reuse analytic infrastructure and eventual KAM iteration; add averaging, polar symplectic coordinates, two-scale small-divisor estimates and parameter-dependent constants. Estimate **15k–30k lines**, overlapping the planetary budget. Its hypotheses are an honest abstract normal-form contract, not proof that a Newtonian system satisfies them. The next milestone is the planar two-planet calculation in A; general spatial reduction should wait.

### Source pins, verification, and handoff

DOI/title matches were checked against Crossref on 27 October 2026; responses are retained under `sources/incoming-zohar/*crossref*.json`. This includes Arnold, Féjoz, CP10/11, Chierchia–Pusateri, HL19, Nekhoroshev, Lochak, Pöschel, Niederman, BM, GCB and CFG, and Laskar–Gastineau. arXiv abs pages verify **1711.05515v1**, **1501.04470v4**, **1004.1014v2**, **1403.6776v1**, and **1810.05987v1**. Journal and preprint pagination are kept distinct. Some failed PDF requests returned HTML; those files are not source pins.

The three recommended statements are anchored to these SHA-256 snapshots:

| Source file | SHA-256 |
|---|---|
| `sources/pdf/arxiv_1711.05515.pdf` | `ed457633b5c4f0412b7f2c81c3818ef88829dee3420b97864e42223b77eb5241` |
| `sources/incoming-zohar/bm1004v2.pdf` | `90f0f6b3b3b183b8898f4e961f0127b3a143453f76645d960d3095fda5b9b818` |
| `sources/incoming-zohar/cp11.pdf` | `9b525c5896cfd006b813e79ce56df0b33fcdc55595c972e5090f4a839de4c30f` |
| `sources/incoming-zohar/fejoz04revised.pdf` | `d5a05c79f754da467d8148ee572a22098e1e1ee16a8c6f3052356657a02ac9e3` |

**Errata and deviations.** Féjoz’s published erratum, p. 1, says of original Corollary 22: “Les arguments donnés sont insuffisants”; the issue is Whitney parameter dependence of the inverse, for which the erratum supplies a different argument. Page 2 also corrects linear inverse-estimate constants. These are author-reported corrections, not newly discovered defects in the revised proof. Arnold’s general-case gap is reported above with its verified diagnostic source. No new confirmed source defect was found. Proposed deviations are period-one rescaling, classical rather than improved Nekhoroshev exponents, and restricted geometry for a first planetary application; none has been implemented.

**Checks and limits.** Only this report is an authored repository deliverable; research downloads and extracted source data stay in the new incoming directory. No Lean was written or built, and no state-changing git command was used. `#print axioms` is inapplicable. An initial `scripts/lint_sources.sh` run reported stale generated root imports and frozen files without manifest anchors during concurrent work; `check_lean_modules: PASS (2 Lean files, 0 comparator configurations)`. These unrelated files were left untouched. `git diff --check` produced no output. Exact original theorem locators not inspected are marked **[unverified]**; proposed cost estimates and the physical applications are not implementation or closure claims.
