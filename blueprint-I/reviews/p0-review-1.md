# Independent review 1: track I, Part 0

Reviewed 2026-10-27, refute-first. Only this review and the requested track-N review were edited. No blueprint, PLAN, Lean declaration, provider, manifest or generated root was edited; no state-changing git command was run.

## Verdict: REVISE

The four displayed theorem contracts match the frozen Lean mathematically, including constant order, strictness, domains and comparison-solution quantifiers. All fifteen track-I definition bodies are represented correctly. However, the ray-boundary reading is false in the stated ambient topology, and the totality paragraph imposes a nonexistent prerequisite on the final invariance error. The PLAN has an impossible uniform margin request at the open physical annulus boundary and several smaller interface issues. These need correction before this serves as a reliable proof blueprint. No frozen-statement change is proposed and no frozen statement was refuted.

## Materials and build

- Reviewed `blueprint-I/parts/p0-conventions.tex`: 326 lines, 23,372 bytes; SHA-256 `f3204f7b01d41fd913202753ecb2b49a0cffb02dff0c3c050f084b95603fc993`.
- Read `AGENTS.md`, `.drafts/briefs/bp-review.md`, `docs/PLAN.md`, `docs/DECISIONS.md` (including D14 and D17–D23), the conventions ruling in `.drafts/briefs/bp-part-writer.md`, `blueprint-I/PLAN.md`, both preambles, and the model `blueprint/reviews/p2-review-1.md`.
- Compared all declarations in `KAM/Frozen/Iso/Defs/` and `KAM/Frozen/Iso/Theorems/`, and the actual track-K definition bodies named below. Consulted the track-I statement/source/notes packet and relevant statement-audit sections, especially its confinement and physical-coordinate discussion. Earlier audit verdicts were not substituted for comparison with the frozen files.
- Independently read the pinned HL19 PDF pp. 18–19, Chi05 pp. 9, 13–14, 16–17; checked the displayed physical formulas directly. The CC03 comparison is historical context, not a theorem input or an independently certified source claim here. This is not a review of every proof estimate on HL19 pp. 45–53.
- `cd blueprint-I && latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex`: exit 0, **6 pages**, `.build/review/blueprint.pdf`. Final-pass log: no warnings, undefined references or overfull boxes. First-pass reference warnings resolved on rerun. All seven concrete `\Kref` targets in Part 0 exist; introductory ellipses are placeholders, not theorem citations.

## Findings

| ID | Location / label | Severity | Finding | Evidence | Exact proposed fix |
|---|---|---|---|---|---|
| I01 | `bpI:p0:g1-remarks` (b), lines 259–262; PLAN p2.4 | major | The claimed positive distance to the boundary of the ray is false if the boundary is in the stated ambient space. | For n ≥ 2, Θ = {sω*: 1 < s < σω} has empty interior in ℝⁿ, so every point of Θ belongs to its ambient boundary and has distance zero to it. Frozen `IsoenergeticKam.lean` instead has the two explicit endpoint inequalities. | Define the endpoint set {ω*, σωω*} and use its distance, or explicitly take boundary relative to span(ω*). Write the distance as min(s−1, σω−s)‖ω*‖. Carry the same qualification into PLAN p2.4. |
| I02 | `bpI:p0:totality` T2, lines 196–198 | minor | It says Gram invertibility of K∞ must be proved before its invariance error is used, then correctly observes that the error does not use the frame. The purported prerequisite is unnecessary. | `KAM/Frozen/Defs/InvarianceError.lean` uses only X_H and DK; no Gram inverse, N or torsion appears. The frozen conclusion does not assert Gram invertibility. | Replace the sentence by: “Gram invertibility must be proved before using a normal frame or torsion for K∞; no such fact is needed to interpret the frozen final invariance error or energy equality.” |
| I03 | `bpI:p0:conventions`, lines 21–23 | minor | “It contains ℝⁿ” omits the positive-width condition. | For n > 0 and ρ ≤ 0, `complexStrip n ρ` is empty. Both I-G1 and I-HEAD do supply positive widths, so their statements are unaffected. | Say “For ρ > 0 it contains ℝⁿ.” |
| I04 | PLAN p8.3, “keeps a,e inside (a_-,a_+) range with margin” | major, route | No single positive displacement tolerance gives a margin inside the original open initial annulus uniformly over every initial point. The text also confuses the a and e endpoint intervals. | Initial a and e approach their respective endpoints. I-HEAD gives a uniform action displacement, not exact conservation of both orbital elements. The frozen physical conclusion only asks for boundedness and collision exclusion, not invariance of the original element interval. | Choose a larger safe action domain containing the closure of the initial annulus, still away from a=0, e=0, e=1 and the secondary orbit. Put the original initial action region in B′ with compact closure inside that domain; choose η below the enlargement margin. Bound physical radii on this larger compact enclosure. |
| I05 | PLAN p3.2, density for τ ≥ 1 via K's measure theorem | minor, route | The suggested measure citation does not cover the endpoint τ=1 in dimension two. | `KAM.volume_not_diophantine_le` requires τ > n−1. Density at τ=1 is a separate badly-approximable-number argument. | Fix τ=2 (or any τ>1) for the confinement application and use the measure theorem with γ chosen small for each required open direction sector. There is no need to prove the stronger endpoint claim. |
| I06 | PLAN p6.2, rescaling lemma | minor, route | Its input has general κ,Ω, but the transformed Hamiltonian silently sets both to one. | Substitution I=2π(L,G) gives −κ(2π)²/(2I₁²)−ΩI₂/(2π). | Retain κ and Ω, naming the transformed constants κ′=κ(2π)², Ω′=Ω/(2π); or explicitly specialize the input to κ=Ω=1. |
| I07 | PLAN cancelled p4 and remaining ownership tables/waves | minor, route | The initial cancellation ruling is clear, but the later schedule and table still assign the ODE package to I p4 and propose it as a placement choice. | Current ruling assigns it to N Part 3; `.drafts/briefs/bp-part-writer.md` item 3 agrees. | Delete the cancelled assignment and use explicit `bpN:p3:*` citations. Require general open action domains and uniqueness on arbitrary connected comparison intervals, not merely N's balls and symmetric closed intervals. |

