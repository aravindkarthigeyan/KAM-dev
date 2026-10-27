# Part 14b: independent blueprint review 1

**Verdict: ACCEPT WITH FIXES. No blocking or major mathematical finding.** The proof plan establishes the two frozen statements as written. The fixes below concern explicit norm notation, one incorrect reference target, source/provenance tags, and rendering.

Reviewed file: `blueprint-P/parts/p14b-secular-box.tex`, 320 lines, 41,255 bytes, 20 labelled theorem/lemma/proposition/definition/remark environments and 46 labelled proof steps. Reviewer did not write or edit it. This is a focused, refute-first blueprint review, not a Lean proof or seal audit.

## Inputs and scope

Initial checkout revision: `4a2df8097e8e9c18f2e9011e3fb12dec8244c7d6`, branch `inp`. There was concurrent unrelated work and a dirty shared checkout. The following file hashes pin the actual reviewed bytes independently of subsequent commits:

| Input | SHA-256 |
|---|---|
| Part 14b | `b657768a1dd8d111614931903fadd4a5caf87228113b972be275dee5f47cc942` |
| Writer's `check.py` | `d55902fa2ee3ab51233eae7a5ebd2e9625f778967ef45e81849b516c799c2fc8` |
| Frozen `Theorems/SecularBoxSafety.lean` | `e5806845804b9c87c28f6220d7228fd2c49cadf7e5790a7f6753e33ded9043cd` |
| Frozen `Theorems/SecularBoxAtCitedMasses.lean` | `88d99c96e8b646b4edd1b17764e7fa25d1b36245852695b88bb6194992cf3324` |
| N Part 3, `p3-hamiltonian-ode.tex` | `ae9ea3c57b401be389cd9a7e54d9508de50abe33bdc24f5d49a16fffcd43a17d` |
| P Part 8, `p8-secular-form.tex` | `413806b9fcc86156e0b241da85668677b44bf142897c7039940504a50ae1febc` |
| LP17v2, `sources/incoming-zohar2/r2-amd17.pdf` | `6b3c7aad2c2bf69612c0e0a65a5409f40a03e330253f8b3880f8e53d40f09361` |
| FH24v1, `sources/incoming-zohar2/r2-fhl24.pdf` | `379c8b41b53a1fd50cbc890cca06d646ccd93f5c0d5e0226d1303885d2df7cf7` |

Read the complete review brief, AGENTS, PLAN, governing decisions including D14/D17–D25, writer convention ruling, P PLAN/preamble/Part 0 conventions, relevant P statement/source/notes and v0.4 audit, and the model Part-2 review. Read both authoritative frozen theorem declarations and the semantic definitions they use: phase/block assembly, oscillator action, Gamma/AMD/root/eccentricity/axis, longitude Jacobian, ellipse position/momentum/phase, full moving Hamiltonian, exact secular integral, input box, regularity, barycentric positions, body extraction, pair bounds, no-collision, plane length/dot/square, and the frozen Hamiltonian field/solution predicate. Checked the cited N Part-3 interfaces and P Part-8 differentiation-under-integral interface.

Manifest identities are `planetary.d25.secularBoxSafety.v1` and `planetary.d25.secularBoxAtCitedMasses.v1`, both D25-approved and currently `DRAFT_SORRY`. Independently recomputed all 33 definition-closure hashes listed for each; all matched. This review does not claim their Lean proof closure. No Lean build or axiom probe was needed for this blueprint-only assignment.

Permission envelope: inspect inputs, execute arithmetic without modifying its script, compile into `.build/review`, and write this report. No blueprint, frozen file, manifest, ledger, or other review was edited; no state-changing git command or subagent was used.

## Findings

All findings below survived a second reading against the explicit polynomial formulas, the reference owner, or the rendered page. None changes the proof route or frozen theorem.

