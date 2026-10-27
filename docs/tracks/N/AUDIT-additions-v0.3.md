# Independent statement audit: track N D22 additions, v0.3

Auditor: independent refute-first statement audit, 27 October 2026. Scope: the exact
`.drafts/N/Additions.lean` and the D22 sections of the N mathematical packet, including
consumption by P's `StoppedActionBound`, `amdConfinement`, and
`planetaryExponentialSafety`. This is a statement/source audit, not a proof campaign.
Only this report and `.drafts/N/audit-scratch/` were authored. No frozen statement,
manifest, draft under audit, other track, ledger, generated file, or git state was edited.

## 1. Verdict and pins

**Do not freeze the complete additions packet yet.** No counterexample to any of the
three dynamical conclusions was found. There are unresolved source-import obligations:
the literal transverse-sphere convention for the partial theorem, the complete AKN
hypotheses, and the local-existence deduction. Successful elaboration does not settle them.
The explicit complex input, stopped time quantifiers, source exponents, rank predicate,
and measure tradeoff survive this audit. The N-to-P interface is compatible with the
specific larger-domain construction in §6; it is not a direct application on P's outer
open region with no further margins.

| Declaration | Verdict | Reason |
|---|---|---|
| `complexifyPhase` | APPROVABLE | Literal coordinate inclusion; no choice or discarded coordinate. |
| `innerCore` | APPROVABLE | Literal closed maximum-norm erosion; stronger than source erosion. |
| `partialComplexDomain` | APPROVABLE | Correct fast/slow blocks and componentwise imaginary tube. |
| `HasDefiniteFastPart` | APPROVABLE | Correct definite signed Hessian on an enlarged real domain; its implication to the literal source definition still needs F-NADD-1. |
| `IsPartialPerturbation` | APPROVABLE | Holomorphic, bounded, real, period-2π in fast angles only. |
| `partialTimeExponent` | APPROVABLE | Source exponent, including n=2. |
| `partialDriftExponent` | APPROVABLE | Source exponent, equal to 3a/2. |
| `partialConvex_nekhoroshev` | APPROVABLE WITH CHANGES | F-NADD-1: close the source/domain translation before approval; no dynamical refutation is claimed. |
| `HasAveragingFrequencyRank` | APPROVABLE | Correct two global alternatives and projective-rank encoding. |
| `averagingError` | APPROVABLE | Correct error on the theorem's guarded uses; arbitrary arguments alone do not guarantee a meaningful real supremum. |
| `averaging_mean` | APPROVABLE WITH CHANGES | F-NADD-2: verify the complete primary source and standing assumptions. Formula and Lean quantifiers match the available transcription. |
| `averaging_most` | APPROVABLE WITH CHANGES | F-NADD-2 and F-NADD-3: separate derived existence target; its stated proof import is unverified. |

Here “WITH CHANGES” includes changes to the source/proof justification and approval
packet. It is not an instruction to add unverified assumptions to Lean. No justified
replacement binder list has been established for the unresolved source questions; the
safe present action is to keep those theorem candidates unfrozen.

| Object | SHA-256 / identity |
|---|---|
| N draft, 194 lines | `f7b3278008de764bf252d5aa02f43ac9234ac79cbb63b5191931e54e4dffbc5e` |
| P draft, cross-track interface inspected | `6df42966f8abbe33f7421752f74f18d3465e0d03f38d47e13696c297bca9c585` |
| N `statement.md` | `9df41b11014832fe2013dcf83ee1758ab42b6be36713c8e2de839e73d41f0537` |
| N `sources.md` | `0e309698339f257c76d8382144e104a37e3d5b61a0bb756c0a6c3620ea302421` |
| N `notes.md` | `698d9c1d04dac5464ec122b062e55c64552dc383953ddaad81f5e00db09b8dd7` |
| `docs/DECISIONS.md` | `9e358e7e7971a879066f68609e613e718316208767281d27cb99db583849256c` |
| Nek77 English PDF | `0bfe624cf108096badd7e27fc40ca800e2948b68dce2bf8b9c653e0eaec4def6` |
| AKN pinned transcription JSON | `4601cba5dd3c2c6fb030d5a9d1c5de3c5185d10ce5cb60b75fe8c9cb06af4aca` |
| Checkout observed during audit | `9a0d9b43f8021ae735ae68ccc718ba299eea64fb` |
| Toolchain | Lean `v4.35.0`; Mathlib `v4.35.0` |

AGENTS.md, PLAN.md, DECISIONS.md, both audit briefs, TRACKS.md, all three research
rounds, the N packet, the relevant frozen definitions, and the archived track-K model
audit were read. Round 3 overrides round 2's exponent and provider claims. D22 adopts
milestones, not exact text; D20's earlier frozen N surface has not approved these additions.
D17's n≥3 restriction belongs to the earlier headline, not this n≥2 partial theorem.

## 2. Findings and exact disposition

Source evidence below distinguishes a checked PDF from a transcription. A source gap
is not represented as a mathematical counterexample. Severity refers to approval/readiness.