## Frozen declaration comparison

| Frozen definition(s) | Part-0 location | Comparison |
|---|---|---|
| `energyAverage`, `extendedTorsion`, `extendedTorsionAverage` | `bpI:p0:extended` | Exact period-one cube, entrywise averaging, index set Fin n ⊕ Unit, torsion block, real frequency column, literal DH(K)N row and bottom-right zero. No replacement of the approximate row by ωᵀ. |
| `borderedHessian` | `bpI:p0:bordered` | Exact real derivative of the frequency map, entry (a,b)=Dω(I)[e_b]_a; frequency in both borders. No symmetry premise inserted. |
| `IsHamiltonianSolutionOn` | `bpI:p0:hamsol` | Exact action membership, DifferentiableAt of H and two-sided HasDerivAt of the globally defined curve at every t∈J. No confinement estimate hidden in this predicate. |
| `radiusSq`, `radius`, `primary₁`, `primary₂`, `CollisionFree` | `bpI:p0:primaries` | Exact sum of squares, physical square root, barycentric positions (−μ,0),(1−μ,0), and two strictly positive distances. |
| `restrictedHamiltonian`, `restrictedVectorField`, `IsRestrictedSolutionOn` | `bpI:p0:restricted` | Exact kinetic term, Coriolis signs, mass coefficients and inverse-cube forces. “On collision-free points” represents the subtype; the solution's existential collision proof is equivalent to this mathematical reading. |
| `NearCircular` | `bpI:p0:nearcircular` | All existential variables, positivity guards, endpoint strictness, energy identity, positive angular momentum and squared-angular-momentum identity retained. |
| `keplerBorder` | `bpI:p0:keplerborder` | All nine entries and positive-L subtype retained. κ,Ω are arbitrary real parameters in the definition, positive only in the theorem. |

The imported track-K definitions were compared directly: `complexStrip`, `actionNbhd`, `IsDiophantine`, both Hamiltonian vector fields, `realHamiltonian`, `frequencyMap`, `IsPrimaryOnStrip`, `IsRealOnReals`, `dotℂ`, `omegaZero`, `invarianceError`, `gramMatrix`, `normalFrame`, and `torsion`. Their formulas match. In particular the dot product is bilinear, the inverse indices are (k,j), the normal-frame derivative is column-wise, the realness predicate is global on real angles, and Diophantine size uses integer ℓ¹ length with real exponent. Definitions alone do not assert their analytic guards.

| Frozen theorem | Binder / conclusion audit |
|---|---|
| `isoenergetic_kam` | n≥2, τ≥n−1, 0<ρ∞<ρ and all fixed positive data including γbar, ω*, σω,ν precede C₁,C₂,C₃. D,H,K,s,γ,e,E₀ follow. All 13 grouped hypotheses match: open invariant domain, analytic and real H, all five derivative bounds, primary/real K, ball and derivative margins, unit Gram and extended determinants with row sums, both ray endpoints, Diophantine ω*, both error components, strict smallness. All six grouped conclusions match, including pointwise complex-strip energy, half-margins, and non-strict closeness. |
| `all_time_confinement` | Fixed B, widths, h, B′,η precede ε₀; f, ε and z₀ follow. Nondegeneracy is on the entire real slice of B_r₀, not just B′. ε=0 allowed; ε<ε₀ strict; all initial angles allowed. Global solution, strict action displacement <η, and agreement with every B-valued solution on every (a,b) containing zero retained. |
| `kepler_bordered_det` | Positive κ,Ω and positive-L carrier retained; value and strict positivity asserted jointly. |
| `restricted_near_circular` | All six endpoint restrictions retained. Openness and nonemptiness precede the uniform μ₀,d,R. μ=0 included; μ<μ₀ strict and μ₀≤1/2. Physical bounds hold at every real time. Comparison curves need only solve the physical equations on (a,b), without an extra confinement premise. |

