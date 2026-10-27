# I-P1B independent audit 1

Overall verdict: **PASS WITH NOTES**.

Audited 2026-10-27 at commit `457aea48bcf60c4efb79d4b305803165d14cc1fd` on `k/p1b`.
All seven node statements are supplied with the blueprint's premises and conclusions, allowing its documented standing conventions and genuine generalizations. The targeted build, source lint, exported-type probes and all 35 theorem axiom checks pass. There is one minor documentation finding, with no mathematical or formal-proof blocker.

## Scope and frozen inputs

Authority: `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the audit/package/common briefs, and the handoff. This is a focused source-correspondence and proof audit, using the manuscript-audit and lean-statement-audit methods, adapted to infrastructure nodes: these seven nodes have `FROZEN_FILE: -`, rather than manifest-bound theorem anchors. No frozen theorem is being sealed or certified here.

Permission envelope: inspect the repository, run serialized targeted checks and temporary probes under `.lake/abi-scratch/`, and write this report only. No repair, commit, push, generated-file change or manifest change was performed. Refutation consisted of a separate adversarial pass on the width endpoint, completeness, periodicity conversion, infinite-sum summability, zero dimension, and iteration thresholds.

The requested `git diff main...HEAD` contains four new modules and four generated root imports in `KAM.lean`; no other tracked changes. At inspection, `main` was `68287300cfc71264d2b5b4aadc4cc3a1e68ebc8d`; merge base was `d195dc4d50a4bde696a72cc2aea576d2710688d5`. The handoff was already untracked before the audit and was left untouched. Mathlib revision: `56a005855ea17e0b0958f73ec801ae140b0a1679`.

Frozen-v1 SHA-256 inventory (no audited source changed during the audit):

| File | SHA-256 |
|---|---|
| `KAM/Strip/Limits.lean` | `fcd87784380b5965a8f83f68cf2cb2336116c7bf035739b5624dec60cff2776c` |
| `KAM/Strip/Periodic.lean` | `7f07559e42f8784a6d4c3fa6ae3dec05a42af52f8b06be0bd1f7013f81d5231c` |
| `KAM/Fourier/ExpSums.lean` | `670a2fbd87ede11c231a453bbf92a999bac4fb57b468dfbbdd5f975fe87bd07e` |
| `KAM/Analysis/Iteration.lean` | `7cbf2f7a51e3627cc8ff4e0c745dcb9570d094279e871342b5b3e42f94c0722b` |
| `blueprint/parts/p0-conventions.tex` | `b22b60acce213ab45b3d588f17191fa284facc1235fea2c52542ce33bceeab3d` |
| `blueprint/parts/p1-analysis.tex` | `6f8eeb3339b3ec109a426e416b1cbc4c52e3bbcf5bc3a8e23c70b93dc6b2431e` |
| `blueprint/parts/p2-aposteriori.tex` | `c8fe335ca1f87390d803ffec36254804290f3962910284b9d7afd8fec3530f30` |
| `docs/graph/K/DEPGRAPH.md` | `a8a122317c8df7de0c25bfe0189c65d1c03b0ef49b8212f7b4b82bca92e13be0` |
| `docs/campaign/briefs/AUDIT-PACKAGE.md` | `76b821648f341c99cd6787211cf983e5e1f281aff186f9b9c0b252b8f9d0e275` |
| `docs/campaign/briefs/I-P1B.md` | `f583cbdd660f6c078b18fc76c11523454e3f9ef19a47a98e556e1bc3ee578b02` |
| `docs/campaign/audits/I-P1B-handoff.md` | `7d3fd81ac967d08cd2f3c0ae586ccbd9f2c32d1f626ea169e020a2d9522319cb` |
| `.lake/packages/mathlib/Mathlib/Analysis/Calculus/UniformLimitsDeriv.lean` | `77ce5b3aded8b40f85a9f8d99b900f1b631902963c1ad4c1f28bbffbdca20b37` |

## Node-by-node result

All blueprint locators below are in `blueprint/parts/p1-analysis.tex` at the pinned snapshot above. All unqualified declarations in this table have prefix `KAM.`.

| Node; source statement | Lean declaration; locator | Verdict | Reason |
|---|---|---|---|
| `bp:p1:uniform-limits`; 362–366 | `uniform_limits`, `uniform_limits_isPrimaryOnStrip`, `uniform_limits_isRealOnReals`; `Strip/Limits.lean:49,88,130` | PASS WITH NOTES | Open domain, pointwise function convergence, uniform derivative convergence, holomorphy and derivative equality agree. Primarity and realness are separately exported; their hypotheses are weaker because derivative convergence is unnecessary. Realness explicitly records standing `0 < r`. |
| `bp:p1:increments-open`; 423–426 | `increments_open`; `Strip/Limits.lean:63` | PASS | Same open-domain holomorphy, operator-norm derivative bound and real segment inclusion; exact conclusion `‖f(z+w)-f(z)‖ ≤ A*‖w‖`. No gratuitous `A ≥ 0` premise. |
| `bp:p1:periodic-bounded`; 515–517 | `periodic_bounded`; `Strip/Periodic.lean:104` | PASS | Exactly existence of a uniform bound on each thinner open strip, without assuming boundedness on the original strip. `A` occurs after `u,ρ,ρ′`, as allowed. Coordinatewise periodicity is equivalent to integer-vector periodicity. |
| `bp:p1:strip-identity`; 529–532 | `strip_identity`; `Strip/Periodic.lean:170` | PASS | Same positive width, holomorphy, zero on all real points, and zero throughout the strip. Banach-valued extension specializes to the source's finite-dimensional `W`. |
| `bp:p1:periodic-average`; 699–701 | `periodic_average`; `Strip/Periodic.lean:292` | PASS | Same continuity, periodicity, arbitrary real translation and equality of averages on the volume-one unit cube. Real normed target includes the source scalar/vector/matrix cases. |
| `bp:p1:exp-sums`; 725–732 | `KAM.Fourier.exp_sums`; `Fourier/ExpSums.lean:256` | PASS | All three clauses, sharp scalar constant, coth product, coth bound, and `(8*n/x)^n` match. `HasSum` supplies convergence as well as the sum identity. Extends validly to `n=0`. |
| `bp:p1:iteration`; 1007–1012 | `quadratic_iteration`; `Analysis/Iteration.lean:147` | PASS | Same recurrence, nonnegativity and two distinct smallness thresholds. Delivers the exact superexponential bound and convergence, and the second bound under only `q ≤ 1`. Real powers retain the source real parameter `p`. |

No constants acquire additional dependence. The only existential bound is the arbitrary periodic function's bound `A`; no dimension-only uniformity is claimed. Finite Pi types use their max norm; continuous linear maps use its induced operator norm. `modeSize` is literally `∑ j, |(k j : ℝ)|` (`KAM/Fourier/Derivative.lean:37`). `torusAverage` is literally the Lebesgue integral over `Set.pi univ (fun _ => Icc 0 1)` (`KAM/Strip/Averages.lean:36`); the cube has volume one. Neither a coefficient radius nor an unintended Euclidean norm enters these results.

## Expanded input-binder classification

SOURCE = blueprint data/premise; STANDING = Part 0 or the finite-dimensional `W` convention; TYPING = ambient type/instance; RULED and EXCESS are empty. The following shared typing rows are inherited exactly where listed. Bound coordinate/sequence indices inside the displayed predicates are the source indices, with unchanged scope; they add no hidden premises.

| Shared scope | Binder | Bin | Evidence |
|---|---|---|---|
| uniform limits, increments | `E` | TYPING | Source complex domain; generalized normed domain |
| uniform limits, increments | `[NormedAddCommGroup E]` | TYPING | Ambient norm |
| uniform limits, increments | `[NormedSpace ℂ E]` | TYPING | Complex differentiability |
| uniform limits, increments | `F` | TYPING | Source target `W` |
| uniform limits, increments | `[NormedAddCommGroup F]` | TYPING | Ambient norm |
| uniform limits, increments | `[NormedSpace ℂ F]` | TYPING | Complex target |
| primary, realness, boundedness, identity, average | `n` | TYPING | `Fin n` domain; no lower dimension premise added |
| boundedness, identity, average | `F` | TYPING | Source target `W`, generalized |
| boundedness, identity, average | `[NormedAddCommGroup F]` | TYPING | Ambient norm |
| boundedness, identity | `[NormedSpace ℂ F]` | TYPING | Holomorphic target |
| average | `[NormedSpace ℝ F]` | TYPING | Bochner integration of source real/complex/vector/matrix values |

Each individual input below is classified; inherited typing binders above are not repeated. The finite-dimensional completeness convention is from Part 1, lines 25–28; it is automatic for the original target, not a new assumption imposed on its consumers.

| Declaration/scope | Binder | Bin | Source |
|---|---|---|---|
| uniform_limits | `[CompleteSpace F]` | STANDING | p1:25–28, finite-dimensional W |
| uniform_limits | `V` | SOURCE | p1:362–366 |
| uniform_limits | `hV` | SOURCE | p1:362–366 |
| uniform_limits | `K` | SOURCE | p1:362–366 |
| uniform_limits | `K₀` | SOURCE | p1:362–366 |
| uniform_limits | `Λ` | SOURCE | p1:362–366 |
| uniform_limits | `hK` | SOURCE | p1:362–366 |
| uniform_limits | `hpt` | SOURCE | p1:362–366 |
| uniform_limits | `hder` | SOURCE | p1:362–366 |
| uniform_limits_isPrimaryOnStrip | `r` | SOURCE | p1:364–365; primary expanded at 394–397 |
| uniform_limits_isPrimaryOnStrip | `K` | SOURCE | p1:364–365; primary expanded at 394–397 |
| uniform_limits_isPrimaryOnStrip | `K₀` | SOURCE | p1:364–365; primary expanded at 394–397 |
| uniform_limits_isPrimaryOnStrip | `hpt` | SOURCE | p1:364–365; primary expanded at 394–397 |
| uniform_limits_isPrimaryOnStrip | `hprim` | SOURCE | p1:364–365; primary expanded at 394–397 |
| uniform_limits_isRealOnReals | `r` | SOURCE | p1:364–365,398–400; realness expanded as zero imaginary parts |
| uniform_limits_isRealOnReals | `K` | SOURCE | p1:364–365,398–400; realness expanded as zero imaginary parts |
| uniform_limits_isRealOnReals | `K₀` | SOURCE | p1:364–365,398–400; realness expanded as zero imaginary parts |
| uniform_limits_isRealOnReals | `hpt` | SOURCE | p1:364–365,398–400; realness expanded as zero imaginary parts |
| uniform_limits_isRealOnReals | `hreal` | SOURCE | p1:364–365,398–400; realness expanded as zero imaginary parts |
| uniform_limits_isRealOnReals | `hr` | STANDING | p0:19; documented at Limits:126–129 |
| increments_open | `U` | SOURCE | p1:423–426 |
| increments_open | `hU` | SOURCE | p1:423–426 |
| increments_open | `f` | SOURCE | p1:423–426 |
| increments_open | `hf` | SOURCE | p1:423–426 |
| increments_open | `A` | SOURCE | p1:423–426 |
| increments_open | `hA` | SOURCE | p1:423–426 |
| increments_open | `z` | SOURCE | p1:423–426 |
| increments_open | `w` | SOURCE | p1:423–426 |
| increments_open | `hseg` | SOURCE | p1:423–426 |
| periodic_bounded | `ρ` | SOURCE | p1:515–517; periodicity p1:34–35 |
| periodic_bounded | `ρ′` | SOURCE | p1:515–517; periodicity p1:34–35 |
| periodic_bounded | `u` | SOURCE | p1:515–517; periodicity p1:34–35 |
| periodic_bounded | `hu` | SOURCE | p1:515–517; periodicity p1:34–35 |
| periodic_bounded | `hp` | SOURCE | p1:515–517; periodicity p1:34–35 |
| periodic_bounded | `hρ` | SOURCE | p1:515–517; periodicity p1:34–35 |
| strip_identity | `[CompleteSpace F]` | STANDING | p1:25–28, finite-dimensional W |
| strip_identity | `r` | SOURCE | p1:529–532 |
| strip_identity | `hr` | SOURCE | p1:529–532 |
| strip_identity | `v` | SOURCE | p1:529–532 |
| strip_identity | `hv` | SOURCE | p1:529–532 |
| strip_identity | `h0` | SOURCE | p1:529–532 |
| periodic_average | `v` | SOURCE | p1:699–701; periodicity p1:34–35 |
| periodic_average | `hv` | SOURCE | p1:699–701; periodicity p1:34–35 |
| periodic_average | `hp` | SOURCE | p1:699–701; periodicity p1:34–35 |
| periodic_average | `a` | SOURCE | p1:699–701; periodicity p1:34–35 |
| exp_sums | `n` | TYPING | p1:726; n≥1 dropped by generalization |
| exp_sums (a) | `y` | SOURCE | p1:728 |
| exp_sums (a) | `a` | SOURCE | p1:728 |
| exp_sums (a) | `τ` | SOURCE | p1:728 |
| exp_sums (a) | `0≤y` | SOURCE | p1:728 |
| exp_sums (a) | `0<a` | SOURCE | p1:728 |
| exp_sums (a) | `0≤τ` | SOURCE | p1:728 |
| exp_sums (b) | `x` | SOURCE | p1:729 |
| exp_sums (b) | `0<x` | SOURCE | p1:729 |
| exp_sums (c) | `x` | SOURCE | p1:730 |
| exp_sums (c) | `0<x` | SOURCE | p1:730 |
| quadratic_iteration | `Q` | SOURCE | p1:1008–1011 |
| quadratic_iteration | `p` | SOURCE | p1:1008–1011 |
| quadratic_iteration | `y` | SOURCE | p1:1008–1011 |
| quadratic_iteration | `hQ` | SOURCE | p1:1008–1011 |
| quadratic_iteration | `hp` | SOURCE | p1:1008–1011 |
| quadratic_iteration | `hy` | SOURCE | p1:1008–1011 |
| quadratic_iteration | `hrec` | SOURCE | p1:1008–1011 |
| quadratic_iteration first implication | `Q*2^p*y₀≤1/2` | SOURCE | p1:1009 |
| quadratic_iteration second implication | `Q*2^p*y₀≤1` | SOURCE | p1:1010 |

Individual-input table counts: SOURCE 61, STANDING 3, TYPING 1, RULED 0, EXCESS 0; shared typing table: 11 rows, each inherited only in its indicated scopes. No logical assumption is hidden in a class or bundled record. `IsPrimaryOnStrip` expands to the integer-shift identity; `IsRealOnReals` expands to existence of a real phase point for every real angle. The latter is proved equivalent to vanishing imaginary parts in `isRealOnReals_iff_im`.

## Answers to the three audit questions

**1. Positive radius: accepted as STANDING; intended consumer supplies it.**
Part 0, line 19 says “The complex strip of width $ρ>0$ is $T_ρ=…$.” The Lean docstring (`Limits.lean:126–129`) explicitly identifies `0 < r` as that convention, satisfying the audit brief's exception. For `n ≥ 1`, convergence on an empty strip cannot control the limit's values on real points: take all `K_s=0`, and take `K` constant with an imaginary action coordinate, with `r≤0`. The realness conclusion without the convention would be false.

The source consumer `step:p2:lim-primary` at `p2-aposteriori.tex:1071–1073` acts on `T_{ρ∞}`; its governing iteration statement at 972 and schedule at 936 explicitly assume `0<ρ∞<ρ`. Thus the needed strict positivity is available. The other direct graph use, `step:p1:sum-holo` at `p1-analysis.tex:841–847`, uses the holomorphy portion, which has no positivity premise. A compiled composition probe supplies `hr.1 : 0 < r` from `0 < r ∧ r < ρ` to the realness export. `rg` found no downstream Lean calls to this export at the audited revision: this is source-consumer compatibility and a checked composition, not certification of a future implemented Part 2 consumer. The zero-dimensional documentation exception is finding M1 below.

**2. The ul-* steps: legitimate theorem coverage, with a precision qualification.**
`Limits.lean:55–60` invokes `hasFDerivAt_of_tendstoUniformlyOn` with exactly `V`, uniform convergence of `fderiv`, actual derivatives derived from holomorphy plus openness, and pointwise convergence. It obtains `HasFDerivAt K₀ (Λ x) x` at every `x∈V`, then extracts both requested conclusions. No derivative-continuity or function-uniform-convergence assumption is added.

The pinned Mathlib file `Analysis/Calculus/UniformLimitsDeriv.lean:420–426` reduces this to its locally uniform theorem. Its `difference_quotients_converge_uniformly` (259–298) controls differences using the convex-ball mean value inequality (295–298) and passes from the Cauchy bounds to the pointwise limit; `hasFDerivAt_of_tendstoUniformlyOnFilter` (309–395) completes differentiability. These discharge the mathematical content of `ul-differences`, `ul-limit`, `ul-derivative`. They do not export the blueprint's literal intermediate `η_s` inequalities; Mathlib uses a difference-quotient/uniform-Cauchy formulation and an ε/3 decomposition rather than the blueprint's ε/2 presentation. “Covered” in the handoff is valid, but the module docstring's “exactly the proof” should be understood mathematically, not as identical intermediate declarations. No graph-step or root result is assumed as a premise. `ul-primary` is discharged separately by the two strip exports, using uniqueness of limits and closedness of real phase points.

**3. Generalizations: source meaning retained, with these exact qualifications.**

- General `E,F`: `increments_open` works for arbitrary complex normed spaces. `uniform_limits` requires `[CompleteSpace F]`, and `strip_identity` likewise has a Banach target. Thus “any complex normed E/F” is too broad as a literal description of all exports. This is nonetheless an extension of the original finite-dimensional setting, whose completeness is automatic; the finite-dimensional uniform-limits specialization compiled without an added completeness premise. There is no completeness requirement on `E`.
- `exp_sums` for every `n`: a strict extension. For `n=0`, the full lattice is a singleton with mode size zero, and the nonzero subtype is empty. Clause (b) reads `1=1`; clause (c) reads `0≤1`, using natural exponent zero. For `n≥1` the original constant and all clauses are unchanged. `HasSum` avoids relying on a totalized divergent `tsum`.
- Real `p`: the source already states `p≥0` without an integer restriction, and the graph imposes none. The Lean real parameter is faithful rather than necessarily a strict strengthening; it includes all natural/integer specializations. The helpers `quadratic_iteration_super` and `quadratic_iteration_linear` additionally drop `p≥0` (and the linear helper drops `q≤1`), which genuinely strengthens those inequalities. The main theorem retains `p≥0` for convergence and presents both source thresholds exactly.
- Coordinatewise periodicity: an equivalent formulation on these translation-invariant strips, not a strict strengthening by itself. `periodic_single_int` (`Periodic.lean:44–62`) proves positive and negative integer shifts; `periodic_int_shift` (65–87) sums them. Conversely, integer-vector periodicity gives each unit-coordinate identity immediately. The average proof applies the same coordinatewise period-one convention on all of `ℝⁿ`, matching Part 0 line 12 and Part 1 lines 34–35.
- `periodic_average` actually allows any real normed target, without completeness in its elaborated type. For the source's finite-dimensional targets the Bochner integral is the intended ordinary integral. Its additional noncomplete cases should not be read as a new theory of integration in incomplete spaces; they are immaterial to source fidelity.

## Definition classification

There are exactly two new exported definitions, no abbrevs and no structures. Both are literal set formulas, not characterization-defined objects or theorem-shaped predicates.

| Definition | Full body and carrier | Classification and result |
|---|---|---|
| `KAM.fundamentalStrip (n : ℕ) (σ : ℝ)`; `Periodic.lean:92–93` | `Set.pi univ (fun _ => {z : ℂ | z.re ∈ Icc 0 1 ∧ z.im ∈ Icc (-σ) σ})` | Exactly the compact fundamental set of `pb-compact`, p1:522–523. For negative `σ` and positive dimension it is empty as prescribed by these inequalities; no fallback. For zero dimension it is the singleton function space. |
| `KAM.horizontalStrip (r : ℝ)`; `Periodic.lean:131` | `Complex.im ⁻¹' Ioo (-r) r` | Exactly `{ζ : |Im ζ| < r}`, with equivalence proved at 139–140. At nonpositive width it is empty, by its literal formula. No junk branch or choice. |

