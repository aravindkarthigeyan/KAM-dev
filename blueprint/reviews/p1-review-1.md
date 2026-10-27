# Part 1 review and consolidation check

Verdict: **ACCEPT WITH FIXES** — one minor hypothesis clarification; no blocking or major mathematical finding. All 34 current Part 1 lemmas were checked, including their proofs. The brief's “about 37” is approximate. The redirected uses checked below retain the hypotheses, norms, constants and strip losses they require.

## Scope and snapshot

Review date: 2026-10-27. Read-only mathematical review under `.drafts/briefs/review-p1.md`, `AGENTS.md`, `docs/PLAN.md` and `docs/DECISIONS.md`. Only this report was edited; the expressly authorized PDF build used `.build/review-p1/`. No blueprint, Lean, frozen file, manifest, generated root or README was edited. No git mutation was performed.

Method: focused manuscript audit, statement/proof inventory, a separate adversarial second pass, and inspection of the consolidation diff `67b812950906d9aeb9ff3ad832ef94b3eee78ab4^..67b812950906d9aeb9ff3ad832ef94b3eee78ab4`. Both mathematical passes were by this reviewer; no second reviewer or subagent was used. This is not an independent two-reviewer certificate, a new source-PDF audit, or a Lean proof-closure audit.

The initial checkout HEAD was `36636aba59524ec9aaa48619e1687f067cc54252`. Concurrent work advanced HEAD during review (observed subsequently: `922483919f9e7609b85042a1a9405447875ca2b4`). The following audited input hashes were unchanged between the recorded checks; these hashes, rather than the moving branch name, define this report's snapshot. All line locators below refer to these bytes.

| File | SHA-256 |
| --- | --- |
| `blueprint/parts/p0-conventions.tex` | `b22b60acce213ab45b3d588f17191fa284facc1235fea2c52542ce33bceeab3d` |
| `blueprint/parts/p1-analysis.tex` | `866aea77966ca1f249d93549f92d5caff7753b913d4a683b4eced9fae9c29394` |
| `blueprint/parts/p2-aposteriori.tex` | `2f79aaec403d58a04d88df578b8c9060896d18bae262e0578895eac3be3f0a3e` |
| `blueprint/parts/p3-uniqueness.tex` | `bbd7738a0706a2c39bc53f0a9902ec29c0bd483a8221a0febd543c6694951e19` |
| `blueprint/parts/p4-measure.tex` | `403dbf9a7ee4cb0eec4d1af63c324903e4113778a3f9e45e8a046854ef37adce` |
| `blueprint/preamble.tex` | `3f5eb2121889c34cdbc03795123dc09e4ea952ce0ae5c16ecb6cb46d454a0d2c` |
| `blueprint/blueprint.tex` | `f5ce4d9f988c5d7eae925ba2f2fc8fca9f5406b72b2e1cab983d09be894d3079` |

## Findings

| ID | Label or step | Severity | Finding | Evidence | Proposed fix |
| --- | --- | --- | --- | --- | --- |
| P1-R1 | `bp:p1:cauchy-open` | minor | State `0 < δ` explicitly. The argument and all uses require a positive radius, but the standalone statement leaves that condition implicit in the word “radius.” | Part 1:462–467 says “let the closed polydisc of radius δ around z lie in U” and concludes bounds containing `δ⁻¹`, `δ⁻²`, `δ⁻³`. The proof at 474–496 uses positive-radius Cauchy circles and half-radius polydiscs. The cited Lean theorem `KAM.norm_fderiv_le_of_closedBall` has an explicit `hδ : 0 < δ` binder (`KAM/Strip/Cauchy.lean:80–85`). | Add “let δ > 0” to this lemma. No constant or caller needs changing. |

Second-pass disposition of P1-R1: ordinary mathematical usage already reads a polydisc radius as positive here, so this is a standalone-contract clarification, not a counterexample to any downstream proof. If the formula for the closed polydisc is instead extended literally to negative δ, containment is vacuous: for `U = {z : |z| < 1}`, `f(z) = z`, `A = 1`, `z = 0`, `δ = -1`, the asserted first-derivative inequality would be `1 ≤ -1`. This explains why the sign binder belongs in the interface. All audited callers use expressly positive widths. There is no unrefuted mathematical blocker.

## Statement and proof inventory

