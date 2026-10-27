# P3-5 independent audit 1

Overall verdict: **PASS**.

Audited checkout: `k/p3-5`, HEAD `dd3d84c2ad6e4abd1fbda18093cf6a4c8bd4cc77`;
comparison main `7a0fa39c13a65091a62949d28aeaeae33afa5fc9`.
The handoff identifies original proof commit `9e33f63`; this review covers the current merged
checkout and `git diff main...HEAD`, not merely that original commit.

Scope: the G2 seal gate requested in `P3-5-handoff.md`, under `AUDIT-PACKAGE.md`,
`P3-5.md`, the common briefs, `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, and the
Part 2/3 design (especially conventions, L7/L22, §6 and Appendix A).
Only this report was added; temporary probes were confined to `.lake/abi-scratch/` and deleted.
No frozen statement was changed or sealed by the auditor.

## Node-by-node findings

In the table, `G2` denotes `KAM/Uniq/G2.lean`, `Standing` denotes
`KAM/Uniq/Standing.lean`, and all unqualified declarations have prefix `KAM.Uniq.`.
Local facts are identified inside the covering declaration, as permitted by the common brief.

| Node | Lean declaration / location | Verdict | Reason |
|---|---|---|---|
| `bp:p0:g2` | `g2_explicit`, G2:193–286; `KAM.Provider.local_uniqueness_flow`, provider:30–63 | PASS | Explicit positive threshold and full frozen conclusion. Provider has the exact frozen elaborated type. |
| `step:p3:g2-constant` | `threshold`, Standing:134–138; `threshold_pos`, Standing:245; `g2_explicit`, G2:223–243 | PASS | Formula is exactly eq:p3:c; only the eight permitted fixed parameters occur. All standing fields are constructed from the original hypotheses. |
| `step:p3:g2-smallness` | `g2_smallness`, Standing:603; application in `g2_explicit`, G2:244–246 | PASS | The frequency predecessor supplies γ ≤ Γ. All three inequalities have their blueprint constants, powers and directions. No extra frequency upper bound is assumed. |
| `step:p3:g2-phase` | `g2_explicit`, G2:247–248, application of `phase` | PASS | Gives a real ψ, the required bound and the actual average-zero equation, from the first smallness inequality. |
| `step:p3:g2-size` | `g2_explicit.hsize` and `hΔ`, G2:251–273 | PASS | Uses real-shift strip preservation, convexity and `increments_open` for K₁. Obtains the stated bound and μ/2 < μ. |
| `step:p3:g2-iteration` | `G2Aux.diffMap_eq_zero`, G2:137–185; `iteration_Q_two_pow_small`, Standing:591; application G2:275–276 | PASS | Explicit majorant, correct strip loss and power factor, quadratic predecessor, convergence and pointwise zero conclusion. See details below. |
| `step:p3:g2-conclusion` | `g2_explicit`, G2:277–286 | PASS | φ = −ψ is real; evaluate Δ at θ − ψ on the same strip and cancel the shifts. Conclusion holds for every complex θ in T_(ρ/2). |
| Frozen G2 provider | `KAM.Provider.local_uniqueness_flow`, `KAM/Provider/LocalUniquenessFlow.lean`:30–63 | PASS | Sole import is `KAM.Uniq.G2`; body is the prescribed anonymous constructor. No frozen theorem shortcut. |

Source comparisons: `blueprint/parts/p0-conventions.tex`:142–155;
`blueprint/parts/p3-uniqueness.tex`:513–567; graph node records at
`docs/graph/K/DEPGRAPH.md`:663 and 9187–9360; design Appendix A:1701–1734.

## Statement and proof fidelity

The provider preserves the order of n, τ, ρ, M, σK, σB, σT, μ, their positivity/range
premises, the existential c, and the subsequent universal domain, Hamiltonian, tori,
frequency and γ. In particular, c cannot depend on those subsequent objects or on γ.
All H1 bounds, primary and real conditions, neighbourhood margin, rank and twist
conditions, invariance equations and closeness premise are retained. The carriers are
`Fin n → ℝ`, `Fin n → ℂ` and their prescribed product; there is no norm substitution.
The row sums become precisely the induced max operator norm, using the helper at G2:65
and n > 0 derived from n ≥ 2, rather than an additional hypothesis.

A comment/whitespace-normalized comparison of declaration signatures returned:

```text
Provider signature text matches frozen: True
g2_explicit signature text matches Appendix A: True
```

The independent elaboration probe below further checks literal `Expr` equality for the
provider, beyond mere definitional compatibility. G2 has no C₂: the handoff/brief phrase
“C₂ := C_2 …” pertains to the adjacent G1 design. The actual G2 specialization is only
c := threshold; nothing involving a G1 constant was inserted into this theorem.

For L7, the proof chooses the finite upper bound η := c γ² ρ^(2τ), rather than asserting
that η equals the supremum. This is legitimate: the strip is nonempty (it contains zero),
the norm family is nonnegative and bounded above by η, and its real supremum is at most η.
Conversely a supremum bound on this bounded nonempty family bounds every value. Both the
phase and quadratic statements accept arbitrary pointwise upper bounds. No supremum
attainment or compactness of the open strip is assumed.

The iteration uses p := 2(τ+n), Q := C_quad γ⁻² (ρ/16)^(-p), and
ρ_m := (1/2 + (1/2)^m/4)ρ. Positivity of ρ, γ, C_quad and τ+n supplies Q > 0 and p ≥ 0.
The helpers prove ρ_0 = 3ρ/4, ρ/2 < ρ_m ≤ 3ρ/4, strict decrease and
(ρ_m − ρ_(m+1))/2 = (ρ/16)(1/2)^m. The real-power identity therefore gives exactly
Q 2^(pm), with no lost factor of two. The recursion majorizes Δ by induction, starting
from y₀ := (1+2C_PσK)η. The third threshold inequality, via the proved
`iteration_Q_two_pow_small`, gives Q 2^p y₀ ≤ 1/2. The unused third projection at G2:245
is harmless: its consequence is separately proved and applied at G2:276.
`quadratic_iteration` yields convergence to zero. Every point of T_(ρ/2) belongs to
every T_(ρ_m); `ge_of_tendsto'` then gives norm Δ ≤ 0. There is no assertion of equality
between the majorant and the supremum norms.

