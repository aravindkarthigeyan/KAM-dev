# Independent audit 1: I2-5

**Verdict: PASS WITH NOTES for I2-5 (`bpI:p2:torsion`).** No mathematical or proof-integrity defect was found in the two package modules. This is acceptance of an intermediate proof package. It does not seal I-G1 or establish completion of the isoenergetic iteration.

Audited 2026-10-28 in `/root/code/KAM-inp-i25`, HEAD `42f2f1b51d1fb3e84f4ec76a58907e55f451f873`. The report destination follows the user's explicit worktree instruction, which overrides the generic brief's main-worktree destination.

## Scope and comparison

Read AGENTS.md, PLAN, DECISIONS, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the I2-5 handoff, design v2 and its two audits, the Track I statement, relevant Part 0/1/2 blueprint and graph contracts, the I-G1 frozen anchor and the frozen torsion/normal-frame/extended-torsion/average interfaces used by the proof. Reviewed all 619 lines of the package implementation and the relevant imported interfaces, including `IsoStanding`, `IsoAdmissible`, `isoNewtonMap`, `extended_regular`, and the perturbation and inverse applications.

The requested `git diff inp...HEAD` was run. At comparison time `inp` was `27067f91f3dd8b1e519d6b7a7ec2fb328344fa89`; Git warned of multiple merge bases and chose `dc4ffb73ca450595b9784a07649ce34e339805db`. That comparison contains 15 files, 2590 insertions: the two I2-5 modules, previously merged Schedule/Charts/Trivial modules and audit documents, and six generated-root import additions. `git diff inp-i23...HEAD` was also run as requested by the handoff; it contains the same inherited changes. The supplied `inp-i23` ref was `bfe477682b39f5e61d9475ad47a2eadd00f6dc6e`.

Attribution was checked independently using `git log inp..HEAD` and the two implementation commits `a6e6499` and `42f2f1b`. The entire change after their parent merge `1571b86` is exactly:

```text
KAM/Iso/Apost/Torsion.lean      | 274 additions
KAM/Iso/Apost/TorsionDiff.lean  | 345 additions
```

The unrelated inherited packages are not re-certified by this audit. In particular, the brief's literal full-range generated-file check is **not empty**: `git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` shows only six import additions to `KAM.lean`. The Frozen/manifest/README part is empty. The same full restricted check from `1571b86..HEAD` is empty, establishing that I2-5 did not edit those protected files. No state-changing git command was run.

## Anchor and exact-type result

| Anchor / node | Verdict | Meaning |
|---|---|---|
| `bpI:p2:torsion`, `KAM.Iso.Apost.torsion_step` | PASS WITH NOTES | Exact design-v2 statement is proved, with clean axioms and kernel replay as recorded below. |
| Frozen I-G1, `KAM.Iso.isoenergetic_kam` | Intermediate contribution only | I2-5 supplies no provider export or seal body for this much larger theorem. Provider=frozen-type and frozen seal-copy probes are inapplicable to this package, rather than passed by substituting `torsion_step`. |
| Other I/N/P frozen anchors | Outside package | No provider or seal for these anchors is supplied or claimed. |

An independent scratch probe copied the complete `torsion_step` statement from design Appendix A (lines 1447–1487), renamed it `audit_design_torsion_step`, and proved it with:

```lean
by
  exact torsion_step hS hK hδ hδ1 h4δ hβ hsmall
```

It also checked bidirectional definitional type equality:

```lean
example : (type_of% @audit_design_torsion_step) =
    (type_of% @torsion_step) := rfl
```

This checks binder order, carriers, constants and their dependence, the two smallness premises, all strip widths, the average difference with denominator `δ ^ 2`, determinant invertibility, and the inverse increment bound. The probe contains no sorry or resource override. It imports only the package module, not the frozen theorem. Exact frozen-provider checking is reserved for the eventual I-G1 provider package.

## Declaration and node inventory

Names in the next table are relative to `KAM.Iso.Apost`; `TorsionDiff` and `TorsionAux` are namespaces, not bundled premises. Every new public theorem is listed.