| ID | Location / label | Severity | Finding and evidence | Exact proposed fix |
|---|---|---|---|---|
| P14b-01 | Lines 26, 151–158, 166; `sb-conv`, `sb-ch-a`, `sb-ch-c`, `sb-cv-1` | minor, notation | The two-dimensional algebra sometimes writes bare `\abs{u_i}`, `\abs c`, `\abs{q/a}` while the part otherwise uses `\pl{·}` for Euclidean lengths and ambient spaces carry max norms. The intended Euclidean interpretation is established by the polynomial Gamma formula at `sb-sm-2`; no max-norm calculation is actually used. Nevertheless Gamma is `(ξ²+η²)/2`, not half the squared ambient max norm, and rotations need not preserve that max norm. | Write `Γ_i=(ξ_i²+η_i²)/2=\tfrac12\pl{u_i}²` at line 26, and use `\pl` consistently for vector lengths in the chart and rotation calculations. Keep scalar absolute values unchanged. This is a notation clarification, not a request to change the frozen definition. |
| P14b-02 | Line 97, `bpP:p14:sb-totality` | minor | “Lemma” `\ref{bpP:p14:sb-smooth}` targets the subsection, not the result establishing integrability and smoothness. The label exists, so ordinary undefined-reference checking misses it. | Replace with `Proposition~\ref{bpP:p14:sb-smooth-prop}`. |
| P14b-03 | New results from `sb-chart` through `sb-unique` | minor, provenance | The local lemmas/propositions generally lack their own `\source{ours/standard/...}` line, although the writer brief requests one on every result. The mathematics is explained and dependencies are named, so this is not an unidentified mathematical input. | Add `\source{Ours; direct calculation from the frozen definitions.}` to chart/region/rotation results; identify compact-flow and uniqueness results as applications of the exact N Part-3 labels already used in their proofs. Do not attribute the explicit box or chart formulas verbatim to LP17. |
| P14b-04 | Lines 106–128 and 163; rendered pp.178–179 | minor, rendering | Final log reports a 2.80057pt overfull table and a 56.22653pt overfull covariance display. Page 179 was rendered and inspected: the covariance row runs well into the right margin. | Split the four covariance identities into two aligned rows and slightly narrow/reflow the numeric table. |

No extra hypothesis, weakened frozen conclusion, wrong rational inequality, unavailable continuation hypothesis, or circular conservation argument was found. The broader Part-0 sentence saying D22 is not frozen is stale, but Part 14b correctly identifies D25 and supplies its own transcriptions; correcting Part 0 belongs to its owner, not this review.

## Frozen transcription check

The theorem `bpP:p14:sb-safety` preserves the frozen outer order: real `saturn`, real `mu`, Saturn interval membership, positive mu, initial phase `w0`, input-box premise, then existence of the whole trajectory. No smallness threshold, normal-form premise, supplied orbit, conservation premise, or observational enclosure was added.

Expanded premise inventory below uses SOURCE for source/approved explicit input and TYPING for carrier data. All other bins (STANDING, RULED, EXCESS) are empty here; D25 approves the literal parameter box rather than modifying a premise implicitly.

| Binder / expanded input | Bin | Blueprint attachment |
|---|---|---|
| `saturn : ℝ` | TYPING | σ |
| `mu : ℝ` | TYPING | μ |
| `29/100 ≤ saturn` | SOURCE | σ interval, lower endpoint |
| `saturn ≤ 31/100` | SOURCE | σ interval, upper endpoint |
| `0 < mu` | SOURCE | μ>0, with no upper bound |
| `w0 : Phase (2+2)` | TYPING | Initial phase |
| `∀i, 0 < fast w0.2 i` | SOURCE | Box (i), positive actions |
| `∀i, 0 ≤ secularGamma w0 i` | SOURCE | Box (i), nonnegative Gamma |
| `∀i, secularGamma w0 i < fast w0.2 i` | SOURCE | Box (i), elliptic branch |
| `103/20 ≤ a0` | SOURCE | Box (ii) |
| `a0 ≤ 21/4` | SOURCE | Box (ii) |
| `189/20 ≤ a1` | SOURCE | Box (ii) |
| `a1 ≤ 193/20` | SOURCE | Box (ii) |
| `planeLength v0 ≤ 3/50` | SOURCE | Box (iii) |
| `planeLength v1 ≤ 7/100` | SOURCE | Box (iii) |

