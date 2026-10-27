# Track P notes and Phase 0 handoff

27 October 2026. Four deliverables completed as a **statement-review packet**. This is
not owner approval, a freeze, a theorem proof or a provider receipt.

## Files and approach

| Deliverable | Contents |
|---|---|
| `docs/tracks/P/sources.md` | Verified bibliographic identities, six source records, PDF hashes for the five inspected PDFs, exact source contracts and locators, Arnold-original verification limit. |
| `docs/tracks/P/statement.md` | P-G, P-PLANAR, P-FIXED; exact quantifier order and physical laws; P-SPATIAL sketch; owner questions and seven deviation groups. |
| `.drafts/P/Statements.lean` | 348-line untracked/ignored Lean module; literal definitions and three exact draft theorem statements, with theorem-body `sorry` only. |
| `docs/tracks/P/notes.md` | This infrastructure, uncertainty, errata and validation handoff. |

New source data reside only in the initially empty `sources/incoming-P/`: CP10 and
CP09 PDFs, text extractions, retained bibliographic records, publisher/arXiv pages and
page images used to verify ambiguous source typography. CP10 and CP09 were obtained
freely; existing pinned sources were read without modification. `docs/sources.json`,
`sources/SHA256SUMS`, `docs/errata/ledger.json`, frozen files, generated files and other
tracks were not edited. No state-changing git command was used.

The approach keeps the abstract properly degenerate gate literal at the averaged
quartic expansion, but exposes its uniform analytic standing data. The physical
headlines have only masses, axes, G and neighborhood size as premises: they do not
assume that the planetary normal form or secular nondegeneracy has already been proved.
Physical Newton equations, t∈R solutions, collision bounds and relative boundedness
are all conclusions. P-FIXED is explicitly our deduction for a specified Hamiltonian.

## Exact draft surface

The three theorem declarations are:

- `KAM.Planetary.properlyDegenerateKAM`: CP11 Theorem 11.1 / CP10 Theorem 1.3,
  including fast/slow frequencies and strict relative-measure inequalities.
- `KAM.Planetary.planarTwoPlanetKAM`: genuine moving-Sun planar three-body motions,
  analytic 4-tori, qualitative positive measure in every prescribed circular tube.
- `KAM.Planetary.fixedSunPlanetaryKAM`: proposed Newtonian fixed-center deduction for
  n≥2, analytic 2n-tori, same physical confinement conclusion with the fixed-center law.

The draft definitions are grouped by mathematical use:

- Canonical coordinate infrastructure: `Phase`, `fast`, `slow`, `assemble`,
  `cylinder`, `cylinderCell`, `fastShift`.
- Literal abstract data: `secularAverage`, `oscillatorAction`, `HasSecularBirkhoffForm`,
  `fastFrequency`, `HasFastDiffeomorphism`, `degenerateHamiltonian`.
- Cylinder conclusion: `IsCylinderTorus`, `IsCylinderKolmogorovSet`.
- Physical quantities: `bodyVector`, `planeSq`, `planeLength`, `planeDot`, `NoCollision`,
  `movingHamiltonian`, `fixedHamiltonian`, `circularPoint`, `circularTube`.
- Physical dynamics/conclusions: `IsPhysicalTorus`, `actualMasses`, `barycentricPositions`,
  `barycentricVelocities`, `IsNewtonSolution`, `IsFixedSolution`, `PairBounds`,
  `MovingKolmogorovSet`, `FixedKolmogorovSet`.

No frozen definition is changed or shadowed. We reuse `KAM.IsDiophantine`,
`KAM.symplecticForm`, `KAM.hamiltonianVectorField`. The frozen primary-torus predicate
is deliberately not used for periodic Cartesian positions: its affine lattice winding
would give the wrong physical object. No module imports a provider or a draft frozen
theorem anchor. No arbitrary/default witness, choice-selected map, collision fallback,
secular proxy solution, or conclusion-shaped assumption is used.

### Guard audit

- `fderiv` of H₀: guarded by analyticity on V in `HasFastDiffeomorphism`, and by the
  stronger closed-neighborhood analyticity in P-G. The inverse is a supplied smooth
  inverse satisfying both identities; it is not a totalized matrix inverse.