| Node / implementation role | Declaration (file:line) | Verdict | Reason |
|---|---|---|---|
| `p2:torsion` | `torsion_step` (Torsion:91) | PASS | Same source data and exact accepted signature; new bordered average and inverse, not unbordered twist. |
| Newton map identity | `TorsionAux.isoNewtonMap_of_mem` (Torsion:50) | PASS | Literal `K + ΔK` on its correction strip. |
| `to-frame`: holomorphy | `TorsionAux.isoNewtonMap_differentiableOn` (Torsion:55) | PASS | Local congruence of differentiable maps; actual correction regularity is supplied at the call site. |
| `to-frame`: primaryness | `TorsionAux.isoNewtonMap_isPrimaryOnStrip` (Torsion:61) | PASS | Integer shifts preserve the strip; periodic correction plus primary old map. |
| `to-frame`: realness | `TorsionAux.isoNewtonMap_isRealOnReals` (Torsion:72) | PASS | Positive width puts every real point in the corrected branch. |
| `to-avg`: block algebra | `TorsionDiff.bordMat_sub` (TorsionDiff:45) | PASS | Exact difference of all four blocks, including zero corner. |
| `to-avg`: block norm | `TorsionDiff.norm_bordMat_le` (TorsionDiff:54) | PASS | Max-row-sum operator norm; bottom row is a sum, not a vector sup norm. |
| `to-omega`: affine identity | `TorsionDiff.torsion_sub_freq` (TorsionDiff:76) | PASS | Correct negative transport sign and bilinear transpose. Holds at any two real frequencies. |
| `to-omega`: Cauchy bound | `TorsionDiff.norm_torsion_sub_freq_le` (TorsionDiff:93) | PASS | General bound `2n B (n d δ⁻¹ B)` on the smaller strip; substituting `B=2m²` gives `8n²m⁴d/δ`. |
| `to-row`: row algebra bound | `TorsionDiff.sum_norm_mul_le` (TorsionDiff:132) | PASS | Sum interchange and row sums; arbitrary finite input index type. |
| `to-row`: exact splitting | `TorsionDiff.energyRow_sub` (TorsionDiff:145) | PASS | Retains the frozen `DH(K)N` row off invariance; no replacement by frequency. |
| `to-row`: row estimate | `TorsionDiff.sum_norm_energyRow_sub_le` (TorsionDiff:157) | PASS | Stronger bound `B₁a+B₂b`, with no extra dimension factor; inherited dual-norm coefficient estimate justifies this. |
| `to-row`: mean value bound | `TorsionDiff.norm_fderiv_sub_le_mvt` (TorsionDiff:193) | PASS | Uses holomorphy and the genuine complex second-derivative bound on an open domain; segment lies in the supplied ball. |
| `to-avg`: frozen block difference | `TorsionDiff.norm_extendedTorsion_sub_le` (TorsionDiff:219) | PASS | Includes the frequency column and complete energy row; gives `max(a+d,e)`. |
| `to-avg`: entrywise integral | `TorsionDiff.torusAverage_matrix_apply_fintype` (TorsionDiff:234) | PASS | Continuous finite matrix function, compact unit cube, continuous linear entry map; no nonintegrable fallback. |
| `to-avg`: integral norm | `TorsionDiff.norm_extendedTorsionAverage_sub_le` (TorsionDiff:245) | PASS | Entrywise frozen average identified with Bochner average of the difference; cube volume one. |
| `to-avg`: domination | `TorsionDiff.torsion_diff_arith` (TorsionDiff:275) | PASS | Uses only `δ∈(0,1]`, `d≥0`, Params and the literal constant formula. |
| `to-row`: constants | `TorsionDiff.energy_row_arith` (TorsionDiff:305) | PASS | Strong row estimate fits the unchanged, more generous blueprint `C_Y`. |
| `to-frame` assembly | `torsion_step`, lines 150–177 | PASS | Perturbation on `T_(r−2δ)`, loss δ; derives Gram bounds on `T_(r−3δ)` and same-frequency torsion bound on `T_(r−4δ)`. |
| `to-inv` assembly | `torsion_step`, lines 235–270 | PASS | `neumann_fintype` on `Fin n ⊕ Unit`; old bordered inverse bound and derived product ≤1/2 yield the stated increment. |