Counts: SOURCE 12, TYPING 3, STANDING 0, RULED 0, EXCESS 0. For `secularBoxAtCitedMasses`, remove the two real parameter binders and their three logical inputs, substitute the two literals everywhere, and retain `w0` and the same nine box clauses: SOURCE 9, TYPING 1, others 0. This is precisely the second frozen declaration, not a differently scoped corollary.

| Frozen conclusion | Transcription and proof check |
|---|---|
| `∃w, w 0=w0` | Exact initial value, no chosen quotient trajectory. |
| `IsHamiltonianSolutionOn H univ univ w` | Actual H differentiability and two-sided derivative at every real t. No finite interval or action-domain restriction substituted. |
| `∀U v, IsOpen U → Convex ℝ U → 0∈U → v0=w0 → solution → (∀t∈U, SecularRegular ... (v t)) → ∀t∈U, v t=w t` | All binders and premises retained. The local uniqueness proposition proves a stronger claim by not using the regularity premise. |
| `∀t, SecularRegular ... (w t)` | All four groups retained: mass/action/Gamma guards; all-phase positive Jacobians and no collision; exact-integrand integrability; differentiability of H. |
| Conserved `fast (w t).2`, conserved AMD, AMD `<16373/2500000` | Same scopes and strictness. |
| `∀i, e_i<3/20` | Physical Euclidean eccentricity, both planets, every real time. |
| `∀F`, each radius in `[1751/400,4439/400]`, radial gap `≥399/200`, `PairBounds 399/200 4439/200` | Every independent phase F is quantified after t; both orders of physical body pairs and the Sun included. No phase tied to the trajectory is substituted. |

The frozen integral is literally `(2π)^(-2)` times the integral on the closed two-angle box of `secularIntegrand m mu (assemble Λ F η ξ)`. The transcription reads the assembly order correctly: positions `(F,ξ)`, momenta `(Λ,η)`. The positive Jacobian product is retained; neither the indirect kinetic term nor any part of the full moving Hamiltonian is discarded. No inverse Kepler solver or mean-angle coordinate theorem is needed to prove the literal frozen integral result. The equivalence with a mean-longitude average is correctly left as a consistency/coordinate bridge.

## What I recomputed: refutation attempts that failed

### Every rational bound

Executed `python3 .drafts/P/bp-scratch-bpP-p14b/check.py`: exit 0, **32 OK lines, no FAIL**. Independently recomputed the core equalities and strict slack using `fractions.Fraction`, rather than treating that output as proof. All N1–N7 assertions, the source-chain check, the decimal-mass equalities and the endpoint products are correct. Representative exact positive differences:

| Check | Exact slack, larger side minus smaller side |
|---|---:|
| N1 lower / upper Saturn endpoint | `1461/159100` / `1721/159100` |
| N2 lower / upper squared action bounds | `43931/10000` / `1/25` |
| N3 lower / upper squared action bounds | `7569/200000` / `2707/200000` |
| N4a: `1−(3/50)²−(99819/100000)²` | `167239/10000000000` |
| N4b: `1−(7/100)²−(49877/50000)²` | `34871/2500000000` |
| N5a: `19/2500−(16373/2500000)/(87/100)` | `157/2175000` |
| N5b: `(3/20)²−[1−(2481/2500)²]` | `22993/3125000` |
| N6 compactness: `87/100−50(16373/2500000)` | `27127/50000` |
| N6 eccentricity: `(1/5)²−[1−(49/50)²]` | `1/2500` |
| N6 radial separation: `(47/5)(4/5)−(53/10)(6/5)` | `29/25` |
| N7 pair upper bound: `4439/200−(4439/400+483/80)` | `253/50` |
| Source-chain square comparison | `621/1000000` |
| Source-chain AMD margin: `957/100000−16373/2500000` | `236/78125` |

Independently checked the exact equalities