| ID | Declaration | Severity | Finding and source evidence | Exact proposed Lean change / disposition |
|---|---|---|---|---|
| F-NADD-1 | `partialConvex_nekhoroshev`, source use of `HasDefiniteFastPart` | major; source-import sign-off withheld | Nek77 §4.1.A, p.28, requires the restricted-gradient infimum to be “defined on [0, δ)”; its indexing sphere is intersected with G. Strong convexity controls its values when nonempty, but arbitrary open convex G need not supply a uniform nonempty transverse sphere. The real enlargement supplies full spheres in the extension, not in G. See §3 for a concrete geometric refutation of the naive inference. | **No sound one-line premise repair is certified.** Keep lines 91–119 unfrozen until a lemma reconciles the literal source convention with the enlarged-domain formulation. The candidate type can remain unchanged if that lemma succeeds. Do not add a hypothesis asserting steepness or the desired drift as a silent substitute. If importing a different bounded-domain theorem, draft a separately named exact statement with its actual domain parameters and re-audit it. |
| F-NADD-2 | `averaging_mean`, `averaging_most` | blocking for source approval | The mean/Markov formulas and rank alternatives occur in AKN's pinned p.243 transcription, L11597–11620. The pinned university PDF is only 11 pages and does not contain p.243. Smoothness, local-domain and continuation conventions have not been checked in a complete primary page/proof. The publisher chapter remains subscription content. | No new binder is presently justified. Keep lines 145–186 outside the freeze packet until the complete source hypotheses are verified. If those require extra data, revise these unfrozen declarations visibly; do not use the supplied-family premise to claim existence for the local corollary. |
| F-NADD-3 | `averaging_most` | major; proof-import gap | N notes propose a smooth action cutoff to obtain full-window trajectories and then use the source mean estimate. A compactly supported analytic cutoff cannot provide that argument. The packet correctly calls the smooth source variant unverified. AKN's p.243 transcription states an error estimate, not this explicit local-existence theorem. | No extra flow/confinement premise should be added to lines 170–186. Retain the distinct candidate name, but exclude this theorem from the first approval/freeze set unless a smooth-source import or direct local stopped proof is supplied. The current mathematical target need not change. |
| F-NADD-4 | N-to-P consumption | major provider obligation; no signature mismatch found | Nek77 Thm 4.4 p.30 uses an eroded slow domain on an arbitrary supplied interval. P draft lines 132–139 assume only strict membership in `LowAMDRegion` during that supplied interval. Strict membership in an open D alone does not imply N's `innerCore D d`. | **No N conclusion change.** Construct fixed larger G,D and prove fixed collars around P's whole outer region, then shrink μ*. Use the explicit construction and scale mapping in §6. Without it, the attempted application is invalid. Do not assume future slow confinement or remove the erosion. |
| F-NADD-5 | `partialConvex_nekhoroshev` | note; passed | Nek77 §4.3.B p.29 supplies a complex Hessian bound; Remark 4.5.B p.30 permits threshold dependence on it. Draft lines 95–102 precede `∃ μ₀`, with h fixed too. The earlier F-N1 uniform-real-to-complex gap is not repeated. | None. Preserve `Mcomplex`, `hHess`, and this quantifier order. |
| F-NADD-6 | exponent definitions and P consumers | note; passed | Nek77 (4.4)–(4.5) p.30 and (12.4)–(12.5) p.56 give a=2/(6n²−3n+14), b=3a/2 after index-one specialization. For n=2 these are 1/16, 3/32. | None. Do not replace either with 1/(2n). Preserve the μ⁻¹ prefactor in the N source statement. |
| F-NADD-7 | averaging measure statements | note; passed | AKN transcription p.243 (6.27)–(6.28) gives mean O(√ε), exceptional volume O(√ε/η), and accuracy O(√ε/κ) off volume κ. These are absolute, not relative measures. | None. Keep κ,η positive and after A,ε₀. No simultaneous √ε error and √ε exception claim is present. |
| F-NADD-8 | `averagingError`, both averaging theorems | note; passed with guards | `sSup : Set ℝ → ℝ` is totalized, but positive ε, a solution on the closed nonempty interval, and bounded actions prevent the empty/unbounded cases on K. Actual ODE uniqueness removes arbitrary choices of Φ on K. | None in the theorem types. Public helper lemmas should carry the boundedness/nonemptiness guards; do not reuse `averagingError` unguarded elsewhere. |
| F-NADD-9 | Source packet corroboration for averaging | minor; citation overstatement | N `sources.md` attributes the full/projective rank alternatives to Neishtadt–Okunev slide 14. The actual slide only says “Under a certain non-degeneracy condition”; it states rates but no rank formula. Slides 13–15 were checked. | No Lean change. Correct `docs/tracks/N/sources.md` in the next authorized packet revision: the slide corroborates rates only; the rank alternatives rely on the AKN transcription until primary-source verification. |
| E-N-ADD-1 | Nek77 explanatory text | minor suspected source erratum; independently confirmed text | §1.18 p.15 says “the perturbation H−H₀ becomes small” when two bodies approach. The reciprocal-distance interaction grows in magnitude; the ensuing angular-momentum discussion requires preventing that loss of smallness. | No Lean change. Orchestrator should record the printed quote, location, and proposed “ceases to be small” correction in the ledger. This audit does not edit it. |

## 3. Partial theorem: source, truth tests, and the first unpaid import

I extracted Nek77 pp.5, 7–8, 14–15, 28–30, 55–56, 62–63 with `pdftotext -layout`.
Rendered pp.15, 28, 30 and 56 were inspected independently, including formulas that text
extraction drops. The source's s fast actions become draft n; its remaining canonical
pairs become k. The imaginary tube uses componentwise bounds, whereas its other
finite-dimensional norms are Euclidean/Hermitian. The draft follows this distinction.