Labels in this table have prefix `bp:p1:`. “OK” means checked mathematically under Part 0 and Part 1's stated conventions, relative to E1–E10; it does not mean formalized in Lean.

| Label | Start line | Status and check |
| --- | ---: | --- |
| `operator-norms` | 107 | OK. A maximizing row and conjugate phases attain its absolute row sum; block bound and signs of Ω₀ agree. |
| `matrix-norms` | 136 | OK. The transpose factor is the number of original rows; no relation between row and column counts is needed. Signed permutations preserve row sums. |
| `neumann` | 165 | OK. With `X = A⁻¹Δ`, `A + Δ = A(I + X)`, inverse is `SA⁻¹`; both constants 2 follow with the correct multiplication order. |
| `real-inverse` | 193 | OK. Cramer's rule preserves real entries. |
| `holomorphic-regularity` | 215 | OK. Local compactness bounds F; line Cauchy bounds DF; dominated differentiation proves each derivative column holomorphic; finite-dimensional assembly and induction give all orders. |
| `holomorphic-analytic` | 284 | OK. Iterated Cauchy formula, uniform geometric expansion and coefficient bounds justify the multivariable series and real restriction. |
| `uniform-limits` | 352 | OK. Pointwise convergence of functions and uniform convergence of derivatives suffice locally; the proof controls the linearization remainder before passing limits. |
| `holomorphic-inverse` | 392 | OK. Adjugate/determinant formula on the invertible locus and differentiated product identity. |
| `increments-open` | 413 | OK. Only the segment must lie in U; U need not be convex. |
| `taylor` | 424 | OK. Integrating `At|w|²` gives the factor 1/2. |
| `mixed-difference` | 442 | OK. Convexity and the four vertices put the full parallelogram in U; two segment estimates give `A|v||w|`. |
| `cauchy-open` | 462 | OK with the explicit sign clarification P1-R1; constants can be `1, 4, 32`, independently of the dimension. |
| `periodic-bounded` | 505 | OK. A compact fundamental set lies inside the larger open strip. No bound on the full strip is assumed. |
| `strip-identity` | 519 | OK. Coordinatewise identity theorem starts with all other coordinates real and complexifies one coordinate at a time. |
| `increments` | 539 | OK. Convex thinner strip and derivative bound; boundedness of u enters only the optional Cauchy conclusion. |
| `cauchy-strip` | 556 | OK. Vector and matrix estimates use the target norm directly, without entrywise loss. The stronger line estimate also holds. |
| `cauchy-strip-2` | 592 | OK. Closed polydiscs around thinner-strip points lie strictly inside the original strip; constant 4. |
| `cauchy-corollaries` | 605 | OK. Transposed Jacobian costs the target dimension p; transport uses the ℓ¹ norm of ω. |
| `averages-real` | 634 | OK. C¹ regularity, FTC and cancellation of opposite faces, followed by Fubini. |
| `averages` | 653 | OK. Restriction is C¹ by regularity; integral norm bound holds for any target norm. |
| `averages-matrix` | 674 | OK. Integral bound uses the operator norm; C¹ assumption pays for derivative averages. |
| `periodic-average` | 689 | OK. Moving-interval FTC and coordinatewise Fubini; no differentiability of v is required. |
| `exp-sums` | 715 | OK for n ≥ 1 as expressly stated. Power/exponential maximum, coth product, and nonzero-mode bound `(8n/x)^n` verified. |
| `fourier-basic` | 745 | OK. Periodic integration by parts gives the multiplier; E7 supplies reconstruction; vanishing coefficients imply zero on reals and then on the strip. |
| `decay` | 774 | OK. Shift is opposite the sign of k; vertical sides cancel by periodicity. The limit to the open-strip width is justified without boundary values. |
| `summation` | 812 | OK. Weighted summability gives uniform convergence; derivative sums converge on every thinner strip; coefficients and full open-strip reconstruction follow. |
| `cohomological` | 875 | OK. Explicit constant, period-one multiplier, two half-losses, unbounded uniqueness class, zero datum and realness checked. |
| `cohomological-operator` | 959 | OK. Test against fixed max-unit vectors and use vector uniqueness; the same constant works independently of matrix dimensions. |
| `iteration` | 997 | OK. Rescaling gives `xₘ₊₁ ≤ xₘ²`; induction also gives the stated bound linear in y₀. |
| `real-restriction` | 1035 | OK. Real analyticity follows from the proved analytic lemma; real directional difference quotients give the derivative and its norm bound. |
| `hamiltonian-real` | 1061 | OK. Agreement near z suffices for real derivatives; `J = -Ω₀`, hence `Ω₀Xφ = (Dφ)ᵀ`. |
| `lip-image` | 1111 | OK. Cubical diameter in the max norm gives exactly Λᵈ; inverse images of null sets use the Lipschitz inverse. |
| `mcshane` | 1155 | OK. The scalar infimum is finite using a fixed source point; coordinatewise extension and clamping preserve the constant. |
| `lipeo` | 1190 | OK. Lower bound gives injectivity and inverse constant; Banach gives surjectivity; fixing Z′ preserves its complement. |

