# I1-1 independent package audit

**Verdict: PASS WITH NOTES.** The six I1-1 results implement their assigned design contracts without a material defect. No frozen anchor is proved by this infrastructure package; **seal readiness is not applicable** to I-G1, I-HEAD, I-R3BP or I-KEPLER. Their proof closure is not certified here.

Audited 2026-10-28 in `/root/code/KAM-inp-i11`, HEAD `2bf3f7acfd6c4f974a769263479b45d1b43244d7`. Requested comparison: `git diff inp...HEAD`, with observed inp `ddafdac0fda9b423caf119844f75f00579a37cb4`. This comparison adds six Lean files, 945 lines: four inherited I-D0 definition modules and the two I1-1 proof modules. The handoff's `inp-id0...HEAD` comparison spans 92 files including unrelated upstream history; it is not the package-only diff. The report follows the user's explicitly requested worktree destination, overriding the generic brief's main-worktree destination.

Read: AGENTS.md, PLAN.md, DECISIONS.md, `/root/code/KAM-inp/.drafts/briefs/inp-audit-package.md`, the handoff, design v2 (including Appendix A, reuse map, B4 and §7), both PART123 design audits, Track I statement, blueprint Part 1 ray/Neumann/totality contracts, Part 3 frequency-map uses, the frozen I-G1 and extended-torsion/bordered-Hessian definitions, and the relevant K APIs. This is a code and local blueprint audit; it does not claim a fresh audit of the pinned HL19 PDF.

## Declaration decisions

Names in the first six rows have prefix `KAM.Iso.Linear`. Their entire explicit signature text, from the first binder through the conclusion, is **byte-identical** to the corresponding design Appendix A signature (lines 830–874). Six independently generated examples, using those design statements with the actual implementations as bodies, elaborate at default resource limits.

| Node / contract | Lean declaration | Verdict | Reason |
|---|---|---|---|
| `bpI:p1:ray` | `isDiophantine_smul` (Tools:38) | PASS | Preserves exactly γ and τ. Allows `s = 1`, stronger than the blueprint's `s > 1`. No positivity assumption on γ or τ is needed for this implication. |
| `bpI:p1:ext-neumann` | `isUnit_det_one_sub` (Tools:50) | PASS | Strict radius one in the scoped row-sum operator norm; determinant is a unit, hence the matrix is invertible. No inverse bound is claimed. |
| `bp:p1:neumann`, finite-index adaptation | `neumann_fintype` (Tools:55) | PASS | Any `Fintype`/`DecidableEq` index, including the bordered `Fin n ⊕ Unit`; threshold `σ‖Δ‖ ≤ 1/2`, inverse bound `2σ`, difference bound `2σ²‖Δ‖`. Derives `0 ≤ σ` from the norm bound. |
| `bp:p1:real-inverse`, finite-index adaptation | `inv_im_eq_zero` (Tools:76) | PASS | Entrywise reality by determinant/adjugate naturality under ℝ→ℂ. Stronger than the invertible-only source statement: also true for Lean's total singular inverse. No inverse identity is asserted in the singular case. |
| K `bp:p4:freq-map` (ii)–(iii), design B4 | `freq_map_local` (FreqMap:163) | PASS | Open complex domain, holomorphy, reality on its real slice, and point membership suffice. Gives complex-gradient identification, real differentiability, Hessian derivative formula, symmetry and reality. No nondegeneracy premise. |
| Part 3 C¹ frequency-map interface | `freq_map_contDiff` (FreqMap:189) | PASS WITH NOTE | Both maps are C¹ and `D(Re h)(v) = frequencyMap h · v`. The retained `hreal` binder is unused; all clauses hold without it. Exact design interface, no conclusion loss. |
| I-D0 frozen-object bridge | `KAM.Iso.Linear.extendedTorsion_eq_bordMat` (Linear/Defs:62) | PASS | Entrywise definitional equality, retaining the actual `DH(K)N` last row off invariance. |
| I-D0 domain bridge | `KAM.Iso.Charts.fractD_eq_domainD` (Charts/Defs:46) | PASS | `rfl`; literal K domain. |
| I-D0 Hamiltonian bridge | `KAM.Iso.Charts.totalH_eq_hbold` (Charts/Defs:49) | PASS | `rfl`; literal K Hamiltonian. |

The other FreqMap lemmas are private proof components: openness of the real slice, local holomorphic differentiation, eventual reality, identification of partials, differentiation of the gradient, Hessian symmetry/reality, and C² regularity of the real restriction. None takes a conclusion-shaped assumption. They do not enlarge the public contract inventory above.

## Refutation checks and limits

