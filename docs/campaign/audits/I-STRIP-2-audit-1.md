# I-STRIP-2 independent retro audit 1

Overall verdict: **FAIL for unqualified full-blueprint coverage; the scalar Fourier layer passes with a partial uniform-convergence node.** No false scalar theorem, forbidden axiom, or conclusion-shaped premise was found. The failure is a coverage ruling: the general finite-dimensional codomain in the summation blueprint is narrowed to ℂ in the named exports. The missing uniform-convergence statement is a separate, nonblocking gap for the current proved consumers. Do not interpret this verdict as a refutation of the scalar results.

## Scope and baseline

Read AGENTS.md, docs/PLAN.md, docs/DECISIONS.md, docs/campaign/briefs/AUDIT-PACKAGE.md and the supplied I-STRIP-2 handoff. This is a retro audit on shared main, not a provider or branch-landing audit. Baseline HEAD: `b846a9dc17edc05cda6279799882905e5af98ad1`. Final observed HEAD: `6c0e7acee9fd31f8b13f3f267bbb03e181bf20b1`; another actor advanced shared main during the audit. A read-only baseline-to-final diff confirmed no changes to either scoped Lean file or p1-analysis.tex; graph changes were confined to Part 4 status bookkeeping. Last commit touching either scoped source: `5459d7ae04626a01f4a36e6e37c6a546be9c21ce` (Complete I-STRIP-2: Fourier series and Fourier representation on strips).

Scoped files: KAM/Strip/FourierBasic.lean (269 lines) and KAM/Strip/FourierSeries.lean (309 lines). Read supporting definitions in Strip/Fourier, Strip/Averages, Fourier/Derivative, and frozen ComplexStrip; inspected consumers in Strip/Cohomological, Strip/CohomologicalDefs, Strip/CohomologicalNodes and Head/CohUnique. Compared the named contracts in docs/graph/K/DEPGRAPH.md with blueprint/parts/p1-analysis.tex:757–874 and its standing conventions at lines 24–48. Part (a) of fourier-basic belongs to I-STRIP-3b and was not re-audited.

No repository source, frozen anchor, manifest, or tracked report was edited. No build, clean, state-changing git, resource override, or concurrent auditor Lean invocation was used. Temporary Lean probes were confined to .lake/abi-scratch and removed. The report is outside the repository as requested.

## Node verdicts

All declaration names below have prefix `KAM.`. PASS refers to the actual stated scope; where the global W-valued summation convention exceeds the scalar export, the node is explicitly PARTIAL. The componentwise language of fourier-basic is treated literally: its scalar theorem can be applied separately to each component; no vector norm estimate is being claimed there.

| Node | Declaration(s), source locator | Verdict | Reason |
|---|---|---|---|
| bp:p1:fourier-basic (b),(c) | hasSum_torusCoeff_mul_character, eq_zero_of_torusCoeff_eq_zero, eq_zero_of_torusCoeff_holomorphic; FourierBasic:162,182,193 | PASS | Continuous real periodic function with absolutely summable coefficients has the stated sum, including uniqueness at zero. Holomorphic uniqueness requires positive width and periodicity, with no boundedness premise. Part (a) excluded. |
| step:p1:fb-series | hasSum_torusCoeff_mul_character, eq_zero_of_torusCoeff_eq_zero | PASS | HasSum gives equality with the tsum at every x; vanishing coefficients supply summability rather than assuming it. |
| step:p1:fb-holomorphic | eq_zero_of_torusCoeff_holomorphic | PASS | Correct full open strip, arbitrary holomorphic periodic scalar function; restriction to the real slice plus strip_identity. |
| bp:p1:summation (forward) | differentiableOn_fourierSum, fourierSum_add_single, torusCoeff_fourierSum, norm_fourierSum_le; FourierSeries:173,168,221,161 | PARTIAL | All scalar conclusions PASS. General W-valued statement under Part 1 conventions is not exported; see F2. |
| bp:p1:summation (converse) | summableWeighted_torusCoeff, eq_fourierSum_torusCoeff; FourierSeries:271, FourierBasic:230 | PARTIAL | Scalar weighted summability, exact coth factor and representation throughout original strip PASS. General W-valued conclusion missing; F2. |
| step:p1:sum-bound | norm_coeff_mul_character_le, summable_coeff_mul_character, norm_fourierSum_le, fourierSum_add_single; FourierSeries:148,154,161,168 | PARTIAL | Pointwise absolute convergence, bound and periodicity PASS. No theorem states uniform convergence on the strip or convergence of the specified mode-size partial sums S_N; F1. Also scalar-only. |
| step:p1:sum-holo | differentiableOn_fourierSum; FourierSeries:173 | PARTIAL | Scalar holomorphy PASS with only weighted summability; derivative domination is proved internally. General W absent; F2. |
| step:p1:sum-coeff | torusCoeff_fourierSum; FourierSeries:221 | PARTIAL | Scalar coefficient recovery PASS under standing nonnegative/positive width and weighted summability. Proves integration interchange from integral-norm summability. General W absent; F2. |
| step:p1:sum-converse | summableWeighted_torusCoeff; FourierSeries:271 | PARTIAL | Scalar estimate PASS, including summability, exact exponent n and coefficient radius 2π(ρ−δ). General W absent; F2. |
| step:p1:sum-representation | eq_fourierSum_torusCoeff; FourierBasic:230 | PARTIAL | Scalar equality holds at every θ in T_ρ, not merely on one fixed smaller strip. General W absent; F2. |