For each definition: BODY_MATCH OK; PUBLIC_CARRIER OK; WELL_DEFINEDNESS N/A_LITERAL; CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A; DEFINITION_VERDICT PASS. Both defining-equation `rfl` probes compiled. Both definitions are exposed through `@[expose] public section`. Proof-local lets/sets such as the induction predicate `P`, rescaled sequence `x`, and floor representative `θ′` are proof constructions, not new exported mathematical definitions. The floor representative is justified by explicit strip membership and integer-shift equalities.

## Proof and dependency checks

- Increments uses precisely the convex-segment mean value inequality; it supplies differentiability at every segment point through openness.
- Periodic boundedness obtains a bound from continuity on the compact closed fundamental rectangle, proves its inclusion in the larger open strip using `ρ′<ρ`, and translates every smaller-strip point into it. The argument also handles empty strips and dimension zero without an extra premise.
- Strip identity follows the stated coordinate induction. Each single-variable slice stays in the domain, is analytic on a connected horizontal strip, and has real zeros accumulating at zero, allowing the identity theorem. No several-variable identity theorem is silently assumed.
- Average translation proves the Fubini/restricted-product-measure identity using continuity on the compact cube, reduces each coordinate to `Function.Periodic.intervalIntegral_add_eq`, then sums coordinate translations. The interval endpoint convention `Icc` versus `Ioc` is changed by a null-boundary integral equality, preserving normalization.
- Exp sums establishes a one-dimensional `HasSum`, forms a summable product family, transports it through `Fin.consEquiv`, then bounds the nonzero subtype using `modeSize≥1`. Both subtype series are explicitly summable before `tsum_le_tsum`; the numerical estimate retains `(8*n/x)^n`. Clause (a) uses the already proved `rpow_mul_exp_neg_le`, which includes `τ=0` with the agreed `0^0=1` convention. This is the source's named step, not a hidden new assumption.
- Iteration constructs `x_m=Q*2^(p*(m+1))*y_m`, proves `x_{m+1}≤x_m²`, inducts, divides only by a strictly positive factor, and derives convergence by a geometric majorant. A separate induction supplies the exact linear-in-`y₀` bound, including `y₀=0` and `m=0`.