1. **Kolmogorov dependence.** `KAM.Head.Data` (Standing:35–47) bundles domain/parameter restrictions and a global inverse-frequency inequality in `nondeg`. The new local theorem is valid on arbitrary open U and removes that bundle, retaining precisely the local analytic premises actually used. It therefore also removes irrelevant dimension, exponent and bounded-domain restrictions, as permitted by design B4. Its proof only invokes K helpers that do not require `Data`. There is no assumed Hessian inverse or bordered inverse.
2. **Constants.** K's `freq_map` (Frequency:407–435) puts quantitative bounds and Lipschitz constants in (iv)–(v). I1-1 explicitly ports (ii)–(iii). Neither new frequency theorem has quantitative constants to alter. The handoff's “keeps K's constants” is accurate only as a statement that this package does not redefine those constants; it is not a receipt for (iv)–(v). The inherited numerical constants reuse K definitions as documented.
3. **Arbitrary finite carriers.** Matrix lemmas use the generic Banach-ring inverse estimates and `Matrix.nonsing_inv_eq_ringInverse`, not a hidden `Fin n` assumption. No nonempty-index assumption is introduced; the empty finite carrier is also covered. The determinant-unit formulation is the correct invertibility test, including that case.
4. **Singular real inverse.** The stronger reality statement is legitimate because `inv_def` is real-valued also when the determinant is zero. Downstream consumers must still establish determinant invertibility before treating it as a true inverse. I1-1 never uses singular inversion to discharge a mathematical inverse equation.
5. **Quarantine.** A recursive traversal of the production KAM import closure of Tools/FreqMap found 75 modules and zero frozen theorem/provider imports. Frozen definition imports are allowed. Clean axiom receipts independently rule out hidden sorry-backed theorem use in all nine public results.
6. **Provider/frozen type and seal-body probes.** Not applicable: no provider or frozen export is implemented here. The exact design-interface probes are the appropriate package gate. The package cannot seal I-G1 by itself.

## Definition classification

Tools and FreqMap introduce **no def, abbrev or structure**. For completeness, the inherited I-D0 declarations appearing in the requested diff are inventoried below. These are exposed definitions or source-data/output structures, not completed analytic results. `IG1Statement` and `G3Statement` name upstream source contracts; they are not assumed by any I1-1 theorem. No bundled hard proof step is used to prove one of the audited results.

Total arithmetic, derivatives, integrals and matrix inverses have their usual Lean values outside their intended analytic domains. Their geometric interpretations require the declared open-domain, integrability, nonsingularity, nonzero-denominator and compactness premises of future consumers. In particular, `isoNewtonMap` explicitly equals K outside the new strip, `isoLimit` equals K outside its limit strip, and `limUnder` requires convergence before identification as a limit. These are disclosed total extensions, not a proof of convergence. I1-1 relies on none of those fallback values. Extrema over empty/unbounded sets and coordinate division by zero likewise carry no unconditional positivity or geometric claim here.