The intermediate hypotheses of the small helper estimates are the quantities those estimates bound, and are proved at their uses in `torsion_step`. They are not assumed as replacements for the package's hard steps. `IsoStanding` and `IsoAdmissible` supply source premises: old-frequency Diophantinity, admissibility, the old bordered inverse, and the five Hamiltonian bounds. No unbordered inverse premise, conclusion-shaped premise, or new instance is introduced.

## Definitions and dependency direction

**No new `def`, `abbrev`, or `structure` occurs in either package module.** The only new local object of note is the continuous linear entry-evaluation map in the averaging proof; its body is the actual matrix coordinate map.

The reused `isoNewtonMap` equals `K+ΔK` on its open correction strip and equals K outside. The new proofs only differentiate or assert primaryness within that open strip. Realness explicitly requires positive width. None of the package's estimates relies on the outside value. The reused bordered matrix is the frozen `Fin n ⊕ Unit` carrier, with genuine `DH(K)N` energy row and entrywise `[0,1]^n` average. Gram and bordered matrix inverses are used only after determinant invertibility is supplied or proved. These are guarded mathematical uses of total Lean operations.

`TorsionDiff` imports only `Iso.Apost.Constants`, `Iso.Linear.Extended`, `Apost.PerturbationTorsion`, and tactics. It does not import Correction, Torsion, NewError, Step, Iteration, any provider, or any frozen theorem. `Torsion` imports Correction and TorsionDiff. A recursive source-import scan visited 82 KAM modules and found **zero provider or frozen-theorem imports**. The Iso.Apost modules in that closure are precisely Defs, Standing, Constants, ConstantsArith, Correction, TorsionDiff, Torsion. Thus the extra module respects the intended DAG. The Newton-error theorem is unnecessary here: its constructions are already defined upstream and the correction theorem supplies the needed displacement/frequency bounds. No forward theorem is assumed.

## B1, estimates, and documentation notes

1. **B1 is paid in Lean.** The blueprint at `blueprint-I/parts/p2-iso-iteration.tex:216` quotes `extended-basic` at the new, uncertified frequency. Design §5.1 B1 correctly identifies that the quoted package carries a Diophantine setting. `Torsion.lean:175–177` instead applies `extended_regular` (`KAM/Iso/Linear/Extended.lean:255`) with the standing at the old frequency and a separate arbitrary frequency argument. The proof of that helper uses Hamiltonian holomorphy, the torus image and genuine Gram invertibility. No Diophantine property or ray endpoint bound for the new frequency is required or inferred. Although the public torsion signature retains only real-slice continuity, the same application also proves holomorphy on `T_(r−3δ)`, so the blueprint's “defined” assertion is sound.
2. **Correct loss is `d/δ²`.** The handoff's AUDIT FOCUS says “bound C_Δ𝖳 d/δ”; the blueprint at lines 209–212, design signature and actual theorem all have `d/δ²`. The handoff's opening summary and module docstring also use `δ²`. Treat the focus phrase as a documentation typo; no stronger `d/δ` estimate has been proved.
3. **The energy-row bound is stronger.** `sum_norm_energyRow_sub_le` uses the operator dual norm to sum the derivative coefficients, avoiding the blueprint's entrywise factor n. `energy_row_arith` still lands at the unchanged `C_Y`, whose dependence remains only `(n,M,σK,σB,σT)`. This changes no source hypothesis or output constant.
4. **No original absolute frame bounds are overclaimed.** The result states crude `2m` derivative/Gram-inverse bounds and separate increments. It does not assert the original σK/σB bounds without a margin. The later iteration must supply that margin.

For the B1 documentation issue, the exact printed fragment at `blueprint-I/parts/p2-iso-iteration.tex:216` is “Lemma~\ref{bpI:p1:extended-basic}, applied to $\bar K$ on $T_{r-3\delta}$”. Its problem is the unsupplied Diophantine premise of that cited package at the new frequency. A documentation repair is to cite the any-frequency regularity argument, implemented by `extended_regular`, instead of the full `extended-basic` package. This is an existing blueprint citation defect, not a suspected HL19 erratum.

The B1 citation issue remains in blueprint/graph documentation; the existing graph `stepI:p2:to-frame` SOURCE_GAP note describes that printed citation, not a missing Lean proof after this package's any-frequency argument. No blueprint or graph edit was made here. No newly suspected pinned-source defect was found. This audit checks fidelity to the supplied pinned-source-derived blueprint; it does not claim a fresh independent reading of the HL19 PDF.

