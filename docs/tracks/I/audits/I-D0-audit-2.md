# I-D0 independent delta audit 2

**Verdict: PASS for the revised definitions-only I-D0 landing. F1 is CLOSED by removal of both limit selectors.** No characterization-defined object lacking a proved characterization remains among the 83 landed declarations. This supersedes audit 1's F1 rejection for the revised snapshot only; it does not certify I2-9, convergence, or I-G1 proof closure.

## Scope and immutable inputs

Audited 2026-10-28 in `/root/code/KAM-inp-id0`. Baseline: `f2f0b0b56f485a2a6ae71b0c16c2d01819ba4c75`. Revised HEAD: `35096654b6322ee1a9f691c2bd94e951dd01a5c8`. This is a focused, report-only delta audit applying the same manuscript-audit and lean-statement-audit criteria as audit 1. The authorized output is this exact worktree path, overriding the generic brief's main-worktree instruction. No source or git state was changed by the auditor; temporary probes/logs were kept in `.lake/abi-scratch/` and deleted after evidence extraction.

The complete `git diff f2f0b0b..3509665` changes only `KAM/Iso/Apost/Defs.lean`: **9 insertions, 16 deletions**. It removes the two definition commands and their local `open Classical in`, removes the now-unused `Filter` opening, updates the module documentation, and adds the explicit I2-9 deferral comment. Nothing else changes in the committed delta. The other three module files are byte-identical to baseline. Frozen files, manifest, generated root and README are untouched.

| Module | Declarations | Lines | SHA-256 at revised HEAD |
|---|---:|---:|---|
| `KAM/Iso/Linear/Defs.lean` | 16 | 141 | `f08cbdb606c96d8290c31f1c66009cc2cf66c74e463a65a6eec7602189383844` |
| `KAM/Iso/Apost/Defs.lean` | 35 | 218 | `bfe66bba3354dbcd66b5bbaa2dab630018b6fb44259e31cad47a319032bb8163` |
| `KAM/Iso/Charts/Inputs.lean` | 3 | 94 | `a8f405840e6a94be71deeb6632aba601e237961933f3d4e26e81e5bb21ad3bfe` |
| `KAM/Iso/Charts/Defs.lean` | 29 | 168 | `204bdaa63495090382b0563cd2a9bfa734791d10822a20d703c448a6c56bde50` |

## F1 closure and unchanged declarations

| Audit item | Verdict | Independent evidence |
|---|---|---|
| `KAM.Iso.Apost.isoLimit` | CLOSED / removed | Its declaration is absent; only deferral documentation remains. |
| `KAM.Iso.Apost.isoSLimit` | CLOSED / removed | Its declaration is absent; only deferral documentation remains. |
| All remaining 83 declarations | PASS / unchanged | Complete declaration commands match baseline and the original pinned v2 signatures after comment/whitespace masking; no declaration added or altered. |
| References to removed names in executable code | PASS | Zero in all four modules; no replacement declaration elsewhere under `KAM/Iso`. |
| Production import quarantine | PASS | Traversal of 81 project modules: zero frozen-theorem/provider import edges. |

An independent Python extraction used `scripts/check_lean_modules.py:code_mask`, column-zero declaration/command boundaries, and normalized complete commands. For each module it compared the current declaration dictionary with `git show f2f0b0b:<path>` and with `/root/code/KAM-inp-design-i123/.drafts/design/IPart123Signatures.lean`. The signature SHA-256 remains `2b7c6e337d0fedcbb186e44e83597989f49502efe55fcde6605f9c29b69d8dbe`. Results:

```text
Linear/Defs: 16; added []; changed []; removed []; signature mismatches []
Apost/Defs: 35; added []; changed []; removed [isoLimit, isoSLimit]; signature mismatches []
Charts/Inputs: 3; added []; changed []; removed []; signature mismatches []
Charts/Defs: 29; added []; changed []; removed []; signature mismatches []
TOTAL 83: 72 def, 8 structure, 3 theorem
```

The comparison includes fields, types, bodies and theorem proofs. The surviving declarations inherit audit 1's individual classifications and binder review unchanged. No binder, hypothesis, conclusion, constant dependency, norm, carrier, or theorem alias changed. The three bridge theorems retain the same ten TYPING binders and no logical premises.

**Refutation check:** I checked whether the selectors had merely been renamed, moved into another one of the four modules, hidden in an alias or structure field, or retained by another landed definition. The full declaration comparison, masked source scan, and Lean absence probes exclude these cases. The explanatory comment at `Apost/Defs.lean:202–205` is documentation, not a declaration or a convergence assertion. Closure uses audit 1's permitted alternative of removing the selectors from the admitted landing; no convergence hypothesis was added to an existing theorem.

## Selector rescan and classification

The masked executable text of all four files was scanned for `limUnder`, `lim`, `choose`, `choose_spec`, `epsilon`, `choice`, `some`, `strongIndefiniteDescription`, and `indefiniteDescription`, including qualified occurrences. **Zero executable occurrences.** Both removed identifiers also have zero executable occurrences. Raw-text `limUnder` occurs only in the deferral comment at `Apost/Defs.lean:203`.