`diffMap_eq_zero` is a distinctly named conditional helper. Its average-zero and
smallness premises are proved in `g2_explicit`, not exposed as new source premises.
The Params and S1–S4 bundles are likewise explicitly filled from source assumptions.
No hard proof step is hidden in a new structure or instance.

Dependency inspection: `g2_explicit` calls `phase`, `frequency_bound`, the threshold
lemmas, `increments_open`, and `diffMap_eq_zero`; the latter calls `quadratic` and
`quadratic_iteration`. `quadratic` calls `difference_equation` at
`KAM/Uniq/Quadratic.lean`:299. Thus the difference equation is used transitively, as
expected. A recursive scan of project imports from both package modules found 64
project modules, no frozen theorem modules, and only this package's own provider.
Frozen definitions are allowed. The root adds only `public import KAM.Uniq.G2` and
continues to omit the quarantined provider and unsealed G2 anchor.

## Definition classification

| New definition | Classification and whole-carrier check |
|---|---|
| `KAM.Uniq.G2Aux.stripWidth (ρ : ℝ) (m : ℕ)` | Ordinary total scalar formula `(1/2 + (1/2)^m/4)*ρ`, for every real ρ and natural m. No cutoff, choice, or fallback. Positivity/decrease are claimed only under ρ > 0. |
| `KAM.Uniq.G2Aux.majorant (Q p y0 : ℝ) : ℕ → ℝ` | Structural recursion: value y0 at zero and Q·2^(pm)·previous² at successor, on its entire carrier. No junk branch. Positivity and convergence are proved under explicit sufficient hypotheses. |

There are no new abbrevs or structures. `threshold` belongs to P3-1, not this diff;
its reused formula at Standing:134–138 matches eq:p3:c and is independent of γ.
Its totalized inverses/real powers outside the positive parameter region are not used
to prove any claim there. The provider introduces only a theorem.

## Independently run checks

Lean commands ran sequentially with `nice -n 5`, without heartbeat, recursion-depth or
synthesis-budget overrides. Builds used the existing worktree snapshot.