### Checks on the requested difficult points

**Several-variable analyticity.** At 303–319 the larger polydisc exists by compact containment. Fréchet differentiability implies continuity, and composition with each coordinate line is holomorphic on a neighbourhood of its closed disc even after earlier coordinates have been placed on their circles. Denominators on the integration torus are separated from zero by `r - |w-z₀|`. Parameterizing circles reduces Fubini to continuous functions on compact real boxes, covered by E6. At 321–337 the majorant is `A r⁻ᵐ t^|α|`, whose sum is `A r⁻ᵐ(1-t)⁻ᵐ`; termwise integration is therefore justified. Bounds on coefficients use the length of each circle, giving `A r⁻|α|`. For a real centre, restriction to real increments gives a convergent real series; taking real parts yields real coefficients when the function is real-valued. No Hartogs theorem or unproved several-variable analyticity theorem is being assumed.

**Regularity before analyticity.** There is no circularity through `holomorphic-analytic`: at 240–260 the derivative is locally bounded by the earlier line estimate, and the normalized remainder has an integrable uniform majorant. The derivative integrand is measurable as a limit of continuous difference quotients. Dominated convergence is applied with the complex line direction fixed, then derivative columns are assembled. This proves the regularity subsequently used by Taylor and Fourier arguments.

**Fourier decay and summation.** At 780–806, `tⱼ = -ρ′ sign(kⱼ)` gives `|χ₋ₖ(x+it)| = exp(-2πρ′|k|₁)`. The rectangular identity remains valid for negative shifts by oriented integration; a zero shift is trivial. Letting `ρ′` increase to ρ takes a limit of scalar bounds, not values of u at the strip boundary. The converse sum is exactly

`Σₖ exp(-2πδ|k|₁) = coth(πδ)ⁿ`.

The derivative-series majorant at 830–835 is `(eε)⁻¹ |aₖ| exp(2πρ|k|₁)`, so uniform derivative convergence holds on each `T_(ρ-ε)`. Reconstruction is pointwise throughout the open strip, not asserted uniformly on its boundary.

**Cohomological constant and loss.** At 888–920 the constant is

`c(n,τ) = (2π)⁻¹ (τ/(eπ))^τ (8n/π)^n`.

Setting `s = 2π(ρ-δ/2)` spends coefficient loss `πδ` on summing the datum and another `πδ` on `|k|₁^τ`. The final coefficient radius is `2π(ρ-δ)`. The zero Fourier coefficient of g vanishes, so the nonzero-mode sum used here is legitimate. At τ = 0 the expressly stipulated value of the power factor is 1; no division by τ occurs. Uniqueness at 934–941 uses real-torus coefficients and strip identity, not boundedness of a competing solution. In particular it applies to g = 0. Conjugation changes both k and the imaginary denominator's sign, so conjugate symmetry and realness are correct. The operator-norm argument avoids a spurious column-count factor.

**Edges and norms.** Part 0 fixes n ≥ 2; n = 0 is not an admissible instance of the KAM interfaces (in particular `|Ω₀| = 1` would not extend to the zero-dimensional space). The Fourier/cohomological arguments work also for n = 1, including τ = 0 when a Diophantine frequency exists. No uniform bound as δ tends to zero is asserted, and δ arbitrarily close to ρ is allowed. Unbounded holomorphic functions are used only in classes where the proof needs local compactness, thinner-strip boundedness, or Fourier uniqueness. No periodicity is needed by the open-domain Taylor/Cauchy lemmas. Matrix transposes, vector max norms and induced operator norms are kept distinct.

