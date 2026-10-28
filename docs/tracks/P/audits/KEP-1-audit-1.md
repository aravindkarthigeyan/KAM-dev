# KEP-1 independent package audit 1

Verdict: **FAIL (required kernel replay did not complete)**. Marker: `audit-kep1`.

Audited `/root/code/KAM-inp-kep1`, branch `inp-kep1`, commit `852073f2a464f09ce5f3852827d66055d4da56a7`, against its parent `2aa230b8069d3efbb1bc9774ac08ad009f76e29b`. The package adds only Basic (118 lines), Plane (308 lines) and Energy (171 lines), with **45 public theorems and 17 public definitions**. No provider or frozen theorem anchor belongs to this package, so provider/type and seal-body checks are inapplicable.

Read the complete package-audit brief, repository rules and planning/decision context, binding design/signatures, relevant track statements, frozen definitions and blueprint statements. The requested `git diff inp...HEAD` is empty because the current inp tip already contains this commit (merge-base is 852073f). The substantive audit therefore uses the user-specified parent-to-commit delta, not that empty moving-branch comparison. Both comparisons show no changes under KAM/Frozen, manifest, KAM.lean or README.md. The package worktree started clean.

## Findings and placement notes

No source-fidelity, hypothesis, carrier, definition, or proof defect found. The required kernel-replay gate remains unmet: the sole invocation terminated with exit 143 and no output. This is a validation failure, not a counterexample to a package theorem. The declaration-level PASS rows below concern the completed source/type/axiom checks and do not assert successful kernel replay. **Integration note:** `isOpen_regionMK`, `scaleMK_energy`, `scaleMK_cross`, `scaleMK_symplectic` and `scaleMK_bijective` already occupy their final `KAM.Kepler.*` names in Energy (L106–167). The signature file groups them under Mass (A L574–580), while design section 6 explicitly allows early openness/scaling lemmas in Energy. KEP-10 must import and reuse these declarations, omitting duplicate declarations when transcribing the Mass signature section; otherwise Lean will reject the duplicate names. This is a future integration hazard, not a current duplicate or mathematical defect.

`rot` and `ex` are in Basic L55–59 rather than signature section A's Plane grouping. The design module table already puts them in Basic. Their namespace, bodies and types agree, and Plane publicly imports Basic. Likewise the early energy/element definitions implement the design's deliberate split from Orbit/Mass. No API is renamed or weakened by these placements.

Energy L106 retains the draft's unused `hm` and `hκ` parameters on `isOpen_regionMK`, producing two build warnings. Openness actually holds for arbitrary real parameters; retaining these binders preserves the binding interface. No lint option was disabled.

## Signature and blueprint correspondence

The draft hashes match the binding design: A–E `39f557a4ca7324443508351a3600f0a363e2db726a11af0d6cc58e793d521370`; P `d9903304231afac0841cf0456d90c3dec04b2eb9e1a9752a9d4f9f9b7164d9c8`. All 17 public definition bodies and all 62 complete public declaration headers match modulo whitespace, including explicit/implicit binders and their order. The extractor recognizes only top-level body separators, so named arguments such as `(R := ℝ)` remain in the compared type. A fresh scratch probe independently reconstructs every draft signature as a forall type and checks `example : <draft type> := @KAM.Kepler.<name>` for all 62 exports: exit 0. No draft `sorry` body is imported. An initial audit-probe generator incorrectly split two derivative signatures at named-argument separators; correcting the generator yielded the clean result above.

Blueprints checked: P6 L19–56 (`plane` and its proof); I7 L144–168 (`elements`, `orbit-maps`), L205–213 (form convention), L252–258 (Lagrange/rotation reconstruction), L311–322 (`scaling`); P7 L28–34 and L48–57 (standing positive mass/strength and `kepler-data`); I6 L112–133 (period conversion and symplectic convention). Physical length is the frozen Euclidean length, distinct from the ambient Pi max norm; the comparison factor is exactly sqrt(2). Coordinates remain position then momentum. Rotations use radians and period 2*pi; period-one conversion remains at the later track boundary. The frozen symplectic form has sign sum dp wedge dq; the I blueprint's opposite matrix convention gives the same preservation identity, and the scale factor here is m, not 1, before the mass-action conversion.

The two AnalyticAt planar-length results strengthen the source's smoothness claims. The inverse-cube force is an explicit analytic auxiliary, with the nonzero vector premise required by the source domain. The derivative linear maps evaluate to dot(v,h)/length(v) and -dot(v,h)/length(v)^3. `scaleMK_energy` holds on all Phase 2, including q=0 under Lean total division; the proof explicitly handles zero length, so no unguarded physical collision argument is used. `phaseCast_hamiltonianVectorField` needs no differentiability premise because, after substituting the dimension equality, the cast is the identity and the claim is definitional even for total fderiv.