| Inherited module / contract | Declaration | Classification / verdict |
|---|---|---|
| `Linear/Defs:45` | `Setting` | PASS as definition: Source standing/data or explicitly named output package; no I1-1 conclusion assumed. |
| `Linear/Defs:53` | `energyRow` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Linear/Defs:58` | `bordMat` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Linear/Defs:69` | `BordData` | PASS as definition: Source standing/data or explicitly named output package; no I1-1 conclusion assumed. |
| `Linear/Defs:77` | `bordAvg` | PASS as definition: Literal bordered-system formula; analytic/inverse interpretations require source guards. |
| `Linear/Defs:81` | `bordSol` | PASS as definition: Literal bordered-system formula; analytic/inverse interpretations require source guards. |
| `Linear/Defs:85` | `bordXi0` | PASS as definition: Literal bordered-system formula; analytic/inverse interpretations require source guards. |
| `Linear/Defs:86` | `bordXiOmega` | PASS as definition: Literal bordered-system formula; analytic/inverse interpretations require source guards. |
| `Linear/Defs:89` | `bordXiN` | PASS as definition: Literal bordered-system formula; analytic/inverse interpretations require source guards. |
| `Linear/Defs:93` | `bordGL` | PASS as definition: Literal bordered-system formula; analytic/inverse interpretations require source guards. |
| `Linear/Defs:97` | `bordXiL` | PASS as definition: Literal bordered-system formula; analytic/inverse interpretations require source guards. |
| `Linear/Defs:101` | `isoLinError` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Linear/Defs:109` | `isoResidual` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Linear/Defs:117` | `bordOp` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Linear/Defs:124` | `AdmissibleNoTwist` | PASS as definition: Source standing/data or explicitly named output package; no I1-1 conclusion assumed. |
| `Apost/Defs:46` | `IsoStanding` | PASS as definition: Source standing/data or explicitly named output package; no I1-1 conclusion assumed. |
| `Apost/Defs:65` | `rayMargin` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:69` | `IsoAdmissible` | PASS as definition: Source standing/data or explicitly named output package; no I1-1 conclusion assumed. |
| `Apost/Defs:82` | `hatCS` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:84` | `hatCxiN` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:85` | `hatCg` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:87` | `hatCxi` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:88` | `hatCDK` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:89` | `hatCDelta` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:91` | `CP` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:92` | `hatCpartial` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:94` | `hatClin` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:97` | `hatCE1` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:100` | `hatCE2` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:103` | `hatCE` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:104` | `CY` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:106` | `CDTbord` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:107` | `hatcStep` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:109` | `hatcSum` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:111` | `hatcStar` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:116` | `dStep` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:121` | `isoBordData` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:127` | `isoXi` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:131` | `isoXiOmega` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:136` | `isoCorrection` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:142` | `isoNewS` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:148` | `isoNewtonMap` | PASS as definition: Disclosed total extension/limit construction; validity requires future consumer guards. |
| `Apost/Defs:154` | `isoQuadX` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:160` | `isoQuadH` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:166` | `isoEpsSeq` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:173` | `isoDSeq` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:177` | `isoSeq` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:186` | `IterHyp` | PASS as definition: Source standing/data or explicitly named output package; no I1-1 conclusion assumed. |
| `Apost/Defs:204` | `isoLimit` | PASS as definition: Disclosed total extension/limit construction; validity requires future consumer guards. |
| `Apost/Defs:210` | `isoSLimit` | PASS as definition: Disclosed total extension/limit construction; validity requires future consumer guards. |
| `Apost/Defs:215` | `isoC1` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Apost/Defs:220` | `isoC2` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Inputs:46` | `IG1Body` | PASS as definition: Explicit source-contract proposition; no proof or axiom introduced. |
| `Charts/Inputs:80` | `IG1Statement` | PASS as definition: Explicit source-contract proposition; no proof or axiom introduced. |
| `Charts/Inputs:88` | `G3Statement` | PASS as definition: Explicit source-contract proposition; no proof or axiom introduced. |
| `Charts/Defs:53` | `rhoIso` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:56` | `dB` | PASS as definition: Infimum/supremum construction; intended extrema require nonempty bounded/compact inputs. |
| `Charts/Defs:59` | `eta1` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:61` | `sSet` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:63` | `mhConst` | PASS as definition: Infimum/supremum construction; intended extrema require nonempty bounded/compact inputs. |
| `Charts/Defs:65` | `MgConst` | PASS as definition: Infimum/supremum construction; intended extrema require nonempty bounded/compact inputs. |
| `Charts/Defs:68` | `ShConst` | PASS as definition: Infimum/supremum construction; intended extrema require nonempty bounded/compact inputs. |
| `Charts/Defs:71` | `nuConst` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:72` | `sigmaOmegaConst` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:75` | `sigmaKConst` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:76` | `sigmaTConst` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:78` | `epsT` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:83` | `perp` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:84` | `det2` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:85` | `aCoord` | PASS as definition: Literal coordinate/domain formula; geometric interpretation restricted by chart guards. |
| `Charts/Defs:86` | `bCoord` | PASS as definition: Literal coordinate/domain formula; geometric interpretation restricted by chart guards. |
| `Charts/Defs:87` | `slope` | PASS as definition: Literal coordinate/domain formula; geometric interpretation restricted by chart guards. |
| `Charts/Defs:89` | `hessR` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:92` | `chartDom` | PASS as definition: Literal coordinate/domain formula; geometric interpretation restricted by chart guards. |
| `Charts/Defs:95` | `chartM` | PASS as definition: Literal coordinate/domain formula; geometric interpretation restricted by chart guards. |
| `Charts/Defs:97` | `chartPhi` | PASS as definition: Literal coordinate/domain formula; geometric interpretation restricted by chart guards. |
| `Charts/Defs:99` | `jac2` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:104` | `IsPatch` | PASS as definition: Source standing/data or explicitly named output package; no I1-1 conclusion assumed. |
| `Charts/Defs:129` | `IsPatch.toEnergyPatch` | PASS as definition: Structure projection into Part 5; explicit inverse/chart evidence retained. |
| `Charts/Defs:139` | `IsRay` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:145` | `flatRemainder` | PASS as definition: Explicit algebraic, analytic-object or numerical formula matching the design; no existence proof hidden. |
| `Charts/Defs:151` | `ToriSide` | PASS as definition: Source standing/data or explicitly named output package; no I1-1 conclusion assumed. |

## Verification receipts

All commands ran from `/root/code/KAM-inp-i11`. This audit launched its Lean/lake/checker commands sequentially, with `LEAN_NUM_THREADS=1`, and used `nice -n 5` (via the required gate for builds). No heartbeat, recursion-depth or synthesis-budget override was used. Other campaign workers outside this audit were not controlled by this session.

Targeted I1-1 build:

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i11 KAM.Iso.Linear.Tools KAM.Iso.Linear.FreqMap
[inp-gate] slot 2 acquired 01:56:12 for KAM.Iso.Linear.Tools KAM.Iso.Linear.FreqMap
Build completed successfully (3209 jobs).
exit 0
```

