# P8-3 independent audit 1

Verdict: **PASS WITH NOTES for P8-3 helper infrastructure** at `ea93c61fed020f9816671931c64976b0342d40c2` (2026-10-28). No mathematical or implementation defect found in `KAM/Iso/R3bp/Safe.lean`. No frozen anchor is proved or sealed by this package; in particular this is **not** a seal-readiness verdict for I-R3BP, I-HEAD, I-G1, or any N/P anchor. The provider/frozen-type and frozen seal-body tests are inapplicable because P8-3 introduces no provider export. Instead all eight specified helper theorem signatures were independently elaborated from design section M with bodies applying the actual exports to their explicit binders in order.

## Scope and baseline qualification

Read the package audit brief, AGENTS.md, PLAN.md, DECISIONS.md, handoff AUDIT FOCUS, Part58 design section M and P8-3 proof plan, both design audits, Track I statements, blueprint-I Part 8 safe-region statements/proof, the relevant frozen I-R3BP/I-HEAD anchors and NearCircular definition, and the imported Region/ComplexDomain interfaces. The live signature file `/root/code/KAM-inp/.drafts/design/IPart58Signatures.lean` section M is identical to the embedded design section M.

The explicit user instruction fixes this report's location inside `/root/code/KAM-inp-p83`, overriding the generic brief's main-worktree destination. No production source, frozen file, manifest, generated file, or git state was edited.

Both required comparisons were inspected:

```text
git diff --stat inp...HEAD
  14 files changed, 1890 insertions(+)
  warning: inp...HEAD: multiple merge bases, using 9f661c12a0462a485f90ba1e3289a8e5f2ad3a37
git diff --stat inp-p82...HEAD
  14 files changed, 1890 insertions(+)
git show --stat ea93c61
  KAM/Iso/R3bp/Safe.lean | 230 +++++++++++++++++++++++++++++++++++++++++++++++++
  1 file changed, 230 insertions(+)
git diff HEAD^ HEAD --name-only
  KAM/Iso/R3bp/Safe.lean
```

Baseline refs at inspection: `inp=ee49a8e953a5e0763fbe7f293ea67601357155cc`, `inp-p82=5895ad2f07ed1f8e283cba922a5bc0345aef924b`. The three-dot comparisons contain inherited merge work: four Canonical/Flow modules, Iso/Apost/G1, Provider/Iso/IsoenergeticKam, six earlier audit/handoff files, and KAM.lean, in addition to Safe.lean. Those other packages are not independently recertified here. `git diff inp...HEAD -- KAM/Frozen manifest README.md` is empty; adding `KAM.lean` makes the requested hygiene comparison **nonempty**, as does the handoff's `inp-p82...HEAD` comparison. Specifically six generated imports were added for FlowPicard, FlowPicardConverge, FlowRegular, FlowRegularIntegral, Iso.Apost.G1, and Iso.NearCircular. This is inherited from the pre-P8-3 history: `git diff HEAD^ HEAD -- KAM/Frozen manifest KAM.lean README.md` is empty. Thus the literal whole-range protected-path check does not pass; it is not a P8-3 edit. Do not describe the whole three-dot delta as “only Safe.lean.”

## Declaration review

All names below have prefix `KAM.Iso.R3bp.`. Every new public declaration is listed. The eight contracted theorems match the specified premises, implicit/explicit binders, order, carriers and conclusions; no extra source premise or broader constant dependence occurs.