The table inventories every public declaration. Names below have prefix `KAM.Kepler.`; the source column names the implemented node or an explicit design auxiliary. Each theorem's premises and conclusion agree with its exact draft signature.

| Node / design role | Declaration (module:line) | Verdict | Reason / note |
|---|---|---|---|
| Design symplectic auxiliary | `IsSymplecticOn` (Basic:31) | PASS | Exact draft type; intended total definition. |
| Design symplectic auxiliary | `IsSymplecticOn.comp` (Basic:37) | PASS | Exact draft type; checked proof and standard axioms. |
| Design reindex/complexification auxiliary | `phaseToC` (Basic:51) | PASS | Exact draft type; intended total definition. |
| P7 rotation convention / design auxiliary | `rot` (Basic:55) | PASS | Exact draft type; intended total definition. Basic placement noted above. |
| P7 unit direction / design auxiliary | `ex` (Basic:59) | PASS | Exact draft type; intended total definition. Basic placement noted above. |
| Design reindex/complexification auxiliary | `phaseCast` (Basic:65) | PASS | Exact draft type; intended total definition. |
| Design reindex/complexification auxiliary | `phaseCast_apply` (Basic:69) | PASS | Exact draft type; checked proof and standard axioms. |
| Design reindex/complexification auxiliary | `phaseCast_symm` (Basic:75) | PASS | Exact draft type; checked proof and standard axioms. |
| Design reindex/complexification auxiliary | `phaseCast_symplectic` (Basic:79) | PASS | Exact draft type; checked proof and standard axioms. |
| Design reindex/complexification auxiliary | `phaseCast_hamiltonianVectorField` (Basic:85) | PASS | Exact draft type; checked proof and standard axioms. |
| Design reindex/complexification auxiliary | `phaseCast_volume` (Basic:94) | PASS | Exact draft type; checked proof and standard axioms. |
| Design reindex/complexification auxiliary | `phaseCast_measurableEquiv` (Basic:102) | PASS | Exact draft type; checked proof and standard axioms. |
| Design reindex/complexification auxiliary | `phaseCast_analytic` (Basic:111) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeSq_eq_planeDot` (Plane:45) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeLength_sq` (Plane:51) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeLength_nonneg` (Plane:54) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeLength_eq_zero_iff` (Plane:65) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeLength_pos_iff` (Plane:69) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeLength_neg` (Plane:72) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeLength_sub_comm` (Plane:75) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeLength_smul` (Plane:78) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeSq_mul_planeSq` (Plane:85) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `abs_planeDot_le` (Plane:89) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeLength_add_le` (Plane:95) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `abs_planeLength_sub_le` (Plane:107) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `norm_le_planeLength` (Plane:117) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeLength_le_sqrt_two_mul_norm` (Plane:125) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `eq_of_planeDot_planeCross_eq` (Plane:137) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeLength_rot` (Plane:150) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeDot_rot` (Plane:157) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `planeCross_rot` (Plane:162) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `rot_rot` (Plane:168) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `rot_two_pi_int` (Plane:171) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `rot_quarterTurn` (Plane:176) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `rot_ex` (Plane:180) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `exists_rot_eq` (Plane:184) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `analyticAt_planeLength` (Plane:240) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `analyticAt_inv_planeLength` (Plane:252) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `analyticAt_inv_cube_smul` (Plane:256) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `hasFDerivAt_planeLength` (Plane:262) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `hasFDerivAt_inv_planeLength` (Plane:286) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `radius_eq_planeLength` (Plane:301) | PASS | Exact draft type; checked proof and standard axioms. |
| bpP:p6:plane / planar auxiliary | `radiusSq_eq_planeSq` (Plane:302) | PASS | Exact draft type; checked proof and standard axioms. |
| bpI:p7:orbit-maps | `eccOf` (Energy:30) | PASS | Exact draft type; intended total definition. |
| bpI:p7:elements | `kE` (Energy:33) | PASS | Exact draft type; intended total definition. |
| bpI:p7:orbit-maps | `deDom` (Energy:36) | PASS | Exact draft type; intended total definition. |
| bpI:p7:elements | `keplerRegion` (Energy:39) | PASS | Exact draft type; intended total definition. |
| bpI:p7:elements | `elemL` (Energy:43) | PASS | Exact draft type; intended total definition. |
| bpI:p7:elements | `elemA` (Energy:44) | PASS | Exact draft type; intended total definition. |
| bpI:p7:elements | `elemEcc` (Energy:45) | PASS | Exact draft type; intended total definition. |
| bpI:p7:scaling; bpP:p7:kepler-data | `scaleMK` (Energy:48) | PASS | Exact draft type; intended total definition. |
| bpI:p7:scaling; bpP:p7:kepler-data | `energyMK` (Energy:50) | PASS | Exact draft type; intended total definition. |
| bpI:p7:scaling; bpP:p7:kepler-data | `axisMK` (Energy:51) | PASS | Exact draft type; intended total definition. |
| bpI:p7:scaling; bpP:p7:kepler-data | `actionMK` (Energy:52) | PASS | Exact draft type; intended total definition. |
| bpI:p7:scaling; bpP:p7:kepler-data | `regionMK` (Energy:54) | PASS | Exact draft type; intended total definition. |
| bpI:p7:elements | `isOpen_keplerRegion` (Energy:78) | PASS | Exact draft type; checked proof and standard axioms. |
| bpI:p7:orbit-maps | `isOpen_deDom` (Energy:101) | PASS | Exact draft type; checked proof and standard axioms. |
| bpI:p7:scaling; bpP:p7:kepler-data | `isOpen_regionMK` (Energy:106) | PASS | Exact draft type; checked proof and standard axioms. Reuse in future Mass; do not redeclare. |
| bpI:p7:scaling; bpP:p7:kepler-data | `scaleMK_energy` (Energy:127) | PASS | Exact draft type; checked proof and standard axioms. Reuse in future Mass; do not redeclare. |
| bpI:p7:scaling; bpP:p7:kepler-data | `scaleMK_cross` (Energy:137) | PASS | Exact draft type; checked proof and standard axioms. Reuse in future Mass; do not redeclare. |
| bpI:p7:scaling; bpP:p7:kepler-data | `scaleMK_symplectic` (Energy:149) | PASS | Exact draft type; checked proof and standard axioms. Reuse in future Mass; do not redeclare. |
| bpI:p7:scaling; bpP:p7:kepler-data | `scaleMK_bijective` (Energy:159) | PASS | Exact draft type; checked proof and standard axioms. Reuse in future Mass; do not redeclare. |

## Definition classification

All definitions use their intended formulas on the whole Lean carrier, without choice, conditionals, artificial instances or conclusion-shaped fields:

| Definitions | Classification |
|---|---|
| IsSymplecticOn | Prop-valued derivative/form identity on the specified set; heterogeneous dimensions. Composition separately assumes genuine differentiability, avoiding total-fderiv misuse. |
| phaseToC | Coordinatewise real-to-complex inclusion. |
| rot; ex | Explicit trigonometric rotation and unit direction. |
| phaseCast | Canonical continuous linear equivalence induced by dimension equality; no arbitrary reindexing choice. |
| eccOf | Explicit sqrt(1-G^2/L^2); real sqrt/division totalize outside the physical cone. |
| kE; energyMK | Explicit kinetic minus frozen-length potential, with Lean division totalized at collisions. |
| deDom; keplerRegion; regionMK | Literal strict-inequality sets; positive frozen length is equivalent to nonzero position. The strict angular momentum bound excludes circular orbits only in keplerRegion, as intended. |
| elemL; elemA; elemEcc; axisMK; actionMK | Literal source element formulas. Physical interpretation is confined to the declared negative-energy region; no theorem infers physical facts from off-domain sqrt/division values. |
| private scaleCLM (Energy L143) | Genuine block-diagonal continuous linear map, definitionally equal to scaleMK. Used only to compute its derivative. |

The frozen planeLength, planeSq, planeDot, planeCross, quarterTurn, symplecticForm, Phase and hamiltonianVectorField are imported and used, never redeclared. Radius/RadiusSq are imported frozen Iso definitions; both bridge equalities are rfl. Recursive inspection of the complete KAM import closure finds 41 modules and no provider, frozen theorem, or ODE implementation import. No new instance, structure or axiom is introduced.

## Validation receipts

All commands run in the package worktree. Lean commands were serialized, used nice -n 5, and set LEAN_NUM_THREADS=2. No heartbeat, recursion or synthesis override was used.

Targeted build:

```text
LEAN_NUM_THREADS=2 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-kep1 KAM.Kepler.Basic KAM.Kepler.Plane KAM.Kepler.Energy
[inp-gate] slot 1 acquired 23:49:08 for KAM.Kepler.Basic KAM.Kepler.Plane KAM.Kepler.Energy
Build completed successfully (9087 jobs).
Exit: 0
```

The build replayed Energy and emitted only the two unused-variable warnings at Energy:106 described above.

Type/axiom probe:

```text
LEAN_NUM_THREADS=2 nice -n 5 lake env lean .lake/abi-scratch/KEP1Audit.lean
Exit: 0
62 draft-type checks; 45 #print axioms commands; 0 errors.
```

The scratch examples emit only unused-binder warnings. Exact theorem axiom output:

```text
'KAM.Kepler.IsSymplecticOn.comp' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.phaseCast_apply' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.phaseCast_symm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.phaseCast_symplectic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.phaseCast_hamiltonianVectorField' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.phaseCast_volume' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.phaseCast_measurableEquiv' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.phaseCast_analytic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeSq_eq_planeDot' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeLength_sq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeLength_nonneg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeLength_eq_zero_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeLength_pos_iff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeLength_neg' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeLength_sub_comm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeLength_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeSq_mul_planeSq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.abs_planeDot_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeLength_add_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.abs_planeLength_sub_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.norm_le_planeLength' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeLength_le_sqrt_two_mul_norm' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.eq_of_planeDot_planeCross_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeLength_rot' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeDot_rot' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.planeCross_rot' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.rot_rot' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.rot_two_pi_int' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.rot_quarterTurn' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.rot_ex' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.exists_rot_eq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.analyticAt_planeLength' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.analyticAt_inv_planeLength' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.analyticAt_inv_cube_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.hasFDerivAt_planeLength' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.hasFDerivAt_inv_planeLength' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.radius_eq_planeLength' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.radiusSq_eq_planeSq' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.isOpen_keplerRegion' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.isOpen_deDom' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.isOpen_regionMK' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.scaleMK_energy' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.scaleMK_cross' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.scaleMK_symplectic' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Kepler.scaleMK_bijective' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Kernel replay (exactly one invocation):