If the orchestrator explicitly restricts this package to its scalar implementation, every row except sum-bound is PASS, and the appropriate scalar-package verdict is PASS WITH NOTES. That restriction must not silently certify the existing general-codomain blueprint.

## Statement and proof fidelity

Fourier indices are Fin n → ℤ, real coordinates Fin n → ℝ and complex coordinates Fin n → ℂ. `modeSize` is the ℓ¹ size of an index. The geometric strip width ρ becomes coefficient radius 2πρ throughout. There is no missing 2π or replacement of the supremum by a coefficient norm on the function side.

Forward bounds are pointwise for every strip point; this is the uniform-bound formulation of the supremum inequality. Converse bounds quantify an arbitrary real A with `∀ z ∈ complexStrip n ρ, ‖u z‖ ≤ A`. This is the bound form of boundedness, and yields the displayed blueprint estimate by taking A to be the supremum for a bounded function. The factor `cosh(πδ)/sinh(πδ)` is coth(πδ), positive for δ > 0. These are faithful bound formulations, with no wider constant dependence. No boundary decay estimate, derivative estimate, integration interchange, or uniqueness result is assumed as a hypothesis.

`torusCoeff_fourierSum` asks 0 ≤ ρ: allowed by the positive-width standing convention, and actually includes zero width. Several other exports hold for all n and need no n ≥ 1 premise, which is stronger than the strip convention. Periodicity is expressed by unit translations in each coordinate. On the strip these preserve imaginary parts; iteration, including negative translations, gives integer periodicity. FourierBasic:36–62 proves the real integer-period form explicitly.

The holomorphy proof FourierSeries:176–218 proves a summable derivative majorant on an inner strip and applies Mathlib `hasFDerivAt_tsum_of_isPreconnected` (SmoothSeries:72–86). It supplies pointwise summability at an anchor point; no separate uniform-convergence-of-values theorem is needed. This Mathlib theorem internally proves derivative uniform convergence and pointwise convergence of finite-set sums.

Coefficient recovery FourierSeries:224–264 proves unweighted summability on the real torus and applies `integral_tsum_of_summable_integral_norm`. This is a valid alternative to integrating an explicitly uniformly convergent S_N sequence. Orthogonality of characters is proved at FourierSeries:122–140 by averaging a derivative; this replaces the blueprint product-integral computation without changing its conclusion.

Representation FourierBasic:236–265 chooses an inner strip containing the individual target θ, obtains summability there, proves equality of coefficients, then uses holomorphic uniqueness. It follows the blueprint shrinking-strip argument and does not assume its target equality.

## Definitions and totalization

All four new definitions in the scoped files are exposed, with no new structures, abbreviations, instances carrying proof assumptions, or hidden theorem fields.