**Measure constants.** A max-norm Lipschitz map sends the portion of S in a cube of side ℓ into a cube of side Λℓ, without a Euclidean dimension factor. Closed-box approximation gives cubical covers with arbitrarily small volume excess. Empty intersections may simply be discarded. Infinite source measure is trivial for Λ > 0; if Λ = 0, a nonempty image is a singleton and has zero measure in positive dimension. These routine cases complete the cover proof. McShane's empty-source extension is zero; as usual a specified sup bound β is nonnegative. Coordinate clamping has constant 1. For λ = 1/2 the lipeomorphism has forward constant 3/2 and inverse constant 2. These are exactly the constants Part 4 uses.

## Consolidation check

**Passed for the reviewed scope.** Mechanical extraction found no duplicate labels and no unresolved `ref`/`eqref` target in Parts 0–4 and the preamble. There are 111 direct Part 1 reference occurrences in Parts 2–4: 42 in Part 2 (20 distinct targets), 21 in Part 3 (13), and 48 in Part 4 (24). Each cited statement was inspected with its point-of-use context; the consolidation diff was also checked for deleted local proofs.

| Consolidated material | Consumer evidence and applicability |
| --- | --- |
| Matrix/Cauchy tools in Part 2 | Part 2:123–211, 418–425, 567–590 and 838–877. Rectangular transpose factor is 2n where needed; `|ω|₁ ≤ nΘ` recovers the former transport bound. The matrix cohomological a-priori corollary does not add a boundedness premise on u. |
| Geometry redirected from Part 3 to Part 2 | Part 3:74–78 explicitly supplies Part 2's standing data. At 154–170, Gram invertibility, primarity and exact invariance supply every premise of `frame-identities`, `periodicity` and `exactness`. At 182–190, the frequency lemma is applied with ε = 0, so no missing ε ≤ 1 condition occurs. At 213–236, `E_sym = 0` and `DE = 0` give `QP = I` and the exact triangular system. The formula `NᵀΩ₀ = BLᵀ` is still derived locally. No argument invokes a completed G1 to prove G2. |
| Part 3 local increments/Taylor/iteration deleted | Part 3:315–340, 400–405, 441–484 and 541–562. Bounded W and L justify the phase Cauchy estimates; the full-strip increment uses `increments-open`, which allows it. The Taylor segment stays in the μ-ball. The fixed phase gives zero tangential average throughout iteration. Both cohomological losses and `Q2^p y₀ ≤ 1/2` are supplied. |
| Uniform limit in Part 2 | Part 2:1055–1072 proves uniform convergence of derivative differences and pointwise convergence of Kₛ. Primary Kₛ themselves are unbounded, but the limit lemma does not require bounded Kₛ; the differences have summable bounds. |
| Part 4 averages and real restrictions | Part 4:537–543 retains the direct integral-norm proof for a function only defined on the cube, rather than misapplying the periodic matrix lemma. At 710–715 and 929–943, the translated displacement is continuous and periodic. At 1025–1059, analyticity, real derivatives and the real Hamiltonian field have their stated domains. |
| Mixed differences on a possibly nonconvex domain | Part 4:800–818 retains a separate corollary proving the estimate on the contained parallelogram. It does not pretend that Part 1's convex-open-domain statement directly covers an arbitrary U. The shifted-torus use at 852–858 establishes parallelogram containment. |
| Lagrangian property and g = 0 | Part 4:975–1006 supplies thinner-strip boundedness for the periodic products used in averages, then invokes the unrestricted uniqueness class of Part 1 and strip identity. No bound on a full-strip derivative is silently substituted. |
| STAB | Part 4 retains its own unperturbed-reference proof, 583–667. It does not substitute Part 2's cruder absolute perturbation bounds for the conclusion margins. Two half-width Cauchy losses, the μ-neighbourhood and the Neumann hypotheses are present. |
| Part 4 extension/image argument | Part 4:1096–1099 and 1150–1183. The inverse frequency map costs `Lⁿ`; the extension is 1/2-Lipschitz and clamped at η₀; the forward image costs `(3/2)^(2n)`. The angle box has volume `2ⁿ`, yielding `(9/2)ⁿ`, as claimed. No equivariance of the extension is required: bounded displacement gives the enlarged angle box. |

No removed local step was found to be needed without a replacement. This conclusion is a consolidation sanity check and review of infrastructure consumption, not a new complete source-correspondence certification of HEAD, G1 or G2.