The following clauses survive comparison:

- §4.3.A p.29: arbitrary open fast and slow domains, analytic real Hamiltonian, fast
  period 2π; §4.3.C gives the signs I-dot=−Hφ, p-dot=−Hq, φ-dot=HI, q-dot=Hp.
  The draft's `(fast angles,slow positions;fast actions,slow momenta)` agrees.
- §4.3.B p.29: a **complex** Hessian upper bound. The draft requires it on an even
  larger fast neighborhood and chooses μ₀ after h and that bound. No bound uniform
  over a later choice of h is claimed.
- Theorem 4.4 p.30: `C>0` is arbitrary; the estimate holds through `min(C,T)` when
  slow coordinates stay in the erosion on [0,C]. At a queried positive t, restrict
  the supplied solution to [0,t] and take source C=t. At t=0, the drift is zero.
  The scratch theorem `restrict_solution` checks the restriction at the frozen ODE type.
- Remark 4.5.A permits measuring the perturbation by its value supremum rather than
  gradient supremum. For H₁=μP, actual norm M≤μ. For M>0, d(M)≤d(μ), T(M)≥T(μ),
  and the source erosions at d(M) follow from those at d(μ). If M=0 on the nonempty
  open tube, P is zero locally along the relevant real segment and fast actions are
  constant. No inverse or negative power at M=0 is used. Empty G or D gives only
  empty initial/history applications, not a counterexample or an existence theorem.
- A maximum-norm closed ball of radius d contains the Euclidean open d-ball. Thus
  the draft erosion implies the source erosion with the same d. Source Euclidean
  drift implies maximum-norm drift; finite-dimensional complex Hessian norm factors
  enter the threshold through the fixed dimension and Mcomplex.
- The source's positive exponents follow by αr=1 and ζ=n(n−1)/2, including its
  separate n=2 rule ζ=1. The source's printed planetary formula confirms the result.
  Scratch checks establish positivity, b=3a/2, and both n=2 values.

**F-NADD-1 is a real domain issue, not merely a missing calculation.** Consider

    G = {(x,y): 0<x<1, |y|<x},
    h(x,y) = 3x + (x²+y²)/2.

G is open and convex. On a fixed small real/complex enlargement, h has Hessian identity,
a nonzero uniformly bounded-below gradient, and a uniform complex Hessian bound.
At I=(q,0), the line perpendicular to its gradient is x=q. Its radius-η sphere has
y=±η, and neither point belongs to G when η≥q. For every proposed uniform δ>0,
choose q=min(δ/4,1/4) and η=2q<δ. The sphere intersection in the literal source
infimum is empty. `no_uniform_transverse_spheres` machine-checks this geometric
obstruction. It does **not** prove the negation of `partialConvex_nekhoroshev`.

The good analytic estimate is available on full spheres in the extension. For I∈G,
‖v‖₂<ρ and v perpendicular to ∇h(I), the segment I+tv lies in the enlarged real
slice. The signed Hessian bound gives

    σ (∇h(I+v)−∇h(I))·v ≥ m‖v‖₂²,
    ‖projection_to_plane ∇h(I+v)‖₂ ≥ m‖v‖₂.

Hence C=m/2 and any fixed δ<ρ give strict index-one steepness on those **full
extension spheres**, uniformly over centers in G. The missing step is reconciling
that object with the literal G-intersected infimum and its requirement to be defined.
If empty intersections are intended to have extended infimum +∞, that convention
must be documented and checked against the proof. A Lean real infimum of the empty
set must not be used as 0. Alternatively check the bounded-domain proof with a
separate extension domain for h. Enlarging h alone does not analytically extend P
past the real fast boundary G. This is why “apply Theorem 4.4 verbatim” is not yet a
complete source import. The packet already flags this issue; the wedge shows exactly
why it cannot be dismissed by convexity or pointwise openness.

There is no numerical or observed-mass assertion here. No contradiction was found
using arbitrarily long supplied intervals, zero perturbation, negative signed Hessians,
empty domains, or unbounded lifted fast angles. The theorem promises an estimate on
supplied segments, not their exponential-time existence.

## 4. Definitions, frozen reuse, and junk-value audit

