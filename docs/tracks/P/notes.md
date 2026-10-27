# Track P notes and Phase 0 handoff — historical v0.1

**Superseded for current contracts and checks.** The independent v0.1 audit refuted
P-G and extended the source-errata findings. This file preserves the original handoff
and its historical validation output, which did not establish statement truth.
Use [statement.md](statement.md) for v0.2 and [RESPONSE-v0.1.md](RESPONSE-v0.1.md)
for all P1–P9 changes, current checks, corrected domain/uniformity assumptions and
source-proof obligations. In particular the factor-four restriction and the old
rectangular P-G domain are withdrawn; the old line counts below describe v0.1.

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

Initial repository lint, before the concurrent tooling correction:

```text
$ scripts/lint_sources.sh
check_lean_modules: PASS (40 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD FAILED:
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/P/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/P/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/P/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/N/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/N/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/N/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/I/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/I/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/I/Statements.lean
- unauthorized `sorry` outside manifest-listed DRAFT proof region: .drafts/I/Statements.lean
ABI HASHES OK (25 frozen declarations)
exit 1
```

During final audit, the shared guard was changed concurrently to exclude `.drafts/`
(`project_files` in `scripts/check_frozen_anchors.py`). This agent did not edit it.
A fresh run after that external change, on the final draft, passed:

```text
$ scripts/lint_sources.sh
check_lean_modules: PASS (40 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (25 frozen declarations)
exit 0
```

Thus the earlier draft/guard mismatch is resolved in the final shared snapshot. The
successful direct Lean check, static draft audit and explicit axiom report remain the
validation of the ignored draft itself; repository lint intentionally excludes it.

`git diff --check` exited 0 with no output. `git check-ignore` returned exactly
`.drafts/P/Statements.lean` and `sources/incoming-P/cp10.pdf` for those two queried
paths. The draft has 348 lines, no line over 100 columns, exactly three theorem-body
`sorry` tokens, and no proof-escape declarations or resource overrides. PDF SHA-256
values were recomputed from the bytes listed in sources.md; all five matched.
The final packet audit found all four files present, no unfinished TODO/TBD markers,
no control characters in the three Markdown files, and no whitespace errors. The draft
is absent from `git ls-files`, as required. The final Lean run still emitted only the
three expected placeholder warnings and the printed axiom inventories above.

There is concurrent unrelated work in the shared checkout (including blueprint and
other-track paths). Repository-wide lint reports the current shared snapshot; ownership
claims here concern only the four deliverables and the allowed incoming-P source data.

## Additions (D22), draft v0.3

The four deliverables for this round are additions to `statement.md`, `sources.md`,
this file, and the new ignored `.drafts/P/Additions.lean`. Earlier v0.2 content is
preserved. The new draft reuses frozen definitions and does not import theorem
anchors or providers. No freezing, proof work, state-changing git, generated-file
edit or other-track change belongs to this task.

### Design and proof dependencies

The physical initial region is given directly in Cartesian coordinates by
negative Kepler energies, positive angular momenta, action bounds and total AMD.
It is not an opaque chosen chart image. The mean-longitude average is evaluated
through an explicit eccentric-longitude orbital map and its positive Jacobian.
This avoids selecting an inverse of Kepler's equation, remains regular at e=0,
and retains the full frozen moving-Sun interaction, including the indirect term.
The frozen `secularAverage` supplies the normalization and integration domain.