| Definition | Classification and whole-carrier behavior |
|---|---|
| FourierBasic:66 torusProj | Intended coordinatewise quotient ℝⁿ → (ℝ/ℤ)ⁿ, continuous, open and surjective. |
| FourierBasic:110 torusLift | Choice of one real representative of each torus point, then evaluation of v. For a nonperiodic v the choice affects the result, so it is not an intrinsic descent on that larger carrier. Every descent/continuity/coefficient theorem supplies periodicity; torusLift_torusProj proves choice independence in precisely that use. No exploitable fallback. |
| FourierSeries:68 modeForm | Genuine continuous complex linear form v ↦ Σ k_j v_j, with the correct ℓ¹ operator-norm upper bound for the max norm. |
| FourierSeries:145 fourierSum | Intended complex tsum of a_k χ_k. Lean totalizes nonsummable series as zero. Analytic and coefficient-recovery theorems have weighted summability, which ensures actual convergence on their claimed domains. Unconditional periodicity is also valid because the summands agree pointwise after translation, even in the nonsummable case. No substantive conclusion relies on nonsummability. |

Supporting existing definitions checked: Fourier:40 character is exp(2πi Σ k_j θ_j); Fourier:44 torusCoeff is the integral against χ_(−k), via Averages:32 torusAverage on the closed unit cube with volume one. The integral has Mathlib's usual totalization outside integrability; the audited uses have continuous integrands on the compact cube. FourierBasic:142–157 identifies the coefficients with Mathlib's torus coefficients, accounting for Ioc versus Icc by almost-everywhere equality. Fourier/Derivative:37,48,52 define the intended mode size, weighted absolute summability and weighted sum. The latter sum is interpreted as a norm only on summable families. Frozen ComplexStrip:23 is the intended open coordinatewise strip. No definition is an assumed difficult analytic result.

## Findings

### F1 — Minor coverage gap: uniform convergence is not exported

Evidence: blueprint:836–839 and graph sum-bound explicitly say that the series and S_N converge uniformly on T_ρ. FourierSeries:154–170 exports pointwise Summable, a uniform pointwise norm bound and periodicity, with no uniform convergence conclusion. Searching `TendstoUniformly|HasSumUniformly|uniform` in Strip/Fourier*.lean found no matches. Thus sum-bound cannot receive full PASS as written.

Consumer check: the graph's direct users are summation, sum-holo, sum-coeff and sum-representation (DEPGRAPH:3320,3381,3409,3465). The first and last need the bound/periodicity and convergence already proved. The other two use the valid alternative Mathlib routes described above. Strip/Cohomological:224–248 uses periodicity, differentiability, norm bound and coefficient recovery; :277 and :333 and Head/CohUnique:42 use holomorphic uniqueness. No inspected current Lean consumer needs an explicit uniform convergence theorem for S_N. This is not a hidden missing premise in a compiled proof.

Proposed fix: export uniform convergence from the existing summable majorant `norm_coeff_mul_character_le` and prove that the mode-size cutoffs exhaust the index set; alternatively retain PARTIAL for sum-bound and document the precise bypass of its uniform-convergence portion. Do not mark the whole node BYPASSED, since its bound and periodicity are used.

### F2 — Major coverage gap: general W-valued summation is scalar-only

Evidence: blueprint:24–28 declares W to be a finite-dimensional complex normed space, including vector, matrix and operator spaces, and :824–831 does not restrict the summation lemma to scalars. The coefficient-decay proof explicitly takes u valued in W at :792. All named summation exports use `a : (Fin n → ℤ) → ℂ` or `u : (Fin n → ℂ) → ℂ` (FourierSeries:145,161,173,221,271–277 and FourierBasic:230–234). Their weighted predicate and norm are also specifically complex-valued in Fourier/Derivative:48–53. Hence these exports establish the scalar specialization, not the full standing-codomain theorem.

The explicit componentwise reading of fourier-basic(b),(c) is harmless: those scalar identities can be applied entry by entry. It does not automatically supply a Lean theorem for summation with the blueprint's W-norm bound, particularly for its specified matrix operator norm. Mathematical derivability from the scalar results is not an exported formal contract.

Proposed fix: generalize the series, coefficient integral, weighted predicate and estimates to appropriate complete complex normed spaces (finite-dimensional W suffices), or add finite-dimensional/vector/matrix wrappers that prove the stated norm bounds. Until then record scalar coverage and leave the general blueprint node PARTIAL. A scope ruling accepting only scalars should be explicit rather than silently narrowing the source contract.

### F3 — Minor bookkeeping note

The inspected summation graph blocks still have LEAN_STATUS: NOT_STARTED and LEAN_REF: -. The handoff mapping is proposed, not authoritative. Update the graph only after resolving scope, and preserve the sum-bound partial status unless its missing conclusion is added. No graph edits were made by the auditor.