| Definition / reused surface | Body and well-definedness check |
|---|---|
| `complexifyPhase` | Both real coordinate vectors are coerced coordinatewise; real/imaginary parts recover the inputs/zero. No selected complex extension or choice. |
| `innerCore` | Requires x∈U separately and `closedBall x d ⊆ U`. At positive d this implies the source erosion. At arbitrary negative d it can reduce to membership, but theorem uses have d=μᵇ>0. No distance-to-empty-complement convention. |
| `partialComplexDomain` | Fast indices use `Fin.castAdd`, slow indices `Fin.natAdd`; Re I∈G, slow Re positions/momenta∈D, all imaginary components <ρ. D has order (q,p), consistently in the history condition. Source's (p,q) ordering is transported by coordinate permutation, an isometry. |
| `HasDefiniteFastPart` | U is the real preimage of `actionNbhd G ρ`, open for ρ>0. C³ on U guards both real derivatives. The sign is one **global** σ, not a different sign for each point/direction. Σvᵢ² is Euclidean squared length on the required coordinate type. `g,m>0` are conjuncts; no omitted positivity premise. See F-NADD-1 about importing steepness. |
| `IsPartialPerturbation` | The tube is open for open G,D and ρ>0. Holomorphy there implies real smoothness locally. The value bound is uniform; the reality clause covers all visited real points when the slow history holds. `fastShift` changes only fast position coordinates by 2πℓ; that shift preserves tube membership. Slow coordinates are not required to be periodic. |
| `partialTimeExponent`, `partialDriftExponent` | Natural n coerces to ℝ before division. For n≥2 the denominator is strictly positive. No natural-number truncated subtraction occurs. μ>0 guards every negative exponent and μ inverse. |
| `HasAveragingFrequencyRank` | First branch is full derivative rank. For nonzero ω the map to the quotient ℝⁿ/span(ω) is onto iff `(v,c) ↦ Dω v+cω` is onto ℝⁿ. This is the derivative of projectivization, without choosing a frequency component or dividing by one. The nonzero-frequency condition belongs to the projective branch only; full rank can hold at ω=0. The disjunction is global as in the transcription. |
| `averagingError` | Supremum of action error over [0,1/ε], with correct product projection `.2`. For x∈K, error is nonnegative and at most R+‖x.2‖<3R/2; the image contains the t=0 value. Scratch checks show nonemptiness, boundedness, and exactly zero error for constant actions. |
| Frozen `Phase`, `fast`, `slow`, `fastShift` | Correct product maximum norm, block ordering, and physical period 2π for the partial theorem. No `EuclideanSpace`, angle quotient, or change to the frozen interface. |
| Frozen `degenerateHamiltonian` | Expands to h(fast momentum)+μ Re P(real phase). Its perturbation argument includes μ, but the supplied lambda ignores it; no hidden rescaling or alternate vector field. |
| Frozen `actionNbhd`, `complexStrip` | `actionNbhd` is an existential complex distance witness in the maximum norm; `complexStrip` bounds every imaginary component. For Re I∈G and |Im Iᵢ|<ρ, take J=Re I to see the source fast tube is contained in the h domain. |
| Frozen `realPart`, `frequencyMap` | Literal real restriction and its coordinate gradient. C³ on the open real enlargement guards the derivatives in both rank and definiteness predicates. No singular inverse is involved. |
| Frozen `IsAnalyticIntegrable`, `IsAnalyticPerturbation` | They use period **1**, the bounded action ball's complex neighborhood, reality, holomorphy, and boundary continuity. Their reuse for averaging is consistent. h and f are fixed **before** the averaging constants, so their analytic/derivative bounds may enter A,ε₀. Boundary continuity is a conservative specialization. |
| Frozen `IsSolutionOn`, Iso `IsHamiltonianSolutionOn` | Both are genuine `HasDerivAt` Hamilton equations, with action-domain membership and `DifferentiableAt H` at every visited point. They guard the otherwise totalized `fderiv` vector field. Endpoints use two-sided derivatives of total time functions; actual smooth solutions can be extended a little past a certified closed endpoint. |
| Frozen `realHamiltonian` | Exactly Re(h(I)+εf(θ,I)) in the averaging statements. No averaged trajectory substitutes for a true trajectory. |

All nine new definitions are literal constructions/predicates, not arbitrary chosen
witnesses. Their bodies were copied byte for byte into the scratch checker. There are
no matrix inverses, square roots of unguarded negative data, integrals defining a
Hamiltonian, recursion, unsafe definitions, or opaque assumptions in this N draft.
The averaging conclusions explicitly assert integrability and measurable exceptional
sets; they cannot be satisfied by making a Bochner integral totalize to zero.
`Real.sqrt ε` is used only with ε>0. `ENNReal.ofReal` sees nonnegative bounds.

Φ may be arbitrarily nonmeasurable away from K; this does not furnish a counterexample.
For fixed ε the analytic real Hamiltonian has a smooth vector field locally on the
open real domain. Every supplied trajectory from x∈K is the unique local solution,
and compact-time continuation gives smooth dependence near each such initial point.
On K the family therefore agrees with the actual flow. Continuity of the error
maximum on K, and compactness of K, justify integrability. This reasoning is a
provider obligation, not a Lean proof present in the draft.

## 5. Averaging source fidelity and quantifiers

