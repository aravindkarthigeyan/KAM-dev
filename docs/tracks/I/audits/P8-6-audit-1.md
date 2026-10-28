# P8-6 independent audit 1

Verdict: **PASS WITH NOTES**. The P8-6 helper is proved, matches its approved design contract, and passes independent elaboration and kernel replay. The only hygiene exception is the expressly permitted stale generated `KAM.lean`. This package contains no provider and seals no frozen anchor; this verdict does not certify the full I-R3BP theorem.

## Scope and authority

Audited worktree: `/root/code/KAM-inp-p86`.

- HEAD: `52446d9304ad62a421cfda51b863e9e0c203d88f`.
- Comparison branch `inp`: `738b078efc07a743392b02cbb09909b8697fcabc`.
- `git diff inp...HEAD` adds only `KAM/Iso/R3bp/Uniqueness.lean` (43 lines).
- Read `AGENTS.md`, `docs/PLAN.md`, `docs/DECISIONS.md`, the external audit brief, and `docs/tracks/I/audits/P8-6-handoff.md`.
- Checked the design package row at `docs/tracks/I/design/PART58-LEAN-DESIGN.md:359`, proof recipe at line 473, exact signature at lines 1751–1757, and prior design-audit entries.
- Checked `blueprint-I/parts/p8-r3bp.tex:229` (`stepI:p8:pf-uniq`), `docs/tracks/I/statement.md:176–239`, the frozen I-R3BP theorem, and the physical solution/domain/field/radius/primary definitions.

The handoff calls this node `bpI:p8:pf-uniq`; the actual blueprint proof-step label is `stepI:p8:pf-uniq`. This is a locator naming note, not a statement discrepancy.

## Declaration verdict

| Node | Lean declaration | Verdict | Reason |
|---|---|---|---|
| `stepI:p8:pf-uniq` / P8-6 | `KAM.Iso.R3bp.restricted_unique` (`KAM/Iso/R3bp/Uniqueness.lean:31`) | PASS | Exact design signature; collision-free physical solutions agreeing at zero agree throughout `(a,b)`. No confinement premise on either solution, no additional mass restriction, no hidden uniqueness assumption. |
| I-R3BP frozen anchor | `KAM.Iso.restricted_near_circular` | Not sealed by this package | P8-6 supplies only its uniqueness clause. Global existence and confinement, the remaining assembly and provider/seal verification are outside this diff. |

There is exactly one new public declaration. Its explicit binders are `μ`, `ha`, `hb`, `h0`, `hy`, `hz`, in the design order; `a`, `b`, `y`, `z` are implicit. Its ambient phase space is `(Fin 2 → ℝ) × (Fin 2 → ℝ)`. It introduces no constants or norm estimates. Arbitrary real `μ` is appropriate for local uniqueness: smoothness off the two primary positions does not require positive masses. The physical application's restricted range of `μ` can therefore use this stronger generality.

The assumed global solution is input data to this uniqueness helper, exactly as in the blueprint; the theorem does not assume the equality it proves.

## Proof and definition audit

At lines 35–37, `restricted_reduction μ` supplies openness, smoothness on `restrictedDomain μ`, and the forward equivalence from the frozen physical predicate to `IsSolutionIn`; the competitor uses the `(a,b)` instance. At lines 38–39 the global solution uses the `univ` instance, then `IsSolutionIn.mono` with `(a,b) ⊆ univ`. At lines 40–41, `ContDiffOn ℝ ∞` is weakened to `ContDiffOn ℝ 1` on that same domain, `Ioo` is order connected, `ha` and `hb` give `0 ∈ Ioo a b`, and `gen_uniqueness` gives the stated pointwise equality. Both forward and backward times are covered by that dependency.

**New definitions:** none (`def`, `abbrev`, `structure`, instances, and fallback objects are absent).

Relevant existing objects were inspected for semantic attachment:

- `IsRestrictedSolutionOn` is the frozen genuine derivative predicate with positive collision distances at every time in the interval.
- `restrictedDomain` is exactly the collision-free domain.
- `restrictedField` is the total formula extension of the frozen subtype vector field; `restrictedField_eq` is definitional equality on that subtype.
- Physical distances use the square root of the sum of squares, with primaries `![-μ, 0]` and `![1 - μ, 0]`. No replacement of those distances by the ambient max norm occurs.
- The reduction proves smoothness only on the open collision-free domain. Totalized inverse-distance values at collisions are never used by the uniqueness argument.

No hard proof step is smuggled into a premise or instance. A recursive inspection of the 53 KAM modules in the import closure found zero provider or frozen-theorem imports (frozen definitions are allowed).

## Independent checks

All commands ran from `/root/code/KAM-inp-p86`, sequentially, with `LEAN_NUM_THREADS=1`. No overlapping Lean/build/checker invocations were launched by this audit. No resource overrides, clean rebuild, cache download, or package mutation was used.

### Targeted build

```sh
env LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p86 KAM.Iso.R3bp.Uniqueness
```

Exit 0. Output:

```text
[inp-gate] slot 1 acquired 01:12:09 for KAM.Iso.R3bp.Uniqueness
Build completed successfully (9099 jobs).
```

The gate invokes `nice -n 5 lake build` for the named target; this was not an untargeted library rebuild.

### Type/consumer probes and axioms

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P86Audit.lean
```

Exit 0. The temporary probe checked (1) the full explicit design type against `@KAM.Iso.R3bp.restricted_unique`, (2) a fresh declaration with the exact design binders and body `by exact KAM.Iso.R3bp.restricted_unique μ ha hb h0 hy hz`, and (3) the exact uniqueness conclusion of frozen I-R3BP given `z 0 = z₀` and a global physical solution, using `hy0.trans hz0.symm`. All elaborated at default resource limits.

A provider-versus-frozen whole-type/seal probe is inapplicable: the diff exports a helper, not a provider for the full anchor. The consumer probe checks the relevant frozen conclusion directly without importing a draft theorem or claiming the remaining conclusions.

Exact axiom output:

```text
'KAM.Iso.R3bp.restricted_unique' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.restricted_reduction' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.ODE.gen_uniqueness' depends on axioms: [propext, Classical.choice, Quot.sound]
'audit_restricted_unique' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Kernel replay

```sh
env LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.R3bp.Uniqueness KAM.ODE.NewtonReduction KAM.ODE.Uniqueness
```

Exit 0. Exact output:

```text
replaying KAM.ODE.Uniqueness
replaying KAM.ODE.NewtonReduction
replaying KAM.Iso.R3bp.Uniqueness
```

### Source lint

```sh
env LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

Exit 1, solely the allowed generated-root exception. Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (311 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

No other lint diagnostic occurred. The new file has the required copyright, `module`, public imports, module docstring, and `public section`; its 43 lines are below the 1500-line cap. It contains no forbidden escape or resource override. There are no new definitions requiring `@[expose]`.

### Diff invariants

```sh
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
git diff --check inp...HEAD
```

Both exited 0 with empty output. Frozen statements, manifest, generated root and README are unchanged by the package. The existing untracked handoff was read and preserved.

## Defects, limitations, and handoff

No suspected mathematical source defect, false blueprint assertion, statement weakening, or introduced mathematical deviation was found. The blueprint's corrected local smoothness wording at `p8-r3bp.tex:229` explicitly says “no smoothness across primary collisions is available or needed”; the Lean argument respects it. No new pinned-source transcription is introduced in this diff.

Administrative note: the orchestrator must regenerate `KAM.lean` when landing the package. No mathematical repair is requested. The audit does not extend to unrelated I/N/P anchors or prove the full I-R3BP assembly.

Only this report was written outside disposable `.lake/abi-scratch/` probes; the audit probe was removed after its successful checks. No state-changing git command was run.