| Work package | Required content and shared interface | Rough additional Lean size |
|---|---|---|
| Physical Kepler/AMD geometry | Energy, Runge–Lenz vector, L=Λ√(1−e²), radial inequalities, coordinate reconstruction. Reuse all frozen physical formulas. | 2,000–4,000 lines |
| P-AMD-CONFINEMENT | Rotation/Noether calculation, first-exit argument, strict margins, local uniqueness, compact continuation, finite-interval Newton equations. `hstop` is a separately named conditional input. | 1,500–3,000 lines after ODE infrastructure |
| Poincaré and mean-angle bridge | Circular-regular chart, symplectic sign, Kepler equation, positive-Jacobian change of variables, analytic complex neighbourhoods. Fast angle λ is paired with Λ; period-one θ is paired with 2πΛ. | 3,000–6,000 lines |
| N-to-P stopped bridge | Analytic domain/margins, definite fast Kepler Hessian, perturbation derivative norm ≤Cμ, action coordinate conversion and negative time. Does not reuse nondegenerate frozen N-HEAD-C as if it were partial convexity. | 2,000–4,000 lines beyond N-PARTIAL-CONVEX |
| P-EXP-SAFE assembly | Finite compact source cover, source exponents, O(μ) element transfer, threshold selection, physical conclusions and time reversal. | 1,000–2,000 lines after the preceding gates |
| P-SECULAR-BOX | Differentiation/integrability of exact average, rotation invariance, constant actions/AMD, rational inequalities and all-time continuation in slow variables. | 1,000–3,000 lines after the coordinate/integral bridge |

These are planning estimates, not accepted budgets or proof completion. N's
partial-convex normal-form work is additional and likely dominant. Keep every
Lean module below 1500 lines, splitting geometry, coordinates, averaging and
continuation into focused modules with cheap interface imports.

The stopped interface quantifies over **all** finite [l,r] containing 0, with
control on [l,r]∩[−T,T]. It is deliberately available on intervals shorter than
the desired horizon. When applying N-PARTIAL-CONVEX, choose its fixed slow domain
large enough that the outer AMD ball is contained in its trimmed domain, and
its fast analytic box large enough to contain the outer action box with a fixed
margin. Do not assume the physical solution remains there for time T. Uniform
constants follow from the fixed compact region and the source's analytic norms;
N's real/complex Hessian and dimension conditions must be checked at this bridge.
The number of fast actions is n, while the planar system has 2n canonical pairs.

The exact raw average can be globally complete for any μ>0 in this protected
box because averaging fixes the actions and rotational symmetry fixes the AMD.
This is a property of that model. The full Newtonian vector field changes the
individual actions, so no actual-mass full-system conclusion follows from the
secular certificate. The first unpaid quantitative inequality for that extension
is a validated stopped fast-action bound small enough to fit both action and AMD
margins over the requested physical duration.

### Definition and domain audit

- Every new definition is a literal formula or predicate. No arbitrary witness,
  fallback branch, assumed chart, or hidden inverse solver is used.
- Physical divisions require positive weights/radii and negative Kepler energy;
  `ProgradeElliptic` supplies them in every physical statement. The eccentricity
  vector uses `planeLength`, whose square-root argument is a sum of squares.
- `AMDBox.Admissible` supplies 0<e*<1 for its square root, and positive masses
  for the axis formulas. μ>0 guards all real powers in P-EXP-SAFE and makes the
  frozen barycentric denominator 1+μΣm positive.
- The secular input requires Λ>0 and 0≤Γ<Λ. Thus the eccentricity-vector radicand
  is positive and 1+sqrt(1−e²) is nonzero. Theorems conclude `SecularRegular`,
  including positive longitude Jacobians and all-phase collision avoidance.
- Integral and derivative guards are explicit conclusions from the numerical
  input, not extra hypotheses of `secularBoxSafety`. The ODE predicate itself
  retains frozen `DifferentiableAt` guards; no off-domain `fderiv` is used as a
  physical vector field.
- Only `amdConfinement` accepts an analytic estimate as input, precisely because
  it is the requested deterministic conditional helper. Both headline results
  carry only their standing physical/model data and initial-region premises.
- Finite-time reconstruction is a new interval predicate because frozen
  `IsNewtonSolution` has all-time quantifiers. Frozen functions and meanings are
  reused without shadowing. No physical solution is asserted for the secular
  reconstruction, only for the full-system finite-time result.

### Uncertainties, errata and owner decisions