The pinned JSON is a string containing a book transcription. I read its p.243 passage
and reopened the book transcription at §6.1.1 (pp.208–209) to check (6.2)–(6.3), and
the surrounding discussion. The [publisher chapter](https://link.springer.com/chapter/10.1007/978-3-540-48926-9_6)
confirms the edition/chapter identity but does not supply the full chapter without access.
The second-edition search hit is not the pinned third edition. An attempt to inspect
the original 1976 MathNet item was denied access; it is not claimed as read evidence.
The local Neishtadt–Okunev slide 14 was extracted and corroborates the rates, not the
full source assumptions. A rendered third-edition p.243 has **not** been verified.

The formal mean and exceptional-set clauses match what is available:

    ∫_K eε dx ≤ A√ε,
    volume(E) ≤ κ,     eε(x) ≤ A√ε/κ outside E.

For fixed positive κ the error tends to zero; κ proportional to ε^(1/4) balances
error and exception. These are finite-ε exceptional-volume estimates, not a claim
that for each ε the exception is null. K may have zero volume or be empty, in which
case the measure conclusion is harmless; it also admits positive-volume compact
sets. A is allowed to depend on K. No result uniform over shrinking K or normalized
probability law has been asserted.

The κ clause follows from the mean bound by taking E where eε>A√ε/κ. It can be
measurable and contained in K because K is compact/Borel and the error is measurable
on K. There is no missing κ<1 assumption for absolute Lebesgue volume. The local
corollary uses η>0, η≤η₀≤R/4, so good trajectories from B(R/2) lie inside B(3R/4).
When A√ε/η≥volume(K), E=K is allowed; that does not make the asymptotic theorem
vacuous at a fixed positive η and positive-volume K.

For the Hamiltonian specialization the source's averaged action equation is zero:
the angular average of −∂θf vanishes by periodic differentiation/integration. In the
source's general ODE form, put φ=2πθ, frequency 2πω and angular perturbation multiplied
by 2π. This preserves time; it is a change of ODE coordinates, not an assertion that
angles alone were changed canonically. It multiplies phase-volume constants by a
fixed factor and preserves both rank conditions. The partial theorem already uses
radian angles and needs no such conversion.

The mean theorem's supplied family is an explicit typing/existence premise. It does
not assert or assume a small error, an exceptional set, or existence outside an
exceptional set; it can be inapplicable to systems with some exiting trajectories.
The separate `averaging_most` correctly puts existence and confinement in its
conclusion. Its type cannot be deduced merely by deleting the supplied-family
premise of `averaging_mean`.

A smooth real action cutoff supported inside B(R), equal to one on B(3R/4), would
keep the average action equation zero and allow global action confinement for the
modified system. A smooth-source mean theorem followed by Markov and η≤R/4 would
then recover the original equations on good trajectories. An analytic theorem
alone cannot be applied to that cutoff system. The first unpaid import for this
route is therefore the exact smooth or localized mean theorem with the required
frequency-rank and domain hypotheses; local ODE continuation by itself does not
supply the quantitative exceptional-volume estimate. No false analytic cutoff or
conclusion-shaped added premise is accepted here.

## 6. N-to-P consumer audit

Inspected exact P declarations: `StoppedActionBound` lines 132–139,
`amdConfinement` lines 159–171, exponent definitions lines 174–177, and
`planetaryExponentialSafety` lines 182–193. P is not imported into N, and no physical
safety result is inferred merely from an abstract N trajectory.

**Interface verdict: compatible after explicit chart and collar lemmas; no change
to the stopped N conclusion is needed for the intended small-mass P theorem.** The
chart, domain construction and estimates are unpaid providers, not verified existing
implementations. `amdConfinement` alone is a distinctly named conditional helper:
it consumes hstop; it must never stand in for a proof of hstop.

| P requirement | N input/output and exact missing bridge |
|---|---|
| n planets, n≥2 | Instantiate N with n fast actions and k=n slow pairs. The resulting `Phase (n+n)` matches `Phase (n*2)` after a finite-index transport; no theorem at 2n fast actions is being used. |
| Actual moving-Sun dynamics | Construct the regular planar Poincaré chart for the literal frozen moving Hamiltonian, including the indirect kinetic term. Lift fast angles along each finite solution segment. Prove symplectic covariance and differentiability; then the N solution is the image of that **same** physical solution. |
| Fast action = physical Kepler action | Use the zero-coupling canonical split with Λᵢ=mᵢ√aᵢ and hK=−Σmᵢ³/(2Λᵢ²). Prove equality with P's `keplerAction`, including circular prograde orbits. Do not change to reduced-mass or ephemeris elements without transport estimates. |
| Nonzero fast frequency, definite sign | ∂ᵢhK=mᵢ³/Λᵢ³>0 and D²hK=diag(−3mᵢ³/Λᵢ⁴). Choose one σ=−1, uniform g,m on a positive fixed enlarged box. Bound the complex Hessian there explicitly, avoiding Λᵢ=0. N permits this concave sign. |
| Normalized perturbation | On a fixed slightly enlarged separated domain prove a value bound B₀≥1 for the transformed physical perturbation. Set ν=B₀ μphys and P=H₁/ν, so N's small parameter is ν. Thresholds for ν and −H are intersected. |
| Stopped histories | For any supplied physical segment [l,r] in P's outer low-AMD region, and t≥0 in it, restrict to [0,t] and apply N. Nothing is assumed after t. At t<0 apply N to the reversed curve and Hamiltonian −H. Two-sided derivatives and regularity transport, rather than any presumed global flow, give this reversal. |
| Eroded domains | Choose fixed G,D **larger** than the projection of P's outer region; prove positive uniform collars. Strict membership in the outer region alone is insufficient if D is chosen equal to its slow projection. See construction below. |
| Coordinatewise drift ≤delta | N gives ‖ΔΛ‖∞≤νᵇ/2, hence every |ΔΛᵢ| has that bound. Take delta=νᵇ/2, or a larger fixed multiple of μphysᵇ. |
| Symmetric pure exponential horizon | For a=partialTimeExponent n, choose c≤B₀^(−a), and shrink μphys so ν≤1. Then exp(c μphys^(−a))≤ν⁻¹ exp(ν^(−a)). Both time directions are covered by separate forward applications. |
| `amdConfinement` margins | Since b>0, shrink μ* so 2delta is smaller than each fixed inner/outer action gap, 2n delta is smaller than outerAMD−initialAMD, and νᵇ is smaller than both analytic collars. These choices precede z0. |
| Semimajor-axis drift in P-EXP-SAFE | aᵢ=Λᵢ²/mᵢ² is uniformly Lipschitz on the fixed positive action box. Transport the fast-action bound to C μphysᵇ. |
| Physical safety and existence | Angular-momentum conservation, the AMD identity, geometry, and compact continuation are P obligations after hstop. N does not provide Newton equations, collision exclusion, or whole-window existence. |

Here is a noncircular domain choice. `AMDBox.Admissible` gives strict action gaps,
outerAMD<lowerᵢ(1−√(1−ecc²)), positive masses, ecc<1, and radial separation. Enlarge
the action box and outerAMD slightly; if necessary increase the working eccentricity
bound slightly while keeping it below 1. Continuity and the strict AMD inequalities
permit this while preserving a positive radial gap (the original distance is positive).
Choose fixed numbers Aplus>outerAMD and a still larger positive fast box G such that
all its closures remain in that regular analytic region. Let

    D = {(ξ,η): (1/2) Σᵢ(ξᵢ²+ηᵢ²) < Aplus}.

The closed slow ball at outerAMD has a positive distance from D's complement,
independent of the physical datum or solution segment. The closed physical outer
region projects to that ball because in these coordinates AMD is exactly its squared
radius divided by two. Its actions have a fixed collar in G. Thus for ν small enough,
every point of **any** supplied P outer-region segment is in the N erosions. Compactness
modulo the fast angle lattice supplies a uniform complex tube and bound B₀, not a
numerical width at actual masses. This proves why the stopped premise has the right
shape without assuming the P safety conclusion.

For negative time, the same definite predicate holds for −hK with σ=+1, and the
complex bound is unchanged. N's threshold may differ; take the minimum. At t=0 use
zero drift directly, even if one side of P's supplied interval has length zero.
These steps handle all l≤0≤r, l<r in `StoppedActionBound`.

Important limits: N cannot establish hstop for arbitrary B,μ,T,delta supplied to the
conditional AMD helper. It supplies it for the small-μ choices just described, which
are exactly the choices available inside P-EXP-SAFE's existential constants. N's
result does not imply **unconditional** slow confinement. The uniform collar construction,
not a whole-horizon hypothesis or an analytic cutoff, is what permits the P bootstrap.

## 7. Complete theorem-binder classification

Labels: TYPE = typing/index data; SOURCE = source premise; STANDING = explicit
conservative analytic/domain specialization; OWNER = owner scope; OUTPUT = existential
constant or conclusion variable, not a premise. No EXCESS premise was identified in
these conservative specializations. STANDING does not mean the exact text was already
owner-approved by D22. Every theorem still requires exact-text approval.

### `partialConvex_nekhoroshev`, lines 91–119

| Binder / anonymous antecedent | Classification and scope |
|---|---|
| `{n k : ℕ}` | TYPE: fast dimension and slow canonical-pair dimension. |
| `hn : 2 ≤ n`, `hk : 1 ≤ k` | SOURCE: §4.3 nsource>s≥2. This is consistent with D22 and does not alter D17's earlier headline. |
| `G`, `D` | TYPE/SOURCE: arbitrary real fast and slow domains. |
| `hG : IsOpen G`, `hD : IsOpen D` | SOURCE: domains are open, §4.3.A. |
| `hGc : Convex ℝ G` | STANDING: extra explicit geometric specialization, not a source necessity; used for signed-convex domain arguments. |
| `ρ`, `hρ : 0 < ρ` | SOURCE: fixed analytic tube width. |
| `g`, `m` | TYPE/SOURCE: lower frequency and signed convexity coefficients; positivity is inside `hdef`. |
| `Mcomplex`, `hMc : 0 < Mcomplex` | SOURCE: fixed positive upper complex Hessian control, §4.3.B and Remark 4.5.B. |
| `h` | TYPE/SOURCE: fixed fast integrable Hamiltonian, before threshold. |
| `hhol` | SOURCE plus STANDING enlargement: holomorphic on `actionNbhd G ρ`, not merely Re I∈G. |
| `hC2` | TYPE/STANDING: redundant complex C² guard, implied locally by holomorphy on this open set. |
| `hreal` | SOURCE plus STANDING enlargement: real on the full enlarged real slice. |
| `hHess` | SOURCE plus STANDING enlargement: actual complex operator bound; not inferred from real estimates. |
| `hdef` | STANDING/SOURCE specialization: C³, positive g,m, nonzero frequency, and uniformly definite fast Hessian with fixed sign. This is not a drift hypothesis. Source-steepness translation is F-NADD-1. |
| `∃ μ₀`, `0 < μ₀` | OUTPUT: chosen after all preceding data, before μ,P,C,z. |
| `∀ μ`, `0 < μ`, `μ < μ₀` | SOURCE: positive small perturbation-size upper bound. |
| `∀ P` | TYPE/SOURCE: arbitrary normalized perturbation, after threshold. |
| `IsPartialPerturbation G D ρ P` | SOURCE: value-norm bound, analyticity, reality, and fast periodicity. |
| `∀ C`, `0 < C` | TYPE/SOURCE: arbitrary positive supplied duration, not fixed to T. |
| `∀ z`, `IsSolutionOn … [0,C] z` | TYPE/SOURCE: actual canonical solution segment in the fast domain; includes differentiability, not slow confinement or an error estimate. |
| `fast (z 0).2 ∈ innerCore G μᵇ` | SOURCE with stronger norm/margin convention: initial fast erosion. |
| `∀ t`, `t∈[0,min(C,T)]` | OUTPUT/SOURCE: queried time in the advertised window. |
| `∀ u∈[0,t], slow(z u)∈innerCore D μᵇ` | SOURCE stopped condition inside the conclusion; only queried history, not future confinement. |
| final norm inequality | OUTPUT: the fast-action estimate to be proved. |

### `averaging_mean` and `averaging_most`: fixed binders

This table covers each occurrence of the common binders independently (mean lines
146–151, most lines 171–176); there are no extra fixed inputs in either declaration.

| Binder | Classification and scope |
|---|---|
| `{n : ℕ}` | TYPE: equal numbers of fast angles and Hamiltonian actions. |
| `hn : 2 ≤ n` | OWNER/STANDING: selected multi-frequency scope, conservative restriction; not a new mathematical nondegeneracy premise. |
| `R`, `s`, `hR`, `hs` | TYPE/STANDING: positive fixed ball radius and analytic width. |
| `h`, `f` | TYPE/SOURCE: fixed system, before all output constants. |
| `hh : IsAnalyticIntegrable R s h` | SOURCE/STANDING: real analytic integrable part with the frozen ball/extension convention, boundedness and boundary continuity; C³ guards genuine derivatives. |
| `hf : IsAnalyticPerturbation R s 1 f` | SOURCE/STANDING: fixed real analytic normalized periodic perturbation, conservative class; no uniform-before-f theorem is claimed. |
| `hrank` | SOURCE: exactly either global full rank or global full projective rank from p.243 transcription. Complete-source applicability remains F-NADD-2. |
| `K`, `hK : IsCompact K` | TYPE/SOURCE: fixed compact initial phase set, as in Corollary 6.1. |
| `hKI : ∀ x∈K, x.2∈actionBall n (R/2)` | STANDING: explicit interior initial collar for bounded local-domain statements; not an orbit-error bound. |

### `averaging_mean`: remaining binders and antecedents

| Binder / clause | Classification and scope |
|---|---|
| `∃ A ε₀`, `0<A`, `0<ε₀` | OUTPUT: depend on fixed h,f,K,R,s,n and their actual bounds. |
| `∀ ε`, `0<ε`, `ε≤ε₀` | SOURCE: positive small parameter, before Φ and κ. |
| `∀ Φ` | TYPE: supplied family of actual trajectories, not an averaged proxy. |
| `∀ x∈K, Φ x 0=x ∧ IsSolutionOn … [0,1/ε] (Φ x)` | TYPE/SOURCE existence for the mean-error expression. No integrability, measure, error, or exceptional-set assumption is hidden here. It does not prove applicability for every system. |
| `IntegrableOn`, lintegral inequality | OUTPUT: regularity and mean error to be proved; no Bochner-junk premise. |
| `∀ κ`, `0<κ` | TYPE/SOURCE: arbitrary absolute exceptional-volume tolerance. |
| `∃ E`, measurability, subset, measure and error clauses | OUTPUT: all exceptional-set properties are conclusions. |
| `∀ x∈K\\E`, `∀ t∈[0,1/ε]` | OUTPUT domain quantifiers: error for every good initial datum and every time. |

### `averaging_most`: remaining binders and antecedents

| Binder / clause | Classification and scope |
|---|---|
| `∃ A ε₀ η₀`, positivity and `η₀≤R/4` | OUTPUT: fixed constants and interior error collar; no ε- or η-dependent hidden choice. |
| `∀ ε`, `0<ε`, `ε≤ε₀` | SOURCE: positive small parameter. |
| `∀ η`, `0<η`, `η≤η₀` | TYPE/STANDING: error tolerance below the fixed collar. |
| `∃ E`, measurable, E⊆K, volume bound | OUTPUT: exceptional set at tolerance η; no such set is assumed. |
| `∀ x∈K\\E`, `∃ z` | OUTPUT: actual solution existence for every good input. There is no supplied Φ premise. |
| `z 0=x`, `IsSolutionOn`, drift for all t | OUTPUT: actual initial value, equations, full-window existence and bound. This extra localization conclusion requires F-NADD-3, not merely a binder reclassification. |

## 8. Non-vacuity and attempted counterexamples

These are explicit mathematical models, not claimed Lean membership proofs of all
analytic predicates. The scratch checker proves only the named semantic/geometric
lemmas in §9.

For the partial theorem at n=2, k=1, take G=(−1,1)², D the slow ball of radius 2,
ρ=1/4, and

    h(z)=3z₀+(z₀²+z₁²)/2.

The real enlargement is inside (−5/4,5/4)². The first frequency component exceeds
7/4, so g=1 works; Hessian identity gives m=1 and the complex bilinear maximum-norm
bound Mcomplex=2. h is entire, real on reals, and its real restriction is C³.
P=0 is normalized. A nonzero allowed perturbation is c cos(φ₀), independent of the
slow coordinates and actions, with c≤1/(2 cosh ρ). It is entire, radian-periodic and
bounded by 1/2 on the tube. For small μ the initial fast point 0 and slow point 0
satisfy both erosions. These data exclude universal vacuity from the frequency,
convexity, normalization or margin clauses. A centered quadratic alone would fail
nonvanishing frequency on this G; the affine term is necessary in this example.

For averaging take R=s=1, n=2, the same shifted quadratic, and

    f(θ,I)=cos(2πθ₀)/(2 cosh(2π)).

It is period one, entire, real on reals and bounded by 1/2 on the strip; h satisfies
the frozen bounded analytic class on the bounded action neighborhood. Dω is identity,
so the first rank branch holds on B(R), including at any putative zero frequency.
Choose K=[0,1]²×[−1/4,1/4]², a positive-volume compact set with actions in B(R/2).
For a particularly transparent supplied-family example use f=0 and
Φ(x,t)=(x.1+tω(x.2),x.2). It is a genuine solution at every real time and has exactly
zero drafted error. A=1 and any positive ε₀ work in this model; the exceptional set
can be empty. Thus the Φ hypothesis is not inherently contradictory.

Refutation attempts: μ=0 and ε=0 are excluded before negative powers; unbounded
lifted angles do not affect action bounds or periodic analytic local regularity;
empty domains and null K do not invalidate the meaningful nonempty cases; a
nonmeasurable arbitrary family cannot change unique actual solutions on K; and the
projective rank expression has no chosen component at which a division can fail.
The wedge refutes a **source-conversion shortcut**, not any dynamical theorem.
No false Lean statement has been declared refuted without an actual counterexample.

## 9. Validation and handoff

The brief's direct draft elaboration is the targeted check here. No whole-project
build, `lake clean`, update, cache download, frozen edit, or state-changing git command
was used. Lean invocations and the lint ABI elaboration were serialized.

- `nice -n 5 lake env lean .drafts/N/Additions.lean` — **exit 0**. Exactly three
  expected draft warnings, at 91:8, 145:8, 170:8: `declaration uses sorry`.
  Log: `.drafts/N/audit-scratch/elaboration.log`.
- Embedded `#print axioms` for `partialConvex_nekhoroshev`, `averaging_mean`, and
  `averaging_most` each reports `[propext, sorryAx, Classical.choice, Quot.sound]`.
  These are unproved draft bodies, not proof receipts.
- `PYTHONDONTWRITEBYTECODE=1 scripts/lint_sources.sh` — **exit 0**:

  ```text
  check_lean_modules: PASS (124 Lean files, 0 comparator configurations)
  FROZEN-ANCHOR GUARD OK
  ABI HASHES OK (94 frozen declarations)
  ```

  Log: `.drafts/N/audit-scratch/lint.log`. The repository checker excludes `.drafts/`;
  it does not by itself validate the new draft or scratch.

- `nice -n 5 lake env lean .drafts/N/audit-scratch/DefinitionChecks.lean` —
  **exit 0**, no warnings or errors. Final file: 215 lines, SHA-256
  `f9c67135f16a577dfb8ced0554118d85065fbd201dc434113f4b07e339645c0c`.
  It copies all nine draft definitions literally, imports only frozen definitions and
  Mathlib, and contains zero placeholder bodies. It checks restriction of the frozen
  ODE predicate, source exponent arithmetic/positivity, legitimate supremum inputs,
  zero error for constant actions, monotonicity of erosion collars, and the wedge
  obstruction to uniform nonempty transverse spheres. Its three printed main results
  `restrict_solution`, `constant_action_error`, and `no_uniform_transverse_spheres`
  each use only `[propext, Classical.choice, Quot.sound]`, with **no `sorryAx`**.
  Log: `.drafts/N/audit-scratch/definition-checks.log`. Two earlier scratch runs had
  ordinary tactic/application errors; these were corrected without resource overrides.
- Mechanical definition comparison: the nine copied draft `def` declarations are
  byte-identical to the audited draft; the additional `wedge` is a separately named
  audit definition. The audited N draft and the three N packet hashes match §1 after the work.
  No frozen or manifest difference was introduced. A concurrent P edit is scoped below.
- `git diff --check -- docs/tracks/N/AUDIT-additions-v0.3.md` — **exit 0**, no output.
  Because the report is new/untracked, its text and the scratch module also received
  direct checks for trailing whitespace, control characters, and a final newline.
  No heartbeat, recursion-depth, or synthesis-heartbeat override was used. The Lean
  draft is 194 lines and the scratch module 215, both below 1500.

Rendered source pages and validation logs are confined to the permitted scratch
folder. Global lint writes its usual temporary ABI-check artifact under `.lake/` and
removes it; no production source was edited. The workspace had concurrent blueprint and P-packet activity; those files were left
untouched. At the final preservation check the P draft had changed to SHA-256
`bf4b9d474e4c3fa32844af887f90851cb5bd026c101f2b5fc882b9169d5e72f0`:
the named `AMDSafeOn` conclusion was inlined. I reread the changed consumer section;
`StoppedActionBound`, the AMD helper input assumptions, and the two source exponent
formulas retain the interface analyzed in §6. Its line locators and `AMDSafeOn` name
refer to the original P pin in §1. This is not a full independent audit or elaboration
of the concurrently revised P safety conclusions. The N verdict concerns the fixed
N draft hash above.

**Handoff:** the source exponents, complex-bound quantifiers, stopped histories and
N-to-P types are suitable as designed. F-NADD-1, F-NADD-2 and F-NADD-3 remain unpaid
source imports for unconditional freeze approval. F-NADD-4 gives the exact larger-domain
provider obligation for P. F-NADD-9 and E-N-ADD-1 should be recorded/corrected by the
orchestrator in their authorized files. No new mathematical theorem or frozen result
has been proved, and no actual-mass safety claim is certified.