- `fderiv` of K: guarded by `AnalyticOnNhd ℝ K Set.univ`; each torus predicate also
  explicitly requires differentiability of H along its range before using X_H.
- The normalized angular integral is accompanied by `IntegrableOn` for all used
  parameter and secular points. Its constant denominator is (2π)^n₁, which is positive.
- `Real.sqrt (planeSq v)` has a nonnegative radicand identically, since `planeSq` is
  a sum of squares. `sqrt(G*m₀/aᵢ)` is only used in headline contexts with positive
  G,m₀,aᵢ. No square root of a potentially negative physical energy defines an orbit.
- All mass and barycentric denominators are positive by explicit hypotheses.
  `NoCollision`, the positive lower pair bound d, and the collision clauses of the
  solution predicates guard every inverse distance along an asserted physical orbit.
- P-G has 0<ρ<ρ_*<1, hence log(1/ρ)>0 and the real-power denominator is positive.
  There is no unguarded rpow of a negative number in the smallness relation.
- Total Lean formulas for a Hamiltonian have no special behavior claimed at collisions.
  Every theorem use of their physical meaning occurs on the collision-free locus.

## Infrastructure and dependency ownership

| Statement | New proof infrastructure | Shared/reused infrastructure | First unpaid obligation |
|---|---|---|---|
| P-G | Fast-angle averaging, canonical analytic changes, quartic Birkhoff preparation, two-scale Diophantine estimates, two-scale KAM iteration, measure accounting in shrinking secular balls. | K: complex analysis, Cauchy/Fourier estimates, cohomology, symplectic linear algebra, measure. N: Lie series and normal forms. | A literal proof of CP10 Theorem 1.3 at the chosen uniform-data interface. Track K's nondegenerate a-posteriori theorem alone does not supply it. |
| P-PLANAR | Newtonian reduction, Kepler/Poincaré coordinates, averaged disturbing function, planar secular diagonalization; either quartic torsion or analytic weak-nondegeneracy KAM. Reconstruction and physical compactness estimates. | I: planar Kepler and canonical coordinate machinery; K: analytic and invariant-torus infrastructure; N: averaging. | Verify the exact canonical chart and planar secular data, then prove the appropriate KAM gate. Source theorem citations are not native providers. |
| P-FIXED | Fixed-center Hamiltonian and its secular comparison at zero coupling; planar Rüssmann frequency condition; analytic version of the Herman gate. | Same Kepler/averaging infrastructure as P-PLANAR; CP09 Theorem 4 can support both. | Prove that the exact fixed-center quadratic secular form is the one in Fej04r Proposition 77, with all scalings and signs. Zero cross-term average is only one component. |
| P-SPATIAL | Literal RPS coordinates, partial/full angular-momentum reduction, induction for torsion, leafwise-to-ambient measure, physical reconstruction. | P-G, planetary Kepler and secular machinery. | Exact leaf and reconstruction contracts are not drafted yet; no spatial Lean anchor is proposed. |

The analytic weak-nondegeneracy gate in CP09 Theorem 4 is an additional blueprint
input, not a hidden assumption of the physical headlines and not claimed to follow
from P-G without work. P-G and the fixed-Sun headline do not form a single linear
chain: they can use different nondegeneracy mechanisms. If the campaign wants a
separate frozen CP09 gate, draft it in a subsequent packet with its local analytic
norms and parameter-uniform constants, rather than inserting a placeholder predicate
in these headlines.

### Rough size and effort estimate

These are planning ranges, not measured completion claims, and overlapping rows
should not be summed mechanically.

- Two-scale properly degenerate KAM and its uniform measure theorem: roughly 12–22k
  new Lean lines after track K's analytic infrastructure exists.
- Analytic Rüssmann/Herman route: roughly 8–16k lines, sharing substantial KAM and
  averaging code with the previous item.
- Newtonian Hamiltonians, reductions, Kepler/Poincaré coordinates and physical
  reconstruction: roughly 10–18k lines, shared heavily with track I.
- Planar secular calculation, coefficient estimates and nondegeneracy: roughly 6–12k
  lines. The n=2 quartic route and general-n weak route have different costs.
