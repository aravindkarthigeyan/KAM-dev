# I-STRIP-2b independent audit 1

Overall verdict: **PASS WITH NOTES**. The W-valued summation statements and the scalar/W-valued uniform convergence statements pass. Earlier audit I-STRIP-2 findings F1 and F2 are closed by the actual exported declarations. No blocking or major mathematical finding was established. Repository-wide lint fails on an unchanged frozen baseline line; this is explicitly not a clean hygiene receipt. The graph still records this package as pending.

## Scope and identity

Audited branch `k/strip2b`, HEAD `6e78a25bc8aa5df232331f364c4a001f9bdb79af`, against main `794d6c9c4474cf5e313b6fda0a018f42e1657ed2`. Implementation commit: `a0e6a8b`. Read AGENTS.md, PLAN.md, DECISIONS.md, AUDIT-PACKAGE.md, I-STRIP-2b.md, PROVER-COMMON.md, the supplied handoff and the previous I-STRIP-2 audit. Applied the lean-statement-audit binder/definition checks to this infrastructure package; graph frozen-anchor fields are all `-`, so provider sealing and manifest-bound theorem identity are not applicable.

The branch diff contains only the 469-line new module `KAM/Strip/FourierSeriesVector.lean` and its generated root import. FourierBasic, FourierSeries, frozen files and manifest are unchanged. Source contracts: blueprint/parts/p1-analysis.tex:24–48, 786–875 and docs/graph/K/DEPGRAPH.md:3302–3474, including the positive-width convention (D27).

SHA256:

```text
2e8e78de534f30654a5381f6d39b2dd26e249bbcebcd58531f03d1bcf8afdc4c  KAM/Strip/FourierSeriesVector.lean
2afd058105b3de64042c142ec1c4eeba063b3c973e26ab980e7b668bc0232407  blueprint/parts/p1-analysis.tex
```

Only this report was added to repository content by the auditor. The handoff was already untracked. Temporary probes were confined to `.lake/abi-scratch/` and removed. No state-changing git, source repair, clean, library-from-scratch build, resource override or parallel auditor Lean invocation was used.

## Node verdicts

Names have prefix `KAM.`; line locators refer to FourierSeriesVector.lean.

| Node | Lean declaration(s) | Verdict | Evidence |
|---|---|---|---|
| bp:p1:summation, forward | summation_forward_vec:380 | PASS | Absolute convergence, uniform convergence of the specified S_N, own-norm bound, holomorphy, periodicity and every coefficient identity are included in its conclusion. |
| bp:p1:summation, converse | summation_converse_vec:400 | PASS | Summability plus exact coth(πδ)^n bound at coefficient radius 2π(ρ−δ), and representation at every point of the original T_ρ. |
| step:p1:sum-bound | norm_character_smul_le:107; summable_norm_character_smul:113; summable_character_smul:119; norm_fourierSumVec_le:127; fourierSumVec_add_single:134; tendstoUniformlyOn_fourierSumVec:141; tendstoUniformlyOn_fourierSumVec_cutoff:149 | PASS | Summable majorant in W's norm; uniform convergence for the finite-set net and the exhaustive mode-size sequence. Scalar equivalents at :78 and :86 also pass. |
| step:p1:sum-holo | differentiableOn_fourierSumVec:192 | PASS | Direct complex Fréchet differentiability on all T_ρ. Summable derivative bounds are proved internally, not assumed. |
| step:p1:sum-coeff | torusCoeffW_fourierSumVec:272 | PASS | Exact W-valued Bochner coefficient equals a_k for every k. Weighted summability implies real-slice continuity and integrability. |
| step:p1:sum-converse | summableWeighted_torusCoeffW:333 | PASS | Applies proved W-valued boundary-radius decay and the exact geometric sum, with no dimension loss. |
| step:p1:sum-representation | eq_fourierSumVec_torusCoeffW:348 | PASS | Chooses an inner strip containing the arbitrary target point, proves convergence there, then uses scalar representation and separating duality. |

## Binder, carrier and constant audit

The following table expands all input binders of the two root exports, including section instances. F = summation_forward_vec, C = summation_converse_vec. SOURCE refers to blueprint:824–830 (and decay:786–788); TYPING/STANDING refers to conventions:24–48. No project-owned hypothesis bundle, custom premise typeclass or conclusion-shaped field occurs.