| Blueprint node / role | Lean declaration | Verdict | Reason |
|---|---|---|---|
| p8:safe | `safeT` | PASS | Exact minimum of 1/8 and (1-ap(1+ep))/(6ap). |
| p8:safe | `safeAminus` | PASS | am/2. |
| p8:safe | `safeAplus` | PASS | ap(1+safeT ap ep). |
| p8:safe | `safeEminus` | PASS | em/2. |
| p8:safe | `safeEplus` | PASS | ep+safeT ap ep. |
| p8:safe | `safeU` | PASS | Open action inequalities at the enlarged parameters. |
| p8:safe | `safeK` | PASS | Closed action inequalities at the enlarged parameters. |
| p8:safe | `safeB` | PASS | Image of U under multiplication by 2π. |
| p8:safe | `safeB'` | PASS | Image of the original A under multiplication by 2π. |
| safe-region, parameter positivity | `safeT_pos` | PASS | hinner and ap>0 give positivity of both minimum branches. |
| safe-region, auxiliary bound | `safeT_le_eighth` | PASS | Unconditional bound, stronger than requiring physical parameters. |
| sr-radii, auxiliary bound | `safeT_mul_le` | PASS | The second minimum branch and ap>0 give 6ap t ≤ 1-ρ*. |
| safe-region, enlarged shape | `safe_regionParams` | PASS | Correct weaker RegionParams, with enlarged ePlus<3/8; does not require enlarged R3bpParams. |
| sr-incl | `safe_inclusions` | PASS | Original closed region lies strictly inside U; U⊆K; compactness, actual nonempty witness and cone membership proved. |
| sr-elements | `safe_elements` | PASS | Correct squared-L and eccentricity bounds, guarded by the positive cone. |
| sr-radii, arithmetic | `safe_rho_arith` | PASS | Correct polynomial inequality with only numerical/source-derived bounds; equivalent form of design's 3ap t ≤ (1-ρ*)/2. No ep≥0 premise needed. |
| sr-radii | `safe_radii` | PASS | Correct sSup upper bound, sInf lower bound, strict positivity and outer radius<1, plus min≤max. |
| sr-radii, extremum adapter | `kRmin_le` | PASS | SafeAction ensures compactness/nonemptiness and continuity of the radius function. |
| sr-radii, extremum adapter | `le_kRhoMax` | PASS | Same safeguards for the supremum. |
| sr-B / safe-region(e) | `safe_domain` | PASS | Open bounded nonempty B, open B′, compact closure inside B and correctly rescaled actions in K; only the four fixed parameters occur. |

## Definitions and proof integrity

There are nine new definitions and no new structures, abbreviations, instances, or choices. Each definition body is text-identical to section M. The five real-valued formulas are literal total formulas; Lean's total division in safeT at ap=0 is not used to obtain a physical conclusion. The theorems that need positivity use R3bpParams, which implies ap>0. The four set-valued definitions are genuine inequality sets or scalar images on their whole carriers, with no fallback branches or invented witnesses.

R3bpParams is the existing bundle of exactly the six frozen physical parameter premises. RegionParams and SafeAction are existing geometric standing data, not assumed target conclusions: safe_inclusions proves SafeAction for the constructed K. The generic extremum adapters correctly assume SafeAction as their domain specification. No conclusion-shaped hypothesis, hidden hard-step instance, or extraneous dynamical assumption appears.

For the arithmetic, write ρ*=ap(1+ep). The excess of ap(1+t)(1+ep+t) over ρ* is ap t(2+ep+t). Since ep<1/4 and t≤1/8, this is at most 3ap t. The hypothesis 6ap t≤1-ρ* gives the desired half-gap bound. This remains valid without a lower bound on ep. The actual nlinarith proof uses the valid nonnegative product ap t(1-ep-t).

The extrema are the actual sInf/sSup image definitions from ComplexDomain. On the compact nonempty cone, the radius functions are continuous and attain their extrema. The upper/lower comparisons in Safe use nonempty images; no empty-set extremum default enters. The positive lower radius uses aMinus′>0 and ePlus′<3/8. The final min≤max comparison uses a single actual point of K.

The blueprint's intermediate inequality `kRhoMax K ≤ safeAplus ap ep * (1 + safeEplus ap ep)` appears inside the proof rather than as a conjunct of safe_radii, exactly as the design signature specifies. An independent scratch example also derived it from the public interface. Similarly the closure-image identity is an internal step of safe_domain and was independently elaborated. The existing closure_actionRegion_subset supplies the blueprint's preceding closure-A inclusion. Openness/boundedness of U follow from isOpen_actionRegion and U⊆compact K. These are interface packaging choices, not missing mathematical steps. All quantities depend only on the four fixed parameters, so safe-region(e) is implemented definitionally.