- Fixed-Sun adaptation after those components: roughly 2–5k lines for the comparison
  and assembly; it is not an independent complete KAM development.
- Spatial RPS coordinates, torsion induction and reconstruction: roughly another
  15–30k lines beyond the planar campaign.

A reasonable total planning band for P-G plus the two planar headlines is **35–65k
additional lines**, depending strongly on shared infrastructure. Several-month effort
at minimum; high uncertainty lies in coordinate algebra and the analytic weak gate.
Every future module must remain below 1500 lines; no heartbeat, recursion-depth or
synthesis-heartbeat override is an acceptable scheduling shortcut.

## Suspected source defects and author-reported corrections

No ledger was edited; these records are for the orchestrator. “Candidate” means that
the printed text was checked and a mathematical objection identified, not that a Lean
refutation or a full source-proof audit has been completed.

### E-P-Fej04r-1 — repeated mass indices in the planar matrix (candidate)

- **Location:** revised Fej04r p. 55, proof of Proposition 73, display defining qⱼₖ
  after Δ=diag(sqrt Λ₁,…,sqrt Λₙ). The rendered page was inspected.
- **Printed terms:** the second sum in qⱼⱼ contains `mₖmₖ`; the j<k formula for
  qⱼₖ also contains `mₖmₖ`.
- **Why suspect:** the defining quadratic form (36), p. 51, has the pair coefficient
  mⱼmₖ, and the displayed j>k formula already has mⱼmₖ. With unequal masses the
  j<k expression as printed disagrees with symmetry of Q̂_h and with (36).
- **Proposed correction:** replace those two `mₖmₖ` factors by `mⱼmₖ`. Derive the
  entries from (36) in the formal calculation; do not copy the erroneous expansion.
- **Scope:** transcription-level defect in an intermediate display, not a new
  counterexample to the planetary theorem.

### E-P-Fej04r-2 — meromorphic continuation claim (candidate)

- **Location:** revised Fej04r p. 56, Lemma 76; rendered page inspected.
- **Quoted text:** “en des fonctions méromorphes sur la sphère de Riemann ayant pour
  points singuliers les quatre pôles 0, ±1, ∞.”
- **Why suspect:** Definition 66, p. 50, makes b₁/₂⁽⁰⁾(α) the mean of
  `(1+α²−2α cos θ)^(-1/2)`. As α→1 along the real axis, the local integral near θ=0
  behaves like ∫dθ/sqrt((1−α)²+θ²), with logarithmic divergence. A logarithmic
  singularity is not a pole of a single-valued meromorphic function on the sphere.
  At α=0 the defining series is regular as well; the printed universal pole wording
  is too strong.
- **Proposed correction:** use holomorphy on |α|<1, or analytic continuation of
  appropriate branches on a simply connected domain avoiding the singular locus.
  The domain A^C used immediately below Lemma 76 satisfies |aₖ/aⱼ|<1, so the needed
  local holomorphy can be obtained directly from the convergent Fourier/binomial
  series. No global single-valued meromorphic continuation is needed there.
- **Scope:** record the weaker local lemma as a deliberate proof deviation if used;
  do not silently state the printed global assertion as a theorem.

### E-P-Fej07e — author corrections to the original printing (verified as reported)

- p. 1, Corollary 22: “Les arguments donnés sont insuffisants.” The issue is Whitney
  parameter dependence of the inverse; the erratum supplies a different functional
  argument. Any smooth-route proof must use the corrected argument.
- p. 2, §3: “les constantes des estimations des inverses des opérateurs linéaires
  sont fausses.” Replace Aⱼ by AⱼA′ⱼ₊ₚ₊τ₊₁/(2π), as explicitly printed. The original
  numerical constants are not valid proof inputs.
- p. 3, (28): “Remplacer mᵢmⱼ par mⱼmₖ.” The revised Hamiltonian uses the corrected
  pair masses, which the draft transcribes.
- p. 3, (31): the corrected secular coordinates have the sqrt(2) factors displayed
  there. Quote: “sans le facteur √2, elles ne sont que conformément symplectiques.”
  A canonical-chart proof must preserve that normalization.