```text
LEAN_NUM_THREADS=2 nice -n 5 lake env leanchecker --verbose KAM.Kepler.Basic KAM.Kepler.Plane KAM.Kepler.Energy
Tool completion output: Terminated
Exit: 143
Captured stdout/stderr: empty (0 bytes)
```

No replay success or per-module kernel-check result was produced. Exit 143 is consistent with termination by SIGTERM; the tool output does not establish who sent it or why. It is not a kernel rejection diagnostic. No second invocation was made, respecting the requested single replay. This missing successful receipt prevents an overall PASS despite the completed theorem/type/axiom checks.

Source lint:

```text
LEAN_NUM_THREADS=2 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (260 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
Exit: 1
```

The sole lint failure is the expressly permitted generated-root staleness. All remaining lint checks pass, including the frozen guard and elaborated ABI hashes. KAM.lean was left unchanged. Package scans find no sorry, admit, axiom, unsafe, opaque, EuclideanSpace, option override, over-100-character line or file over 1500 lines. Each module has the copyright header, module command, public imports, module docstring and exposed public noncomputable section.

Read-only delta/whitespace checks:

```text
git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md
(empty; exit 0)
git diff HEAD^ HEAD -- KAM/Frozen manifest KAM.lean README.md
(empty; exit 0)
git diff HEAD^ HEAD --check
(empty; exit 0)
```

