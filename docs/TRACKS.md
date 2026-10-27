# Tracks

The campaign runs on four parallel tracks (decision D14, Scott, 2026-10-27: "Let's formalize all of it! It's ok if
it is on parallel tracks"). Each track runs the same pipeline:
1. pinned sources;
2. mathematical statement;
3. exact Lean drafts, independent audit, owner approval, freeze;
4. blueprint and dependency graph;
5. proofs below the frozen anchors.

The tracks share infrastructure. The background research is in
[`explorations/planetary-and-nekhoroshev.md`](explorations/planetary-and-nekhoroshev.md).

| Track | Headline | Stage | Lean namespace |
|---|---|---|---|
| **K**: positive-measure KAM | Positive-measure KAM for nearly-integrable analytic Hamiltonians, complement ≤ C·ε^{1/4} | statements frozen; blueprint being written | `KAM` |
| **I**: isoenergetic KAM and confinement | All-time confinement in two degrees of freedom; restricted circular planar three-body problem | Phase 0 (sources and statements) | `KAM.Iso` |
| **N**: Nekhoroshev | Exponential stability for quasi-convex nearly-integrable Hamiltonians, classical exponents 1/(2n) | Phase 0 | `KAM.Nekhoroshev` |
| **P**: planetary | Properly degenerate KAM; planar two-planet problem; Zohar's fixed-Sun n-planet variant; spatial n-body later | Phase 0 | `KAM.Planetary` |

## Track I: isoenergetic KAM and all-time confinement

- **I-G1, isoenergetic a-posteriori KAM.** HL19 Theorem 3.6 and Remark 3.7, arXiv v1 pp. 18–19; proof §6. This is the
  fixed-energy companion of track K's G1. The frequency moves along a fixed Diophantine ray, and the torsion is
  enlarged by the energy row.
- **I-HEAD, confinement.** n = 2 and isoenergetic nondegeneracy (bordered Hessian determinant ≠ 0). For every
  relatively compact B′ ⋐ B and η > 0 there is ε₀ such that every solution from T² × B′ exists for all time with
  |I(t) − I(0)| < η. The mechanism: invariant tori separate the energy surface.
- **I-R3BP, application.** The restricted circular planar three-body problem near circular (small positive
  eccentricity) orbits, at small mass ratio: global solutions with no collision and no escape on an open set of
  initial conditions. This needs Delaunay coordinates and the bordered determinant 3κΩ²/L⁴ > 0.
- **Reuse.** Track K infrastructure: Part 1 analysis, and the geometry and Newton step of Part 2.

## Track N: Nekhoroshev stability

- **N-HEAD, quasi-convex Nekhoroshev with classical exponents.** For n ≥ 3, every solution with initial action in
  B(0, R/2) satisfies |I(t) − I(0)| ≤ C·ε^{1/(2n)} for |t| ≤ T·exp(c·ε^{−1/(2n)}).
  - Pinned: Bounemoura–Marco, Nonlinearity 24 (2011), arXiv:1004.1014v2, Theorem 2.1, p. 5, at the endpoint
    exponent.
  - Historical route: Pöschel, Math. Z. 213 (1993) (not yet obtained); Lochak 1992.
- **Later.** Steep systems (Guzzo–Chierchia–Benettin, CMP 342 (2016)); planetary Nekhoroshev (Niederman 1996).
- **New infrastructure.** Resonant normal forms, Dirichlet approximation (Mathlib has it), lattice geometry,
  energy confinement, continuation of solutions.

## Track P: planetary

- **P-G, properly degenerate KAM.** Chierchia–Pinzari, Invent. Math. 186 (2011), Theorem 11.1, pp. 50–51, whose
  provider is CP10 (DCDS-S 3 (2010)) Theorem 1.3.
- **P-PLANAR, planar two-planet problem with a moving Sun.**
  - Fixed positive masses and well-separated semimajor-axis intervals.
  - Conclusion: for small mass ratio μ, a positive-measure union of analytic invariant 4-tori near circular
    co-planar motions, with uniform collision and escape bounds.
  - Arnold 1963 (RMS 18:6); Féjoz 2004 (Herman), with erratum.
- **P-FIXED, Zohar's variant.** n planar planets around a fixed Sun with O(ε) mutual coupling: positive measure of
  quasi-periodic, collision-free, escape-free motions near circular co-planar orbits. Its secular computation must
  be checked separately.
- **P-SPATIAL (long term).** The general spatial n-body problem: CP11 full theorem; Féjoz 2004.
- **New infrastructure.** Newtonian n-body Hamiltonians, Kepler and Poincaré/Delaunay coordinates, averaging and
  Birkhoff normal forms, secular coefficients, two-scale small-divisor estimates.

## Shared infrastructure, by consumer

| Infrastructure | K | I | N | P |
|---|---|---|---|---|
| Analysis on strips and complex domains (Part 1) | ✓ | ✓ | ✓ | ✓ |
| Cohomological equation, Diophantine sets | ✓ | ✓ | (✓) | ✓ |
| A-posteriori geometry, Newton step (Part 2) | ✓ | ✓ | | ✓ |
| Lie series / canonical transformations, normal forms | | | ✓ | ✓ |
| Hamiltonian flows, global existence of solutions | ✓ | ✓ | ✓ | ✓ |
| Kepler problem, Delaunay/Poincaré coordinates | | ✓ (R3BP) | | ✓ |

## Proposed additions from the collaborator's research question (awaiting the owner)

Rounds 1–3 are in `explorations/almost-every-*.md`; round 3 is an independent refutation. The proposed statements are:
- **P-EXP-SAFE.** Nekhoroshev 1977, §12, Theorem 12.3, pp. 55–56, specialized to the planar problem with a moving Sun.
  - For EVERY initial condition with low angular-momentum deficit and separated semimajor axes there are no
    collisions and no escapes for times exp(c·μ^{−a}), with the source's exponents a = 2/(6n²−3n+14) and b = 3a/2
    (or "some a, b > 0").
  - Round 2's exponent 1/(2n) is unverified, so it stays a separate, unfrozen strengthening.
- **N-PARTIAL-CONVEX.** The stopped properly-degenerate Nekhoroshev theorem (Nekhoroshev 1977, Theorem 4.4, p. 30):
  convexity only in the fast actions, any slow domain. This is the bridge from track N to track P.
- **P-AMD-CONFINEMENT.** A helper: angular-momentum conservation plus a fast-action drift bound valid up to the
  exit time give eccentricity, separation and continuation bounds.
- **P-SECULAR-BOX.** At the actual masses, in the exactly averaged Sun–Jupiter–Saturn model, an explicit box of
  initial conditions is safe for all time (a crude form of Laskar's deficit criterion).
- **N-AVERAGING.** Averaging for most initial conditions (Arnold–Kozlov–Neishtadt Thm 6.11): drift below c√ε/κ up
  to time 1/ε, outside a set of measure κ.
- **Not a theorem yet.** A certificate for the full model at realistic masses is a feasibility study.