- p. 3, §7: the explicit planar positive-measure 2n-torus consequence is an addendum,
  and its statement numbers refer to the original article. The revised numbers are
  different. p. 4 states that the original construction yields C∞ tori, with the
  analytic version attributed to Chierchia–Pusateri. Analyticity is not free.

### E-P-Arn63b — reported original typo, original unverified

- **Verified reporting source:** CP11 p. 34, footnote 53, rendered page inspected.
- **Quote:** “in [2], a₂⁴ should be corrected into a₂⁷.” The footnote identifies
  Arnold p. 138, (3.4.31), and also states that Arnold's second Birkhoff invariants
  are half CP11's τᵢⱼ.
- **Status:** reported source erratum; **[unverified]** against Arnold's original
  PDF. Do not promote to an independently verified original-text correction.

CP11 Theorem 11.1 suppresses the μ-uniformity convention, which is explicit in its
CP10 provider's footnote 3. This is a source-interface clarification, not a claim of
a newly discovered false theorem. The draft's stronger joint analyticity is a
reported specialization. No suspect frozen track-K declaration was encountered.

## Open problems and review boundaries

1. Owner rulings P1–P7 in statement.md remain pending. Phase 0 prepares an exact
   reviewable result; it does not presume approval or freeze anything.
2. The fixed-Sun conclusion is a new deduction, not an independently located theorem.
   Its secular comparison and all coordinate Jacobians still require proofs.
3. A general O(ε) coupling is not covered. Its leading average could destroy
   ellipticity or weak nondegeneracy; the brief's physical intent is implemented by
   the exact Newtonian mutual potential only.
4. The factor-four separation is a chosen restriction of distinct axes, not a
   numerical result extracted from CP11's asymptotics. The proposed qualitative
   statement uses local good patches in every prescribed tube. No explicit small-mass
   constant, density rate or measured Solar-System parameter range is asserted.
5. The two candidate Féjoz defects need independent audit; local analytic continuation
   and the matrix correction must be explicit in any eventual blueprint.
6. Original Arnold citation metadata is verified, but its exact source text and PDF
   hash remain unavailable. The current contracts do not depend on an invented
   Arnold quotation; later primary proofs supply the actual gates.
7. P-SPATIAL is intentionally only a sketch. No ambient spatial measure or reconstructed
   Diophantine assertion has been inferred from a reduced-leaf theorem.

## Checks and exact output

The common Phase 0 brief explicitly permits theorem-body `sorry` in the ignored
statement draft and requires the direct elaboration command. That task-specific draft
exception is used here; no `sorry` was introduced in the source library. No new library
module exists to target with `lake build`, so the targeted draft elaboration is the
applicable build check. No library rebuild, clean or resource override was run.

Final direct elaboration, default budgets:

```text
$ nice -n 5 lake env lean .drafts/P/Statements.lean
.drafts/P/Statements.lean:146:8: warning: declaration uses `sorry`
.drafts/P/Statements.lean:318:8: warning: declaration uses `sorry`
.drafts/P/Statements.lean:331:8: warning: declaration uses `sorry`
'KAM.Planetary.properlyDegenerateKAM' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.planarTwoPlanetKAM' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.fixedSunPlanetaryKAM' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
exit 0
```

All three theorem statements use `sorryAx`, as expected for unproved draft statements.
The `#print axioms` output is not a proof certificate. No other warnings were emitted.
An earlier elaboration exposed an unavailable integral import, missing slow-dimension
annotations on a measure cell, and two sum-parenthesis scope errors; these were fixed
in the draft before the successful checks. No mathematical assumption was added to
work around an elaboration failure.

Repository lint:

```text
LINT_OUTPUT_PENDING
```

`git diff --check` exited 0 with no output. `git check-ignore` returned exactly
`.drafts/P/Statements.lean` and `sources/incoming-P/cp10.pdf` for those two queried
paths. The draft has 348 lines, no line over 100 columns, exactly three theorem-body
`sorry` tokens, and no proof-escape declarations or resource overrides. PDF SHA-256
values were recomputed from the bytes listed in sources.md. Subsequent document-only
checks are recorded below after the final packet audit.

There is concurrent unrelated work in the shared checkout (including blueprint and
other-track paths). Repository-wide lint reports the current shared snapshot; ownership
claims here concern only the four deliverables and the allowed incoming-P source data.