No suspected mathematical erratum in the blueprint or pinned external literature was established. F1 and F2 are implementation coverage gaps. Alternative derivative, orthogonality and integral-interchange routes are proof-route deviations to record, not source corrections. No deviation was introduced by this audit.

## Checks and exact output

`git status --short` initially and finally: empty; exit 0.

`git rev-parse HEAD` at the baseline and intermediate recheck:

```text
b846a9dc17edc05cda6279799882905e5af98ad1
```

Final HEAD recheck returned `6c0e7acee9fd31f8b13f3f267bbb03e181bf20b1`. `git diff b846a9dc17edc05cda6279799882905e5af98ad1 HEAD -- KAM/Strip/FourierBasic.lean KAM/Strip/FourierSeries.lean blueprint/parts/p1-analysis.tex docs/graph/K/DEPGRAPH.md` showed only Part 4 graph status changes, no scoped source/contract changes.

`git diff main...HEAD --stat`, `git diff main...HEAD -- KAM/Frozen manifest`, and `git diff -- KAM/Strip/FourierBasic.lean KAM/Strip/FourierSeries.lean KAM/Frozen manifest`: empty, exit 0. Since this is already main, the branch comparison is baseline confirmation, not historical proof that no earlier frozen change ever occurred. `git diff --check`: empty, exit 0.

`wc -l KAM/Strip/FourierBasic.lean KAM/Strip/FourierSeries.lean`:

```text
  269 KAM/Strip/FourierBasic.lean
  309 KAM/Strip/FourierSeries.lean
  578 total
```

`rg -n 'set_option|sorry|admit|axiom|unsafe|opaque|EuclideanSpace' KAM/Strip/FourierBasic.lean KAM/Strip/FourierSeries.lean`: no matches, exit 1. Both files have copyright, module, public interface imports, module docstring and public noncomputable section. All new definitions have @[expose].

`nice -n 5 sh scripts/lint_sources.sh`: exit 0, exact output:

```text
check_lean_modules: PASS (283 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The lint script's ABI checker invokes lake env lean on a temporary .lake/abi-scratch file and deletes it in a finally block. Running the entire lint under nice -n 5 passes that niceness to its Lean child. It completed before the audit axiom probe was started; no overlap occurred.

Axiom probe command: `nice -n 5 lake env lean .lake/abi-scratch/audit_strip2_1.lean`. Contents: `import KAM.Strip.FourierBasic`, then `#print axioms KAM.<name>` for every theorem in the following list. Final run exit 0. Every one of the 32 output lines was exactly of the form:

```text
'KAM.<name>' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Names (all results, including helpers, not only mapped results):

```text
periodic_intVec
continuous_torusProj
surjective_torusProj
isOpenMap_torusProj
isQuotientMap_torusProj
exists_eq_add_intVec_of_torusProj_eq
torusLift_torusProj
continuous_torusLift
mFourier_torusProj
mFourierCoeff_torusLift
hasSum_torusCoeff_mul_character
eq_zero_of_torusCoeff_eq_zero
eq_zero_of_torusCoeff_holomorphic
torusCoeff_sub
eq_fourierSum_torusCoeff
convex_complexStrip
exists_mem_complexStrip_sub
modeForm_apply
norm_modeForm_le
hasFDerivAt_character
fderiv_character_single
character_zero
character_mul
norm_character_real
torusAverage_character
norm_coeff_mul_character_le
summable_coeff_mul_character
norm_fourierSum_le
fourierSum_add_single
differentiableOn_fourierSum
torusCoeff_fourierSum
summableWeighted_torusCoeff
```

The initial generated probe accidentally matched the words “theorem on” inside the module docstring, adding `#print axioms KAM.on`; it exited 1 with unknown constant KAM.on while printing the correct 32 axiom results. Removed that spurious command and reran successfully. This was a probe-generation error, not a project elaboration failure or heartbeat issue. Deleted the corrected probe after use.

Provider exact-type probe: not applicable; neither scoped file is a provider, and this package seals no frozen theorem. No targeted build was run because the explicit shared-main audit restriction permits only probes. The probes import existing compiled artifacts and inspect their axiom closures; they do not rebuild the two source files or independently replay their proofs with leanchecker. Source reading, existing artifact import, lint and axiom inspection are the validation actually performed. No fresh-build or kernel-replay claim is made.