Audited file SHA-256 values, rechecked against the committed bytes after validation:

| File | SHA-256 |
|---|---|
| KAM/Kepler/Basic.lean | 397d783d5ed1f99e1b4aba8d282a9789b3218c20672d6bb9a664d95efb0baa7e |
| KAM/Kepler/Plane.lean | d34e49e41e96d6875cbbacb6f94364fecfbd50da929e289ef6536f1e0b1334e9 |
| KAM/Kepler/Energy.lean | 3825b90b48f052c05ed00ea69adae18524f5ac4fe1ff3ad25679de05338f6abb |

## Suspected source defects, deviations and limits

No new suspected pinned-source or blueprint defect was found in this package. The placement differences, stronger analytic statements and harmless totalized-domain extensions are recorded above. The complete Delaunay map, Mass module, chart/flow applications and physical-model theorems belong to later packages and receive no proof verdict here. There is no frozen anchor to seal in KEP-1.

The remaining validation obligation is a successful kernel replay. This audit does not authorize or claim a rerun beyond the single requested invocation. Scratch probe and captured logs were deleted after their receipts were copied into this report. Only this report was persistently written; no source, frozen definition, manifest, generated root, package commit or git state was changed.


## Orchestrator addendum: kernel replay (2026-10-28)

The auditor's single replay was killed (exit 143, SIGTERM from the machine's memory guard, not a kernel verdict).
The sub-orchestrator re-ran it one module at a time with `LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose`
in `/root/code/KAM-inp-kep1` (commit 852073f): `KAM.Kepler.Plane` exit 0 (max RSS 5.9 GB), `KAM.Kepler.Energy` exit 0
(6.1 GB); `KAM.Kepler.Basic` was killed once more by the guard and then passed on retry (exit 0). With the auditor's
finding "no source-fidelity, hypothesis, carrier, definition, or proof defect", the package verdict is **PASS**.