```sh
git diff --stat main...HEAD
```

```text
 KAM.lean                              |   1 +
 KAM/Provider/LocalUniquenessFlow.lean |  53 +++++++
 KAM/Uniq/G2.lean                      | 290 ++++++++++++++++++++++++++++++++++
 3 files changed, 344 insertions(+)
```

```sh
nice -n 5 lake build KAM.Uniq.G2 KAM.Provider.LocalUniquenessFlow
```

```text
Build completed successfully (3195 jobs).
```

Exit 0. This is a targeted two-module invocation, not a clean or whole-library rebuild.

```sh
sh scripts/lint_sources.sh
```

```text
check_lean_modules: PASS (268 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Exit 0. This checks forbidden proof escapes, resource overrides, ambient type,
line limits, module layout, generated root, errata rendering, frozen anchors and ABI hashes.
Both package modules have copyright, `module`, imports, module documentation, public
sections and matching namespace/section closures. Line counts are 290 and 67, below 1500.

```sh
git diff --check main...HEAD
git diff --exit-code main...HEAD -- KAM/Frozen manifest
```

Both exit 0 with no output. The latter proves no branch changes to protected files.
Initial status had only the supplied untracked `P3-5-handoff.md` and no tracked changes.

```sh
rg -n 'sorry|admit|\baxiom\b|\bunsafe\b|\bopaque\b|set_option' KAM/Uniq/G2.lean KAM/Provider/LocalUniquenessFlow.lean
```

No output, exit 1 (no matches). The full lint also passed.

## Exact-type and axiom probe

Created `.lake/abi-scratch/P35Audit.lean` with the following prefix, followed by the
`#print axioms` commands for every declaration listed in the output below:

```lean
import KAM.Frozen.Theorems.LocalUniquenessFlow
import KAM.Provider.LocalUniquenessFlow
example : type_of% @KAM.local_uniqueness_flow := @KAM.Provider.local_uniqueness_flow
open Lean Elab Command
run_cmd do
  let frozen ← getConstInfo `KAM.local_uniqueness_flow
  let provider ← getConstInfo `KAM.Provider.local_uniqueness_flow
  unless frozen.type == provider.type do
    throwError "provider and frozen types differ as Expr"
  logInfo "PASS: provider and frozen types are identical Expr values"
#print axioms KAM.Uniq.g2_explicit
#print axioms KAM.Provider.local_uniqueness_flow
```

Command:

```sh
nice -n 5 lake env lean .lake/abi-scratch/P35Audit.lean
```

Exit 0; complete output:

```text
PASS: provider and frozen types are identical Expr values
'KAM.Uniq.G2Aux.norm_le_of_forall_rowSum_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.G2Aux.stripWidth_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.G2Aux.half_lt_stripWidth' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.G2Aux.stripWidth_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.G2Aux.stripWidth_succ_lt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.G2Aux.half_stripWidth_sub' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.G2Aux.rpow_step' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.G2Aux.majorant_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.G2Aux.diffMap_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.g2_explicit' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Provider.local_uniqueness_flow' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.threshold_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.g2_smallness' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.iteration_Q_two_pow_small' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.phase' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.difference_equation' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Uniq.quadratic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.quadratic_iteration' depends on axioms: [propext, Classical.choice, Quot.sound]
```

No `sorryAx` or additional axiom occurs. Importing the unsealed anchor for the exact-type
probe does not contaminate the independent provider proof. The probe was deleted afterwards.

## Findings, uncertainties, errata and deviations

No blocking, major or minor defect found; no corrective Lean change is proposed.
The η upper-bound formulation and explicit recursive majorant are the declared design
choices L7 and §6, and preserve the theorem. No additional mathematical deviation was found.
No suspected pinned-source erratum arose in this package. G2 is the project's own flow
uniqueness result, checked here against its blueprint, design and frozen contract; this
review does not constitute a new audit of the underlying published sources or a separate
kernel replay with `leanchecker`.

The frozen G2 still has its existing `by sorry` body: this PASS certifies the provider
for the orchestrator's seal gate, not an already performed seal or closure of other roots.