All new statements await an independent audit and owner approval. Questions
Q-P-A1–Q-P-A5 and recommendations are in the appended statement section. Their
recommendations fix the draft for review without pretending they are new rulings.
In particular, the source-to-Cartesian finite-cover transfer and the symplectic
regular orbit-map derivation are proof obligations, not already certified lemmas.
The local PDF pins and metadata are verified; no unverified optimized exponent,
missing Niederman proof or Pinzari whole-horizon statement is relied upon.

Suspected typographical defects E-P-A-N77-1 (12.3.A/12.4.A cross-reference) and
E-P-A-LP17-1 (F instead of K between (B.9)–(B.10)) are quoted with locations and
recommended corrections in `sources.md`. Neither changes the adopted mathematical
contract. Deviations D-P-A1–D-P-A4 record normalization/planar specialization,
coordinate transfer and time/geometry deductions, the eccentric-longitude integral
representation, and the explicit averaged-model numerical scope. The orchestrator
must review any ledger additions; the ledger and frozen files were left untouched.

The hard Lean rules used for this draft are:

1. Never use `set_option maxHeartbeats` (or any heartbeat-budget override). A default-heartbeat elaboration
   failure is a design signal to refactor or split the proof, not something to mask with a larger budget.
2. No Lean file may exceed 1500 lines of code.

The additions brief expressly permits theorem-body `sorry` in this ignored draft;
that task-specific exception does not authorize library placeholders. There are
four such bodies and no definition placeholders. A direct draft elaboration is
the targeted build check for this artifact; no new library module exists to pass
to `lake build`.

### Validation receipt — additions only

Final targeted elaboration, with default resource budgets:

```text
$ nice -n 5 lake env lean .drafts/P/Additions.lean
.drafts/P/Additions.lean:159:8: warning: declaration uses `sorry`
.drafts/P/Additions.lean:182:8: warning: declaration uses `sorry`
.drafts/P/Additions.lean:325:8: warning: declaration uses `sorry`
.drafts/P/Additions.lean:333:8: warning: declaration uses `sorry`
'KAM.Planetary.amdConfinement' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.planetaryExponentialSafety' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.secularBoxSafety' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.secularBoxAtCitedMasses' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
exit 0
```

There were no errors or warnings other than these four theorem-body placeholders.
All four theorems remain unproved and depend on `sorryAx`; this receipt establishes
elaboration of the statement surface, not truth or proof closure.

```text
$ scripts/lint_sources.sh
check_lean_modules: PASS (124 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (94 frozen declarations)
exit 0
```

Repository lint excludes `.drafts/`. A separate comment-stripped static check of
`Additions.lean` found 345 lines, 35 definitions plus one structure, four theorems,
exactly four `:= by sorry` bodies, no definition placeholders, no proof-escape
keywords, no resource-option commands, no forbidden ambient type, no arbitrary
choice/inverse solver, and only frozen-definition imports. No additional build
was required after the successful final elaboration.

A Python `fractions.Fraction` check independently reproduced 15 exact rational
checks: both action upper bounds; both action lower bounds; both eccentricity
square-root upper bounds (by squaring positive rational comparators); the AMD
sum; the critical-deficit lower bound; the strict AMD margin; radial gap; inner
and outer radii; the all-pair lower-bound comparison; Saturn weight interval
membership; and the exact product giving Saturn's physical mass. **15/15 PASS.**
These checks support the arithmetic transcription and do not replace Lean proofs.
The three PDF SHA-256 values in the appended source table were recomputed and
matched. Nek77 pp. 55–56 and the LP17 p. 17 symbol typo were checked as page images.

`git diff --check -- docs/tracks/P/statement.md docs/tracks/P/sources.md
 docs/tracks/P/notes.md` exited 0 with no output. A separate direct check including
the ignored Lean draft found no trailing whitespace or control characters.
All three Markdown files retain their HEAD contents as exact prefixes: edits
are append-only. `git check-ignore .drafts/P/Additions.lean` returned that path;
`git ls-files .drafts/P/Additions.lean` returned nothing. The four deliverables
are present and the draft is untracked as requested.