## Lean relevance and remaining implementation work

Read-only inspection covered the current sources under `KAM/Strip/`, `KAM/Fourier/`, `KAM/Diophantine/` and `KAM/Matrix/`, and the relevant installed Mathlib source declarations. No Lean process was run and no implementation or axiom-closure claim is made.

- `KAM/Strip/Regularity.lean` proves multivariable derivative regularity and `ContDiffOn` results, not the several-variable `AnalyticOnNhd` conclusion. The cited Mathlib `DifferentiableOn.analyticOnNhd` at `Mathlib/Analysis/Complex/CauchyIntegral.lean:706` has source domain ℂ. It cannot directly discharge the ℂᵐ theorem. A provider following the explicit iterated-integral proof is required, including conversion from the multiindex series to Mathlib's `FormalMultilinearSeries` and a positive convergence radius. This is a nontrivial implementation obligation; the paper supplies its mathematics rather than silently importing it as E11.
- The inspected Fourier and Diophantine infrastructure is on coefficient families. In particular `weightedNorm_solve_le` has the scalar coefficient radius and constant used in Part 1. It does not already prove the contour-shift, function summation, coefficient-integral, or function-space cohomological bridge. Those need providers. E7 is genuinely available through `UnitAddTorus.hasSum_mFourier_series_apply_of_summable` (`Analysis/Fourier/AddCircleMulti.lean:330`), but descending a continuous periodic function to that torus and matching its Haar integral with the unit-cube integral remain explicit bridge work.
- Uniform limits have the advertised Mathlib support (`Analysis/Calculus/UniformLimitsDeriv.lean:420`). McShane extension exists in `Topology/MetricSpace/Lipschitz.lean:344`. The exact max-norm Hausdorff/Lebesgue equality and image estimate exist in `MeasureTheory/Measure/Hausdorff.lean:889` and `:734`. Thus no extra dimension constant or new measure theorem is needed for the Part 4 use; product-space and clamping wrappers still need implementation.
- The norm constants `1, 4, 32` are consistent with `KAM/Strip/Cauchy.lean` and `HigherCauchy.lean`; the matrix perturbation constants match the Neumann source. File existence and source inspection here are not substitutes for compiling consumers or printing their axioms.

Beyond E1–E10, the proofs use ordinary finite-dimensional linear algebra/topology, basic calculus rules, exponential/geometric-series identities and convergence tests. These are either explicitly derived or standard library-level operations. I found no additional unannounced substantive theorem needed for the mathematics. Availability of every wrapper in Mathlib was not asserted or exhaustively certified.

## Verification and handoff

- Authorized build: `cd /root/code/KAM/blueprint && latexmk -pdf -interaction=nonstopmode -outdir=.build/review-p1 blueprint.tex` — exit 0. Final output: `Output written on .build/review-p1/blueprint.pdf (59 pages, 1029981 bytes)` and `All targets (.build/review-p1/blueprint.pdf) are up-to-date`.
- Final LaTeX log: no undefined references, duplicate-label warnings, LaTeX errors or overfull boxes; one `Underfull \\vbox (badness 10000)` at log line 502. First-pass undefined-reference messages disappeared after latexmk's reruns.
- Python extraction of labels, references and lemma environments: `Duplicate labels: []`; `Unresolved ref/eqref targets: []`; `Part 1 lemma count: 34`; reference counts as recorded above.
- Input SHA-256 values were rechecked; the report is attached to those exact bytes despite concurrent unrelated repository activity.
- `scripts/lint_sources.sh`, targeted Lean builds and `#print axioms` were **not run**, because the brief explicitly says “No Lean.” The lint script invokes `scripts/abi_hashes.py`, which launches `lake env lean` and writes a temporary Lean file; running it would violate this review's more specific restriction. No Lean module changed, so there is no new main Lean result whose axioms this handoff could report.
- Changed by this reviewer: only `blueprint/reviews/p1-review-1.md`; generated build files stay under the authorized private output directory. Concurrent unrelated changes are not this reviewer's edits.

Suspected new defects in pinned external sources: none identified in this review. Existing errata entries mentioned in Parts 2–4 were not independently re-audited against their PDFs and are not certified here. Deviations introduced by this reviewer: none. Outstanding action: make the single positive-radius clarification P1-R1; the reviewer has intentionally not repaired the blueprint.