```text
(23/10)(181/100000)+(97/100)(123/50000) = 16373/2500000
1−(2481/2500)² = 94639/6250000
(103/20)(17/20) = 1751/400
(193/20)(23/20) = 4439/400
(189/20)(17/20)−(21/4)(23/20) = 399/200
(4773/5000000)(476/1591) = 357/1250000 = 0.0002856
```

Strict initial AMD follows even at the closed eccentricity endpoints: the rational lower bounds on k are strictly smaller than the corresponding positive square roots. Gamma=0 causes no strict-product gap; its positive upper estimate is immediate. N5 then yields k>2481/2500 and hence e<3/20 without rounding. All decimal entries in the table are merely orientation, not proof inputs.

### Chart, smoothness and conservation

- Re-expanded the radius polynomial with SymPy: `k²(1+k)−2kx(1+k−x)+(1+k−x)²(1−k)−(1+k)(1−x)²` is identically zero. Since a>0, 1+k>0 and 1−x>0, the positive square-root step gives exactly `planeLength q=a(1−x)`. No ambient max-norm identity is needed.
- Checked rotation covariance directly in the frozen q and p formulas, including the sign of `quarterTurn`, the `F−θ` shift, invariance of the radicand, and the unchanged Jacobian denominator. Each body position/momentum rotates together. Every term in the full moving Hamiltonian is invariant under that rotation, including the indirect momentum dot product.
- Lambda-independence is definitional: averaging assembles F into the fast position slots and never reads the original lambda. The integral is therefore unchanged under arbitrary lambda translation. On S its derivatives in those slots vanish.
- Rotation invariance of H follows by two periodic integral translations and Fubini on a continuous compact-box integrand. Differentiation of `H(w^θ)` at θ=0 gives `Σ(−η_i∂ξ_i H+ξ_i∂η_i H)=0`. The canonical slow equations are `ξdot=∂η H`, `ηdot=−∂ξ H`, so `Adot=Σ(ξ_i∂η_i H−η_i∂ξ_i H)=0`, with the correct sign.
- S is genuinely open. Gamma is always nonnegative as a sum of squares; `50Γ<Λ` gives ellipticity, `k>49/50`, radicand `>99/(100Λ)>0`, `e<1/5`, Jacobian `>4/5`. Radius separation is at least the positive open-region margin `29/25`. Thus roots, inverse lengths and chart denominators are smooth locally for every phase. Circular points require no division by e.
- A compact neighborhood N of each point can be chosen inside S. Joint derivatives on `N×Δ` are continuous, hence bounded by an integrable constant on the finite-measure phase box. This supplies the local domination required by P8's `e-diff`. Repeating at every finite order justifies the stated C∞ result; C² suffices for the flow. There is no unguarded Bochner integral or fderiv use.

### Global flow and uniqueness

- For fixed Λ⁰, the affine slow embedding pulls H back to a C∞ Hamiltonian h on the open S′. N `ham-smooth` gives a C¹ slow field, and `gen-maximal` supplies the maximal interval. These are exactly the hypotheses of the cited shared interface.
- Conservation is proved along that local solution before continuation is invoked. `A0≥0` follows from the initial sums of squares. The entire closed sphere `K={y:Γ0+Γ1=A0}` is bounded in the ambient max norm, since every coordinate square is at most 2A0. It is compact, including the degenerate A0=0 singleton case. For every y in K, `50Γ_i≤50A0<87/100<Λ_i⁰`; axis conditions depend only on Λ⁰. Consequently **K⊂S′**, not merely in its closure. Both ends of N `gen-continuation-compact` apply. No trajectory-regularity or confinement conclusion has been assumed as an input.
- Lambda is reconstructed by a vector-valued integral of the continuous frequency along the global slow solution. Each finite time segment has a genuine finite integral, including negative times. No global bound on the lifted lambda or compactness of the full phase curve is required.
- The frozen solution predicate and `IsSolIn` are equivalent **along curves already known to lie in S**, by direct inspection. The text uses N `ham-reduction` only as a pattern; it does not incorrectly instantiate that product-domain theorem with an arbitrary S and action domain univ.
- For an arbitrary competing frozen solution, the agreement set is closed relative to U by continuity. At an agreement time, openness of S and continuity place both curves in S on a smaller interval, where N `gen-uniqueness` applies. The agreement set is therefore open as well, hence all of connected U. This justifies the stronger uniqueness claim without assuming the competitor stays in S globally or adding a derivative bound.
- Recomputed barycentric cancellation: all pair differences remove the common x0 exactly. Reverse and ordinary triangle inequalities then give the claimed lower/upper bounds for both pair orders. The physical barycentric denominator is positive for μ>0 and positive weights; no mass-dependent loss in the pair distances occurs.