## What I recomputed (refutation attempts that failed)

1. For K=(θ,I), DK=(id,0), G=id, N=(0,id). At H=h and ω=∇h(I), DN=0 and X_H=(∇h,0), so torsion is D∇h, DH N=∇hᵀ and the extended matrix equals the complexification of B_h. Thus `head-remarks` (b) has the correct sign and order. In PLAN p3.3 the listed exact frequency equation ∇h(I)=sω* also makes the approximate identity ⟨T_c⟩=B_h+O(eps) correct: the last column agrees exactly, and the remaining blocks change by derivatives of f controlled on a smaller domain. Taking h(I)=E already makes the average-energy defect O(eps); an exact coupled average-energy solve is unnecessary.
2. Expanding the 3×3 matrix gives det = (−3κ/L⁴)(−Ω²)=3κΩ²/L⁴. Its positivity needs only the stated κ>0, Ω>0, L>0. The ordinary Hessian is singular and is never inverted.
3. Differentiating the restricted Hamiltonian gives q′=(p₀+q₁,p₁−q₀), and p′=(p₁,−p₀) minus the two mass-weighted inverse-cube vectors. These agree exactly with the frozen field; canonical momentum is not rotating velocity.
4. The NearCircular witnesses are unique: r is the positive length, a=−1/(2E) with E<0, and e is uniquely determined by 0<e<1 and angular momentum squared. A periapsis point q=(a(1−e),0), p=(0,sqrt((1+e)/(a(1−e)))) supplies witnesses for any strictly interior a,e. This is a mathematical check, not a fresh Lean proof.
5. Zero error forces the two closeness quantities to zero; ω*≠0 then forces s∞=s. Scaling the Diophantine frequency by a positive scalar scales γ by that scalar. No missing zero-error exception was found.
6. Totality T1,T3–T6 is sound under the theorem hypotheses: open-set holomorphy gives genuine derivatives; unit determinants give analytic frames; continuous integrands on the compact real cube are integrable; all variable denominators have positive bases; physical radii have nonnegative radicands and subtype-guarded positive distances. The input derivatives of N need the open-strip Gram guard, as stated. T2 needs the correction above.

## Short PLAN route sanity check

The intended chain can prove the four frozen contracts: bordered linear solve and isoenergetic iteration give I-G1; local energy/ray charts, two ordered graphical invariant tori at the initial point's exact perturbed energy, and ODE continuation give I-HEAD; the explicit determinant plus an exact analytic Delaunay pullback and a larger safe compact enclosure give I-R3BP. No Kolmogorov Hessian inverse, positive-measure conclusion or numerical Victoria theorem is required.

This is a plausible route, not an implemented proof. In addition to the table fixes, p5 must prove the graphs bracket every initial angle in each smaller patch and stay inside a compact larger patch of diameter <η. Nearness to the unperturbed energy curve alone does not bound tangential displacement along that curve. Global continuation uses the periodic quotient or bounded velocity on compact action sets; lifted angles themselves are not confined to a compact set. The shared N ODE package must support arbitrary B and arbitrary (a,b) competitors. These are proof obligations, not permitted new root hypotheses.

## Source defects and deviations for handoff

Directly reconfirmed in HL19: p.19 (3.16) prints strict closeness, impossible at zero error; p.18 (3.12) prints `X_h(K)=L_ωK`, inconsistent with the negative directional-derivative convention; p.19 Remark 3.7 prints `Dh(K)N=X_h(K)ᵀΩN`, missing the minus since ΩX_h=(Dh)ᵀ and Ωᵀ=−Ω. The blueprint records these corrections. P.19 H5′ says “dist(ω, ∂Θ) > 0”; interpreted ambiently this is the defect I01. Use the relative boundary explicitly. Chi05 p.13 (3.38) gives the phase domain ℝ²\{0}×ℝ² while the potential also divides by the secondary distance; exclude the secondary collision as the frozen subtype already does. These are reports for the orchestrator; no ledger was edited.

The open-strip/max-norm uniformization, pointwise energy, new confinement theorem, generalized κ,Ω and exact barycentric physical application are declared adaptations, not literal whole-source theorem transcriptions. No new mathematical deviation was introduced by this review.

## Checks, axioms and limits

- `scripts/lint_sources.sh`: exit 0; `check_lean_modules: PASS (124 Lean files, 0 comparator configurations)`; `FROZEN-ANCHOR GUARD OK`; `ABI HASHES OK (94 frozen declarations)`.
- `git diff --check`: exit 0, no output before report creation; report whitespace checked again at closeout.
- No Lean build or scratch elaboration was needed or run, as the review brief permits. No new theorem was proved, and no fresh `#print axioms` receipt is claimed. All four inspected frozen theorem bodies remain `by sorry`; this transcription review does not certify axiom-free providers or theorem closure.
- Uncertainties: the full isoenergetic Newton estimates, quantitative chart construction, separation proof and Delaunay complex extension remain to be proved and audited in their own parts. No claim of full source-proof verification is made here.