| Scope | Binder | Bin | Source/meaning |
|---|---|---|---|
| F,C | n : ℕ | TYPING | Fourier/domain dimension; :38, :48. No n≥1 premise is required, a strengthening. |
| F,C | W : Type* | TYPING | Target normed space; :26–28. |
| F,C | NormedAddCommGroup W | TYPING | Normed additive target; :26. |
| F,C | NormedSpace ℂ W | TYPING | Complex target; :26, :29. |
| F,C | NormedSpace ℝ W | TYPING | Real scalar restriction for integration; :46–48. |
| F,C | IsScalarTower ℝ ℂ W | TYPING | Compatibility with canonical scalar restriction, not analytic input. |
| F,C | CompleteSpace W | TYPING | Follows from finite dimension over ℂ; permits Banach targets too. |
| F | ρ : ℝ | SOURCE | :825 geometric width. |
| F | hρ : 0 ≤ ρ | STANDING | Weaker than positive-width convention :37–38. |
| F | a : (Fin n → ℤ) → W | SOURCE | :825 coefficient family. |
| F | ha : Summable (‖a_k‖ exp(2πρ modeSize k)) | SOURCE | :825 weighted absolute summability. |
| C | ρ : ℝ | SOURCE | :827, decay strip width. |
| C | δ : ℝ | SOURCE | :828 strip loss. |
| C | A : ℝ | SOURCE | Pointwise bound form of boundedness; PROVER-COMMON conventions. |
| C | hδ : 0 < δ | SOURCE | :828. |
| C | hδρ : δ < ρ | SOURCE | :828; implies positive original and reduced widths. |
| C | u : (Fin n → ℂ) → W | SOURCE | :827–828 function on strip, with arbitrary off-strip extension. |
| C | hu : DifferentiableOn ℂ u (complexStrip n ρ) | SOURCE | Decay :787, conventions :29–33. |
| C | hp : ∀ i z, z ∈ T_ρ → u(z + single i 1) = u z | SOURCE | Decay :787, conventions :36–40; equivalent integer periodicity. |
| C | hA : ∀ z ∈ T_ρ, ‖u z‖ ≤ A | SOURCE | Decay :787 boundedness in own norm. |

Counts: F = SOURCE 3, STANDING 1, TYPING 7, RULED 0, EXCESS 0. C = SOURCE 9, STANDING 0, TYPING 7, RULED 0, EXCESS 0. The compatible real action and completeness are supplied from the source finite-dimensional complex structure in the independent probes below. They are harmless typing data, not new mathematical restrictions on the intended W.

For the component results, inherited typing binders are subsets of the above. Forward component inputs are exactly ρ, a, weighted summability and (for pointwise claims) θ with strip membership; coefficient recovery additionally uses nonnegative ρ and k. Unconditional periodicity takes only a, θ, i. The uniform convergence theorems take no pointwise premise. Converse component inputs are those of C, with positive ρ replacing δ and its inequalities for representation, and θ with strip membership. Each analytic input is SOURCE or STANDING; all point/index binders are SOURCE/TYPING. No EXCESS occurs. Helper summableWeighted_of_decay_vec explicitly takes coefficient decay under its own distinct name; the source-facing theorem produces it using decay_boundary_radius at :342. Similarly clm_fourierSumVec takes summability, produced at :292/:360, rather than smuggling it into a root statement.

Quantifiers are universal with explicit numeric bounds; there is no existential constant with hidden dependence. The exponential is exactly exp(2π(ρ−δ)|k|₁), and cosh(πδ)/sinh(πδ) is coth(πδ), raised to n. The scalar dual bound uses ‖φ‖ A internally, which disappears from the W-valued result. No coordinatewise norm substitution or extra factor depending on dim W occurs. Matrix sanity examples :422–463 use Matrix.Norms.Operator; :438–440 explicitly identifies the norm as maximum row sum. Sup norms are represented by bounds for every strip point, as required by the common brief. Positive and negative integer translations follow by iteration of unit translations, since the strip is preserved under real shifts.

## Definition classification and proof checks

New definitions (no new abbrev, structure or instance):

| Definition | Whole-carrier audit |
|---|---|
| modeCutoff:52 | Literal finite set: box [-N,N]^n filtered by modeSize ≤ N. mem_modeCutoff:55 proves exact membership, monotone_modeCutoff:63 proves nesting and tendsto_modeCutoff:69 proves cofinal exhaustion of every finite set. It is exactly the blueprint S_N cutoff, not an arbitrary enumeration. |
| fourierSumVec:100 | Literal tsum of χ_k(θ) • a_k. For ℂ, fourierSumVec_complex:103 identifies the original scalar series. Lean's tsum totalization outside convergence does not support any analytic claim: weighted summability proves actual convergence on each claimed strip point in complete W. Unconditional periodicity compares identical summands and remains true outside convergence. |

For both: BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS. Neither introduces a chosen witness or fallback proof device.