The four modules import no `KAM.Provider.*` or frozen theorem. Frozen definitions used here have the intended literal bodies and the repository's anchor/ABI checks pass. No proof contradicts a blueprint claim on its standing source domain. No suspected pinned-publication erratum was identified; this audit compared the package to the local pinned blueprint, not to an independent re-audit of every cited publication.

## Findings and refutation disposition

**M1 — minor, documentation only; confirmed.** At `KAM/Strip/Limits.lean:129`, the sentence “without it `T_r` has no real points” lacks a positive-dimension qualification. The public theorem allows `n=0`; then `complexStrip 0 r` contains the unique empty vector for every real `r`, and every phase-valued map is real on reals. The zero-dimensional counterexample survives checking the frozen strip/realness definitions and compiled probes proving both facts for arbitrary `r`. Proposed fix: qualify the sentence by `n ≥ 1` (or “in the source's standing dimension `n ≥ 2`”). The theorem needs no change. The handoff's explanation of the bad-radius case should carry the same qualification. This is an off-source prose defect, not a counterexample to the theorem or the blueprint under Part 0.

No blocking or major finding. The suspected extra radius premise was refuted by the documented standing convention; the suspected completeness restriction was refuted by the source finite-dimensional target and the compiled specialization; the suspected weakening of periodicity was refuted by `periodic_int_shift`. No deviation was introduced by the auditor. Accepted statement extensions are recorded in the question-3 answer, rather than silently attributed to the source.

## Verification commands and output

Explicit build and probe commands used `nice -n 5`; no heartbeat, recursion or synthesis override was used. A final `nice -n 5 sh scripts/lint_sources.sh` run also covered the lint script's internal ABI Lean subprocess after the targeted build and probes had finished. No clean or from-scratch library build was requested.

```text
$ nice -n 5 lake build KAM.Strip.Limits KAM.Strip.Periodic KAM.Fourier.ExpSums KAM.Analysis.Iteration
Build completed successfully (2854 jobs).
exit 0

$ sh scripts/lint_sources.sh
# Repeated after all build/probe checks as: nice -n 5 sh scripts/lint_sources.sh
check_lean_modules: PASS (187 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (140 frozen declarations)
exit 0

$ git diff main...HEAD -- KAM/Frozen manifest
(no output; exit 0)

$ git diff --check main...HEAD
(no output; exit 0)

$ python3 -I scripts/gen_root_imports.py --check
(no output; exit 0)

$ wc -l KAM/Strip/Limits.lean KAM/Strip/Periodic.lean KAM/Fourier/ExpSums.lean KAM/Analysis/Iteration.lean
  145 KAM/Strip/Limits.lean
  322 KAM/Strip/Periodic.lean
  269 KAM/Fourier/ExpSums.lean
  158 KAM/Analysis/Iteration.lean
  894 total

$ rg -n '^(def|abbrev|structure)|sorry|admit|axiom|unsafe|opaque|set_option|EuclideanSpace' KAM/Strip/Limits.lean KAM/Strip/Periodic.lean KAM/Fourier/ExpSums.lean KAM/Analysis/Iteration.lean
KAM/Strip/Periodic.lean:92:def fundamentalStrip (n : ℕ) (σ : ℝ) : Set (Fin n → ℂ) :=
KAM/Strip/Periodic.lean:131:def horizontalStrip (r : ℝ) : Set ℂ := Complex.im ⁻¹' Ioo (-r) r
exit 0
```

Thus the sweep found only the two intended definitions and no forbidden token or resource override. Module headers, public interface imports/sections, author headers, line lengths, quarantine, generated-root consistency and manifest integrity pass the source lint. The four root imports are generated-file additions already present in the prover's commit; `--check` verifies their consistency, and this audit did not edit them.

Provider exact-type probe: **N/A**, because this is an infrastructure package with no provider or frozen theorem root. Instead, the following temporary probe checked all public node types, all theorem axiom closures, concrete source-domain specialization/composition, literal definition bodies and the zero-dimensional documentation counterexample. It was compiled twice, with the second run adding only the two zero-dimensional checks; both exited 0, without warnings or errors. All probe artifacts were deleted after recording the transcript.

```text
$ nice -n 5 lake env lean .lake/abi-scratch/I_P1B_Audit.lean
exit 0
```

Exact probe contents:

```lean
import KAM.Strip.Limits
import KAM.Strip.Periodic
import KAM.Fourier.ExpSums
import KAM.Analysis.Iteration
open Set Filter Topology
#print axioms KAM.uniform_limits
#print axioms KAM.increments_open
#print axioms KAM.add_intCast_mem_complexStrip
#print axioms KAM.uniform_limits_isPrimaryOnStrip
#print axioms KAM.isClosed_realPhasePoints
#print axioms KAM.isRealOnReals_iff_im
#print axioms KAM.uniform_limits_isRealOnReals
#print axioms KAM.add_mem_complexStrip_of_im_eq_zero
#print axioms KAM.periodic_single_int
#print axioms KAM.periodic_int_shift
#print axioms KAM.isCompact_fundamentalStrip
#print axioms KAM.periodic_bounded
#print axioms KAM.isOpen_horizontalStrip
#print axioms KAM.isPreconnected_horizontalStrip
#print axioms KAM.mem_horizontalStrip
#print axioms KAM.update_mem_complexStrip
#print axioms KAM.differentiable_update
#print axioms KAM.strip_identity
#print axioms KAM.insertNth_add_single
#print axioms KAM.torusAverage_eq_iterated
#print axioms KAM.torusAverage_add_single
#print axioms KAM.periodic_average
#print axioms KAM.Fourier.cosh_div_sinh_half
#print axioms KAM.Fourier.hasSum_exp_neg_abs_int
#print axioms KAM.Fourier.cosh_div_sinh_half_le
#print axioms KAM.Fourier.hasSum_pi_prod
#print axioms KAM.Fourier.hasSum_exp_neg_modeSize
#print axioms KAM.Fourier.one_le_modeSize
#print axioms KAM.Fourier.exp_neg_half_mul_add_pow_le
#print axioms KAM.Fourier.tsum_exp_neg_modeSize_ne_zero_le
#print axioms KAM.Fourier.exp_sums
#print axioms KAM.quadratic_iteration_super
#print axioms KAM.quadratic_iteration_tendsto
#print axioms KAM.quadratic_iteration_linear
#print axioms KAM.quadratic_iteration
#check @KAM.uniform_limits
#check @KAM.uniform_limits_isPrimaryOnStrip
#check @KAM.uniform_limits_isRealOnReals
#check @KAM.increments_open
#check @KAM.periodic_bounded
#check @KAM.strip_identity
#check @KAM.periodic_average
#check @KAM.Fourier.exp_sums
#check @KAM.quadratic_iteration

-- Source finite-dimensional specialization: no completeness premise for the consumer.
example {m p : ℕ} {V : Set (Fin m → ℂ)} (hV : IsOpen V)
    {K : ℕ → (Fin m → ℂ) → (Fin p → ℂ)} {K₀ : (Fin m → ℂ) → (Fin p → ℂ)}
    {Λ : (Fin m → ℂ) → (Fin m → ℂ) →L[ℂ] (Fin p → ℂ)}
    (hK : ∀ s, DifferentiableOn ℂ (K s) V)
    (hpt : ∀ x ∈ V, Tendsto (fun s => K s x) atTop (𝓝 (K₀ x)))
    (hd : TendstoUniformlyOn (fun s x => fderiv ℂ (K s) x) Λ atTop V) :
    DifferentiableOn ℂ K₀ V ∧ ∀ x ∈ V, fderiv ℂ K₀ x = Λ x :=
  KAM.uniform_limits hV hK hpt hd

-- The actual limit-construction strip premise supplies the realness lemma.
example {n : ℕ} {r ρ : ℝ} (hr : 0 < r ∧ r < ρ)
    {K : ℕ → (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    {K₀ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
    (hpt : ∀ θ ∈ KAM.complexStrip n r, Tendsto (fun s => K s θ) atTop (𝓝 (K₀ θ)))
    (hreal : ∀ s, KAM.IsRealOnReals (K s)) : KAM.IsRealOnReals K₀ :=
  KAM.uniform_limits_isRealOnReals hr.1 hpt hreal

-- Literal defining equations of both new definitions.
example (n : ℕ) (σ : ℝ) : KAM.fundamentalStrip n σ =
    Set.pi Set.univ (fun _ => {z : ℂ | z.re ∈ Icc (0 : ℝ) 1 ∧ z.im ∈ Icc (-σ) σ}) := rfl
example (r : ℝ) : KAM.horizontalStrip r = Complex.im ⁻¹' Ioo (-r) r := rfl

-- Empty-dimensional strip: the documentation must qualify its emptiness claim.
example (r : ℝ) : (0 : Fin 0 → ℂ) ∈ KAM.complexStrip 0 r := by
  intro i
  exact Fin.elim0 i
example (K : (Fin 0 → ℂ) → (Fin 0 → ℂ) × (Fin 0 → ℂ)) : KAM.IsRealOnReals K := by
  intro θ
  refine ⟨(0, 0), ?_⟩
  apply Prod.ext <;> apply Subsingleton.elim
```

Exact final probe stdout (the redirected second run):

```text
'KAM.uniform_limits' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.increments_open' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.add_intCast_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.uniform_limits_isPrimaryOnStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.isClosed_realPhasePoints' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.isRealOnReals_iff_im' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.uniform_limits_isRealOnReals' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.add_mem_complexStrip_of_im_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.periodic_single_int' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.periodic_int_shift' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.isCompact_fundamentalStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.periodic_bounded' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.isOpen_horizontalStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.isPreconnected_horizontalStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.mem_horizontalStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.update_mem_complexStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.differentiable_update' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.strip_identity' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.insertNth_add_single' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusAverage_eq_iterated' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.torusAverage_add_single' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.periodic_average' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Fourier.cosh_div_sinh_half' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Fourier.hasSum_exp_neg_abs_int' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Fourier.cosh_div_sinh_half_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Fourier.hasSum_pi_prod' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Fourier.hasSum_exp_neg_modeSize' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Fourier.one_le_modeSize' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Fourier.exp_neg_half_mul_add_pow_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Fourier.tsum_exp_neg_modeSize_ne_zero_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Fourier.exp_sums' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.quadratic_iteration_super' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.quadratic_iteration_tendsto' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.quadratic_iteration_linear' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.quadratic_iteration' depends on axioms: [propext, Classical.choice, Quot.sound]
@KAM.uniform_limits : ∀ {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : NormedSpace ℂ E] {F : Type u_2}
  [inst_2 : NormedAddCommGroup F] [inst_3 : NormedSpace ℂ F] [CompleteSpace F] {V : Set E},
  IsOpen V →
    ∀ {K : ℕ → E → F} {K₀ : E → F} {Λ : E → E →L[ℂ] F},
      (∀ (s : ℕ), DifferentiableOn ℂ (K s) V) →
        (∀ x ∈ V, Tendsto (fun s => K s x) atTop (𝓝 (K₀ x))) →
          TendstoUniformlyOn (fun s x => fderiv ℂ (K s) x) Λ atTop V →
            DifferentiableOn ℂ K₀ V ∧ ∀ x ∈ V, fderiv ℂ K₀ x = Λ x
@KAM.uniform_limits_isPrimaryOnStrip : ∀ {n : ℕ} {r : ℝ} {K : ℕ → (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)}
  {K₀ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)},
  (∀ θ ∈ KAM.complexStrip n r, Tendsto (fun s => K s θ) atTop (𝓝 (K₀ θ))) →
    (∀ (s : ℕ), KAM.IsPrimaryOnStrip (K s) r) → KAM.IsPrimaryOnStrip K₀ r
@KAM.uniform_limits_isRealOnReals : ∀ {n : ℕ} {r : ℝ},
  0 < r →
    ∀ {K : ℕ → (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)} {K₀ : (Fin n → ℂ) → (Fin n → ℂ) × (Fin n → ℂ)},
      (∀ θ ∈ KAM.complexStrip n r, Tendsto (fun s => K s θ) atTop (𝓝 (K₀ θ))) →
        (∀ (s : ℕ), KAM.IsRealOnReals (K s)) → KAM.IsRealOnReals K₀
@KAM.increments_open : ∀ {E : Type u_1} [inst : NormedAddCommGroup E] [inst_1 : NormedSpace ℂ E] {F : Type u_2}
  [inst_2 : NormedAddCommGroup F] [inst_3 : NormedSpace ℂ F] {U : Set E},
  IsOpen U →
    ∀ {f : E → F},
      DifferentiableOn ℂ f U →
        ∀ {A : ℝ}, (∀ x ∈ U, ‖fderiv ℂ f x‖ ≤ A) → ∀ {z w : E}, segment ℝ z (z + w) ⊆ U → ‖f (z + w) - f z‖ ≤ A * ‖w‖
@KAM.periodic_bounded : ∀ {n : ℕ} {F : Type u_1} [inst : NormedAddCommGroup F] [inst_1 : NormedSpace ℂ F] {ρ ρ' : ℝ}
  {u : (Fin n → ℂ) → F},
  DifferentiableOn ℂ u (KAM.complexStrip n ρ) →
    (∀ (i : Fin n), ∀ z ∈ KAM.complexStrip n ρ, u (z + Pi.single i 1) = u z) →
      ρ' < ρ → ∃ A, ∀ θ ∈ KAM.complexStrip n ρ', ‖u θ‖ ≤ A
@KAM.strip_identity : ∀ {n : ℕ} {F : Type u_1} [inst : NormedAddCommGroup F] [inst_1 : NormedSpace ℂ F]
  [CompleteSpace F] {r : ℝ},
  0 < r →
    ∀ {v : (Fin n → ℂ) → F},
      DifferentiableOn ℂ v (KAM.complexStrip n r) →
        (∀ (x : Fin n → ℝ), (v fun i => ↑(x i)) = 0) → ∀ θ ∈ KAM.complexStrip n r, v θ = 0
@KAM.periodic_average : ∀ {n : ℕ} {F : Type u_1} [inst : NormedAddCommGroup F] [inst_1 : NormedSpace ℝ F]
  {v : (Fin n → ℝ) → F},
  Continuous v →
    (∀ (i : Fin n) (x : Fin n → ℝ), v (x + Pi.single i 1) = v x) →
      ∀ (a : Fin n → ℝ), (KAM.torusAverage fun x => v (x + a)) = KAM.torusAverage v
KAM.Fourier.exp_sums : ∀ (n : ℕ),
  (∀ (y a τ : ℝ), 0 ≤ y → 0 < a → 0 ≤ τ → y ^ τ * Real.exp (-a * y) ≤ (τ / (Real.exp 1 * a)) ^ τ) ∧
    (∀ (x : ℝ),
        0 < x →
          HasSum (fun k => Real.exp (-x * KAM.Fourier.modeSize k)) ((Real.cosh (x / 2) / Real.sinh (x / 2)) ^ n) ∧
            Real.cosh (x / 2) / Real.sinh (x / 2) ≤ 1 + 2 / x) ∧
      ∀ (x : ℝ), 0 < x → ∑' (k : { k // k ≠ 0 }), Real.exp (-x * KAM.Fourier.modeSize ↑k) ≤ (8 * ↑n / x) ^ n
@KAM.quadratic_iteration : ∀ {Q p : ℝ} {y : ℕ → ℝ},
  0 < Q →
    0 ≤ p →
      (∀ (m : ℕ), 0 ≤ y m) →
        (∀ (m : ℕ), y (m + 1) ≤ Q * 2 ^ (p * ↑m) * y m ^ 2) →
          (Q * 2 ^ p * y 0 ≤ 1 / 2 →
              (∀ (m : ℕ), y m ≤ Q⁻¹ * 2 ^ (-(p * (↑m + 1))) * (2 ^ 2 ^ m)⁻¹) ∧ Tendsto y atTop (𝓝 0)) ∧
            (Q * 2 ^ p * y 0 ≤ 1 → ∀ (m : ℕ), y m ≤ (Q * 2 ^ p * y 0) ^ (2 ^ m - 1) * 2 ^ (-(p * ↑m)) * y 0)
```

## Closeout and limits

Seven of seven node contracts classified; two of two new definitions classified; 35 of 35 newly declared theorem axiom closures checked; all nine node-facing exports inspected with fully explicit outer types; targeted build and lint pass. Only M1 remains, with a concrete documentation fix proposed. No code or blueprint repair was performed. No downstream Part 2 formalization, frozen-root sealing, whole-repository rebuild, external publication re-audit or independent kernel replay is claimed. The report is the only new repository artifact created by this audit.