There is concurrent unrelated blueprint work in the shared checkout. It was
neither edited nor reverted here; the lint receipt describes the shared snapshot
at validation time. No state-changing git, full-library build, cleanup, frozen-file
edit, manifest edit or generated-file edit was performed for this task.

## Additions (D22), draft v0.4 — D23 revision change log

This revision was performed entirely in `/root/code/KAM-inp`, following the
[independent v0.3 audit](AUDIT-additions-v0.3.md) and the sub-orchestrator's explicit
F-P-A1 instruction. The v0.3 records above remain historical receipts.

### F-P-A1: exact conclusion expansion

- In `amdConfinement` and `planetaryExponentialSafety`, replace the application
  of `AMDSafeOn` by its entire conjunction with the original B, μ, interval and
  trajectory arguments substituted literally. Parentheses preserve the scope
  of its final universal quantifier and the separate drift conclusion.
- In `secularBoxSafety` and `secularBoxAtCitedMasses`, replace the application
  of `SecularBoxConclusion` by its complete existential body. The cited-masses
  theorem substitutes `(476 / 1591 : ℝ)` and `(4773 / 5000000 : ℝ)` everywhere
  the old alias used its Saturn-weight and mass-parameter arguments.
- Delete both alias declarations from the intended Lean draft. No additional
  premise, witness, bound, rate or quantifier was introduced. Every retained
  definition body, the data structure and every theorem header are unchanged.
- Update the statement section to v0.4, remove references to the aliases as
  current mathematical objects, and list all **38 declarations: 33 definitions,
  one structure and four theorems**. That section includes the four complete
  theorem commands copied verbatim from the final draft.

The new surface addresses the audit's source-definition packaging finding.
F-P-A2 remains unpaid proof work: the analytic coordinate/domain bridge must
construct the stopped estimate from N-PARTIAL-CONVEX on each tested segment,
including norm bounds, fixed erosions, derivative/time transport and both signs
of H. F-P-A3 remains an approval boundary: the mathematical scope and exact text
still await owner approval. This revision adds no scope ruling or mathematical
repair, and does not claim theorem proof closure.

### Errata candidates for the orchestrator's ledger

The following are carried forward from §8 of the independent audit. Its PDF/page
checks are the evidence for these candidates; this revision does not claim a new
source audit or adoption of corrections. No ledger or pinned source was edited.

| Candidate | Source and exact locator | Printed evidence | Reason and recommended disposition |
|---|---|---|---|
| **E-P-A-N77-1** | Nekhoroshev 1977 English PDF, p. 56 compactness lemma; p. 58 proof of Lemma 12.4.C | `12.3.A` on p. 56 versus `12.4.A` in the p. 58 citation | The same compactness result has inconsistent numbering. Retain the printed label with page/title and record the cross-reference mismatch. No mathematical change. |
| **E-P-A-N77-2** | Nekhoroshev 1977, p. 56, equation (12.6); compare (12.8) on the same page | `T=(1/2)Σmᵢ(ẋᵢ²/2)` | The kinetic energy has a duplicate factor 1/2, whereas the printed momentum formula (12.8), `Pᵢ=mᵢẋᵢ+mᵢΣmⱼẋⱼ`, follows from the usual single half. Recommend removing one half in a recorded erratum after orchestrator review. Retain the frozen moving Hamiltonian, which independently matches LP17 (5)–(6); no Lean change. |
| **E-N-ADD-1** | Nekhoroshev 1977, p. 15, §1.18; also recorded in track N's source packet | “the perturbation H−H₀ becomes small” | In the stated close-approach context, the reciprocal-distance interaction becomes large. Recommend “ceases to be small,” subject to orchestrator review. This remains a suspected textual defect, not an adopted mathematical premise or a new independent erratum. |
| **E-P-A-LP17-1** | Laskar–Petit, arXiv:1703.07125v2, p. 17, between (B.9) and (B.10) | `{F,H₀}=0` | F is unintroduced in that argument; K is the integral in the surrounding formulas. Recommend K. The draft uses the earlier (B.5), (B.8) and direct rotational invariance, so no Lean change is needed. |