A recursive scan of 59 local transitive import modules found **no frozen theorem or provider import** in the Safe dependency closure. Frozen definitions are legitimate dependencies. No new production consumer imports a provider or draft theorem.

## Independent validation

Commands were run sequentially with `LEAN_NUM_THREADS=1`; every direct Lean/Lake/checker invocation used `nice -n 5`. The targeted build ran through the required compile gate. No heartbeat, recursion-depth, or synthesis-heartbeat override was used. No library clean/update/cache retrieval or package edit occurred.

### Targeted build

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-p83 KAM.Iso.R3bp.Safe
[inp-gate] slot 1 acquired 03:45:08 for KAM.Iso.R3bp.Safe
⚠ [9086/9101] Replayed KAM.Kepler.Energy
warning: KAM/Kepler/Energy.lean:106:35: Variable name `hm` is not explicitly referenced.
warning: KAM/Kepler/Energy.lean:106:48: Variable name `hκ` is not explicitly referenced.
Build completed successfully (9105 jobs).
exit 0
```

The warnings are inherited unused-variable warnings, not Safe errors.

### Signature, blueprint interface, and axiom probes

Scratch file: `.lake/abi-scratch/P83Audit.lean` (deleted after checks). Imported only `KAM.Iso.R3bp.Safe`. It copied all eight section-M theorem signatures under fresh names, with `by exact <export> hp`, `by exact safe_elements hp hx`, or the corresponding extremum adapter `hK hx`. It also proved the intermediate radius upper bound and closure-image identity described above. All eight exact prescribed signatures and both additional examples elaborated at default settings.

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/P83Audit.lean
exit 0
'KAM.Iso.R3bp.safeT_pos' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.safeT_le_eighth' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.safeT_mul_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.safe_regionParams' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.safe_inclusions' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.safe_elements' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.safe_rho_arith' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.safe_radii' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.kRmin_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.le_kRhoMax' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.R3bp.safe_domain' depends on axioms: [propext, Classical.choice, Quot.sound]
```

An initial extra scratch example failed because positivity did not unfold eccOf; giving the explicit `Real.sqrt_nonneg` fact fixed the audit example. This was not a package failure and required no production change or resource override.

### Kernel replay

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.R3bp.Safe
replaying KAM.Iso.R3bp.Safe
exit 0
```

This is one invocation on the sole P8-3 lemma module; there is no P8-3 provider module to add.

### Source hygiene

```text
LEAN_NUM_THREADS=1 nice -n 5 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (378 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

The exit code is 1 solely for the expected generated-root staleness; all other emitted checks passed, with no forbidden-token, line-length, or file-size complaints. The generated root was not modified by this audit. This is distinct from the inherited root diff in the baseline qualification.

Safe.lean has 230 lines, compliant copyright/module/public imports/module documentation/public exposed noncomputable section. It contains no sorry, admit, axiom, unsafe, opaque, forbidden ambient type or resource override. `git diff --check inp...HEAD` and `git diff HEAD^ HEAD --check` both exited 0 with no whitespace findings (the former prints the multiple-merge-base warning recorded above).

## Defects, uncertainty, and handoff

No suspected pinned-source erratum, blueprint contradiction, or mathematical deviation was found for P8-3. The safe-region blueprint labels its source “ours”; no external analytic/source theorem is being certified here. The proof follows the prescribed geometry, arithmetic and scalar homeomorphism route. Reusing the existing compact-extremum helpers is consistent with the design.

The only qualifications are repository integration: inherited nonempty KAM.lean branch diff, the generated-root lint condition recorded above, and the fact that the overall three-dot delta contains other packages. No frozen statement was changed or repaired. No claim is made about completing I-R3BP or the rest of tracks I/N/P.

Changed report: `/root/code/KAM-inp-p83/docs/tracks/I/audits/P8-3-audit-1.md`. Scratch probes and captured logs were removed after recording their results. The pre-existing untracked P8-3-handoff.md was preserved. No commit was made.