## Independent verification

Commands were run from `/root/code/KAM-inp-i25`. The targeted build used the required compile gate. Scratch probes were restricted to this worktree's `.lake/abi-scratch/` and removed after verification.

### Targeted build

```sh
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i25 KAM.Iso.Apost.Torsion
```

Exit 0; output:

```text
[inp-gate] slot 2 acquired 02:50:01 for KAM.Iso.Apost.Torsion
Build completed successfully (3211 jobs).
```

This was an incremental targeted build using the existing overlay, not a clean rebuild; the gate invokes `nice -n 5 lake build`.

### Exact signature and axioms

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I25Audit1.lean
```

Exit 0, no errors, no warnings. The design-copy application and `rfl` type equality succeeded. All 18 theorem axiom queries produced exactly `[propext, Classical.choice, Quot.sound]` (line wrapping aside):

```text
'KAM.Iso.Apost.TorsionDiff.bordMat_sub' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionDiff.norm_bordMat_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionDiff.torsion_sub_freq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionDiff.norm_torsion_sub_freq_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionDiff.sum_norm_mul_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionDiff.energyRow_sub' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionDiff.sum_norm_energyRow_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionDiff.norm_fderiv_sub_le_mvt' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionDiff.norm_extendedTorsion_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionDiff.torusAverage_matrix_apply_fintype' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionDiff.norm_extendedTorsionAverage_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionDiff.torsion_diff_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionDiff.energy_row_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionAux.isoNewtonMap_of_mem' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionAux.isoNewtonMap_differentiableOn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionAux.isoNewtonMap_isPrimaryOnStrip' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.TorsionAux.isoNewtonMap_isRealOnReals' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Apost.torsion_step' depends on axioms: [propext, Classical.choice, Quot.sound]
```

### Kernel replay

```sh
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Apost.Torsion KAM.Iso.Apost.TorsionDiff > /tmp/I25-audit-1-leanchecker.log 2>&1
```

Exit 0. Complete output:

```text
replaying KAM.Iso.Apost.TorsionDiff
replaying KAM.Iso.Apost.Torsion
```

No provider module exists in this package; both implementation modules were replayed in the single required invocation.

### Lint and source hygiene

Final serialized lint run:

```sh
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh > /tmp/I25-audit-1-lint.log 2>&1
```

Exit 1, solely for the explicitly permitted generated-root mismatch. Complete output:

```text
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (360 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
```

The earlier plain `sh scripts/lint_sources.sh` run returned the same exit and output; the final rerun above explicitly supplied the requested thread limit and priority, including for the script's ABI elaboration subprocess. The direct signature probe, kernel replay and final lint ABI run were sequential. Other campaign workers' processes were outside this audit's control.

Both new files have copyright/authors, `module`, public interface imports, module docstrings, and `@[expose] public section`. They contain 274 and 345 lines respectively. A direct scan for `sorry`, `admit`, `axiom`, `unsafe`, `opaque`, `set_option`, and `EuclideanSpace` returned no matches. No heartbeat, recursion-depth or synthesis-budget override was used by the package or the independent probe.

`git diff --check inp...HEAD` exited 0 (only the already recorded merge-base warning). `git diff --no-index --check /dev/null /root/code/KAM-inp-i25/docs/tracks/I/audits/I2-5-audit-1.md` returned 1 for the added-file comparison, with no whitespace diagnostics after removing a trailing blank line. The independent probe `.lake/abi-scratch/I25Audit1.lean` was removed. The lint tool also removed its own ABI scratch probe. No production source, frozen file, manifest, graph, generated root or README was changed by the auditor.

## Handoff

Only this report was written as an audit deliverable. The pre-existing untracked `I2-5-handoff.md` was preserved. I2-5 is accepted with the documentation/integration notes above. No additional mathematical uncertainty was found within the audited statement. The remaining I-G1 iteration, limit, provider assembly and eventual frozen seal are separate obligations; the clean axiom and replay receipts here apply to these 18 proved intermediate theorems.