Supporting semantic definitions inspected: Bridges:torusCoeffW is the actual Bochner average of χ_{−k} • v; Averages:32 integrates over the unit cube with volume one; Fourier:40 is exp(2πi k·θ); Fourier/Derivative:37 is ∑ |k_j|; frozen ComplexStrip:23 is the open coordinatewise imaginary strip. No definition hides an analytic premise. Nonintegrable Bochner totalization is not used: clm_torusCoeffW:233–238 proves integrability of the continuous integrand on the cube before commuting the functional with the integral. For finite-dimensional vector/matrix W this integral is entrywise by continuous evaluation maps.

Uniform convergence uses Mathlib Analysis/Normed/Group/FunctionSeries:32 (summable majorant), followed by the proved cofinal cutoff map. This establishes both the full finite-set net and the exact blueprint sequence on the full open strip, rather than just compact or smaller-strip convergence.

Holomorphy :195–214 uses an inner strip, the derivative ((Dχ_k).smulRight a_k), its summable majorant and hasFDerivAt_tsum_of_isPreconnected. Coefficient recovery :276–294 derives unweighted summability, continuity on the real slice and the scalar coefficient identity after applying each φ. SeparatingDual is supplied by the standard normed-space dual separation theorem, not by a user hypothesis. Representation :353–371 first obtains actual W-valued convergence, so mapping tsum through φ is legitimate. The converse uses Bridges.decay_boundary_radius, whose norm bound is proved by Hahn–Banach dual bounds and the scalar coefficient decay. No frozen theorem or provider shortcut is imported by the new file, and axiom closure has no sorryAx.

These are valid proof-route variations: derivative-series Mathlib theorem and duality/scalar coefficient recovery replace a literal W-valued termwise integral/uniqueness replay. They do not contradict the blueprint and introduce no statement deviation. The package is infrastructure and seals no frozen root. Provider exact-type probe: **N/A**.

## Findings and disposition

### A1 — Minor, pre-existing repository lint failure

Evidence: `nice -n 5 sh scripts/lint_sources.sh` exits 1, reporting frozen KamPositiveMeasure.lean:62:102. `git show main:KAM/Frozen/Theorems/KamPositiveMeasure.lean` contains the identical 102-character provider assembly line. The package diff under KAM/Frozen and manifest is empty. All other emitted lint checks pass; the new module has no overlong lines or forbidden constructs.

Proposed fix: orchestrator resolves the frozen proof-body formatting through the permitted frozen-anchor workflow, then reruns lint. Auditor did not modify frozen bytes. This prevents a claim of repository-wide lint PASS; it does not refute or block the mathematical package audit.

### A2 — Minor, graph bookkeeping remains pending

Evidence: DEPGRAPH.md:3330–3332 and analogous step blocks through :3474 retain NOT_STARTED, empty LEAN_REF and the earlier F1/F2 pending note. Proposed fix: orchestrator updates node mappings/statuses with this report and the exact declarations after acceptance. No graph edits were authorized for this audit.

Earlier I-STRIP-2 F1 is closed by :78–90, :141–154 and the exact modeCutoff lemmas. F2 is closed by the genuinely W-valued exports :272–412, with own-norm bounds and successful vector/matrix examples. No suspected mathematical erratum in the blueprint or pinned external source was established. No source-level mathematical deviation was introduced. Existing proof-route deviations are described above.

## Exact checks and outputs

`git rev-parse HEAD main`:

```text
6e78a25bc8aa5df232331f364c4a001f9bdb79af
794d6c9c4474cf5e313b6fda0a018f42e1657ed2
```

`git diff --stat main...HEAD`:

```text
 KAM.lean                           |   1 +
 KAM/Strip/FourierSeriesVector.lean | 469 +++++++++++++++++++++++++++++++++++++
 2 files changed, 470 insertions(+)
```

`git diff main...HEAD -- KAM/Frozen manifest`: empty, exit 0.
`git diff --check`: empty, exit 0.
`wc -l KAM/Strip/FourierSeriesVector.lean`: `469 KAM/Strip/FourierSeriesVector.lean`, exit 0.
`rg -n 'set_option|sorry|admit|axiom|unsafe|opaque|EuclideanSpace' KAM/Strip/FourierSeriesVector.lean`: empty, exit 1 (no matches).
The new file has copyright, module, public imports, module docstring, public noncomputable section and exposed definitions. Root regeneration check passes within lint; the branch root import is consistent with generated output.

`nice -n 5 sh scripts/lint_sources.sh`, exit 1:

```text
Lean lines over 100 characters:
/root/code/KAM-w-strip2b/KAM/Frozen/Theorems/KamPositiveMeasure.lean:62:102
check_lean_modules: PASS (287 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

`nice -n 5 lake build KAM.Strip.FourierSeriesVector`, exit 0:

```text
Build completed successfully (3144 jobs).
```

This is a targeted incremental build using the existing snapshot, not a clean rebuild or a claim that 3144 modules were freshly elaborated. No independent leanchecker replay was performed.

`nice -n 5 lake env lean .lake/abi-scratch/audit_strip2b_1.lean`, final run exit 0. It imports the audited module and prints the axioms of all 24 public theorems, then checks both full root contracts with only finite-dimensional complex target data and canonical real scalar restriction. Output:

```text
'KAM.mem_modeCutoff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.monotone_modeCutoff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.tendsto_modeCutoff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.tendstoUniformlyOn_fourierSum' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.tendstoUniformlyOn_fourierSum_cutoff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.fourierSumVec_complex' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_character_smul_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.summable_norm_character_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.summable_character_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_fourierSumVec_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.fourierSumVec_add_single' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.tendstoUniformlyOn_fourierSumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.tendstoUniformlyOn_fourierSumVec_cutoff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.norm_fderiv_character_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiableOn_fourierSumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.clm_torusCoeffW' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.clm_fourierSumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.summableWeighted_comp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusCoeffW_fourierSumVec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.summableWeighted_of_decay_vec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.summableWeighted_torusCoeffW' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.eq_fourierSumVec_torusCoeffW' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.summation_forward_vec' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.summation_converse_vec' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The first probe run printed the same 24 clean axiom lists but failed to synthesize CompleteSpace W in the two newly written generic examples. This was an auditor probe instance-registration issue, not a package failure. Adding `have : ProperSpace W := FiniteDimensional.proper ℂ W` supplied completeness from the source finite-dimensional assumption. The corrected run above has no warnings or errors. No override was used.

For reproducibility, the successful independent contract examples were:

```lean
open scoped Topology
open Filter
open KAM
example {n : ℕ} {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W]
    [FiniteDimensional ℂ W] {ρ : ℝ} (hρ : 0 < ρ) {a : (Fin n → ℤ) → W}
    (ha : Summable fun k => ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) :
    (∀ θ ∈ complexStrip n ρ, Summable fun k => ‖character k θ • a k‖) ∧
    TendstoUniformlyOn (fun (N : ℕ) (θ : Fin n → ℂ) =>
      ∑ k ∈ modeCutoff n N, character k θ • a k) (fourierSumVec a) atTop
        (complexStrip n ρ) ∧
    (∀ θ ∈ complexStrip n ρ,
      ‖fourierSumVec a θ‖ ≤ ∑' k, ‖a k‖ * Real.exp (2 * Real.pi * ρ * Fourier.modeSize k)) ∧
    DifferentiableOn ℂ (fourierSumVec a) (complexStrip n ρ) ∧
    (∀ (i : Fin n) z, z ∈ complexStrip n ρ →
      fourierSumVec a (z + Pi.single i 1) = fourierSumVec a z) ∧
    (∀ k, torusCoeffW (fun x => fourierSumVec a fun j => (x j : ℂ)) k = a k) := by
  let : NormedSpace ℝ W := NormedSpace.restrictScalars ℝ ℂ W
  have : ProperSpace W := FiniteDimensional.proper ℂ W
  exact summation_forward_vec hρ.le ha

example {n : ℕ} {W : Type*} [NormedAddCommGroup W] [NormedSpace ℂ W]
    [FiniteDimensional ℂ W] {ρ δ A : ℝ} (hδ : 0 < δ) (hδρ : δ < ρ)
    {u : (Fin n → ℂ) → W} (hu : DifferentiableOn ℂ u (complexStrip n ρ))
    (hp : ∀ (i : Fin n) z, z ∈ complexStrip n ρ → u (z + Pi.single i 1) = u z)
    (hA : ∀ z ∈ complexStrip n ρ, ‖u z‖ ≤ A) :
    (Summable (fun k => ‖torusCoeffW (fun x => u fun j => (x j : ℂ)) k‖ *
        Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k)) ∧
      ∑' k, ‖torusCoeffW (fun x => u fun j => (x j : ℂ)) k‖ *
          Real.exp (2 * Real.pi * (ρ - δ) * Fourier.modeSize k) ≤
        (Real.cosh (Real.pi * δ) / Real.sinh (Real.pi * δ)) ^ n * A) ∧
    ∀ θ ∈ complexStrip n ρ,
      u θ = fourierSumVec (torusCoeffW fun x => u fun j => (x j : ℂ)) θ := by
  let : NormedSpace ℝ W := NormedSpace.restrictScalars ℝ ℂ W
  have : ProperSpace W := FiniteDimensional.proper ℂ W
  exact summation_converse_vec hδ hδρ hu hp hA
```

Limitations: this is a source/contract, incremental-build and axiom-closure audit of the package and the identified supporting definitions, not a new audit of all transitive Mathlib proofs or frozen KAM theorems. The unqualified repository lint gate remains red solely as reported in A1.