The untracked probe `.lake/abi-scratch/I11Audit.lean` imported Tools, FreqMap and inherited Apost/Charts definitions. It contained six examples with statements extracted independently from the design appendix and bodies applying the actual six implementations, plus axiom queries for all nine new public theorems. No sorry was used. Command:

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env lean .lake/abi-scratch/I11Audit.lean
exit 0
```

Complete axiom output:

```text
'KAM.Iso.Linear.isDiophantine_smul' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.isUnit_det_one_sub' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.neumann_fintype' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.inv_im_eq_zero' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.freq_map_local' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.freq_map_contDiff' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Linear.extendedTorsion_eq_bordMat' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.fractD_eq_domainD' depends on axioms: [propext, Classical.choice, Quot.sound]
'KAM.Iso.Charts.totalH_eq_hbold' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Kernel replay (one invocation, all six modules):

```text
LEAN_NUM_THREADS=1 nice -n 5 lake env leanchecker --verbose KAM.Iso.Linear.Tools KAM.Iso.Linear.FreqMap KAM.Iso.Linear.Defs KAM.Iso.Apost.Defs KAM.Iso.Charts.Inputs KAM.Iso.Charts.Defs
replaying KAM.Iso.Charts.Defs
replaying KAM.Iso.Charts.Inputs
replaying KAM.Iso.Apost.Defs
replaying KAM.Iso.Linear.Defs
replaying KAM.Iso.Linear.FreqMap
replaying KAM.Iso.Linear.Tools
exit 0
```

Source lint:

```text
LEAN_NUM_THREADS=1 sh scripts/lint_sources.sh
KAM.lean is out of date; run scripts/gen_root_imports.py
check_lean_modules: PASS (334 Lean files, 0 comparator configurations)
FROZEN-ANCHOR GUARD OK
ABI HASHES OK (144 frozen declarations)
exit 1
```

The only lint failure is the expressly permitted generated-root staleness diagnostic. No root regeneration was performed. Frozen guard and all 144 ABI checks pass. All six files satisfy the module wrapper and 1500-line cap (Linear/Tools 99; Linear/FreqMap 218; Linear/Defs 141; Apost/Defs 225; Charts/Inputs 94; Charts/Defs 168). Source lint reports no forbidden proof escape, override, carrier, or line-length defect.

`git diff inp...HEAD -- KAM/Frozen manifest KAM.lean README.md` produced no output, exit 0. `git diff --check inp...HEAD` and `git diff --check` produced no output, exit 0. No state-changing git command was run.

## Source defects, deviations and closeout

No new suspected pinned-source erratum or blueprint contradiction was found in I1-1. The design's existing B4 API gap is addressed by the new local proofs. Its Part-1 Standing specialization (`τ ≥ n−1` rather than the full source `τ ≥ 0`) remains disclosed in inherited I-D0; the six I1-1 signatures introduce no such additional restriction. No blueprint, frozen statement, provider, generated file or manifest was edited.

The report is the sole repository deliverable. The handoff was already untracked when the audit began and was not edited. Probe cleanup and the final inherited-definition build receipt follow below. No permission, source request or further owner ruling is required to accept these six infrastructure results.

Additional targeted build of the inherited I-D0 modules (Linear/Defs and Charts/Inputs are dependencies):

```text
LEAN_NUM_THREADS=1 /mnt/HC_Volume_106379410/orchestrator-tools/inp_lake_build.sh /root/code/KAM-inp-i11 KAM.Iso.Apost.Defs KAM.Iso.Charts.Defs
[inp-gate] slot 1 acquired 01:59:28 for KAM.Iso.Apost.Defs KAM.Iso.Charts.Defs
⚠ [3206/3224] Replayed KAM.ODE.Exit
warning: KAM/ODE/Exit.lean:36:0: automatically included section variable(s) unused in theorem `KAM.ODE.gen_exit`:
  [NormedSpace ℝ E]
consider restructuring your `variable` declarations so that the variables are not in scope or explicitly omit them:
  omit [NormedSpace ℝ E] in theorem ...

Note: This linter can be disabled with `set_option linter.unusedSectionVars false`
Build completed successfully (3232 jobs).
exit 0
```

The replayed unused-section-variable warning belongs to the existing `KAM.ODE.Exit` dependency and is unrelated to this diff. The six target module sources required no rebuild after kernel replay. The temporary probe `.lake/abi-scratch/I11Audit.lean` was removed. Final checks: report exists at the exact requested absolute path; whitespace check passes; only this report was added by the audit. **Final package verdict: PASS WITH NOTES; no anchor seal certified.**