| Remaining construction | Classification and semantic assessment |
|---|---|
| Linear definitions: row/block formulas, bordered inverse solution and components, residual/operator formulas | Literal formulas, unchanged. No newly selected witness or limit. Existing total matrix inverse, derivative, integral and Fourier operators retain the source-use guards recorded in audit 1. |
| Apost constants, correction, real frequency update, remainder formulas | Literal arithmetic/vector/matrix formulas, unchanged. `isoNewS` is an explicit real-part formula, not a real witness chosen from an existence assertion. |
| `isoEpsSeq`, `isoDSeq`, `isoSeq` | Explicit finite recurrences and formulas. They do not select or assert any limit. |
| `isoNewtonMap` and its `open Classical in` | Explicit membership conditional; classical logic supplies decidability only. On-strip correction and off-strip K are prescribed by blueprint `p2-iso-iteration.tex:169`. It is not a choice-defined object or an arbitrary witness fallback. |
| `dB`, `mhConst` (`sInf`) and `MgConst`, `ShConst` (`sSup`) | Literal scalar infimum/supremum formulas, unchanged; no `choose`/epsilon witness is introduced. Attainment, positivity and use as extrema require the separate compactness hypotheses/proofs already distinguished in audit 1. They do not purport to choose an extremizing point. |
| Remaining chart constants, coordinates, domain/map/Jacobian and remainder | Literal formulas/predicates, unchanged. No nonunique inverse-chart function is selected by a definition. |
| `IsPatch.toEnergyPatch` | Explicit record assembly from an already supplied patch certificate and two slope-window inputs; it does not choose a patch or an inverse. |
| Eight structures | Unchanged standing/typing/admissibility data or explicit patch/torus output certificates. No constructor field selects a limit or assumes convergence. Defining an output certificate does not assert its existence. |
| `IG1Body`, `IG1Statement`, `G3Statement`, `IsRay` | Transparent contract/predicate definitions, unchanged; they do not assert the upstream theorem or choose a ray. |
| `@[expose] public noncomputable section` in each file | Enables the existing noncomputable operations; it is not itself a witness selection or a proof of their analytic properties. |

For the 80 remaining defs/structures: **BODY_MATCH OK; PUBLIC_CARRIER OK as the previously audited literal formulas/certificates; WELL_DEFINEDNESS and CHARACTERIZATION N/A_LITERAL; CHOICE_INDEPENDENCE N/A for new characterized-object selection; DEFINITION_VERDICT PASS.** Standard foundational `Classical.choice` appearing in theorem axiom receipts is distinct from exporting a new uncharacterized mathematical witness.

I2-9's proposed future co-landing of limit definitions with convergence and characterization theorems is not audited here. Those theorems must actually be implemented and independently checked when that package lands. No statement about the current proof status of track K's `kamLimit` is needed for this closure.

## Hygiene and Lean evidence

Every auditor Lean operation was sequential, `LEAN_NUM_THREADS=1`, with `nice -n 5`; the targeted build used the mandated compile gate. No heartbeat, recursion-depth or synthesis override, clean, update, cache fetch, dependency-source edit, or broad rebuild was used.

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-id0 KAM.Iso.Apost.Defs
```

**Exit 0**, exact output:

```text
[inp-gate] slot 2 acquired 01:55:31 for KAM.Iso.Apost.Defs
Build completed successfully (3181 jobs).
```

The fresh scratch probe imported all four landed modules, queried axioms of every bridge, and checked both removed exports are unavailable:

```lean
#print axioms KAM.Iso.Linear.extendedTorsion_eq_bordMat
#print axioms KAM.Iso.Charts.fractD_eq_domainD
#print axioms KAM.Iso.Charts.totalH_eq_hbold
example : True := by
  fail_if_success have h := @KAM.Iso.Apost.isoLimit
  trivial
example : True := by
  fail_if_success have h := @KAM.Iso.Apost.isoSLimit
  trivial
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/ID0Delta2.lean
```

**Exit 0; no warnings or errors.** Both negative name-resolution probes succeeded. Exact axiom output:

```text
'KAM.Iso.Linear.extendedTorsion_eq_bordMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.fractD_eq_domainD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.totalH_eq_hbold' depends on axioms: [propext, Classical.choice, Quot.sound]
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Linear.Defs KAM.Iso.Apost.Defs KAM.Iso.Charts.Inputs KAM.Iso.Charts.Defs
```

**Exit 0.** Exact output:

```text
replaying KAM.Iso.Charts.Defs
replaying KAM.Iso.Charts.Inputs
replaying KAM.Iso.Apost.Defs
replaying KAM.Iso.Linear.Defs
```

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
```

**Exit 1 solely for the explicitly permitted stale generated-root line.** Exact output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (320 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

Module hygiene, frozen-anchor guard and all 144 frozen ABI hashes pass. There is no forbidden-token, size, module-wrapper, frozen-byte, or ABI error. The generated root was left untouched as required.

`git diff --check f2f0b0b..3509665`: exit 0, no output. `git diff f2f0b0b..3509665 -- KAM/Frozen manifest KAM.lean README.md`: exit 0, no output. All four files remain below 1500 lines. Module wrappers and exposure are unchanged. The final report passed `git diff --no-index --check /dev/null <report>`; auditor scratch files were deleted.

## Closeout

F1 is closed for I-D0 by deleting the two uncharacterized definitions and leaving all 83 accepted declarations unchanged. No new blocking finding, source erratum, or mathematical deviation was found. Audit 1's minor existing blueprint wording issue about e = F₁ε remains outside this code delta and does not block this definitions-only landing.

**I-G1 remains FROZEN_UNPROVED; this PASS does not authorize sealing or assert convergence, energy-limit identities, bordered-system solvability, or torus existence.** This report accepts the reduced I-D0 surface and completes the requested delta audit.