The existing adaptations D-P-A1–D-P-A4 and owner questions Q-P-A1–Q-P-A5 remain
as recorded. The source packet `sources.md` is byte-identical to the audited
v0.3 input. This round changes only the intended Lean draft and the requested
statement/notes documentation, with ignored verification artifacts under
`.drafts/P/revision-v0.4/`.

### v0.4 Lean rules and preservation check

1. Never use set_option maxHeartbeats (or any heartbeat-budget override). A default-heartbeat elaboration failure is a design signal to refactor or split the proof, not something to mask with a larger budget.
2. No Lean file may exceed 1500 lines of code.

The final draft has 378 lines and exactly four theorem-body placeholders. Its
module header, author names, public frozen-definition imports, exposed section
and ambient types are preserved. No resource override or forbidden proof escape
was introduced.

`/root/code/KAM-inp/.drafts/P/revision-v0.4/Additions-v0.3.lean` retains the
exact audited input, SHA-256
`6df42966f8abbe33f7421752f74f18d3465e0d03f38d47e13696c297bca9c585`.
The scratch module `TypeEquality.lean` places the old alias-based theorem
statements beside the final expanded statements, sharing all retained
definitions and the same data structure. Four `rfl` checks establish equality
of the **complete theorem types**, including all premises and quantifier order.
All four checks elaborated at default budgets with exit 0. Only the eight
placeholder warnings from the paired old/new theorem declarations were emitted;
the four type equalities themselves contain no placeholders. The scratch
module is below 1500 lines and is not part of the intended declaration surface.

### v0.4 final elaboration and SHA-256 receipt

```text
$ cd /root/code/KAM-inp && nice -n 5 lake env lean .drafts/P/Additions.lean
.drafts/P/Additions.lean:144:8: warning: declaration uses `sorry`
.drafts/P/Additions.lean:178:8: warning: declaration uses `sorry`
.drafts/P/Additions.lean:307:8: warning: declaration uses `sorry`
.drafts/P/Additions.lean:339:8: warning: declaration uses `sorry`
'KAM.Planetary.amdConfinement' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.planetaryExponentialSafety' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.secularBoxSafety' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
'KAM.Planetary.secularBoxAtCitedMasses' depends on axioms: [propext, sorryAx, Classical.choice, Quot.sound]
exit 0
```

Only the four expected theorem-body `sorry` warnings were emitted. Each main
result still reports `[propext, sorryAx, Classical.choice, Quot.sound]` from
`#print axioms`; this is an elaborated, unproved draft awaiting owner approval.
The direct draft elaboration is the targeted build for this ignored artifact.

```text
$ sha256sum /root/code/KAM-inp/.drafts/P/Additions.lean
bf4b9d474e4c3fa32844af887f90851cb5bd026c101f2b5fc882b9169d5e72f0  /root/code/KAM-inp/.drafts/P/Additions.lean

$ PYTHONDONTWRITEBYTECODE=1 /root/code/KAM-inp/scripts/lint_sources.sh
check_lean_modules: PASS (124 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (94 frozen declarations)
exit 0
```

Additional checks passed: the two deleted aliases are absent from the intended
draft; every surviving definition/structure body and theorem header matches
the audited input; all four full theorem-type equalities elaborate by `rfl`;
the declaration inventory and four copied theorem commands match the final
draft; the source packet hash is unchanged; and the requested documentation
passes `git diff --check`. A separate check covers whitespace and forbidden
code/resource commands in the ignored draft. Lint intentionally excludes drafts.

All task edits and verification artifacts are under `/root/code/KAM-inp`.
No edit was made in `/root/code/KAM`, no frozen file or manifest was changed,
and no state-changing git command was run. Concurrent worktree changes were
left to their owners. The four errata entries above are candidates for the
orchestrator's review and ledger, not ledger modifications by this revision.