### Sources, reuse and formalizability

Read LP17 printed pp.16–17 directly from the pinned PDF. Equation (B.5) is the normalized full lambda average, and (B.8) is the commutation of averaging with the Poisson bracket for a lambda-independent first integral K. The blueprint uses exactly that mechanism, but proves rotation and conservation directly for its frozen F-integral. It does not import the later formal all-orders normal form, a convergence theorem, or an all-time Newtonian conclusion. The rational box and raw-average certificate are correctly marked as new elementary work.

Read FH24v1 printed p.6, §4: its decimal mass parameters are exactly the quoted pair, and normalizing Jupiter's weight to one gives the stated σ and μ. No physical observational uncertainty is asserted.

All **108 reference occurrences / 48 distinct cited labels** resolve in the owning blueprint source, with no multiply defined cited label. The six N references exist and say what is needed: general solution predicate, C¹-field uniqueness, maximal solution, compact continuation, Hamiltonian smoothness, and the product-domain predicate pattern. P7's chart/average and P8's symmetry results are explicitly consistency checks, not hidden dependencies. Only P8 `e-diff` is analytically consumed beyond the local elementary calculations.

For Lean planning, Mathlib contains `Function.Periodic.intervalIntegral_add_eq` in `MeasureTheory/Integral/IntervalIntegral/Periodic.lean:344` and the first-derivative parameter-integral theorem `hasFDerivAt_integral_of_dominated_of_fderiv_le` in `Analysis/Calculus/ParametricIntegral.lean:206`. The proposed induction for higher derivatives is reasonable; its locally uniform domination must be supplied from N×Δ as above. The N maximal/continuation layer remains a shared formalization obligation, not an already available Lean theorem claimed by this review. The module split and default-heartbeat rules are respected by the plan.

## Build and rendered pages

From `/root/code/KAM-inp/blueprint-P`:

```sh
latexmk -pdf -interaction=nonstopmode -outdir=.build/review blueprint.tex
```

Exit **0**. Final log: `Output written on .build/review/blueprint.pdf (184 pages, 2206714 bytes).` Count of log lines starting `!`: **0**. Part 14b occupies printed pp.176–184. Read its rendered PDF text and visually inspected the rasterized covariance/chart page 179.

The whole-document build has seven unresolved reference occurrences, all in Part 14a, for six N labels: `bpN:p0:actionnbhd`, `bpN:p0:partial-pert`, `bpN:p0:partial-domain` (twice), `bpN:p3:gen-uniform`, `bpN:p0:sol`, `bpN:p0:partial-core`. **None is in Part 14b.** Other warnings local to this part are the two overfull boxes above, underfull boxes, hyperref math-in-bookmark warnings, and an amsthm `qedhere` warning. No mathematical text was lost in the inspected page.

## Errata, limitations and closeout

No new suspected defect in the frozen statements or the pinned (B.5)/(B.8) was found. Independently confirmed the already recorded **E-P-A-LP17-1** on printed p.17 between (B.9) and (B.10): “Using the Jacobi identity, as {F,H₀}=0”. The surrounding first integral is K, so F is an apparent symbol typo. Part 14b does not use that later step; no silent source repair is needed here.

Accept the mathematical proof plan after the minor fixes above. This is not a source-proof audit of all of N Part 3, a Lean verification, an all-orders secular normal form, or a full Newtonian stability certificate. The exact frozen anchors remain unproved. Only this review report was written as a source artifact; compilation/raster outputs are confined to the build directory. The reviewed Part-14b hash remained unchanged at closeout.
